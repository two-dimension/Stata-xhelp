{smcl}
{* *! version 1.2.5  30oct2018}{...}
{viewerdialog predict "dialog newey_p"}{...}
{vieweralsosee "[TS] newey postestimation" "mansection TS neweypostestimation"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[TS] newey" "help newey_zh"}{...}
{viewerjumpto "Postestimation commands" "newey postestimation##description"}{...}
{viewerjumpto "Links to PDF documentation" "newey_postestimation_zh##linkspdf"}{...}
{viewerjumpto "predict" "newey postestimation##syntax_predict"}{...}
{viewerjumpto "margins" "newey postestimation##syntax_margins"}{...}
{viewerjumpto "Example" "newey postestimation##example"}
{help newey_postestimation:English Version}
{hline}{...}
{p2colset 1 30 32 2}{...}
{p2col:{bf:[TS] newey postestimation} {hline 2}}newey 的事后估计工具{p_end}
{p2col:}({mansection TS neweypostestimation:查看完整 PDF 手册条目}){p_end}
{p2colreset}{...}


{marker description}{...}
{title:事后估计命令}

{pstd}
在 {opt newey} 后可用以下事后估计命令：

{synoptset 17}{...}
{synopt:命令}描述{p_end}
{synoptline}
INCLUDE help post_contrast
INCLUDE help post_estatsum
INCLUDE help post_estatvce
INCLUDE help post_estimates
INCLUDE help post_forecast
INCLUDE help post_lincom
INCLUDE help post_linktest
{synopt:{helpb newey_postestimation##margins:margins}}边际
	均值、预测边际、边际效应和平均边际效应{p_end}
INCLUDE help post_marginsplot
INCLUDE help post_nlcom
{p2col :{helpb newey postestimation##predict:predict}}预测、残差、影响统计和其他诊断措施{p_end}
INCLUDE help post_predictnl
INCLUDE help post_pwcompare
INCLUDE help post_test
INCLUDE help post_testnl
{synoptline}


{marker linkspdf}{...}
{title:PDF 文档链接}

        {mansection TS neweypostestimationRemarksandexamples:备注和示例}

{pstd}
以上部分未包含在此帮助文件中。


{marker syntax_predict}{...}
{marker predict}{...}
{title:预测的语法}

{p 8 16 2}
{cmd:predict}
{dtype}
{newvar}
{ifin}
[{cmd:,} {it:statistic}]

{synoptset 17 tabbed}{...}
{synopthdr:statistic}
{synoptline}
{syntab :主要}
{synopt:{opt xb}}线性预测；默认值{p_end}
{synopt:{opt stdp}}线性预测的标准误{p_end}
{synopt:{opt re:siduals}}残差{p_end}
{synoptline}
{p2colreset}{...}
INCLUDE help esample


INCLUDE help menu_predict


{marker des_predict}{...}
{title:预测的描述}

{pstd}
{cmd:predict} 创建一个包含诸如线性预测和残差的预测的新变量。


{marker options_predict}{...}
{title:预测的选项}

{dlgtab:主要}

{phang}{opt xb}（默认）计算线性预测。

{phang}{opt stdp}计算线性预测的标准误。

{phang}{opt residuals}计算残差。


INCLUDE help syntax_margins1

{synoptset 17}{...}
{synopthdr :statistic}
{synoptline}
{synopt:{opt xb}}线性预测；默认值{p_end}
{synopt:{opt stdp}}与 {cmd:margins} 不允许一起使用{p_end}
{synopt:{opt r:esiduals}}与 {cmd:margins} 不允许一起使用{p_end}
{synoptline}
{p2colreset}{...}

INCLUDE help notes_margins


INCLUDE help menu_margins


{marker des_margins}{...}
{title:margins 的描述}

{pstd}
{cmd:margins} 估计线性预测的响应边际。


{marker example}{...}
{title:示例}

{pstd}设置{p_end}
{phang2}{cmd:. webuse idle2}{p_end}
{phang2}{cmd:. tsset time}{p_end}
{phang2}{cmd:. newey usr idle, lag(3)}{p_end}

{pstd}线性预测{p_end}
{phang2}{cmd:. predict usrhat}{p_end}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <newey_postestimation.sthlp>}