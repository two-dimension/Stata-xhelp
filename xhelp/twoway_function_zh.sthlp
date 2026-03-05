{smcl}
{* *! version 1.1.13  16apr2019}{...}
{viewerdialog twoway "dialog twoway"}{...}
{vieweralsosee "[G-2] graph twoway function" "mansection G-2 graphtwowayfunction"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[G-2] graph twoway line" "help line_zh"}{...}
{viewerjumpto "语法" "twoway_function_zh##syntax"}{...}
{viewerjumpto "菜单" "twoway_function_zh##menu"}{...}
{viewerjumpto "描述" "twoway_function_zh##description"}{...}
{viewerjumpto "PDF 文档链接" "twoway_function_zh##linkspdf"}{...}
{viewerjumpto "选项" "twoway_function_zh##options"}{...}
{viewerjumpto "备注" "twoway_function_zh##remarks"}
{help twoway_function:English Version}
{hline}{...}
{p2colset 1 32 34 2}{...}
{p2col:{bf:[G-2] graph twoway function} {hline 2}}二变量函数的双向线图{p_end}
{p2col:}({mansection G-2 graphtwowayfunction:查看完整 PDF 手册条目}){p_end}
{p2colreset}{...}


{marker syntax}{...}
{title:语法}

{p 8 35 2}
{cmdab:tw:oway}
{cmd:function}
[[{cmd:y}]=]
{it:f}({cmd:x})
{ifin}
[{cmd:,}
{it:options}]

{synoptset 20}{...}
{p2col:{it:options}}描述{p_end}
{p2line}
{p2col:{cmdab:ra:nge:(}{it:#} {it:#}{cmd:)}}在 {cmd:x} 上绘制从 {it:#} 到
       {it:#} 的图形{p_end}
{p2col:{opth ra:nge(varname)}}在 {cmd:x} 上绘制 {it:varname} 的最小值到最大值的图形{p_end}
{p2col:{cmd:n(}{it:#}{cmd:)}}在 {it:#} 个点处进行评估；默认值为 300{p_end}

{p2col:{cmdab:dropl:ines:(}{it:{help numlist_zh}}{cmd:)}}在指定的 {cmd:x} 值处绘制向轴线下的线{p_end}
{p2col:{cmd:base(}{it:#}{cmd:)}}用于 {cmd:dropline()} 的基准值；默认值为 0{p_end}

{p2col:{cmdab:hor:izontal}}水平绘制图形{p_end}

{p2col:{cmdab:yvarf:ormat:(}{help format_zh:{bf:%}{it:fmt}}{cmd:)}}{cmd:y} 的显示格式{p_end}
{p2col:{cmdab:xvarf:ormat:(}{help format_zh:{bf:%}{it:fmt}}{cmd:)}}{cmd:x} 的显示格式{p_end}

{p2col:{it:{help cline_options_zh}}}改变绘制的线的外观{p_end}

INCLUDE help gr_axlnk

INCLUDE help gr_twopt
{p2line}
{p2colreset}{...}
{p 4 6 2}
所有显式选项都是 {it:rightmost}，除了 {cmd:horizontal}，它是 {it:unique}；请参见 {help repeated options}.{p_end}
{p 4 6 2}
只有在指定选项 {cmd:range(}{it:varname}{cmd:)} 时，{cmd:if} {it:exp} 和 {cmd:in} {it:range} 才会发挥作用。{p_end}
{p 4 6 2}
在上面的语法图中，
{it:f}({cmd:x}) 代表一个关于 {cmd:x} 的 {it:exp}ression.{p_end}


{marker menu}{...}
{title:菜单}

{phang}
{bf:图形 > 双向图 (散点、线等)}


{marker description}{...}
{title:描述}

{pstd}
{cmd:twoway function} 绘制 {cmd:y} = {it:f}({cmd:x})，其中 {it:f}({cmd:x}) 是 {cmd:x} 的某个函数。
也就是说，你输入

	{cmd:. twoway function y=sqrt(x)}

{pstd}
无论 {cmd:y} 和 {cmd:x} 是否是数据中的变量，这没有区别。


{marker linkspdf}{...}
{title:PDF 文档链接}

        {mansection G-2 graphtwowayfunctionQuickstart:快速入门}

        {mansection G-2 graphtwowayfunctionRemarksandexamples:备注和示例}

{pstd}
上述部分不包括在此帮助文件中。


{marker options}{...}
{title:选项}

{phang}
{cmd:range(}{it:#} {it:#}{cmd:)}
和
{opth range(varname)}
    指定 {cmd:x} 的值范围。在第一个语法中，
    {cmd:range()} 是一对数字，识别最小值和最大值。
    在第二种语法中，{cmd:range()} 是变量名，使用该变量的最小值和最大值来确定范围。
    如果未指定 {cmd:range()}，则假定为 {cmd:range(0 1)}。

{phang}
{cmd:n(}{it:#}{cmd:)}
    指定在 {it:f}({cmd:x}) 被评估的点数。默认值为 {cmd:n(300)}。

{phang}
{cmd:droplines(}{it:{help numlist_zh}}{cmd:)}
    从函数绘制下至或上至轴线（如果 {cmd:base()} 被指定，则为 {cmd:y}={cmd:base()}）在每个指定的 {cmd:x} 值处添加掉落的线。

{phang}
{cmd:base(}{it:#}{cmd:)}
    指定 {cmd:droplines()} 的基准。默认值为
    {cmd:base(0)}。该选项不影响坐标轴的范围，因此你可能也想指定 {it:axis_scale_option}
    {cmd:yscale(range(}{it:#}{cmd:))}；请参见 
    {manhelpi axis_scale_options G-3}。

{phang}
{cmd:horizontal}
    指定交互 {cmd:y} 和 {cmd:x} 的角色，并且图形以水平而非垂直方式绘制（绘制的函数将在身份线上反射）。

{phang}
{cmd:yvarformat(%}{it:fmt}{cmd:)} 和
{cmd:xvarformat(%}{it:fmt}{cmd:)}
    指定用于 {cmd:y} 和 {cmd:x} 的显示格式。这些格式在标记坐标轴时使用；见 
    {manhelpi axis_label_options G-3}。

{phang}
{it:cline_options}
     指定函数线的渲染方式；
     见 {manhelpi cline_options G-3}。

INCLUDE help gr_axlnkf

INCLUDE help gr_twoptf


{marker remarks}{...}
{title:备注}

{pstd}
备注分为以下几个标题：

	{help twoway function##remarks1:典型使用}
	{help twoway function##remarks2:高级使用 1}
	{help twoway function##remarks3:高级使用 2}


{marker remarks1}{...}
{title:典型使用}

{* index functions, graphing}{...}
{pstd}
你希望在范围 0 到 4pi 上绘制函数 {cmd:y}=exp(-{cmd:x}/6)sin({cmd:x})：

	{cmd:. twoway function y=exp(-x/6)*sin(x), range(0 12.57)}
	  {it:({stata "twoway function y=exp(-x/6)*sin(x), range(0 12.57)":click to run})}
{* graph gtfunc1}{...}

{pstd}
上图的更好表现为

	{cmd}. twoway function y=exp(-x/6)*sin(x), range(0 12.57)
		yline(0, lstyle(foreground))
		xlabel( 0
                        3.14 "{c -(}&pi{c )-}"
                        6.28 "2{c -(}&pi{c )-}"
                        9.42 "3{c -(}&pi{c )-}"
                       12.57 "4{c -(}&pi{c )-}")
		plotregion(style(none))
		xsca(noline){txt}
	  {it:({stata "gr_example2 twofunc":click to run})}
{* graph twofunc}{...}

{pstd}
{cmd:yline(0, lstyle(foreground))}
在 {cmd:y}=0 处添加了一条线；{cmd:lstyle(foreground)} 使该线与坐标轴使用的样式相同。请参见 {manhelpi added_line_options G-3}。

{pstd}
{cmd:xlabel(0 3.14 "{c -(}&pi{c )-}" 6.28 "2{c -(}&pi{c )-}" 9.42 "3{c -(}&pi{c )-}" 12.57 "4{c -(}&pi{c )-}")}
使用给定的数值标记 {it:x} 轴，并用文本替代数值；见 
{manhelpi axis_label_options G-3}。

{pstd}
{cmd:plotregion(style(none))}
压制了绘图区域周围的边框；见 {manhelpi region_options G-3}。

{pstd}
{cmd:xsca(noline)}
压制了 {it:x}-轴线的绘制；
见 {manhelpi axis_scale_options G-3}。


{marker remarks2}{...}
{title:高级使用 1}

{pstd}
以下图形出现在许多入门教科书中：

	{cmd}. twoway
	      function y=normalden(x), range(-4 -1.96) color(gs12) recast(area)
	  ||  function y=normalden(x), range(1.96 4)   color(gs12) recast(area)
	  ||  function y=normalden(x), range(-4 4) lstyle(foreground)
	  ||,
	      plotregion(style(none))
	      ysca(off) xsca(noline)
	      legend(off)
	      xlabel(-4 "-4 sd" -3 "-3 sd" -2 "-2 sd" -1 "-1 sd" 0 "mean"
		      1  "1 sd"  2  "2 sd"  3  "3 sd"  4  "4 sd"
		      , grid gmin gmax)
	      xtitle(""){txt}
	  {it:({stata "gr_example2 twofunc2":click to run})}
{* graph twofunc2}{...}

{pstd}
我们将图形分为三部分：左侧的阴影区域、右侧的阴影区域，然后是整体函数。为了获得
阴影区域，我们使用了 {it:advanced_option} {cmd:recast(area)}，以便
绘图时不再使用 {cmd:graph} {cmd:twoway} {cmd:line}，而是使用 {cmd:graph} {cmd:twoway} {cmd:area}；见 
{manhelpi advanced_options G-3} 和
{manhelp twoway_area G-2:graph twoway area}。
关于整体函数，我们最后绘制它，以便其较深的前景色线不会被阴影区覆盖。


{marker remarks3}{...}
{title:高级使用 2}

{* index added lines, y=x}{...}
{pstd}
{cmd:function} 图可以与其他 {cmd:twoway} 图层叠加。
例如，{cmd:function} 是将 {it:y}={it:x} 线添加到图形的一种方法：

	{cmd:. sysuse sp500, clear}

	{cmd:. scatter open close, msize(*.25) mcolor(*.6) ||}
	{cmd:  function y=x, range(close) yvarlab("y=x") clwidth(*1.5)}
	  {it:({stata `"gr_example sp500: scatter open close, msize(*.25) mcolor(*.6) || function y=x, range(close) yvarlab("y=x")"':click to run})}
{* graph gtfunc2}{...}

{pstd}
在上述代码中，我们指定了 {it:advanced_option} {cmd:yvarlab("y=x")}
以便 {it:y} 的变量标签在构建图例时被视为 "y=x"；见 {manhelpi advanced_options G-3}。
我们指定了 {cmd:msize(*.25)} 以缩小标记符号，并指定了 {cmd:mcolor(*.6)} 以使其颜色更暗淡；见 
{manhelpi size G-4}
和 
{manhelpi colorstyle G-4}。
{p_end}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <twoway_function.sthlp>}