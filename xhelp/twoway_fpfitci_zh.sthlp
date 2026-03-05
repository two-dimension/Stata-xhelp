{smcl}
{* *! version 1.1.11  19oct2017}{...}
{viewerdialog twoway "dialog twoway"}{...}
{vieweralsosee "[G-2] graph twoway fpfitci" "mansection G-2 graphtwowayfpfitci"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[G-2] graph twoway lfitci" "help twoway_lfitci_zh"}{...}
{vieweralsosee "[G-2] graph twoway qfitci" "help twoway_qfitci_zh"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[G-2] graph twoway fpfit" "help twoway_fpfit_zh"}{...}
{viewerjumpto "Syntax" "twoway_fpfitci_zh##syntax"}{...}
{viewerjumpto "Menu" "twoway_fpfitci_zh##menu"}{...}
{viewerjumpto "Description" "twoway_fpfitci_zh##description"}{...}
{viewerjumpto "Links to PDF documentation" "twoway_fpfitci_zh##linkspdf"}{...}
{viewerjumpto "Options" "twoway_fpfitci_zh##options"}{...}
{viewerjumpto "Remarks" "twoway_fpfitci_zh##remarks"}
{help twoway_fpfitci:English Version}
{hline}{...}
{p2colset 1 31 33 2}{...}
{p2col:{bf:[G-2] graph twoway fpfitci} {hline 2}}双变量分数多项式预测图（带置信区间）{p_end}
{p2col:}({mansection G-2 graphtwowayfpfitci:查看完整的PDF手册条目}){p_end}
{p2colreset}{...}


{marker syntax}{...}
{title:语法}

{p 8 55 2}
{cmdab:tw:oway}
{cmd:fpfitci}
{it:yvar} {it:xvar}
{ifin}
[{it:{help twoway fpfitci##weight:权重}}]
[{cmd:,}
{it:选项}]

{synoptset 20}{...}
{p2col:{it:选项}}描述{p_end}
{p2line}
{p2col:{it:{help twoway_fpfit_zh:fpfit_options}}}任何{manhelp twoway_fpfit G-2:graph twoway fpfit}的选项{p_end}
{p2col:{cmd:level(}{it:#}{cmd:)}}设置置信水平；默认值为
       {cmd:level(95)}{p_end}
{p2col:{cmd:nofit}}防止绘制预测{p_end}

{p2col:{cmdab:fitp:lot:(}{it:{help graph_twoway_zh:plottype}}{cmd:)}}如何绘制
       拟合；默认值为 {cmd:fitplot(line)}{p_end}
{p2col:{cmdab:cip:lot:(}{it:{help graph_twoway_zh:plottype}}{cmd:)}}如何绘制
       置信区间；默认值为 {cmd:ciplot(rarea)}{p_end}

{p2col:{it:{help fcline_options_zh}}}改变预测线的外观{p_end}
{p2col:{it:{help fitarea_options_zh}}}改变置信区间的外观{p_end}

INCLUDE help gr_axlnk

INCLUDE help gr_twopt
{p2line}
{p2colreset}{...}
{p 4 6 2}
选项 {cmd:level()} 是 {it:最右边}; {cmd:nofit}, {cmd:fitplot()} 和 {cmd:ciplot()} 是 {it:唯一的}; 见 {help repeated options}.{p_end}
{marker weight}{...}
{p 4 6 2}
{cmd:aweight}s,
{cmd:fweight}s 和
{cmd:pweight}s 被允许。如果指定权重，则影响估计但不影响加权结果的绘制。见 {help weight_zh}。


{marker menu}{...}
{title:菜单}

{phang}
{bf:图形 > 双变量图（散点图、线图等）}


{marker description}{...}
{title:描述}

{pstd}
{cmd:twoway} {cmd:fpfitci} 计算从对 {it:xvar} 的分数多项式估计得出的 {it:yvar} 的预测，并绘制结果曲线及平均值的置信区间。


{marker linkspdf}{...}
{title:PDF文档链接}

        {mansection G-2 graphtwowayfpfitciQuickstart:快速开始}

        {mansection G-2 graphtwowayfpfitciRemarksandexamples:备注和示例}

{pstd}
以上部分不包含在此帮助文件中。


{marker options}{...}
{title:选项}

{phang}
{it:fpfit_options}
    指的是任何来自 {cmd:graph} {cmd:twoway} {cmd:fpfit} 的选项；
    见 {manhelp twoway_fpfit G-2:graph twoway fpfit}。
    这些选项很少被指定。

{phang}
{cmd:level(}{it:#}{cmd:)}
    指定置信区间的置信水平，以百分比表示。默认值为 {cmd:level(95)} 或 {helpb set level} 设置的值。

{phang}
{cmd:nofit}
    防止绘制预测。

{phang}
{cmd:fitplot(}{it:plottype}{cmd:)}
    很少被指定。它指定了预测的绘制方式。
    默认值为 {cmd:fitplot(line)}，意味着预测将由 {cmd:graph} {cmd:twoway} {cmd:line} 绘制。详见
    {manhelp graph_twoway G-2:graph twoway} 中的 {it:plottype} 选择列表。您可以选择任何期望一个 {it:y} 变量和一个 {it:x} 变量的绘图类型。

{phang}
{cmd:ciplot(}{it:plottype}{cmd:)}
    指定置信区间的绘制方式。默认值是 {cmd:ciplot(rarea)}，意味着预测将由 {cmd:graph} {cmd:twoway} {cmd:rarea} 绘制。

{pmore}
    一个合理的替代方案是 {cmd:ciplot(rline)}，这将在预测周围用线代替阴影。
    详见 {manhelp graph_twoway G-2:graph twoway} 中的 {it:plottype} 选择列表。您可以选择任何期望两个 {it:y} 变量和一个 {it:x} 变量的绘图类型。

{phang}
{it:fcline_options}
     指定预测线的渲染方式；
     见 {manhelpi fcline_options G-3}。
     如果您指定了 {cmd:fitplot()}，则应选择影响指定 {it:plottype} 的选项，而不是使用 {it:fcline_options}
     来自 {cmd:scatter} 中的选项；
     见 {manhelp scatter G-2:graph twoway scatter}。

{phang}
{it:fitarea_options}
     指定置信区间的渲染方式；见 
     {manhelpi fitarea_options G-3}。
     如果您指定 {cmd:ciplot()}，则应指定适当的内容。

INCLUDE help gr_axlnkf

INCLUDE help gr_twoptf


{marker remarks}{...}
{title:备注}

{pstd}
备注分为以下几个部分：

	{help twoway fpfitci##remarks1:典型用法}
	{help twoway fpfitci##remarks2:高级用法}
	{help twoway fpfitci##remarks3:注意事项}
	{help twoway fpfitci##remarks4:与 by() 一起使用}


{marker remarks1}{...}
{title:典型用法}

{pstd}
{cmd:twoway} {cmd:fpfitci} 默认情况下绘制预测均值的置信区间：

	{cmd:. sysuse auto}

	{cmd:. twoway fpfitci mpg weight}
	  {it:({stata "gr_example auto: twoway fpfitci mpg weight":点击运行})}
{* graph gtfpfitci1}{...}

{pstd}
如果您指定 {cmd:ciplot(rline)} 选项，则置信区间将通过线而不是阴影展示：

	{cmd:. twoway fpfitci mpg weight, ciplot(rline)}
	  {it:({stata "gr_example auto: twoway fpfitci mpg weight, ciplot(rline)":点击运行})}
{* graph gtfpfitci2}{...}


{marker remarks2}{...}
{title:高级用法}

{pstd}
{cmd:fpfitci} 可以与其他图形重叠使用：

	{cmd:. sysuse auto, clear}

	{cmd:. twoway fpfitci mpg weight || scatter mpg weight}
	  {it:({stata "gr_example auto: twoway fpfitci mpg weight || scatter mpg weight":点击运行})}
{* graph gtfpfitci3}{...}

{pstd}
在上面的图中，阴影区域对应于均值的95%置信区间。

{pstd}
请注意，我们键入的命令是

	{cmd:. twoway fpfitci} ... {cmd:|| scatter} ...

{pstd}
而不是

	{cmd:. twoway scatter} ... {cmd:|| fpfitci} ...

{pstd}
如果我们首先绘制散点图，置信区间将会遮挡大部分点。


{marker remarks3}{...}
{title:注意事项}

{pstd}
在指定 {it:axis_scale_options} {help axis_scale_options_zh:yscale(log)} 或
{help axis_scale_options_zh:xscale(log)} 来创建对数刻度时，请勿使用 {cmd:twoway} {cmd:fpfitci}。键入

{phang2}
	{cmd:. twoway fpfitci mpg weight || scatter mpg weight ||, xscale(log)}

{pstd}
将产生一个曲线，该曲线是基于对 mpg 与 weight 的分数多项式回归而拟合的，而不是 log(weight)。

{pstd}
请参见 {it:{help twoway lfitci##remarks3:注意事项}} 中的内容
{manhelp twoway_lfitci G-2:graph twoway lfitci}。


{marker remarks4}{...}
{title:与 by() 一起使用}

{pstd}
{cmd:fpfitci} 可以与 {cmd:by()} 一起使用（所有 {cmd:twoway} 绘图命令均可）：

	{cmd:. twoway fpfitci  mpg weight  ||
		 scatter  mpg weight  ||
	  , by(foreign, total row(1)){txt}
	  {it:({stata "gr_example auto: twoway fpfitci mpg weight || scatter mpg weight || , by(foreign, total row(1))":点击运行})}
{* graph gtfpfitci4}{...}


{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <twoway_fpfitci.sthlp>}