{smcl}
{* *! version 1.1.7  15jan2019}{...}
{viewerdialog predict "dialog hetpr_p"}{...}
{vieweralsosee "[R] hetprobit postestimation" "mansection R hetprobitpostestimation"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[R] hetprobit" "help hetprobit_zh"}{...}
{viewerjumpto "后估计命令" "hetprobit postestimation##description"}{...}
{viewerjumpto "PDF文档链接" "hetprobit_postestimation_zh##linkspdf"}{...}
{viewerjumpto "预测" "hetprobit postestimation##syntax_predict"}{...}
{viewerjumpto "边际" "hetprobit postestimation##syntax_margins"}{...}
{viewerjumpto "示例" "hetprobit postestimation##examples"}
{help hetprobit_postestimation:English Version}
{hline}{...}
{p2colset 1 33 35 2}{...}
{p2col:{bf:[R] hetprobit postestimation} {hline 2}}hetprobit 的后估计工具{p_end}
{p2col:}({mansection R hetprobitpostestimation:查看完整的PDF手册条目}){p_end}
{p2colreset}{...}


{marker description}{...}
{title:后估计命令}

{pstd}
在 {cmd:hetprobit} 之后可以使用以下后估计命令：

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
{synopt:{helpb hetprobit_postestimation##margins:margins}}边际
	均值、预测边际、边际效应和平均边际
	效应{p_end}
INCLUDE help post_marginsplot
INCLUDE help post_nlcom
{synopt :{helpb hetprobit postestimation##predict:predict}}预测值、残差、影响统计和其他诊断措施{p_end}
INCLUDE help post_predictnl
INCLUDE help post_pwcompare
INCLUDE help post_suest
INCLUDE help post_test
INCLUDE help post_testnl
{synoptline}
{p 4 6 2}
* {cmd:forecast}、{cmd:hausman} 和 {cmd:lrtest} 不适用于 
{cmd:svy} 估计结果。{p_end}


{marker linkspdf}{...}
{title:PDF文档链接}

        {mansection R hetprobitpostestimationRemarksandexamples:备注和示例}

{pstd}
以上部分未包含在此帮助文件中。


{marker syntax_predict}{...}
{marker predict}{...}
{title:预测的语法}

{p 8 16 2}
{cmd:predict} {dtype} {newvar} {ifin} [{cmd:,} {it:statistic} 
{opt nooff:set}]

{p 8 16 2}
{cmd:predict} {dtype} {c -(}{it:{help newvarlist##stub*:stub}}{cmd:*} {c |} {it:{help newvar_zh:newvar_reg}}
{it:{help newvar_zh:newvar_lnsigma}}{c )-} {ifin} {cmd:,} {opt sc:ores}

{synoptset 17 tabbed}{...}
{synopthdr :statistic}
{synoptline}
{syntab :主要}
{synopt :{opt pr}}正结果的概率；默认{p_end}
{synopt :{opt xb}}线性预测{p_end}
{synopt :{opt sigma}}误差项的标准差{p_end}
{synoptline}
{p2colreset}{...}
INCLUDE help esample


INCLUDE help menu_predict


{marker des_predict}{...}
{title:预测的描述}

{pstd}
{cmd:predict} 创建一个包含预测值的新变量，例如概率、线性预测和标准差。


{marker options_predict}{...}
{title:预测的选项}

{dlgtab:主要}

{phang}
{opt pr}，默认情况下，计算正结果的概率。

{phang}
{opt xb} 计算线性预测。

{phang}
{opt sigma} 计算误差项的标准差。

{phang}
{opt nooffset} 仅在您为 {cmd:hetprobit} 指定了 {opth offset(varname)} 时相关。它修改 {cmd:predict} 的计算，使其忽略偏移变量；线性预测被视为 xb 而不是 xb + offset。

{phang}
{opt scores} 计算方程级别的得分变量。

{pmore}
第一个新变量将包含关于回归方程的对数似然的导数。

{pmore}
第二个新变量将包含关于规模方程的对数似然的导数 ({hi:lnsigma})。


INCLUDE help syntax_margins

{synoptset 17}{...}
{synopthdr :statistic}
{synoptline}
{synopt :{opt pr}}正结果的概率；默认{p_end}
{synopt :{opt xb}}线性预测{p_end}
{synopt :{opt sigma}}误差项的标准差{p_end}
{synoptline}
{p2colreset}{...}

INCLUDE help notes_margins


INCLUDE help menu_margins


{marker des_margins}{...}
{title:边际的描述}

{pstd}
{cmd:margins} 估计响应的边际，
包括概率、线性预测和标准差。


{marker examples}{...}
{title:示例}

{pstd}设置{p_end}
{phang2}{cmd:. webuse hetprobxmpl}{p_end}

{pstd}拟合异方差 Probit 模型{p_end}
{phang2}{cmd:. hetprobit y x, het(xhet) vce(robust)}{p_end}

{pstd}计算拟合概率{p_end}
{phang2}{cmd:. predict phat}{p_end}

{pstd}计算预测标准差，{cmd:xhet} 的函数{p_end}
{phang2}{cmd:. predict sigmahat, sigma}{p_end}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <hetprobit_postestimation.sthlp>}