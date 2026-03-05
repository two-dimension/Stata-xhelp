{smcl}
{* *! version 1.3.5  31may2018}{...}
{viewerdialog "nbreg predict" "dialog nbreg_p"}{...}
{viewerdialog "gnbreg predict" "dialog gnbreg_p"}{...}
{vieweralsosee "[R] nbreg postestimation" "mansection R nbregpostestimation"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[R] nbreg" "help nbreg_zh"}{...}
{viewerjumpto "后估计命令" "nbreg postestimation##description"}{...}
{viewerjumpto "PDF文档链接" "nbreg_postestimation_zh##linkspdf"}{...}
{viewerjumpto "预测" "nbreg postestimation##syntax_predict"}{...}
{viewerjumpto "边际" "nbreg postestimation##syntax_margins"}{...}
{viewerjumpto "示例" "nbreg postestimation##examples"}
{help nbreg_postestimation:English Version}
{hline}{...}
{p2colset 1 29 31 2}{...}
{p2col:{bf:[R] nbreg postestimation} {hline 2}}nbreg 和 gnbreg 的后估计工具{p_end}
{p2col:}({mansection R nbregpostestimation:查看完整的PDF手册条目}){p_end}
{p2colreset}{...}


{marker description}{...}
{title:后估计命令}

{pstd}
在 {cmd:nbreg} 和 {cmd:gnbreg} 之后，可以使用以下后估计命令：

{synoptset 17 tabbed}{...}
{p2coldent :命令}描述{p_end}
{synoptline}
INCLUDE help post_contrast
INCLUDE help post_estatic
INCLUDE help post_estatsum
INCLUDE help post_estatvce
INCLUDE help post_svy_estat
INCLUDE help post_estimates
INCLUDE help post_forecast_star
INCLUDE help post_hausman_star
INCLUDE help post_lincom
INCLUDE help post_linktest
INCLUDE help post_lrtest_star
{synopt:{helpb nbreg_postestimation##margins:margins}}边际
	均值、预测边际、边际效应和平均边际
	效应{p_end}
INCLUDE help post_marginsplot
INCLUDE help post_nlcom
{synopt :{helpb nbreg postestimation##predict:predict}}预测、
残差、影响统计和其他诊断度量{p_end}
INCLUDE help post_predictnl
INCLUDE help post_pwcompare
INCLUDE help post_suest
INCLUDE help post_test
INCLUDE help post_testnl
{synoptline}
{p2colreset}{...}
{p 4 6 2}
* {cmd:forecast}、{cmd:hausman} 和 {cmd:lrtest} 不适用于 {cmd:svy} 估计结果。 {cmd:forecast} 也不适用于 {cmd:mi} 估计结果。{p_end}


{marker linkspdf}{...}
{title:PDF文档链接}

        {mansection R nbregpostestimationRemarksandexamples:备注和示例}

        {mansection R nbregpostestimationMethodsandformulas:方法和公式}

{pstd}
上述部分未包含在此帮助文件中。


{marker syntax_predict}{...}
{marker predict}{...}
{title:预测的语法}

{p 8 16 2}
{cmd:predict} {dtype} {newvar} {ifin} [{cmd:,} {it:statistic}
{opt nooff:set}]

{p 8 16 2}
{cmd:predict} {dtype} {c -(}{it:{help newvarlist##stub*:stub}}{cmd:*} {c |} {it:{help newvar_zh:newvar_reg}}
 {it:{help newvar_zh:newvar_disp}}{c )-}
 {ifin} {cmd:,} {opt sc:ores}

{synoptset 17 tabbed}{...}
{synopthdr :statistic}
{synoptline}
{syntab :主}
{synopt :{cmd:n}}事件数量；默认值{p_end}
{synopt :{cmd:ir}}发生率（相当于 {cmd:predict} ...,
{cmd:n nooffset}){p_end}
{synopt :{opt pr(n)}}概率 Pr(y = n){p_end}
{synopt :{opt pr(a,b)}}概率 Pr(a {ul:<} y {ul:<} b){p_end}
{synopt :{cmd:xb}}线性预测{p_end}
{synopt :{cmd:stdp}}线性预测的标准误{p_end}
{synoptline}
{p2colreset}{...}

{pstd}
此外，仅在 {cmd:gnbreg} 之后相关的有：

{synoptset 17 tabbed}{...}
{synopthdr :statistic}
{synoptline}
{syntab :主}
{synopt :{opt a:lpha}}alpha的预测值{p_end}
{synopt :{opt lna:lpha}}ln(alpha)的预测值{p_end}
{synopt :{opt stdpl:na}}预测ln(alpha)的标准误{p_end}
{synoptline}
{p2colreset}{...}

INCLUDE help esample


INCLUDE help menu_predict


{marker des_predict}{...}
{title:预测的描述}

{pstd}
{cmd:predict} 创建一个新变量，包含如事件数量、发生率、概率、线性预测、标准误和预测值等预测结果。


{marker options_predict}{...}
{title:预测的选项}

{dlgtab:主}

{phang}
{opt n}，默认情况下，计算预测事件的数量，如果在拟合模型时未指定 {opth offset:(varname:varname_o)}
或 {opt exposure(varname_e)}，则为 exp(xb)；如果指定了 {opt offset()}，则为 exp(xb + offset)；或者如果指定了 {opt exposure()}，则为 exp(xb)*exposure。

{phang}
{opt ir} 计算发生率 exp(xb)，即当暴露为 1 时的预测事件数量。这相当于指定 {opt n} 和 {opt nooffset} 选项。

{phang}
{opt pr(n)} 计算概率 Pr(y = n)，其中 n 是一个非负整数，可以指定为数字或变量。

INCLUDE help pr_uncond_opt

{phang}
{opt xb} 计算线性预测。

{phang}
{opt stdp} 计算线性预测的标准误。

{phang}
{opt alpha}、{opt lnalpha} 和 {opt stdplna} 仅在 {cmd:gnbreg} 估计之后相关；分别生成 alpha、ln(alpha) 的预测值和预测 ln(alpha) 的标准误。

{phang}
{opt nooffset} 仅在拟合模型时指定了 {opt offset()} 或 {opt exposure()} 时相关。它修改 {cmd:predict} 的计算，使其忽略偏差或暴露变量；线性预测被视为 xb，而不是 xb + offset 或 xb + ln(exposure_j)。指定 {cmd:predict}
...{cmd:,} {opt nooffset} 等同于指定 {cmd:predict} ...{cmd:,}
{opt ir}。

{phang}
{opt scores} 计算方程级别的得分变量。

{pmore}
第一个新变量将包含关于回归方程的对数似然的导数。

{pmore}
第二个新变量将包含关于分散方程的对数似然的导数。


INCLUDE help syntax_margins

{synoptset 17}{...}
{synopthdr :statistic}
{synoptline}
{synopt :{cmd:n}}事件数量；默认值{p_end}
{synopt :{cmd:ir}}发生率（相当于 {cmd:predict} ...,
{cmd:n nooffset}){p_end}
{synopt :{opt pr(n)}}概率 Pr(y = n){p_end}
{synopt :{opt pr(a,b)}}概率 Pr(a {ul:<} y {ul:<} b){p_end}
{synopt :{cmd:xb}}线性预测{p_end}
{synopt :{opt stdp}}不允许与 {cmd:margins} 一起使用{p_end}
{synoptline}
{p2colreset}{...}

{pstd}
此外，仅在 {cmd:gnbreg} 之后相关的有：

{synoptset 17}{...}
{synopthdr :statistic}
{synoptline}
{synopt :{opt a:lpha}}alpha的预测值{p_end}
{synopt :{opt lna:lpha}}ln(alpha)的预测值{p_end}
{synopt :{opt stdpl:na}}不允许与 {cmd:margins} 一起使用{p_end}
{synoptline}
{p2colreset}{...}

INCLUDE help notes_margins


INCLUDE help menu_margins


{marker des_margins}{...}
{title:边际的描述}

{pstd}
{cmd:margins} 估计事件数量、发生率、概率、线性预测和预测值的边际。


{marker examples}{...}
{title:示例}

{pstd}设置{p_end}
{phang2}{cmd:. webuse rod93}{p_end}
{phang2}{cmd:. nbreg deaths i.cohort, exposure(exp)}{p_end}

{pstd}检验 {cmd:2.cohort} 和 {cmd:3.cohort} 的系数是否相等{p_end}
{phang2}{cmd:. test 2.cohort=3.cohort}{p_end}

{pstd}预测事件数量{p_end}
{phang2}{cmd:. predict count}{p_end}

{pstd}预测发生率{p_end}
{phang2}{cmd:. predict rate, ir}

{pstd}预测每个队列中5例死亡的概率，考虑到样本中描述的暴露{p_end}
{phang2}{cmd:. predict p, pr(5)}

{pstd}预测每个队列中5例或更多死亡的概率，考虑到样本中描述的暴露{p_end}
{phang2}{cmd:. predict p, pr(5, .)}{p_end}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <nbreg_postestimation.sthlp>}