{smcl}
{* *! version 1.2.6  19oct2017}{...}
{viewerdialog predict "dialog xtgls_p"}{...}
{vieweralsosee "[XT] xtgls postestimation" "mansection XT xtglspostestimation"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[XT] xtgls" "help xtgls_zh"}{...}
{viewerjumpto "后估计命令" "xtgls postestimation##description"}{...}
{viewerjumpto "预测" "xtgls postestimation##syntax_predict"}{...}
{viewerjumpto "边际" "xtgls postestimation##syntax_margins"}{...}
{viewerjumpto "示例" "xtgls postestimation##examples"}
{help xtgls_postestimation:English Version}
{hline}{...}
{p2colset 1 30 32 2}{...}
{p2col:{bf:[XT] xtgls postestimation} {hline 2}}xtgls的后估计工具{p_end}
{p2col:}({mansection XT xtglspostestimation:查看完整的PDF手册条目}){p_end}
{p2colreset}{...}


{marker description}{...}
{title:后估计命令}

{pstd}
在执行 {cmd:xtgls} 后，可以使用以下后估计命令：

{synoptset 17 tabbed}{...}
{p2coldent :命令}描述{p_end}
{synoptline}
包含 help post_contrast
{p2coldent:* {bf:{help estat ic}}}赤池信息量准则和施瓦茨贝叶斯信息量准则 (AIC 和 BIC){p_end}
包含 help post_estatsum
包含 help post_estatvce
包含 help post_estimates
包含 help post_forecast
包含 help post_hausman
包含 help post_lincom
{p2coldent:* {bf:{help lrtest_zh}}}似然比检验{p_end}
{synopt:{helpb xtgls_postestimation##margins:margins}}边际
	均值、预测边际、边际效应和平均边际
	effects{p_end}
包含 help post_marginsplot
包含 help post_nlcom
{p2col :{helpb xtgls postestimation##predict:predict}}预测、残差、
	影响统计量和其他诊断措施{p_end}
包含 help post_predictnl
包含 help post_pwcompare
包含 help post_test
包含 help post_testnl
{synoptline}
{p2colreset}{...}
{p 4 8 2}* {cmd:estat ic} 和 {cmd:lrtest} 仅在指定了 {cmd:igls} 和 {cmd:corr(independent)} 时可用。{p_end}


{marker syntax_predict}{...}
{marker predict}{...}
{title:预测的语法}

{p 8 16 2}
{cmd:predict} {dtype} {newvar} {ifin} [{cmd:,} {opt xb} {opt stdp}]

包含 help esample


包含 help menu_predict


{marker des_predict}{...}
{title:预测的描述}

{pstd}
{cmd:predict} 创建一个新变量，包含预测，如
线性预测和标准误差。


{marker options_predict}{...}
{title:预测的选项}

{dlgtab:主要}

{phang}
{opt xb}，默认情况下，计算线性预测。

{phang}
{opt stdp} 计算线性预测的标准误差。


包含 help syntax_margins1

{synoptset 17}{...}
{synopthdr :统计量}
{synoptline}
{synopt :{opt xb}}线性预测；默认值{p_end}
{synopt :{opt stdp}}与 {cmd:margins} 不允许共用{p_end}
{synoptline}
{p2colreset}{...}

包含 help notes_margins


包含 help menu_margins


{marker des_margins}{...}
{title:边际的描述}

{pstd}
{cmd:margins} 估计线性预测的响应边际。


{marker examples}{...}
{title:示例}

{pstd}设置{p_end}
{phang2}{cmd:. webuse invest2}{p_end}
{phang2}{cmd:. xtset company time}{p_end}
{phang2}{cmd:. xtgls invest market stock, panels(correlated) corr(ar1)}{p_end}

{pstd}检验 {cmd:market} 和 {cmd:stock} 的系数是否联合为零{p_end}
{phang2}{cmd:. test market stock}

{pstd}线性预测{p_end}
{phang2}{cmd:. predict ihat}{p_end}

{pstd}线性预测的标准误差{p_end}
{phang2}{cmd:. predict serr, stdp}{p_end}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <xtgls_postestimation.sthlp>}