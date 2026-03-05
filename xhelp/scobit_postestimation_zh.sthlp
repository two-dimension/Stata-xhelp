{smcl}
{* *! version 1.2.5  21may2018}{...}
{viewerdialog predict "dialog scob_p"}{...}
{vieweralsosee "[R] scobit 后期估计" "mansection R scobitpostestimation"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[R] scobit" "help scobit_zh"}{...}
{viewerjumpto "后期估计命令" "scobit postestimation##description"}{...}
{viewerjumpto "PDF 文档链接" "scobit_postestimation_zh##linkspdf"}{...}
{viewerjumpto "预测" "scobit postestimation##syntax_predict"}{...}
{viewerjumpto "边际" "scobit postestimation##syntax_margins"}{...}
{viewerjumpto "示例" "scobit postestimation##examples"}
{help scobit_postestimation:English Version}
{hline}{...}
{p2colset 1 30 32 2}{...}
{p2col:{bf:[R] scobit 后期估计} {hline 2}}scobit 的后期估计工具{p_end}
{p2col:}({mansection R scobitpostestimation:查看完整 PDF 手册条目}){p_end}
{p2colreset}{...}


{marker description}{...}
{title:后期估计命令}

{pstd}
在 {opt scobit} 后可用以下后期估计命令：

{synoptset 17 tabbed}{...}
{p2coldent:命令}描述{p_end}
{synoptline}
INCLUDE help post_contrast
INCLUDE help post_estatic
INCLUDE help post_estatsum
INCLUDE help post_estatvce
INCLUDE help post_svy_estat
INCLUDE help post_estimates
INCLUDE help post_forecast_star
INCLUDE help post_lincom
INCLUDE help post_lrtest_star
{synopt:{helpb scobit_postestimation##margins:边际}}边际
	均值、预测边际、边际效应和平均边际
	效应{p_end}
INCLUDE help post_marginsplot
INCLUDE help post_nlcom
{p2col :{helpb scobit postestimation##predict:预测}}预测、残差、影响统计量及其他诊断措施{p_end}
INCLUDE help post_predictnl
INCLUDE help post_pwcompare
INCLUDE help post_suest
INCLUDE help post_test
INCLUDE help post_testnl
{synoptline}
{p2colreset}{...}
{p 4 6 2}
* {cmd:forecast} 和 {cmd:lrtest} 不适用于 {cmd:svy} 估计结果。{p_end}


{marker linkspdf}{...}
{title:PDF 文档链接}

        {mansection R scobitpostestimationRemarksandexamples:注释和示例}

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
[{cmd:,}
{it:统计量}
{opt nooff:set} ]

{p 8 16 2}
{cmd:predict}
{dtype}
{c -(}{it:{help newvarlist##stub*:stub}}{cmd:*} {c |} {it:{help newvar_zh:newvar_reg}}
    {it:{help newvar_zh:newvar_lnalpha}}{c )-}
{ifin}
{cmd:,}
{opt sc:ores}

{synoptset 17 tabbed}
{synopthdr:统计量}
{synoptline}
{syntab:主要}
{synopt:{opt pr}}正结果的概率；默认值{p_end}
{synopt:{opt xb}}xb，线性预测{p_end}
{synopt:{opt stdp}}线性预测的标准误差{p_end}
{synoptline}
{p2colreset}{...}
INCLUDE help esample


INCLUDE help menu_predict


{marker des_predict}{...}
{title:预测的描述}

{pstd}
{cmd:predict} 创建一个新变量，包含像
概率、线性预测和标准误差这样的预测。


{marker options_predict}{...}
{title:预测的选项}

{dlgtab:主要}

{phang}
{opt pr}，默认情况下，计算正结果的概率。

{phang}
{opt xb} 计算线性预测。

{phang}
{opt stdp} 计算线性预测的标准误差。

{phang}
{opt nooffset} 仅在您为 {opt scobit} 指定了 {opth offset(varname)} 时相关。它修改 {opt predict} 的计算，使其忽略偏移变量；线性预测被视为 xb，而不是 {bind:xb + offset}。

{phang}
{opt scores} 计算方程级得分变量。

{pmore}
第一个新变量将包含 {bind:d(ln L_j)/d(x_j b)}。

{pmore}
第二个新变量将包含 {bind:d(ln L_j)/d(ln(alpha))}。


INCLUDE help syntax_margins

{synoptset 17}{...}
{synopthdr :统计量}
{synoptline}
{synopt:{opt pr}}正结果的概率；默认值{p_end}
{synopt:{opt xb}}xb，线性预测 {p_end}
{synopt:{opt stdp}}在 {cmd:margins} 中不允许{p_end}
{synoptline}
{p2colreset}{...}

INCLUDE help notes_margins


INCLUDE help menu_margins


{marker des_margins}{...}
{title:边际的描述}

{pstd}
{cmd:margins} 估算概率和线性预测的响应边际。


{marker examples}{...}
{title:示例}

{pstd}设置{p_end}
{phang2}{cmd:. sysuse auto}

{pstd}拟合偏态逻辑回归{p_end}
{phang2}{cmd:. scobit foreign mpg}

{pstd}计算预测概率{p_end}
{phang2}{cmd:. predict p}

{pstd}绘制数据和拟合模型；对二元结果进行抖动{p_end}
{phang2}{cmd:. line p mpg, sort || scatter foreign mpg, jitter(6)}
   {cmd:ytitle(Pr(foreign)) legend(off)}{p_end}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <scobit_postestimation.sthlp>}