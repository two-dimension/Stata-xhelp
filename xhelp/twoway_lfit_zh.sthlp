{smcl}
{* *! version 1.1.10  19oct2017}{...}
{viewerdialog twoway "dialog twoway"}{...}
{vieweralsosee "[G-2] graph twoway lfit" "mansection G-2 graphtwowaylfit"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[G-2] graph twoway fpfit" "help twoway_fpfit_zh"}{...}
{vieweralsosee "[G-2] graph twoway line" "help line_zh"}{...}
{vieweralsosee "[G-2] graph twoway mband" "help twoway_mband_zh"}{...}
{vieweralsosee "[G-2] graph twoway mspline" "help twoway_mspline_zh"}{...}
{vieweralsosee "[G-2] graph twoway qfit" "help twoway_qfit_zh"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[G-2] graph twoway lfitci" "help twoway_lfitci_zh"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[R] regress" "help regress_zh"}{...}
{viewerjumpto "Syntax" "twoway_lfit_zh##syntax"}{...}
{viewerjumpto "Menu" "twoway_lfit_zh##menu"}{...}
{viewerjumpto "Description" "twoway_lfit_zh##description"}{...}
{viewerjumpto "Links to PDF documentation" "twoway_lfit_zh##linkspdf"}{...}
{viewerjumpto "Options" "twoway_lfit_zh##options"}{...}
{viewerjumpto "Remarks" "twoway_lfit_zh##remarks"}
{help twoway_lfit:English Version}
{hline}{...}
{p2colset 1 28 30 2}{...}
{p2col:{bf:[G-2] graph twoway lfit} {hline 2}}双变量线性预测图{p_end}
{p2col:}({mansection G-2 graphtwowaylfit:查看完整的PDF手册条目}){p_end}
{p2colreset}{...}


{marker syntax}{...}
{title:语法}

{p 8 60 2}
{cmdab:tw:oway}
{cmd:lfit}
{it:yvar} {it:xvar}
{ifin}
[{it:{help twoway lfit##weight:权重}}]
[{cmd:,}
{it:选项}]

{synoptset 26}{...}
{p2col:{it:选项}}描述{p_end}
{p2line}
{p2col:{cmdab:r:ange:(}{it:#} {it:#}{cmd:)}}计算预测的范围{p_end}
{p2col:{cmd:n(}{it:#}{cmd:)}}预测点的数量{p_end}
{p2col:{cmd:atobs}}在 {it:xvar} 的值上计算预测{p_end}
{p2col:{cmdab:est:opts:(}{it:{help regress_zh:回归选项}}{cmd:)}}传递给 {cmd:regress} 的选项{p_end}
{p2col:{cmdab:pred:opts:(}{it:{help regress postestimation##predict:预测选项}}{cmd:)}}传递给 {cmd:predict} 的选项{p_end}

{p2col:{it:{help cline_options_zh}}}更改预测线的外观{p_end}

包含 help gr_axlnk

包含 help gr_twopt
{p2line}
{p2colreset}{...}
{p 4 6 2}
所有选项都是 {it:右侧}; 详见 {help repeated options}.{p_end}
{p 4 6 2}{it:yvar} 和 {it:xvar} 可以包含时间序列运算符; 详见 {help tsvarlist_zh}.{p_end}
{marker weight}{...}
{p 4 6 2}
{cmd:aweight}s,
{cmd:fweight}s, 和
{cmd:pweight}s 是允许使用的权重。如果指定了权重，则会影响估计，但不会影响加权结果的绘制。详见 {help weight_zh}。

{marker menu}{...}
{title:菜单}

{phang}
{bf:图形 > 双变量图（散点图、线图等）}


{marker description}{...}
{title:描述}

{pstd}
{cmd:twoway} {cmd:lfit} 从 {it:xvar} 对 {it:yvar} 的线性回归中计算预测，并绘制结果线。


{marker linkspdf}{...}
{title:PDF文档链接}

        {mansection G-2 graphtwowaylfitQuickstart:快速入门}

        {mansection G-2 graphtwowaylfitRemarksandexamples:备注和示例}

{pstd}
以上部分不包含在此帮助文件中。


{marker options}{...}
{title:选项}

{phang}
{cmd:range(}{it:#} {it:#}{cmd:)}
    指定预测计算的 {it:x} 范围。默认值为 {cmd:range(. .)}，表示 {it:xvar} 的最小值和最大值。 {cmd:range(0 10)} 将范围设为 0 到 10， {cmd:range(. 10)} 将范围设为最小值到10，而 {cmd:range(0 .)} 将范围设定为 0 到最大值。

{phang}
{cmd:n(}{it:#}{cmd:)}
    指定在 {cmd:range()} 上计算预测的点数。默认值为 {cmd:n(3)}。

{phang}
{cmd:atobs}
是 {cmd:n()} 的替代选项。它指定在 {it:xvar} 的值上计算预测。如果指定了 {cmd:predopts()} 且要求任何统计信息其他于 {cmd:xb}，则 {cmd:atobs} 是默认值。

{phang}
{cmd:estopts(}{it:regress_options}{cmd:)}
    指定传递给 {cmd:regress} 的选项，以估计预测线的线性回归; 请参见 {manhelp regress R}。如果指定了此选项，通常还会指定 {cmd:estopts(nocons)}。

{phang}
{cmd:predopts(}{it:predict_options}{cmd:)}
    指定传递给 {cmd:predict} 的选项，以在 {cmd:regress} 后获得预测; 请参见 {manhelp regress_postestimation R:回归后估计}。

{phang}
{it:cline_options}
     指定如何绘制预测线; 请参见 {manhelpi cline_options G-3}。

包含 help gr_axlnkf

包含 help gr_twoptf


{marker remarks}{...}
{title:备注}

{pstd}
备注在以下标题下呈现：

	{help twoway lfit##remarks1:典型用法}
	{help twoway lfit##remarks2:注意事项}
	{help twoway lfit##remarks3:与 by() 一起使用}


{marker remarks1}{...}
{title:典型用法}

{pstd}
{cmd:twoway} {cmd:lfit} 通常与其他 {cmd:twoway} 绘图类型一起使用，如

	{cmd:. sysuse auto}

	{cmd:. scatter mpg weight || lfit mpg weight}
	  {it:({stata "gr_example auto: scatter mpg weight || lfit mpg weight":点击运行})}
{* graph gtlfit1}{...}

{pstd}
结果在视觉上与键入

	{cmd}. regress mpg weight
	. predict fitted
	. scatter mpg weight || line fitted weight{txt}
一致。


{marker remarks2}{...}
{title:注意事项}

{pstd}
在指定 {it:axis_scale_options} {help axis_scale_options_zh:yscale(log)} 或 
{help axis_scale_options_zh:xscale(log)} 的情况下，**请勿使用** {cmd:twoway} {cmd:lfit} 来创建对数尺度。键入

	{cmd:. scatter mpg weight, xscale(log) || lfit mpg weight}
	  {it:({stata "gr_example auto: scatter mpg weight, xscale(log) || lfit mpg weight":点击运行})}
{* graph gtlfit2}{...}

{pstd}
此时线条并不直，因为为预测估计的回归是对 {cmd:mpg} 关于 {cmd:weight} 的，而不是对 {cmd:mpg} 关于 {cmd:log(weight)} 的。（{cmd:n()} 的默认值为 3，因此如果您犯了这个错误，您将会发现这一点。）


{marker remarks3}{...}
{title:与 by() 一起使用}

{pstd}
{cmd:lfit} 可以与 {cmd:by()} 一起使用（所有 {cmd:twoway} 绘图命令都可以）：

{phang2}
	{cmd:. scatter mpg weight || lfit mpg weight ||, by(foreign, total row(1))}
{p_end}
	  {it:({stata "gr_example auto: scatter mpg weight || lfit mpg weight ||, by(foreign, total row(1))":点击运行})}
{* graph gtlfit3}{...}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <twoway_lfit.sthlp>}