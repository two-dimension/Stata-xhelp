{smcl}
{* *! version 1.2.5  31may2018}{...}
{viewerdialog predict "dialog intreg_p"}{...}
{vieweralsosee "[R] intreg postestimation" "mansection R intregpostestimation"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[R] intreg" "help intreg_zh"}{...}
{viewerjumpto "后估计命令" "intreg postestimation##description"}{...}
{viewerjumpto "PDF文档链接" "intreg_postestimation_zh##linkspdf"}{...}
{viewerjumpto "预测" "intreg postestimation##syntax_predict"}{...}
{viewerjumpto "边际" "intreg postestimation##syntax_margins"}{...}
{viewerjumpto "示例" "intreg postestimation##examples"}
{help intreg_postestimation:English Version}
{hline}{...}
{p2colset 1 30 32 2}{...}
{p2col:{bf:[R] intreg postestimation} {hline 2}}intreg的后估计工具{p_end}
{p2col:}({mansection R intregpostestimation:查看完整的PDF手册条目}){p_end}
{p2colreset}{...}


{marker description}{...}
{title:后估计命令}

{pstd}
在 {opt intreg} 后可用的后估计命令如下：

{synoptset 17 tabbed}{...}
{p2coldent :命令}描述{p_end}
{synoptline}
INCLUDE help post_contrast
INCLUDE help post_estatic
INCLUDE help post_estatsum
INCLUDE help post_estatvce
INCLUDE help post_svy_estat
INCLUDE help post_estimates
INCLUDE help post_hausman_star
INCLUDE help post_lincom
INCLUDE help post_lrtest_star
{synopt:{helpb intreg_postestimation##margins:margins}}边际
	均值、预测边际、边际效应和平均边际效应{p_end}
INCLUDE help post_marginsplot
INCLUDE help post_nlcom
{synopt :{helpb intreg postestimation##predict:predict}}预测、残差、影响统计和其他诊断测量{p_end}
INCLUDE help post_predictnl
INCLUDE help post_pwcompare
INCLUDE help post_suest
INCLUDE help post_test
INCLUDE help post_testnl
{synoptline}
{p2colreset}{...}
{p 4 6 2}
* {cmd:hausman} 和 {cmd:lrtest} 不适用于 {cmd:svy} 估计结果。{p_end}


{marker linkspdf}{...}
{title:PDF文档链接}

        {mansection R intregpostestimationRemarksandexamples:备注和示例}

{pstd}
以上部分未包含在此帮助文件中。


{marker syntax_predict}{...}
{marker predict}{...}
{title:预测的语法}

{p 8 16 2}
{cmd:predict}
{dtype}
{newvar}
{ifin}
[{cmd:,} {it:statistic} {opt nooff:set}]

{p 8 16 2}
{cmd:predict}
{dtype}
{c -(}{it:{help newvarlist##stub*:stub}}{cmd:*} {c |} {it:{help newvar_zh:newvar_reg}}
     {it:{help newvar_zh:newvar_lnsigma}}{c )-}
{ifin}
{cmd:,}
{opt sc:ores}

{synoptset 17 tabbed}{...}
{synopthdr :statistic}
{synoptline}
{syntab :Main}
{synopt :{opt xb}}线性预测；默认值{p_end}
INCLUDE help regstats
{synoptline}
{p2colreset}{...}
INCLUDE help esample
{p 4 6 2}
{opt stdf} 不允许与 {cmd:svy} 估计结果一起使用。
{p_end}

INCLUDE help whereab


INCLUDE help menu_predict


{marker des_predict}{...}
{title:预测的描述}

{pstd}
{cmd:predict} 创建一个新变量，包含诸如线性预测、标准误、概率和期望值的预测。


{marker options_predict}{...}
{title:预测的选项}

{dlgtab:主要}

{phang}
{opt xb}，默认，计算线性预测。

{phang}
{opt stdp} 计算预测的标准误，可认为是观察值协变量模式的预测期望值或均值的标准误。预测的标准误也称为拟合值的标准误。

{phang}
{opt stdf} 计算预测的标准误，即1个观察值的点预测的标准误。通常称为未来或预测值的标准误。根据构造， {opt stdf} 产生的标准误总是比 {opt stdp} 产生的标准误大；见
{it:{mansection R regresspostestimationMethodsandformulas:方法和公式}} 在
{hi:[R] regress postestimation} 中。

INCLUDE help pr_opt

{phang}
{opt e(a,b)} 计算
{bind:{it:E}(xb + u | {it:a} < xb + u < {it:b})}，即在区间({it:a},{it:b})内条件下y|x的期望值， 意味着y|x被截断。 {it:a} 和 {it:b} 的指定方式与 {cmd:pr()} 相同。

{phang}
{opt ystar(a,b)} 计算 {it:E}(y*)，
其中 {bind:y* = {it:a}} 如果 {bind:xb + u {ul:<} {it:a}}， {bind:y* = {it:b}} 如果 {bind:xb + u {ul:>} {it:b}，否则 {bind:y* = xb + u}，意味着y*被删失。 {it:a} 和 {it:b} 的指定方式与 {cmd:pr()} 相同。

{phang}
{opt nooffset} 仅在您指定了 {opth offset(varname)} 时相关。 它修改 {cmd:predict} 的计算，使其忽略偏移变量；线性预测视为 xb，而不是 xb + offset。

{phang}
{opt scores} 计算方程级分数变量。{break}

{pmore}
第一个新变量将包含对回归方程的对数似然的导数。

{pmore}
第二个新变量将包含对规模方程的对数似然的导数（{hi:lnsigma}）。


INCLUDE help syntax_margins

{synoptset 17}{...}
{synopthdr :statistic}
{synoptline}
{synopt :{opt xb}}线性预测；默认值{p_end}
INCLUDE help regstats_margins
{synoptline}
{p2colreset}{...}

INCLUDE help notes_margins


INCLUDE help menu_margins


{marker des_margins}{...}
{title:边际的描述}

{pstd}
{cmd:margins} 估计响应的边际，适用于线性预测、概率和期望值。


{marker examples}{...}
{title:示例}

{pstd}设置{p_end}
{phang2}{cmd:. webuse intregxmpl}{p_end}
{phang2}{cmd:. intreg wage1 wage2 age c.age#c.age nev_mar rural school tenure}
{p_end}

{pstd}计算在 {cmd:wage1} 和 {cmd:wage2} 之间的预期工资{p_end}
{phang2}{cmd:. predict expwage, e(wage1, wage2)}{p_end}

{pstd}估计工资（以千美元计）在区间(20, 30)中出现的概率{p_end}
{phang2}{cmd:. predict prob, pr(20,30)}{p_end}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <intreg_postestimation.sthlp>}