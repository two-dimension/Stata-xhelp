{smcl}
{* *! version 1.1.10  19oct2017}{...}
{viewerdialog twoway "dialog twoway"}{...}
{vieweralsosee "[G-2] graph twoway line" "mansection G-2 graphtwowayline"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[G-2] graph twoway scatter" "help scatter_zh"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[G-2] graph twoway fpfit" "help twoway_fpfit_zh"}{...}
{vieweralsosee "[G-2] graph twoway lfit" "help twoway_lfit_zh"}{...}
{vieweralsosee "[G-2] graph twoway mband" "help twoway_mband_zh"}{...}
{vieweralsosee "[G-2] graph twoway mspline" "help twoway_mspline_zh"}{...}
{vieweralsosee "[G-2] graph twoway qfit" "help twoway_qfit_zh"}{...}
{viewerjumpto "Syntax" "line_zh##syntax"}{...}
{viewerjumpto "Menu" "line_zh##menu"}{...}
{viewerjumpto "Description" "line_zh##description"}{...}
{viewerjumpto "Links to PDF documentation" "line_zh##linkspdf"}{...}
{viewerjumpto "Options" "line_zh##options"}{...}
{viewerjumpto "Remarks" "line_zh##remarks"}
{help line:English Version}
{hline}{...}
{p2colset 1 28 30 2}{...}
{p2col:{bf:[G-2] graph twoway line} {hline 2}}二维线图{p_end}
{p2col:}({mansection G-2 graphtwowayline:查看完整的PDF手册条目}){p_end}
{p2colreset}{...}


{marker syntax}{...}
{title:语法}

{p 8 24 2}
[{cmdab:tw:oway}]
{cmd:line}
{it:varlist}
{ifin}
[{cmd:,}
{it:options}]

{pstd}
其中 {it:varlist} 为 

		{it:y_1} [{it:y_2} [...]] {it:x}

{synoptset 22}
{p2col:{it:options}}描述{p_end}
{p2line}
包含帮助 gr_conopt

包含帮助 gr_axlnk

包含帮助 gr_twopt
{p2line}
{p 4 6 2}
{it:connect_options} 讨论如何连接组成线的点及线的外观，包括样式、宽度和颜色；详见 {it:{help scatter##connect_options:connect_options}} 在 
{help scatter_zh:[G-2] graph twoway scatter} 当绘制多个 {it:y} 对于一个 {it:x} 时。


{marker menu}{...}
{title:菜单}

{phang}
{bf:图形 > 二维图 (散点图、线图等)}


{marker description}{...}
{title:描述}

{pstd}
{cmd:line} 绘制线图。

{pstd}
{cmd:line} 是一种命令和 {it:plottype}，如在
{manhelp twoway G-2:graph twoway} 中定义。
因此 {cmd:line} 的语法为

	{cmd:. graph twoway line} ...

	{cmd:. twoway line} ...

	{cmd:. line} ...

{pstd}
作为一种图形类型，{cmd:line} 可以与 {helpb twoway} 家族中的其他图形类型组合，如

{phang2}
	{cmd:. twoway (line} ...{cmd:) (scatter} ...{cmd:) (lfit} ...{cmd:)} ...

{pstd}
这也可以等效地写成

{phang2}
	{cmd:. line} ... {cmd:|| scatter} ... {cmd:|| lfit} ... {cmd:||} ...


{marker linkspdf}{...}
{title:PDF文档链接}

        {mansection G-2 graphtwowaylineQuickstart:快速入门}

        {mansection G-2 graphtwowaylineRemarksandexamples:备注和示例}

{pstd}
以上部分不包含在此帮助文件中。


{marker options}{...}
{title:选项}

{phang}
{it:connect_options} 
    指定形成线的点如何连接以及线的外观，包括模式、宽度和颜色；详见 {manhelpi connect_options G-3}。{p_end}

{pmore}
    {manhelpi connect_options G-3} 讨论 
    一个 {it:y} 对应一个 {it:x} 的选项，详见 
    {it:connect_options} 在
    {bf:{help scatter##connect_options:[G-2] graph twoway scatter}} 当 
    绘制多个 {it:y} 对于一个 {it:x} 时。

包含帮助 gr_axlnkf

包含帮助 gr_twoptf


{marker remarks}{...}
{title:备注}

{pstd}
备注按以下标题呈现：

	{help line##remarks1:线与散点的一对一等价性}
	{help line##remarks2:典型用法}
	{help line##remarks3:高级用法}
	{help line##remarks4:注意事项}


{marker remarks1}{...}
{title:线与散点的一对一等价性}

{pstd}
{cmd:line} 与 {cmd:scatter} 相似，其区别在于默认情况下不显示标记符号且点被连接：

	默认 {cmd:msymbol()} 选项：  {cmd:msymbol(none ...)}

	默认 {cmd:connect()} 选项：  {cmd:connect(l ...)}

{pstd}
因此你可以通过输入

	{cmd:. line yvar xvar}

{pstd}
得到与输入

{phang2}
	{cmd:. scatter yvar xvar, msymbol(none) connect(l)}

{pstd}
相同的结果。

{pstd}
你可以在 {cmd:line} 的位置使用 {cmd:scatter}，但你不能在 {cmd:scatter} 的位置使用 {cmd:line}。输入

{phang2}
	{cmd:. line yvar xvar, msymbol(O) connect(none)}

{pstd}
将不会产生与

	{cmd:. scatter yvar xvar}

{pstd}
相同的结果，因为 {cmd:line} 虽然允许你指定 {it:marker_option}
{help marker_options_zh:msymbol()}，但它会忽略其设置。


{marker remarks2}{...}
{title:典型用法}

{pstd}
{cmd:line} 绘制线图：

	{cmd:. sysuse uslifeexp}

	{cmd:. line le year}
	  {it:({stata "gr_example uslifeexp: line le year":点击运行})}
{* graph grline1}{...}

{pstd}
线图在时间序列数据中表现良好。在其他数据集中，线通常用于显示预测值和置信区间：

	{cmd}. sysuse auto, clear

	. quietly regress mpg weight

	. predict hat

	. predict stdf, stdf

	. generate lo = hat - 1.96*stdf

	. generate hi = hat + 1.96*stdf

{phang2}
	. scatter mpg weight || line hat lo hi weight, pstyle(p2 p3 p3) sort{txt}
{p_end}
	  {it:({stata "gr_example2 line1":点击运行})}
{* graph line1}{...}

{pstd}
不要忘记在数据没有按 {it:x} 变量的顺序排列时包含 {cmd:sort} 选项，如以上所示。我们还包括了 {cmd:pstyle(p2 p3 p3)} 来使下限和上限置信区间线具有相同的外观；详见
{it:{help scatter##remarks19:附录：样式与复合样式}} 在 {it:备注} 中的 {manhelp scatter G-2:graph twoway scatter}。

{pstd}
因为 {cmd:line} 是 {cmd:scatter}，我们可以使用 {cmd:scatter} 允许的任何选项。下面我们回到美国的预期寿命数据，并绘制黑白男性的预期寿命，并指定许多选项以创建一个信息丰富且视觉上令人愉悦的图表：

	{cmd}. sysuse uslifeexp, clear

	. generate diff = le_wm - le_bm

	. label var diff "差异"

	.    line le_wm year, yaxis(1 2) xaxis(1 2)
	  || line le_bm year
	  || line diff  year
	  || lfit diff  year
	  ||,
	     ylabel(0(5)20, axis(2) gmin angle(horizontal))
	     ylabel(0 20(10)80,     gmax angle(horizontal))
	     ytitle("", axis(2))
	     xlabel(1918, axis(2)) xtitle("", axis(2))
	     ylabel(, axis(2) grid)
	     ytitle("出生时预期寿命 (年)")
	     title("白人和黑人预期寿命")
	     subtitle("美国, 1900-1999")
	     note("来源：国家生命统计，卷 50，第 6 期"
		  "(1918 年的下降归因于 1918 年流感疫情)"){txt}
	  {it:({stata gr_example2 line2:点击运行})}
{* graph line2}{...}

{pstd}
见 {manhelp scatter G-2:graph twoway scatter}。


{marker remarks3}{...}
{title:高级用法}

{pstd}
如果我们缩短键中使用的描述性文本，上述图形会看起来更好。下面我们添加

{phang2}
	{cmd:legend(label(1 "白人男性") label(2 "黑人男性"))}

{pstd}
到我们之前的命令：{cmd}

	.    line le_wm year, yaxis(1 2) xaxis(1 2)
	  || line le_bm year
	  || line diff  year
	  || lfit diff  year
	  ||,
	     ylabel(0(5)20, axis(2) gmin angle(horizontal))
	     ylabel(0 20(10)80,     gmax angle(horizontal))
	     ytitle("", axis(2))
	     xlabel(1918, axis(2)) xtitle("", axis(2))
	     ylabel(, axis(2) grid)
	     ytitle("出生时预期寿命 (年)")
	     title("白人和黑人预期寿命")
	     subtitle("美国, 1900-1999")
	     note("来源：国家生命统计，卷 50，第 6 期"
		  "(1918 年的下降归因于 1918 年流感疫情)")
	     legend(label(1 "白人男性") label(2 "黑人男性")){txt}
	  {it:({stata gr_example2 line3:点击运行})}

{pstd}
我们还可以考虑将图例移到图形的右侧，方法是添加

	{cmd:legend(col(1) pos(3))}

{pstd}
导致的命令为{cmd}

	.    line le_wm year, yaxis(1 2) xaxis(1 2)
	  || line le_bm year
	  || line diff  year
	  || lfit diff  year
	  ||,
	     ylabel(0(5)20, axis(2) gmin angle(horizontal))
	     ylabel(0 20(10)80,     gmax angle(horizontal))
	     ytitle("", axis(2))
	     xlabel(1918, axis(2)) xtitle("", axis(2))
	     ylabel(, axis(2) grid)
	     ytitle("出生时预期寿命 (年)")
	     title("白人和黑人预期寿命")
	     subtitle("美国, 1900-1999")
	     note("来源：国家生命统计，卷 50，第 6 期"
		  "(1918 年的下降归因于 1918 年流感疫情)")
	     legend(label(1 "白人男性") label(2 "黑人男性"))
	     legend(col(1) pos(3)){txt}
	  {it:({stata gr_example2 line4:点击运行})}
{* graph line4}{...}

{pstd}
有关处理图例的更多信息，请参见 {manhelpi legend_options G-3}。


{marker remarks4}{...}
{title:注意事项}

{pstd}
确保数据的顺序与 {it:x} 变量的顺序一致，或指定 {cmd:line} 的 {cmd:sort} 选项。如果两者都不执行，你将得到一些看起来像儿童涂鸦的东西：

	{cmd:. sysuse auto, clear}

	{cmd:. line mpg weight}
	  {it:({stata "gr_example auto: line mpg weight":点击运行})}
{* graph grline2}{...}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <line.sthlp>}