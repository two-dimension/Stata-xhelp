{smcl}
{* *! version 1.1.9  19oct2017}{...}
{vieweralsosee "[G-3] barlook_options" "mansection G-3 barlook_options"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[G-4] areastyle" "help areastyle_zh"}{...}
{vieweralsosee "[G-4] colorstyle" "help colorstyle_zh"}{...}
{vieweralsosee "[G-4] linealignmentstyle" "help linealignmentstyle_zh"}{...}
{vieweralsosee "[G-4] linepatternstyle" "help linepatternstyle_zh"}{...}
{vieweralsosee "[G-4] linestyle" "help linestyle_zh"}{...}
{vieweralsosee "[G-4] linewidthstyle" "help linewidthstyle_zh"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[G-2] graph bar" "help graph_bar_zh"}{...}
{vieweralsosee "[G-2] graph twoway bar" "help twoway_bar_zh"}{...}
{vieweralsosee "[G-2] graph twoway rbar" "help twoway_rbar_zh"}{...}
{viewerjumpto "Syntax" "barlook_options_zh##syntax"}{...}
{viewerjumpto "Description" "barlook_options_zh##description"}{...}
{viewerjumpto "Links to PDF documentation" "barlook_options_zh##linkspdf"}{...}
{viewerjumpto "Options" "barlook_options_zh##options"}{...}
{viewerjumpto "Remarks" "barlook_options_zh##remarks"}
{help barlook_options:English Version}
{hline}{...}
{p2colset 1 26 28 2}{...}
{p2col:{bf:[G-3]} {it:barlook_options} {hline 2}}设置条形图外观的选项{p_end}
{p2col:}({mansection G-3 barlook_options:查看完整的PDF手册条目}){p_end}
{p2colreset}{...}


{marker syntax}{...}
{title:语法}

{synoptset 30}{...}
{p2col:{it:barlook_options}}描述{p_end}
{p2line}
{p2col:{cmdab:col:or:(}{it:{help colorstyle_zh}}{cmd:)}}轮廓和填充颜色及透明度{p_end}
{p2col:{cmdab:fc:olor:(}{it:{help colorstyle_zh}}{cmd:)}}填充颜色和透明度{p_end}
{p2col:{cmdab:fi:ntensity:(}{it:{help intensitystyle_zh}}{cmd:)}}填充强度{p_end}

{p2col:{cmdab:lc:olor:(}{it:{help colorstyle_zh}}{cmd:)}}轮廓颜色及透明度{p_end}
{p2col:{cmdab:lw:idth:(}{it:{help linewidthstyle_zh}}{cmd:)}}轮廓的厚度{p_end}
{p2col:{cmdab:lp:attern:(}{it:{help linepatternstyle_zh}}{cmd:)}}轮廓图案（实线，虚线等）{p_end}
{p2col:{cmdab:la:lign:(}{it:{help linealignmentstyle_zh}}{cmd:)}}轮廓对齐方式（内部、外部、居中）{p_end}
{p2col:{cmdab:lsty:le:(}{it:{help linestyle_zh}}{cmd:)}}轮廓的整体外观{p_end}

{p2col:{cmdab:bsty:le:(}{it:{help areastyle_zh}}{cmd:)}}条形的整体外观，包括上述所有设置{p_end}
{p2col:{cmdab:psty:le:(}{it:{help pstyle_zh}}{cmd:)}}整体绘图样式，包括areastyle{p_end}
{p2line}
{p2colreset}{...}
{p 4 6 2}
所有选项为 {it:merged-implicit}；请参见 
{help repeated options}。


{marker description}{...}
{title:描述}

{pstd}
{it:barlook_options} 确定由 {helpb graph bar}、{helpb graph hbar}、{helpb graph twoway bar}以及其他几条绘制条形图的命令生成的条形外观。{it:barlook_options} 与 {it:{help area_options_zh}} 是同义词，选项可以互换使用。


{marker linkspdf}{...}
{title:链接到PDF文档}

        {mansection G-3 barlook_optionsRemarksandexamples:备注和示例}

{pstd}
上述部分未包含在此帮助文件中。


{marker options}{...}
{title:选项}

{phang}
{cmd:color(}{it:colorstyle}{cmd:)}
    指定用于描边条形的轮廓和填充内部的颜色及透明度。
    请参见 {manhelpi colorstyle G-4} 以获取颜色选择列表。

{phang}
{cmd:fcolor(}{it:colorstyle}{cmd:)}
    指定用于填充条形内部的颜色及透明度。
    请参见 {manhelpi colorstyle G-4} 以获取颜色选择列表。

{phang}
{cmd:fintensity(}{it:intensitystyle}{cmd:)}
    指定用于填充条形内部颜色的强度。
    请参见 {manhelpi intensitystyle G-4} 以获取强度选择列表。

{phang}
{cmd:lcolor(}{it:colorstyle}{cmd:)}
    指定用于描边条形的颜色及透明度。
    请参见 {manhelpi colorstyle G-4} 以获取颜色选择列表。

{phang}
{cmd:lwidth(}{it:linewidthstyle}{cmd:)}
    指定用于描边条形的线厚度。
    请参见 {manhelpi linewidthstyle G-4} 以获取选择列表。

{phang}
{cmd:lpattern(}{it:linepatternstyle}{cmd:)}
    指定用于描边条形的线是实线、虚线等。
    请参见 {manhelpi linepatternstyle G-4} 以获取图案选择列表。

{phang}
{cmd:lalign(}{it:linealignmentstyle}{cmd:)}
    指定用于描边条形的线是内部、外部还是居中。
    请参见 {manhelpi linealignmentstyle G-4} 以获取对齐选择列表。

{phang}
{cmd:lstyle(}{it:linestyle}{cmd:)}
    指定用于描边条形的线的整体样式，包括其图案（实线、虚线等）、厚度、颜色和对齐方式。
    上述四个选项允许您更改线的属性，但 {cmd:lstyle()} 是起点。
    请参见 {manhelpi linestyle G-4} 以获取选择列表。

{marker bstyle()}{...}
{phang}
{cmd:bstyle(}{it:areastyle}{cmd:)}
    指定条形的外观。上述选项允许您更改每个属性，但 {cmd:bstyle()} 提供了起点。

{pmore}
    您无需在想要更改某些内容时指定 {cmd:bstyle()}。当另一个样式正好是您期望的样式或另一个样式允许您指定更少的更改以获得所需效果时，您可以指定 {cmd:bstyle()}。

{pmore}
    请参见 {manhelpi areastyle G-4} 以获取可用区域样式列表。

{phang}
{cmd:pstyle(}{it:pstyle}{cmd:)}
    指定绘图的整体样式，不仅包括 {it:{help areastyle_zh}}，还包括绘图外观的所有其他设置。
    只有 {it:areastyle} 会影响区域的外观。请参见 {manhelpi pstyle G-4} 以获取可用绘图样式列表。


{marker remarks}{...}
{title:备注}

{pstd}
{it:barlook_options} 可以在 {cmd:graph} {cmd:bar} 和 {cmd:graph} {cmd:hbar} 的选项 {cmd:bar(}{it:#} {it:barlook_options}{cmd:)} 中使用，如下所示：

{phang2}
	{cmd:. graph bar} {it:yvar1} {it:yvar2}{cmd:, bar(1,color(green)) bar(2,color(red))}

{pstd}
上述命令将 {it:yvar1} 关联的条形设置为绿色，将 {it:yvar2} 关联的条形设置为红色；请参见 {manhelp graph_bar G-2:graph bar}。

{pstd}
{it:barlook_options} 也可以作为选项与 {cmd:graph} {cmd:twoway} {cmd:bar} 和 {cmd:graph} {cmd:twoway} {cmd:rbar} 一起使用，如下所示：

{phang2}
	{cmd:. graph twoway bar} {it:yvar} {it:xvar}{cmd:, color(green)}

{pstd}
上述命令将所有位于 {it:xvar} 并延伸到 {it:yvar} 的条形设置为绿色；请参见 {manhelp twoway_bar G-2:graph twoway bar} 和 
{manhelp twoway_rbar G-2:graph twoway rbar}。

{pstd}
{cmd:lcolor()}、{cmd:lwidth()}、{cmd:lpattern()}、{cmd:lalign()} 和
{cmd:lstyle()} 选项也用于指定所有 {cmd:graph} {cmd:twoway} 的绘制线条和尖峰的外观 
{help graph twoway##rangeplots:范围图}， 
{help graph twoway##pcplots:配对坐标图}，以及 
{help graph twoway##barplots:区域图}，
{help graph twoway##barplots:条形图}，
{help graph twoway##barplots:尖峰图}，以及 
{help graph twoway##barplots:下跌线图}。
例如，

{phang2}
	{cmd:. graph twoway rspike} {it:y1var} {it:y2var} 
				    {it:xvar}{cmd:, lcolor(red)}

{pstd}
将 {it:y1var} 和 {it:y2var} 之间的水平尖峰的颜色设置为红色。
{p_end}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <barlook_options.sthlp>}