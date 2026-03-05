{smcl}
{* *! version 1.2.6  21may2018}{...}
{viewerdialog predict "dialog nl_p"}{...}
{vieweralsosee "[R] nl postestimation" "mansection R nlpostestimation"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[R] nl" "help nl_zh"}{...}
{viewerjumpto "后估计命令" "nl postestimation##description"}{...}
{viewerjumpto "PDF 文档链接" "nl_postestimation_zh##linkspdf"}{...}
{viewerjumpto "预测" "nl postestimation##syntax_predict"}{...}
{viewerjumpto "边际" "nl postestimation##syntax_margins"}{...}
{viewerjumpto "示例" "nl postestimation##examples"}
{help nl_postestimation:English Version}
{hline}{...}
{p2colset 1 26 28 2}{...}
{p2col:{bf:[R] nl postestimation} {hline 2}}nl 的后估计工具{p_end}
{p2col:}({mansection R nlpostestimation:查看完整的 PDF 手册条目}){p_end}
{p2colreset}{...}


{marker description}{...}
{title:后估计命令}

{pstd}
在 {cmd:nl} 之后，可以使用以下后估计命令：

{synoptset 17 tabbed}{...}
{p2coldent :命令}描述{p_end}
{synoptline}
INCLUDE help post_estatic
INCLUDE help post_estatsum
INCLUDE help post_estatvce
INCLUDE help post_svy_estat
INCLUDE help post_estimates
INCLUDE help post_forecast_star
INCLUDE help post_hausman_star
INCLUDE help post_lincom
INCLUDE help post_lrtest_star
{p2coldent:+ {helpb nl_postestimation##margins:margins}}边际均值，
		预测边际，边际效应和平均边际效应{p_end}
INCLUDE help post_marginsplot
INCLUDE help post_nlcom
{synopt :{helpb nl postestimation##predict:predict}}预测和残差{p_end}
INCLUDE help post_predictnl
INCLUDE help post_test
INCLUDE help post_testnl
{synoptline}
{p2colreset}{...}
{p 4 6 2}
* {cmd:forecast}、{cmd:hausman} 和 {cmd:lrtest} 不适用于
{cmd:svy} 估计结果。{p_end}
{p 4 6 2}
+ 必须在 {cmd:nl} 中指定 {cmd:variables()} 选项。


{marker linkspdf}{...}
{title:PDF 文档链接}

        {mansection R nlpostestimationRemarksandexamples:备注和示例}

{pstd}
以上部分不包含在此帮助文件中。


{marker syntax_predict}{...}
{marker predict}{...}
{title:预测语法}

{p 8 16 2}
{cmd:predict} 
{dtype} 
{newvar} 
{ifin}
[{cmd:,} {it:statistic}]

{p 8 16 2}
{cmd:predict}
{dtype}
{c -(}{it:{help newvarlist##stub*:stub}}{cmd:*} {c |} {it:{help newvar_zh:newvar_1}} ... {it:{help newvar_zh:newvar_k}}{c )-}
{ifin}
{cmd:,}
{opt sc:ores}

{phang}
其中 k 是模型中的参数数量。

{synoptset 17 tabbed}{...}
{synopthdr :statistic}
{synoptline}
{syntab :主要}
{synopt :{opt y:hat}}拟合值；默认值{p_end}
{synopt :{opt r:esiduals}}残差{p_end}
{synopt :{opt pr(a,b)}}Pr(y | {it:a} < y < {it:b}){p_end}
{synopt :{opt e(a,b)}}{it:E}(y | {it:a} < y < {it:b}){p_end}
{synopt :{opt ys:tar(a,b)}}{it:E}(y*), y* = max{cmd:(}{it:a},min(y,{it:b}{cmd:))}{p_end}
{synoptline}
{p2colreset}{...}
INCLUDE help esample


INCLUDE help menu_predict


{marker des_predict}{...}
{title:预测说明}

{pstd}
{cmd:predict} 创建一个新变量，包含诸如拟合值、残差、概率和期望值的预测。


{marker options_predict}{...}
{title:预测选项}

{dlgtab:主要}

{phang}
{opt yhat}，默认情况下，计算拟合值。

{phang}
{opt residuals} 计算残差。


INCLUDE help pr_opt

{phang}
{cmd:e(}{it:a}{cmd:,}{it:b}{cmd:)} 计算
{bind:{it:E}(y | {it:a} < y < {it:b})}，条件性期望，y 条件于 y 在区间 ({it:a},{it:b}) 内，即 y 被截断。
{it:a} 和 {it:b} 的指定方式与 {cmd:pr()} 相同。

{phang}
{cmd:ystar(}{it:a}{cmd:,}{it:b}{cmd:)} 计算 {it:E}(y*)，
其中 {bind:y* = {it:a}} 如果 {bind:y {ul:<} {it:a}} ， 
{bind:y* = {it:b}} 如果
{bind:y {ul:>} {it:b}}，否则 {bind:y* = y}，这意味着 y* 被审查。
{it:a} 和 {it:b} 的指定方式与 {cmd:pr()} 相同。

{phang}
{opt scores} 计算分数。第 {it:j} 个新变量将包含第 {it:j} 个参数在 e(b) 中的分数。


INCLUDE help syntax_margins1

{synoptset 17}{...}
{synopthdr :statistic}
{synoptline}
{synopt :{opt y:hat}}拟合值；默认值{p_end}
{synopt :{opt pr(a,b)}}与 {cmd:margins} 不允许{p_end}
{synopt :{opt e(a,b)}}与 {cmd:margins} 不允许{p_end}
{synopt :{opt ys:tar(a,b)}}与 {cmd:margins} 不允许{p_end}
{synopt :{opt r:esiduals}}与 {cmd:margins} 不允许{p_end}
{synoptline}
{p2colreset}{...}

INCLUDE help notes_margins


INCLUDE help menu_margins


{marker des_margins}{...}
{title:边际说明}

{pstd}
{cmd:margins} 估计响应的边际，以获得
拟合值。


{marker examples}{...}
{title:示例}

    {hline}
{pstd}设置{p_end}
{phang2}{cmd:. sysuse auto}{p_end}
{phang2}{cmd:. nl (mpg = {b0} + {b1} / turn)}{p_end}

{pstd}计算 {cmd:mpg} 的预测值{p_end}
{phang2}{cmd:. predict mpghat}{p_end}

{pstd}计算残差{p_end}
{phang2}{cmd:. predict mpgerr, residuals}{p_end}

    {hline}
{pstd}设置{p_end}
{phang2}{cmd:. sysuse auto, clear}{p_end}
{phang2}{cmd:. nl (mpg = {c -(}b0{c )-} +}
       {cmd:{c -(}b1{c )-}*weight^{c -(}gamma=-0.5{c )-}), variables(weight)}{p_end}

{pstd}获得 {cmd:weight} 相对于 {cmd:mpg} 的弹性{p_end}
{phang2}{cmd:. margins, eyex(weight)}{p_end}

    {hline}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <nl_postestimation.sthlp>}