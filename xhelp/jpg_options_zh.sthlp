{smcl}
{* *! version 1.0.1  04jun2018}{...}
{vieweralsosee "[G-3] jpg_options" "mansection G-3 jpg_options"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[G-2] graph export" "help graph_export_zh"}{...}
{vieweralsosee "[G-2] graph set" "help graph_set_zh"}{...}
{viewerjumpto "Syntax" "jpg_options_zh##syntax"}{...}
{viewerjumpto "Description" "jpg_options_zh##description"}{...}
{viewerjumpto "Links to PDF documentation" "jpg_options_zh##linkspdf"}{...}
{viewerjumpto "Options" "jpg_options_zh##options"}{...}
{viewerjumpto "Remarks" "jpg_options_zh##remarks"}
{help jpg_options:English Version}
{hline}{...}
{p2colset 1 22 24 2}{...}
{p2col:{bf:[G-3]} {it:jpg_options} {hline 2}}导出到联合图像专家组（JPEG）格式的选项{p_end}
{p2col:}({mansection G-3 jpg_options:查看完整的 PDF 手册条目}){p_end}
{p2colreset}{...}


{marker syntax}{...}
{title:语法}

{synoptset 20}{...}
{p2col:{it:jpg_options}}描述{p_end}
{p2line}
{p2col:{cmdab:wid:th:(}{it:#}{cmd:)}}图形的宽度（单位：像素）{p_end}
{p2col:{cmdab:hei:ght:(}{it:#}{cmd:)}}图形的高度（单位：像素）{p_end}
{p2col:{cmdab:q:uality:(}{it:#}{cmd:)}}JPEG质量设置；默认值为 {cmd:quality(90)}{p_end}
{p2line}
{p2colreset}{...}


{marker description}{...}
{title:描述}

{pstd}
{it:jpg_options} 选项与 {cmd:graph} {cmd:export} 一起用于创建 JPEG 图形；请参见 {manhelp graph_export G-2:graph export}。 JPEG 支持仅在 Mac 版 Stata 中可用。


{marker linkspdf}{...}
{title:PDF 文档链接}

        {mansection G-3 jpg_optionsRemarksandexamples:备注和示例}

{pstd}
以上部分不包含在此帮助文件中。


{marker options}{...}
{title:选项}

{phang}
{cmd:width(}{it:#}{cmd:)}
    指定图形的宽度（单位：像素）。 {cmd:width()} 必须包含一个在 8 到 16,000 之间的整数。

{phang}
{cmd:height(}{it:#}{cmd:)}
    指定图形的高度（单位：像素）。 {cmd:height()} 必须包含一个在 8 到 16,000 之间的整数。

{phang}
{cmd:quality(}{it:#}{cmd:)}
    指定 JPEG 质量设置。 {cmd:quality()} 必须包含一个在 0 到 100 之间的整数。 默认值为 {cmd:quality(90)}，表示高图像质量并有一定的压缩。 质量设置为 0 会导致低图像质量，使用最大可能的压缩，而质量设置为 100 则在不压缩的情况下得到最高的图像质量，但文件尺寸更大。


{marker remarks}{...}
{title:备注}

{pstd}
备注分为以下几个主题：

	{help jpg_options##remarks1:使用 jpg_options}
	{help jpg_options##remarks2:指定宽度或高度}
	{help jpg_options##remarks3:图像质量}


{marker remarks1}{...}
{title:使用 jpg_options}

{pstd}
您已经绘制了一张图表，并希望创建一个 JPEG 文件以便在网页中使用。 但是，您希望将图形的宽度设置为 800 像素，将高度设置为 600 像素，并通过将质量设置为 60 来减小文件大小：

	{cmd:. graph} ...{col 50}(绘制图形)

{phang2}
	{cmd:. graph export myfile.jpg, width(800) height(600) quality(60)}


{marker remarks2}{...}
{title:指定宽度或高度}

{pstd}
如果指定了宽度但未指定高度，Stata 将根据图形的宽高比确定适当的高度。 如果指定了高度但未指定宽度，Stata 将根据图形的宽高比确定适当的宽度。 如果既未指定宽度也未指定高度，Stata 将根据当前图形窗口的大小导出图形。
{p_end}


{marker remarks3}{...}
{title:图像质量}

{pstd}
JPEG 格式是一种位图格式，适合用于网页，在这种情况下图像质量可能没有文件大小的最小化那么重要。 您可以通过降低质量设置，直到在图像中引入可见的压缩伪影，来在图像质量和文件大小之间找到平衡。 如果您打算将图形用于任何形式的打印目的，应该使用最大质量设置或使用无损的位图格式，例如 TIFF。 为了获得最佳的打印质量，应避免使用位图格式，而使用可缩放的矢量格式，如 PDF、SVG 或 EPS。
{p_end}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <jpg_options.sthlp>}