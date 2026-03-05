{smcl}
{* *! version 1.2.6  19oct2017}{...}
{viewerdialog predict "dialog xtpcse_p"}{...}
{vieweralsosee "[XT] xtpcse postestimation" "mansection XT xtpcsepostestimation"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[XT] xtpcse" "help xtpcse_zh"}{...}
{viewerjumpto "Postestimation commands" "xtpcse postestimation##description"}{...}
{viewerjumpto "predict" "xtpcse postestimation##syntax_predict"}{...}
{viewerjumpto "margins" "xtpcse postestimation##syntax_margins"}{...}
{viewerjumpto "Example" "xtpcse postestimation##example"}
{help xtpcse_postestimation:English Version}
{hline}{...}
{p2colset 1 31 33 2}{...}
{p2col:{bf:[XT] xtpcse postestimation} {hline 2}}xtpcse 的后验估计工具{p_end}
{p2col:}({mansection XT xtpcsepostestimation:查看完整的 PDF 手册条目}){p_end}
{p2colreset}{...}


{marker description}{...}
{title:后验估计命令}

{pstd}
在执行 {cmd:xtpcse} 之后，可以使用以下后验估计命令：

{synoptset 17}{...}
{p2coldent :命令}描述{p_end}
{synoptline}
INCLUDE help post_contrast
INCLUDE help post_estatsum
INCLUDE help post_estatvce
INCLUDE help post_estimates
INCLUDE help post_forecast
INCLUDE help post_lincom
{synopt:{helpb xtpcse_postestimation##margins:margins}}边际
	均值、预测边际、边际效应和平均边际效应{p_end}
INCLUDE help post_marginsplot
INCLUDE help post_nlcom
{synopt :{helpb xtpcse postestimation##predict:predict}}预测、残差、影响统计和其他诊断措施{p_end}
INCLUDE help post_predictnl
INCLUDE help post_pwcompare
INCLUDE help post_test
INCLUDE help post_testnl
{synoptline}
{p2colreset}{...}


{marker syntax_predict}{...}
{marker predict}{...}
{title:预测的语法}

{p 8 16 2}
{cmd:predict} {dtype} {newvar} {ifin}  [{cmd:,} {opt xb} {opt stdp}]

INCLUDE help esample


INCLUDE help menu_predict


{marker des_predict}{...}
{title:预测的描述}

{pstd}
{cmd:predict} 创建一个新变量，其中包含线性预测和标准误差等预测值。


{marker options_predict}{...}
{title:预测的选项}

{dlgtab:主要}

{phang}
{opt xb}，默认情况下，计算线性预测。

{phang}
{opt stdp} 计算线性预测的标准误差。


INCLUDE help syntax_margins1

{synoptset 17}{...}
{synopthdr :统计量}
{synoptline}
{synopt :{opt xb}}线性预测；默认选项{p_end}
{synopt :{opt stdp}}与 {cmd:margins} 不兼容{p_end}
{synoptline}
{p2colreset}{...}

INCLUDE help notes_margins


INCLUDE help menu_margins


{marker des_margins}{...}
{title:边际的描述}

{pstd}
{cmd:margins} 估计线性预测的反应边际。


{marker example}{...}
{title:示例}

{pstd}设置{p_end}
{phang2}{cmd:. webuse grunfeld}{p_end}
{phang2}{cmd:. xtset company year, yearly}{p_end}
{phang2}{cmd:. xtpcse invest mvalue kstock, correlation(psar1) rhotype(tscorr)}
{p_end}

{pstd}获取线性预测{p_end}
{phang2}{cmd:. predict ihat, xb}{p_end}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <xtpcse_postestimation.sthlp>}