{smcl}
{* *! version 1.1.9  19oct2017}{...}
{viewerdialog twoway "dialog twoway"}{...}
{vieweralsosee "[G-2] graph twoway rcapsym" "mansection G-2 graphtwowayrcapsym"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[G-2] graph twoway rarea" "help twoway_rarea_zh"}{...}
{vieweralsosee "[G-2] graph twoway rbar" "help twoway_rbar_zh"}{...}
{vieweralsosee "[G-2] graph twoway rcap" "help twoway_rcap_zh"}{...}
{vieweralsosee "[G-2] graph twoway rconnected" "help twoway_rconnected_zh"}{...}
{vieweralsosee "[G-2] graph twoway rline" "help twoway_rline_zh"}{...}
{vieweralsosee "[G-2] graph twoway rscatter" "help twoway_rscatter_zh"}{...}
{vieweralsosee "[G-2] graph twoway rspike" "help twoway_rspike_zh"}{...}
{viewerjumpto "Syntax" "twoway_rcapsym_zh##syntax"}{...}
{viewerjumpto "Menu" "twoway_rcapsym_zh##menu"}{...}
{viewerjumpto "Description" "twoway_rcapsym_zh##description"}{...}
{viewerjumpto "Links to PDF documentation" "twoway_rcapsym_zh##linkspdf"}{...}
{viewerjumpto "Options" "twoway_rcapsym_zh##options"}{...}
{viewerjumpto "Remarks" "twoway_rcapsym_zh##remarks"}
{help twoway_rcapsym:English Version}
{hline}{...}
{p2colset 1 31 33 2}{...}
{p2col:{bf:[G-2] graph twoway rcapsym} {hline 2}}用标记符号封顶的尖刺范围图{p_end}
{p2col:}({mansection G-2 graphtwowayrcapsym:查看完整PDF手册条目}){p_end}
{p2colreset}{...}


{marker syntax}{...}
{title:语法}

{p 8 60 2}
{cmdab:tw:oway}
{cmd:rcapsym}
{it:y1var} {it:y2var} {it:xvar}
{ifin}
[{cmd:,}
{it:选项}]

{synoptset 22}{...}
{p2col: {it:选项}}描述{p_end}
{p2line}
{p2col: {cmdab:vert:ical}}垂直尖刺；默认{p_end}
{p2col: {cmdab:hor:izontal}}水平尖刺{p_end}

INCLUDE help gr_blspike2
INCLUDE help gr_markopt

INCLUDE help gr_axlnk

INCLUDE help gr_twopt
{p2line}
{p2colreset}{...}
{p 4 6 2}
所有明示选项都为 {it:最右侧}，除 {cmd:vertical} 和 {cmd:horizontal} 外，这两个选项为 {it:唯一}; 请参见 {help repeated options}。


{marker menu}{...}
{title:菜单}

{phang}
{bf:图形 > 双变量图（散点图、线图等）}


{marker description}{...}
{title:描述}

{pstd}
范围图有两个 {it:y} 变量，例如高和低的每日股价或上限和下限的 95% 置信区间。

{pstd}
{cmd:twoway} {cmd:rcapsym} 使用尖刺和标记符号绘制范围图。


{marker linkspdf}{...}
{title:PDF文档链接}

        {mansection G-2 graphtwowayrcapsymQuickstart:快速开始}

        {mansection G-2 graphtwowayrcapsymRemarksandexamples:备注和示例}

{pstd}
上述部分未包含在此帮助文件中。


{marker options}{...}
{title:选项}

{phang}
{cmd:vertical}
和
{cmd:horizontal}
    指定高和低 {it:y} 值是以垂直（默认）还是水平方式呈现。

{pmore}
    在默认的 {cmd:vertical} 情况下，{it:y1var} 和 {it:y2var} 记录要绘制的最小值和最大值（或最大值和最小值）{it:y} 对应于每个 {it:xvar} 值。

{pmore}
    如果指定了 {cmd:horizontal}，则记录在 {it:y1var} 和 {it:y2var} 的值将以 {it:x} 方向绘制，并且 {it:xvar} 被视为 {it:y} 值。

INCLUDE help gr_blspikef2

{phang}
{it:marker_options}
    指定标记的外观，包括
    形状、大小、颜色和轮廓；
    参见 {manhelpi marker_options G-3}。同一种标记用于尖刺的两端。

{phang}
{it:marker_label_options}
    指定标记是否及如何标注。因为
    相同的标记标签将用于标注尖刺的两端，
    这些选项在这里的用途有限。
    参见 {manhelpi marker_label_options G-3}。

INCLUDE help gr_axlnkf

INCLUDE help gr_twoptf


{marker remarks}{...}
{title:备注}

{pstd}
我们有每日数据记录 2001 年 S&P 500 的值：

	{cmd:. sysuse sp500}

	{cmd:. list date high low close in 1/5}
	{txt}
	     {c TLC}{hline 11}{c -}{hline 9}{c -}{hline 9}{c -}{hline 9}{c TRC}
	     {c |} {res}     日期      高     低     收盘 {txt}{c |}
	     {c LT}{hline 11}{c -}{hline 9}{c -}{hline 9}{c -}{hline 9}{c RT}
	  1. {c |} {res}2001年1月2日   1320.28   1276.05   1283.27 {txt}{c |}
	  2. {c |} {res}2001年1月3日   1347.76   1274.62   1347.56 {txt}{c |}
	  3. {c |} {res}2001年1月4日   1350.24   1329.14   1333.34 {txt}{c |}
	  4. {c |} {res}2001年1月5日   1334.77   1294.95   1298.35 {txt}{c |}
	  5. {c |} {res}2001年1月8日   1298.35   1276.29   1295.86 {txt}{c |}
	     {c BLC}{hline 11}{c -}{hline 9}{hline 9}{hline 9}{c BRC}{txt}

{pstd}
我们将使用这些数据中的前 37 个观测值：

	{cmd:. twoway rcapsym high low date in 1/37}
	  {it:({stata "gr_example sp500: twoway rcapsym high low date in 1/37":click to run})} 
{* graph gtrcapsym1}{...}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <twoway_rcapsym.sthlp>}