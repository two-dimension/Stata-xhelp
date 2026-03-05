{smcl}
{* *! version 1.2.5  19oct2017}{...}
{viewerdialog predict "dialog vwls_p"}{...}
{vieweralsosee "[R] vwls postestimation" "mansection R vwlspostestimation"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[R] vwls" "help vwls_zh"}{...}
{viewerjumpto "Postestimation commands" "vwls postestimation##description"}{...}
{viewerjumpto "predict" "vwls postestimation##syntax_predict"}{...}
{viewerjumpto "margins" "vwls postestimation##syntax_margins"}{...}
{viewerjumpto "Examples" "vwls postestimation##examples"}
{help vwls_postestimation:English Version}
{hline}{...}
{p2colset 1 28 30 2}{...}
{p2col:{bf:[R] vwls postestimation} {hline 2}}vwls 的后估计工具
{p_end}
{p2col:}({mansection R vwlspostestimation:查看完整 PDF 手册条目}){p_end}
{p2colreset}{...}


{marker description}{...}
{title:后估计命令}

{pstd}
在 {cmd:vwls} 之后可以使用以下后估计命令：

{synoptset 20}{...}
{p2col:命令}描述{p_end}
{p2line}
INCLUDE help post_contrast
INCLUDE help post_estatsum
INCLUDE help post_estatvce
INCLUDE help post_estimates
INCLUDE help post_forecast
INCLUDE help post_hausman
INCLUDE help post_lincom
INCLUDE help post_linktest
{synopt:{helpb vwls_postestimation##margins:margins}}边际
	均值、预测边际、边际效应和平均边际
	效应{p_end}
INCLUDE help post_marginsplot
INCLUDE help post_nlcom
{p2col :{helpb vwls postestimation##predict:predict}}预测、残差、
影响统计和其他诊断测量{p_end}
INCLUDE help post_predictnl
INCLUDE help post_pwcompare
INCLUDE help post_test
INCLUDE help post_testnl
{p2line}
{p2colreset}{...}


{marker syntax_predict}{...}
{marker predict}{...}
{title:预测的语法}

{p 8 17 2}
{cmd:predict} {dtype} {newvar} {ifin} [{cmd:,} {cmd:xb} {cmd:stdp}]

{phang}
这些统计量在样本内和样本外均可用；如果只想获得估计样本的数据，请输入
{cmd:predict} {it:...} {cmd:if e(sample)} {it:...}。


INCLUDE help menu_predict


{marker des_predict}{...}
{title:预测的描述}

{pstd}
{cmd:predict} 创建一个包含线性预测和标准误差等预测的新变量。


{marker options_predict}{...}
{title:预测的选项}

{dlgtab:主要}

{phang}
{opt xb}，默认为计算线性预测。

{phang}
{opt stdp} 计算线性预测的标准误差。


INCLUDE help syntax_margins1

{synoptset 17}{...}
{synopthdr :统计量}
{synoptline}
{synopt :{opt xb}}线性预测；默认值{p_end}
{synopt :{opt stdp}}与 {cmd:margins} 不兼容{p_end}
{synoptline}
{p2colreset}{...}

INCLUDE help notes_margins


INCLUDE help menu_margins


{marker des_margins}{...}
{title:边际的描述}

{pstd}
{cmd:margins} 估计线性预测的响应边际。


{marker examples}{...}
{title:示例}

{pstd}设置{p_end}
{phang2}{cmd:. webuse bp}{p_end}
{phang2}{cmd:. vwls bp gender race}{p_end}

{pstd}线性预测{p_end}
{phang2}{cmd:. predict p}

{pstd}线性预测的摘要{p_end}
{phang2}{cmd:. margins}{p_end}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <vwls_postestimation.sthlp>}