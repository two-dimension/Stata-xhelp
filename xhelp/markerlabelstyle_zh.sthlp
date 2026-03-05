{smcl}
{* *! version 1.1.10  16apr2019}{...}
{vieweralsosee "[G-4] markerlabelstyle" "mansection G-4 markerlabelstyle"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[G-3] marker_label_options" "help marker_label_options_zh"}{...}
{viewerjumpto "语法" "markerlabelstyle_zh##syntax"}{...}
{viewerjumpto "描述" "markerlabelstyle_zh##description"}{...}
{viewerjumpto "PDF 文档链接" "markerlabelstyle_zh##linkspdf"}{...}
{viewerjumpto "备注" "markerlabelstyle_zh##remarks"}
{help markerlabelstyle:English Version}
{hline}{...}
{p2colset 1 27 29 2}{...}
{p2col:{bf:[G-4]} {it:markerlabelstyle} {hline 2}}标记标签外观的选择{p_end}
{p2col:}({mansection G-4 markerlabelstyle:查看完整 PDF 手册条目}){p_end}
{p2colreset}{...}


{marker syntax}{...}
{title:语法}

{synoptset 25}{...}
{p2col:{it:markerlabelstyle}}描述{p_end}
{p2line}
{p2col:{cmd:p1} - {cmd:p15}}用于第一个到第十五个绘图{p_end}
{p2col:{cmd:p1box} - {cmd:p15box}}用于第一个到第十五个“箱形”图{p_end}
{p2line}
{p2colreset}{...}

{pstd}
其他 {it:markerlabelstyles} 可能可用；输入

	    {cmd:.} {bf:{stata graph query markerlabelstyle}}

{pstd}
以获取您计算机上安装的 {it:markerlabelstyles} 的完整列表。


{marker description}{...}
{title:描述}

{pstd}
{it:markerlabelstyle} 定义了标记标签的位置、间距、角度、大小和颜色。有关更多信息，请参阅 {manhelpi marker_label_options G-3}。

{pstd}
{it:markerlabelstyle} 在 {cmd:mlabstyle()} 选项中指定，

{phang2}
	{cmd:. graph} ...{cmd:, mlabstyle(}{it:markerlabelstyle}{cmd:)} ...

{pstd}
有时（例如，在 {cmd:twoway} {cmd:scatter} 中），允许使用 {it:markerlabelstylelist}：{it:markerlabelstylelist} 是由空格分隔的一系列 {it:markerlabelstyles}。为了简化列表的指定，允许使用简写；请参阅 {manhelpi stylelists G-4}。


{marker linkspdf}{...}
{title:PDF 文档链接}

        {mansection G-4 markerlabelstyleRemarksandexamples:备注和示例}

{pstd}
上述部分未包含在此帮助文件中。


{marker remarks}{...}
{title:备注}

{pstd}
备注按以下标题呈现：

	{help markerlabelstyle##remarks1:什么是标记标签？}
	{help markerlabelstyle##remarks2:什么是标记标签样式？}
	{help markerlabelstyle##remarks3:您不需要指定标记标签样式}
	{help markerlabelstyle##remarks4:指定标记标签样式可以方便}
	{help markerlabelstyle##remarks5:什么是编号样式？}


{marker remarks1}{...}
{title:什么是标记标签？}

{pstd}
标记标签是在标记旁边（或替代标记）出现的标识文本。标记表示图中点的位置。


{marker remarks2}{...}
{title:什么是标记标签样式？}

{pstd}
标记标签的外观由四个属性定义：

{phang2}
     1.  标记标签的位置——标记相对于点的位置；
	参见 {manhelpi clockposstyle G-4}

{phang2}
    2.  标记标签与点之间的间距；
	参见 {manhelpi clockposstyle G-4}

{phang2}
    3.  显示识别文本的角度；
	参见 {manhelpi anglestyle G-4}

{phang2}
    4.  文本的整体样式；
	参见 {manhelpi textstyle G-4}

{p 12 16 2}
	a.  文本的大小；
	    参见 {manhelpi textsizestyle G-4}

{p 12 16 2}
	b.  文本的颜色和不透明度；
	    参见 {manhelpi colorstyle G-4}

{pstd}
{it:markerlabelstyle} 指定了所有这四个属性。


{marker remarks3}{...}
{title:您不需要指定标记标签样式}

{pstd}
标记标签样式由选项指定

	{cmd:mstyle(}{it:markerlabelstyle}{cmd:)}

{pstd}
相应地，您会发现其他可用选项：

	{cmd:mlabposition(}{it:clockposstyle}{cmd:)}
	{cmd:mlabgap(}{it:size}{cmd:)}
	{cmd:mlabangle(}{it:anglestyle}{cmd:)}
	{cmd:mlabtextstyle(}{it:textstyle}{cmd:)}
	{cmd:mlabsize(}{it:textstyle}{cmd:)}
	{cmd:mlabcolor(}{it:colorstyle}{cmd:)}

{pstd}
当样式存在且正好是您想要的，或者其他样式能够让您指定更少的更改以获得您所需内容时，您可以指定 {it:markerlabelstyle}。


{marker remarks4}{...}
{title:指定标记标签样式可以方便}

{pstd}
考虑以下命令

	{cmd:. scatter y1 y2 x, mlabel(country country)}

{pstd}
假设您希望 y2 对 x 的标记标签与 y1 对 x 的相同。
（此示例可以在 {it:{help marker_label_options##remarks2:消除重叠和溢出}} 和 {it:{help marker_label_options##remarks3:高级用法}} 下找到
在 {manhelpi marker_label_options G-3}。）
您可以为 y1 对 x 设置所有标记标签的属性，然后将 y2 对 x 的所有属性设置为相同。但是，输入

{phang2}
	{cmd:. scatter y1 y2 x, mlabel(country country) mlabstyle(p1 p1)}

{pstd}
会更简单。

{pstd}
如果您不指定 {cmd:mlabstyle()}，结果将与您指定

{phang2}
	{cmd:mlabstyle(p1 p2 p3 p4 p5 p6 p7 p8 p9 p10 p11 p12 p13 p14 p15)}

{pstd}
中的情况相同，其中多余的元素被忽略。在任何情况下，{cmd:p1} 是一组标记标签属性，{cmd:p2} 是另一组，以此类推。

{pstd}
假设您希望 y2 对 x 的样式与 y1 对 x 相同，只是希望线条为绿色；您可以输入

	{cmd:. scatter y1 y2 x, mlabel(country country) mlabstyle(p1 p1)}
	{cmd:                   mlabcolor(. green)}

{pstd}
{it:markerlabelstyles} {cmd:p1}、{cmd:p2}、... 没有什么特别之处；它们只是像任何其他命名的 {it:markerlabelstyle} 一样指定了一组标记标签属性。输入

	{cmd:. graph query markerlabelstyle}

{pstd}
以了解还有哪些标记标签样式可用。

{pstd}
有关更多信息，请参见 {it:{help scatter##remarks19:附录：样式和组合样式}}中的内容
在 {manhelp scatter G-2:graph twoway scatter} 中。


{* index numbered styles}{...}
{marker remarks5}{...}
{title:什么是编号样式？}

{phang}
     {cmd:p1} - {cmd:p15} 是支持标记标签的 {helpb twoway} 图表中标记标签的默认样式，例如，{helpb twoway scatter}、{helpb twoway dropline} 和 {helpb twoway connected}。 {cmd:p1} 用于第一个绘图，{cmd:p2} 用于第二个，依此类推。

{phang}
     {cmd:p1box} - {cmd:p15box} 是用于显示外部值的标记的默认样式，在 {help graph_box_zh:箱形图} 中。 {cmd:p1box} 用于第一组箱的外部值，{cmd:p2box} 用于第二组，以此类推。

{pstd}
        编号样式所定义的“外观”，例如 {cmd:p1} 或 {cmd:p3box}——在外观中，我们包括文本颜色、文本大小和标记周围的位置——由所选的方案决定（请参见 {manhelp schemes G-4:方案简介}）。

{pstd}
        编号样式提供默认外观，可以通过方案进行控制。当您希望将图表中的第二组标签设置为与第一组标签相同的外观时，它们也很有用。有关示例，请参见上面的 {it:{help markerlabelstyle##remarks4:指定标记标签样式可以方便}}。
{p_end}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <markerlabelstyle.sthlp>}