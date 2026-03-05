{smcl}
{* *! version 1.1.13  15may2018}{...}
{viewerdialog "graph display" "dialog graph_display"}{...}
{vieweralsosee "[G-2] graph display" "mansection G-2 graphdisplay"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[G-2] graph manipulation" "help graph_manipulation_zh"}{...}
{vieweralsosee "[G-2] graph replay" "help graph_replay_zh"}{...}
{viewerjumpto "Syntax" "graph_display_zh##syntax"}{...}
{viewerjumpto "Menu" "graph_display_zh##menu"}{...}
{viewerjumpto "Description" "graph_display_zh##description"}{...}
{viewerjumpto "Links to PDF documentation" "graph_display_zh##linkspdf"}{...}
{viewerjumpto "Options" "graph_display_zh##options"}{...}
{viewerjumpto "Remarks" "graph_display_zh##remarks"}
{help graph_display:English Version}
{hline}{...}
{p2colset 1 24 26 2}{...}
{p2col:{bf:[G-2] graph display} {hline 2}}显示存储在内存中的图形{p_end}
{p2col:}({mansection G-2 graphdisplay:查看完整的 PDF 手册条目}){p_end}
{p2colreset}{...}


{marker syntax}{...}
{title:语法}

{p 8 23 2}
{cmdab:gr:aph}
{cmdab:di:splay}
[{it:name}]
[{cmd:,}
{it:options}]

{phang}
如果未指定 {it:name}，则默认为当前图形的名称——在图形窗口中显示的图形。

{synoptset 25}{...}
{p2col:{it:options}}描述{p_end}
{p2line}
{p2col:{cmdab:ysiz:e:(}{it:#}{cmd:)}}更改图形高度（以英寸为单位）{p_end}
{p2col:{cmdab:xsiz:e:(}{it:#}{cmd:)}}更改图形宽度（以英寸为单位）{p_end}
{p2col:{cmdab:margin:s:(}{it:{help marginstyle_zh}}{cmd:)}}更改单边距{p_end}
{p2col:{help scale_option_zh:{bf:scale(}{it:#}{bf:)}}}调整文本、标记和线条宽度的大小{p_end}

{p2col:{help scheme_option_zh:{ul:sch}eme({it:schemename})}}更改整体外观{p_end}
{p2line}
{p2colreset}{...}


{marker menu}{...}
{title:菜单}

{phang}
{bf:图形 > 管理图形 > 使内存图形为当前图形}


{marker description}{...}
{title:描述}

{pstd}
{cmd:graph} {cmd:display} 重新显示存储在内存中的图形。


{marker linkspdf}{...}
{title:PDF 文档链接}

{mansection G-2 graphdisplayQuickstart:快速开始}

{mansection G-2 graphdisplayRemarksandexamples:备注和示例}

{pstd}
上述部分不包括在此帮助文件中。


{marker options}{...}
{title:选项}

{phang}
{cmd:ysize(}{it:#}{cmd:)}
和
{cmd:xsize(}{it:#}{cmd:)}
指定图形的高度和宽度（以英寸为单位），统称为 {it:available} {it:area}。默认值为图形的原始高度和宽度。这两个选项可用于更改纵横比；请参阅
{it:{help graph display##remarks1:更改大小和纵横比}}，详见以下 {it:备注}。

{phang}
{cmd:margins(}{it:marginstyle}{cmd:)}
指定外部边距：外部图形区域和内部图形区域之间的边距，如
{manhelpi region_options G-3} 中的图示所示。请参阅
{it:{help graph display##remarks2:更改边距和纵横比}}
在以下 {it:备注} 中，并参见 {manhelpi marginstyle G-4}。

{phang}
{cmd:scale(}{it:#}{cmd:)}
指定一个乘数，影响图形中所有文本、标记和线宽的大小。{cmd:scale(1)} 是默认值，{cmd:scale(1.2)} 将使所有文本和标记增大 20%。请参见
{manhelpi scale_option G-3}。

{phang}
{cmd:scheme(}{it:schemename}{cmd:)}
指定图形的整体外观。默认值是用来绘制图形的原始方案。请参阅
{it:{help graph display##remarks3:更改方案}}在以下 {it:备注} 中，并参见 {manhelpi scheme_option G-3}。


{marker remarks}{...}
{title:备注}

{pstd}
请参见 {manhelp graph_manipulation G-2:图形操作} 以获取有关图形操作命令的介绍。

{pstd}
备注内容按以下标题分类：

	{help graph display##remarks1:更改大小和纵横比}
	{help graph display##remarks2:更改边距和纵横比}
	{help graph display##remarks3:更改方案}


{marker remarks1}{...}
{title:更改大小和纵横比}

{pstd}
在 {it:{help region_options##remarks2:控制纵横比}} 中，我们比较了

	{cmd:. sysuse auto}

	{cmd:. scatter mpg weight}

{pstd}
和

	{cmd:. scatter mpg weight, ysize(5)}

{pstd}
我们不需要重新构建图形来更改 {cmd:ysize()} 或 {cmd:xsize()}。我们可以从某个图形开始

	{cmd:. scatter mpg weight}
	  {it:({stata "gr_example auto: scatter mpg weight":click to run})}
{* graph mpgweight}{...}

{pstd}
然后我们可以用不同的 {cmd:ysize()} 和/或 {cmd:xsize()} 值重新显示它：

	{cmd:. graph display, ysize(5)}
	  {it:({stata "graph display, ysize(5)":click to run, but after you click the first one})}
{* graph display1}{...}

{pstd}
通过这种方式，我们可以快速找到最佳的 {cmd:ysize()} 和 {cmd:xsize()} 值。当我们绘制的图形需要许多选项时，这种方法尤其有效：

	{cmd}. sysuse uslifeexp, clear

	. generate diff = le_wm - le_bm

	. label var diff "差异"

	.    line le_wm year, yaxis(1 2) xaxis(1 2)
	  || line le_bm year
	  || line diff  year
	  || lfit diff  year
	  ||,
	     ylabel(0(5)20, axis(2) gmin angle(horizontal))
	     ylabel(0 20(10)80,     gmax angle(horizontal))
	     ytitle("", axis(2))
	     xlabel(1918, axis(2)) xtitle("", axis(2))
	     ytitle("出生时的预期寿命（年）")
             ylabel(, axis(2) grid)
	     title("白人和黑人的预期寿命")
	     subtitle("美国, 1900-1999")
	     note("来源：国家生命统计， 第 50 卷，第 6 期"
		  "(1918 年的下降是因为 1918 年流感大流行)")
	     legend(label(1 "白人男性") label(2 "黑人男性")){txt}
	  {it:({stata gr_example2 line3:click to run})}
{* graph line 3}{...}

	{cmd:. graph display, ysize(5.25)}
	  {it:({stata "graph display, ysize(5.25)":click to run, but after you click the first one})}
{* graph display2}{...}

{pstd}
此外，我们可以更改之前绘制并存储在磁盘上的图形的大小：

	{cmd:. graph use} ...

	{cmd:. graph display, ysize(}...{cmd:) xsize(}...{cmd:)}

{pstd}
您可能不记得使用的 {cmd:ysize()} 和 {cmd:xsize()} 值（默认值为 {cmd:ysize(4)} 和 {cmd:xsize(5.5)}）。
然后使用 {cmd:graph} {cmd:describe} 来描述该文件；
它会报告 {cmd:ysize()} 和 {cmd:xsize()} 值；
参见 {manhelp graph_describe G-2:图形描述}。


{marker remarks2}{...}
{title:更改边距和纵横比}

{pstd}
我们可以更改图形的大小或更改其边距以控制纵横比；这在
{it:{help region_options##remarks2:控制纵横比}} 中进行了讨论，该部分给出的示例为：

{phang2}
	{cmd:scatter mpg weight, by(foreign, total graphregion(margin(l+10 r+10)))}

{pstd}
这也可以分两步完成：

	{cmd:. scatter mpg weight, by(foreign, total)}

	{cmd:. graph display, margins(l+10 r+10)}

{pstd}
{cmd:graph} {cmd:display} 的 {cmd:margin()} 选项对应于在构建图形时使用的
{cmd:graphregion(margin())}。


{marker remarks3}{...}
{title:更改方案}

{pstd}
方案决定图形的整体外观，例如轴、标题和图例的位置以及背景的颜色；请参阅
{manhelp schemes G-4:方案介绍}。 在图形构建后更改方案有时效果很好，有时效果较差。

{pstd}
下面是一个成功的示例：

	{cmd}. sysuse uslifeexp2, clear

	. line le year, sort
		title("折线图")
		subtitle("出生时的预期寿命，美国")
		note("1")
		caption("来源：国家生命统计报告,
			 第 50 卷第 6 期"){txt}
	  {it:({stata "gr_example2 grlinee":click to run})}
{* graph leyear}{...}

	{cmd:. graph display, scheme(economist)}
	  {it:({stata "graph display, scheme(economist)":click to run, but after you click the first one})}
{* graph display3}{...}

{pstd}
上述示例效果很好，因为在默认位置绘制的元素（如轴、标题和图例）没有被移动，因此没有覆盖默认颜色的选项。问题很简单：如果我们绘制一个图形并说：“将标题从默认位置移动到这里”，那么一旦我们更改方案，这里可能会是个糟糕的地方。或者如果我们覆盖了颜色并将其设为品红，这种颜色可能会大相径庭。

{pstd}
上述内容并不意味着图形命令必须简单。
在
{it:{help graph display##remarks1:更改大小和纵横比}} 中显示的示例，

	{cmd}.    line le_wm year, yaxis(1 2) xaxis(1 2)
	  || line le_bm year
	  || line diff  year
	  || lfit diff  year
	  ||,
	     ylabel(0(5)20, axis(2) gmin angle(horizontal))
	     ylabel(0 20(10)80,     gmax angle(horizontal))
	     ytitle("", axis(2))
	     xlabel(1918, axis(2)) xtitle("", axis(2))
	     ytitle("出生时的预期寿命（年）")
	     title("白人和黑人的预期寿命")
	     subtitle("美国, 1900-1999")
	     note("来源：国家生命统计， 第 50 卷，第 6 期"
		  "(1918 年的下降是因为 1918 年流感大流行)")
	     legend(label(1 "白人男性") label(2 "黑人男性")){txt}

{pstd}
在不同方案之间移动是完全可以的，唯一可能的问题是我们对两个 {it:y} 轴标签的 {cmd:angle(horizontal)} 的指定。
在某些方案中，该样式可能不太好看。

{pstd}
如果您担心在不同方案之间移动，当您指定选项时，请优先考虑样式选项，而不是直接控制结果的选项。例如，
要让两组点具有相同的颜色，请指定
{cmd:mstyle()} 选项，而不是将一组的颜色更改为与您当前看到的另一组的颜色相匹配。

{pstd}
在对于背景颜色不同的样式之间移动时，还存在另一个问题。样式通常被称为具有自然白色或自然黑色背景颜色；请参阅 {manhelp schemes G-4:方案介绍}。当您从一种类型的方案移动到另一种类型的方案时，如果没有更改颜色，先前显眼的颜色可能会与背景融为一体，反之亦然。为了防止这种情况，{cmd:graph} {cmd:display} 会根据方案更改所有颜色，除了您按名称指定的颜色（例如，您指定 {cmd:mcolor(magenta)} 或 {cmd:mcolor("255 0 255")} 来更改符号的颜色）。

{pstd}
我们建议您不要使用 {cmd:graph} {cmd:display} 将图形从自然黑色背景变更为自然白色背景。只要您以单色打印，{cmd:print} 就在将黑色转换为白色背景方面表现出色，因此没有必要因这个原因更改样式。如果您以彩色打印，我们建议您将默认方案更改为自然白色方案；请参见 {manhelp set_scheme G-2:设置方案}。
{p_end}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <graph_display.sthlp>}