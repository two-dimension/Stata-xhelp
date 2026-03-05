{smcl}
{* *! version 1.1.8  19oct2017}{...}
{vieweralsosee "[G-4] markerstyle" "mansection G-4 markerstyle"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[G-3] marker_options" "help marker_options_zh"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[G-4] colorstyle" "help colorstyle_zh"}{...}
{vieweralsosee "[G-4] linealignmentstyle" "help linealignmentstyle_zh"}{...}
{vieweralsosee "[G-4] linestyle" "help linestyle_zh"}{...}
{vieweralsosee "[G-4] linewidthstyle" "help linewidthstyle_zh"}{...}
{vieweralsosee "[G-4] markersizestyle" "help markersizestyle_zh"}{...}
{vieweralsosee "[G-4] markerstyle" "help markerstyle_zh"}{...}
{vieweralsosee "[G-4] symbolstyle" "help symbolstyle_zh"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[G-4] stylelists" "help stylelists_zh"}{...}
{viewerjumpto "Syntax" "markerstyle_zh##syntax"}{...}
{viewerjumpto "Description" "markerstyle_zh##description"}{...}
{viewerjumpto "Links to PDF documentation" "markerstyle_zh##linkspdf"}{...}
{viewerjumpto "Remarks" "markerstyle_zh##remarks"}
{help markerstyle:English Version}
{hline}{...}
{p2colset 1 22 24 2}{...}
{p2col:{bf:[G-4]} {it:markerstyle} {hline 2}}标记整体外观的选择{p_end}
{p2col:}({mansection G-4 markerstyle:查看完整的 PDF 手册条目}){p_end}
{p2colreset}{...}


{marker syntax}{...}
{title:语法}

{synoptset 25}{...}
{p2col:{it:markerstyle}}描述{p_end}
{p2line}
{p2col:{cmd:p1} - {cmd:p15}}由第一到第十五个 "scatter" 图使用{p_end}
{p2col:{cmd:p1box} - {cmd:p15box}}由第一到第十五个 "box" 图使用{p_end}
{p2col:{cmd:p1dot} - {cmd:p15dot}}由第一到第十五个 "dot" 图使用{p_end}
{p2line}
{p2colreset}{...}

{pstd}
可能还有其他 {it:markerstyles} 可用；键入

	    {cmd:.} {bf:{stata graph query markerstyle}}

{pstd}
以获得您计算机上安装的完整列表。


{marker description}{...}
{title:描述}

{pstd}
标记是用于标记图上点的位置的墨水。
{it:markerstyle} 定义了标记的符号、大小和颜色。
有关更多信息，请参见 {manhelpi marker_options G-3}。

{pstd}
{it:markerstyle} 是在 {cmd:mstyle()} 选项中指定的，

{phang2}
	{cmd:. graph} ...{cmd:, mstyle(}{it:markerstyle}{cmd:)} ...

{pstd}
有时您会看到允许使用 {it:markerstylelist}：

{phang2}
	{cmd:. twoway scatter} ...{cmd:, mstyle(}{it:markerstylelist}{cmd:)} ...

{pstd}
{it:markerstylelist} 是由空格分隔的 {it:markerstyles} 的序列。为方便指定列表，允许使用简写；请参见 {manhelpi stylelists G-4}。


{marker linkspdf}{...}
{title:PDF 文档链接}

        {mansection G-4 markerstyleRemarksandexamples:备注和示例}

{pstd}
上述部分不包含在本帮助文件中。


{marker remarks}{...}
{title:备注}

{pstd}
备注按以下标题呈现：

	{help markerstyle##remarks1:什么是标记？}
	{help markerstyle##remarks2:什么是标记样式？}
	{help markerstyle##remarks3:您不必指定标记样式}
	{help markerstyle##remarks4:指定标记样式可能更方便}
	{help markerstyle##remarks5:什么是编号样式？}


{marker remarks1}{...}
{title:什么是标记？}

{pstd}
标记是用于标记图上点的位置的墨水。
有些人使用点或符号一词，但点是标记放置的位置，而符号仅是标记的一个特征。


{marker remarks2}{...}
{title:什么是标记样式？}

{pstd}
标记由五个属性定义：

{phang2}
    1.  {it:symbol} -- 标记的形状；
	请参见 {manhelpi symbolstyle G-4}

{phang2}
    2.  {it:markersize} -- 标记的大小；
	请参见 {manhelpi markersizestyle G-4}

{phang2}
    3.  标记的整体颜色和不透明度；
	请参见 {manhelpi colorstyle G-4}

{phang2}
    4.  标记的内部（填充）颜色和不透明度；
	请参见 {manhelpi colorstyle G-4}

{phang2}
    5.  描述标记形状的线条：
{p_end}

{phang3}
	a.  线条的整体样式；
	    见 {manhelpi linestyle G-4}

{phang3}
	b.  线条的厚度；
	    见 {manhelpi linewidthstyle G-4}

{phang3}
	c.  线条的颜色和不透明度；
	    见 {manhelpi colorstyle G-4}

{phang3}
	d.  边框或轮廓的对齐方式；
	    见 {manhelpi linealignmentstyle G-4}

{pstd}
{it:markerstyle} 定义了这五个（七个）属性。


{marker remarks3}{...}
{title:您不必指定标记样式}

{pstd}
{it:markerstyle} 是通过

	{cmd:mstyle(}{it:markerstyle}{cmd:)}

{pstd}
选项指定的。相应地，您会发现有八个其他可用选项：

	{cmd:msymbol(}{it:symbolstyle}{cmd:)}
	{cmd:msize(}{it:markersizestyle}{cmd:)}
	{cmd:mcolor(}{it:colorstyle}{cmd:)}
	{cmd:mfcolor(}{it:colorstyle}{cmd:)}
	{cmd:mlstyle(}{it:linestyle}{cmd:)}
	{cmd:mlwidth(}{it:linewidthstyle}{cmd:)}
	{cmd:mlcolor(}{it:colorstyle}{cmd:)}
	{cmd:mlalign(}{it:linealignmentstyle}{cmd:)}

{pstd}
当存在一种样式正好符合您的需求时，或者另一个样式允许您指定更少的更改以获得所需效果时，您可以指定 {it:markerstyle}。


{marker remarks4}{...}
{title:指定标记样式可能更方便}

{pstd}
考虑以下命令：

	{cmd:. scatter y1var y2var xvar}

{pstd}
假设您希望 {cmd:y2var} 与 {cmd:xvar} 的标记与 {cmd:y1var} 与 {cmd:xvar} 的标记相同。您可能会为 {cmd:y1var} 与 {cmd:xvar} 设置所有标记特征，然后将 {cmd:y2var} 与 {cmd:xvar} 的标记特征设置为相同。然而，输入以下内容会更简单：

{phang2}
	{cmd:. scatter y1var y2var xvar, mstyle(p1 p1)}

{pstd}
{cmd:mstyle()} 是指定标记整体样式的选项。当您不指定 {cmd:mstyle()} 选项时，结果与您指定以下内容相同：

{phang2}
	{cmd:mstyle(p1 p2 p3 p4 p5 p6 p7 p8 p9 p10 p11 p12 p13 p14 p15)}

{pstd}
其中额外的元素将被忽略。在任何情况下，{cmd:p1} 是一组标记特征，{cmd:p2} 是另一组，依此类推。

{pstd}
假设您希望 {cmd:y2var} 和 {cmd:xvar} 的样子与 {cmd:y1var} 和 {cmd:xvar} 一样，不同的是您希望符号为绿色；您可以键入：

{phang2}
	{cmd:. scatter y1var y2var xvar, mstyle(p1 p1) mcolor(. green)}

{pstd}
{it:markerstyles} {cmd:p1}, {cmd:p2}, ... 没有什么特别之处；它们仅仅是指定了标记属性集与任何其他命名的 {it:markerstyle} 相似。键入：

	{cmd:. graph query markerstyle}

{pstd}
以查找还有哪些其他标记样式可用。您可能会发现某些样式令人满意，如果是这样，那比单独指定每个属性的修改登录要容易得多，诸如形状、颜色、大小等元素。


{* index numbered styles}{...}
{marker remarks5}{...}
{title:什么是编号样式？}

{phang}
     {cmd:p1} - {cmd:p15} 是支持标记标签的 {helpb twoway} 图中的标记标签的默认样式，例如，
        {helpb twoway scatter},
        {helpb twoway dropline} 和
        {helpb twoway connected}。{cmd:p1} 用于第一幅图，{cmd:p2} 用于第二幅图，以此类推。

{phang}
     {cmd:p1box} - {cmd:p15box} 是用于显示 {help graph box:box charts} 中外部值的标记的默认样式。
        {cmd:p1box} 用于第一组框的外部值，{cmd:p2box} 用于第二组，以此类推。


{pstd}
        由编号样式定义的“外观”，例如 {cmd:p1} 或 {cmd:p3dot} -- 我们所说的“外观”包括颜色、大小或符号等内容 -- 由选择的 {help schemes_zh:scheme} 决定。

{pstd}
        编号样式提供了可以由方案控制的默认外观。当您希望第二组标记在图上看起来像第一组时，它们也非常有用。
        有关示例，请参见上面的 {it:{help markerstyle##remarks4:指定标记样式可能更方便}}。
{p_end}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <markerstyle.sthlp>}