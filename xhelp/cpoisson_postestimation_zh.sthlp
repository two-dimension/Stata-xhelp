{smcl}
{* *! version 1.0.4  19oct2017}{...}
{viewerdialog predict "dialog cpoisson_p"}{...}
{vieweralsosee "[R] cpoisson postestimation" "mansection R cpoissonpostestimation"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[R] cpoisson" "help cpoisson_zh"}{...}
{viewerjumpto "后估计命令" "cpoisson postestimation##description"}{...}
{viewerjumpto "PDF文档链接" "cpoisson_postestimation_zh##linkspdf"}{...}
{viewerjumpto "预测" "cpoisson postestimation##syntax_predict"}{...}
{viewerjumpto "边际" "cpoisson postestimation##syntax_margins"}{...}
{viewerjumpto "示例" "cpoisson postestimation##examples"}
{help cpoisson_postestimation:English Version}
{hline}{...}
{p2colset 1 32 34 2}{...}
{p2col:{bf:[R] cpoisson postestimation} {hline 2}}cpoisson的后估计工具{p_end}
{p2col:}({mansection R cpoissonpostestimation:查看完整PDF手册条目}){p_end}
{p2colreset}{...}


{marker description}{...}
{title:后估计命令}

{pstd}
以下标准后估计命令也可用：

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
{synopt:{helpb cpoisson_postestimation##margins:margins}}边际
	均值、预测边际、边际效应和平均边际
	效应{p_end}
INCLUDE help post_marginsplot
INCLUDE help post_nlcom
{synopt :{helpb cpoisson postestimation##predict:predict}}预测、
残差、影响统计和其他诊断措施{p_end}
INCLUDE help post_predictnl
INCLUDE help post_pwcompare
INCLUDE help post_suest
INCLUDE help post_test
INCLUDE help post_testnl
{synoptline}
{p2colreset}{...}
{p 4 6 2}
* {cmd:forecast}、{cmd:hausman}和{cmd:lrtest}不适合与
{cmd:svy}估计结果一起使用。{p_end}


{marker linkspdf}{...}
{title:PDF文档链接}

        {mansection R cpoissonpostestimationRemarksandexamples:备注和示例}

        {mansection R cpoissonpostestimationMethodsandformulas:方法和公式}

{pstd}
以上部分不包含在此帮助文件中。


{marker syntax_predict}{...}
{marker predict}{...}
{title:预测的语法}

{p 8 16 2}
{cmd:predict} {dtype} {newvar} {ifin}
[{cmd:,} {it:statistic} {opt nooff:set}]

{synoptset 17 tabbed}{...}
{synopthdr :statistic}
{synoptline}
{syntab :主要}
{synopt :{opt n}}事件数；默认值{p_end}
{synopt :{opt ir}}发生率{p_end}
{synopt :{opt cm}}条件均值，E(y | y > L)、E(y | y < U) 或
    E(y | L < y < U){p_end}
{synopt :{opt pr(n)}}概率Pr(y = n){p_end}
{synopt :{opt pr(a,b)}}概率Pr(a {ul:<} y {ul:<} b){p_end}
{synopt :{opt cpr(n)}}条件概率Pr(y = n | y > L),
    Pr(y = n | y < U)、Pr(y = n | L < y < U){p_end}
{synopt :{opt cpr(a,b)}}条件概率Pr(a {ul:<} y {ul:<} b | y > L),
    Pr(a {ul:<} y {ul:<} b | y < U) 或 Pr(a {ul:<} y {ul:<} b | L < y < U){p_end}
{synopt :{opt xb}}线性预测{p_end}
{synopt :{opt stdp}}线性预测的标准误{p_end}
{synopt :{opt sc:ore}}关于xb的对数似然的一阶导数{p_end}
{synoptline}
{p2colreset}{...}
INCLUDE help esample


INCLUDE help menu_predict


{marker des_predict}{...}
{title:预测的描述}

{pstd}
{cmd:predict}创建一个包含预测的新变量，如事件数、发生率、条件均值、概率、
条件概率、线性预测、标准误和方程级得分。


{marker options_predict}{...}
{title:预测的选项}

{dlgtab:主要}

{phang}
{opt n}，默认值，计算预测的事件数，当模型拟合时没有指定
{opt offset()}或{opt exposure()}时，为exp(xb)；{break}
如果指定了{opt offset()}，为exp(xb + offset)；或者{break}
如果指定了{opt exposure()}，为exp(xb)*exposure。

{phang}
{opt ir}计算发生率exp(xb)，当曝光为1时的预测事件数。这相当于指定
{opt n}和{opt nooffset}选项。

{phang}
{cmd:cm}计算条件均值，
E(y | Omega) =  E(y)/Pr(Omega)
其中Omega表示左限模型中的y >L，右限模型中的y < U，以及区间限模型中的L < y < U。
L是在{cmd:e(llopt)}中找到的左限点，U是在{cmd:e(ulopt)}中找到的
右限点。

{phang}
{opt pr(n)}计算概率Pr(y = n)，其中n为一个可指定为数字或变量的非负整数。

INCLUDE help pr_uncond_opt

{phang}
{opt cpr(n)}计算条件概率Pr(y = n | Omega)，
其中Omega表示左限模型中的y >L，右限模型中的y < U，以及区间限模型中的L < y < U。
L是在{cmd:e(llopt)}中找到的左限点，U是在{cmd:e(ulopt)}中找到的右限点。
{it:n}是非限范围内的整数。

{phang}
{opt cpr(a,b)}计算条件概率
Pr({it:a} {ul:<} y {ul:<} {it:b} | Omega)，其中Omega
表示左限模型中的y > L，右限模型中的y < U，以及区间限模型中的L < y < U。
L是在{cmd:e(llopt)}中找到的左限点，U是在{cmd:e(ulopt)}中找到的右限点。
{it:a}和{it:b}必须在非限范围内，如果没有缺失值。如果变量{it:a}的观察值缺失，则该观察值在{opt cpr(a,b)}中的值也将缺失。

{phang}
{opt xb}计算线性预测，如果未指定{cmd:offset()}或{cmd:exposure()}，
则为xb；
如果指定了{cmd:offset()}，则为xb + offset；或者
如果指定了{cmd:exposure()}，则为xb + ln(exposure)；
请参见下面的{helpb cpoisson_postestimation##nooffset:nooffset}。

{phang}
{opt stdp}计算线性预测的标准误。

{phang}
{opt score}计算方程级得分，即对数似然关于线性预测的导数。

{marker nooffset}{...}
{phang}
{opt nooffset}仅在您在拟合模型时指定了{opt offset()}或
{opt exposure()}时相关。它修改{cmd:predict}的计算，使其忽略偏移或曝光
变量；线性预测被视为xb，而不是
{bind:xb + offset}或xb + ln(exposure)。
指定{cmd:predict} ...{cmd:,}
{cmd:nooffset}相当于指定{cmd:predict} ...{cmd:,}
{opt ir}。


INCLUDE help syntax_margins

{synoptset 17}{...}
{synopthdr :statistic}
{synoptline}
{synopt :{opt n}}事件数；默认值{p_end}
{synopt :{opt ir}}发生率{p_end}
{synopt :{opt cm}}条件均值，E(y | y > L)、E(y | y < U) 或
    E(y | L < y < U){p_end}
{synopt :{opt pr(n)}}概率Pr(y = n){p_end}
{synopt :{opt pr(a,b)}}概率Pr(a {ul:<} y {ul:<} b){p_end}
{synopt :{opt cpr(n)}}条件概率Pr(y = n | y > L),
    Pr(y = n | y < U)、Pr(y = n | L < y < U){p_end}
{synopt :{opt cpr(a,b)}}条件概率Pr(a {ul:<} y {ul:<} b | y > L),
    Pr(a {ul:<} y {ul:<} b | y < U) 或 Pr(a {ul:<} y {ul:<} b | L < y < U){p_end}
{synopt :{opt xb}}线性预测{p_end}
{synopt :{opt stdp}}与{cmd:margins}不允许{p_end}
{synopt :{opt sc:ore}}与{cmd:margins}不允许{p_end}
{synoptline}
{p2colreset}{...}

INCLUDE help notes_margins


INCLUDE help menu_margins


{marker des_margins}{...}
{title:边际的描述}

{pstd}
{cmd:margins}估计响应的边际，计算事件数、发生率、条件均值、概率和
线性预测。


{marker examples}{...}
{title:示例}

{pstd}设置{p_end}
{phang2}{cmd:. webuse trips}{p_end}
{phang2}{cmd:. cpoisson trips income children, ul(3)}{p_end}

{pstd}估计一个孩子与一个额外孩子相比的游乐园旅行次数{p_end}
{phang2}{cmd:. margins, at(children = generate(children))}
                   {cmd:at(children = generate(children+1)) post}

{pstd}计算一个额外孩子对未被截断的旅行数的影响{p_end}
{phang2}{cmd:. contrast r._at, nowald}{p_end}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <cpoisson_postestimation.sthlp>}