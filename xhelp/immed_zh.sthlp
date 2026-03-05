
{smcl}
{* *! version 1.1.10  27sep2018}{...}
{findalias asfrimmediate}{...}
{title:标题}
{help immed:English Version}
{hline}

{pstd}
{findalias frimmediate}


{title:备注}

{pstd}
即时命令是从输入为参数的数字获取数据，而不是从存储在内存中的数据获得。即时命令实际上将 Stata 变成了一个升级版的手持计算器。

{pstd}
有时您可能没有数据，但您知道一些关于数据的信息，您所知道的足以执行统计测试。

{pstd}
即时命令具有以下属性：

{phang2}1.  它们从不会干扰内存中的数据。

{phang2}2.  所有命令的语法相同：命令名称后面跟着作为统计量计算的摘要统计的数字。

{phang2}3.  即时命令以字母 i 结尾，尽管反之不成立。

{phang2}4.  即时命令与其非即时对应物一起记录。

{pstd}
即时命令包括以下内容：

{p2colset 9 25 27 2}{...}
{p2col :命令}描述{p_end}
{p2line}
{p2col :{helpb bitesti}}二项概率检验{p_end}
{p2col :{helpb cci}}流行病学家用表；见 {manhelp Epitab R}{p_end}
{p2col :{helpb csi}}{p_end}
{p2col :{helpb iri}}{p_end}
{p2col :{helpb mcci}}{p_end}
{p2col :{helpb cii}}均值、比例和方差的置信区间{p_end}
{p2col :{helpb esizei}}基于均值比较的效应大小{p_end}
{p2col :{helpb prtesti}}比例检验{p_end}
{p2col :{helpb sdtesti}}方差比较检验{p_end}
{p2col :{helpb symmi}}对称性和边际同质性检验{p_end}
{p2col :{helpb tabi}}双向频率表{p_end}
{p2col :{helpb ttesti}}t 检验（均值比较检验）{p_end}
{p2col :{helpb twoway pci}}带尖刺或线条的配对坐标图{p_end}
{p2col :{helpb twoway pcarrowi}}带箭头的配对坐标图{p_end}
{p2col :{helpb twoway scatteri}}双向散点图{p_end}
{p2col :{helpb ztesti}}z 检验（均值比较检验，已知方差）{p_end}
{p2line}

{pstd}
{cmd:display} 命令实际上并不是真正的即时命令，但它可以用作手持计算器；见 {manhelp display P}。
{p_end}

{pstd}
{cmd:power} 在技术上并不是一个即时命令，因为它并不在输入的数字上执行其他命令在数据集上执行的操作。然而，它确实严格在您在命令行上输入的数字上工作，并且不会干扰内存中的数据。{cmd:power} 执行功效和样本量分析。见 {help power_zh}。

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <immed.sthlp>}