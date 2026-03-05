{smcl}
{* *! version 1.1.8  19oct2017}{...}
{viewerdialog twoway "dialog twoway"}{...}
{vieweralsosee "[G-2] graph twoway rline" "mansection G-2 graphtwowayrline"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[G-2] graph twoway rarea" "help twoway_rarea_zh"}{...}
{vieweralsosee "[G-2] graph twoway rbar" "help twoway_rbar_zh"}{...}
{vieweralsosee "[G-2] graph twoway rcap" "help twoway_rcap_zh"}{...}
{vieweralsosee "[G-2] graph twoway rcapsym" "help twoway_rcapsym_zh"}{...}
{vieweralsosee "[G-2] graph twoway rconnected" "help twoway_rconnected_zh"}{...}
{vieweralsosee "[G-2] graph twoway rscatter" "help twoway_rscatter_zh"}{...}
{vieweralsosee "[G-2] graph twoway rspike" "help twoway_rspike_zh"}{...}
{viewerjumpto "Syntax" "twoway_rline_zh##syntax"}{...}
{viewerjumpto "Menu" "twoway_rline_zh##menu"}{...}
{viewerjumpto "Description" "twoway_rline_zh##description"}{...}
{viewerjumpto "Links to PDF documentation" "twoway_rline_zh##linkspdf"}{...}
{viewerjumpto "Options" "twoway_rline_zh##options"}{...}
{viewerjumpto "Remarks" "twoway_rline_zh##remarks"}
{help twoway_rline:English Version}
{hline}{...}
{p2colset 1 29 31 2}{...}
{p2col:{bf:[G-2] graph twoway rline} {hline 2}}带线的范围图{p_end}
{p2col:}({mansection G-2 graphtwowayrline:查看完整PDF手册条目}){p_end}
{p2colreset}{...}


{marker syntax}{...}
{title:语法}

{p 8 60 2}
{cmdab:tw:oway}
{cmdab:rl:ine}
{it:y1var} {it:y2var} {it:xvar}
{ifin}
[{cmd:,}
{it:options}]

{synoptset 22}{...}
{p2col: {it:options}}描述{p_end}
{p2line}
{p2col: {cmdab:vert:ical}}垂直绘图；默认为此{p_end}
{p2col: {cmdab:hor:izontal}}水平绘图{p_end}

{p2col:{it:{help connect_options_zh}}}更改连接点的线条表现{p_end}

INCLUDE help gr_axlnk

INCLUDE help gr_twopt
{p2line}
{p2colreset}{...}
{p 4 6 2}
所有显式选项均为 {it:最右边}，除非 {cmd:vertical} 和 {cmd:horizontal}，这两个为 {it:唯一}；请参见 {help repeated options}。


{marker menu}{...}
{title:菜单}

{phang}
{bf:图形 > 双变量图（散点图、线图等）}


{marker description}{...}
{title:描述}

{pstd}
范围图有两个 {it:y} 变量，例如每日的高低股价或 95% 置信区间的上下限。

{pstd}
{cmd:twoway} {cmd:rline} 通过使用线条绘制上下范围。


{marker linkspdf}{...}
{title:PDF文档链接}

        {mansection G-2 graphtwowayrlineQuickstart:快速开始}

        {mansection G-2 graphtwowayrlineRemarksandexamples:备注和示例}

{pstd}
上述部分不包含在此帮助文件中。


{marker options}{...}
{title:选项}

{phang}
{cmd:vertical}
和
{cmd:horizontal}
    指定高低 {it:y} 值是垂直（默认）还是水平展示。

{pmore}
    在默认的 {cmd:vertical} 情况下，{it:y1var} 和 {it:y2var} 记录最小值和最大值（或最大值和最小值）的 {it:y} 值，以便与每个 {it:xvar} 值进行绘图。

{pmore}
    如果指定 {cmd:horizontal}，则在 {it:y1var} 和 {it:y2var} 中记录的值将沿 {it:x} 方向绘制，而 {it:xvar} 被视为 {it:y} 值。

{phang}
{it:connect_options}
    更改连接点的线条表现，包括排序、处理缺失观测值以及线条的外观 -- 线条粗细、样式和颜色。有关详细信息，请参见 
    {manhelpi connect_options G-3}。

INCLUDE help gr_axlnkf

INCLUDE help gr_twoptf


{marker remarks}{...}
{title:备注}

{pstd}
在视觉上，以下两种方式没有区别：

{phang2}
	{cmd:. twoway rline} {it:y1var} {it:y2var} {it:xvar}

{pstd}
和

{phang2}
	{cmd:. twoway line} {it:y1var} {it:xvar} {cmd:||}
		{cmd:line} {it:y2var} {it:xvar}{cmd:, pstyle(p1)}

{pstd}
这两条线在整体风格上是相同的，即颜色、粗细和样式。
{p_end}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <twoway_rline.sthlp>}