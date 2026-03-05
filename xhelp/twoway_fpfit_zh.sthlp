{smcl}
{* *! version 1.1.11  14may2018}{...}
{viewerdialog twoway "dialog twoway"}{...}
{vieweralsosee "[G-2] graph twoway fpfit" "mansection G-2 graphtwowayfpfit"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[G-2] graph twoway fpfitci" "help twoway_fpfitci_zh"}{...}
{vieweralsosee "[G-2] graph twoway line" "help line_zh"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[G-2] graph twoway lfit" "help twoway_lfit_zh"}{...}
{vieweralsosee "[G-2] graph twoway qfit" "help twoway_qfit_zh"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[G-2] graph twoway mband" "help twoway_mband_zh"}{...}
{vieweralsosee "[G-2] graph twoway mspline" "help twoway_mspline_zh"}{...}
{viewerjumpto "Syntax" "twoway_fpfit_zh##syntax"}{...}
{viewerjumpto "Menu" "twoway_fpfit_zh##menu"}{...}
{viewerjumpto "Description" "twoway_fpfit_zh##description"}{...}
{viewerjumpto "Links to PDF documentation" "twoway_fpfit_zh##linkspdf"}{...}
{viewerjumpto "Options" "twoway_fpfit_zh##options"}{...}
{viewerjumpto "Remarks" "twoway_fpfit_zh##remarks"}
{help twoway_fpfit:English Version}
{hline}{...}
{p2colset 1 29 31 2}{...}
{p2col:{bf:[G-2] graph twoway fpfit} {hline 2}}双变量分数多项式预测图{p_end}
{p2col:}({mansection G-2 graphtwowayfpfit:查看完整PDF手册条目}){p_end}
{p2colreset}{...}


{marker syntax}{...}
{title:语法}

{p 8 60 2}
{cmdab:tw:oway}
{cmd:fpfit}
{it:yvar} {it:xvar}
{ifin}
[{it:{help twoway fpfit##weight:权重}}]
[{cmd:,}
{it:选项}]

{synoptset 20}{...}
{p2col:{it:选项}}描述{p_end}
{p2line}
{p2col:{cmdab:estc:md:(}{it:{help twoway_fpfit##est_cmd:est_cmd}}{cmd:)}}估计命令；默认是
       {cmd:regress}{p_end}
{p2col:{cmdab:est:opts:(}{it:{help twoway_fpfit##est_opts:est_opts}}{cmd:)}}指定
       {it:est_opts}来估计分数多项式回归{p_end}

{p2col:{it:{help cline_options_zh}}}更改预测线的外观{p_end}

INCLUDE help gr_axlnk

INCLUDE help gr_twopt
{p2line}
{p2colreset}{...}
{p 4 6 2}
{marker est_cmd}
{it:est_cmd}可以是
{help clogit_zh},
{help glm_zh},
{help intreg_zh}, 
{help logistic_zh},
{help logit_zh},
{help mlogit_zh},
{help nbreg_zh},
{help ologit_zh},
{help oprobit_zh},
{help poisson_zh},
{help probit_zh},
{help regress_zh},
{help rreg_zh},
{help stcox_zh},
{help stcrreg_zh},
{help streg_zh},
或
{help xtgee_zh}.{p_end}
{p 4 6 2}
选项 {cmd:estcmd()} 和 {cmd:estopts()}
是 {it:唯一的}; 见 {help 重复选项}.{p_end}
{marker weight}{...}
{p 4 6 2}
{cmd:aweight}s,
{cmd:fweight}s, 和
{cmd:pweight}s 是被允许的。 权重如果指定，则影响估计，但
不会影响加权结果的绘制。 见 {help weight_zh}。

{synoptset 20}{...}
{marker est_opts}{...}
{synopthdr :est_opts}
{synoptline}
{synopt :{opt deg:ree(#)}}要拟合的分数多项式的度数；默认是
{cmd:degree(2)}{p_end}

{synopt :{opt nosca:ling}}抑制第一个自变量的缩放{p_end}
{synopt :{opt nocons:tant}}抑制常数项{p_end}
{synopt :{opth po:wers(numlist)}}从中选择模型的分数多项式幂的列表{p_end}
{synopt :{opth cent:er(fracpoly##cent_list:cent_list)}}自变量的中心化规格{p_end}
{synopt :{opt all}}包括
	在生成变量中包含样本外的观测值{p_end}

{synopt :{opt log}}显示迭代日志{p_end}
{synopt :{opt com:pare}}按度数比较模型{p_end}
{synopt :{it:{help fracpoly##display_options:display_options}}}控制列格式和线宽{p_end}

{synopt: {it:其他_est_opts}}由 {it:est_cmd} 允许的其他选项{p_end}
{synoptline}
{p2colreset}{...}
{marker cent_list}{...}
{p 4 6 2}
{it:cent_list}是一个用逗号分隔的列表，元素为
{varlist}{cmd::}{c -(}{opt mean}|{it:#}|{opt no}}。
但第一个元素可以选择性为
{c -(}{opt mean}|{it:#}|{opt no}}以指定所有变量的默认值。
{p_end}


{marker menu}{...}
{title:菜单}

{phang}
{bf:图形 > 双变量图（散点图，线图等）}


{marker description}{...}
{title:描述}

{pstd}
{cmd:twoway} {cmd:fpfit}根据对 {it:xvar} 的分数多项式估计计算 {it:yvar} 的预测值，并绘制出结果曲线。


{marker linkspdf}{...}
{title:PDF文档链接}

        {mansection G-2 graphtwowayfpfitQuickstart:快速入门}

        {mansection G-2 graphtwowayfpfitRemarksandexamples:备注和示例}

{pstd}
上述部分不包括在此帮助文件中。


{marker options}{...}
{title:选项}

{phang}
{cmd:estcmd(}{it:{help twoway_fpfit##est_cmd:est_cmd}}{cmd:)}
    指定要使用的估计命令；
    {cmd:estcmd(regress)} 是默认值。

{phang}
{cmd:estopts(}{it:est_opts}{cmd:)}
    指定用于估计分数多项式回归的选项，从中预测曲线。 可用的 {it:est_opts} 包括

{phang2}
{opt degree(#)} 确定要拟合的FP的度数。 默认值是
{cmd:degree(2)}，即，具有两个幂项的模型。

{phang2}
{opt noscaling} 抑制对 {it:{help varname_zh:xvar1}} 及其幂的缩放。

{phang2}
{opt noconstant} 当 {it:est_cmd} 允许时抑制回归常数。

{phang2}
{opth powers(numlist)} 是要选择模型的FP幂的集合。 默认值是 {cmd:powers(-2, -1, -.5, 0, .5, 1, 2, 3)}（0表示
对数）。

{phang2}
{opt center(cent_list)} 定义自变量 {it:{help varname_zh:xvar1}}、{it:xvar2}、... 的中心化。 默认值是 {cmd:center(mean)}。 
一个典型的 {it:cent_list} 项是 {varlist}{cmd::}{c -(}{cmd:mean}|{it:#}|{cmd:no}}。 项以逗号分隔。 第一个项目是特殊的，因为 {it:varlist}{cmd::} 是可选的，
且如果省略，默认值将设置为指定的值（{opt mean} 或 {it:#} 或 {opt no}）。 例如， {cmd:center(no, age:mean)} 将默认值设置为 {opt no}，并将 {opt age} 的中心化设置为 {opt mean}。

{phang2}
{cmd:all} 在生成最佳拟合FP幂时包括样本外观测值 {it:{help varname_zh:xvar_1}}、{it:xvar_2} 等。 默认情况下，生成的FP变量在估计样本外包含缺失值。

{phang2}
{cmd:log} 显示每个FP模型拟合的偏差和（对于 {cmd:regress}）残差标准差。

{phang2}
{cmd:compare} 报告FP模型之间的闭合测试比较。

{marker display_options}{...}
{phang2}
{it:display_options}：
{opth cformat(%fmt)},
{opt pformat(%fmt)},
{opt sformat(%fmt)}，和
{opt nolstretch};
    见 {helpb estimation options##display_options:[R] 估计选项}。

{phang2}
{it:other_est_opts} 是适用于 {it:est_cmd} 的选项；
见该 {it:est_cmd} 的文档。 例如，对于 {opt stcox}，
{it:other_est_opts} 可能包括 {opt efron} 或某种处理平局失败的替代方法。

{phang}
{it:cline_options}
     指定预测线的渲染方式；见
     {manhelpi cline_options G-3}。

INCLUDE help gr_axlnkf

INCLUDE help gr_twoptf


{marker remarks}{...}
{title:备注}

{pstd}
备注呈现在以下标题下：

	{help twoway fpfit##remarks1:典型用法}
	{help twoway fpfit##remarks2:注意事项}
	{help twoway fpfit##remarks3:与 by() 一起使用}


{marker remarks1}{...}
{title:典型用法}

{pstd}
{cmd:twoway} {cmd:fpfit} 近乎总是与
其他 {cmd:twoway} 绘图类型一起使用，例如

	{cmd:. sysuse auto}

	{cmd:. scatter mpg weight || fpfit mpg weight}
	  {it:({stata "gr_example auto: scatter mpg weight || fpfit mpg weight":点击运行})}
{* graph gtfpfit1}{...}


{marker remarks2}{...}
{title:注意事项}

{pstd}
在指定 {it:axis_scale_options} {help axis_scale_options_zh:yscale(log)} 或
{help axis_scale_options_zh:xscale(log)} 创建对数刻度时，请勿使用 {cmd:twoway} {cmd:fpfit}。
输入

{phang2}
	{cmd:. scatter mpg weight, xscale(log) || fpfit mpg weight}

{pstd}
将产生一条基于 {cmd:mpg} 对 {cmd:weight} 的分数多项式回归拟合的曲线，而不是 {cmd:log(weight)}。


{marker remarks3}{...}
{title:与 by() 一起使用}

{pstd}
{cmd:fpfit} 可以与 {cmd:by()} 一起使用（所有 {cmd:twoway} 绘图命令也可以）：

{phang2}
	{cmd:. scatter mpg weight || fpfit mpg weight ||, by(foreign, total row(1))}
{p_end}
	  {it:({stata "gr_example auto: scatter mpg weight || fpfit mpg weight ||, by(foreign, total row(1))":点击运行})}
{* graph gtfpfit2}{...}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <twoway_fpfit.sthlp>}