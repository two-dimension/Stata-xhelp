{smcl}
{* *! version 1.1.10  19oct2017}{...}
{viewerdialog twoway "dialog twoway"}{...}
{vieweralsosee "[G-2] graph twoway rcap" "mansection G-2 graphtwowayrcap"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[G-2] graph twoway rarea" "help twoway_rarea_zh"}{...}
{vieweralsosee "[G-2] graph twoway rbar" "help twoway_rbar_zh"}{...}
{vieweralsosee "[G-2] graph twoway rcapsym" "help twoway_rcapsym_zh"}{...}
{vieweralsosee "[G-2] graph twoway rconnected" "help twoway_rconnected_zh"}{...}
{vieweralsosee "[G-2] graph twoway rline" "help twoway_rline_zh"}{...}
{vieweralsosee "[G-2] graph twoway rscatter" "help twoway_rscatter_zh"}{...}
{vieweralsosee "[G-2] graph twoway rspike" "help twoway_rspike_zh"}{...}
{viewerjumpto "Syntax" "twoway_rcap_zh##syntax"}{...}
{viewerjumpto "Menu" "twoway_rcap_zh##menu"}{...}
{viewerjumpto "Description" "twoway_rcap_zh##description"}{...}
{viewerjumpto "Links to PDF documentation" "twoway_rcap_zh##linkspdf"}{...}
{viewerjumpto "Options" "twoway_rcap_zh##options"}{...}
{viewerjumpto "Remarks" "twoway_rcap_zh##remarks"}
{help twoway_rcap:English Version}
{hline}{...}
{p2colset 1 28 30 2}{...}
{p2col:{bf:[G-2] graph twoway rcap} {hline 2}}带有顶部和底部条的范围图{p_end}
{p2col:}({mansection G-2 graphtwowayrcap:查看完整的 PDF 手册条目}){p_end}
{p2colreset}{...}


{marker syntax}{...}
{title:语法}

{p 8 60 2}
{cmdab:tw:oway}
{cmd:rcap}
{it:y1var} {it:y2var} {it:xvar}
{ifin}
[{cmd:,}
{it:选项}]

{synoptset 22}{...}
{p2col: {it:选项}}描述{p_end}
{p2line}
{p2col:{cmdab:竖:直}}竖直条；默认{p_end}
{p2col:{cmdab:横:向}}横向条{p_end}

{p2col:{it:{help line_options_zh}}}改变条和盖子的外观{p_end}
{p2col:{cmdab:msiz:e:(}{it:{help markersizestyle_zh}}{cmd:)}}盖子的宽度{p_end}

包含 help gr_axlnk

包含 help gr_twopt
{p2line}
{p2colreset}{...}
{p 4 6 2}
所有显式选项均为 {it:最右边}，除了 {cmd:vertical} 和 {cmd:horizontal}，它们是 {it:唯一的}；请参见 {help repeated options}。


{marker menu}{...}
{title:菜单}

{phang}
{bf:图形 > 二维图（散点，折线等）}


{marker description}{...}
{title:描述}

{pstd}
带有两个 {it:y} 变量的范围图，例如每日最高和最低股票价格或 95% 的上下置信限。

{pstd}
{cmd:twoway} {cmd:rcap} 绘制一个范围，使用 capped spikes（I-beams）连接高值和低值。


{marker linkspdf}{...}
{title:PDF 文档链接}

        {mansection G-2 graphtwowayrcapQuickstart:快速开始}

        {mansection G-2 graphtwowayrcapRemarksandexamples:备注和示例}

{pstd}
上述章节不包含在此帮助文件中。


{marker options}{...}
{title:选项}

{phang}
{cmd:vertical}
和
{cmd:horizontal}
    指定高和低 {it:y} 值的呈现方式为竖直（默认）还是横向。

{pmore}
    在默认的 {cmd:vertical} 情况下，{it:y1var} 和 {it:y2var} 记录要绘制的每个 {it:xvar} 值的最小和最大（或最大和最小） {it:y} 值。

{pmore}
    如果指定了 {cmd:horizontal}，则在 {it:y1var} 和 {it:y2var} 中记录的值将在 {it:x} 方向上绘制，而 {it:xvar} 被视为 {it:y} 值。

{phang}
{it:line_options} 
    指定用于绘制条及其盖子的线条外观，包括样式、宽度和颜色；请参见 {manhelpi line_options G-3}。

{phang}
{cmd:msize(}{it:markersizestyle}{cmd:)}
    指定盖子的宽度。选项 {cmd:msize()} 实際上是 {cmd:twoway} {cmd:scatter} 的 {it:marker_option}，用于设置标记符号的大小，但此处借用了 {cmd:msymbol()} 来设置盖子的宽度。有关大小选择的列表，请参见 {manhelpi markersizestyle G-4}。

包含 help gr_axlnkf

包含 help gr_twoptf


{marker remarks}{...}
{title:备注}

{pstd}
备注在以下标题下呈现：

        {help twoway_rcap##remarks1:典型用法}
        {help twoway_rcap##remarks2:高级用法}
        {help twoway_rcap##remarks3:高级用法 2}


{marker remarks1}{...}
{title:典型用法}

{pstd}
我们有 2001 年 S&P 500 的每日数据记录值：

	{cmd:. sysuse sp500}

	{cmd:. list date high low close in 1/5}
	{txt}
	     {c TLC}{hline 11}{c -}{hline 9}{c -}{hline 9}{c -}{hline 9}{c TRC}
	     {c |} {res}     日期      最高       最低     收盘 {txt}{c |}
	     {c LT}{hline 11}{c -}{hline 9}{c -}{hline 9}{c -}{hline 9}{c RT}
	  1. {c |} {res}2001年01月02日   1320.28   1276.05   1283.27 {txt}{c |}
	  2. {c |} {res}2001年01月03日   1347.76   1274.62   1347.56 {txt}{c |}
	  3. {c |} {res}2001年01月04日   1350.24   1329.14   1333.34 {txt}{c |}
	  4. {c |} {res}2001年01月05日   1334.77   1294.95   1298.35 {txt}{c |}
	  5. {c |} {res}2001年01月08日   1298.35   1276.29   1295.86 {txt}{c |}
	     {c BLC}{hline 11}{c -}{hline 9}{c -}{hline 9}{hline 9}{c BRC}{txt}

{pstd}
我们将使用这些数据中的前 37 个观察值：

	{cmd:. twoway rcap high low date in 1/37}
	  {it:({stata "gr_example sp500: twoway rcap high low date in 1/37":点击运行})}
{* graph gtrcap1}{...}


{marker remarks2}{...}
{title:高级用法}

{pstd}
{cmd:twoway} {cmd:rcap}
与表示基本值的水平线结合使用效果良好：

	{cmd}. sysuse sp500, clear

	. generate month = month(date)

	. sort month

	. by month: egen lo = min(volume)

	. by month: egen hi = max(volume)

	. format lo hi %10.0gc

	. summarize volume

	{txt}    变量 {c |}       观察值        均值    标准差       最小值        最大值
	{hline 13}{c +}{hline 56}
	      volume {c |}{res}       248    12320.68    2585.929       4103    23308.3{cmd}

	. by month: keep if _n==_N

	. twoway rcap lo hi month,
	    xlabel(1 "1月"  2 "2月"  3 "3月"  4 "4月"  5 "5月"  6 "6月"
		   7 "7月"  8 "8月"  9 "9月" 10 "10月" 11 "11月" 12 "12月")
	    xtitle("2001 年的月份")
	    ytitle("高和低交易量")
	    yaxis(1 2) ylabel(12321 "12,321 (均值)", axis(2) angle(0))
	    ytitle("", axis(2))
	    yline(12321, lstyle(foreground))
	    msize(*2)
	    title("S&P 500 的交易量", margin(b+2.5))
	    note("来源:  Yahoo!Finance 和商品系统公司。"){txt}
	  {it:({stata "gr_example2 tworcap":点击运行})}
{* graph tworcap}{...}


{marker remarks3}{...}
{title:高级用法 2}

{pstd}
{cmd:twoway} {cmd:rcap}
与散点图结合使用，也可以很好地生成高低中值图。返回到第一个示例中使用的 S&P 500 的前 37 个观测值，我们增加了收盘值的散点图：

	{cmd:. sysuse sp500, clear}

	{cmd:. twoway rcap high low date || scatter close date}
	  {it:({stata "gr_example sp500: twoway rcap high low date || scatter close date || in 1/37":点击运行})}
{* graph gtrcap1b}{...}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <twoway_rcap.sthlp>}