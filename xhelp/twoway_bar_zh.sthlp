{smcl}
{* *! version 1.1.9  19oct2017}{...}
{viewerdialog twoway "dialog twoway"}{...}
{vieweralsosee "[G-2] graph twoway bar" "mansection G-2 graphtwowaybar"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[G-2] graph twoway scatter" "help scatter_zh"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[G-2] graph twoway dot" "help twoway_dot_zh"}{...}
{vieweralsosee "[G-2] graph twoway dropline" "help twoway_dropline_zh"}{...}
{vieweralsosee "[G-2] graph twoway histogram" "help twoway_histogram_zh"}{...}
{vieweralsosee "[G-2] graph twoway spike" "help twoway_spike_zh"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[G-2] graph bar" "help graph_bar_zh"}{...}
{viewerjumpto "Syntax" "twoway_bar_zh##syntax"}{...}
{viewerjumpto "Menu" "twoway_bar_zh##menu"}{...}
{viewerjumpto "Description" "twoway_bar_zh##description"}{...}
{viewerjumpto "Links to PDF documentation" "twoway_bar_zh##linkspdf"}{...}
{viewerjumpto "Options" "twoway_bar_zh##options"}{...}
{viewerjumpto "Remarks" "twoway_bar_zh##remarks"}
{help twoway_bar:English Version}
{hline}{...}
{p2colset 1 27 29 2}{...}
{p2col:{bf:[G-2] graph twoway bar} {hline 2}}双向条形图{p_end}
{p2col:}({mansection G-2 graphtwowaybar:查看完整的PDF手册条目}){p_end}
{p2colreset}{...}


{marker syntax}{...}
{title:语法}

{p 8 52 2}
{cmdab:tw:oway}
{cmd:bar}
{it:yvar} {it:xvar}
{ifin}
[{cmd:,}
{it:选项}]

{synoptset 20}{...}
{p2col:{it:选项}}描述{p_end}
{p2line}
{p2col:{cmdab:vert:ical}}垂直条形图；默认{p_end}
{p2col:{cmdab:hor:izontal}}水平条形图{p_end}
{p2col:{cmd:base(}{it:#}{cmd:)}}下降值；默认值为0{p_end}
{p2col:{cmdab:barw:idth:(}{it:#}{cmd:)}}条形在 {it:xvar} 单位中的宽度{p_end}

INCLUDE help gr_baropt

INCLUDE help gr_axlnk

INCLUDE help gr_twopt
{p2line}
{p2colreset}{...}
{p 4 6 2}
选项 {cmd:base()} 和 {cmd:barwidth()} 是 {it:最右边}，而 {cmd:vertical} 和 {cmd:horizontal} 是 {it:唯一}；请参见 {help repeated options}。


{marker menu}{...}
{title:菜单}

{phang}
{bf:图形 > 双向图形（散点，线等）}


{marker description}{...}
{title:描述}

{pstd}
{cmd:twoway} {cmd:bar} 将数值 ({it:y},{it:x}) 数据显示为条形图。
{cmd:twoway} {cmd:bar} 适合绘制时间序列数据或其他等距数据的条形图，也可以作为编程工具。
对于间距较细的数据，另请参见
{manhelp twoway_spike G-2:图形双向尖刺}。

{pstd}
另请参见 {manhelp graph_bar G-2:图形柱状图} 以获取传统条形图和 
{manhelp twoway_histogram G-2:图形双向直方图} 以获取直方图。


{marker linkspdf}{...}
{title:PDF文档链接}

        {mansection G-2 graphtwowaybarQuickstart:快速开始}

        {mansection G-2 graphtwowaybarRemarksandexamples:备注和示例}

{pstd}
上述部分未包含在此帮助文件中。


{marker options}{...}
{title:选项}

{phang}
{cmd:vertical} 和 {cmd:horizontal}
    指定垂直或水平条形图。
    {cmd:vertical} 是默认值。如果指定 {cmd:horizontal}，则
    {it:yvar} 中记录的数值被视为 {it:x} 值，而 {it:xvar} 中记录的数值被视为 {it:y} 值。
    也就是说，为了制作水平图形，请勿更改这两个变量的顺序。

{pmore}
    在 {cmd:vertical} 的情况下，条形图在指定的 {it:xvar}
    值处绘制，并根据相应的 {it:yvar} 值向上或向下延伸。如果 0 不在 {it:y} 轴的范围内，
    则条形图将向上或向下延伸到 {it:x} 轴。

{pmore}
    在 {cmd:horizontal} 的情况下，条形图在指定的 {it:xvar}
    值处绘制，并根据相应的 {it:yvar} 值向左或向右延伸。如果 0 不在 {it:x} 轴的范围内，
    则条形图将向左或向右延伸到 {it:y} 轴。

{phang}
{cmd:base(}{it:#}{cmd:)}
    指定条形应延伸的值。
    默认值是 {cmd:base(0)}，在上述选项描述中
    假设了该默认值。

{phang}
{cmd:barwidth(}{it:#}{cmd:)}
    指定条形在 {it:xvar} 单位中的宽度。默认值是
    {cmd:width(1)}。当绘制条形时，其中心位于 {it:x}，因此一半的宽度在 {it:x} 下面，一半在上面。

INCLUDE help gr_baroptf

INCLUDE help gr_axlnkf

INCLUDE help gr_twoptf


{marker remarks}{...}
{title:备注}

{pstd}
备注在以下标题下呈现：

	{help twoway bar##remarks1:典型用法}
	{help twoway bar##remarks2:高级用法：叠加}
	{help twoway bar##remarks3:高级用法：人口金字塔}
	{help twoway bar##remarks4:注意事项}


{marker remarks1}{...}
{title:典型用法}

{pstd}
我们有记录2001年标准普尔500指数每日数据的值：

	{cmd:. sysuse sp500}

	{cmd:. list date close change in 1/5}
	     {c TLC}{hline 11}{c -}{hline 9}{c -}{hline 11}{c TRC}
	     {c |} {res}     date     close      change {txt}{c |}
	     {c LT}{hline 11}{c -}{hline 9}{c -}{hline 11}{c RT}
	  1. {c |} {res}02jan2001   1283.27           . {txt}{c |}
	  2. {c |} {res}03jan2001   1347.56    64.29004 {txt}{c |}
	  3. {c |} {res}04jan2001   1333.34   -14.22009 {txt}{c |}
	  4. {c |} {res}05jan2001   1298.35   -34.98999 {txt}{c |}
	  5. {c |} {res}08jan2001   1295.86    -2.48999 {txt}{c |}
	     {c BLC}{hline 11}{c -}{hline 9}{c -}{hline 11}{c BRC}

{pstd}
我们将使用这些数据的前57个观察值：

	{cmd:. twoway bar change date in 1/57}
	  {it:({stata "gr_example sp500: twoway bar change date in 1/57":点击运行})}
{* graph gtbar1}{...}

{pstd}
如果我们将条形的宽度从1天减少到0.6天，视觉效果会有所不同：

	{cmd:. twoway bar change date in 1/57, barw(.6)}
	  {it:({stata "gr_example sp500: twoway bar change date in 1/57, barw(.6)":点击运行})}
{* graph gtbar2}{...}


{marker remarks2}{...}
{title:高级用法：叠加}

{pstd}
{cmd:twoway} {cmd:bar} 的一个有用之处在于可以与其他 {helpb twoway} 图形类型组合：

{phang2}
	{cmd:. twoway line close date || bar change date || in 1/52}
{p_end}
	  {it:({stata "gr_example sp500: twoway line close date || bar change date || in 1/52":点击运行})}
{* graph gtbar3}{...}

{pstd}
我们可以通过输入以下命令来改进该图：

	{cmd}. twoway
		line close date, yaxis(1)
	||
		bar change date, yaxis(2)
	||
	in 1/52,
		ysca(axis(1) r(1000 1400)) ylab(1200(50)1400, axis(1))
		ysca(axis(2) r(-50 300)) ylab(-50 0 50, axis(2))
			ytick(-50(25)50, axis(2) grid)
		legend(off)
		xtitle("日期")
		title("标准普尔500指数")
		subtitle("2001年1月至3月")
		note("来源：Yahoo!Finance and Commodity Systems, Inc.")
		yline(1150, axis(1) lstyle(foreground)){txt}
	  {it:({stata "gr_example2 twobar":点击运行})}
{* graph twobar}{...}

{pstd}
注意使用了

		{cmd:yline(1150, axis(1) lstyle(foreground))}

{pstd}
1150 将水平线放在 {it:y}=1150； {cmd:axis(1)}
表示 {it:y} 应根据左边的 {it:y} 轴解释； {cmd:lstyle(foreground)} 指定线条应以前景样式绘制。


{marker remarks3}{...}
{title:高级用法：人口金字塔}
{* index population pyramid}{...}
{* index pyramid, population}{...}

{pstd}
我们拥有以下来自美国2000年人口普查的汇总数据，记录了按年龄和性别划分的总人口。从中我们生成一个人口金字塔：

        {cmd:. sysuse pop2000, clear}
 
	{cmd}. list agegrp maletotal femtotal
	{txt}
	     {c TLC}{hline 10}{c -}{hline 12}{c -}{hline 12}{c TRC}
	     {c |} {res}  agegrp    maletotal     femtotal {txt}{c |}
	     {c LT}{hline 10}{c -}{hline 12}{c -}{hline 12}{c RT}
	  1. {c |} {res} 5岁以下    9,810,733    9,365,065 {txt}{c |}
	  2. {c |} {res} 5到9岁   10,523,277   10,026,228 {txt}{c |}
	  3. {c |} {res}10到14岁   10,520,197   10,007,875 {txt}{c |}
	  4. {c |} {res}15到19岁   10,391,004    9,828,886 {txt}{c |}
	  5. {c |} {res}20到24岁    9,687,814    9,276,187 {txt}{c |}
	     {c LT}{hline 10}{c -}{hline 12}{c -}{hline 12}{c RT}
	  6. {c |} {res}25到29岁    9,798,760    9,582,576 {txt}{c |}
	  7. {c |} {res}30到34岁   10,321,769   10,188,619 {txt}{c |}
	  8. {c |} {res}35到39岁   11,318,696   11,387,968 {txt}{c |}
	  9. {c |} {res}40到44岁   11,129,102   11,312,761 {txt}{c |}
	 10. {c |} {res}45到49岁    9,889,506   10,202,898 {txt}{c |}
	     {c LT}{hline 10}{c -}{hline 12}{c -}{hline 12}{c RT}
	 11. {c |} {res}50到54岁    8,607,724    8,977,824 {txt}{c |}
	 12. {c |} {res}55到59岁    6,508,729    6,960,508 {txt}{c |}
	 13. {c |} {res}60到64岁    5,136,627    5,668,820 {txt}{c |}
	 14. {c |} {res}65到69岁    4,400,362    5,133,183 {txt}{c |}
	 15. {c |} {res}70到74岁    3,902,912    4,954,529 {txt}{c |}
	     {c LT}{hline 10}{c -}{hline 12}{c -}{hline 12}{c RT}
	 16. {c |} {res}75到79岁    3,044,456    4,371,357 {txt}{c |}
	 17. {c |} {res}80到84岁    1,834,897    3,110,470 {txt}{c |}
	     {c BLC}{hline 10}{c -}{hline 12}{c -}{hline 12}{c BRC}

	{cmd:. replace maletotal = -maletotal/1e+6}

	{cmd:. replace femtotal = femtotal/1e+6}

	{cmd}. twoway
		 bar maletotal agegrp, horizontal xvarlab(男性)
	  ||
		 bar  femtotal agegrp, horizontal xvarlab(女性)
	  ||
	  , ylabel(1(1)17, angle(horizontal) valuelabel labsize(*.8))
	    xtitle("以百万为单位的人口") ytitle("")
	    xlabel(-10 "10" -7.5 "7.5" -5 "5" -2.5 "2.5" 2.5 5 7.5 10)
	    legend(label(1 男性) label(2 女性))
	    title("美国按年龄划分的男性和女性人口")
	    subtitle("2000年")
	    note("来源：美国人口普查局，2000年人口普查，第1、2和3表格",
		  span){txt}
	  {it:({stata "gr_example2 twobar2":点击运行})}
{* graph twobar2}{...}

{pstd}
从本质上讲，上述图形很简单：我们将条形旋转，并将男性总数设置为负数。我们对上述的第一次尝试只是

	{cmd}. sysuse pop2000, clear

	. replace maletotal = -maletotal

	. twoway bar maletotal agegrp, horizontal ||
		 bar  femtotal agegrp, horizontal{txt}
	  {it:({stata "gr_example2 twobar3":点击运行})}
{* graph twobar3}{...}

{pstd}
从那里，我们将人口总数除以100万并添加选项。

{pstd}
{cmd:xlabel(-10 "10" -7.5 "7.5" -5 "5" -2.5 "2.5" 2.5 5 7.5 10)}
是一种巧妙的方法，可以掩盖男性条形朝负方向延伸的情况。我们表示将 -10、-7.5、-5、-2.5、2.5、5、7.5 和 10 进行标记，但我们用文本替代负数，使其看起来像是正数。
请参见 {manhelpi axis_label_options G-3}。

{pstd}
使用 {cmd:span} 子选项给 {cmd:note()}
将文本左对齐，而不是在绘图区域中。
请参见 {manhelpi textbox_options G-3}。

{pstd}
对于金字塔的另一种表现形式，我们尝试了

	{cmd}. sysuse pop2000, clear

	. replace maletotal = -maletotal/1e+6

	. replace femtotal = femtotal/1e+6

	. gen zero = 0

	. twoway
	      bar maletotal agegrp, horizontal xvarlab(男性)
	||
	      bar  femtotal agegrp, horizontal xvarlab(女性)
	||
	      sc  agegrp zero     , mlabel(agegrp) mlabcolor(black) msymbol(i)
	||
	, xtitle("以百万为单位的人口") ytitle("")
	  plotregion(style(none)){txt}{it:{right:(note 1)}}{cmd}
	  ysca(noline) ylabel(none){txt}{it:{right:(note 2)}}{cmd}
	  xsca(noline titlegap(-3.5)){txt}{it:{right:(note 3)}}{cmd}
	  xlabel(-12 "12" -10 "10" -8 "8" -6 "6" -4 "4" 4(2)12, tlength(0)
								grid gmin gmax)
	  legend(label(1 男性) label(2 女性)) legend(order(1 2))
	  title("2000年美国按年龄划分的男性和女性人口")
	  note("来源：美国人口普查局，2000年人口普查，第1、2和3表格"){txt}
	  {it:({stata "gr_example2 twobar4":点击运行})}
{* graph twobar4}{...}

{pstd}
在上述表现中，我们将标签从 {it:x} 轴移到条形内，通过在条形上叠加 {cmd:scatter}。
我们在 {it:y}=agegrp 和 {it:x}=0 处绘制的散点，而不是显示标记，我们展示了包含所需标签的标记标签。
请参见 {manhelpi marker_label_options G-3}。

{pstd}
我们还进行了以下技巧：

{phang2}
1.  {cmd:plotregion(style(none))} 抑制了绘图区域的描边；请参见 {manhelpi region_options G-3}。

{phang2}
2.  {cmd:ysca(noline)} 抑制了 {it:y} 轴的绘制 -- 见
    {manhelpi axis_scale_options G-3} -- 并且 {cmd:ylabel(none)} 抑制了其标记 -- 见 {manhelpi axis_label_options G-3}。

{phang2}
3.  {cmd:xsca(noline titlegap(-3.5))}
    抑制了 {it:x} 轴的绘制，并将
    {it:x} 轴标题移到其标签之间；
    请参见 {manhelpi axis_scale_options G-3}。


{marker remarks4}{...}
{title:注意事项}

{pstd}
如果有必要，您必须扩展轴的尺度。请考虑使用 {cmd:twoway} {cmd:bar} 来生成直方图
（忽略使用 {helpb twoway histogram} 的更好选择）。
假设您已经输入了形式如下的数据

	x     频率
	{hline 15}
	1        400
	2        800
	3      3,000
	4      1,800
	5      1,100
	{hline 15}

{pstd}
您将其输入到 Stata 中以创建变量 {cmd:x} 和 {cmd:频率}。您输入

	{cmd:. twoway bar frequency x}

{pstd}
以制作直方图风格的条形图。 {it:y} 轴的刻度
将介于 400 和 3000 之间（标记为 500、1000、...、3000），
而最短的条形将具有零高度。您需要输入

	{cmd:. twoway bar frequency x, ysca(r(0))}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <twoway_bar.sthlp>}