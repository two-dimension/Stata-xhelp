{smcl}
{* *! version 1.1.8  15may2018}{...}
{vieweralsosee "[G-3] line_options" "mansection G-3 line_options"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[G-4] Concept: lines" "help lines_zh"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[G-2] graph dot" "help graph_dot_zh"}{...}
{viewerjumpto "Syntax" "line_options_zh##syntax"}{...}
{viewerjumpto "Description" "line_options_zh##description"}{...}
{viewerjumpto "Links to PDF documentation" "line_options_zh##linkspdf"}{...}
{viewerjumpto "Options" "line_options_zh##options"}{...}
{viewerjumpto "Remarks" "line_options_zh##remarks"}
{help line_options:English Version}
{hline}{...}
{p2colset 1 23 25 2}{...}
{p2col:{bf:[G-3]} {it:line_options} {hline 2}}确定线条外观的选项{p_end}
{p2col:}({mansection G-3 line_options:查看完整的 PDF 手册条目}){p_end}
{p2colreset}{...}

{marker syntax}{...}
{title:语法}

{synoptset 30}{...}
{p2col:{it:line_options}}描述{p_end}
{p2line}
{p2col:{cmdab:lp:attern:(}{it:{help linepatternstyle_zh}}{cmd:)}}线条的样式（实线、虚线等）{p_end}
{p2col:{cmdab:lw:idth:(}{it:{help linewidthstyle_zh}}{cmd:)}}线条的厚度{p_end}
{p2col:{cmdab:lc:olor:(}{it:{help colorstyle_zh}}{cmd:)}}线条的颜色和透明度{p_end}
{p2col : {cmdab:la:lign:(}{it:{help linealignmentstyle_zh}}{cmd:)}}线条的对齐（内侧、外侧、中心）{p_end}

{p2col:{cmdab:lsty:le:(}{it:{help linestyle_zh}}{cmd:)}}线条的整体样式{p_end}
{p2col:{cmdab:psty:le:(}{it:{help pstyle_zh}}{cmd:)}}图的整体样式，包括线条样式{p_end}
{p2line}
{p2colreset}{...}
{p 4 6 2}
所有选项均为{it:右侧}; 请参见{help repeated options}。

{marker description}{...}
{title:描述}

{pstd}
{it:line_options}确定线条在大多数情况下的外观。

{marker linkspdf}{...}
{title:PDF 文档链接}

        {mansection G-3 line_optionsRemarksandexamples:备注与示例}

{pstd}
上述部分未包含在此帮助文件中。

{marker options}{...}
{title:选项}

{phang}
{cmd:lpattern(}{it:linepatternstyle}{cmd:)}
    指定线条是实线、虚线等。
    请参见{manhelpi linepatternstyle G-4}以获取可用样式列表。
    {cmd:lpattern()} 不允许与 {cmd:graph} {cmd:pie} 一起使用；
    见{manhelp graph_pie G-2:图饼}。

{phang}
{cmd:lwidth(}{it:linewidthstyle}{cmd:)}
    指定线条的厚度。
    请参见{manhelpi linewidthstyle G-4}以获取可用厚度列表。

{phang}
{cmd:lcolor(}{it:colorstyle}{cmd:)}
    指定线条的颜色和透明度。
    请参见{manhelpi colorstyle G-4}以获取可用颜色列表。

{phang}
{cmd:lalign(}{it:linealignmentstyle}{cmd:)}
    指定线条绘制在内侧、外侧或标记、填充区、条形和框的轮廓中心。
    请参见{manhelpi linealignmentstyle G-4}以获取对齐选项列表。

{phang}
{cmd:lstyle(}{it:linestyle}{cmd:)}
    指定线条的整体样式：其样式、厚度、颜色和对齐。

{pmore}
    你不必指定 {cmd:lstyle()} 只是因为你想更改线条的外观。
    其他 {it:line_options} 将允许你进行更改。
    你在有另一种样式正好满足你期望时或当另一种样式能够让你指定更少的更改时才指定 {cmd:lstyle()}。

{pmore}
    请参见{manhelpi linestyle G-4}以获取可用线条样式列表。

{phang}
{cmd:pstyle(}{it:pstyle}{cmd:)}
    指定图的整体样式，不仅包括 {it:{help linestyle_zh}}，还包括所有其他的图外观设置。
    仅 {it:linestyle} 会影响线条的外观。请参见
    {manhelpi pstyle G-4}以获取可用图样式列表。

{marker remarks}{...}
{title:备注}

{pstd}
线条出现在许多场合，在某些情况下，使用上述选项来确定线条的外观。例如，下面的 {cmd:lcolor()} 选项

{phang2}
	{cmd:. graph line y x, lcolor(red)}

{pstd}
使得通过（{cmd:y},{cmd:x}）点的线条绘制为红色。

{pstd}
在以下情况中使用相同选项

	{cmd:. graph line y x, title("My line", box lcolor(red))}

{pstd}
使得绘制在标题框周围的轮廓为红色。
在第二个命令中，选项 {cmd:lcolor(red)} 是 {cmd:title()} 选项的一个子选项。
{p_end}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <line_options.sthlp>}