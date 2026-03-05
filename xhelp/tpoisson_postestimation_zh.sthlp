{smcl}
{* *! version 1.3.2  19oct2017}{...}
{viewerdialog predict "dialog tpoisson_p"}{...}
{vieweralsosee "[R] tpoisson postestimation" "mansection R tpoissonpostestimation"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[R] tpoisson" "help tpoisson_zh"}{...}
{viewerjumpto "Postestimation commands" "tpoisson postestimation##description"}{...}
{viewerjumpto "Links to PDF documentation" "tpoisson_postestimation_zh##linkspdf"}{...}
{viewerjumpto "predict" "tpoisson postestimation##syntax_predict"}{...}
{viewerjumpto "margins" "tpoisson postestimation##syntax_margins"}{...}
{viewerjumpto "Examples" "tpoisson postestimation##examples"}
{help tpoisson_postestimation:English Version}
{hline}{...}
{p2colset 1 32 34 2}{...}
{p2col:{bf:[R] tpoisson postestimation} {hline 2}}tpoisson的后验估计工具{p_end}
{p2col:}({mansection R tpoissonpostestimation:查看完整的PDF手册条目}){p_end}
{p2colreset}{...}


{marker description}{...}
{title:后验估计命令}

{pstd}
在执行了 {cmd:tpoisson} 后，可以使用以下后验估计命令：

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
{synopt:{helpb tpoisson_postestimation##margins:margins}}边际
	均值、预测边际、边际效应和平均边际
	效应{p_end}
INCLUDE help post_marginsplot
INCLUDE help post_nlcom
{p2col :{helpb tpoisson postestimation##predict:predict}}预测、
残差、影响统计和其他诊断措施{p_end}
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
{title:PDF文档链接}

        {mansection R tpoissonpostestimationRemarksandexamples:备注和示例}

        {mansection R tpoissonpostestimationMethodsandformulas:方法和公式}

{pstd}
上述部分不包含在此帮助文件中。


{marker syntax_predict}{...}
{marker predict}{...}
{title:预测的语法}

{p 8 16 2}
{cmd:predict} {dtype} {newvar} {ifin} [{cmd:,}
   {it:statistic} {opt nooff:set}]

{synoptset 17 tabbed}{...}
{synopthdr:statistic}
{synoptline}
{syntab:主要}
{synopt :{opt n}}事件数量；默认值{p_end}
{synopt :{opt ir}}发生率{p_end}
{synopt :{opt cm}}条件均值，E(y | ll < y < ul){p_end}
{synopt :{opt pr(n)}}概率 Pr(y = n){p_end}
{synopt :{opt pr(a,b)}}概率 Pr(a {ul:<} y {ul:<} b){p_end}
{synopt :{opt cpr(n)}}条件概率 Pr(y = n | ll < y < ul){p_end}
{synopt :{opt cpr(a,b)}}条件概率 Pr(a {ul:<} y {ul:<} b | ll < y < ul){p_end}
{synopt :{opt xb}}线性预测{p_end}
{synopt :{opt stdp}}线性预测的标准误差{p_end}
{synopt :{opt sc:ore}}相对于 xb 的对数似然的导数{p_end}
{synoptline}
{p2colreset}{...}
INCLUDE help esample


INCLUDE help menu_predict


{marker des_predict}{...}
{title:预测的描述}

{pstd}
{cmd:predict} 创建一个新变量，包含预测值，如
事件数量、发生率、条件均值、概率、
条件概率、线性预测、标准误差和
方程级得分。


{marker options_predict}{...}
{title:预测的选项}

{dlgtab:主要}

{phang}
{opt n}，默认情况下，计算预测的事件数量，如果在拟合模型时未指定 {opt offset()} 或 {opt exposure()}，则为 exp(xb)；如果指定了 {opt offset()}，则为 {bind:exp(xb + offset)}；如果指定了 {opt exposure()}，则为 {bind:exp(xb) x exposure}。

{phang}
{opt ir} 计算发生率 exp(xb)，即当暴露为1时的预测事件数量。这相当于同时指定 {opt n} 和 {opt nooffset} 选项。

{phang}
{opt cm} 计算条件均值 E(y|ll < y < ul)，
其中 ll 是在估计时指定的左截断点，ul 是在估计时指定的右截断点。

{phang}
{opt pr(n)} 计算概率 Pr(y = n)，其中 n 是可以指定为数字或变量的非负整数。

INCLUDE help pr_uncond_opt

{phang}
{opt cpr(n)} 计算条件概率 Pr(y = n|ll < y < ul)，其中 n 是可以指定
为数字或变量的非负整数。 ll 和 ul 如 {opt cm} 中定义。

{phang}
{opt cpr(a,b)} 计算条件概率
Pr(a {ul:<} y {ul:<} b | ll < y < ul)，其中 a 和 b 如 {opt
pr(a,b)} 中定义，且附加限制为 a > ll 和 b < ul。 ll 和 ul 
如 {opt cm} 中定义。

{phang}
{opt xb} 计算线性预测，如果在拟合模型时未指定 {opt offset()} 或 {opt exposure()}，则为 xb；
{bind:xb + offset} 如果指定了 {opt offset()}；或者
{bind:xb + ln(exposure)} 如果指定了 {opt exposure()}；请参见下方的 {opt nooffset}。

{phang}
{opt stdp} 计算线性预测的标准误差。

{phang}
{opt score} 计算方程级得分，即对线性预测的对数
似然相对于线性预测的导数。

{phang}
{opt nooffset} 只有当您在拟合模型时指定 {opt offset()} 或
{opt exposure()} 时才相关。它修改 {cmd:predict} 的计算，以忽略偏移量或暴露变量；线性预测被视为 xb，而不是 {bind:xb + offset}
或 {bind:xb + ln(exposure)}。指定 {cmd:predict} ...{cmd:, nooffset} 相当于指定 {cmd:predict} ...{cmd:, ir}。


INCLUDE help syntax_margins

{synoptset 17}{...}
{synopthdr :statistic}
{synoptline}
{synopt :{opt n}}事件数量；默认值{p_end}
{synopt :{opt ir}}发生率{p_end}
{synopt :{opt cm}}条件均值，E(y | ll < y < ul){p_end}
{synopt :{opt pr(n)}}概率 Pr(y = n){p_end}
{synopt :{opt pr(a,b)}}概率 Pr(a {ul:<} y {ul:<} b){p_end}
{synopt :{opt cpr(n)}}条件概率 Pr(y = n | ll < y < ul){p_end}
{synopt :{opt cpr(a,b)}}条件概率 Pr(a {ul:<} y {ul:<} b | ll < y < ul){p_end}
{synopt :{opt xb}}线性预测{p_end}
{synopt :{opt stdp}}与 {cmd:margins} 不允许{p_end}
{synopt :{opt sc:ore}}与 {cmd:margins} 不允许{p_end}
{synoptline}
{p2colreset}{...}

INCLUDE help notes_margins


INCLUDE help menu_margins


{marker des_margins}{...}
{title:边际的描述}

{pstd}
{cmd:margins} 估计响应的边际，
事件数量、发生率、条件均值、概率、
条件概率和线性预测。


{marker examples}{...}
{title:示例}

{pstd}设置{p_end}
{phang2}{cmd:. webuse runshoes}{p_end}
{phang2}{cmd:. replace shoes = . if shoes<4}{p_end}

{pstd}拟合截尾Poisson回归{p_end}
{phang2}{cmd:. tpoisson shoes distance male age, ll(3)}{p_end}

{pstd}预测购买的鞋子对数{p_end}
{phang2}{cmd:. predict shoehat, n}{p_end}

{pstd}预测购买鞋子的数量，条件是每个人购买的鞋子超过3双{p_end}
{phang2}{cmd:. predict shoecondhat, cm}{p_end}

{pstd}预测每个人拥有1-3双鞋的概率{p_end}
{phang2}{cmd:. predict p, pr(1,3)}{p_end}

{pstd}预测每个人拥有6双或更多鞋的概率，前提是他们已经拥有超过3双鞋{p_end}
{phang2}{cmd:. predict p2, cpr(6,.)}{p_end}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <tpoisson_postestimation.sthlp>}