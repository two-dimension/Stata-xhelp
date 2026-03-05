{smcl}
{* *! version 1.1.8  19oct2017}{...}
{viewerdialog twoway "dialog twoway"}{...}
{vieweralsosee "[G-2] graph twoway rspike" "mansection G-2 graphtwowayrspike"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[G-2] graph twoway spike" "help twoway_spike_zh"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[G-2] graph twoway rarea" "help twoway_rarea_zh"}{...}
{vieweralsosee "[G-2] graph twoway rbar" "help twoway_rbar_zh"}{...}
{vieweralsosee "[G-2] graph twoway rcap" "help twoway_rcap_zh"}{...}
{vieweralsosee "[G-2] graph twoway rcapsym" "help twoway_rcapsym_zh"}{...}
{vieweralsosee "[G-2] graph twoway rconnected" "help twoway_rconnected_zh"}{...}
{vieweralsosee "[G-2] graph twoway rline" "help twoway_rline_zh"}{...}
{vieweralsosee "[G-2] graph twoway rscatter" "help twoway_rscatter_zh"}{...}
{viewerjumpto "Syntax" "twoway_rspike_zh##syntax"}{...}
{viewerjumpto "Menu" "twoway_rspike_zh##menu"}{...}
{viewerjumpto "Description" "twoway_rspike_zh##description"}{...}
{viewerjumpto "Links to PDF documentation" "twoway_rspike_zh##linkspdf"}{...}
{viewerjumpto "Options" "twoway_rspike_zh##options"}{...}
{viewerjumpto "Remarks" "twoway_rspike_zh##remarks"}
{help twoway_rspike:English Version}
{hline}{...}
{p2colset 1 30 32 2}{...}
{p2col:{bf:[G-2] graph twoway rspike} {hline 2}}带尖刺的范围图{p_end}
{p2col:}({mansection G-2 graphtwowayrspike:查看完整的 PDF 手册条目}){p_end}
{p2colreset}{...}


{marker syntax}{...}
{title:语法}

{p 8 60 2}
{cmdab:tw:oway}
{cmd:rspike}
{it:y1var} {it:y2var} {it:xvar}
{ifin}
[{cmd:,}
{it:选项}]

{synoptset 22}{...}
{p2col: {it:选项}}描述{p_end}
{p2line}
{p2col: {cmdab:vert:ical}}垂直尖刺；默认值{p_end}
{p2col: {cmdab:hor:izontal}}水平尖刺{p_end}

INCLUDE help gr_blspike2

INCLUDE help gr_axlnk

INCLUDE help gr_twopt
{p2line}
{p2colreset}{...}
{p 4 6 2}
所有显式选项均为 {it:右侧}，除非 {cmd:vertical}
和 {cmd:horizontal}，这两个选项是 {it:唯一的}；请参见 {help repeated options}。


{marker menu}{...}
{title:菜单}

{phang}
{bf:图形 > 二维图（散点、线等）}


{marker description}{...}
{title:描述}

{pstd}
范围图有两个 {it:y} 变量，例如每日最高和最低股价或 95% 的上下置信区间。

{pstd}
{cmd:twoway} {cmd:rspike} 绘制一个范围，使用尖刺连接高值和低值。

{pstd}
另请参见 {manhelp twoway_spike G-2:graph twoway spike} 以获取另一种样式的尖刺图表。


{marker linkspdf}{...}
{title:PDF 文档链接}

        {mansection G-2 graphtwowayrspikeQuickstart:快速入门}

        {mansection G-2 graphtwowayrspikeRemarksandexamples:备注和示例}

{pstd}
上述部分不包含在此帮助文件中。


{marker options}{...}
{title:选项}

{phang}
{cmd:vertical}
和
{cmd:horizontal}
    指定高值和低值 {it:y} 是否以垂直（默认）或水平方式呈现。

{pmore}
    在默认的 {cmd:vertical} 情况下，{it:y1var} 和 {it:y2var} 记录要
    以每个 {it:xvar} 值为标准绘制的最小和最大（或最大和最小） {it:y} 值。

{pmore}
    如果指定了 {cmd:horizontal}，则记录在 {it:y1var} 和
    {it:y2var} 中的值将在 {it:x} 方向绘制，且 {it:xvar} 被视为 {it:y} 值。

INCLUDE help gr_blspikef2

INCLUDE help gr_axlnkf

INCLUDE help gr_twoptf


{marker remarks}{...}
{title:备注}

{pstd}
备注在以下标题下进行汇报：

        {help twoway_rspike##remarks1:典型用法}
        {help twoway_rspike##remarks2:高级用法}
        {help twoway_rspike##remarks3:高级用法 2}


{marker remarks1}{...}
{title:典型用法}

{pstd}
我们有 2001 年 S&P 500 的每日数据记录：

	{cmd:. sysuse sp500}

	{cmd:. list date high low close in 1/5}
	{txt}
	     {c TLC}{hline 11}{c -}{hline 9}{c -}{hline 9}{c -}{hline 9}{c TRC}
	     {c |} {res}     date      high       low     close {txt}{c |}
	     {c LT}{hline 11}{c -}{hline 9}{c -}{hline 9}{c -}{hline 9}{c RT}
	  1. {c |} {res}02jan2001   1320.28   1276.05   1283.27 {txt}{c |}
	  2. {c |} {res}03jan2001   1347.76   1274.62   1347.56 {txt}{c |}
	  3. {c |} {res}04jan2001   1350.24   1329.14   1333.34 {txt}{c |}
	  4. {c |} {res}05jan2001   1334.77   1294.95   1298.35 {txt}{c |}
	  5. {c |} {res}08jan2001   1298.35   1276.29   1295.86 {txt}{c |}
	     {c BLC}{hline 11}{c -}{hline 9}{c -}{hline 9}{c -}{hline 9}{c BRC}{txt}

{pstd}
我们将使用这些数据的前 57 个观察值：

	{cmd:. twoway rspike high low date in 1/57}
	  {it:({stata "gr_example sp500: twoway rspike high low date in 1/57":点击运行})}
{* graph gtrspike1}{...}


{marker remarks2}{...}
{title:高级用法}

{pstd}
{cmd:twoway} {cmd:rspike} 可以与其他 {helpb twoway} 绘图类型有效结合：

	{cmd}. twoway rspike high low date, lcolor(gs11) ||
		 line close date || in 1/57{txt}
	  {it:({stata "gr_example sp500: twoway rspike high low date, lcolor(gs11) || line close date || in 1/57":点击运行})}
{* graph gtrspike2}{...}

{pstd}
我们指定了 {cmd:lcolor(gs11)} 来降低尖刺的颜色并增强线图的突出性。


{marker remarks3}{...}
{title:高级用法 2}

{pstd}
一个流行的金融图表是

	{cmd}. sysuse sp500, clear

	. replace volume = volume/1000

	. twoway
		rspike hi low date ||
		line   close  date ||
		bar    volume date, barw(.25) yaxis(2) ||
	  in 1/57
	  , ysca(axis(1) r(900 1400))
	    ysca(axis(2) r(  9   45))
	    ylab(, axis(2) grid)
	    ytitle("                          价格 -- 高、低、收盘")
	    ytitle(" 交易量（百万）", axis(2) bexpand just(left))
	    legend(off)
	    subtitle("S&P 500", margin(b+2.5))
	    note("来源：Yahoo!Finance 和 Commodity Systems, Inc."){txt}
	  {it:({stata "gr_example2 tworspike":点击运行})}
{* graph tworspike}{...}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <twoway_rspike.sthlp>}