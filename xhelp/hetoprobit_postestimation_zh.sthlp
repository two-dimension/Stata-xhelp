{smcl}
{* *! version 1.0.0  07jan2019}{...}
{viewerdialog predict "dialog hetoprobit_p"}{...}
{vieweralsosee "[R] hetoprobit postestimation" "mansection R hetoprobitpostestimation"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[R] hetoprobit" "help hetoprobit_zh"}{...}
{viewerjumpto "后估计命令" "hetoprobit postestimation##description"}{...}
{viewerjumpto "PDF文档链接" "hetoprobit_postestimation_zh##linkspdf"}{...}
{viewerjumpto "预测" "hetoprobit postestimation##syntax_predict"}{...}
{viewerjumpto "边际" "hetoprobit postestimation##syntax_margins"}{...}
{viewerjumpto "示例" "hetoprobit postestimation##examples"}
{help hetoprobit_postestimation:English Version}
{hline}{...}
{p2colset 1 34 36 2}{...}
{p2col:{bf:[R] hetoprobit postestimation} {hline 2}}hetoprobit的后估计工具{p_end}
{p2col:}({mansection R hetoprobitpostestimation:查看完整的PDF手册条目}){p_end}
{p2colreset}{...}


{marker description}{...}
{title:后估计命令}

{pstd}
在执行{cmd:hetoprobit}后，可以使用以下后估计命令：

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
{synopt:{helpb hetoprobit_postestimation##margins:margins}}边际均值、预测边际、边际效应和平均边际效应{p_end}
INCLUDE help post_marginsplot
INCLUDE help post_nlcom
{synopt :{helpb hetoprobit postestimation##predict:predict}}预测、残差、影响统计和其他诊断量{p_end}
INCLUDE help post_predictnl
INCLUDE help post_pwcompare
INCLUDE help post_suest
INCLUDE help post_test
INCLUDE help post_testnl
{synoptline}
{p 4 6 2}
* {cmd:forecast}、{cmd:hausman}和{cmd:lrtest}不适用于{cmd:svy}估计结果。{p_end}


{marker linkspdf}{...}
{title:PDF文档链接}

        {mansection R hetoprobitpostestimationRemarksandexamples:备注和示例}

{pstd}
以上部分不包含在此帮助文件中。


{marker syntax_predict}{...}
{marker predict}{...}
{title:预测的语法}

{p 8 16 2}
{cmd:predict} {dtype} {c -(}{it:{help newvarlist##stub*:stub}}{cmd:*} {c |}
{it:{help newvar_zh}} {c |}
{it:{help newvarlist_zh}}{c )-} {ifin} [{cmd:,} {it:statistic}
{opt o:utcome(outcome)} {opt nooff:set}]

{synoptset 17 tabbed}{...}
{synopthdr :statistic}
{synoptline}
{syntab :主}
{synopt :{opt pr}}预测概率；默认选项{p_end}
{synopt :{opt xb}}线性预测{p_end}
{synopt :{opt stdp}}线性预测的标准误{p_end}
{synopt :{opt sigma}}误差项的标准差{p_end}
{synopt :{opt sc:ores}}方程级得分{p_end}
{synoptline}
{p2colreset}{...}
INCLUDE help fn_pr_out
{p 4 6 2}
您使用{cmd:xb}、{cmd:stdp}或{cmd:sigma}指定一个新变量。{p_end}
INCLUDE help esample


INCLUDE help menu_predict


{marker des_predict}{...}
{title:预测的描述}

{pstd}
{cmd:predict}创建一个包含预测值的新变量，如概率、线性预测和标准差。


{marker options_predict}{...}
{title:预测选项}

{dlgtab:主}

INCLUDE help pr_stub

{phang}
{opt xb}计算线性预测。线性预测是通过忽略估计的截距贡献来定义的。

{phang}
{opt stdp}计算线性预测的标准误。

{phang}
{opt sigma}计算误差项的标准差。

INCLUDE help outcome_opt
{opt outcome()}仅在默认{opt pr}选项下可用。

{phang}
{opt nooffset}仅在为{opt hetoprobit}或{opt het()}选项指定了{opt offset(varname)}的情况下相关。{opt nooffset}修改{opt predict}的计算，以忽略偏移变量：线性预测被视为xb而不是xb + offset，并且ln(sigma)的预测被视为zg而不是zg + offset。
{opt nooffset}不允许与{cmd:scores}一起使用。

{phang}
{opt scores}计算方程级得分变量。创建的得分变量数将等于模型中的结果数量。如果模型中的结果数量为k，那么

{pmore}
第一个新变量将包含相对于回归方程的对数似然的导数。

{pmore}
下一个新变量将包含相对于规模方程的对数似然的导数。

{pmore}
其他新变量将包含相对于截距的对数似然的导数。


INCLUDE help syntax_margins

{synoptset 17 tabbed}{...}
{synopthdr :statistic}
{synoptline}
{syntab :主}
{synopt :默认}每个结果的概率{p_end}
{synopt :{opt pr}}指定结果的概率{p_end}
{synopt :{opt xb}}线性预测{p_end}
{synopt :{opt stdp}}在{cmd:margins}中不允许{p_end}
{synopt :{opt sigma}}误差项的标准差{p_end}
{synoptline}
{p2colreset}{...}

INCLUDE help notes_margins


INCLUDE help menu_margins


{marker des_margins}{...}
{title:边际的描述}

{pstd}
{cmd:margins}估计响应率的边际，包括概率、线性预测和标准差。


{marker examples}{...}
{title:示例}

{pstd}设置{p_end}
{phang2}{cmd:. webuse eathealth15}{p_end}
{phang2}{cmd:. hetoprobit health age bmi i.exercise, het(age i.exercise)}{p_end}

{pstd}优秀健康状态的预测概率{p_end}
{phang2}{cmd:. predict pexc if e(sample), outcome(5)}{p_end}

{pstd}误差项的标准差预测{p_end}
{phang2}{cmd:. predict psig, sigma}{p_end}

{pstd}对健康状况差的概率影响的平均边际效应{p_end}
{phang2}{cmd:. margins, dydx(*) predict(outcome(1))}{p_end}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <hetoprobit_postestimation.sthlp>}