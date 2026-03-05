{smcl}
{* *! version 1.1.8  19oct2017}{...}
{viewerdialog twoway "dialog twoway"}{...}
{vieweralsosee "[G-2] graph twoway rscatter" "mansection G-2 graphtwowayrscatter"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[G-2] graph twoway rarea" "help twoway_rarea_zh"}{...}
{vieweralsosee "[G-2] graph twoway rbar" "help twoway_rbar_zh"}{...}
{vieweralsosee "[G-2] graph twoway rcap" "help twoway_rcap_zh"}{...}
{vieweralsosee "[G-2] graph twoway rcapsym" "help twoway_rcapsym_zh"}{...}
{vieweralsosee "[G-2] graph twoway rconnected" "help twoway_rconnected_zh"}{...}
{vieweralsosee "[G-2] graph twoway rline" "help twoway_rline_zh"}{...}
{vieweralsosee "[G-2] graph twoway rspike" "help twoway_rspike_zh"}{...}
{viewerjumpto "Syntax" "twoway_rscatter_zh##syntax"}{...}
{viewerjumpto "Menu" "twoway_rscatter_zh##menu"}{...}
{viewerjumpto "Description" "twoway_rscatter_zh##description"}{...}
{viewerjumpto "Links to PDF documentation" "twoway_rscatter_zh##linkspdf"}{...}
{viewerjumpto "Options" "twoway_rscatter_zh##options"}{...}
{viewerjumpto "Remarks" "twoway_rscatter_zh##remarks"}
{help twoway_rscatter:English Version}
{hline}{...}
{p2colset 1 32 34 2}{...}
{p2col:{bf:[G-2] graph twoway rscatter} {hline 2}}带标记的范围图{p_end}
{p2col:}({mansection G-2 graphtwowayrscatter:查看完整PDF手册条目}){p_end}
{p2colreset}{...}


{marker syntax}{...}
{title:语法}

{p 8 24 2}
{cmdab:tw:oway}
{cmdab:rsc:atter}
{it:y1var} {it:y2var} {it:xvar}
{ifin}
[{cmd:,}
{it:选项}]

{synoptset 22}{...}
{p2col: {it:选项}}描述{p_end}
{p2line}
{p2col: {cmdab:垂:直}}垂直图；默认值{p_end}
{p2col: {cmdab:横:向}}横向图{p_end}

包含 help gr_markopt

包含 help gr_axlnk

包含 help gr_twopt
{p2line}
{p2colreset}{...}
{p 4 6 2}
所有显式选项都是 {it:靠右}; 请参见 {help repeated options}.


{marker menu}{...}
{title:菜单}

{phang}
{bf:图形 > 双变量图（散点图、线图等）}


{marker description}{...}
{title:描述}

{pstd}
范围图有两个 {it:y} 变量，例如每日的高价和低价
或上下 95% 置信限。

{pstd}
{cmd:twoway} {cmd:rscatter} 将上下范围绘制为散点图。


{marker linkspdf}{...}
{title:PDF文档链接}

        {mansection G-2 graphtwowayrscatter快速入门:快速入门}

        {mansection G-2 graphtwowayrscatter备注和示例:备注和示例}

{pstd}
上述部分未包含在此帮助文件中。


{marker options}{...}
{title:选项}

{phang}
{cmd:垂直}
和
{cmd:横向}
    指定高和低 {it:y} 值是否以
    垂直（默认）或横向方式呈现。

{pmore}
    在默认的 {cmd:垂直} 情况下，{it:y1var} 和 {it:y2var} 记录每个 {it:xvar} 值要绘制的最小值和最大值（或最大值和最小值） {it:y} 值。

{pmore}
    如果指定了 {cmd:横向}，则记录在 {it:y1var} 和 {it:y2var} 中的值将在 {it:x} 方向上绘制，而 {it:xvar} 被视为 {it:y} 值。

{phang}
{it:marker_options}
    指定标记的外观，包括
    形状、大小、颜色和轮廓；
    参见 {manhelpi marker_options G-3}。两个点使用相同的标记。

{phang}
{it:marker_label_options}
    指定标记是否以及如何标记。由于
    相同的标记标签将用于标记两个点，
    在这种情况下这些选项的用途有限。
    参见 {manhelpi marker_label_options G-3}。

包含 help gr_axlnkf

包含 help gr_twoptf


{marker remarks}{...}
{title:备注}

{pstd}
在视觉上，以下两者没有区别：

	{cmd:. twoway rscatter} {it:y1var} {it:y2var} {it:xvar}

{pstd}
和

	{cmd:. twoway scatter} {it:y1var} {it:xvar} {cmd:||} {...}
{cmd:scatter} {it:y2var} {it:xvar}{cmd:, pstyle(p1)}

{pstd}
这两个散点图以相同的整体样式呈现，
意味着标记（符号形状和颜色）
是相同的。
{p_end}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <twoway_rscatter.sthlp>}