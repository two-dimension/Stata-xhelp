{smcl}
{* *! version 1.1.13  19oct2017}{...}
{viewerdialog twoway "dialog twoway"}{...}
{vieweralsosee "[G-2] graph twoway lfitci" "mansection G-2 graphtwowaylfitci"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[G-2] graph twoway fpfitci" "help twoway_fpfitci_zh"}{...}
{vieweralsosee "[G-2] graph twoway qfitci" "help twoway_qfitci_zh"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[G-2] graph twoway lfit" "help twoway_lfit_zh"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[R] regress" "help regress_zh"}{...}
{viewerjumpto "Syntax" "twoway_lfitci_zh##syntax"}{...}
{viewerjumpto "Menu" "twoway_lfitci_zh##menu"}{...}
{viewerjumpto "Description" "twoway_lfitci_zh##description"}{...}
{viewerjumpto "Links to PDF documentation" "twoway_lfitci_zh##linkspdf"}{...}
{viewerjumpto "Options" "twoway_lfitci_zh##options"}{...}
{viewerjumpto "Remarks" "twoway_lfitci_zh##remarks"}
{help twoway_lfitci:English Version}
{hline}{...}
{p2colset 1 30 32 2}{...}
{p2col:{bf:[G-2] graph twoway lfitci} {hline 2}}双变量线性预测图与置信区间{p_end}
{p2col:}({mansection G-2 graphtwowaylfitci:查看完整PDF手册条目}){p_end}
{p2colreset}{...}


{marker syntax}{...}
{title:语法}

{p 8 54 2}
{cmdab:tw:oway}
{cmd:lfitci}
{it:yvar} {it:xvar}
{ifin}
[{it:{help twoway lfitci##weight:权重}}]
[{cmd:,}
{it:选项}]

{synoptset 27}{...}
{p2col:{it:选项}}描述{p_end}
{p2line}
{p2col:{cmd:stdp}}来自预测标准误的置信区间；默认{p_end}
{p2col:{cmd:stdf}}来自预测的标准误的置信区间{p_end}
{p2col:{cmd:stdr}}来自残差的标准误的置信区间；很少指定{p_end}
{p2col:{cmd:level(}{it:#}{cmd:)}}设定置信水平；默认是
       {cmd:level(95)}{p_end}

{p2col:{cmdab:r:ange:(}{it:#} {it:#}{cmd:)}}计算预测的范围{p_end}
{p2col:{cmd:n(}{it:#}{cmd:)}}预测点的数量{p_end}
{p2col:{cmd:atobs}}在{it:xvar}处计算预测{p_end}
{p2col:{cmdab:est:opts:(}{it:{help regress_zh:回归选项}}{cmd:)}}{cmd:regress}的选项{p_end}
{p2col:{cmdab:pred:opts:(}{it:{help regress postestimation##predict:预测选项}}{cmd:)}}{cmd:predict}的选项{p_end}

{p2col:{cmd:nofit}}不绘制预测{p_end}
{p2col:{cmdab:fitp:lot:(}{it:{help graph_twoway_zh:绘图类型}}{cmd:)}}绘制拟合的方法；默认是 {cmd:fitplot(line)}{p_end}
{p2col:{cmdab:cip:lot:(}{it:{help graph_twoway_zh:绘图类型}}{cmd:)}}绘制置信区间的方法；默认是 {cmd:ciplot(rarea)}{p_end}

{p2col:{it:{help fcline_options_zh}}}改变预测线的外观{p_end}
{p2col:{it:{help fitarea_options_zh}}}改变置信区间的外观{p_end}

INCLUDE help gr_axlnk

INCLUDE help gr_twopt
{p2line}
{p2colreset}{...}
{p 4 6 2}
选项
{cmd:range()}, {cmd:estopts()}, {cmd:predopts()}, {cmd:n()}和{cmd:level()}是{it:最右边的}; {cmd:atobs}, {cmd:nofit}, {cmd:fitplot()}, {cmd:ciplot()},
{cmd:stdp}, {cmd:stdf}和{cmd:stdr}是{it:唯一的}; 见
{help 重复选项}.{p_end}
{p 4 6 2}{it:yvar}和{it:xvar}可以包含时间序列操作符；见
{help tsvarlist_zh}.{p_end}
{marker weight}{...}
{p 4 6 2}
{cmd:aweight}s,
{cmd:fweight}s, 和
{cmd:pweight}s被允许。如果指定了权重，它们会影响估计，但
不影响加权结果的绘制。见{help weight_zh}。


{marker menu}{...}
{title:菜单}

{phang}
{bf:图形 > 双变量图（散点图、线图等）}


{marker description}{...}
{title:描述}

{pstd}
{cmd:twoway} {cmd:lfitci}通过对{it:yvar} 进行线性回归获得预测值，并绘制出结果线以及置信区间。


{marker linkspdf}{...}
{title:链接到PDF文档}

        {mansection G-2 graphtwowaylfitci快速开始:快速开始}

        {mansection G-2 graphtwowaylfitci备注和示例:备注和示例}

{pstd}
以上部分不包含在本帮助文件中。


{marker options}{...}
{title:选项}

{phang}
{cmd:stdp},
{cmd:stdf}, 和
{cmd:stdr}
    决定置信区间的基础。{cmd:stdp}是默认值。

{pmore}
    {cmd:stdp}指定置信区间为均值的置信区间。

{pmore}
    {cmd:stdf}指定置信区间为个体预测的置信区间，包括均值预测和残差的不确定性。

{pmore}
    {cmd:stdr}指定置信区间仅基于残差的标准误。

{phang}
{cmd:level(}{it:#}{cmd:)}
指定置信区间的置信水平，以百分比表示。默认值为{cmd:level(95)}或通过{helpb set level}设置。

{phang}
{cmd:range(}{it:#} {it:#}{cmd:)}
    指定计算预测的{it:x}范围。默认值为{cmd:range(. .)}，表示{it:xvar}的最小值和最大值。 {cmd:range(0 10)}将范围设为从0到10，{cmd:range(. 10)}将范围设为最小值到10，而{cmd:range(0 .)}将范围设为从0到最大值。

{phang}
{cmd:n(}{it:#}{cmd:)}
    指定在{cmd:range()}上计算预测和置信区间的点数。默认值为{cmd:n(100)}。

{phang}
{cmd:atobs}
是{cmd:n()}的替代选项，指定在{it:xvar}值处计算预测。如果指定了{cmd:predopts()}，并请求任何统计量（除了{cmd:xb}以外），则默认使用{cmd:atobs}。

{phang}
{cmd:estopts(}{it:regress_options}{cmd:)}
    指定传递给{cmd:regress}的选项，以估计将要预测的线性回归；见{manhelp regress R}。如果指定了此选项，通常还会指定{cmd:estopts(nocons)}。

{phang}
{cmd:predopts(}{it:predict_options}{cmd:)}
    指定传递给{cmd:predict}的选项，以在{cmd:regress}估计之后获取预测；见{manhelp regress_postestimation R:回归后估计}。

{phang}
{cmd:nofit}
    防止绘制预测。

{phang}
{cmd:fitplot(}{it:plottype}{cmd:)}, 很少使用，指定如何绘制预测。默认是 {cmd:fitplot(line)}，表示预测将由{cmd:graph} {cmd:twoway} {cmd:line}绘制。见{manhelp graph_twoway G-2:graph twoway}，以获取{it:plottype}选项的列表。可以选择任何期望一个{it:y}和一个{it:x}变量的选项。

{phang}
{cmd:ciplot(}{it:plottype}{cmd:)}
    指定置信区间的绘制方式。默认是 {cmd:ciplot(rarea)}，这意味着预测将由{cmd:graph} {cmd:twoway} {cmd:rarea}绘制。

{pmore}
    合理的替代方案是 {cmd:ciplot(rline)}，它将在预测周围代替阴影绘制线条。
    见{manhelp graph_twoway G-2:graph twoway}，以获取{it:plottype}的选择列表。可以选择任何期望两个{it:y}变量和一个{it:x}变量的选项。

{phang}
{it:fcline_options}
     指定如何呈现预测线；见{manhelpi fcline_options G-3}。
     如果您指定了{cmd:fitplot()}，则应选择影响所指定的{it:plottype}的选项，而不是使用{it:fcline_options}，见{manhelp scatter G-2:graph twoway scatter}。

{phang}
{it:fitarea_options}
     指定置信区间的呈现方式；见{manhelpi fitarea_options G-3}。
     如果您指定了{cmd:ciplot()}，则应指定适当的内容，而不是使用{it:fitarea_options}。

INCLUDE help gr_axlnkf

INCLUDE help gr_twoptf


{marker remarks}{...}
{title:备注}

{pstd}
备注分为以下几部分：

        {help twoway_lfitci##remarks1:典型使用}
        {help twoway_lfitci##remarks2:高级使用}
        {help twoway_lfitci##remarks3:注意事项}
        {help twoway_lfitci##remarks4:与by()一起使用}


{marker remarks1}{...}
{title:典型使用}

{pstd}
{cmd:twoway} {cmd:lfitci} 默认绘制预测均值的置信区间：

	{cmd:. sysuse auto}

	{cmd:. twoway lfitci mpg weight}
	  {it:({stata "gr_example auto: twoway lfitci mpg weight":点击运行})}
{* graph gtlfitci1}{...}

{pstd}
如果您指定了{cmd:ciplot(rline)}选项，则置信区间将由线条表示，而不是阴影：

	{cmd:. twoway lfitci mpg weight, ciplot(rline)}
	  {it:({stata "gr_example auto: twoway lfitci mpg weight, ciplot(rline)":点击运行})}
{* graph gtlfitci2}{...}


{marker remarks2}{...}
{title:高级使用}

{pstd}
{cmd:lfitci} 可以有效地与其他图形叠加：

	{cmd:. sysuse auto, clear}

{phang2}
	{cmd:. twoway lfitci mpg weight, stdf || scatter mpg weight}
{p_end}
	  {it:({stata "gr_example auto: twoway lfitci mpg weight, stdf || scatter mpg weight":点击运行})}
{* graph gtlfitci3}{...}

{pstd}
在上述示例中，我们指定了{cmd:stdf}以获得基于预测的标准误的置信区间，而不是均值的标准误。这对于识别异常值更有用。

{pstd}
我们输入了

	{cmd:. twoway lfitci} ... {cmd:|| scatter} ...

{pstd}
而不是

	{cmd:. twoway scatter} ... {cmd:|| lfitci} ...

{pstd}
如果我们先绘制散点图，置信区间将会覆盖大部分点。


{marker remarks3}{...}
{title:注意事项}

{pstd}
在指定{it:axis_scale_options} {help axis_scale_options_zh:yscale(log)} 或
{help axis_scale_options_zh:xscale(log)}创建对数刻度时，请勿使用 {cmd:twoway} {cmd:lfitci}。输入

{phang2}
	{cmd:. twoway lfitci mpg weight, stdf || scatter mpg weight ||, xscale(log)}
{p_end}
	  {it:({stata "gr_example auto:twoway lfitci mpg weight, stdf || scatter mpg weight ||, xscale(log)":点击运行})}
{* graph gtlfitci4}{...}

{pstd}
结果可能看起来很漂亮，但仔细想想，这并不是您想要的。预测线不是直的，因为用于预测的回归是 {cmd:mpg} 对 {cmd:weight} 的，而不是 {cmd:mpg} 对 {cmd:log(weight)} 的回归。


{marker remarks4}{...}
{title:与by()一起使用}

{pstd}
{cmd:lfitci} 可以与 {cmd:by()} 一起使用（所有 {cmd:twoway} 绘图命令均可）：

	{cmd}. twoway lfitci  mpg weight, stdf ||
	         scatter mpg weight       ||
          , by(foreign, total row(1)){txt}
	  {it:({stata "gr_example auto: twoway lfitci mpg weight, stdf || scatter mpg weight || , by(foreign, total row(1))":点击运行})}
{* graph gtlfitci5}{...}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <twoway_lfitci.sthlp>}