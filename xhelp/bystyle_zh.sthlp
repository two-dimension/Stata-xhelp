{smcl}
{* *! version 1.1.6  19oct2017}{...}
{vieweralsosee "[G-4] bystyle" "mansection G-4 bystyle"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[G-3] by_option" "help by_option_zh"}{...}
{viewerjumpto "语法" "bystyle_zh##syntax"}{...}
{viewerjumpto "描述" "bystyle_zh##description"}{...}
{viewerjumpto "PDF 文档链接" "bystyle_zh##linkspdf"}{...}
{viewerjumpto "备注" "bystyle_zh##remarks"}
{help bystyle:English Version}
{hline}{...}
{p2colset 1 18 20 2}{...}
{p2col:{bf:[G-4]} {it:bystyle} {hline 2}}选择 by-图表的外观{p_end}
{p2col:}({mansection G-4 bystyle:查看完整的 PDF 手册条目}){p_end}
{p2colreset}{...}


{marker syntax}{...}
{title:语法}

{synoptset 15}{...}
{p2col:{it:bystyle}}描述{p_end}
{p2line}
{p2col:{cmd:default}}由方案决定{p_end}
{p2col:{cmd:compact}}更紧凑的 {cmd:default} 版本{p_end}
{p2col:{cmd:stata7}}如同 Stata 7 提供的那样{p_end}
{p2line}
{p2colreset}{...}

{p 4 4 2}
其他 {it:bystyles} 可能可用；键入

	{cmd:.} {bf:{stata graph query bystyle}}

{p 4 4 2}
以获取在您的计算机上安装的 {it:bystyles} 完整列表。


{marker description}{...}
{title:描述}

{pstd}
{it:bystyles} 指定了 by-图表的整体外观。


{marker linkspdf}{...}
{title:PDF 文档链接}

        {mansection G-4 bystyleRemarksandexamples:备注和示例}

{pstd}
上述部分不包含在此帮助文件中。


{marker remarks}{...}
{title:备注}

{pstd}
备注分为以下标题：

	{help bystyle##remarks1:什么是 by-图表？}
	{help bystyle##remarks2:什么是 bystyle？}


{marker remarks1}{...}
{title:什么是 by-图表？}

{pstd}
by-图表是一个包含多个独立图表的图形（实际上是一幅图），每个图表类型相同，并反映数据的不同子集。例如，by-图表可能包含一个关于每加仑多少英里与重量的图，一个针对国产汽车，另一个针对进口汽车。

{pstd}
当您指定 {cmd:by()} 选项时，会生成 by-图表；请参见 {manhelpi by_option G-3}。


{marker remarks2}{...}
{title:什么是 bystyle？}

{pstd}
{it:bystyle} 决定了组合图表的整体外观，包括

{phang2}
    1.  各个图表是否拥有各自的坐标轴和标签，或者坐标轴和标签是否在同一行和/或同一列排列的图表之间共享；

{phang2}
    2.  坐标轴的刻度是否相同，或允许每个图表的刻度不同；以及

{phang2}
    3.  图表之间的距离。

{pstd}
有选项可以让您控制上述每个属性--请参见 {manhelpi by_option G-3}--但 {it:bystyle} 指定了起始点。

{pstd}
您不必在想要更改的情况下指定 {it:bystyle}。当存在另一种样式完全符合您的需求时，或者另一种样式允许您指定更少的更改以获得所需内容时，您才指定 {it:bystyle}。
{p_end}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <bystyle.sthlp>}