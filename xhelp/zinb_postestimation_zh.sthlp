{smcl}
{* *! version 1.2.7  21may2018}{...}
{viewerdialog predict "dialog zip_p"}{...}
{vieweralsosee "[R] zinb postestimation" "mansection R zinbpostestimation"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[R] zinb" "help zinb_zh"}{...}
{viewerjumpto "Postestimation commands" "zinb postestimation##description"}{...}
{viewerjumpto "Links to PDF documentation" "zinb_postestimation_zh##linkspdf"}{...}
{viewerjumpto "predict" "zinb postestimation##syntax_predict"}{...}
{viewerjumpto "margins" "zinb postestimation##syntax_margins"}{...}
{viewerjumpto "Examples" "zinb postestimation##examples"}
{help zinb_postestimation:English Version}
{hline}{...}
{p2colset 1 28 30 2}{...}
{p2col:{bf:[R] zinb postestimation} {hline 2}}zinb 的后期估计工具
{p_end}
{p2col:}({mansection R zinbpostestimation:查看完整的 PDF 手册条目}){p_end}
{p2colreset}{...}


{marker description}{...}
{title:后期估计命令}

{pstd}
在 {cmd:zinb} 之后，有以下后期估计命令可用：

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
{synopt:{helpb zinb_postestimation##margins:margins}}边际均值、预测边际、边际效应和平均边际效应{p_end}
INCLUDE help post_marginsplot
INCLUDE help post_nlcom
{synopt :{helpb zinb postestimation##predict:predict}}预测、残差、影响统计和其他诊断测量{p_end}
INCLUDE help post_predictnl
INCLUDE help post_pwcompare
INCLUDE help post_suest
INCLUDE help post_test
INCLUDE help post_testnl
{synoptline}
{p2colreset}{...}
{p 4 6 2}
* {cmd:forecast}、{cmd:hausman} 和 {cmd:lrtest} 不适用于 {cmd:svy} 估计结果。{p_end}


{marker linkspdf}{...}
{title:PDF 文档链接}

        {mansection R zinbpostestimationMethodsandformulas:方法和公式}

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
    {it:{help newvar_zh:newvar_inflate}} {it:{help newvar_zh:newvar_lnalpha}}}
    {ifin}{cmd:,} {opt sc:ores}

{marker statistic}{...}
{synoptset 17 tabbed}{...}
{synopthdr:statistic}
{synoptline}
{syntab:Main}
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
{cmd:predict} 创建一个新变量，包含诸如事件数量、发生率、概率、线性预测和标准误差等预测结果。


{marker options_predict}{...}
{title:预测的选项}

{dlgtab:Main}

{phang}
{opt n}，默认情况下，计算预测的事件数量，如果在拟合模型时未指定 {opt offset()} 或 {opt exposure()}，则为 (1-F_j)exp(x_j b)，其中 F_j 是零结果的预测概率；如果指定了 {opt offset()}，则为 (1-F_j)exp(x_j b + offset^b_j)；如果指定了 {opt exposure()}，则为 {bind:(1-F_j){exp(x_j b) * exposure_j}}。

{phang}
{opt ir} 计算发生率，该值是曝光为 1 时的预测事件数量。这相当于同时指定 {opt n} 和 {opt nooffset} 选项。

{phang}
{opt pr} 计算退化零的概率，从拟合的退化分布预测 F_j=F(z_j g)。如果在 {opt inflate()} 选项中指定了 {opt offset()}，则计算 F_j=F(z_j g + offset^g_j)。

{phang}
{opt pr(n)} 计算概率 Pr(y = n)，其中 n 是一个可以作为数字或变量指定的非负整数。注意 {opt pr} 与 {cmd:pr(0)} 不等价。

INCLUDE help pr_uncond_opt

{phang}
{opt xb} 计算线性预测，如果在拟合模型时未指定 {opt offset()} 或 {opt exposure()}，则为 xb；如果指定了 {opt offset()}，则为 {bind:x_j b + offset^b_j}；如果指定了 {opt exposure()}，则为 {bind:x_j b + ln(exposure^b_j)}；详见下面的 {opt nooffset}。

{phang}
{opt stdp} 计算线性预测的标准误差。

{phang}
{opt nooffset} 仅在您在拟合模型时指定了 {opt offset()} 或 {opt exposure()} 时相关。它修改了 {opt predict} 所做的计算，使其忽略偏差或暴露变量；线性预测被视为 x_j b，而不是 {bind:x_j b + offset^b_j} 或 {bind:x_j b + ln(exposure_j)}。指定 {bind:{cmd:predict ..., nooffset}} 等效于指定 {bind:{cmd:predict ..., ir}}。

{phang}
{opt scores} 计算方程级别的得分变量。

{pmore}
第一个新变量将包含关于回归方程的对数似然的导数。

{pmore}
第二个新变量将包含关于膨胀方程的对数似然的导数。

{pmore}
第三个新变量将包含关于扩散方程的对数似然的导数 ({hi:lnalpha})。


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
{synopt :{opt stdp}}在 {cmd:margins} 中不允许{p_end}
{synoptline}
{p2colreset}{...}

INCLUDE help notes_margins


INCLUDE help menu_margins


{marker des_margins}{...}
{title:margins 的描述}

{pstd}
{cmd:margins} 估计响应的边际数，包括事件数量、发生率、概率和线性预测。


{marker examples}{...}
{title:示例}

{pstd}设置{p_end}
{phang2}{cmd:. webuse fish}{p_end}
{phang2}{cmd:. zinb count persons i.livebait, inflate(child camper)}{p_end}

{pstd}事件数量{p_end}
{phang2}{cmd:. predict n}

{pstd}线性预测{p_end}
{phang2}{cmd:. predict lp, xb}

{pstd}对于 {cmd:livebait} 的预测边际{p_end}
{phang2}{cmd:. margins livebait}

{pstd}估计添加到负二项分布的零的比例{p_end}
{phang2}{cmd:. predict p, pr}

{pstd}计算零结果的总概率{p_end}
{phang2}{cmd:. predict p, pr(0)}

{pstd}计算结果为 5 或更少的总概率{p_end}
{phang2}{cmd:. predict p, pr(0,5)}{p_end}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <zinb_postestimation.sthlp>}