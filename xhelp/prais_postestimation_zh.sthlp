{smcl}
{* *! version 1.2.5  19oct2017}{...}
{viewerdialog predict "dialog prais_p"}{...}
{vieweralsosee "[TS] prais postestimation" "mansection TS praispostestimation"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[TS] prais" "help prais_zh"}{...}
{viewerjumpto "Postestimation commands" "prais postestimation##description"}{...}
{viewerjumpto "predict" "prais postestimation##syntax_predict"}{...}
{viewerjumpto "margins" "prais postestimation##syntax_margins"}{...}
{viewerjumpto "Example" "prais postestimation##example"}
{help prais_postestimation:English Version}
{hline}{...}
{p2colset 1 30 32 2}{...}
{p2col:{bf:[TS] prais postestimation} {hline 2}}用于 prais 的后续估计工具{p_end}
{p2col:}({mansection TS praispostestimation:查看完整的 PDF 手册条目}){p_end}
{p2colreset}{...}


{marker description}{...}
{title:后续估计命令}

{pstd}
在使用 {opt prais} 后，提供以下标准的后续估计命令：

{synoptset 17}{...}
{synopt:Command}描述{p_end}
{synoptline}
INCLUDE help post_contrast
INCLUDE help post_estatic
INCLUDE help post_estatsum
INCLUDE help post_estatvce
INCLUDE help post_estimates
INCLUDE help post_forecast
INCLUDE help post_lincom
INCLUDE help post_linktest
INCLUDE help post_lrtest
{synopt:{helpb prais_postestimation##margins:margins}}边际
	均值、预测边际、边际效应和平均边际
	效应{p_end}
INCLUDE help post_marginsplot
INCLUDE help post_nlcom
{p2col :{helpb prais postestimation##predict:predict}}预测、残差、影响统计量和其他诊断措施{p_end}
INCLUDE help post_predictnl
INCLUDE help post_pwcompare
INCLUDE help post_test
INCLUDE help post_testnl
{synoptline}


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
{syntab:Main}
{synopt:{cmd:xb}}线性预测；默认值{p_end}
{synopt:{cmd:stdp}}线性预测的标准误差{p_end}
{synopt:{cmdab:r:esiduals}}残差{p_end}
{synoptline}
{p2colreset}{...}
INCLUDE help esample


INCLUDE help menu_predict


{marker des_predict}{...}
{title:预测的描述}

{pstd}
{cmd:predict} 创建一个包含预测（例如线性预测和残差）的新变量。


{marker options_predict}{...}
{title:预测的选项}

{dlgtab:Main}

{phang}
{opt xb}（默认值）计算拟合值，即指定方程的 
   xb 预测。这是拟合回归模型的线性
   预测值；不对先前的残差应用rho的估计。

{phang}
{opt stdp}计算指定方程的预测标准误差，即
   观察值协变量模式的预期值或均值的标准误差。
   预测的标准误差也被称为拟合值的标准误差。

{pmore}
   对于 {opt prais} 计算的，这是严格的线性模型参数估计
   的方差的标准误差，并假设rho的估计没有错误。

{phang}
{opt residuals}计算来自线性预测的残差。


INCLUDE help syntax_margins1

{synoptset 17}{...}
{synopthdr :statistic}
{synoptline}
{synopt:{cmd:xb}}线性预测；默认值{p_end}
{synopt:{opt stdp}}与 {cmd:margins} 不兼容{p_end}
{synopt:{opt r:esiduals}}与 {cmd:margins} 不兼容{p_end}
{synoptline}
{p2colreset}{...}

INCLUDE help notes_margins


INCLUDE help menu_margins


{marker des_margins}{...}
{title:margins 的描述}

{pstd}
{cmd:margins} 估计线性预测的边际响应。


{marker example}{...}
{title:示例}

{pstd}设置{p_end}
{phang2}{cmd:. webuse idle}{p_end}
{phang2}{cmd:. tsset t}{p_end}
{phang2}{cmd:. prais usr idle}{p_end}

{pstd}线性预测{p_end}
{phang2}{cmd:. predict usrhat}{p_end}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <prais_postestimation.sthlp>}