{smcl}
{* *! version 1.2.7  19oct2017}{...}
{viewerdialog "predict (re)" "dialog xtprobit_re_p"}{...}
{viewerdialog "predict (pa)" "dialog xtprobit_pa_p"}{...}
{vieweralsosee "[XT] xtprobit postestimation" "mansection XT xtprobitpostestimation"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[XT] xtprobit" "help xtprobit_zh"}{...}
{viewerjumpto "后处理命令" "xtprobit postestimation##description"}{...}
{viewerjumpto "PDF 文档链接" "xtprobit_postestimation_zh##linkspdf"}{...}
{viewerjumpto "预测" "xtprobit postestimation##syntax_predict"}{...}
{viewerjumpto "边际" "xtprobit postestimation##syntax_margins"}{...}
{viewerjumpto "示例" "xtprobit postestimation##examples"}
{help xtprobit_postestimation:English Version}
{hline}{...}
{p2colset 1 33 35 2}{...}
{p2col:{bf:[XT] xtprobit postestimation} {hline 2}}xtprobit 的后处理工具{p_end}
{p2col:}({mansection XT xtprobitpostestimation:查看完整的 PDF 手册条目}){p_end}
{p2colreset}{...}


{marker description}{...}
{title:后处理命令}

{pstd}
在 {cmd:xtprobit} 之后可以使用以下后处理命令：

{synoptset 17 tabbed}{...}
{p2coldent :命令}描述{p_end}
{synoptline}
INCLUDE help post_contrast
{p2coldent :* {bf:{help estat ic}}}阿卡伊克和施瓦茨贝叶斯信息准则（AIC 和 BIC）{p_end}
INCLUDE help post_estatsum
INCLUDE help post_estatvce
INCLUDE help post_estimates
INCLUDE help post_forecast_star2
INCLUDE help post_hausman
INCLUDE help post_lincom
INCLUDE help post_lrtest_star
{synopt:{helpb xtprobit_postestimation##margins:margins}}边际
	均值，预测边际，边际效应和平均边际
	效应{p_end}
INCLUDE help post_marginsplot
INCLUDE help post_nlcom
{synopt :{helpb xtprobit postestimation##predict:predict}}预测，残差，影响统计量和其他诊断措施{p_end}
INCLUDE help post_predictnl
INCLUDE help post_pwcompare
INCLUDE help post_test
INCLUDE help post_testnl
{synoptline}
{p2colreset}{...}
{p 4 6 2}
* {cmd:estat ic} 和 {cmd:lrtest} 在 {cmd:xtprobit, pa} 后不适用。{p_end}
{p 4 6 2}
+ {cmd:forecast} 在 {cmd:mi} 估计结果中不适用。{p_end}


{marker linkspdf}{...}
{title:PDF 文档链接}

        {mansection XT xtprobitpostestimationRemarksandexamples:备注和示例}

{pstd}
上述部分不包括在此帮助文件中。


{marker syntax_predict}{...}
{marker predict}{...}
{title:预测的语法}

{phang}
随机效应模型

{p 8 16 2}
{cmd:predict} {dtype} {newvar} {ifin} [{cmd:,} 
{it:{help xtprobit_postestimation##randomeffects:RE_statistic}} 
{opt nooff:set} ]


{phang}
总体平均模型

{p 8 16 2}
{cmd:predict} {dtype} {newvar} {ifin} [{cmd:,} 
{it:{help xtprobit_postestimation##popaverage:PA_statistic}} 
{opt nooff:set} ]


{marker randomeffects}{...}
{synoptset 17 tabbed}{...}
{synopthdr :RE_statistic}
{synoptline}
{syntab:主要}
{synopt :{opt xb}}线性预测；默认值{p_end}
{synopt :{opt pr}}正结果的边际概率{p_end}
{synopt :{opt pu0}}正结果的概率{p_end}
{synopt :{opt stdp}}线性预测的标准误差{p_end}
{synoptline}
{p2colreset}{...}

{marker popaverage}{...}
{synoptset 17 tabbed}{...}
{synopthdr :PA_statistic}
{synoptline}
{syntab:主要}
{synopt :{opt mu}}{depvar} 的概率；考虑 {opt offset()}；默认值{p_end}
{synopt :{opt rate}}{depvar} 的概率{p_end}
{synopt :{opt xb}}线性预测{p_end}
{synopt :{opt stdp}}线性预测的标准误差{p_end}
{synopt :{opt sc:ore}}对 xb 的对数似然的第一导数{p_end}
{synoptline}
{p2colreset}{...}

INCLUDE help esample


INCLUDE help menu_predict


{marker des_predict}{...}
{title:预测的描述}

{pstd}
{cmd:predict} 创建一个新的变量，包含线性预测、概率、标准误差和方程级得分等预测结果。


{marker options_predict}{...}
{title:预测的选项}

{dlgtab:主要}

{phang}
{opt xb} 计算线性预测。这是随机效应模型的默认值。

{phang}
{opt pr} 计算针对随机效应的边际正结果概率，这意味着通过对整个支持域内的随机效应积分来计算概率。

{phang}
{opt pu0} 计算正结果的概率，假设该观察值面板的随机效应为零。该概率可能与该组中观察到的结果比例不同。

{phang}
{opt mu} 和 {opt rate} 都计算 {depvar} 的预测概率。{opt mu} 考虑 {opt offset()}，而 {opt rate} 忽略这些调整。如果没有指定 {opt offset()}，{opt mu} 和 {opt rate} 是等价的。{opt mu} 是总体平均模型的默认设置。

{phang}
{opt stdp} 计算线性预测的标准误差。

{phang}
{opt score} 计算方程级得分。

{phang}
{opt nooffset} 仅在你为 {cmd:xtprobit} 指定了 {opth offset(varname)} 时相关。它修改 {cmd:predict} 的计算，使其忽略偏移变量；线性预测被视为 xb 而不是 xb + offset。


INCLUDE help syntax_margins

{phang}
随机效应模型

{synoptset 17}{...}
{synopthdr :统计量}
{synoptline}
{synopt :{opt pr}}正结果的边际概率；默认值{p_end}
{synopt :{opt pu0}}正结果的概率{p_end}
{synopt :{opt xb}}线性预测{p_end}
{synopt :{opt stdp}}不允许与 {cmd:margins} 一起使用{p_end}
{synoptline}
{p2colreset}{...}

{phang}
总体平均模型

{synoptset 17}{...}
{synopthdr :统计量}
{synoptline}
{synopt :{opt mu}}{depvar} 的概率；考虑 {opt offset()}；默认值{p_end}
{synopt :{opt rate}}{depvar} 的概率{p_end}
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
{cmd:margins} 估计线性预测和概率的响应边际。


{marker examples}{...}
{title:示例}

{pstd}设置{p_end}
{phang2}{cmd:. webuse union}{p_end}

{pstd}拟合随机效应模型{p_end}
{phang2}{cmd:. xtprobit union age grade south}{p_end}

{pstd}计算正结果的预测概率{p_end}
{phang2}{cmd:. predict prob, pu0}{p_end}

{pstd}拟合总体平均模型{p_end}
{phang2}{cmd:. xtprobit union age grade i.not_smsa south##c.year, pa}{p_end}

{pstd}计算拟合模型对处于工会的概率的平均边际效应{p_end}
{phang2}{cmd:. margins, dydx(*)}{p_end}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <xtprobit_postestimation.sthlp>}