{smcl}
{* *! version 1.2.6  04apr2019}{...}
{viewerdialog predict "dialog tnbreg_p"}{...}
{vieweralsosee "[R] tnbreg 后估计" "mansection R tnbregpostestimation"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[R] tnbreg" "help tnbreg_zh"}{...}
{viewerjumpto "后估计命令" "tnbreg postestimation##description"}{...}
{viewerjumpto "PDF 文档链接" "tnbreg_postestimation_zh##linkspdf"}{...}
{viewerjumpto "预测" "tnbreg postestimation##syntax_predict"}{...}
{viewerjumpto "边际" "tnbreg postestimation##syntax_margins"}{...}
{viewerjumpto "示例" "tnbreg postestimation##examples"}
{help tnbreg_postestimation:English Version}
{hline}{...}
{p2colset 1 30 32 2}{...}
{p2col:{bf:[R] tnbreg 后估计} {hline 2}}tnbreg 的后估计工具{p_end}
{p2col:}({mansection R tnbregpostestimation:查看完整的 PDF 手册条目}){p_end}
{p2colreset}{...}


{marker description}{...}
{title:后估计命令}

{pstd}
在 {cmd:tnbreg} 之后，有以下后估计命令可用：

{synoptset 17 tabbed}{...}
{p2col :命令}描述{p_end}
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
{synopt:{helpb tnbreg_postestimation##margins:marginal}}边际
	均值、预测边际、边际效应和平均边际
	效应{p_end}
INCLUDE help post_marginsplot
INCLUDE help post_nlcom
{p2col :{helpb tnbreg postestimation##predict:预测}}预测、
残差、影响统计量和其他诊断度量{p_end}
INCLUDE help post_predictnl
INCLUDE help post_pwcompare
INCLUDE help post_suest
INCLUDE help post_test
INCLUDE help post_testnl
{synoptline}
{p2colreset}{...}
{p 4 6 2}
* {cmd:forecast}、{cmd:hausman} 和 {cmd:lrtest} 不适用于
{cmd:svy} 估计结果.{p_end}


{marker linkspdf}{...}
{title:PDF 文档链接}

        {mansection R tnbregpostestimation方法和公式:方法和公式}

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
 {ifin}{cmd:,} {opt sc:ores}

{synoptset 17 tabbed}{...}
{synopthdr:statistic}
{synoptline}
{syntab:主}
{synopt:{opt n}}事件数量；默认值{p_end}
{synopt:{opt ir}}发病率{p_end}
{synopt :{opt cm}}条件均值，E(y | y > ll){p_end}
{synopt :{opt pr(n)}}概率 Pr(y = n){p_end}
{synopt :{opt pr(a,b)}}概率 Pr(a {ul:<} y {ul:<} b){p_end}
{synopt :{opt cpr(n)}}条件概率 Pr(y = n | y > ll){p_end}
{synopt :{opt cpr(a,b)}}条件概率 Pr(a {ul:<} y {ul:<} b | y > ll){p_end}
{synopt:{opt xb}}线性预测{p_end}
{synopt:{opt stdp}}线性预测的标准误{p_end}
{synoptline}
{p2colreset}{...}
INCLUDE help esample


INCLUDE help menu_predict


{marker des_predict}{...}
{title:预测的描述}

{pstd}
{cmd:predict} 创建一个新变量，包含预测值，如
事件数量、发病率、条件均值、概率、 
条件概率、线性预测和标准误。


{marker options_predict}{...}
{title:预测的选项}

{dlgtab:主}

{phang}
{opt n}，默认情况下，计算预测的事件数量，当模型拟合时未指定 {opt offset()} 或 {opt exposure()} 时为 exp(xb)；如果指定了 {opt offset()}，则为 {bind:exp(xb + offset)}；如果指定了 {opt exposure()}，则为 {bind:exp(xb)*exposure}。

{phang}
{opt ir} 计算发病率 exp(xb)，即当暴露为 1 时的预测事件数量。这相当于同时指定 {opt n} 和 {opt nooffset} 选项。

{phang}
{opt cm} 计算条件均值，E(y|y > ll)，其中 ll 是在 {cmd:e(llopt)} 中找到的截断点。

{phang}
{opt pr(n)} 计算概率 Pr(y = n)，其中 n 是可以指定为数字或变量的非负整数。

INCLUDE help pr_uncond_opt

{phang}
{opt cpr(n)} 计算条件概率 Pr(y = n|y > ll)，其中 ll 是在 {cmd:e(llopt)} 中找到的截断点。n 是大于截断点的整数，可以指定为数字或变量。

INCLUDE help cpr_lb_ub_option

{phang}
{opt xb} 计算线性预测，当模型拟合时未指定 {opt offset()} 或 {opt exposure()} 时为 xb；如果指定了 {opt offset()}，则为 {bind:xb + offset}；或者如果指定了 {opt exposure()}，则为 {bind:xb + ln(exposure)}；参见下面的 {opt nooffset}。

{phang}
{opt stdp} 计算线性预测的标准误差。

{phang}
{opt nooffset} 仅在您在拟合模型时指定了 {opt offset()} 或 {opt exposure()} 时相关。它修改 {cmd:predict} 的计算，以忽略 offset 或暴露变量；线性预测被视为 xb，而不是 {bind:xb + offset} 或 {bind:xb + ln(exposure)}。指定 {cmd:predict} ...{cmd:, nooffset} 相当于指定 {cmd:predict} ...{cmd:, ir}。

{phang}
{opt scores} 计算方程级别的评分变量。

{pmore}
第一个新变量将包含相对于回归方程的对数似然的导数。

{pmore}
第二个新变量将包含相对于分散方程的对数似然的导数。


INCLUDE help syntax_margins

{synoptset 17}{...}
{synopthdr :statistic}
{synoptline}
{synopt:{opt n}}事件数量；默认值{p_end}
{synopt:{opt ir}}发病率{p_end}
{synopt :{opt cm}}条件均值，E(y | y > ll){p_end}
{synopt :{opt pr(n)}}概率 Pr(y = n){p_end}
{synopt :{opt pr(a,b)}}概率 Pr(a {ul:<} y {ul:<} b){p_end}
{synopt :{opt cpr(n)}}条件概率 Pr(y = n | y > ll){p_end}
{synopt :{opt cpr(a,b)}}条件概率 Pr(a {ul:<} y {ul:<} b | y > ll){p_end}
{synopt :{opt xb}}线性预测{p_end}
{synopt :{opt stdp}}不允许与 {cmd:margins} 一起使用{p_end}
{synoptline}
{p2colreset}{...}

INCLUDE help notes_margins


INCLUDE help menu_margins


{marker des_margins}{...}
{title:边际的描述}

{pstd}
{cmd:margins} 估计响应的边际值，
即事件数量、发病率、条件均值、概率、 
条件概率和线性预测。


{marker examples}{...}
{title:示例}

{pstd}设置{p_end}
{phang2}{cmd:. webuse rod93}{p_end}

{pstd}拟合截断负二项回归模型{p_end}
{phang2}{cmd:. tnbreg deaths i.cohort, dispersion(constant) exposure(exposure) ll(9)}{p_end}

{pstd}预测死亡的发病率{p_end}
{phang2}{cmd:. predict incidence, ir}{p_end}

{pstd}预测事件数量{p_end}
{phang2}{cmd:. predict nevents, n}{p_end}

{pstd}条件下预测事件数量为正{p_end}
{phang2}{cmd:. predict condmean, cm}{p_end}

{pstd}预测在死亡人数超过 9 的情况下，死亡人数为 20 或更少的概率{p_end}
{phang2}{cmd:. predict p1, cpr(10,20)}{p_end}

{pstd}预测在死亡人数超过 9 的情况下，死亡人数为 15 或更多的概率{p_end}
{phang2}{cmd:. predict p2, cpr(15,.)}{p_end}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <tnbreg_postestimation.sthlp>}