{smcl}
{* *! version 1.2.6  19oct2017}{...}
{viewerdialog predict "dialog xtrc_p"}{...}
{vieweralsosee "[XT] xtrc postestimation" "mansection XT xtrcpostestimation"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[XT] xtrc" "help xtrc_zh"}{...}
{viewerjumpto "Postestimation commands" "xtrc postestimation##description"}{...}
{viewerjumpto "predict" "xtrc postestimation##syntax_predict"}{...}
{viewerjumpto "margins" "xtrc postestimation##syntax_margins"}{...}
{viewerjumpto "Examples" "xtrc postestimation##examples"}
{help xtrc_postestimation:English Version}
{hline}{...}
{p2colset 1 29 31 2}{...}
{p2col:{bf:[XT] xtrc postestimation} {hline 2}}xtrc 的后估计工具{p_end}
{p2col:}({mansection XT xtrcpostestimation:查看完整PDF手册条目}){p_end}
{p2colreset}{...}


{marker description}{...}
{title:后估计命令}

{pstd}
在执行 {cmd:xtrc} 后，可以使用以下后估计命令：

{synoptset 17 tabbed}{...}
{p2coldent :命令}描述{p_end}
{synoptline}
INCLUDE help post_contrast
INCLUDE help post_estatsum
INCLUDE help post_estatvce
INCLUDE help post_estimates
INCLUDE help post_forecast_star
INCLUDE help post_hausman
INCLUDE help post_lincom
{synopt:{helpb xtrc_postestimation##margins:margins}}边际
	均值、预测边际、边际效应和平均边际
	效应{p_end}
INCLUDE help post_marginsplot
INCLUDE help post_nlcom
{synopt :{helpb xtrc postestimation##predict:predict}}预测、残差、影响统计量和其他诊断测量{p_end}
INCLUDE help post_predictnl
INCLUDE help post_pwcompare
INCLUDE help post_test
INCLUDE help post_testnl
{synoptline}
{p2colreset}{...}
{p 4 6 2}
* {cmd:forecast} 不适用于 {cmd:mi}
估计结果。{p_end}


{marker syntax_predict}{...}
{marker predict}{...}
{title:预测的语法}

{p 8 16 2}
{cmd:predict} {dtype} {newvar} {ifin} [{cmd:,} {it:statistic}
{opt nooff:set}]

{synoptset 17 tabbed}{...}
{synopthdr :statistic}
{synoptline}
{syntab:主}
{synopt :{opt xb}}线性预测；默认值{p_end}
{synopt :{opt stdp}}线性预测的标准误{p_end}
{synopt :{opt group(group)}}基于组 {it:group} 的线性预测{p_end}
{synoptline}
{p2colreset}{...}
INCLUDE help esample


INCLUDE help menu_predict


{marker des_predict}{...}
{title:预测的描述}

{pstd}
{cmd:predict} 创建一个新变量，包含预测值，例如
线性预测和标准误。


{marker options_predict}{...}
{title:预测的选项}

{dlgtab:主}

{phang}
{opt xb}，默认情况下，使用平均参数向量计算线性预测。

{phang}
{opt stdp} 计算线性预测的标准误。

{phang}
{opt group(group)} 使用组 {it:group} 的最佳线性预测器计算线性预测。

{phang}
{opt nooffset} 仅在为 {cmd:xtrc} 指定了 {opth offset(varname)} 时相关。它修改 {cmd:predict} 的计算，使其忽略偏移变量；线性预测被视为 xb 而不是 xb + 偏移。


INCLUDE help syntax_margins1

{synoptset 17}{...}
{synopthdr :statistic}
{synoptline}
{synopt :{opt xb}}线性预测；默认值{p_end}
{synopt :{opt stdp}}与 {cmd:margins} 不允许使用{p_end}
{synopt :{opt group(group)}}与 {cmd:margins} 不允许使用{p_end}
{synoptline}
{p2colreset}{...}

INCLUDE help notes_margins


INCLUDE help menu_margins


{marker des_margins}{...}
{title:边际的描述}

{pstd}
{cmd:margins} 估计线性预测的反应边际。 


{marker examples}{...}
{title:示例}

{pstd}设置{p_end}
{phang2}{cmd:. webuse invest2}{p_end}
{phang2}{cmd:. xtrc invest market stock}{p_end}

{pstd}线性预测{p_end}
{phang2}{cmd:. predict xb}

{pstd}线性预测的均值{p_end}
{phang2}{cmd:. margins}{p_end}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <xtrc_postestimation.sthlp>}