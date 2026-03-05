{smcl}
{* *! version 1.1.12  15may2018}{...}
{vieweralsosee "[G-3] added_line_options" "mansection G-3 added_line_options"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[G-4] addedlinestyle" "help addedlinestyle_zh"}{...}
{vieweralsosee "[G-4] colorstyle" "help colorstyle_zh"}{...}
{vieweralsosee "[G-4] linealignmentstyle" "help linealignmentstyle_zh"}{...}
{vieweralsosee "[G-4] linepatternstyle" "help linepatternstyle_zh"}{...}
{vieweralsosee "[G-4] linestyle" "help linestyle_zh"}{...}
{vieweralsosee "[G-4] linewidthstyle" "help linewidthstyle_zh"}{...}
{viewerjumpto "Syntax" "added_line_options_zh##syntax"}{...}
{viewerjumpto "Description" "added_line_options_zh##description"}{...}
{viewerjumpto "Links to PDF documentation" "added_line_options_zh##linkspdf"}{...}
{viewerjumpto "Options" "added_line_options_zh##options"}{...}
{viewerjumpto "Suboptions" "added_line_options_zh##suboptions"}{...}
{viewerjumpto "Remarks" "added_line_options_zh##remarks"}
{help added_line_options:English Version}
{hline}{...}
{p2colset 1 29 31 2}{...}
{p2col:{bf:[G-3]} {it:added_line_options} {hline 2}}在双变量图中添加线条的选项{p_end}
{p2col:}({mansection G-3 added_line_options:查看完整的 PDF 手册条目}){p_end}
{p2colreset}{...}


{marker syntax}{...}
{title:语法}

{synoptset 25}{...}
{p2col : {it:added_line_options}}
	描述{p_end}
{p2line}
{p2col : {cmdab:yli:ne:(}{it:linearg}{cmd:)}}
	在指定的 {it:y} 值处添加水平线{p_end}
{p2col : {cmdab:xli:ne:(}{it:linearg}{cmd:)}}
	在指定的 {it:x} 值处添加垂直线{p_end}
{p2col : {cmdab:tli:ne:(}{it:time_linearg}{cmd:)}}
	在指定的 {it:t} 值处添加垂直线{p_end}
{p2line}
{p 4 6 2}
{cmd:yline()}, {cmd:xline()} 和 {cmd:tline()} 为 {it:合并隐式}；请参阅
{help repeated options} 和 
{help added_line_options##remarks2:重复选项的解释}
。 

{pstd}
其中 {it:linearg} 为

{p 8 16 2}
{it:numlist}
[{cmd:,}
{it:suboptions}]

{pstd}
有关 {it:numlist} 的描述，请参见 {help numlist_zh}。

{pstd}
而 {it:time_linearg} 为

{p 8 16 2}
{it:datelist}
[{cmd:,}
{it:suboptions}]

{pstd}
有关 {it:datelist} 的描述，请参见 {help datelist_zh}。

{p2col : {it:suboptions}}
	描述{p_end}
{p2line}
{p2col : {cmdab:ax:is:(}{it:#}{cmd:)}}
	使用哪个轴，1 {ul:<} # {ul:<} 9{p_end}
{p2col : {cmdab:sty:le:(}{it:{help addedlinestyle_zh}}{cmd:)}}
	添加线条的整体样式{p_end}
{p2col : [{cmdab:no:}]{cmdab:ex:tend}}
	通过绘图区域的边缘延伸线条{p_end}
{p2col : {cmdab:lsty:le:(}{it:{help linestyle_zh}}{cmd:)}}
	线条的整体样式{p_end}
{p2col : {cmdab:lp:attern:(}{it:{help linepatternstyle_zh}}{cmd:)}}
	线条图案（实线、虚线等）{p_end}
{p2col : {cmdab:lw:idth:(}{it:{help linewidthstyle_zh}}{cmd:)}}
	线条的粗细{p_end}
{p2col : {cmdab:la:lign:(}{it:{help linealignmentstyle_zh}}{cmd:)}}
	轮廓对齐（内侧、外侧、居中）{p_end}
{p2col : {cmdab:lc:olor:(}{it:{help colorstyle_zh}}{cmd:)}}
	线条的颜色和透明度{p_end}
{p2line}
{p2colreset}{...}


{marker description}{...}
{title:描述}

{pstd}
{cmd:yline()}, {cmd:xline()} 和 {cmd:tline()} 与 {cmd:twoway} 一起使用，以
向绘图区域添加线条。 {cmd:tline()} 是 {cmd:xline()} 的扩展；
请参阅 {manhelp tsline TS} 获取使用 {cmd:tline()} 的示例。


{marker linkspdf}{...}
{title:链接到PDF文档}

        {mansection G-3 added_line_optionsQuickstart:快速入门}

        {mansection G-3 added_line_optionsRemarksandexamples:备注和示例}

{pstd}
上述部分未包含在此帮助文件中。


{marker options}{...}
{title:选项}

{phang}
{opt yline(linearg)}, {opt xline(linearg)} 和 {opt tline(time_linearg)}
指定应在绘图中添加线条的 {it:y}、{it:x} 和 {it:t} （时间）值。


{marker suboptions}{...}
{title:子选项}

{phang}
{cmd:axis(}{it:#}{cmd:)}
	仅在使用多个 {it:y}、{it:x} 或 {it:t} 轴时使用（请参见 {manhelpi axis_choice_options G-3}）。 
	{cmd:axis()} 指定 {cmd:yline()}、{cmd:xline()} 或 {cmd:tline()} 应应用于哪个轴。

{phang}
{cmd:style(}{it:addedlinestyle}{cmd:)}
	指定添加线条的整体样式，包括
	[{cmd:no}]{cmd:extend} 和 {cmd:lstyle(}{it:linestyle}{cmd:)} 下文记录。 
	请参见 {manhelpi addedlinestyle G-4}。 
	[{cmd:no}]{cmd:extend} 和 {cmd:lstyle()} 选项允许您单独更改添加线条的属性，但 {cmd:style()} 是起始点。

{pmore}
	不必因为有想要更改的内容而指定 {cmd:style()}，实际上，大多数人很少指定
	{cmd:style()} 选项。 
	当有另一种样式恰好是您所需的，或者当另一种样式允许您为获得所需结果指定更少的变化时，您需要指定 {cmd:style()}。

{phang}
{cmd:extend} 和 {cmd:noextend}
	指定线条是否应延伸通过绘图区域的边缘並触及坐标轴；参见 {manhelpi region_options G-3}。
	通常 {cmd:noextend} 是默认值，而 {cmd:extend} 是选项，但这取决于整体 {cmd:style()} 和当然，方案；参见 {manhelp schemes_intro G-4:方案介绍}。

{phang}
{cmd:lstyle(}{it:{help linestyle_zh}}{cmd:)},
{cmd:lpattern(}{it:{help linepatternstyle_zh}}{cmd:)},
{cmd:lwidth(}{it:{help linewidthstyle_zh}}{cmd:)},
{cmd:lalign(}{it:{help linealignmentstyle_zh}}{cmd:)},
和
{cmd:lcolor(}{it:{help colorstyle_zh}}{cmd:)}
	指定线条的外观；请参见 {manhelp line G-2:graph twoway line}。
	{cmd:lstyle()} 特别有用：

{pmore}
要创建与用于绘制坐标轴的线条相同外观的线条，请指定 {cmd:lstyle(foreground)}。

{pmore}
要创建与用于绘制网格线的线条相同外观的线条，请指定 {cmd:lstyle(grid)}。


{marker remarks}{...}
{title:备注}

{pstd}
{cmd:yline()} 和 {cmd:xline()} 在指定的位置添加线条。 然而，如果您
感兴趣的是获取网格线，请参见 
{manhelpi axis_label_options G-3} 中的 {cmd:grid} 选项。

{pstd}
备注按以下标题呈现：

        {help added_line_options##remarks1:典型用法}
        {help added_line_options##remarks2:重复选项的解释}


{marker remarks1}{...}
{title:典型用法}

{pstd}
{cmd:yline()} 或 {cmd:xline()} 通常用于添加参考值：

	{cmd:. scatter yvar xvar, yline(10)}

	{cmd:. scatter yvar year, xline(1944 1989)}

{pstd}
为了使第一个示例中的线条与用于
绘制坐标轴的线条相同外观，我们可以指定

{phang2}
	{cmd:. scatter yvar xvar, yline(10, lstyle(foreground))}

{pstd}
如果我们希望第二个示例中的线条与用于绘制网格的线条相同外观，我们可以指定

{phang2}
	{cmd:. scatter yvar year, xline(1944 1989, lstyle(grid))}


{marker remarks2}{...}
{title:重复选项的解释}

{pstd}
选项 {cmd:yline()} 和 {cmd:xline()} 可以重复，每个选项单独执行。 因此，可以对
同一图中的不同线条使用不同样式：

{phang2}
	{cmd:. scatter yvar year, xline(1944) xline(1989, lwidth(3))}
{p_end}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <added_line_options.sthlp>}