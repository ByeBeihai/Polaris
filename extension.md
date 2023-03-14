# Polaris指令集扩展简易教程

## 处理器结构总体介绍
Polaris的结构分为前端和后端两大部分，后端分为ISU级，EXU级和WBU级。

<img src=./doc/Polaris.png width="70%">

前端负责取指操作，一般来说与指令集扩展关系不大，需要更改的仅限于前端的译码级：在这里你需要将你要添加的指令加入译码列表中。

后端负责指令执行，如果你添加的指令的操作数不超过3个且写入的目的寄存器不超过1个，那么ISU级无需进行修改，否则你需要修改指令发射准备的相关逻辑。类似的，如果你的指令只写入一个目标寄存器且不涉及地址跳转或者CSR寄存器操作，那么WBU级也无需进行修改。

指令集扩展的主要工作是在EXU级加入新的运算器，该运算器负责你的指令集扩展的指令的运算。

接下来我会以P扩展为例介绍在Polaris中添加新的指令集扩展的大致步骤。

需要指出的是，处理器的设计是复杂的，该指南只能为你提供整体的流程和思路，具体的细节设计需要您精心推敲。

## 一 指令集注册
你将在该部分将指令集的指令注册进入译码级，使得CPU将你的指令识别为合法指令并送入后端。
### 1.定义运算器
你需要在Decode.scala文件的object FuType中，定义你的运算器编号，该object的代码如下：
```scala
object FuType extends HasNutCoreConst {
  def num = 5 + Polaris_Independent_Bru + Polaris_SIMDU_WAY_NUM
  def width = 4
  def alu = if(Polaris_Independent_Bru == 1){(Polaris_Independent_Bru + 3 + Polaris_SIMDU_WAY_NUM).U(width.W)}else{"b000".U}
  def lsu = if(Polaris_Independent_Bru == 1){(2+Polaris_SIMDU_WAY_NUM).U(width.W)}else{(3+Polaris_SIMDU_WAY_NUM).U(width.W)}
  def mdu = if(Polaris_Independent_Bru == 1){(3+Polaris_SIMDU_WAY_NUM).U(width.W)}else{(4+Polaris_SIMDU_WAY_NUM).U(width.W)}
  def csr = "b001".U
  def csrint = 1
  def mou = "b1000".U
  def alu1= if(Polaris_Independent_Bru == 1){(Polaris_Independent_Bru + 3 + Polaris_SIMDU_WAY_NUM + 1).U(width.W)}else{"b010".U}
  def bru = if(Polaris_Independent_Bru == 1){"b000".U}else{alu1}
  def simdu = simduint.U(width.W)
  def simduint = if(Polaris_SIMDU_WAY_NUM != 0){if(Polaris_Independent_Bru == 1){2}else{3}}else{0}
  def simdu1 = simdu1int.U(width.W)
  def simdu1int = if(Polaris_SIMDU_WAY_NUM != 0){if(Polaris_Independent_Bru == 1){3}else{4}}else{0}
  def apply() = UInt(width.W)
}
```
例如P扩展的两个运算器的编号分别为simdu和simdu1。在使用def进行新的运算器定义后，记得在num和width处更新运算器总数和表示这些运算器所需的宽度。
### 2.注册指令
首先在Decode.scala中为指令注册类型，注意，如果涉及写寄存器，需要保证第2位为1（如def InstrP  = "b10100".U）：
```scala
trait HasInstrType {
  def InstrN  = "b0000".U
  def InstrI  = "b0100".U
  def InstrIZ = "b1100".U
  def InstrR  = "b0101".U
  def InstrS  = "b0010".U
  def InstrB  = "b0001".U
  def InstrU  = "b0110".U
  def InstrJ  = "b0111".U
  def InstrA  = "b1110".U
  def InstrSA = "b1111".U // Atom Inst: SC
  def InstrP  = "b10100".U
  def InstrPI = "b10101".U
  def InstrPM = "b10110".U
  def InstrPB = "b10111".U
  def InstrPRD= "b11100".U

  def isrfWen(instrType : UInt): Bool = instrType(2)
}
```
然后你需要在/src/main/scala/nutcore/isa文件夹中新建一个文件，例如RVP.scala，在该文件中记录下你的译码表，格式如下：
```scala
object RVPInstr extends HasInstrType {
  def ADD16   = BitPat("b0100000_?????_?????_000_?????_1110111")
  ...
  val table = Array(
    ADD16       -> List(InstrP, FuType.simdu, SIMDUOpType.add16),
    ...
  )
```
其中def ADD16为32位指令的格式，table为译码表，table表项中的第一个参数为上一部分注册的指令类型，第二个参数为1.中注册的运算器，第三个为该指令的func（7位），该func由开发者自行定义，用于运算器内部区分不同指令进行执行。指令func的注册方式如下：
```scala
//该实例位于src/main/scala/nutcore/backend/fu/SIMDU.scala，一般来说注册于运算器所在的文件内
object SIMDUOpType {
  def add16  = "b0100000".U
  ...
}
```
### 3.加入注册好的指令集
在Decode.scala的object Instructions中加入2.中注册的译码表：
```scala
object Instructions extends HasInstrType with HasNutCoreParameter {
  def NOP = 0x00000013.U
  val DecodeDefault = List(InstrN, FuType.csr, CSROpType.jmp)
  def DecodeTable = RVIInstr.table ++ NutCoreTrap.table ++
    (if (HasMExtension) RVMInstr.table else Nil) ++
    (if (HasCExtension) RVCInstr.table else Nil) ++
    Priviledged.table ++
    //Priviledged.table_s ++
    RVAInstr.table ++
    RVZicsrInstr.table ++ RVZifenceiInstr.table ++
    (if(Polaris_SIMDU_WAY_NUM != 0){
    RVPInstr.table ++
    RVPIInstr.table ++
    RVPMInstr.table ++
    RVPBInstr.table ++
    RVPRDInstr.table 
    }else Nil)
}
```
例如这里的RVPInstr.table ++就是将2.中注册好的RVPInstr实例中的译码表table加入了译码级的翻译比对列表中，现在CPU知晓了一些新的指令属于新的指令类型，并将被发送到对应的新运算器中。

然后你需要为你的指令集注册操作数如何获取，我们假设你的指令集设计的是两个操作数一个写入数，且指令的结构和RVI的RS1 RS2和RD完全一致，那么你需要在IDU.scala的SrcTypeTable中进行注册：
```scala
val SrcTypeTable = List(
    InstrI -> (SrcType.reg, SrcType.imm),
    InstrR -> (SrcType.reg, SrcType.reg),
    InstrS -> (SrcType.reg, SrcType.reg),
    InstrSA-> (SrcType.reg, SrcType.reg),
    InstrB -> (SrcType.reg, SrcType.reg),
    InstrU -> (SrcType.pc , SrcType.imm),
    InstrJ -> (SrcType.pc , SrcType.imm),
    InstrN -> (SrcType.pc , SrcType.imm),
    InstrP -> (SrcType.reg, SrcType.reg),
    InstrPI-> (SrcType.reg, SrcType.imm),
    InstrPB-> (SrcType.reg, SrcType.imm),
    InstrPM-> (SrcType.reg, SrcType.reg),
    InstrPRD->(SrcType.reg, SrcType.reg),
    InstrIZ-> (SrcType.reg, SrcType.imm)
  )
```
例如这里的InstrP -> (SrcType.reg, SrcType.reg)代表InstrP的两个操作数均来自寄存器，分别为rs1和rs2。对于立即数的情况请您自行阅读源码。对于写入寄存器rd，如果你的指令结构在rd的位置上与RVI一致，则此处无需做改动。

## 二 指令执行
这里讨论的是两个操作数一个写入数的普遍简单情况，因此ISU级和WBU级无需改动，对于更复杂的架构，请您自行阅读源码进行修改或者联系开发者进行咨询。
### 1.编写运算器
我们以SIMDU的接口为例：
```scala
class SIMDU extends NutCoreBundle {
  val flush = Input(Bool())
  val DecodeOut = new DecodeIO
  val DecodeIn = Flipped(new DecodeIO)
  val FirstStageFire = Output(Bool())
  val in = Flipped(Decoupled(new Bundle {
    val src1 = Output(UInt(XLEN.W))
    val src2 = Output(UInt(XLEN.W))
    val func = Output(FuOpType())
  }))
  val out = Decoupled(Output(UInt(XLEN.W)))
}
```
flush：如果你的运算器存在流水级，那么该信号接口为命令运算器的流水级需要强制清空。

DecodeIn：EXU向运算器提供的指令的译码信息，包含指令在CPU中的执行编号，如果你的运算器不存在流水级，那么该信号可以与DecodeOut直接相连。否则该信号应该随流水一直向下传递。

DecodeOut：运算器对外的提交端口的译码信息，包含指令在CPU中的执行编号，如果你的运算器不存在流水级，那么该信号应当直接来自DecodeIn。否则该信号应该为最后一级流水的指令的译码信息

FirstStageFire：用于运算器存在流水的情况，用于告知后端：当拍第一级流水与第二级流水握手成功。后端可以将该运算器的状态修改为“可以送入指令”。

in：EXU向运算器提供的src1,src2,func信号，如果你的运算器不存在流水级，那么该信号可以直接用于运算。否则该信号应该随流水一直向下传递。该端口除了传递信号外，还被增添了valid和ready子信号，valid代表此时外界对运算器传入的指令有效，ready代表当拍运算器可以接受指令。

out：运算器对外的提交端口的写回数据，长度为XLEN（64），在无流水的情况下为你的运算器的运算结果，在有流水的情况下应为你的最后一级流水的指令要写回的数据。该端口同样被增添了valid和ready子信号，valid代表此时运算器传出的指令有效，ready代表当拍外界可以接受指令提交。

按照如上接口的定义，去编写你的指令集扩展运算器。

### 2.在EXU中注册运算器
在编写完成运算器后，你需要在后端中将运算器与EXU（SIMD_EXU.scala的new_SIMD_EXU模块）为你准备好的指令送入端口和提交端口相连：
我们仍以P扩展运算器为例：
```scala
    val simduidx = FuType.simdu
    val simdu = Module(new SIMDU)
    val simduOut = simdu.access(valid = io.in(simduidx).valid, src1 = src1(simduidx), src2 = src2(simduidx), func = fuOpType(simduidx))
    
    simdu.io.DecodeIn := io.in(simduidx).bits

    io.in(simduidx).ready := simdu.io.in.ready
    
    simdu.io.out.ready <> io.out(simduidx).ready
    io.out(simduidx).valid := simdu.io.out.valid
    io.out(simduidx).bits.commits := simdu.io.out.bits
    
    simdu.io.flush := io.flush
    
    val simdu_firststage_fire = Wire(Bool())
    simdu_firststage_fire := simdu.io.FirstStageFire
    BoringUtils.addSource(simdu_firststage_fire, "simdu_fs_fire")

    io.out(simduidx).bits.decode <> simdu.io.DecodeOut
    io.out(simduidx).bits.decode.ctrl.rfWen := simdu.io.DecodeOut.ctrl.rfWen
```
以下语句用于连接指令接收的相关信号：
```scala
    val simduOut = simdu.access(valid = io.in(simduidx).valid, src1 = src1(simduidx), src2 = src2(simduidx), func = fuOpType(simduidx)) //计算信息
    
    simdu.io.DecodeIn := io.in(simduidx).bits //译码信息

    io.in(simduidx).ready := simdu.io.in.ready //运算器是否准备好接收新指令
```
以下语句用于连接指令提交的相关信号：
```scala
    simdu.io.out.ready <> io.out(simduidx).ready //外部是否准备好指令提交
    io.out(simduidx).valid := simdu.io.out.valid //当前提交的指令是否有效
    io.out(simduidx).bits.commits := simdu.io.out.bits //指令的写回数据
    io.out(simduidx).bits.decode <> simdu.io.DecodeOut //指令的译码信息，含指令编号和写回寄存器的地址
    io.out(simduidx).bits.decode.ctrl.rfWen := simdu.io.DecodeOut.ctrl.rfWen //该指令是否写寄存器
```
以下指令在运算器含有流水级时用于清空对外暴露的第一级指令槽，告知后端下一拍可以送入新的指令：
```scala
    val simdu_firststage_fire = Wire(Bool())
    simdu_firststage_fire := simdu.io.FirstStageFire
    BoringUtils.addSource(simdu_firststage_fire, "simdu_fs_fire")
```
这部分代码会产生一个飞线信号，信号名为simdu_fs_fire，该飞线信号会连接至后端母模块（Backend.scala的backend_inorder模块）：
```scala
    BoringUtils.addSink(simdu_firststage_fire, "simdu_fs_fire") //接入信号
    when(simdu_firststage_fire){exu_valid_next(FuType.simdu) := false.B} //在信号拉高时，将该运算器的第一级指令槽清空，并可以在下一拍传入新指令
```
至此，后端运算器的注册就完成了

## 三 后续工作
完成硬件的代码编写只是第一步，你需要进行代码编译（详见仓库的readme.md），并使用测试用例进行debug测试（测试用例的编程平台详见readme.md中链接的Nexus-AM），最终在FPGA平台上进行测试（详见readme.md中链接的FPGA工程环境）
