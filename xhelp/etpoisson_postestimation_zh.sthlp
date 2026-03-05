{smcl}
{* *! version 1.1.6  05sep2018}{...}
{viewerdialog predict "dialog etpoisson_p"}{...}
{vieweralsosee "[TE] etpoisson postestimation" "mansection TE etpoissonpostestimation"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[TE] etpoisson" "help etpoisson_zh"}{...}
{viewerjumpto "后估计命令" "etpoisson postestimation##description"}{...}
{viewerjumpto "PDF文档链接" "etpoisson_postestimation_zh##linkspdf"}{...}
{viewerjumpto "预测" "etpoisson postestimation##syntax_predict"}{...}
{viewerjumpto "边际" "etpoisson postestimation##syntax_margins"}{...}
{viewerjumpto "示例" "etpoisson postestimation##examples"}
{help etpoisson_postestimation:English Version}
{hline}{...}
{p2colset 1 34 36 2}{...}
{p2col:{bf:[TE] etpoisson postestimation} {hline 2}}etpoisson的后估计工具{p_end}
{p2col:}({mansection TE etpoissonpostestimation:查看完整的PDF手册条目}){p_end}
{p2colreset}{...}


{marker description}{...}
{title:后估计命令}

{pstd}
在{cmd:etpoisson}之后，可以使用以下标准后估计命令：

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
{synopt:{helpb etpoisson_postestimation##margins:margins}}边际
	均值、预测边际、边际效应和平均边际
	效应{p_end}
INCLUDE help post_marginsplot
INCLUDE help post_nlcom
{synopt :{helpb etpoisson postestimation##predict:predict}}预测、
  概率和处理效应{p_end}
INCLUDE help post_predictnl
INCLUDE help post_pwcompare
INCLUDE help post_suest
INCLUDE help post_test
INCLUDE help post_testnl
{synoptline}
{p2colreset}{...}
{p 4 6 2}
* {cmd:hausman}和 {cmd:lrtest} 不适用于 {cmd:svy} 估计
结果。{p_end}


{marker linkspdf}{...}
{title:PDF文档链接}

        {mansection TE etpoissonpostestimationRemarksandexamples:备注和示例}

        {mansection TE etpoissonpostestimationMethodsandformulas:方法和公式}

{pstd}
上述部分未包含在此帮助文件中。


{marker syntax_predict}{...}
{marker predict}{...}
{title:预测的语法}

{p 8 16 2}
{cmd:predict} {dtype} {newvar} {ifin}
[{cmd:,} {it:statistic} {opt nooff:set}]

{p 8 16 2}
{cmd:predict}
{dtype} {c -(}{it:{help newvarlist##stub*:stub}}{cmd:*} {c |} {it:{help newvar_zh:newvar_reg}}
{it:{help newvar_zh:newvar_treat}}
{it:{help newvar_zh:newvar_athrho}}
{it:{help newvar_zh:newvar_lnsigma}}{c )-}
{ifin}
{cmd:,} {opt sc:ores}

{synoptset 15 tabbed}{...}
{synopthdr :statistic}
{synoptline}
{syntab :主体}
{synopt :{opt pom:ean}}潜在结果均值（预测计数）；默认值{p_end}
{synopt :{opt om:ean}}观察结果均值（预测计数）{p_end}
{synopt :{opt cte}}在处理水平下的条件处理效应{p_end}
{synopt :{opt pr(n)}}概率 Pr(y = n){p_end}
{synopt :{opt pr(a,b)}}概率 Pr(a {ul:<} y {ul:<} b){p_end}
{synopt :{opt xb}}线性预测{p_end}
{synopt :{opt xbt:reat}}治疗方程的线性预测{p_end}
{synoptline}
{p2colreset}{...}
INCLUDE help esample


INCLUDE help menu_predict


{marker des_predict}{...}
{title:预测的描述}

{pstd}
{cmd:predict} 创建一个包含预测值的新变量，例如
计数、条件处理效应、概率和线性预测。


{marker options_predict}{...}
{title:预测的选项}

{dlgtab:主体}

{phang}
{opt pomean}（默认）计算潜在结果均值。

{phang}
{opt omean}计算观察结果均值。

{phang}
{opt cte}计算处理效应，即潜在结果均值的差异，条件于处理水平。

{phang}
{opt pr(n)}计算概率 Pr(y = n)，其中 n 是可指定为数字或变量的非负整数。

INCLUDE help pr_uncond_opt

{phang}
{opt xb}计算因变量的线性预测，如果既未指定 {cmd:offset()} 也未指定 {cmd:exposure()}，则为 xb；
如果指定了 {cmd:offset()}，则为 xb + offset；或者
如果指定了 {cmd:exposure()}，则为 xb + ln(exposure)。

{phang}
{opt xbtreat}计算内生处理方程的线性预测，如果在 {cmd:treat()} 中未指定 {cmd:offset()}，
则为 wa；如果在 {cmd:treat()} 中指定了 {cmd:offset()}，则为 wa + offset。

{marker nooffset}{...}
{phang}
{opt nooffset} 仅在您在拟合模型时指定了 {opt offset()} 或
{opt exposure()} 时相关。它修改 {cmd:predict} 的计算，使其忽略偏移或暴露
变量。{opt nooffset} 在涉及 {cmd:treat()} 方程和因变量的计算中移除偏移。

{phang}
{opt scores} 计算方程级别的得分变量。

{pmore}
第一个新变量将包含关于回归方程的对数似然函数的导数。

{pmore}
第二个新变量将包含关于处理方程的对数似然函数的导数。

{pmore}
第三个新变量将包含关于第三个方程（{hi:athrho}）的对数似然函数的导数。

{pmore}
第四个新变量将包含关于第四个方程（{hi:lnsigma}）的对数似然函数的导数。


INCLUDE help syntax_margins

{synoptset 17}{...}
{synopthdr :statistic}
{synoptline}
{synopt :{opt pom:ean}}潜在结果均值（预测计数）；默认值{p_end}
{synopt :{opt om:ean}}观察结果均值（预测计数）{p_end}
{synopt :{opt cte}}在处理水平下的条件处理效应{p_end}
{synopt :{opt pr(n)}}概率 Pr(y = n){p_end}
{synopt :{opt pr(a,b)}}概率 Pr(a {ul:<} y {ul:<} b){p_end}
{synopt :{opt xb}}线性预测{p_end}
{synopt :{opt xbt:reat}}治疗方程的线性预测{p_end}
{synoptline}
{p2colreset}{...}

INCLUDE help notes_margins


INCLUDE help menu_margins


{marker des_margins}{...}
{title:边际的描述}

{pstd}
{cmd:margins} 估计响应的边际
计数、条件处理效应、概率和
线性预测。


{marker examples}{...}
{title:示例}

{pstd}设置{p_end}
{phang2}{cmd:. webuse trip1}{p_end}

{pstd}拟合具有内生处理的泊松回归{p_end}
{phang2}{cmd:. etpoisson trips cbd ptn worker weekend,}
{cmd:  treat(owncar = cbd ptn worker realinc) vce(robust)}{p_end}

{phang}估计平均处理效应{p_end}
{phang2}{cmd:. margins r.owncar, vce(unconditional)}{p_end}

{phang}估计对处理的平均处理效应{p_end}
{phang2}{cmd:. margins, predict(cte) vce(unconditional) subpop(owncar)}{p_end}

{phang}估计事件数量{p_end}
{phang2}{cmd:. predict num, omean}{p_end}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <etpoisson_postestimation.sthlp>}