{smcl}
{* *! version 1.0.1  04jun2018}{...}
{vieweralsosee "[G-3] gif_options" "mansection G-3 gif_options"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[G-2] graph export" "help graph_export_zh"}{...}
{vieweralsosee "[G-2] graph set" "help graph_set_zh"}{...}
{viewerjumpto "Syntax" "gif_options_zh##syntax"}{...}
{viewerjumpto "Description" "gif_options_zh##description"}{...}
{viewerjumpto "Links to PDF documentation" "gif_options_zh##linkspdf"}{...}
{viewerjumpto "Options" "gif_options_zh##options"}{...}
{viewerjumpto "Remarks" "gif_options_zh##remarks"}
{help gif_options:English Version}
{hline}{...}
{p2colset 1 22 24 2}{...}
{p2col:{bf:[G-3]} {it:gif_options} {hline 2}}导出到图形交换格式（GIF）的选项{p_end}
{p2col:}({mansection G-3 gif_options:查看完整的 PDF 手册条目}){p_end}
{p2colreset}{...}


{marker syntax}{...}
{title:语法}

{synoptset 20}{...}
{p2col:{it:gif_options}}描述{p_end}
{p2line}
{p2col:{cmdab:wid:th:(}{it:#}{cmd:)}}图形的宽度（以像素为单位）{p_end}
{p2col:{cmdab:hei:ght:(}{it:#}{cmd:)}}图形的高度（以像素为单位）{p_end}
{p2line}
{p2colreset}{...}


{marker description}{...}
{title:描述}

{pstd}
{it:gif_options} 用于在创建 GIF 图形时与 {cmd:graph} {cmd:export} 一起使用；请参见 {manhelp graph_export G-2:图形导出}。 GIF 支持仅在 Stata for Mac 中可用。


{marker linkspdf}{...}
{title:PDF 文档链接}

        {mansection G-3 gif_optionsRemarksandexamples:备注和示例}

{pstd}
上述部分不包括在此帮助文件中。


{marker options}{...}
{title:选项}

{phang}
{cmd:width(}{it:#}{cmd:)}
    指定图形的宽度（以像素为单位）。 {cmd:width()} 必须包含一个介于 8 和 16,000 之间的整数。

{phang}
{cmd:height(}{it:#}{cmd:)}
    指定图形的高度（以像素为单位）。 {cmd:height()} 必须包含一个介于 8 和 16,000 之间的整数。


{marker remarks}{...}
{title:备注}

{pstd}
备注如下所示：

	{help gif_options##remarks1:使用 gif_options}
	{help gif_options##remarks2:指定宽度或高度}


{marker remarks1}{...}
{title:使用 gif_options}

{pstd}
您绘制了一张图形，并希望创建一个 GIF 文件以包含在网页中。然而，您希望将图形的宽度设置为 800 像素，高度设置为 600 像素：

	{cmd:. graph} ...{col 50}(绘制图形)

{phang2}
	{cmd:. graph export myfile.gif, width(800) height(600)}


{marker remarks2}{...}
{title:指定宽度或高度}

{pstd}
如果指定了宽度但未指定高度，Stata 会根据图形的长宽比确定合适的高度。如果指定了高度但未指定宽度，Stata 会根据图形的长宽比确定合适的宽度。如果既未指定宽度也未指定高度，Stata 将根据当前的图形窗口大小导出图形。
{p_end}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <gif_options.sthlp>}