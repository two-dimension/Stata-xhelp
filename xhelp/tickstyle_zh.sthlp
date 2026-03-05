{smcl}
{* *! version 1.1.7  16apr2019}{...}
{vieweralsosee "[G-4] tickstyle" "mansection G-4 tickstyle"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[G-3] axis_label_options" "help axis_label_options_zh"}{...}
{viewerjumpto "Syntax" "tickstyle_zh##syntax"}{...}
{viewerjumpto "Description" "tickstyle_zh##description"}{...}
{viewerjumpto "Links to PDF documentation" "tickstyle_zh##linkspdf"}{...}
{viewerjumpto "Remarks" "tickstyle_zh##remarks"}
{help tickstyle:English Version}
{hline}{...}
{p2colset 1 20 22 2}{...}
{p2col:{bf:[G-4]} {it:tickstyle} {hline 2}}轴刻度及刻度标签整体外观的选项{p_end}
{p2col:}({mansection G-4 tickstyle:查看完整的PDF手册条目}){p_end}
{p2colreset}{...}


{marker syntax}{...}
{title:语法}

{synoptset 20}{...}
{p2col:{it:tickstyle}}说明{p_end}
{p2line}
{p2col:{cmd:major}}主要刻度和主要刻度标签{p_end}
{p2col:{cmd:major_nolabel}}主要刻度无刻度标签{p_end}
{p2col:{cmd:major_notick}}主要刻度标签无刻度{p_end}

{p2col:{cmd:minor}}次要刻度和次要刻度标签{p_end}
{p2col:{cmd:minor_nolabel}}次要刻度无刻度标签{p_end}
{p2col:{cmd:minor_notick}}次要刻度标签无刻度{p_end}

{p2col:{cmd:none}}无刻度，无刻度标签{p_end}
{p2line}
{p2colreset}{...}

{pstd}
其他 {it:tickstyles} 也许可用；输入

	    {cmd:.} {bf:{stata graph query tickstyle}}

{pstd}
以获取您计算机上安装的 {it:tickstyles} 完整列表。


{marker description}{...}
{title:描述}

{pstd}
刻度是在坐标轴上出现的标记。 {it:tickstyle} 指定刻度的整体外观。请参阅 {manhelpi axis_label_options G-3}。


{marker linkspdf}{...}
{title:PDF文档链接}

        {mansection G-4 tickstyleRemarksandexamples:备注和示例}

{pstd}
以上部分不包含在此帮助文件中。


{marker remarks}{...}
{title:备注}

{pstd}
备注包括以下标题：

	{help tickstyle##remarks1:什么是刻度？ 什么是刻度标签？}
	{help tickstyle##remarks2:什么是刻度样式？}
	{help tickstyle##remarks3:您不需要指定刻度样式}
	{help tickstyle##remarks4:抑制刻度和/或刻度标签}


{* index tick, definition}{...}
{marker remarks1}{...}
{title:什么是刻度？ 什么是刻度标签？}

{pstd}
刻度是延伸或穿过坐标轴的小线，有时旁边会标有数字。

{pstd}
刻度标签是可选出现在刻度旁边的文本（通常是数字）。


{marker remarks2}{...}
{title:什么是刻度样式？}

{pstd}
{it:tickstyle} 的命名实际上不太准确；它应该被称为 {it:tick_and_tick_label_style}，因为它同时控制刻度和其标签的外观。

{pstd}
刻度由三个属性定义：

{phang2}
    1. 刻度的长度；
	参见 {manhelpi size G-4}

{phang2}
    2. 刻度是向外延伸、向内延伸，还是穿过坐标轴

{phang2}
    3. 刻度的线条样式，包括粗细、颜色，以及是否为实线、虚线等；
	参见 {manhelpi linestyle G-4}

{pstd}
标签由两个属性定义：

{phang2}
    1. 文本的大小

{phang2}
    2. 文本的颜色

{pstd}
刻度和刻度标签还有一个共同属性：

{phang2}
    1. 刻度与刻度标签之间的间距

{pstd}
{it:tickstyle} 指定这六个属性。


{marker remarks3}{...}
{title:您不需要指定刻度样式}

{pstd}
{it:tickstyle} 在名为

	{c -(}{...}
{cmd:y}|{cmd:x}{...}
{c )-}{...}
{c -(}{...}
{cmd:label}|{cmd:tick}|{cmd:mlabel}|{cmd:mtick}{...}
{c )-}{...}
{cmd:(tstyle(}{it:tickstyle}{cmd:))}

{pstd}
的选项中指定。

{pstd}
相应地，还有其他
{c -(}{cmd:y}|{cmd:x}{c )-}{c -(}{cmd:label}|{cmd:tick}|{cmd:mlabel}|{cmd:mtick}{c )-}{cmd:()}
子选项，允许您指定单个属性；
参见 {manhelpi axis_label_options G-3}。

{pstd}
当存在一种样式完全符合您的需求时，或当另一种样式允许您指定更少的更改以获得所需效果时，您会指定 {it:tickstyle}。


{* grid lines, without ticks}{...}
{* ticks, suppressing}{...}
{marker remarks4}{...}
{title:抑制刻度和/或刻度标签}

{pstd}
要抑制通常出现的刻度，请指定以下样式之一

{p2colset 9 36 38 2}{...}
{p2col:{it:tickstyle}}说明{p_end}
{p2line}
{p2col:{cmd:major_nolabel}}主要刻度无刻度标签{p_end}
{p2col:{cmd:major_notick}}主要刻度标签无刻度{p_end}

{p2col:{cmd:minor_nolabel}}次要刻度无刻度标签{p_end}
{p2col:{cmd:minor_notick}}次要刻度标签无刻度{p_end}

{p2col:{cmd:none}}无刻度，无刻度标签{p_end}
{p2line}
{p2colreset}{...}

{phang}
例如，您可能输入

{phang2}
	{cmd:. scatter} .... {cmd:, ylabel(,tstyle(major_notick))}

{pstd}
抑制刻度在您创建特殊效果时可能会很有用。例如，考虑在 {it:y} = 10、20、30 和 40 的情况下您希望为图形添加网格线，但不希望在这些值处出现刻度或标签。此外，您也不希望干扰图形的常规刻度或标签。解决方案是

{phang2}
	{cmd:. scatter} ...{cmd:, ymtick(10(10)40, grid tstyle(none))}

{pstd}
我们“借用”了 {cmd:ymtick()} 选项，并将其更改为不输出刻度。我们也可以借用 {cmd:ytick()} 选项。参见 {manhelpi axis_label_options G-3}。
{p_end}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <tickstyle.sthlp>}