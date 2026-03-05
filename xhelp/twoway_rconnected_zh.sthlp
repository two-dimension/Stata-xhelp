{smcl}
{* *! version 1.1.8  19oct2017}{...}
{viewerdialog twoway "dialog twoway"}{...}
{vieweralsosee "[G-2] graph twoway rconnected" "mansection G-2 graphtwowayrconnected"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[G-2] graph twoway rarea" "help twoway_rarea_zh"}{...}
{vieweralsosee "[G-2] graph twoway rbar" "help twoway_rbar_zh"}{...}
{vieweralsosee "[G-2] graph twoway rcap" "help twoway_rcap_zh"}{...}
{vieweralsosee "[G-2] graph twoway rcapsym" "help twoway_rcapsym_zh"}{...}
{vieweralsosee "[G-2] graph twoway rline" "help twoway_rline_zh"}{...}
{vieweralsosee "[G-2] graph twoway rscatter" "help twoway_rscatter_zh"}{...}
{vieweralsosee "[G-2] graph twoway rspike" "help twoway_rspike_zh"}{...}
{viewerjumpto "Syntax" "twoway_rconnected_zh##syntax"}{...}
{viewerjumpto "Menu" "twoway_rconnected_zh##menu"}{...}
{viewerjumpto "Description" "twoway_rconnected_zh##description"}{...}
{viewerjumpto "Links to PDF documentation" "twoway_rconnected_zh##linkspdf"}{...}
{viewerjumpto "Options" "twoway_rconnected_zh##options"}{...}
{viewerjumpto "Remarks" "twoway_rconnected_zh##remarks"}
{help twoway_rconnected:English Version}
{hline}{...}
{p2colset 1 34 6 2}{...}
{p2col:{bf:[G-2] graph twoway rconnected} {hline 2}}连接线范围图{p_end}
{p2col:}({mansection G-2 graphtwowayrconnected:查看完整的PDF手册条目}){p_end}
{p2colreset}{...}


{marker syntax}{...}
{title:语法}

{p 8 26 2}
{cmdab:tw:oway}
{cmdab:rcon:nected}
{it:y1var} {it:y2var} {it:xvar}
{ifin}
[{cmd:,}
{it:选项}]

{synoptset 22}{...}
{p2col: {it:选项}}描述{p_end}
{p2line}
{p2col: {cmdab:垂:直}}垂直图；默认选项{p_end}
{p2col: {cmdab:水平}}水平图{p_end}

{p2col:{it:{help connect_options_zh}}}更改连接点的线条表现{p_end}
包含 help gr_markopt

包含 help gr_axlnk

包含 help gr_twopt
{p2line}
{p2colreset}{...}
{p 4 6 2}
所有显式选项都是 {it:最右边}，除了 {cmd:vertical}
和 {cmd:horizontal}，这两个选项是 {it:唯一的}；请参见 {help repeated options}.


{marker menu}{...}
{title:菜单}

{phang}
{bf:图形 > 二维图（散点图、线图等）}


{marker description}{...}
{title:描述}

{pstd}
范围图有两个 {it:y} 变量，例如每日的高低股价
或上限和下限的95%置信区间。

{pstd}
{cmd:twoway} {cmd:rconnected} 通过使用
连接线绘制上限和下限范围。


{marker linkspdf}{...}
{title:PDF文档链接}

        {mansection G-2 graphtwowayrconnectedQuickstart:快速开始}

        {mansection G-2 graphtwowayrconnectedRemarksandexamples:备注与示例}

{pstd}
以上部分不包含在此帮助文件中。


{marker options}{...}
{title:选项}

{phang}
{cmd:vertical}
和
{cmd:horizontal}
    指定高低 {it:y} 值的展示方式
    是垂直（默认）还是水平。

{p 8 8 2}
    在默认的 {cmd:vertical} 情况下，{it:y1var} 和 {it:y2var} 记录
    要绘制的最小和最大（或最大和最小） {it:y} 值，以与每个 {it:xvar} 值进行图示。

{p 8 8 2}
    如果指定了 {cmd:horizontal}，则 {it:y1var} 和 {it:y2var} 中记录的值将在 {it:x} 方向上绘制，且 {it:xvar} 被视为 {it:y} 值。

{phang}
{it:connect_options}
    更改连接绘制点的线条表现，包括
    排序、处理缺失观测值以及线条样式——
    线条的厚度、样式和颜色。详细信息请参见 
    {manhelpi connect_options G-3}。

{phang}
{it:marker_options}
    指定标记的外观，包括
    形状、大小、颜色和轮廓；请参见 {manhelpi marker_options G-3}。同一标记用于两条线。

{phang}
{it:marker_label_options}
    指定标记是否及如何标记。由于
    相同的标记标签将用于两条线的标记，
    这些选项在此处的用途有限。
    请参见 {manhelpi marker_label_options G-3}。

包含 help gr_axlnkf

包含 help gr_twoptf


{marker remarks}{...}
{title:备注}

{pstd}
在视觉上，以下两者没有区别：

{phang2}
	{cmd:. twoway rconnected} {it:y1var} {it:y2var} {it:xvar}

{pstd}
和 

{phang2}
	{cmd:. twoway connected} {it:y1var} {it:xvar} {cmd:||}
		{cmd:connected} {it:y2var} {it:xvar}{cmd:, pstyle(p1)}

{pstd}
这两条连接线以相同的整体样式呈现，
即符号选择及颜色和线条
颜色、厚度和样式。
{p_end}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <twoway_rconnected.sthlp>}