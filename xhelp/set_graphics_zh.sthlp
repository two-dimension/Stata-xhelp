{smcl}
{* *! version 1.1.6  19oct2017}{...}
{vieweralsosee "[G-2] set graphics" "mansection G-2 setgraphics"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[G-3] nodraw_option" "help nodraw_option_zh"}{...}
{viewerjumpto "Syntax" "set_graphics_zh##syntax"}{...}
{viewerjumpto "Description" "set_graphics_zh##description"}{...}
{viewerjumpto "Links to PDF documentation" "set_graphics_zh##linkspdf"}{...}
{viewerjumpto "Remarks" "set_graphics_zh##remarks"}
{help set_graphics:English Version}
{hline}{...}
{p2colset 1 23 25 2}{...}
{p2col:{bf:[G-2] set graphics} {hline 2}}设置图形是否显示{p_end}
{p2col:}({mansection G-2 setgraphics:查看完整的 PDF 手册条目}){p_end}
{p2colreset}{...}


{marker syntax}{...}
{title:语法}

{p 8 16 2}
{cmdab:q:uery}
{cmdab:graph:ics}

{p 8 16 2}
{cmd:set}
{cmdab:g:raphics}
{c -(}{cmd:on} | {cmd:off}{c )-}


{marker description}{...}
{title:描述}

{pstd}
{cmd:query} {cmd:graphics} 显示图形设置。

{pstd}
{cmd:set} {cmd:graphics} 允许您更改图形是否显示。


{marker linkspdf}{...}
{title:PDF 文档链接}

        {mansection G-2 setgraphicsQuickstart:快速入门}

        {mansection G-2 setgraphicsRemarksandexamples:备注和示例}

{pstd}
上述部分未包含在此帮助文件中。


{marker remarks}{...}
{title:备注}

{pstd}
如果您输入

	{cmd:. set graphics off}

{pstd}
当您输入一个 {cmd:graph} 命令，比如

	{cmd:. scatter yvar xvar, saving(mygraph)}

{pstd}
该图形将被“绘制”并保存在文件 {cmd:mygraph.gph} 中，但不会显示。 如果您输入

	{cmd:. set graphics on}

{pstd}
图形将再次显示。

{pstd}
在编程上下文中，有时在不显示图形的情况下绘制图形是有用的，尽管在这种情况下，最好指定 {cmd:nodraw} 选项；请参见 {manhelpi nodraw_option G-3}。 输入

	{cmd:. scatter yvar xvar, saving(mygraph) nodraw}

{pstd}
与输入

	{cmd:. set graphics off}
	{cmd:. scatter yvar xvar, saving(mygraph)}
	{cmd:. set graphics on}

{pstd}
的效果相同。

{pstd}
前者的优点不仅在于输入更少，而且如果用户按下 {hi:Break}，{cmd:set} {cmd:graphics} 将不会被设置为 {cmd:off}。
{p_end}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <set_graphics.sthlp>}