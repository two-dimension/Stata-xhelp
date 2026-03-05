{smcl}
{* *! version 1.2.10  19oct2017}{...}
{viewerdialog twoway "dialog twoway"}{...}
{vieweralsosee "[G-2] graph twoway area" "mansection G-2 graphtwowayarea"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[G-2] graph twoway scatter" "help scatter_zh"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[G-2] graph twoway dot" "help twoway_dot_zh"}{...}
{vieweralsosee "[G-2] graph twoway dropline" "help twoway_dropline_zh"}{...}
{vieweralsosee "[G-2] graph twoway histogram" "help twoway_histogram_zh"}{...}
{vieweralsosee "[G-2] graph twoway spike" "help twoway_spike_zh"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[G-2] graph bar" "help graph_bar_zh"}{...}
{viewerjumpto "Syntax" "twoway_area_zh##syntax"}{...}
{viewerjumpto "Menu" "twoway_area_zh##menu"}{...}
{viewerjumpto "Description" "twoway_area_zh##description"}{...}
{viewerjumpto "Links to PDF documentation" "twoway_area_zh##linkspdf"}{...}
{viewerjumpto "Options" "twoway_area_zh##options"}{...}
{viewerjumpto "Remarks" "twoway_area_zh##remarks"}
{help twoway_area:English Version}
{hline}{...}
{p2colset 1 28 30 2}{...}
{p2col:{bf:[G-2] graph twoway area} {hline 2}}双变量面积线图{p_end}
{p2col:}({mansection G-2 graphtwowayarea:查看完整的PDF手册条目}){p_end}
{p2colreset}{...}


{marker syntax}{...}
{title:语法}

{p 8 53 2}
{cmdab:tw:oway}
{cmd:area}
{it:yvar} {it:xvar}
{ifin}
[{cmd:,}
{it:选项}]

{synoptset 20}{...}
{p2col:{it:选项}}描述{p_end}
{p2line}
{p2col:{cmdab:垂直}}垂直面积图；默认为此{p_end}
{p2col:{cmdab:水平}}水平面积图{p_end}
{p2col:{cmdab:缺失(}{cmd:y}|{cmd:n}{cmd:)}}缺失值不强制在面积中形成间隔；默认是 {cmd:cmissing(y)}{p_end}
{p2col:{cmd:基数(}{it:#}{cmd:)}}下降到的值；默认是 0{p_end}
{p2col:{cmdab:不下降基数}}程序员选项{p_end}
{p2col:{cmd:排序}}按 {it:xvar} 排序；建议使用{p_end}

INCLUDE help gr_areaopt

INCLUDE help gr_axlnk

INCLUDE help gr_twopt
{p2line}
{p2colreset}{...}
{p 4 6 2}
选项 {cmd:基数()} 是 {it:最右边}； {cmd:垂直}、{cmd:水平}、{cmd:不下降基数} 和 {cmd:排序} 是 {it:唯一的}；请参见 {help 重复选项}。


{marker menu}{...}
{title:菜单}

{phang}
{bf:图形 > 双变量图（散点、线等）}


{marker description}{...}
{title:描述}

{pstd}
{cmd:twoway} {cmd:area} 显示（{it:y}，{it:x}）通过直线连接并在下方填充阴影。


{marker linkspdf}{...}
{title:PDF文档链接}

        {mansection G-2 graphtwowayareaQuickstart:快速开始}

        {mansection G-2 graphtwowayareaRemarksandexamples:备注和示例}

{pstd}
以上部分未包含在此帮助文件中。


{marker options}{...}
{title:选项}

{phang}
{cmd:垂直} 和 {cmd:水平}
    指定垂直或水平面积图。{cmd:垂直} 为默认。如果指定 {cmd:水平}，
    则 {it:yvar} 中记录的值作为 {it:x} 值处理，而 {it:xvar} 中记录的值作为 {it:y} 值处理。
    此即，制作水平图时，请勿交换指定的两个变量的顺序。

{pmore}
    在 {cmd:垂直} 的情况下，每个 {it:xvar}
    值处的阴影从 0 向上或向下延伸，根据相应的 {it:yvar} 值来定。如果 0 不在 {it:y} 轴的范围内，
    阴影将一直延伸到 {it:x} 轴。

{pmore}
    在 {cmd:水平} 的情况下，每个 {it:xvar}
    值处的阴影从 0 向左或向右延伸，根据相应的 {it:yvar} 值来定。如果 0 不在 {it:x} 轴的范围内，
    阴影将一直延伸到 {it:y} 轴。

{phang}
{cmd:cmissing(}{cmd:y}|{cmd:n}{cmd:)}
    指定在绘制面积时是否忽略缺失值，或是否应该创建面积中的断点。默认值是
    {cmd:cmissing(y)}，意味着将被忽略。考虑下面的数据：

	    {txt}
		 {c TLC}{hline 9}{c -}{hline 3}{c TRC}
		 {c |} {res}  y1  y2  x {txt}{c |}
		 {c LT}{hline 9}{c -}{hline 3}{c RT}
	      1. {c |} {res}  1   2   1 {txt}{c |}
	      2. {c |} {res}  3   5   2 {txt}{c |}
	      3. {c |} {res}  5   4   3 {txt}{c |}
	      4. {c |} {res}  .   .   . {txt}{c |}
	      5. {c |} {res}  6   7   5 {txt}{c |}
		 {c LT}{hline 9}{c -}{hline 3}{c RT}
	      6. {c |} {res} 11  12   8 {txt}{c |}
		 {c BLC}{hline 9}{c -}{hline 3}{c BRC}{txt}

{pmore}
假设您使用 {cmd:twoway} {cmd:area} {cmd:y1} 
{cmd:y2} {cmd:x} 绘制这些数据。
您想要在观察值3和5之间的面积中断吗？如果是，您输入

	    {cmd:. twoway area y1 y2 x, cmissing(n)}

{pmore}
将绘制两个区域，一个代表缺失值在观察值4之前的观测值，另一个代表缺失值在观察值之后的观测值。

{pmore}
如果省略该选项（或输入 {cmd:cmissing(y)}），数据将被处理为：

	    {txt}
		 {c TLC}{hline 9}{c -}{hline 3}{c TRC}
		 {c |} {res}  y1  y2  x {txt}{c |}
		 {c LT}{hline 9}{c -}{hline 3}{c RT}
	      1. {c |} {res}  1   2   1 {txt}{c |}
	      2. {c |} {res}  3   5   2 {txt}{c |}
	      3. {c |} {res}  5   4   3 {txt}{c |}
	      4. {c |} {res}  6   7   5 {txt}{c |}
	      5. {c |} {res} 11  12   8 {txt}{c |}
		 {c BLC}{hline 9}{c -}{hline 3}{c BRC}{txt}

{pmore}
这意味着将在范围(1,8)内绘制一个连续的区域。

{phang}
{cmd:base(}{it:#}{cmd:)}
    指定阴影应延伸的值。
    默认值是 {cmd:base(0)}，在上述选项的描述中
    也假设了该默认值。

{phang}
{cmd:不下降基数} 是程序员选项，是 {cmd:base()} 的替代方案。它指定被填充的区域将不下降到
    {cmd:base(}{it:#}{cmd:)} -- 或 {cmd:base(0)} -- 而是下降到由
    ({it:y_1},{it:x_1}) 和 ({it:y_N},{it:x_N}) 形成的线，其中
    （{it:y_1},{it:x_1}）是要绘制的第一条观察值中的 {it:y} 和 {it:x} 值，而
    ({it:y_N},{it:x_N}) 是要绘制的最后一条观察值中的值。

{phang}
{cmd:排序}
    指定在绘图之前按 {it:xvar} 排序数据。

{phang}
{it:面积选项}
    设置阴影区域的外观。其中最重要的选项是
    {cmd:color(}{it:colorstyle}{cmd:)}, 该选项指定了区域及其轮廓的颜色和不透明度；请参见 {manhelpi colorstyle G-4} 获取颜色选择列表。有关其他 {it:面积选项} 的信息，请参见 {manhelpi area_options G-3}。

INCLUDE help gr_axlnkf

INCLUDE help gr_twoptf


{marker remarks}{...}
{title:备注}

{pstd}
备注在以下标题下呈现：

	{help twoway_area##remarks1:典型用法}
	{help twoway_area##remarks2:高级用法}
	{help twoway_area##remarks3:注意事项}


{marker remarks1}{...}
{title:典型用法}

{pstd}
我们有季度数据记录美国1996年不变美元的国民生产总值（GNP）：

	{cmd:. sysuse gnp96}

	{cmd:. list in 1/5}
	{txt}
	     {c TLC}{hline 8}{c -}{hline 8}{c TRC}
	     {c |} {res}  date    gnp96 {txt}{c |}
	     {c LT}{hline 8}{c -}{hline 8}{c RT}
	  1. {c |} {res}1967q1   3631.6 {txt}{c |}
	  2. {c |} {res}1967q2   3644.5 {txt}{c |}
	  3. {c |} {res}1967q3     3672 {txt}{c |}
	  4. {c |} {res}1967q4   3703.1 {txt}{c |}
	  5. {c |} {res}1968q1   3757.5 {txt}{c |}
	     {c BLC}{hline 8}{c -}{hline 8}{c BRC}{txt}

{pstd}
我们认为，只有在区域有意义时，底下的区域才应被填充：

	{cmd:. sysuse gnp96, clear}

	{cmd:. twoway area d.gnp96 date}
	  {it:({stata "gr_example gnp96: twoway area d.gnp96 date":点击运行})}
{* graph gtarea1}{...}


{marker remarks2}{...}
{title:高级用法}

{pstd}
这是相同的图，但利用一些高级选项得到了很大的改善：

	{cmd}. twoway area d.gnp96 date, xlabel(36(8)164, angle(90))
		ylabel(-100(50)200, angle(0))
		ytitle("1996年的十亿美元")
		xtitle("")
		subtitle("美国GNP变动", position(11))
		note("来源：美国商务部，
		      经济分析局"){txt}
	  {it:({stata "gr_example2 twoarea":点击运行})}
{* graph twoarea}{...}


{marker remarks3}{...}
{title:注意事项}

{pstd}
确保数据按 {it:xvar} 的顺序排列，或指定 {cmd:area} 的
{cmd:sort} 选项。如果您不这样做，您将得到看起来像现代艺术的结果：

	{cmd:. sysuse gnp96, clear}

	{cmd:. generate d = d.gnp96}

	{cmd:. generate u = runiform()}

	{cmd:. sort u}                     (随机排序)

	{cmd:. twoway area d date}
	  {it:({stata "gr_example2 twoarea2":点击运行})}
{* graph twoarea2}{...}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <twoway_area.sthlp>}