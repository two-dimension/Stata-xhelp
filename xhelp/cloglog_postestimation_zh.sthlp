{smcl}
{* *! version 1.2.5  21may2018}{...}
{viewerdialog predict "dialog clog_p"}{...}
{vieweralsosee "[R] cloglog postestimation" "mansection R cloglogpostestimation"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[R] cloglog" "help cloglog_zh"}{...}
{viewerjumpto "Postestimation commands" "cloglog postestimation##description"}{...}
{viewerjumpto "Links to PDF documentation" "cloglog_postestimation_zh##linkspdf"}{...}
{viewerjumpto "predict" "cloglog postestimation##syntax_predict"}{...}
{viewerjumpto "margins" "cloglog postestimation##syntax_margins"}{...}
{viewerjumpto "Examples" "cloglog postestimation##examples"}
{help cloglog_postestimation:English Version}
{hline}{...}
{p2colset 1 31 33 2}{...}
{p2col:{bf:[R] cloglog postestimation} {hline 2}}cloglog 的后估计工具{p_end}
{p2col:}({mansection R cloglogpostestimation:查看完整的 PDF 手册条目}){p_end}
{p2colreset}{...}


{marker description}{...}
{title:后估计命令}

{pstd}
在执行 {cmd:cloglog} 后，可以使用以下后估计命令：

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
{synopt:{helpb cloglog_postestimation##margins:margins}}边际均值、预测边际、边际效应及平均边际效应{p_end}
INCLUDE help post_marginsplot
INCLUDE help post_nlcom
{synopt :{helpb cloglog postestimation##predict:predict}}预测、残差、影响统计及其他诊断措施{p_end}
INCLUDE help post_predictnl
INCLUDE help post_pwcompare
INCLUDE help post_suest
INCLUDE help post_test
INCLUDE help post_testnl
{synoptline}
{p2colreset}{...}
{p 4 6 2}
* {cmd:forecast}、{cmd:hausman} 和 {cmd:lrtest} 不适用于 {cmd:svy} 估计结果。{cmd:forecast} 也不适用于 {cmd:mi} 估计结果。{p_end}


{marker linkspdf}{...}
{title:PDF 文档链接}

        {mansection R cloglogpostestimationRemarksandexamples:备注与示例}

{pstd}
上述部分未包含在此帮助文件中。


{marker syntax_predict}{...}
{marker predict}{...}
{title:预测的语法}

{phang2}{cmd:predict}
{dtype}
{新变量}
{ifin}
[{cmd:,} {it:statistic} {cmdab:nooff:set}]

{synoptset 17 tabbed}{...}
{synopthdr:statistic}
{synoptline}
{syntab :主要}
{synopt :{opt pr}}正向结果的概率；默认值{p_end}
{synopt :{opt xb}}线性预测{p_end}
{synopt :{opt stdp}}线性预测的标准误差{p_end}
{synopt :{opt sc:ore}}关于 xb 的对数似然的第一导数{p_end}
{synoptline}
{p2colreset}{...}
INCLUDE help esample


INCLUDE help menu_predict


{marker des_predict}{...}
{title:预测的描述}

{pstd}
{cmd:predict} 创建一个包含预测值的新变量，例如概率、线性预测、标准误差和方程级分数。


{marker options_predict}{...}
{title:预测的选项}

{dlgtab:主要}

{phang}
{opt pr}，默认计算正向结果的概率。

{phang}
{opt xb}计算线性预测。

{phang}
{opt stdp}计算线性预测的标准误差。

{phang}
{opt score}计算方程级分数，即对数似然关于线性预测的导数。

{phang}
{opt nooffset} 仅在你为 {cmd:cloglog} 指定了 {opth offset(varname)} 时相关。它修改 {opt predict} 的计算，使其忽略偏移变量；线性预测被视为 xb 而不是 xb + offset。


INCLUDE help syntax_margins

{synoptset 17}{...}
{synopthdr :statistic}
{synoptline}
{synopt :{opt pr}}正向结果的概率；默认值{p_end}
{synopt :{opt xb}}线性预测{p_end}
{synopt :{opt stdp}}不允许与 {cmd:margins} 一起使用{p_end}
{synopt :{opt sc:ore}}不允许与 {cmd:margins} 一起使用{p_end}
{synoptline}
{p2colreset}{...}

INCLUDE help notes_margins


INCLUDE help menu_margins


{marker des_margins}{...}
{title:边际的描述}

{pstd}
{cmd:margins} 估计响应的边际值，适用于概率和线性预测。


{marker examples}{...}
{title:示例}

{pstd}设置{p_end}
{phang2}{cmd:. sysuse auto}{p_end}
{phang2}{cmd:. cloglog foreign weight mpg}{p_end}
{phang2}{cmd:. estimates store cloglog}{p_end}
{phang2}{cmd:. logit foreign weight mpg}{p_end}
{phang2}{cmd:. estimates store logit}{p_end}

{pstd}进行似乎不相关的估计，以便比较两个拟合模型的估计值{p_end}
{phang2}{cmd:. suest cloglog logit}

{pstd}显示系数矩阵以了解方程的命名{p_end}
{phang2}{cmd:. matrix list e(b)}

{pstd}测试两个拟合模型的估计值是否相同{p_end}
{phang2}{cmd:. test [cloglog_foreign = logit_foreign]}{p_end}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <cloglog_postestimation.sthlp>}