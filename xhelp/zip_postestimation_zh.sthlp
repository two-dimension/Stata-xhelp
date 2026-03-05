{smcl}
{* *! version 1.3.7  21may2018}{...}
{viewerdialog predict "dialog zip_p"}{...}
{vieweralsosee "[R] zip postestimation" "mansection R zippostestimation"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[R] zip" "help zip_zh"}{...}
{viewerjumpto "Postestimation commands" "zip postestimation##description"}{...}
{viewerjumpto "Links to PDF documentation" "zip_postestimation_zh##linkspdf"}{...}
{viewerjumpto "predict" "zip postestimation##syntax_predict"}{...}
{viewerjumpto "margins" "zip postestimation##syntax_margins"}{...}
{viewerjumpto "Examples" "zip postestimation##examples"}
{help zip_postestimation:English Version}
{hline}{...}
{p2colset 1 27 29 2}{...}
{p2col:{bf:[R] zip postestimation} {hline 2}}zip 的后续估计工具
{p_end}
{p2col:}({mansection R zippostestimation:查看完整 PDF 手册条目}){p_end}
{p2colreset}{...}


{marker description}{...}
{title:后续估计命令}

{pstd}
在 {cmd:zip} 之后可以使用以下后续估计命令：

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
INCLUDE help post_lrtest_star
{synopt:{helpb zip_postestimation##margins:margins}}边际
	均值、预测边际、边际效应和平均边际
	效应{p_end}
INCLUDE help post_marginsplot
INCLUDE help post_nlcom
{synopt :{helpb zip postestimation##predict:predict}}预测、残差、
影响统计和其他诊断措施{p_end}
INCLUDE help post_predictnl
INCLUDE help post_pwcompare
INCLUDE help post_suest
INCLUDE help post_test
INCLUDE help post_testnl
{synoptline}
{p2colreset}{...}
{p 4 6 2}
* {cmd:forecast}、{cmd:hausman} 和 {cmd:lrtest} 不适用于
{cmd:svy} 估计结果。{p_end}


{marker linkspdf}{...}
{title:PDF 文档链接}

        {mansection R zippostestimationRemarksandexamples:备注和示例}

        {mansection R zippostestimationMethodsandformulas:方法和公式}

{pstd}
上述部分不包含在此帮助文件中。


{marker syntax_predict}{...}
{marker predict}{...}
{title:预测的语法}

{p 8 18 2}
{cmd:predict} {dtype} {newvar} {ifin}
[{cmd:,} {it:statistic} {opt nooff:set}]

{p 8 18 2}
{cmd:predict} {dtype} {{it:{help newvarlist##stub*:stub}}{cmd:*} | {it:{help newvar_zh:newvar_reg}}
   {it:{help newvar_zh:newvar_inflate}}}
   {ifin}{cmd:,} {opt sc:ores}

{marker statistic}{...}
{synoptset 17 tabbed}{...}
{synopthdr:statistic}
{synoptline}
{syntab:主要}
{synopt :{opt n}}事件数量；默认值{p_end}
{synopt :{opt ir}}发生率{p_end}
{synopt :{opt pr}}退化零的概率{p_end}
{synopt :{opt pr(n)}}概率 Pr(y = n){p_end}
{synopt :{opt pr(a,b)}}概率 Pr(a {ul:<} y {ul:<} b){p_end}
{synopt :{opt xb}}线性预测{p_end}
{synopt :{opt stdp}}线性预测的标准误差{p_end}
{synoptline}
{p2colreset}{...}
INCLUDE help esample


INCLUDE help menu_predict


{marker des_predict}{...}
{title:预测的描述}

{pstd}
{cmd:predict} 创建一个新变量，包含预测值例如
事件数量、发生率、概率、线性预测和标准误差。


{marker options_predict}{...}
{title:预测的选项}

{dlgtab:主要}

{phang}
{opt n} 是默认选项，计算预测的事件数量，当模型拟合时未指定 {opt offset()} 或 {opt exposure()}，其值为 (1-F_j)exp(x_j b)，其中 F_j 是零结果的预测概率；如果指定了 {opt offset()}，则为 (1-F_j)exp(x_j b + offset^b_j)；或者如果指定了 {opt exposure()}，则为 {bind:(1-F_j){exp(x_j b) * exposure_j}}。

{phang}
{opt ir} 计算发生率，这是在暴露为 1 时预测的事件数量。这相当于同时指定 {opt n} 和 {opt nooffset} 选项。

{phang}
{opt pr} 计算退化零的概率，从拟合的退化分布中预测 F_j=F(z_j g)。如果在 {opt inflate()} 选项中指定了 {opt offset()}，则计算 F_j=F(z_j g + offset^g_j)。

{phang}
{opt pr(n)} 计算概率 Pr(y = n)，其中 n 是可以作为数字或变量指定的非负整数。请注意，{opt pr} 和 {cmd:pr(0)} 并不等价。

INCLUDE help pr_uncond_opt

{phang}
{opt xb} 计算线性预测，如果未指定 {opt offset()} 或 {opt exposure()}，则为 xb；如果指定了 {opt offset()}，则为 {bind:x_j b + offset^b_j}；如果指定了 {opt exposure()}，则为 {bind:x_j b + ln(exposure^b_j)}；请参见下面的 {opt nooffset}。

{phang}
{opt stdp} 计算线性预测的标准误差。

{phang}
{opt nooffset} 仅在您在拟合模型时指定了 {opt offset()} 或 {opt exposure()} 时相关。它修改 {opt predict} 的计算，使其忽略偏移量或暴露变量；线性预测被视为 x_j b 而不是
{bind:x_j b + offset^b_j} 或 {bind:x_j b + ln(exposure_j)}。指定
{bind:{cmd:predict} ...{cmd:, nooffset}} 相当于指定
{bind:{cmd:predict} ...{cmd:, ir}}。

{phang}
{opt scores} 计算方程级别的评分变量。

{pmore}
第一个新变量将包含对回归方程的对数似然的导数。

{pmore}
第二个新变量将包含对通货膨胀方程的对数似然的导数。


INCLUDE help syntax_margins

{synoptset 17}{...}
{synopthdr :statistic}
{synoptline}
{synopt :{opt n}}事件数量；默认值{p_end}
{synopt :{opt ir}}发生率{p_end}
{synopt :{opt pr}}退化零的概率{p_end}
{synopt :{opt pr(n)}}概率 Pr(y = n){p_end}
{synopt :{opt pr(a,b)}}概率 Pr(a {ul:<} y {ul:<} b){p_end}
{synopt :{opt xb}}线性预测{p_end}
{synopt :{opt stdp}}与 {cmd:margins} 不允许{p_end}
{synoptline}
{p2colreset}{...}

INCLUDE help notes_margins


INCLUDE help menu_margins


{marker des_margins}{...}
{title:边际的描述}

{pstd}
{cmd:margins} 估计响应的边际，
包括事件数量、发生率、概率和线性预测。


{marker examples}{...}
{title:示例}

{pstd}设置{p_end}
{phang2}{cmd:. webuse fish}{p_end}
{phang2}{cmd:. zip count persons i.livebait, inflate(child camper)}{p_end}

{pstd}事件数量{p_end}
{phang2}{cmd:. predict n}

{pstd}线性预测{p_end}
{phang2}{cmd:. predict lp, xb}

{pstd}针对 {cmd:livebait} 的预测边际{p_end}
{phang2}{cmd:. margins}

{pstd}根据 logit 或 probit link 函数计算零结果的概率{p_end}
{phang2}{cmd:. predict p, pr}

{pstd}计算总体零结果的概率{p_end}
{phang2}{cmd:. predict p, pr(0)}

{pstd}计算五个或更多结果的总体概率{p_end}
{phang2}{cmd:. predict p, pr(5,.)}{p_end}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <zip_postestimation.sthlp>}