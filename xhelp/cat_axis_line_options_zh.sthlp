{smcl}
{* *! version 1.1.9  16apr2019}{...}
{vieweralsosee "[G-3] cat_axis_line_options" "mansection G-3 cat_axis_line_options"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[G-2] graph bar" "help graph_bar_zh"}{...}
{vieweralsosee "[G-2] graph box" "help graph_box_zh"}{...}
{vieweralsosee "[G-2] graph dot" "help graph_dot_zh"}{...}
{viewerjumpto "Syntax" "cat_axis_line_options_zh##syntax"}{...}
{viewerjumpto "Description" "cat_axis_line_options_zh##description"}{...}
{viewerjumpto "Links to PDF documentation" "cat_axis_line_options_zh##linkspdf"}{...}
{viewerjumpto "Options" "cat_axis_line_options_zh##options"}{...}
{viewerjumpto "Remarks" "cat_axis_line_options_zh##remarks"}
{help cat_axis_line_options:English Version}
{hline}{...}
{p2colset 1 32 34 2}{...}
{p2col:{bf:[G-3]} {it:cat_axis_line_options} {hline 2}}设置分类轴线外观的选项{p_end}
{p2col:}({mansection G-3 cat_axis_line_options:查看完整PDF手册条目}){p_end}
{p2colreset}{...}


{marker syntax}{...}
{title:语法}

{synoptset 30}{...}
{p2col:{it:cat_axis_line_options}}描述{p_end}
{p2line}
{p2col:{cmd:off} 和 {cmd:on}}抑制/强制显示轴{p_end}
{p2col:{cmd:fill}}即使{cmd:off}也为轴分配空间{p_end}
{p2col:{cmdab:fex:tend}}通过绘图区域和绘图区域的边距延伸轴线{p_end}
{p2col:{cmdab:ex:tend}}通过绘图区域延伸轴线{p_end}
{p2col:{cmdab:noex:tend}}完全不延伸轴线{p_end}
{p2col:{cmdab:noli:ne}}甚至不绘制轴线{p_end}
{p2col:{cmdab:li:ne}}强制绘制轴线{p_end}

{p2col:{cmdab:titleg:ap:(}{it:{help size_zh}}{cmd:)}}轴标题与刻度标签之间的边距{p_end}
{p2col:{cmdab:outerg:ap:(}{it:{help size_zh}}{cmd:)}}轴标题外部的边距{p_end}

{p2col:{cmdab:lsty:le:(}{it:{help linestyle_zh}}{cmd:)}}轴线的整体样式{p_end}
{p2col:{cmdab:lc:olor:(}{it:{help colorstyle_zh}}{cmd:)}}轴线的颜色和不透明度{p_end}
{p2col:{cmdab:lw:idth:(}{it:{help linewidthstyle_zh}}{cmd:)}}轴线的粗细{p_end}
{p2col:{cmdab:lp:attern:(}{it:{help linepatternstyle_zh}}{cmd:)}}轴线是实线、虚线等{p_end}
{p2line}
{p2colreset}{...}


{marker description}{...}
{title:描述}

{pstd}
{it:cat_axis_line_options} 决定 {cmd:graph} {cmd:bar}、{cmd:graph} {cmd:hbar}、{cmd:graph} {cmd:dot} 和 {cmd:graph} {cmd:box} 中分类 {it:x} 轴的外观。 这些选项很少被指定，但如果指定，通常是在 {cmd:axis()} 的 {cmd:over()} 中：

{phang2}
	{cmd:. graph} ...{cmd:, over(}{it:varname}{cmd:,} ... {cmd:axis(}{it:cat_axis_line_options}{cmd:)} ...{cmd:)}


{marker linkspdf}{...}
{title:PDF文档链接}

        {mansection G-3 cat_axis_line_optionsQuickstart:快速开始}

        {mansection G-3 cat_axis_line_optionsRemarksandexamples:备注和示例}

{pstd}
以上部分不包含在此帮助文件中。


{marker options}{...}
{title:选项}

{phang}
{cmd:off} 和 {cmd:on}
    抑制或强制显示轴。

{phang}
{cmd:fill}与{cmd:off}一起使用，且很少指定。 
    如果您关闭了轴但仍希望为轴分配空间，可以指定{cmd:fill}。

{phang}
{cmd:fextend}、{cmd:extend}、{cmd:noextend}、{cmd:line} 和 {cmd:noline}
    决定表示轴的线绘制的程度。它们是替代选项。

{pmore}
    {cmd:noline}指定线完全不绘制。轴会存在，刻度和标签会出现，但轴线本身不会绘制。

{pmore}
    {cmd:line}是{cmd:noline}的对立面，用于在轴线意外关闭时使用。

{pmore}
    {cmd:noextend}指定轴线不延伸超出由第一和最后类别定义的轴范围。

{pmore}
    {cmd:extend}指定线长于那个范围，并且延伸到整个绘图区域。

{pmore}
    {cmd:fextend}指定线长于那个范围，并且延伸到绘图区域和绘图区域的边距。有关绘图区域边距的定义，请参见 
    {manhelpi region_options G-3}。如果绘图区域没有边距（这种情况很少见），那么{cmd:fextend}相当于{cmd:extend}。如果绘图区域有边距，{cmd:extend}会导致 {it:y} 和 {it:x} 轴不相交。而使用{cmd:fextend}，它们会相接触。

{pmore}
    {cmd:fextend} 是大多数方案的默认值。

{phang}
{cmd:titlegap(}{it:size}{cmd:)}指定轴标题与轴刻度标签之间的间距；参见
     {manhelpi size G-4}。

{phang}
{cmd:outergap(}{it:size}{cmd:)}指定轴标题外部的间距；参见 {manhelpi size G-4}。

{phang}
{cmd:lstyle(}{it:linestyle}{cmd:)},
{cmd:lcolor(}{it:colorstyle}{cmd:)},
{cmd:lwidth(}{it:linewidthstyle}{cmd:)}, 和
{cmd:lpattern(}{it:linepatternstyle}{cmd:)}
决定轴线的整体外观；
参见 {help lines_zh}.


{marker remarks}{...}
{title:备注}

{pstd}
{it:cat_axis_line_options} 很少被指定。
{p_end}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <cat_axis_line_options.sthlp>}