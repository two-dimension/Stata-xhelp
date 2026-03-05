{smcl}
{* *! version 1.1.8  19oct2017}{...}
{viewerdialog twoway "dialog twoway"}{...}
{vieweralsosee "[G-2] graph twoway dropline" "mansection G-2 graphtwowaydropline"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[G-2] graph twoway scatter" "help scatter_zh"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[G-2] graph twoway spike" "help twoway_spike_zh"}{...}
{viewerjumpto "Syntax" "twoway_dropline_zh##syntax"}{...}
{viewerjumpto "Menu" "twoway_dropline_zh##menu"}{...}
{viewerjumpto "Description" "twoway_dropline_zh##description"}{...}
{viewerjumpto "Links to PDF documentation" "twoway_dropline_zh##linkspdf"}{...}
{viewerjumpto "Options" "twoway_dropline_zh##options"}{...}
{viewerjumpto "Remarks" "twoway_dropline_zh##remarks"}
{help twoway_dropline:English Version}
{hline}{...}
{p2colset 1 32 34 2}{...}
{p2col:{bf:[G-2] graph twoway dropline} {hline 2}}双向掉线图{p_end}
{p2col:}({mansection G-2 graphtwowaydropline:查看完整的PDF手册条目}){p_end}
{p2colreset}{...}


{marker syntax}{...}
{title:语法}

{p 8 57 2}
{cmdab:tw:oway}
{cmd:dropline}
{it:yvar} {it:xvar}
{ifin}
[{cmd:,}
{it:options}]

{synoptset 22}{...}
{p2col:{it:options}}描述{p_end}
{p2line}
{p2col:{cmdab:vert:ical}}垂直掉线图；默认值{p_end}
{p2col:{cmdab:hor:izontal}}水平掉线图{p_end}
{p2col:{cmd:base(}{it:#}{cmd:)}}掉落的基准值；默认为0{p_end}

包含帮助 gr_markopt
{p2col:{it:{help line_options_zh}}}更改掉线的外观{p_end}

包含帮助 gr_axlnk

包含帮助 gr_twopt
{p2line}
{p2colreset}{...}
{p 4 6 2}
所有显式选项都是 {it:最右}, 除了 {cmd:vertical} 
和 {cmd:horizontal}, 它们是 {it:唯一的}; 见 
{help repeated options}。


{marker menu}{...}
{title:菜单}

{phang}
{bf:图形 > 双向图 (散点, 线等)}


{marker description}{...}
{title:描述}

{pstd}
{cmd:twoway} {cmd:dropline} 将数值 ({it:y},{it:x}) 数据显示为
有标记的掉线。
{cmd:twoway} {cmd:dropline} 对于绘制数值围绕零变化的图形非常有用。


{marker linkspdf}{...}
{title:PDF文档链接}

        {mansection G-2 graphtwowaydroplineQuickstart:快速入门}

        {mansection G-2 graphtwowaydroplineRemarksandexamples:备注和示例}

{pstd}
上述部分未包含在此帮助文件中。


{marker options}{...}
{title:选项}

{phang}
{cmd:vertical} 和 {cmd:horizontal}
    指定垂直或水平掉线图。
    {cmd:vertical} 是默认值。如果指定 {cmd:horizontal}，则
    {it:yvar} 中记录的值被视为 {it:x} 值，而 {it:xvar} 中记录的值被视为 {it:y} 值。
    也就是说，要制作水平图，不要调换两个变量的顺序。

{pmore}
    在 {cmd:vertical} 的情况下，掉线在指定的
    {it:xvar}值处绘制，并根据相应的 {it:yvar} 值向上或向下延伸至0。
    如果0不在 {it:y} 轴的范围内，线条将向上或向下延伸到 {it:x} 轴。

{pmore}
    在 {cmd:horizontal} 的情况下，掉线在指定的
    {it:xvar}值处绘制，并根据相应的 {it:yvar} 值向左或向右延伸至0。
    如果0不在 {it:x} 轴的范围内，线条将向左或向右延伸到 {it:y} 轴。

{phang}
{cmd:base(}{it:#}{cmd:)}
    指定线条应从中延伸的值。
    默认值是 {cmd:base(0)}，在上述选项描述中
    {cmd:vertical} 和 {cmd:horizontal} 假定了此默认值。

{phang}
{it:marker_options}
    指定绘制在数据点上的标记外观。此外观
    包括标记符号及其大小、颜色和轮廓; 见 
    {manhelpi marker_options G-3}。

{phang}
{it:marker_label_options}
    指定标记是否以及如何标记; 
    见 {manhelpi marker_label_options G-3}。

{phang}
{it:line_options} 
    指定掉线的外观，包括模式、宽度和
    颜色; 见 {manhelpi line_options G-3}。

包含帮助 gr_axlnkf

包含帮助 gr_twoptf


{marker remarks}{...}
{title:备注}

{pstd}
备注在以下标题下提出：

	{help twoway_dropline##remarks1:典型用法}
	{help twoway_dropline##remarks2:高级用法}
	{help twoway_dropline##remarks3:注意事项}


{marker remarks1}{...}
{title:典型用法}

{pstd}
我们有记录2001年S&P 500值的每日数据：

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
在 {manhelp twoway_bar G-2:graph twoway bar} 中，我们通过使用条形图绘制了这些数据的前57个观测值。这里是相同图形以掉线形式呈现：

{phang2}
	{cmd:. twoway dropline change date in 1/57, yline(0, lstyle(foreground))}
{p_end}
	  {it:({stata "gr_example sp500: twoway dropline change date in 1/57, yline(0, lstyle(foreground))":点击运行})}
{* graph gtdropline1}{...}

{pstd}
在上面的例子中，我们指定了 {cmd:yline(0)} 在图表上添加一条横线在0的位置，然后我们指定了 {cmd:yline(, lstyle(foreground))} 使得该线的颜色与前景相同。
我们本可以指定 {cmd:yline(, lcolor())}。关于为什么我们选择 {cmd:lstyle()} 而不是 {cmd:foreground()} 的解释，请见
{it:{help twoway_bar##remarks2:高级用法: 重叠}} 在
{manhelp twoway_bar G-2:graph twoway bar}。


{marker remarks2}{...}
{title:高级用法}

{pstd}
掉线图在标记点时特别有效。
例如，

	{cmd}. sysuse lifeexp, clear

	. keep if region==3

	. generate lngnp = ln(gnppc)

	. quietly regress le lngnp

	. predict r, resid

	. twoway dropline r gnp,
		yline(0, lstyle(foreground)) mlabel(country) mlabpos(9)
		ylab(-6(1)6)
		subtitle("对生存期望进行的回归 ln(gnp)"
			 "残差:" " ", pos(11))
		note("以年为单位的残差; 正值表示"
		     "预期的生存期望更长"){txt}
	  {it:({stata "gr_example2 twodropline":点击运行})}
{* graph twodropline}{...}


{marker remarks3}{...}
{title:注意事项}

{pstd}
见 {it:{help twoway bar##remarks4:注意事项}} 在
{manhelp twoway_bar G-2:graph twoway bar}，该信息同样适用于
{cmd:twoway} {cmd:dropline}。
{p_end}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <twoway_dropline.sthlp>}