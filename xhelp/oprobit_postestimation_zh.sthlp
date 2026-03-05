{smcl}
{* *! version 1.2.7  12nov2018}{...}
{viewerdialog predict "dialog oprobi_p"}{...}
{vieweralsosee "[R] oprobit postestimation" "mansection R oprobitpostestimation"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[R] oprobit" "help oprobit_zh"}{...}
{viewerjumpto "后估计命令" "oprobit postestimation##description"}{...}
{viewerjumpto "链接到 PDF 文档" "oprobit_postestimation_zh##linkspdf"}{...}
{viewerjumpto "预测" "oprobit postestimation##syntax_predict"}{...}
{viewerjumpto "边际" "oprobit postestimation##syntax_margins"}{...}
{viewerjumpto "示例" "oprobit postestimation##examples"}
{help oprobit_postestimation:English Version}
{hline}{...}
{p2colset 1 31 33 2}{...}
{p2col:{bf:[R] oprobit postestimation} {hline 2}}oprobit 的后估计工具{p_end}
{p2col:}({mansection R oprobitpostestimation:查看完整 PDF 手册条目}){p_end}
{p2colreset}{...}


{marker description}{...}
{title:后估计命令}

{pstd}
对 {opt oprobit} 后，提供以下后估计命令：

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
{synopt:{helpb oprobit_postestimation##margins:margins}}边际
	均值、预测边际、边际效应和平均边际
	效应{p_end}
INCLUDE help post_marginsplot
INCLUDE help post_nlcom
{synopt :{helpb oprobit postestimation##predict:predict}}预测、残差、影响统计量和其他诊断测量{p_end}
INCLUDE help post_predictnl
INCLUDE help post_pwcompare
INCLUDE help post_suest
INCLUDE help post_test
INCLUDE help post_testnl
{synoptline}
{p2colreset}{...}
{p 4 6 2}
* {cmd:forecast}、{cmd:hausman} 和 {cmd:lrtest} 不适用于
{cmd:svy} 估计结果。{cmd:forecast} 在
{cmd:mi} 估计结果中也不适用。{p_end}


{marker linkspdf}{...}
{title:链接到 PDF 文档}

        {mansection R oprobitpostestimationRemarksandexamples:备注和示例}

{pstd}
上述部分未包含在此帮助文件中。


{marker syntax_predict}{...}
{marker predict}{...}
{title:预测的语法}

{p 8 16 2}
{cmd:predict}
{dtype}
{c -(}{it:{help newvarlist##stub*:stub}}{cmd:*} | {newvar} | {it:{help newvarlist_zh}}{c )-}
{ifin}
[{cmd:,}
{it:statistic}
{opt o:utcome(outcome)}
{opt nooff:set}]

{synoptset 17 tabbed}{...}
{synopthdr :statistic}
{synoptline}
{syntab :主要}
{synopt :{opt pr}}预测概率；默认值{p_end}
{synopt :{opt xb}}线性预测{p_end}
{synopt :{opt stdp}}线性预测的标准误{p_end}
{synopt:{opt sc:ores}}方程级分数{p_end}
{synoptline}
{p2colreset}{...}
INCLUDE help fn_pr_out
{p 4 6 2}
您可以指定一个新变量使用 {cmd:xb} 和 {cmd:stdp}。{p_end}
INCLUDE help esample


INCLUDE help menu_predict


{marker des_predict}{...}
{title:预测的描述}

{pstd}
{cmd:predict} 创建一个包含预测的中新变量，例如
概率、线性预测和标准误差。


{marker options_predict}{...}
{title:预测的选项}

{dlgtab:主要}

INCLUDE help pr_stub

{phang}
{opt xb} 计算线性预测。您需要指定一个新变量，例如 {cmd:predict linear, xb}。线性预测被定义为忽略估计切点的贡献。

{phang}
{opt stdp} 计算线性预测的标准误。您需要指定一个新变量，例如 {cmd:predict se, stdp}。

INCLUDE help outcome_opt
{opt outcome()} 仅与默认 {opt pr} 选项可用。

{phang}
{opt nooffset} 仅在您为 {opt oprobit} 指定了 {opth offset(varname)} 时相关。它会修改 {opt predict} 所做的计算，以忽略偏移变量；线性预测被视为 xb，而不是 xb + offset。{opt nooffset} 不允许与 {cmd:scores} 一起使用。

{phang}
{opt scores} 计算方程级分数变量。创建的分数变量数将等于模型中的结果数。如果模型中的结果数为 k，则

{pmore}
第一个新变量将包含对数似然相对于回归方程的导数。

{pmore}
其他新变量将包含对数似然相对于切点的导数。


INCLUDE help syntax_margins

{synoptset 17}{...}
{synopthdr :statistic}
{synoptline}
{synopt :默认}每个结果的概率{p_end}
{synopt :{opt pr}}指定结果的概率{p_end}
{synopt :{cmd:xb}}线性预测{p_end}
{synopt :{cmd:stdp}}与 {cmd:margins} 不允许{p_end}
{synoptline}
{p2colreset}{...}
{p 4 6 2}
{opt pr} 默认设置为第一个结果。
{p_end}

INCLUDE help notes_margins


INCLUDE help menu_margins


{marker des_margins}{...}
{title:边际的描述}

{pstd}
{cmd:margins} 估计响应的边际，用于
概率和线性预测。


{marker examples}{...}
{title:示例}

{pstd}设置{p_end}
{phang2}{cmd:. webuse fullauto}{p_end}
{phang2}{cmd:. oprobit rep77 i.foreign length mpg}{p_end}

{pstd}优秀维修记录的预测概率{p_end}
{phang2}{cmd:. predict exc if e(sample), outcome(5)}{p_end}

{pstd}预测概率的直方图{p_end}
{phang2}{cmd:. histogram exc}

{pstd}线性预测{p_end}
{phang2}{cmd:. predict pscore, xb}{p_end}

{pstd}最差维修记录概率的平均边际效应{p_end}
{phang2}{cmd:. margins, dydx(*) predict(outcome(1))}{p_end}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <oprobit_postestimation.sthlp>}