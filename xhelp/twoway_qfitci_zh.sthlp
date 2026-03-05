{smcl}
{* *! version 1.1.12  19oct2017}{...}
{viewerdialog twoway "dialog twoway"}{...}
{vieweralsosee "[G-2] graph twoway qfitci" "mansection G-2 graphtwowayqfitci"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[G-2] graph twoway fpfitci" "help twoway_fpfitci_zh"}{...}
{vieweralsosee "[G-2] graph twoway lfitci" "help twoway_lfitci_zh"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[G-2] graph twoway qfit" "help twoway_qfit_zh"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[R] regress" "help regress_zh"}{...}
{viewerjumpto "Syntax" "twoway_qfitci_zh##syntax"}{...}
{viewerjumpto "Menu" "twoway_qfitci_zh##menu"}{...}
{viewerjumpto "Description" "twoway_qfitci_zh##description"}{...}
{viewerjumpto "Links to PDF documentation" "twoway_qfitci_zh##linkspdf"}{...}
{viewerjumpto "Options" "twoway_qfitci_zh##options"}{...}
{viewerjumpto "Remarks" "twoway_qfitci_zh##remarks"}
{help twoway_qfitci:English Version}
{hline}{...}
{p2colset 1 30 32 2}{...}
{p2col:{bf:[G-2] graph twoway qfitci} {hline 2}}二次曲线预测图与置信区间{p_end}
{p2col:}({mansection G-2 graphtwowayqfitci:查看完整PDF手册条目}){p_end}
{p2colreset}{...}


{marker syntax}{...}
{title:语法}

{p 8 24 2}
{cmdab:tw:oway}
{cmd:qfitci}
{it:yvar} {it:xvar}
{ifin}
[{it:{help twoway qfitci##weight:weight}}]
[{cmd:,}
{it:选项}]

{synoptset 27}{...}
{p2col:{it:选项}}描述{p_end}
{p2line}
{p2col:{cmd:stdp}}基于预测的标准误计算的置信区间；默认选项{p_end}
{p2col:{cmd:stdf}}基于预测的标准误计算的置信区间{p_end}
{p2col:{cmd:stdr}}基于残差的标准误计算的置信区间；很少指定{p_end}
{p2col:{cmd:level(}{it:#}{cmd:)}}设置置信水平；默认为
       {cmd:level(95)}{p_end}

{p2col:{cmdab:r:ange:(}{it:#} {it:#}{cmd:)}}计算预测的范围{p_end}
{p2col:{cmd:n(}{it:#}{cmd:)}}预测点的数量{p_end}
{p2col:{cmd:atobs}}在{it:xvar}处计算预测值{p_end}
{p2col:{cmdab:est:opts:(}{it:{help regress_zh:regress_options}}{cmd:)}}传递给
       {cmd:regress}的选项{p_end}
{p2col:{cmdab:pred:opts:(}{it:{help regress postestimation##predict:predict_options}}{cmd:)}}传递给
       {cmd:predict}的选项{p_end}

{p2col:{cmd:nofit}}不绘制预测线{p_end}
{p2col:{cmdab:fitp:lot:(}{it:{help graph_twoway_zh:plottype}}{cmd:)}}指定绘制
       拟合线的方式；默认选项为 {cmd:fitplot(line)}{p_end}
{p2col:{cmdab:cip:lot:(}{it:{help graph_twoway_zh:plottype}}{cmd:)}}指定绘制
       置信区间的方式；默认选项为 {cmd:ciplot(rarea)}{p_end}

{p2col:{it:{help fcline_options_zh}}}更改预测线的外观{p_end}
{p2col:{it:{help fitarea_options_zh}}}更改置信区间的外观{p_end}

包含 help gr_axlnk

包含 help gr_twopt
{p2line}
{p2colreset}{...}
{p 4 6 2}
选项
{cmd:range()}, {cmd:estopts()}, {cmd:predopts()}, {cmd:n()} 和 {cmd:level()}
是 {it:右侧的}; {cmd:atobs}, {cmd:nofit}, {cmd:fitplot()}, {cmd:ciplot()},
{cmd:stdp}, {cmd:stdf}, 和 {cmd:stdr} 是 {it:唯一的}; 参见
{help 重复选项}.{p_end}
{p 4 6 2}{it:yvar} 和 {it:xvar} 可以包含时间序列操作符；见
{help tsvarlist_zh}.{p_end}
{marker weight}{...}
{p 4 6 2}
{cmd:aweight}s,
{cmd:fweight}s, 和
{cmd:pweight}s 是允许的。 如果指定权重，则会影响估计结果，但
不会影响加权结果的绘制。 见 {help weight_zh}.


{marker menu}{...}
{title:菜单}

{phang}
{bf:图形 > 二维图形（散点图、线图等）}


{marker description}{...}
{title:描述}

{pstd}
{cmd:twoway} {cmd:qfitci} 根据对 {it:yvar} 和 {it:xvar} 的回归计算
预测，并绘制相应的线以及置信区间。


{marker linkspdf}{...}
{title:PDF文档链接}

        {mansection G-2 graphtwowayqfitciQuickstart:快速入门}

        {mansection G-2 graphtwowayqfitciRemarksandexamples:备注和示例}

{pstd}
上述部分不包括在此帮助文件中。


{marker options}{...}
{title:选项}

{phang}
{cmd:stdp},
{cmd:stdf}，和
{cmd:stdr}
    决定置信区间的基础。 默认为 {cmd:stdp}。

{pmore}
    {cmd:stdp} 指定置信区间为均值的置信区间。

{pmore}
    {cmd:stdf} 指定置信区间为单个预测的置信区间，包括均值预测的不确定性和残差。

{pmore}
    {cmd:stdr} 指定置信区间仅基于残差的标准误。

{phang}
{cmd:level(}{it:#}{cmd:)}
指定置信水平，以百分比表示，针对置信区间。 默认值为 {cmd:level(95)} 或根据 {helpb set level} 设置。

{phang}
{cmd:range(}{it:#} {it:#}{cmd:)}
    指定计算预测的 {it:x} 范围。
    默认值为 {cmd:range(. .)} ，表示 {it:xvar} 的最小值和最大值。 {cmd:range(0 10)} 会将范围设定为 0 到 10， {cmd:range(. 10)} 会将范围设定为最小值到 10，而 {cmd:range(0 .)} 会将范围设定为 0 到最大值。

{phang}
{cmd:n(}{it:#}{cmd:)}
    指定根据 {cmd:range()}计算预测和置信区间的点数。 默认值为 {cmd:n(100)}。

{phang}
{cmd:atobs}
是 {cmd:n()} 的替代方式，指定在 {it:xvar} 值处计算预测。 如果指定了
{cmd:predopts()}，那么 {cmd:atobs} 是默认选项，且请求的任何统计量都不是 {cmd:xb}。

{phang}
{cmd:estopts(}{it:regress_options}{cmd:)}
    指定传递给 {cmd:regress} 的选项，以便估计用于从中预测曲线的线性回归；
    见 {manhelp regress R}。 如果指定此选项，通常的指定为 {cmd:estopts(nocons)}。

{phang}
{cmd:predopts(}{it:predict_options}{cmd:)}
    指定传递给 {cmd:predict} 的选项，以便在 {cmd:regress} 估计后获取预测；
    见 {manhelp regress_postestimation R:regress postestimation}。

{phang}
{cmd:nofit}
    阻止绘制预测。

{phang}
{cmd:fitplot(}{it:plottype}{cmd:)}, 虽然很少使用，指定如何绘制预测。 默认选项是
{cmd:fitplot(line)}，这意味着预测将通过 {cmd:graph} {cmd:twoway} {cmd:line} 绘制。
参见 {manhelp graph_twoway G-2:graph twoway} 获取 {it:plottype} 选择的列表。
您可以选择任何期望一个 {it:y} 和一个 {it:x} 变量的选项。

{phang}
{cmd:ciplot(}{it:plottype}{cmd:)}

指定如何绘制置信区间。 默认选项是 {cmd:ciplot(rarea)}，这意味着预测将通过
{cmd:graph} {cmd:twoway} {cmd:rarea} 绘制。

{pmore}
    一个合理的替代方式是 {cmd:ciplot(rline)}，这会用线替代阴影展示预测周围的区域。
    参见 {manhelp graph_twoway G-2:graph twoway} 获取 {it:plottype} 选择的列表。您可以选择任何期望两个 {it:y} 变量和一个 {it:x} 变量的选项。

{phang}
{it:fcline_options}
     指定预测线的呈现方式；
     见 {manhelpi fcline_options G-3}。
     如果您指定了 {cmd:fitplot()}，则应选择影响指定的 {it:plottype}
     的选项，而不是使用 {it:fcline_options}，这来自于 {cmd:scatter} 的选项；
     见 {manhelp scatter G-2:graph twoway scatter}。

{phang}
{it:fitarea_options}
     指定置信区间的呈现方式；见 
     {manhelpi fitarea_options G-3}。如果您指定了 {cmd:ciplot()}，那么您应指定
     任何适当的选项。

包含 help gr_axlnkf

包含 help gr_twoptf


{marker remarks}{...}
{title:备注}

{pstd}
备注在以下标题下呈现：

	{help twoway qfitci##remarks1:典型用法}
	{help twoway qfitci##remarks2:高级用法}
	{help twoway qfitci##remarks3:注意事项}
	{help twoway qfitci##remarks4:与by()一起使用}


{marker remarks1}{...}
{title:典型用法}

{pstd}
{cmd:twoway} {cmd:qfitci} 默认绘制预测均值的置信区间：

	{cmd:. sysuse auto}

	{cmd:. twoway qfitci mpg weight}
	  {it:({stata "gr_example auto: twoway qfitci mpg weight":点击运行})}
{* graph gtqfitci1}{...}

{pstd}
如果您指定 {cmd:ciplot(rline)} 选项，它将使用线条表示置信区间，而非阴影：

	{cmd:. twoway qfitci mpg weight, ciplot(rline)}
	  {it:({stata "gr_example auto: twoway qfitci mpg weight, ciplot(rline)":点击运行})}
{* graph gtqfitci2}{...}


{marker remarks2}{...}
{title:高级用法}

{pstd}
{cmd:qfitci} 可以与其他图形重叠：

	{cmd:. sysuse auto, clear}

	{cmd:. twoway qfitci mpg weight, stdf || scatter mpg weight}
	  {it:({stata "gr_example auto: twoway qfitci mpg weight, stdf || scatter mpg weight":点击运行})}
{* graph gtqfitci3}{...}

{pstd}
在上面的命令中，我们指定了 {cmd:stdf} 以获得基于预测标准误的置信区间，而不是基于均值的标准误。这对于识别离群值更有用。

{pstd}
我们输入了

	{cmd:. twoway qfitci} ... {cmd:|| scatter} ...

{pstd}
而不是

	{cmd:. twoway scatter} ... {cmd:|| qfitci} ...

{pstd}
如果我们首先绘制散点图，置信区间将覆盖大部分点。


{marker remarks3}{...}
{title:注意事项}

{pstd}
在指定 {it:axis_scale_options} {help axis_scale_options_zh:yscale(log)} 或
{help axis_scale_options_zh:xscale(log)} 创建对数比例时，请不要使用 {cmd:twoway} {cmd:qfitci}。
输入

	{cmd:. twoway qfitci mpg weight, stdf || scatter mpg weight ||, xscale(log)}
	  {it:({stata "gr_example auto:twoway qfitci mpg weight, stdf || scatter mpg weight ||, xscale(log)":点击运行})}
{* graph gtqfitci4}{...}

{pstd}
结果可能看起来不错，但如果您仔细考虑，就会发现这并不是您想要的。 预测线不是抛物线，因为用于预测的回归是基于 {cmd:mpg} 对 {cmd:weight} 和 {cmd:weight^2} 的，而不是 {cmd:mpg} 对 {cmd:log(weight)} 和 {cmd:log(weight)^2} 的回归。


{marker remarks4}{...}
{title:与by()一起使用}

{pstd}
{cmd:qfitci}可以与 {cmd:by()} 一起使用（所有 {cmd:twoway} 绘图命令也可如此）：

	{cmd}. twoway qfitci  mpg weight, stdf ||
		 scatter mpg weight       ||
	  , by(foreign, total row(1)){txt}
	  {it:({stata "gr_example auto: twoway qfitci mpg weight, stdf || scatter mpg weight || , by(foreign, total row(1))":点击运行})}
{* graph gtqfitci5}{...}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <twoway_qfitci.sthlp>}