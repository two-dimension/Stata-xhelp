{smcl}
{* *! version 1.2.6  19oct2017}{...}
{viewerdialog "predict (re)" "dialog xtcloglog_re_p"}{...}
{viewerdialog "predict (pa)" "dialog xtcloglog_pa_p"}{...}
{vieweralsosee "[XT] xtcloglog postestimation" "mansection XT xtcloglogpostestimation"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[XT] xtcloglog" "help xtcloglog_zh"}{...}
{viewerjumpto "后估计命令" "xtcloglog postestimation##description"}{...}
{viewerjumpto "PDF 文档链接" "xtcloglog_postestimation_zh##linkspdf"}{...}
{viewerjumpto "预测" "xtcloglog postestimation##syntax_predict"}{...}
{viewerjumpto "边际" "xtcloglog postestimation##syntax_margins"}{...}
{viewerjumpto "示例" "xtcloglog postestimation##examples"}
{help xtcloglog_postestimation:English Version}
{hline}{...}
{p2colset 1 34 36 2}{...}
{p2col:{bf:[XT] xtcloglog postestimation} {hline 2}}xtcloglog 的后估计工具{p_end}
{p2col:}({mansection XT xtcloglogpostestimation:查看完整的 PDF 手册条目}){p_end}
{p2colreset}{...}


{marker description}{...}
{title:后估计命令}

{pstd}
在执行 {cmd:xtcloglog} 后可以使用以下后估计命令：

{synoptset 17 tabbed}{...}
{p2coldent :命令}描述{p_end}
{synoptline}
INCLUDE help post_contrast
{p2coldent :* {bf:{help estat ic}}}赤池信息准则（AIC）和施瓦茨贝叶斯信息准则（BIC）{p_end}
INCLUDE help post_estatsum
INCLUDE help post_estatvce
INCLUDE help post_estimates
INCLUDE help post_forecast_star2
INCLUDE help post_hausman
INCLUDE help post_lincom
INCLUDE help post_lrtest
{synopt:{helpb xtcloglog_postestimation##margins:margins}}边际
	均值、预测边际、边际效应和平均边际
	effects{p_end}
INCLUDE help post_marginsplot
INCLUDE help post_nlcom
{p2col :{helpb xtcloglog postestimation##predict:预测}}预测、 
残差、影响统计量和其他诊断措施{p_end}
INCLUDE help post_predictnl
INCLUDE help post_pwcompare
INCLUDE help post_test
INCLUDE help post_testnl
{synoptline}
{p2colreset}{...}
{phang}
* {cmd:estat ic} 不适用于 {cmd:xtcloglog, pa}.{p_end}
{phang}
+ {cmd:forecast} 不适用于 {cmd:mi} 估计结果.{p_end}


{marker linkspdf}{...}
{title:PDF 文档链接}

        {mansection XT xtcloglogpostestimationRemarksandexamples:备注和示例}

{pstd}
上述部分未包含在此帮助文件中。


{marker syntax_predict}{...}
{marker predict}{...}
{title:预测的语法}

{phang}
随机效应（RE）模型

{p 8 16 2}
{cmd:predict} {dtype} {newvar} {ifin} 
[{cmd:,} {it:{help xtcloglog_postestimation##randomeffects:RE_statistic}}
{opt nooff:set} ]


{phang}
总体平均（PA）模型

{p 8 16 2}
{cmd:predict} {dtype} {newvar} {ifin} 
[{cmd:,} {it:{help xtcloglog_postestimation##populationaveraged:PA_statistic}}
{opt nooff:set} ]


{marker randomeffects}{...}
{synoptset 17 tabbed}{...}
{synopthdr :RE_statistic}
{synoptline}
{syntab:主}
{synopt :{opt xb}}线性预测；默认值{p_end}
{synopt :{opt pr}}正结果的边际概率{p_end}
{synopt :{opt pu0}}正结果的概率{p_end}
{synopt :{opt stdp}}线性预测的标准误{p_end}
{synoptline}
{p2colreset}{...}


{marker populationaveraged}{...}
{synoptset 17 tabbed}{...}
{synopthdr :PA_statistic}
{synoptline}
{syntab:主}
{synopt :{opt mu}}{depvar} 的预测概率；考虑
             {opt offset()}; 默认值{p_end}
{synopt :{opt rate}}{depvar} 的预测概率{p_end}
{synopt :{opt xb}}线性预测{p_end}
{synopt :{opt stdp}}线性预测的标准误{p_end}
{synopt :{opt sc:ore}}相对于 xb 的对数似然的一阶导数{p_end}
{synoptline}
{p2colreset}{...}
INCLUDE help esample


INCLUDE help menu_predict


{marker des_predict}{...}
{title:预测的描述}

{pstd}
{cmd:predict} 创建一个新变量，包含数据如
概率、线性预测、标准误和方程级得分。


{marker options_predict}{...}
{title:预测的选项}

{dlgtab:主要选项}

{phang} 
{opt xb} 计算线性预测，如果在拟合模型时没有指定 {cmd:offset()}，则为 xb，如果指定了 {cmd:offset()}，则为 xb + offset。这是随机效应模型的默认值。

{phang}
{opt pr} 计算正结果的边际概率，相对于随机效应进行积分，计算方式为对其整个支持域上进行积分。

{phang}
{opt pu0} 计算正结果的概率，假设该观察值的面板随机效应为零。 这可能与该组中观察到的结果比例并不相似。

{phang}
{opt stdp} 计算线性预测的标准误。

{phang}
{opt mu} 和 {opt rate} 都计算 {depvar} 的预测概率。
{opt mu} 考虑了 {opt offset()}。{opt rate} 忽略这些调整。如果没有指定 {opt offset()}，{opt mu} 和 {opt rate} 是等价的。{opt mu} 是总体平均模型的默认值。

{phang}
{opt score} 计算方程级得分。

{phang}
{opt nooffset} 仅在你为 {cmd:xtcloglog} 指定了 {opth offset(varname)} 时相关。它修改了 {cmd:predict} 所做的计算，忽略偏移变量；线性预测被视为 xb 而不是 xb + offset。


INCLUDE help syntax_margins

{phang}
随机效应（RE）模型

{synoptset 17}{...}
{synopthdr :statistic}
{synoptline}
{synopt :{opt pr}}正结果的边际概率；默认值{p_end}
{synopt :{opt pu0}}正结果的概率{p_end}
{synopt :{opt xb}}线性预测；默认值{p_end}
{synopt :{opt stdp}}不与 {cmd:margins} 结合使用{p_end}
{synoptline}
{p2colreset}{...}

{phang}
总体平均（PA）模型

{synoptset 17}{...}
{synopthdr :statistic}
{synoptline}
{synopt :{opt mu}}{depvar} 的预测概率；考虑
             {opt offset()}; 默认值{p_end}
{synopt :{opt rate}}{depvar} 的预测概率{p_end}
{synopt :{opt xb}}线性预测{p_end}
{synopt :{opt stdp}}不与 {cmd:margins} 结合使用{p_end}
{synopt :{opt sc:ore}}不与 {cmd:margins} 结合使用{p_end}
{synoptline}
{p2colreset}{...}

INCLUDE help notes_margins


INCLUDE help menu_margins


{marker des_margins}{...}
{title:边际的描述}

{pstd}
{cmd:margins} 估计响应的边际，对于
概率和线性预测。


{marker examples}{...}
{title:示例}

{pstd}设置{p_end}
{phang2}{cmd:. webuse union}{p_end}

{pstd}拟合随机效应 cloglog 模型{p_end}
{phang2}{cmd:. xtcloglog union age grade south##c.year}{p_end}

{pstd}线性预测{p_end}
{phang2}{cmd:. predict xt}{p_end}

{pstd}正结果的概率{p_end}
{phang2}{cmd:. predict prob, pu0}{p_end}

{pstd}拟合总体平均 cloglog 模型{p_end}
{phang2}{cmd:. xtcloglog union age grade south##c.year, pa}{p_end}

{pstd}预测 {cmd:union} 的概率{p_end}
{phang2}{cmd:. predict probpa}{p_end}

{pstd}每个回归量对正响应概率的平均影响{p_end}
{phang2}{cmd:. margins, dydx(*)}{p_end}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <xtcloglog_postestimation.sthlp>}