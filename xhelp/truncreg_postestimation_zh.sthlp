{smcl}
{* *! version 1.2.5  21may2018}{...}
{viewerdialog predict "dialog truncr_p"}{...}
{vieweralsosee "[R] truncreg postestimation" "mansection R truncregpostestimation"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[R] truncreg" "help truncreg_zh"}{...}
{viewerjumpto "Postestimation commands" "truncreg postestimation##description"}{...}
{viewerjumpto "predict" "truncreg postestimation##syntax_predict"}{...}
{viewerjumpto "margins" "truncreg postestimation##syntax_margins"}{...}
{viewerjumpto "Examples" "truncreg postestimation##examples"}
{help truncreg_postestimation:English Version}
{hline}{...}
{p2colset 1 32 34 2}{...}
{p2col:{bf:[R] truncreg postestimation} {hline 2}}truncreg 的后期估计工具{p_end}
{p2col:}({mansection R truncregpostestimation:查看完整的 PDF 手册条目}){p_end}
{p2colreset}{...}


{marker description}{...}
{title:后期估计命令}

{pstd}
在使用 {opt truncreg} 之后，可以使用以下后期估计命令：

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
{synopt:{helpb truncreg_postestimation##margins:margins}}边际
	均值、预测边际、边际效应和平均边际效应{p_end}
INCLUDE help post_marginsplot
INCLUDE help post_nlcom
{p2col :{helpb truncreg postestimation##predict:预测}}预测、残差、影响统计量和其他诊断措施{p_end}
INCLUDE help post_predictnl
INCLUDE help post_pwcompare
INCLUDE help post_suest
INCLUDE help post_test
INCLUDE help post_testnl
{synoptline}
{p 4 6 2}
* {cmd:forecast}、{cmd:hausman} 和 {cmd:lrtest} 不适用于 {cmd:svy} 估计结果。{cmd:forecast} 也不适用于 {cmd:mi} 估计结果。{p_end}


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
{c -(}{it:{help newvarlist##stub*:stub}}{cmd:*} | {it:{help newvar_zh:newvar_reg}}
       {it:{help newvar_zh:newvar_sigma}}{c )-}
{ifin}
{cmd:,} {opt sc:ores}

{synoptset 17 tabbed}{...}
{synopthdr :statistic}
{synoptline}
{syntab:主要}
{synopt:{opt xb}}线性预测；默认选项{p_end}
{synopt:{opt stdp}}预测的标准误差{p_end}
{synopt:{opt stdf}}预测的标准误差{p_end}
{synopt:{opt pr(a,b)}}Pr(a < y < b){p_end}
{synopt:{opt e(a,b)}}{it:E}(y | a < y < b){p_end}
{synopt:{opt ys:tar(a,b)}}{it:E}(y*),y* = max{c -(}a, min(y,b){c )-} {p_end}
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
{cmd:predict} 创建一个包含预测值的新变量，如线性预测、标准误差、概率和期望值。


{marker options_predict}{...}
{title:预测的选项}

{dlgtab:主要}

{phang}
{opt xb}，默认功能，计算线性预测。

{phang}
{opt stdp} 计算预测的标准误差，可以看作是观察值协变量模式的预测期望值或均值的标准误差。预测的标准误差也称为拟合值的标准误差。

{phang}
{opt stdf} 计算预测的标准误差，即对 1 个观察值的点预测的标准误差。通常被称为未来或预测值的标准误差。根据构造，{opt stdf}产生的标准误差总是大于{opt stdp}产生的标准误差；详见
{it:{mansection R regresspostestimationMethodsandformulas:方法和公式}} 在
{hi:[R] regress postestimation}中。

INCLUDE help pr_opt

{phang}
{opt e(a,b)} 计算
{bind:{it:E}(xb+u | {it:a} < xb + u < {it:b})}，即在区间 ({it:a},{it:b}) 中给定 y|x 的条件下的期望值。{it:a} 和 {it:b} 的指定方式与 {opt pr()} 相同。

{phang}
{opt ystar(a,b)} 计算 {it:E}(y*)，
其中 {bind:y* = {it:a}} 如果 {bind:xb + u {ul:<} {it:a}}，{bind:y* = {it:b}} 如果 {bind:xb + u {ul:>} {it:b}}，否则 {bind:y* = xb + u}，这意味着 y* 被截断。{it:a} 和 {it:b} 的指定方式与 {opt pr()} 相同。

{phang}
{opt nooffset} 仅在您指定了 {opth offset(varname)} 时相关。
它修改 {cmd:predict} 的计算，使其忽略偏移变量；线性预测被视为 xb 而不是 xb + offset。

{phang}
{opt scores} 计算方程级别的评分变量。

{pmore}
第一个新变量将包含关于回归方程对数似然的导数。

{pmore}
第二个新变量将包含关于规模方程的导数（{hi:sigma}）。


INCLUDE help syntax_margins

{synoptset 17}{...}
{synopthdr :statistic}
{synoptline}
{synopt:{opt xb}}线性预测；默认选项{p_end}
{synopt:{opt pr(a,b)}}Pr(a < y < b){p_end}
{synopt:{opt e(a,b)}}{it:E}(y | a < y < b){p_end}
{synopt:{opt ys:tar(a,b)}}{it:E}(y*),y* = max{c -(}a, min(y,b){c )-} {p_end}
{synopt:{opt stdp}}与 {cmd:margins} 不允许一起使用{p_end}
{synopt:{opt stdf}}与 {cmd:margins} 不允许一起使用{p_end}
{synoptline}
{p2colreset}{...}

INCLUDE help notes_margins


INCLUDE help menu_margins


{marker des_margins}{...}
{title:margins 的描述}

{pstd}
{cmd:margins} 估计线性预测、概率和期望值的响应边际。


{marker examples}{...}
{title:示例}

{pstd}设置{p_end}
{phang2}{cmd:. sysuse auto}{p_end}

{pstd}执行截尾回归{p_end}
{phang2}{cmd:. truncreg price mpg foreign, ll(4000) ul(10000)}{p_end}

{pstd}计算 {cmd:price} 截尾版本的期望值{p_end}
{phang2}{cmd:. predict truncp, e(4000, 10000)}{p_end}

{pstd}计算线性预测{p_end}
{phang2}{cmd:. predict linp, xb}{p_end}

{pstd}计算在协变量 {cmd:mpg} 和 {cmd:foreign} 条件下，{cmd:price} 落在 4000 至 10000 之间的概率{p_end}
{phang2}{cmd:. predict p, pr(4000, 10000)}{p_end}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <truncreg_postestimation.sthlp>}