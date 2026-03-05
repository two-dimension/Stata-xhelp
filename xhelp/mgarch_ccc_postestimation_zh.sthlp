{smcl}
{* *! version 1.1.6  15may2018}{...}
{viewerdialog predict "dialog mgarch_ccc_p"}{...}
{vieweralsosee "[TS] mgarch ccc 后估计" "mansection TS mgarchcccpostestimation"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[TS] mgarch ccc" "help mgarch ccc"}{...}
{viewerjumpto "后估计命令" "mgarch ccc postestimation##description"}{...}
{viewerjumpto "PDF文档链接" "mgarch_ccc_postestimation_zh##linkspdf"}{...}
{viewerjumpto "预测" "mgarch ccc postestimation##syntax_predict"}{...}
{viewerjumpto "边际" "mgarch ccc postestimation##syntax_margins"}{...}
{viewerjumpto "示例" "mgarch ccc postestimation##examples"}
{help mgarch_ccc_postestimation:English Version}
{hline}{...}
{p2colset 1 35 39 2}{...}
{p2col:{bf:[TS] mgarch ccc 后估计} {hline 2}}mgarch ccc 的后估计工具{p_end}
{p2col:}({mansection TS mgarchcccpostestimation:查看完整的PDF手册条目}){p_end}


{marker description}{...}
{title:后估计命令}

{pstd}
在执行 {cmd:mgarch ccc} 后，可以使用以下标准后估计命令：

{synoptset 23}{...}
{p2coldent :命令}描述{p_end}
{synoptline}
INCLUDE help post_contrast
INCLUDE help post_estatic
INCLUDE help post_estatsum
INCLUDE help post_estatvce
INCLUDE help post_estimates
INCLUDE help post_forecast
INCLUDE help post_lincom
INCLUDE help post_lrtest
{synopt:{helpb mgarch_ccc_postestimation##margins:margins}}边际均值、预测边际、边际效应和平均边际效应{p_end}
INCLUDE help post_marginsplot
INCLUDE help post_nlcom
{synopt :{helpb mgarch ccc postestimation##predict:predict}}预测、残差、影响统计及其他诊断措施{p_end}
INCLUDE help post_predictnl
INCLUDE help post_pwcompare
INCLUDE help post_test
INCLUDE help post_testnl
{synoptline}
{p2colreset}{...}


{marker linkspdf}{...}
{title:PDF文档链接}

        {mansection TS mgarchcccpostestimationRemarksandexamples:备注和示例}

        {mansection TS mgarchcccpostestimationMethodsandformulas:方法和公式}

{pstd}
上述部分不包含在本帮助文件中。


{marker syntax_predict}{...}
{marker predict}{...}
{title:预测语法}

{p 8 16 2}
{cmd:predict} {dtype}
{c -(}{it:{help newvarlist##stub*:stub}}{cmd:*} {c |} {it:{help newvarlist_zh}}{c )-}
{ifin}
[{cmd:,} {it:statistic} {it:options}]

{synoptset 23 tabbed}{...}
{synopthdr:统计量}
{synoptline}
{syntab:主要}
{synopt :{opt xb}}线性预测；默认值{p_end}
{synopt :{opt r:esiduals}}残差{p_end}
{synopt :{opt v:ariance}}条件方差和协方差{p_end}
{synopt :{opt c:orrelation}}条件相关{p_end}
{synoptline}
INCLUDE help esample
{p2colreset}{...}

{synoptset 23 tabbed}{...}
{synopthdr:选项}
{synoptline}
{syntab:选项}
{synopt :{opt e:quation(eqnames)}}进行预测的方程名称{p_end}
{synopt :{opt dyn:amic(time_constant)}}在指定时间开始动态预测{p_end}
{synoptline}
{p2colreset}{...}


INCLUDE help menu_predict


{marker des_predict}{...}
{title:预测描述}

{pstd}
{cmd:predict} 创建一个新变量，包含如线性预测、条件方差、协方差和相关性的预测。
所有预测均可作为静态一步预测或动态多步预测，并且您可以控制动态预测开始的时间。


{marker options_predict}{...}
{title:预测选项}

{dlgtab:主要}

{phang}
{opt xb}，默认，计算因变量的线性预测。

{phang}
{opt residuals} 计算残差。

{phang}
{opt variance} 预测条件方差和条件协方差。

{phang}
{opt correlation} 预测条件相关。

{dlgtab:选项}

{phang}
{opt equation(eqnames)} 指定计算预测的方程。使用此选项可以为特定方程预测统计量。方程名称，例如 {cmd:equation(income)}，用于识别方程。

{pmore}
在预测因变量、残差或条件方差时，可以指定一个方程名称。例如，指定 {cmd:equation(income)} 会使得 {cmd:predict} 预测 {cmd:income}，而指定 {cmd:variance equation(income)} 会使得预测 {cmd:income} 的条件方差。

{pmore}
在预测条件方差或协方差时，可以指定两个方程。例如，指定 {cmd:equation(income, consumption)} {cmd:variance} 会使得 {cmd:predict} 预测 {cmd:income} 和 {cmd:consumption} 的条件协方差。

{phang}
{opt dynamic(time_constant)} 指定 {cmd:predict} 开始生成动态预测的时间。指定的 {it:time_constant} 必须符合在 {cmd:tsset} 中指定的时间变量的量度，并且 {it:time_constant} 必须在可用的因变量观测样本内。例如， {cmd:dynamic(tq(2008q4))} 会使动态预测在2008年第四季度开始，以假设您的时间变量是按季度计算的；参见 {manhelp datetime D:Datetime}。如果模型包含外生变量，必须在整个预测样本中存在这些变量。 {cmd:dynamic()} 不能与 {cmd:residuals} 一并指定。


INCLUDE help syntax_margins

{synoptset 17}{...}
{synopthdr :统计量}
{synoptline}
{synopt :默认值}每个方程的线性预测{p_end}
{synopt :{opt xb}}指定方程的线性预测{p_end}
{synopt :{opt v:ariance}}条件方差和协方差{p_end}
{synopt :{opt c:orrelation}}条件相关{p_end}
{synopt :{opt r:esiduals}}不能与 {cmd:margins} 一起使用{p_end}
{synoptline}
{p2colreset}{...}
{p 4 6 2}
{opt xb} 默认设置为第一个方程。
{p_end}

INCLUDE help notes_margins


INCLUDE help menu_margins


{marker des_margins}{...}
{title:边际描述}

{pstd}
{cmd:margins} 估计线性预测和条件方差、协方差和相关性的响应边际。
所有预测均可作为静态一步预测或动态多步预测，并且您可以控制动态预测开始的时间。


{marker examples}{...}
{title:示例}

{pstd}设置{p_end}
{phang2}{cmd:. webuse stocks}{p_end}
{phang2}{cmd:. mgarch ccc (toyota nissan = , noconstant) (honda = , noconstant), arch(1) garch(1)}{p_end}

{pstd}预测条件方差，向未来50个时间段进行动态预测，从2016年开始，然后绘制预测图{p_end}
{phang2}{cmd:. tsappend, add(50)}{p_end}
{phang2}{cmd:. predict H*, variance dynamic(2016)}{p_end}
{phang2}{cmd:. tsline H_toyota_toyota H_nissan_nissan H_honda_honda if t>1600, legend(rows(3)) xline(2015)}{p_end}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <mgarch_ccc_postestimation.sthlp>}