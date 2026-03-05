{smcl}
{* *! version 1.1.6  19oct2017}{...}
{vieweralsosee "[G-4] pstyle" "mansection G-4 pstyle"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[G-2] graph twoway scatter" "help scatter_zh"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[G-3] connect_options" "help connect_options_zh"}{...}
{vieweralsosee "[G-4] areastyle" "help areastyle_zh"}{...}
{vieweralsosee "[G-4] connectstyle" "help connectstyle_zh"}{...}
{vieweralsosee "[G-4] linestyle" "help linestyle_zh"}{...}
{vieweralsosee "[G-4] markerlabelstyle" "help markerlabelstyle_zh"}{...}
{vieweralsosee "[G-4] markerstyle" "help markerstyle_zh"}{...}
{viewerjumpto "Syntax" "pstyle_zh##syntax"}{...}
{viewerjumpto "Description" "pstyle_zh##description"}{...}
{viewerjumpto "Links to PDF documentation" "pstyle_zh##linkspdf"}{...}
{viewerjumpto "Remarks" "pstyle_zh##remarks"}
{help pstyle:English Version}
{hline}{...}
{p2colset 1 17 19 2}{...}
{p2col:{bf:[G-4]} {it:pstyle} {hline 2}}绘图整体外观的选择{p_end}
{p2col:}({mansection G-4 pstyle:查看完整的PDF手册条目}){p_end}
{p2colreset}{...}


{marker syntax}{...}
{title:语法}

{synoptset 20}{...}
{p2col:{it:pstyle}}描述{p_end}
{p2line}
{p2col:{cmd:ci}}第一个绘图用作置信区间{p_end}
{p2col:{cmd:ci2}}第二个绘图用作置信区间{p_end}

{p2col:{cmd:p1} - {cmd:p15}}用于第一个到第十五个“其他”绘图{p_end}
{p2col:{cmd:p1line} - {cmd:p15line}}用于第一个到第十五个“线”绘图{p_end}
{p2col:{cmd:p1bar} - {cmd:p15bar}}用于第一个到第十五个“条形”绘图{p_end}
{p2col:{cmd:p1box} - {cmd:p15box}}用于第一个到第十五个“箱线”绘图{p_end}
{p2col:{cmd:p1dot} - {cmd:p15dot}}用于第一个到第十五个“点”绘图{p_end}
{p2col:{cmd:p1pie} - {cmd:p15pie}}用于第一个到第十五个“饼”绘图{p_end}
{p2col:{cmd:p1area} - {cmd:p15area}}用于第一个到第十五个“区域”绘图{p_end}
{p2col:{cmd:p1arrow} - {cmd:p15arrow}}用于第一个到第十五个“箭头”绘图{p_end}
{p2line}
{p2colreset}{...}

{pstd}
其他 {it:pstyles} 可能可用；输入

	    {cmd:.} {bf:{stata graph query pstyle}}

{pstd}
以获取您计算机上已安装的 {it:pstyles} 的完整列表。


{marker description}{...}
{title:描述}

{pstd}
{it:pstyle} -- 始终在选项中指定
{cmd:pstyle(}{it:pstyle}{cmd:)} -- 指定绘图的整体样式
并由 {it:{help markerstyle_zh}}; {it:{help markerlabelstyle_zh}}; {it:{help areastyle_zh}}; 连接线、 {it:{help linestyle_zh}}、{it:{help connectstyle_zh}}; 
及 {it:{help connect_options_zh:connect_option}} {cmd:cmissing()} 组成。


{marker linkspdf}{...}
{title:PDF文档链接}

        {mansection G-4 pstyleRemarksandexamples:备注和示例}

{pstd}
以上部分不包含在此帮助文件中。


{marker remarks}{...}
{title:备注}

{pstd}
备注在以下标题下呈现：

	{help pstyle##remarks1:什么是绘图？}
	{help pstyle##remarks2:什么是 pstyle？}
	{help pstyle##remarks3:pstyle() 选项}
	{help pstyle##remarks4:指定 pstyle}
	{help pstyle##remarks5:什么是编号样式？}


{* index plot, definition}{...}
{marker remarks1}{...}
{title:什么是绘图？}

{pstd}
当您输入

	{cmd:. scatter y x}

{pstd}
y 对 x 被称为一个绘图。当您输入

	{cmd:. scatter y1 x || scatter y2 x}

{pstd}
或

	{cmd:. scatter y1 y2 x}

{pstd}
{cmd:y1} 对 {cmd:x} 是第一个绘图，而 {cmd:y2} 对 {cmd:x} 是第二个。

{pstd}
绘图是在图上表示数据的一种方式。


{marker remarks2}{...}
{title:什么是 pstyle？}

{pstd}
绘图的整体外观 -- {it:pstyle} -- 由以下属性定义：

{phang2}
    1.  标记的外观，包括形状、颜色、大小等；
	见 {manhelpi markerstyle G-4}

{phang2}
    2.  标记标签的外观，包括位置、角度、大小、颜色等；
	见 {manhelpi markerlabelstyle G-4}

{phang2}
    3.  用于连接点的线的外观，包括颜色、宽度和样式（实线、虚线等）；
	见 {manhelpi linestyle G-4}

{phang2}
    4.  如果连接点，连接线的连接方式（直线、阶梯等）；
	见 {manhelpi connectstyle G-4}

{phang2}
    5.  在连接点时，是否忽略缺失值或导致线被中断

{phang2}
    6.  填充、上色或阴影区域（如条形图或曲线下方或之间的区域）的方式，包括是否及如何为其描边；
	见 {manhelpi areastyle G-4}

{phang2}
    7.  点图中“点”的外观

{phang2}
    8.  箭头的外观

{pstd}
{it:pstyle} 指定这七个属性。


{marker remarks3}{...}
{title:pstyle() 选项}

{pstd}
{it:pstyle} 由选项指定

	{cmd:pstyle(}{it:pstyle}{cmd:)}

{pstd}
相应地，始终可以使用其他选项控制每个属性；例如，参见 {manhelp scatter G-2:graph twoway scatter}。

{pstd}
当存在您想要的完全相同的样式或另一种样式允许您指定更少的更改以获得所需效果时，您可以指定 {it:pstyle}。


{marker remarks4}{...}
{title:指定 pstyle}

{pstd}
考虑命令

	{cmd:. scatter y1 y2 x,} ...

{pstd}
假设指定了许多选项。现在想象一下，您希望 {cmd:y1} 对 {cmd:x} 的绘图看起来与 {cmd:y2} 对 {cmd:x} 的绘图完全相同：您希望使用相同的标记符号、相同的颜色、相同的连接线样式（如果有连接）等。无论有哪些属性，您都希望以相同的方式处理它们。

{pstd}
一种解决方案是逐一查找如何显示的每一个细节，并指定选项以确保它们被指定为相同。然而，更简单的方法是输入

	{cmd:. scatter y1 y2 x,} ... {cmd:pstyle(p1 p1)}

{pstd}
当您未指定 {cmd:pstyle()} 选项时，结果与您指定

	{cmd:pstyle(p1 p2 p3 p4 p5 p6 p7 p8 p9 p10 p11 p12 p13 p14 p15)}

{pstd}
是相同的，其中多余的元素会被忽略。无论如何，{cmd:p1} 是一组绘图外观值，{cmd:p2} 是另一组，依此类推。因此，当您输入

	{cmd:. scatter y1 y2 x,} ... {cmd:pstyle(p1 p1)}

{pstd}
时，用于 y2 对 x 的所有外观值与用于 y1 对 x 的相同。

{pstd}
例如，如果您希望 y2 对 x 的绘图看起来与 y1 对 x 的绘图相同，但希望标记为绿色，您可以输入

	{cmd:. scatter y1 y2 x,} ... {cmd:pstyle(p1 p1) mcolor(. green)}

{pstd}
关于 {it:pstyles} {cmd:p1}, {cmd:p2}, ... 并没有什么特殊之处；它们只是与任何其他 {it:pstyles} 一样指定绘图外观值的集合。输入

	{cmd:. graph query pstyle}

{pstd}
以查找可用的其他绘图样式。

{pstd}
同时参见 {it:{help scatter##remarks19:附录：样式和复合样式}} 
在 {manhelp scatter G-2:graph twoway scatter} 中，获取更多信息。


{* index numbered styles}{...}
{marker remarks5}{...}
{title:什么是编号样式？}

{phang}
     {cmd:p1} {hline 1} {cmd:p15} 是所有 {helpb twoway} 图表的默认样式，除了 {helpb twoway line} 图表、{helpb twoway bar} 图表和 {helpb twoway area} 图表。{cmd:p1} 用于第一个绘图，{cmd:p2} 用于第二个，依此类推。

{phang}
     {cmd:p1line} {hline 1} {cmd:p15line} 是线图（包括 {helpb twoway line} 图表和 {helpb twoway rline}）的默认样式。{cmd:p1line} 用于第一个线，{cmd:p2line} 用于第二个，依此类推。

{phang}
     {cmd:p1bar} {hline 1} {cmd:p15bar} 是条形图（包括 {helpb twoway bar} 图表和 {help graph bar:条形图}）的默认样式。{cmd:p1bar} 用于第一组条形，{cmd:p2bar} 用于第二组，依此类推。

{phang}
     {cmd:p1box} {hline 1} {cmd:p15box} 是 {help graph box:箱线图} 的默认样式。{cmd:p1box} 用于第一组箱子，{cmd:p2box} 用于第二组，依此类推。

{phang}
     {cmd:p1dot} {hline 1} {cmd:p15dot} 是 {help graph dot:点图} 的默认样式。{cmd:p1dot} 用于第一组点，{cmd:p2dot} 用于第二组，依此类推。

{phang}
     {cmd:p1pie} {hline 1} {cmd:p15pie} 是 {help graph pie:饼图} 的默认样式。{cmd:p1pie} 用于第一个饼片，{cmd:p2pie} 用于第二个，依此类推。

{phang}
     {cmd:p1area} {hline 1} {cmd:p15area} 是区域图（包括 {helpb twoway area} 图表和 {helpb twoway rarea}）的默认样式。{cmd:p1area} 用于第一块填充区域，{cmd:p2area} 用于第二块，依此类推。

{phang}
     {cmd:p1arrow} {hline 1} {cmd:p15arrow} 是箭头绘图（包括 {helpb twoway pcarrow} 和 {helpb twoway pcbarrow}）的默认样式。{cmd:p1arrow} 用于第一个箭头绘图，{cmd:p2arrow} 用于第二个，依此类推。

{pstd}
        编号样式（如 {cmd:p1bar}、{cmd:p3} 或 {cmd:p2area}）所定义的“外观”由所选的
	{help schemes_zh:scheme}
        决定。我们所说的“外观”包括颜色、线条宽度或所用图案等。

{pstd}
	编号样式提供默认外观，可以通过方案控制。当您希望、例如，使图表上的第二个元素看起来像第一个时，它们也会很有用。您可以指定第二个散点图的标记使用第一个散点图的样式，方法是使用选项 {cmd:pstyle(p1 p1)}。有关更详细的示例，请参见
        {it:{help pstyle##remarks4:指定 pstyle}}。{p_end}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <pstyle.sthlp>}