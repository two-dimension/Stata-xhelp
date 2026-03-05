{smcl}
{* *! version 1.2.6  12nov2018}{...}
{viewerdialog predict "dialog slogit_p"}{...}
{vieweralsosee "[R] slogit postestimation" "mansection R slogitpostestimation"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[R] slogit" "help slogit_zh"}{...}
{viewerjumpto "后验估计命令" "slogit postestimation##description"}{...}
{viewerjumpto "PDF文档链接" "slogit_postestimation_zh##linkspdf"}{...}
{viewerjumpto "predict" "slogit postestimation##syntax_predict"}{...}
{viewerjumpto "margins" "slogit postestimation##syntax_margins"}{...}
{viewerjumpto "示例" "slogit postestimation##example"}
{help slogit_postestimation:English Version}
{hline}{...}
{p2colset 1 30 32 2}{...}
{p2col:{bf:[R] slogit postestimation} {hline 2}}slogit 的后验估计工具{p_end}
{p2col:}({mansection R slogitpostestimation:查看完整的 PDF 手册条目}){p_end}
{p2colreset}{...}


{marker description}{...}
{title:后验估计命令}

{pstd}
在 {opt slogit} 之后，可用以下后验估计命令：

{synoptset 17 tabbed}{...}
{p2coldent:命令}描述{p_end}
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
{synopt:{helpb slogit_postestimation##margins:margins}}边际
	均值、预测边际、边际效应和平均边际效应{p_end}
INCLUDE help post_marginsplot
INCLUDE help post_nlcom
{synopt:{helpb slogit_postestimation##syntax_predict:predict}}预测的
    概率、估计的指数及其近似标准误{p_end}
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

        {mansection R slogitpostestimationRemarksandexamples:备注和示例}

        {mansection R slogitpostestimationMethodsandformulas:方法和公式}

{pstd}
上述部分不包含在此帮助文件中。


{marker syntax_predict}{...}
{title:预测的语法}

{p 8 16 2}
{cmd:predict}
{dtype}
{c -(}{it:{help newvarlist##stub*:stub}}{cmd:*} | {newvar} | {it:{help newvarlist_zh}}{c )-}
{ifin}
[{cmd:,} {it:statistic} {opt o:utcome(outcome)}]

{marker statistic}{...}
{synoptset 17 tabbed}{...}
{synopthdr:statistic}
{synoptline}
{syntab:主要}
{synopt:{opt pr}}一种或所有因变量结果的概率；
默认为此{p_end}
{synopt:{opt xb}}第 k 个结果的指数{p_end}
{synopt:{opt stdp}}第 k 个结果的指数的标准误{p_end}
{synopt:{opt sc:ores}}方程级分数{p_end}
{synoptline}
{p2colreset}{...}
INCLUDE help fn_pr_out
{p 4 6 2}
你在 {cmd:xb} 和 {cmd:stdp} 中指定一个新变量。
如果不指定 {cmd:outcome()}，则假定为 {cmd:outcome(#1)}。
{p_end}
INCLUDE help esample


INCLUDE help menu_predict


{marker des_predict}{...}
{title:预测的描述}

{pstd}
{cmd:predict} 创建一个新变量，包含诸如
概率、第 k 个结果的指数和标准误等预测值。


{marker options_predict}{...}
{title:预测的选项}

{dlgtab:主要}

INCLUDE help pr_stub

{phang}
{opt xb} 计算结果级别 k 和维度 d 的指数。如果 k = {cmd:e(i_base)}，则返回一向量零。{opt xb} 的同义词是 {opt index}。如果未指定 {opt outcome()}，则假定为 {cmd:outcome(#1)}。

{phang}
{opt stdp} 计算指数的标准误。
{opt stdp} 的同义词是 {opt seindex}。
如果未指定 {opt outcome()}，则假定为 {cmd:outcome(#1)}。

INCLUDE help outcome_opt
{opt outcome()} 不允许与 {opt scores} 一起使用。

{phang}
{opt scores} 计算方程级分数变量。对于具有 d
维度和 m 水平的模型，创建 d + (d + 1)(m - 1) 个新变量。

{pmore}
	前 d 个新变量将包含 d 个回归方程的分数。

{pmore}
	接下来的 d(m - 1) 个新变量将包含规模参数的分数。

{pmore}
	最后 m - 1 个新变量将包含截距的分数。


INCLUDE help syntax_margins

{synoptset 17}{...}
{synopthdr :statistic}
{synoptline}
{synopt :default}每个结果的概率{p_end}
{synopt:{opt pr}}一种或所有因变量结果的概率{p_end}
{synopt:{opt xb}}第 k 个结果的指数{p_end}
{synopt:{opt stdp}}不允许与 {cmd:margins}{p_end}
{synoptline}
{p2colreset}{...}
{p 4 6 2}
{opt pr} 和 {opt xb} 默认为第一个结果。
{p_end}

INCLUDE help notes_margins


INCLUDE help menu_margins


{marker des_margins}{...}
{title:边际的描述}

{pstd}
{cmd:margins} 估计响应的边际，对概率和第 k 个结果的指数进行估计。


{marker example}{...}
{title:示例}

{pstd}设置{p_end}
{phang2}{cmd:. webuse sysdsn1}{p_end}

{pstd}拟合典型的逻辑回归模型{p_end}
{phang2}{cmd:. slogit insure age male nonwhite i.site, dim(1) base(1)}
{p_end}

{pstd}估计组概率{p_end}
{phang2}{cmd:. predict pIndemnity pPrepaid pUninsure}{p_end}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <slogit_postestimation.sthlp>}