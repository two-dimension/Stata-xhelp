{smcl}
{* *! version 1.2.8  21may2018}{...}
{viewerdialog "predict (re)" "dialog xtlogit_re_p"}{...}
{viewerdialog "predict (fe)" "dialog xtlogit_fe_p"}{...}
{viewerdialog "predict (pa)" "dialog xtlogit_pa_p"}{...}
{vieweralsosee "[XT] xtlogit postestimation" "mansection XT xtlogitpostestimation"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[XT] xtlogit" "help xtlogit_zh"}{...}
{viewerjumpto "后估计命令" "xtlogit postestimation##description"}{...}
{viewerjumpto "PDF文档链接" "xtlogit_postestimation_zh##linkspdf"}{...}
{viewerjumpto "预测" "xtlogit postestimation##syntax_predict"}{...}
{viewerjumpto "边际" "xtlogit postestimation##syntax_margins"}{...}
{viewerjumpto "示例" "xtlogit postestimation##examples"}
{help xtlogit_postestimation:English Version}
{hline}{...}
{p2colset 1 32 34 2}{...}
{p2col:{bf:[XT] xtlogit postestimation} {hline 2}}xtlogit的后估计工具{p_end}
{p2col:}({mansection XT xtlogitpostestimation:查看完整的PDF手册条目}){p_end}
{p2colreset}{...}


{marker description}{...}
{title:后估计命令}

{pstd}
在执行{cmd:xtlogit}后，提供以下后估计命令：

{synoptset 17 tabbed}{...}
{p2coldent :命令}描述{p_end}
{synoptline}
INCLUDE help post_contrast
{p2coldent :* {bf:{help estat ic}}}赤池信息量准则和施瓦茨贝叶斯信息量准则（AIC和BIC）{p_end}
INCLUDE help post_estatsum
INCLUDE help post_estatvce
INCLUDE help post_estimates
INCLUDE help post_forecast_star2
INCLUDE help post_hausman
INCLUDE help post_lincom
INCLUDE help post_lrtest_star
{synopt:{helpb xtlogit_postestimation##margins:margins}}边际均值、预测边际、边际效应和平均边际效应{p_end}
INCLUDE help post_marginsplot
INCLUDE help post_nlcom
{synopt :{helpb xtlogit postestimation##predict:predict}}预测、残差、影响统计及其他诊断指标{p_end}
INCLUDE help post_predictnl
INCLUDE help post_pwcompare
INCLUDE help post_test
INCLUDE help post_testnl
{synoptline}
{p2colreset}{...}
{p 4 6 2}
* {cmd:estat ic}和{cmd:lrtest}在{cmd:xtlogit, pa}后不适用。{p_end}
{p 4 6 2}
+ {cmd:forecast}在{cmd:mi}估计结果或{cmd:xtlogit, fe}后不适用。{p_end}
{phang}


{marker linkspdf}{...}
{title:PDF文档链接}

        {mansection XT xtlogitpostestimationRemarksandexamples:备注和示例}

{pstd}
上述部分未包含在此帮助文件中。


{marker syntax_predict}{...}
{marker predict}{...}
{title:预测的语法}

{phang}
随机效应模型

{p 8 16 2}
{cmd:predict} {dtype} {newvar} {ifin} [{cmd:,} 
{it:{help xtlogit_postestimation##randomeffects:RE_statistic}} {opt nooff:set}]

{phang}
固定效应模型

{p 8 16 2}
{cmd:predict} {dtype} {newvar} {ifin} [{cmd:,} 
{it:{help xtlogit_postestimation##fixedeffects:FE_statistic}} {opt nooff:set}]

{phang}
总体平均模型

{p 8 16 2}
{cmd:predict} {dtype} {newvar} {ifin} [{cmd:,} 
{it:{help xtlogit_postestimation##popaverage:PA_statistic}} {opt nooff:set}]

{marker randomeffects}{...}
{synoptset 17 tabbed}{...}
{synopthdr :RE_statistic}
{synoptline}
{syntab:主要}
{synopt :{opt xb}}线性预测；默认值{p_end}
{synopt :{opt pr}}正向结果的边际概率{p_end}
{synopt :{opt pu0}}假设随机效应为零时的正向结果概率{p_end}
{synopt :{opt stdp}}线性预测的标准误{p_end}
{synoptline}
{p2colreset}{...}

{marker fixedeffects}{...}
{synoptset 17 tabbed}{...}
{synopthdr :FE_statistic}
{synoptline}
{syntab:主要}
{synopt :{opt pc1}}在组内条件下的正向结果概率；默认值{p_end}
{synopt :{opt pu0}}假设固定效应为零时的正向结果概率{p_end}
{synopt :{opt xb}}线性预测{p_end}
{synopt :{opt stdp}}线性预测的标准误{p_end}
{synoptline}
{p2colreset}{...}
{p 4 6 2}
固定效应模型的预测概率是基于每组只存在一个结果的条件。详见{help clogit_zh:[R] clogit}。

{marker popaverage}{...}
{synoptset 17 tabbed}{...}
{synopthdr :PA_statistic}
{synoptline}
{syntab:主要}
{synopt :{opt mu}}{depvar}的概率；考虑{opt offset()}{p_end}
{synopt :{opt rate}}{depvar}的概率{p_end}
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
{cmd:predict}创建一个新变量，其中包含预测，如线性预测、概率、标准误差和方程级的得分。


{marker options_predict}{...}
{title:预测的选项}

{dlgtab:主要}

{phang}
{opt xb}计算线性预测。这是随机效应模型的默认值。

{phang}
{opt pc1}计算在组内只有一个正向结果时的正向结果概率。固定效应模型的默认值。

{phang}
{opt mu}和{opt rate}都计算{depvar}的预测概率。{opt mu}考虑{opt offset()}，而{opt rate}忽略这些调整。如果您没有指定{opt offset()}，那么{opt mu}和{cmd:rate}是等效的。{opt mu}是总体平均模型的默认值。

{phang}
{opt pr}计算以随机效应为基础的正向结果的边际概率，即通过对随机效应的预测函数进行积分计算。

{phang}
{opt pu0}计算正向结果的概率，假设该观察值的面板的固定或随机效应为零。这可能与组内观察结果的比例不相同。

{phang}
{opt stdp}计算线性预测的标准误差。

{phang}
{opt score}计算方程级得分。

{phang}
{opt nooffset}仅与您为{cmd:xtlogit}指定的{opth offset(varname)}相关。此选项修改{cmd:predict}的计算，使其忽略偏移变量；线性预测视为xb而不是xb + offset。


INCLUDE help syntax_margins

{phang}
随机效应模型

{synoptset 17}{...}
{synopthdr :statistic}
{synoptline}
{synopt :{opt pr}}正向结果的边际概率；默认值{p_end}
{synopt :{opt pu0}}假设随机效应为零时的正向结果概率{p_end}
{synopt :{opt xb}}线性预测{p_end}
{synopt :{opt stdp}}在{cmd:margins}中不允许使用{p_end}
{synoptline}
{p2colreset}{...}

{phang}
固定效应模型

{synoptset 17}{...}
{synopthdr :statistic}
{synoptline}
{synopt :{opt pu0}}假设固定效应为零时的正向结果概率；默认值{p_end}
{synopt :{opt xb}}线性预测{p_end}
{synopt :{opt pc1}}在{cmd:margins}中不允许使用{p_end}
{synopt :{opt stdp}}在{cmd:margins}中不允许使用{p_end}
{synoptline}
{p2colreset}{...}

{phang}
总体平均模型

{synoptset 17}{...}
{synopthdr :statistic}
{synoptline}
{synopt :{opt mu}}{depvar}的概率；考虑{opt offset()}{p_end}
{synopt :{opt rate}}{depvar}的概率{p_end}
{synopt :{opt xb}}线性预测{p_end}
{synopt :{opt stdp}}在{cmd:margins}中不允许使用{p_end}
{synopt :{opt sc:ore}}在{cmd:margins}中不允许使用{p_end}
{synoptline}
{p2colreset}{...}

INCLUDE help notes_margins


INCLUDE help menu_margins


{marker des_margins}{...}
{title:边际的描述}

{pstd}
{cmd:margins}估计线性预测和概率的响应边际。


{marker examples}{...}
{title:示例}

{pstd}设置{p_end}
{phang2}{cmd:. webuse union}{p_end}

{pstd}拟合随机效应模型{p_end}
{phang2}{cmd:. xtlogit union age grade i.south}{p_end}

{pstd}计算假设随机效应为零的正向结果概率{p_end}
{phang2}{cmd:. predict prob, pu0}{p_end}

{pstd}拟合总体平均模型{p_end}
{phang2}{cmd:. xtlogit union age grade i.south, pa}{p_end}

{pstd}计算{cmd:union}的预测概率{p_end}
{phang2}{cmd:. predict unionpr, mu}{p_end}

{pstd}计算{cmd:age}对{cmd:union}的概率的平均边际效应{p_end}
{phang2}{cmd:. margins, dydx(age)}{p_end}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <xtlogit_postestimation.sthlp>}