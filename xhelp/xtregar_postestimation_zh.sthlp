{smcl}
{* *! version 1.2.6  19oct2017}{...}
{viewerdialog predict "dialog xtrar_p"}{...}
{vieweralsosee "[XT] xtregar postestimation" "mansection XT xtregarpostestimation"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[XT] xtregar" "help xtregar_zh"}{...}
{viewerjumpto "Postestimation commands" "xtregar postestimation##description"}{...}
{viewerjumpto "predict" "xtregar postestimation##syntax_predict"}{...}
{viewerjumpto "margins" "xtregar postestimation##syntax_margins"}{...}
{viewerjumpto "Example" "xtregar postestimation##example"}
{help xtregar_postestimation:English Version}
{hline}{...}
{p2colset 1 32 29 2}{...}
{p2col:{bf:[XT] xtregar postestimation} {hline 2}}xtregar 的后估计工具{p_end}
{p2col:}({mansection XT xtregarpostestimation:查看完整的 PDF 手册条目}){p_end}
{p2colreset}{...}


{marker description}{...}
{title:后估计命令}

{pstd}
在执行 {cmd:xtregar} 后，可以使用以下后估计命令：

{synoptset 17 tabbed}{...}
{p2coldent :命令}描述{p_end}
{synoptline}
INCLUDE help post_contrast
{p2coldent :* {bf:{help estat ic}}}赤池信息量准则和施瓦兹贝叶斯信息量准则（AIC 和 BIC）{p_end}
INCLUDE help post_estatsum
INCLUDE help post_estatvce
INCLUDE help post_estimates
INCLUDE help post_forecast
INCLUDE help post_lincom
{synopt:{helpb xtregar_postestimation##margins:margins}}边际均值、预测边际、边际效应和平均边际效应{p_end}
INCLUDE help post_marginsplot
INCLUDE help post_nlcom
{synopt :{helpb xtregar postestimation##predict:predict}}预测、残差、影响统计量和其他诊断指标{p_end}
INCLUDE help post_predictnl
INCLUDE help post_pwcompare
INCLUDE help post_test
INCLUDE help post_testnl
{synoptline}
{p2colreset}{...}
{p 4 6 2}
* {opt estat ic} 在 {opt xtregar, re} 后不适用。


{marker syntax_predict}{...}
{marker predict}{...}
{title:预测语法}

{p 8 16 2}
{cmd:predict} {dtype} {newvar} {ifin} [{cmd:,} {it:statistic}]


{synoptset 17 tabbed}{...}
{synopthdr :statistic}
{synoptline}
{syntab:主要}
{synopt :{opt xb}}xb，线性预测；默认值{p_end}
{synopt :{opt ue}}u_i + e_it，组合残差{p_end}
{p2coldent :* {opt u}}u_i，固定或随机误差成分{p_end}
{p2coldent :* {opt e}}e_it，整体误差成分{p_end}
{synoptline}
{p2colreset}{...}
{p 4 6 2}
未加星号的统计量在样本内和样本外均可用；如果只希望对估计样本进行操作，请键入 {cmd:predict} {it:...} {cmd:if e(sample)} {it:...}。带星号的统计量仅在估计样本中计算，即使没有指定 {cmd:if e(sample)} 。


INCLUDE help menu_predict


{marker des_predict}{...}
{title:预测的描述}

{pstd}
{cmd:predict} 创建一个包含预测（如线性预测和其他预测）的新变量。


{marker options_predict}{...}
{title:预测选项}

{dlgtab:主要}

{phang}
{opt xb}，默认值，计算线性预测 xb。

{phang}
{opt ue} 计算 u_it + e_it 的预测。

{phang}
{opt u} 计算 u_i 的预测，估计的固定或随机效应。

{phang}
{opt e} 计算 e_it 的预测。
{p_end}


INCLUDE help syntax_margins1

{synoptset 17}{...}
{synopthdr :statistic}
{synoptline}
{synopt :{opt xb}}xb，线性预测；默认值{p_end}
{synopt :{opt ue}}与 {cmd:margins} 不兼容{p_end}
{synopt :{opt u}}与 {cmd:margins} 不兼容{p_end}
{synopt :{opt e}}与 {cmd:margins} 不兼容{p_end}
{synoptline}
{p2colreset}{...}

INCLUDE help notes_margins


INCLUDE help menu_margins


{marker des_margins}{...}
{title:margins 的描述}

{pstd}
{cmd:margins} 估计线性预测的反应边际。


{marker example}{...}
{title:示例}

{pstd}设置{p_end}
{phang2}{cmd:. webuse grunfeld}{p_end}
{phang2}{cmd:. xtregar invest mvalue kstock, fe}

{pstd}计算线性预测{p_end}
{phang2}{cmd:. predict xb}{p_end}

{pstd}估计固定效应{p_end}
{phang2}{cmd:. predict u, u}{p_end}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <xtregar_postestimation.sthlp>}