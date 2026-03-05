{smcl}
{* *! version 1.0.7  30nov2018}{...}
{viewerdialog predict "dialog betareg_p"}{...}
{vieweralsosee "[R] betareg postestimation" "mansection R betaregpostestimation"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[R] betareg" "help betareg_zh"}{...}
{viewerjumpto "后估计命令" "betareg postestimation##description"}{...}
{viewerjumpto "PDF 文档链接" "betareg_postestimation_zh##linkspdf"}{...}
{viewerjumpto "predict" "betareg postestimation##syntax_predict"}{...}
{viewerjumpto "margins" "betareg postestimation##syntax_margins"}{...}
{viewerjumpto "示例" "betareg postestimation##examples"}
{help betareg_postestimation:English Version}
{hline}{...}
{p2colset 1 31 33 2}{...}
{p2col:{bf:[R] betareg postestimation} {hline 2}}betareg 的后估计工具{p_end}
{p2col:}({mansection R betaregpostestimation:查看完整 PDF 手册条目}){p_end}
{p2colreset}{...}


{marker description}{...}
{title:后估计命令}

{pstd}
以下后估计命令在 {opt betareg} 之后可用：

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
{synopt:{helpb betareg_postestimation##margins:margins}}边际
	均值、预测边际、边际效应和平均边际
	效应{p_end}
INCLUDE help post_marginsplot
INCLUDE help post_nlcom
{synopt :{helpb betareg postestimation##predict:predict}}预测、残差、影响统计和其他诊断措施{p_end}
INCLUDE help post_predictnl
INCLUDE help post_pwcompare
INCLUDE help post_suest
INCLUDE help post_test
INCLUDE help post_testnl
{synoptline}
{p2colreset}{...}
{p 4 6 2}
* {cmd:forecast}、{cmd:hausman} 和 {cmd:lrtest} 不适用于 {cmd:svy}
估计结果。


{marker linkspdf}{...}
{title:PDF 文档链接}

        {mansection R betaregpostestimationRemarksandexamples:备注和示例}

{pstd}
上述部分未包含在此帮助文件中。


{marker syntax_predict}{...}
{marker predict}{...}
{title:预测的语法}

{p 8 16 2}
{cmd:predict}
{dtype}
{newvar}
{ifin}
[{cmd:,} {it:statistic}]

{p 8 16 2}
{cmd:predict}
{dtype}
{c -(}{it:{help newvarlist##stub*:stub}}{cmd:*} {c |}
{it:{help newvar_zh:newvar_mean}} {it:{help newvar_zh:newvar_scale}}{c )-}
{ifin}{cmd:,} {opt sc:ores}


{synoptset 17 tabbed}{...}
{synopthdr :统计量}
{synoptline}
{syntab:主}
{synopt :{opt cm:ean}}因变量的条件均值；
默认值{p_end}
{synopt :{opt cvar:iance}}因变量的条件方差{p_end}
{synopt :{opt xb}}条件均值方程中的线性预测{p_end}
{synopt :{opt xbsca:le}}条件尺度方程中的线性预测{p_end}
{synopt :{opt stdp}}线性预测的标准误{p_end}
{synoptline}
{p2colreset}{...}
INCLUDE help esample


INCLUDE help menu_predict


{marker des_predict}{...}
{title:预测的说明}

{pstd}
{cmd:predict} 创建一个新变量，包含线性预测、条件均值、条件方差和
方程级得分等预测值。


{marker options_predict}{...}
{title:预测的选项}

{dlgtab:主}

{phang}
{opt cmean}，默认为计算因变量的条件均值。

{phang}
{opt cvariance} 计算因变量的条件方差。

{phang}
{opt xb} 计算条件均值方程的线性预测。

{phang}
{opt xbscale} 计算条件尺度方程的线性预测。

{phang}
{opt stdp} 计算条件均值方程线性预测的标准误。

{phang}
{opt scores} 计算方程级得分变量。第一个新变量将包含相对于条件均值方程的对数似然的导数，第二个新变量将包含相对于条件尺度方程的对数似然的导数。


INCLUDE help syntax_margins

{synoptset 17}{...}
{synopthdr :统计量}
{synoptline}
{synopt :{opt cm:ean}}因变量的条件均值；为
默认值{p_end}
{synopt :{opt cvar:iance}}因变量的条件方差{p_end}
{synopt :{opt xb}}条件均值方程内的线性预测{p_end}
{synopt :{opt xbsca:le}}条件尺度方程内的线性预测{p_end}
{synopt :{opt stdp}}不允许与 {cmd:margins}{p_end}
{synopt :{opt scores}}不允许与 {cmd:margins}{p_end}
{synoptline}
{p2colreset}{...}

INCLUDE help notes_margins


INCLUDE help menu_margins


{marker des_margins}{...}
{title:边际的说明}

{pstd}
{cmd:margins} 估计条件均值、条件方差和线性预测的响应边际。


{marker examples}{...}
{title:示例}

    {hline}
{pstd}设置{p_end}
{phang2}{cmd:. webuse sprogram}{p_end}
{phang2}{cmd:. betareg prate i.summer freemeals pdonations, scale(freemeals)}{p_end}
{phang2}{cmd:. estimates store model1}{p_end}
{phang2}{cmd:. betareg prate i.summer freemeals pdonations, scale(freemeals) link(cloglog)}{p_end}
{phang2}{cmd:. estimates store model2}{p_end}
{phang2}{cmd:. betareg prate i.summer freemeals pdonations, scale(freemeals) slink(root)}{p_end}
{phang2}{cmd:. estimates store model3}{p_end}
{phang2}{cmd:. betareg prate i.summer freemeals pdonations, scale(freemeals) link(cloglog) slink(root)}{p_end}
{phang2}{cmd:. estimates store model4}{p_end}

{pstd}显示每个模型的系数、标准误和 BIC{p_end}
{phang2}{cmd:. estimates table model1 model2 model3 model4, stats(bic) se vsquish}{p_end}

    {hline}
{pstd}设置{p_end}
{phang2}{cmd:. webuse sprogram, clear}{p_end}
{phang2}{cmd:. betareg prate i.summer freemeals pdonations, scale(freemeals) link(cloglog) slink(root) vce(robust)}{p_end}

{pstd}估计总体平均处理效应的标准误{p_end}
{phang2}{cmd:. margins r.summer, contrast(nowald) vce(unconditional)}{p_end}

    {hline}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <betareg_postestimation.sthlp>}