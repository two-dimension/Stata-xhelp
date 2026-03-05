{smcl}
{* *! version 1.1.10  19oct2017}{...}
{viewerdialog twoway "dialog twoway"}{...}
{vieweralsosee "[G-2] graph twoway qfit" "mansection G-2 graphtwowayqfit"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[G-2] graph twoway fpfit" "help twoway_fpfit_zh"}{...}
{vieweralsosee "[G-2] graph twoway lfit" "help twoway_lfit_zh"}{...}
{vieweralsosee "[G-2] graph twoway line" "help line_zh"}{...}
{vieweralsosee "[G-2] graph twoway mband" "help twoway_mband_zh"}{...}
{vieweralsosee "[G-2] graph twoway mspline" "help twoway_mspline_zh"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[G-2] graph twoway qfitci" "help twoway_qfitci_zh"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[R] regress" "help regress_zh"}{...}
{viewerjumpto "Syntax" "twoway_qfit_zh##syntax"}{...}
{viewerjumpto "Menu" "twoway_qfit_zh##menu"}{...}
{viewerjumpto "Description" "twoway_qfit_zh##description"}{...}
{viewerjumpto "Links to PDF documentation" "twoway_qfit_zh##linkspdf"}{...}
{viewerjumpto "Options" "twoway_qfit_zh##options"}{...}
{viewerjumpto "Remarks" "twoway_qfit_zh##remarks"}
{help twoway_qfit:English Version}
{hline}{...}
{p2colset 1 28 30 2}{...}
{p2col:{bf:[G-2] graph twoway qfit} {hline 2}}二次预测绘图{p_end}
{p2col:}({mansection G-2 graphtwowayqfit:查看完整 PDF 手册条目}){p_end}
{p2colreset}{...}


{marker syntax}{...}
{title:语法}

{p 8 60 2}
{cmdab:tw:oway}
{cmd:qfit}
{it:yvar} {it:xvar}
{ifin}
[{it:{help twoway qfit##weight:权重}}]
[{cmd:,}
{it:选项}]

{synoptset 27}{...}
{p2col:{it:选项}}描述{p_end}
{p2line}
{p2col:{cmdab:r:ange:(}{it:#} {it:#}{cmd:)}}预测计算范围{p_end}
{p2col:{cmd:n(}{it:#}{cmd:)}}预测点的数量{p_end}
{p2col:{cmd:atobs}}在 {it:xvar} 中计算预测{p_end}
{p2col:{cmdab:est:opts:(}{it:{help regress_zh:回归选项}}{cmd:)}}传递给 {cmd:regress} 的选项{p_end}
{p2col:{cmdab:pred:opts:(}{it:{help regress postestimation##predict:预测选项}}{cmd:)}}传递给 {cmd:predict} 的选项{p_end}

{p2col:{it:{help cline_options_zh}}}更改预测线的外观{p_end}

INCLUDE help gr_axlnk

INCLUDE help gr_twopt
{p2line}
{p2colreset}{...}
{p 4 6 2}
所有选项都是 {it:右侧}; 请参见 {help repeated options}.{p_end}
{p 4 6 2}{it:yvar} 和 {it:xvar} 可以包含时间序列运算符; 参见 {help tsvarlist_zh}.{p_end}
{marker weight}{...}
{p 4 6 2}
{cmd:aweight}s,
{cmd:fweight}s, 和
{cmd:pweight}s 是允许的。如果指定了权重，则会影响估计，但不会影响加权结果的绘制方式。请参见 {help weight_zh}。


{marker menu}{...}
{title:菜单}

{phang}
{bf:图形 > 二维图（散点图、线图等）}


{marker description}{...}
{title:描述}

{pstd}
{cmd:twoway} {cmd:qfit} 计算 {it:yvar} 关于 {it:xvar} 和 {it:xvar}^2 的线性回归预测，并绘制结果曲线。


{marker linkspdf}{...}
{title:PDF 文档链接}

        {mansection G-2 graphtwowayqfitQuickstart:快速入门}

        {mansection G-2 graphtwowayqfitRemarksandexamples:备注和示例}

{pstd}
上述部分未包含在此帮助文件中。


{marker options}{...}
{title:选项}

{phang}
{cmd:range(}{it:#} {it:#}{cmd:)}
    指定计算预测的 {it:x} 范围。默认值为 {cmd:range(. .)}，表示 {it:xvar} 的最小和最大值。 {cmd:range(0 10)} 将范围设为 0 到 10， {cmd:range(. 10)} 将范围设为最小值到 10， {cmd:range(0 .)} 将范围设为 0 到最大值。

{phang}
{cmd:n(}{it:#}{cmd:)}
    指定在 {cmd:range()} 内计算预测的点数。默认值为 {cmd:n(100)}。

{phang}
{cmd:atobs}
    是 {cmd:n()} 的一种替代方法。它指定在 {it:xvar} 值上计算预测。如果指定了 {cmd:predopts()} 且请求了除 {cmd:xb} 之外的任何统计量，则默认为 {cmd:atobs}。

{phang}
{cmd:estopts(}{it:regress_options}{cmd:)}
    指定要传递给 {cmd:regress} 的选项，以估计将要预测曲线的线性回归；见 {manhelp regress R}。如果指定了此选项，通常会指定 {cmd:estopts(nocons)}。

{phang}
{cmd:predopts(}{it:predict_options}{cmd:)}
    指定要传递给 {cmd:predict} 的选项，以获得通过 {cmd:regress} 估计后的预测；见 {manhelp regress_postestimation R:回归后估计}。

{phang}
{it:cline_options}
     指定预测线的渲染方式；见 {manhelpi cline_options G-3}。

INCLUDE help gr_axlnkf

INCLUDE help gr_twoptf


{marker remarks}{...}
{title:备注}

{pstd}
备注呈现于以下标题下：

	{help twoway qfit##remarks1:典型用法}
	{help twoway qfit##remarks2:注意事项}
	{help twoway qfit##remarks3:与 by() 一起使用}


{marker remarks1}{...}
{title:典型用法}

{pstd}
{cmd:twoway} {cmd:qfit} 通常与其他 {cmd:twoway} 绘图类型结合使用，例如

	{cmd:. sysuse auto}

	{cmd:. scatter mpg weight || qfit mpg weight}
	  {it:({stata "gr_example auto: scatter mpg weight || qfit mpg weight":点击运行})}
{* graph gtqfit1}{...}

{pstd}
结果视觉上与键入

	{cmd:. generate} {it:tempvar} {cmd:= weight^2}
	{cmd:. regress mpg weight} {it:tempvar}
	{cmd:. predict fitted}
	{cmd:. scatter mpg weight || line fitted weight}
完全相同。


{marker remarks2}{...}
{title:注意事项}

{pstd}
在指定 {it:axis_scale_options} {help axis_scale_options_zh:yscale(log)} 或 {help axis_scale_options_zh:xscale(log)} 时，请勿使用 {cmd:twoway} {cmd:qfit} 来创建对数刻度。键入

	{cmd:. scatter mpg weight, xscale(log) || qfit mpg weight}

{pstd}
会产生非抛物线的结果，因为用于预测的回归估计是对 {cmd:mpg} 进行的，在 {cmd:weight} 和 {cmd:weight^2} 上，而不是对 {cmd:mpg} 在 {cmd:log(weight)} 和 {cmd:log(weight)^2} 上进行的回归。


{marker remarks3}{...}
{title:与 by() 一起使用}

{pstd}
{cmd:qfit} 可以与 {cmd:by()} 一起使用（所有 {cmd:twoway} 绘图命令也是如此）：

{phang2}
	{cmd:. scatter mpg weight || qfit mpg weight ||, by(foreign, total row(1))}
{p_end}
	  {it:({stata "gr_example auto: scatter mpg weight || qfit mpg weight ||, by(foreign, total row(1))":点击运行})}
{* graph gtqfit2}{...}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <twoway_qfit.sthlp>}