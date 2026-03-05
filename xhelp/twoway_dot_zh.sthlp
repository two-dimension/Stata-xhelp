{smcl}
{* *! version 1.1.9  19oct2017}{...}
{vieweralsosee "[G-2] graph twoway dot" "mansection G-2 graphtwowaydot"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[G-2] graph twoway scatter" "help scatter_zh"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[G-2] graph dot" "help graph_dot_zh"}{...}
{viewerjumpto "Syntax" "twoway_dot_zh##syntax"}{...}
{viewerjumpto "Menu" "twoway_dot_zh##menu"}{...}
{viewerjumpto "Description" "twoway_dot_zh##description"}{...}
{viewerjumpto "Links to PDF documentation" "twoway_dot_zh##linkspdf"}{...}
{viewerjumpto "Options" "twoway_dot_zh##options"}{...}
{viewerjumpto "Remarks" "twoway_dot_zh##remarks"}
{help twoway_dot:English Version}
{hline}{...}
{p2colset 1 27 29 2}{...}
{p2col:{bf:[G-2] graph twoway dot} {hline 2}}双向点图{p_end}
{p2col:}({mansection G-2 graphtwowaydot:查看完整的PDF手册条目}){p_end}
{p2colreset}{...}


{marker syntax}{...}
{title:语法}

{p 8 52 2}
{cmdab:tw:oway}
{cmd:dot}
{it:yvar} {it:xvar}
{ifin}
[{cmd:,}
{it:options}]

{synoptset 25}{...}	
{p2col:{it:options}}描述{p_end}
{p2line}
{p2col:{cmdab:vert:ical}}竖直条图；默认选项{p_end}
{p2col:{cmdab:hor:izontal}}横向条图{p_end}
{p2col:{cmdab:dotex:tend:(yes}|{cmd:no)}}点延伸超出点{p_end}
{p2col:{cmd:base(}{it:#}{cmd:)}}如果{cmd:dotextend(no)}，则丢弃到的值{p_end}
{p2col:{cmdab:ndot:s:(}{it:#}{cmd:)}}在{it:y}或{it:x}的完整范围内的点数{p_end}

{p2col:{cmdab:dsty:le:(}{it:{help markerstyle_zh}}{cmd:)}}点的整体标记样式{p_end}
{p2col:{cmdab:d:symbol:(}{it:{help symbolstyle_zh}}{cmd:)}}点的标记符号{p_end}
{p2col:{cmdab:dc:olor:(}{it:{help colorstyle_zh}}{cmd:)}}点的填充和轮廓颜色及不透明度{p_end}
{p2col:{cmdab:dfc:olor:(}{it:{help colorstyle_zh}}{cmd:)}}点的填充颜色和不透明度{p_end}
{p2col:{cmdab:dsiz:e:(}{it:{help markersizestyle_zh}}{cmd:)}}点的大小{p_end}
{p2col:{cmdab:dlsty:le:(}{it:{help linestyle_zh}}{cmd:)}}点的整体轮廓样式{p_end}
{p2col:{cmdab:dlc:olor:(}{it:{help colorstyle_zh}}{cmd:)}}点的轮廓颜色和不透明度{p_end}
{p2col:{cmdab:dlw:idth:(}{it:{help linewidthstyle_zh}}{cmd:)}}点的轮廓厚度{p_end}
{p2col : {cmdab:dla:lign:(}{it:{help linealignmentstyle_zh}}{cmd:)}}点的轮廓对齐方式{p_end}

{p2col:{it:scatter_options}}任何其他选项
       文档中，不能包括在{manhelp scatter G-2:graph twoway scatter}中说明的{p_end}
{p2line}
{p2colreset}{...}
{p 4 6 2}
所有选项都是{it:靠右的}，除了{cmd:vertical} 
和{cmd:horizontal}，这两个是{it:唯一的}；请参见 
{help 重复选项}。


{marker menu}{...}
{title:菜单}

{phang}
{bf:图形 > 双向图（散点、线等）}


{marker description}{...}
{title:描述}

{pstd}
{cmd:twoway} {cmd:dot} 将数值（{it:y},{it:x}）数据展示为
点图。
另请参见 {manhelp graph_dot G-2:graph dot} 创建分类变量的点图。  {cmd:twoway} {cmd:dot} 在编程环境中很有用。


{marker linkspdf}{...}
{title:PDF文档链接}

        {mansection G-2 graphtwowaydotQuickstart:快速入门}

        {mansection G-2 graphtwowaydotRemarksandexamples:备注和示例}

{pstd}
上述章节不包括在此帮助文件中。


{marker options}{...}
{title:选项}

{phang}
{cmd:vertical} 和 {cmd:horizontal}
    指定竖直或横向点图。
    {cmd:vertical} 是默认值。如果指定{cmd:horizontal}，则
    在{it:yvar}中记录的值被视为{it:x}值，而记录在{it:xvar}中的值被视为{it:y}值。
    也就是说，要制作横向图，不要交换两个变量的顺序。

{pmore}
    在{cmd:vertical}情况下，点根据指定的{it:xvar}
    值绘制并向上和向下延伸。

{pmore}
    在{cmd:horizontal}情况下，在线指定的{it:xvar}
    值处绘制线，并向左右延伸。

{phang}
{cmd:dotextend(yes}|{cmd:no)}
    确定点是否超出{it:y}值（或如果指定了{cmd:horizontal}则为{it:x}值）延伸。{cmd:dotextend(yes)}是
    默认值。

{phang}
{cmd:base(}{it:#}{cmd:)}
    只有在指定了{cmd:dotextend(no)}时才相关。{cmd:base()}
    指定点应该从中延伸的值。默认值为
    {cmd:base(0)}。

{phang}
{cmd:ndots(}{it:#}{cmd:)}
    指定一行中的点数；{cmd:ndots(75)}是默认值。根据打印/屏幕分辨率，使用更少或更多点可以使图形看起来更美观。

{phang}
{cmd:dstyle(}{it:markerstyle}{cmd:)}
    指定创建点使用的标记的整体外观，
    包括它们的形状和颜色。下面列出的其他选项
    允许您更改它们的属性，但{cmd:dstyle()}提供了
    起始点。

{pmore}
    您不必仅仅因为想要更改某些内容而指定{cmd:dstyle()}。
    当另一个样式恰好是您所希望的样式，或另一个样式允许您
    指定更少的更改来获得想要的效果时，您才指定{cmd:dstyle()}。

{pmore}
    请参见 {manhelpi markerstyle G-4} 获取可用标记样式列表。

{phang}
{cmd:dsymbol(}{it:symbolstyle}{cmd:)}
    指定用于点的标记形状。参见 
    {manhelpi symbolstyle G-4} 获取符号选项列表，尽管更改点的形状实在没什么意义；否则，为什么称之为点图？

{phang}
{cmd:dcolor(}{it:colorstyle}{cmd:)}
    指定用于点的符号的颜色和不透明度。
    请参见 {manhelpi colorstyle G-4} 获取颜色选项列表。

{phang}
{cmd:dfcolor(}{it:colorstyle}{cmd:)},
{cmd:dsize(}{it:markersizestyle}{cmd:)},
{cmd:dlstyle(}{it:linestyle}{cmd:)},
{cmd:dlcolor(}{it:colorstyle}{cmd:)},
{cmd:dlwidth(}{it:linewidthstyle}{cmd:)}, 和
{cmd:dlalign(}{it:linealignmentstyle}{cmd:)}
    很少（从未）被指定选项。它们分别控制
    填充颜色和不透明度、大小、轮廓样式、轮廓颜色和不透明度、
    轮廓宽度和轮廓对齐方式。如果您真的在使用
    点，所有这些都不会影响点。为了使这些选项有效，您还必须指定{cmd:dsymbol()}；如前所述，为什么
    然后称之为点图？无论如何，请参见
    {manhelpi colorstyle G-4},
    {manhelpi markersizestyle G-4},
    {manhelpi linestyle G-4},
    {manhelpi linewidthstyle G-4}, 和
    {manhelpi linealignmentstyle G-4}，
    获取选项列表。

{phang}
{it:scatter_options} 指指任何{cmd:scatter}允许的选项，
    最特别是{it:marker_options}，它控制标记（而非点）的外观。{it:connect_options}，即使指定，也会被忽略。请参见 {manhelp scatter G-2:graph twoway scatter}。


{marker remarks}{...}
{title:备注}

{pstd}
{cmd:twoway} {cmd:dot} 几乎没有任何用处。我们想不出它有什么用，
但也许有一天，在某个地方，会有人想到。我们
没有反对与分类数据一起使用的点图——请参见
{manhelp graph_dot G-2:graph dot} 获取有用命令——但在双向上下文中使用点图将是奇怪的。尽管如此，它仍出于逻辑完整性而被包含。

{pstd}
在 {manhelp twoway_bar G-2:graph twoway bar} 中，我们绘制了
标准普尔500的价值变化。以下是部分数据绘制成点图：

	{cmd:. sysuse sp500}

	{cmd:. twoway dot change date in 1/45}
	  {it:({stata "gr_example sp500: twoway dot change date in 1/45":点击运行})}
{* graph gtdot1}{...}

{pstd}
点图通常呈现为横向，

	{cmd:. twoway dot change date in 1/45, horizontal}
	  {it:({stata "gr_example sp500: twoway dot change date in 1/45, horizontal":点击运行})}
{* graph gtdot2}{...}

{pstd}
接下来我们指定{cmd:dotextend(n)}选项，以防止点超出{it:x}范围：

{phang2}
	{cmd:. twoway dot change date in 1/45, horizontal dotext(n)}
{p_end}
	  {it:({stata "gr_example sp500: twoway dot change date in 1/45, horizontal dotext(n)":点击运行})}
{* graph gtdot3}{...}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <twoway_dot.sthlp>}