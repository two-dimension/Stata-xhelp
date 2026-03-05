{smcl}
{* *! version 1.0.4  15may2018}{...}
{viewerdialog predict "dialog threshold_p"}{...}
{vieweralsosee "[TS] threshold postestimation" "mansection TS thresholdpostestimation"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[TS] threshold" "help threshold_zh"}{...}
{viewerjumpto "后期估计命令" "threshold postestimation##description"}{...}
{viewerjumpto "PDF 文档链接" "threshold_postestimation_zh##linkspdf"}{...}
{viewerjumpto "预测" "threshold postestimation##syntax_predict"}{...}
{viewerjumpto "示例" "threshold postestimation##examples"}
{help threshold_postestimation:English Version}
{hline}{...}
{p2colset 1 34 36 2}{...}
{p2col:{bf:[TS] threshold postestimation} {hline 2}}阈值的后期估计工具{p_end}
{p2col:}({mansection TS thresholdpostestimation:查看完整的 PDF 手册条目}){p_end}
{p2colreset}{...}


{marker description}{...}
{title:后期估计命令}

{pstd}
在 {opt threshold} 后，可用以下标准的后期估计命令：

{synoptset 17}{...}
{synopt:命令}描述{p_end}
{synoptline}
INCLUDE help post_estatsum
INCLUDE help post_estatvce
INCLUDE help post_estimates
INCLUDE help post_forecast
INCLUDE help post_lincom
INCLUDE help post_nlcom
{p2col :{helpb threshold postestimation##predict:预测}}预测、残差、影响统计和其他诊断指标{p_end}
INCLUDE help post_predictnl
INCLUDE help post_test
INCLUDE help post_testnl
{synoptline}


{marker linkspdf}{...}
{title:PDF 文档链接}

        {mansection TS thresholdpostestimationRemarksandexamples:备注和示例}

{pstd}
上述部分不包括在此帮助文件中。


{marker syntax_predict}{...}
{marker predict}{...}
{title:预测的语法}

{p 8 16 2}
{cmd:predict}
{dtype}
{newvar}
{ifin}
[{cmd:,} {it:statistic} {opth dyn:amic(threshold_postestimation##timecon:time_constant)}]

{synoptset 17 tabbed}{...}
{synopthdr:statistic}
{synoptline}
{syntab:主}
{synopt:{cmd:xb}}线性预测；默认值{p_end}
{synopt:{cmd:stdp}}线性预测的标准误{p_end}
{synopt:{cmdab:r:esiduals}}残差{p_end}
{synoptline}
{p2colreset}{...}
INCLUDE help esample


INCLUDE help menu_predict


{marker des_predict}{...}
{title:预测的描述}

{pstd}
{cmd:predict} 创建一个包含预测值的新变量，如线性预测、标准误和残差。


{marker options_predict}{...}
{title:预测的选项}

{dlgtab:主}

{phang}
{opt xb}，默认，计算线性预测。

{phang}
{opt stdp} 计算线性预测的标准误。

{phang}
{opt residuals} 计算可观测变量的残差。

{dlgtab:选项}

{marker timecon}{...}
{phang}
{opt dynamic(time_constant)} 指定 {opt predict} 开始在 {it:time_constant} 处产生动态预测，该时间点必须在样本中存在，并且以 {help tsset_zh} 指定的时间变量的刻度给出。例如，{cmd:dynamic(tq(2014q4))} 会导致动态预测在2014年第四季度开始，假设时间变量是按季度的；参见 {manhelp Datetime D}。如果模型包含外生变量，它们必须在整个预测样本中存在。 {cmd:dynamic()} 不能与 {cmd:stdp} 或 {cmd:residuals} 一起指定。


{marker examples}{...}
{title:示例}

{pstd}设置{p_end}
{phang2}{cmd:. webuse usmacro}{p_end}
{phang2}{cmd:. threshold fedfunds, regionvars(l.fedfunds inflation ogap)}
        {cmd:threshvar(l2.ogap)}{p_end}

{pstd}预测 {cmd:fedfunds} 的值{p_end}
{phang2}{cmd:. predict fedf}{p_end}

{pstd}与上述相同，但从2003年第一季度开始进行动态预测{p_end}
{phang2}{cmd:. predict fedfdyn, dynamic(tq(2003q1))}{p_end}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <threshold_postestimation.sthlp>}