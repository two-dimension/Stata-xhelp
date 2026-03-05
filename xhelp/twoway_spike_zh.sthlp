{smcl}
{* *! version 1.1.8  19oct2017}{...}
{viewerdialog twoway "dialog twoway"}{...}
{vieweralsosee "[G-2] graph twoway spike" "mansection G-2 graphtwowayspike"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[G-2] graph twoway scatter" "help scatter_zh"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[G-2] graph twoway bar" "help twoway_bar_zh"}{...}
{vieweralsosee "[G-2] graph twoway dot" "help twoway_dot_zh"}{...}
{vieweralsosee "[G-2] graph twoway dropline" "help twoway_dropline_zh"}{...}
{viewerjumpto "Syntax" "twoway_spike_zh##syntax"}{...}
{viewerjumpto "Menu" "twoway_spike_zh##menu"}{...}
{viewerjumpto "Description" "twoway_spike_zh##description"}{...}
{viewerjumpto "Links to PDF documentation" "twoway_spike_zh##linkspdf"}{...}
{viewerjumpto "Options" "twoway_spike_zh##options"}{...}
{viewerjumpto "Remarks" "twoway_spike_zh##remarks"}
{help twoway_spike:English Version}
{hline}{...}
{p2colset 1 29 31 2}{...}
{p2col:{bf:[G-2] graph twoway spike} {hline 2}}双向尖峰图{p_end}
{p2col:}({mansection G-2 graphtwowayspike:查看完整PDF手册条目}){p_end}
{p2colreset}{...}


{marker syntax}{...}
{title:语法}

{p 8 54 2}
{cmdab:tw:oway}
{cmd:spike}
{it:yvar} {it:xvar}
{ifin}
[{cmd:,}
{it:options}]

{synoptset 22}{...}
{p2col:{it:options}}描述{p_end}
{p2line}
{p2col:{cmdab:vert:ical}}垂直尖峰图；默认值{p_end}
{p2col:{cmdab:hor:izontal}}水平尖峰图{p_end}
{p2col:{cmd:base(}{it:#}{cmd:)}}下落值；默认值为0{p_end}

INCLUDE help gr_blspike2

INCLUDE help gr_axlnk

INCLUDE help gr_twopt
{p2line}
{p2colreset}{...}
{p 4 6 2}
所有显式选项为 {it:右侧}，除了 {cmd:vertical} 和 {cmd:horizontal}，这两个选项为 {it:独特的}；详见 {help repeated options}。


{marker menu}{...}
{title:菜单}

{phang}
{bf:图形 > 双向图（散点、线等）}


{marker description}{...}
{title:描述}

{pstd}
{cmd:twoway} {cmd:spike} 将数值 ({it:y},{it:x}) 数据显示为尖峰图。
{cmd:twoway} {cmd:spike} 适用于绘制时间序列数据或其他等间距数据的尖峰图，并且作为编程工具非常有用。
对于稀疏数据，请参见 {manhelp graph_bar G-2:图形条形图}。


{marker linkspdf}{...}
{title:PDF文档链接}

        {mansection G-2 graphtwowayspikeQuickstart:快速入门}

        {mansection G-2 graphtwowayspikeRemarksandexamples:备注和示例}

{pstd}
上述部分未包含在此帮助文件中。


{marker options}{...}
{title:选项}

{phang}
{cmd:vertical} 和 {cmd:horizontal}
    指定生成垂直或水平尖峰图。
    {cmd:vertical} 为默认值。如果指定 {cmd:horizontal}，则
    在 {it:yvar} 中记录的值被视为 {it:x} 值，而在 {it:xvar} 中记录的值被视为 {it:y} 值。
    也就是说，绘制水平图时，不要交换指定的两个变量的顺序。

{pmore}
    在 {cmd:vertical} 的情况下，尖峰在指定的 {it:xvar} 值处绘制，并根据相应的 {it:yvar} 值从0向上或向下延伸。如果0不在 {it:y} 轴的范围内，
    尖峰将向上或向下延伸到 {it:x} 轴。

{pmore}
    在 {cmd:horizontal} 的情况下，尖峰在指定的 {it:xvar} 值处绘制，并根据相应的 {it:yvar} 值从0向左或向右延伸。如果0不在 {it:x} 轴的范围内，
    尖峰将向左或向右延伸到 {it:y} 轴。

{phang}
{cmd:base(}{it:#}{cmd:)}
    指定尖峰应该延伸的值。
    默认值为 {cmd:base(0)}；在上述选项描述中，假设了该默认值为 {cmd:vertical} 和 {cmd:horizontal}。

INCLUDE help gr_blspikef2

INCLUDE help gr_axlnkf

INCLUDE help gr_twoptf



{marker remarks}{...}
{title:备注}

{pstd}
备注按照以下标题呈现：

        {help twoway_spike##remarks1:典型用法}
        {help twoway_spike##remarks2:高级用法}
        {help twoway_spike##remarks3:注意事项}


{marker remarks1}{...}
{title:典型用法}

{pstd}
我们有2001年记录S&P 500日常数据的示例：

	{cmd:. sysuse sp500}

	{cmd:. list date close change in 1/5}
	     {c TLC}{hline 11}{c -}{hline 9}{c -}{hline 11}{c TRC}
	     {c |} {res}     日期     收盘      变化 {txt}{c |}
	     {c LT}{hline 11}{c -}{hline 9}{c -}{hline 11}{c RT}
	  1. {c |} {res}02jan2001   1283.27           . {txt}{c |}
	  2. {c |} {res}03jan2001   1347.56    64.29004 {txt}{c |}
	  3. {c |} {res}04jan2001   1333.34   -14.22009 {txt}{c |}
	  4. {c |} {res}05jan2001   1298.35   -34.98999 {txt}{c |}
	  5. {c |} {res}08jan2001   1295.86    -2.48999 {txt}{c |}
	     {c BLC}{hline 11}{c -}{hline 9}{c -}{hline 11}{c BRC}

{pstd}
在 {manhelp twoway_bar G-2:图形双向条形图} 中的示例使用条形图绘制了这些数据的前57个观察值。
以下是以尖峰图呈现的相同图表：

	{cmd:. twoway spike change date in 1/57}
	  {it:({stata "gr_example sp500: twoway spike change date in 1/57":单击运行})}
{* graph gtspike1}{...}

{pstd}
当数据量较大时，尖峰尤其有用。下图显示了整年的数据：

	{cmd:. twoway spike change date}
	  {it:({stata "gr_example sp500: twoway spike change date":单击运行})}
{* graph gtspike2}{...}


{marker remarks2}{...}
{title:高级用法}

{pstd}
{cmd:twoway} {cmd:spike} 的一个有用之处在于它可以与其他 {helpb twoway} 绘图类型结合使用：

	{cmd:. twoway line close date || spike change date}
	  {it:({stata "gr_example sp500: twoway line close date || spike change date":单击运行})}
{* graph gtspike3}{...}

{pstd}
我们可以通过输入以下命令来改进这个图表：

	{cmd}. twoway
		line close date, yaxis(1)
	||
		spike change date, yaxis(2)
	||,
		ysca(axis(1) r(700  1400)) ylab(1000(100)1400, axis(1))
		ysca(axis(2) r(-50 300)) ylab(-50 0 50, axis(2))
			ytick(-50(25)50, axis(2) grid)
		legend(off)
		xtitle("日期")
		title("S&P 500")
		subtitle("2001年1月至12月")
		note("来源：雅虎财经和商品系统公司")
		yline(950, axis(1) lstyle(foreground)){txt}
	  {it:({stata "gr_example2 twospike":单击运行})}
{* graph twospike}{...}

{pstd}
关于我们使用的

		{cmd:yline(950, axis(1) lstyle(foreground))}

{pstd}
请参见 {it:{help twoway bar##remarks2:高级用法：叠加}} 
在 {manhelp twoway_bar G-2:图形双向条形图} 中的说明。


{marker remarks3}{...}
{title:注意事项}

{pstd}
请参见 {it:{help twoway bar##remarks4:注意事项}} 
在 {manhelp twoway_bar G-2:图形双向条形图} 中的说明，本说明同样适用于 {cmd:twoway} {cmd:spike}。
{p_end}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <twoway_spike.sthlp>}