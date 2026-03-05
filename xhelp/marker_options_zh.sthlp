{smcl}
{* *! version 1.1.8  19oct2017}{...}
{vieweralsosee "[G-3] marker_options" "mansection G-3 marker_options"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[G-4] anglestyle" "help anglestyle_zh"}{...}
{vieweralsosee "[G-4] colorstyle" "help colorstyle_zh"}{...}
{vieweralsosee "[G-4] linealignmentstyle" "help linealignmentstyle_zh"}{...}
{vieweralsosee "[G-4] linestyle" "help linestyle_zh"}{...}
{vieweralsosee "[G-4] linewidthstyle" "help linewidthstyle_zh"}{...}
{vieweralsosee "[G-4] markersizestyle" "help markersizestyle_zh"}{...}
{vieweralsosee "[G-4] symbolstyle" "help symbolstyle_zh"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[G-4] markerstyle" "help markerstyle_zh"}{...}
{viewerjumpto "Syntax" "marker_options_zh##syntax"}{...}
{viewerjumpto "Description" "marker_options_zh##description"}{...}
{viewerjumpto "Links to PDF documentation" "marker_options_zh##linkspdf"}{...}
{viewerjumpto "Options" "marker_options_zh##options"}{...}
{viewerjumpto "Remarks" "marker_options_zh##remarks"}
{help marker_options:English Version}
{hline}{...}
{p2colset 1 25 27 2}{...}
{p2col:{bf:[G-3]} {it:marker_options} {hline 2}}指定标记的选项{p_end}
{p2col:}({mansection G-3 marker_options:查看完整 PDF 手册条目}){p_end}
{p2colreset}{...}


{marker syntax}{...}
{title:语法}

{synoptset 30}{...}
{p2col:{it:marker_options}}描述{p_end}
{p2line}
{p2col:{cmdab:m:symbol:(}{it:{help symbolstyle_zh}}{cmd:)}}标记形状{p_end}
{p2col:{cmdab:mc:olor:(}{it:{help colorstyle_zh}}{cmd:)}}标记的颜色和不透明度，内外{p_end}
{p2col:{cmdab:msiz:e:(}{it:{help markersizestyle_zh}}{cmd:)}}标记大小{p_end}

{p2col:{cmdab:msa:ngle:(}{it:{help anglestyle_zh}}{cmd:)}}标记符号的角度{p_end}

{p2col:{cmdab:mfc:olor:(}{it:{help colorstyle_zh}}{cmd:)}}内部或“填充”颜色和不透明度{p_end}

{p2col:{cmdab:mlc:olor:(}{it:{help colorstyle_zh}}{cmd:)}}轮廓颜色和不透明度{p_end}
{p2col:{cmdab:mlw:idth:(}{it:{help linewidthstyle_zh}}{cmd:)}}轮廓厚度{p_end}
{p2col : {cmdab:mla:lign:(}{it:{help linealignmentstyle_zh}}{cmd:)}}轮廓对齐（内侧、外侧、居中）{p_end}
{p2col:{cmdab:mlsty:le:(}{it:{help linestyle_zh}}{cmd:)}}轮廓的厚度和颜色，整体样式{p_end}

{p2col:{cmdab:msty:le:(}{it:{help markerstyle_zh}}{cmd:)}}标记的整体样式；所有上述设置{p_end}
{p2col:{cmdab:psty:le:(}{it:{help pstyle_zh}}{cmd:)}}整体图形样式，包括标记样式{p_end}

{p2col:{help advanced_options_zh:{bf:recast(}{it:newplottype}{bf:)}}}高级；将图形视为 {it:newplottype}{p_end}
{p2line}
{p2colreset}{...}
{p 4 6 2}
所有选项均为 {it:右侧}；请参见 {help repeated options}。

{pstd}
以上每项的一个示例是{cmd}

	    msymbol(O)       mfcolor(red)    mlcolor(olive)       mstyle(p1)
	    mcolor(green)                    mlwidth(thick)       mlstyle(p1)
	    msize(medium)                    mlalign(inside)
	    msangle(0){txt}

{pstd}
有时您可以指定一个元素列表，第一个元素适用于第一个变量，第二个适用于第二个，依此类推。请参见，例如，{manhelp scatter G-2:graph twoway scatter}。一个示例可能是

	    {cmd:msymbol(O o p)}
	    {cmd:mcolor(green blue black)}
	    {cmd:msize(medium medium small)}
	    {cmd:msangle(0 15 30)}

	    {cmd:mfcolor(red red none)}

	    {cmd:mlcolor(olive olive green)}
	    {cmd:mlwidth(thick thin thick)}
	    {cmd:mlalign(inside outside center)}

	    {cmd:mstyle(p1 p2 p3)}
	    {cmd:mlstyle(p1 p2 p3)}

{pstd}
有关指定列表的信息，请参见 {manhelpi stylelists G-4}。


{marker description}{...}
{title:描述}

{pstd}
标记是用于标记图上点的墨水。重要选项有

	{cmd:msymbol(}{it:{help symbolstyle_zh}}{cmd:)}                （符号选择）
	{cmd:mcolor(}{it:{help colorstyle_zh}}{cmd:)}                  （颜色和不透明度选择）
	{cmd:msize(}{it:{help markersizestyle_zh}}{cmd:)}              （大小选择）


{marker linkspdf}{...}
{title:PDF文档链接}

        {mansection G-3 marker_optionsRemarksandexamples:备注和示例}

{pstd}
上述部分不包含在此帮助文件中。


{marker options}{...}
{title:选项}

{phang}
{cmd:msymbol(}{it:symbolstyle}{cmd:)} 指定标记的形状，是最常指定的选项之一。有关此重要选项的更多信息，请参见 {manhelpi symbolstyle G-4}。

{phang}
{cmd:mcolor(}{it:colorstyle}{cmd:)} 指定标记的颜色和不透明度。此选项设置标记形状的轮廓颜色和内部颜色。同时请参见下面的 {cmd:mfcolor()} 和 {cmd:mlcolor()} 选项。有关颜色选择的列表，请参见 {manhelpi colorstyle G-4}。

{phang}
{cmd:msize(}{it:markersizestyle}{cmd:)} 指定标记的大小。有关大小选择的列表，请参见 {manhelpi markersizestyle G-4}。

{phang}
{cmd:msangle(}{it:anglestyle}{cmd:)} 指定标记符号的角度。有关角度选择的列表，请参见 {manhelpi anglestyle G-4}。

{phang}
{cmd:mfcolor(}{it:colorstyle}{cmd:)} 指定标记内部的颜色和不透明度。有关颜色选择的列表，请参见 {manhelpi colorstyle G-4}。

{phang}
{cmd:mlcolor(}{it:colorstyle}{cmd:)},
{cmd:mlwidth(}{it:linewidthstyle}{cmd:)},
{cmd:mlalign(}{it:linealignmentstyle}{cmd:)},
和
{cmd:mlstyle(}{it:linestyle}{cmd:)} 指定用于描绘标记形状轮廓的线的外观。请参见 {help lines_zh}，但您无法更改标记的线条样式。

{phang}
{cmd:mstyle(}{it:markerstyle}{cmd:)} 指定标记的整体外观，例如其形状和颜色。其他选项允许您更改标记的每个属性，但 {cmd:mstyle()} 是起点。

{pmore}
    您不必指定 {cmd:mstyle()} 仅仅因为您想更改标记的外观，实际上，大多数人很少指定 {cmd:mstyle()} 选项。您在存在您所希望的确切样式时或其他样式允许您更改更少的属性来获得您想要的内容时才指定 {cmd:mstyle()}。

{pmore}
    有关可用标记样式的列表，请参见 {manhelpi markerstyle G-4}。

{phang}
{cmd:pstyle(}{it:pstyle}{cmd:)} 指定图形的整体样式，包括不仅是 {it:{help markerstyle_zh}}，还有 {it:{help markerlabelstyle_zh}} 和所有其他设置。只有 {it:markerstyle} 和 {it:markerlabelstyle} 影响标记的外观。有关可用图形样式的列表，请参见 {manhelpi pstyle G-4}。

{phang}
{cmd:recast(}{it:newplottype}{cmd:)} 是一个高级选项，允许将图形从一种类型转换为另一种类型，例如，从 {help twoway scatter:散点图} 到 {help twoway line:线图}；请参见{manhelpi advanced_options G-3}。大多数图形允许 {cmd:recast()}，但并非所有图形都支持。

{marker remarks}{...}
{title:备注}

{pstd}
您绝对不需要指定所有九个标记选项，实际上您甚至很少需要指定其中一两个。许多人认为只有一个重要的标记选项，

	{cmd:msymbol(}{it:symbolstyle}{cmd:)}

{pstd}
{cmd:msymbol()} 指定符号的形状；有关符号选择，请参见 {manhelpi symbolstyle G-4}。少数人可能会将第二个选项添加到重要列表中，

	{cmd:mcolor(}{it:colorstyle}{cmd:)}

{pstd}
{cmd:mcolor()} 指定标记的颜色和不透明度；有关颜色选择，请参见 {manhelpi colorstyle G-4}。最后，少数人可能会再添加

	{cmd:msize(}{it:markersizestyle}{cmd:)}

{pstd}
{cmd:msize()} 指定标记的大小；有关大小选择，请参见 {manhelpi markersizestyle G-4}。

{pstd}
在那之后，我们确实进入了细节。然而，剩下的选项之一是值得关注的：

	{cmd:mstyle(}{it:markerstyle}{cmd:)}

{pstd}
一个标记具有一组特征：

	{c -(}形状、颜色、大小、内部细节、外部细节{c )-}

{pstd}
除了 {cmd:mstyle()} 外的每个选项都修改该特征集中的某个内容。{cmd:mstyle()} 设置整个特征集的值。正是在这里根据您所指定的更改进行修改。请参见 {manhelpi markerstyle G-4}。
{p_end}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <marker_options.sthlp>}