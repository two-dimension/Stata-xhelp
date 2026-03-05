{smcl}
{* *! version 1.1.6  15may2018}{...}
{viewerdialog predict "dialog mgarch_vcc_p"}{...}
{vieweralsosee "[TS] mgarch vcc postestimation" "mansection TS mgarchvccpostestimation"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[TS] mgarch vcc" "help mgarch vcc"}{...}
{viewerjumpto "后预测命令" "mgarch vcc postestimation##description"}{...}
{viewerjumpto "PDF 文档链接" "mgarch_vcc_postestimation_zh##linkspdf"}{...}
{viewerjumpto "预测" "mgarch vcc postestimation##syntax_predict"}{...}
{viewerjumpto "边际" "mgarch vcc postestimation##syntax_margins"}{...}
{viewerjumpto "示例" "mgarch vcc postestimation##examples"}
{help mgarch_vcc_postestimation:English Version}
{hline}{...}
{p2colset 1 35 39 2}{...}
{p2col:{bf:[TS] mgarch vcc postestimation} {hline 2}}mgarch vcc 的后预测工具{p_end}
{p2col:}({mansection TS mgarchvccpostestimation:查看完整的 PDF 手册条目}){p_end}


{marker description}{...}
{title:后预测命令}

{pstd}
在 {cmd:mgarch vcc} 之后，可以使用以下标准后预测命令：

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
{synopt:{helpb mgarch_vcc_postestimation##margins:margins}}边际
	均值、预测边际、边际效应和平均边际
	效应{p_end}
INCLUDE help post_marginsplot
INCLUDE help post_nlcom
{synopt :{helpb mgarch vcc postestimation##predict:predict}}预测、残差、影响统计量和其他诊断措施{p_end}
INCLUDE help post_predictnl
INCLUDE help post_pwcompare
INCLUDE help post_test
INCLUDE help post_testnl
{synoptline}
{p2colreset}{...}


{marker linkspdf}{...}
{title:PDF 文档链接}

        {mansection TS mgarchvccpostestimation备注和示例:备注和示例}

        {mansection TS mgarchvccpostestimation方法和公式:方法和公式}

{pstd}
上述部分不包含在此帮助文件中。


{marker syntax_predict}{...}
{marker predict}{...}
{title:预测语法}

{p 8 16 2}
{cmd:predict} {dtype}
{c -(}{it:{help newvarlist##stub*:stub}}{cmd:*} {c |} {it:{help newvarlist_zh}}{c )-}
{ifin}
[{cmd:,} {it:statistic} {it:options}]

{synoptset 23 tabbed}{...}
{synopthdr:statistic}
{synoptline}
{syntab:主}
{synopt :{opt xb}}线性预测；默认值{p_end}
{synopt :{opt r:esiduals}}残差{p_end}
{synopt :{opt v:ariance}}条件方差和协方差{p_end}
{synopt :{opt c:orrelation}}条件相关性{p_end}
{synoptline}
INCLUDE help esample
{p2colreset}{...}

{synoptset 23 tabbed}{...}
{synopthdr:选项}
{synoptline}
{syntab:选项}
{synopt :{opt e:quation(eqnames)}}进行预测的方程名称{p_end}
{synopt :{opt dyn:amic(time_constant)}}从指定时间开始动态预测{p_end}
{synoptline}
{p2colreset}{...}


INCLUDE help menu_predict


{marker des_predict}{...}
{title:预测描述}

{pstd}
{cmd:predict} 创建一个新变量，其中包含线性预测和条件方差、协方差和相关性的预测。
所有预测作为静态一步预测或动态多步预测可用，且可以控制动态预测何时开始。


{marker options_predict}{...}
{title:预测选项}

{dlgtab:主}

{phang}
{opt xb}，默认值，计算因变量的线性预测。

{phang}
{opt residuals} 计算残差。

{phang}
{opt variance} 预测条件方差和条件协方差。

{phang}
{opt correlation} 预测条件相关性。

{dlgtab:选项}

{phang}
{opt equation(eqnames)} 指定计算预测的方程。使用此选项可预测特定方程的统计量。方程名称，例如 {cmd:equation(income)}，用于标识方程。

{pmore}
预测因变量、残差或条件方差时，可以指定一个方程名称。例如，指定 {cmd:equation(income)} 将导致 {cmd:predict} 预测 {cmd:income}，并指定 {cmd:variance equation(income)} 将导致 {cmd:predict} 预测收入的条件方差。

{pmore}
预测条件方差或协方差时，可以指定两个方程。例如，指定 {cmd:equation(income, consumption)} {cmd:variance} 将导致 {cmd:predict} 预测 {cmd:income} 和 {cmd:consumption} 的条件协方差。

{phang}
{opt dynamic(time_constant)} 指定 {cmd:predict} 开始生成动态预测的时间。指定的 {it:time_constant} 必须在 {cmd:tsset} 指定的时间变量的范围内，且 {it:time_constant} 必须在有因变量可用的样本内。例如， {cmd:dynamic(tq(2008q4))} 将导致动态预测在2008年第四季度开始，前提是你的时间变量是按季度计算的；见 {manhelp Datetime D}。如果模型包含外生变量，则这些变量在整个预测样本中必须存在。{cmd:dynamic()} 不能与 {cmd:residuals} 一起指定。


INCLUDE help syntax_margins

{synoptset 17}{...}
{synopthdr :statistic}
{synoptline}
{synopt :默认}每个方程的线性预测{p_end}
{synopt :{opt xb}}指定方程的线性预测{p_end}
{synopt :{opt v:ariance}}条件方差和协方差{p_end}
{synopt :{opt c:orrelation}}条件相关性{p_end}
{synopt :{opt r:esiduals}} 与 {cmd:margins} 不兼容{p_end}
{synoptline}
{p2colreset}{...}
{p 4 6 2}
{opt xb} 默认值为第一个方程。
{p_end}

INCLUDE help notes_margins


INCLUDE help menu_margins


{marker des_margins}{...}
{title:边际描述}

{pstd}
{cmd:margins} 估计线性预测和条件方差、协方差、相关性的响应边际。
所有预测作为静态一步预测或动态多步预测可用，且可以控制动态预测何时开始。


{marker examples}{...}
{title:示例}

{pstd}设置{p_end}
{phang2}{cmd:. webuse stocks}{p_end}
{phang2}{cmd:. mgarch vcc (toyota nissan = , noconstant) (honda = , noconstant), arch(1) garch(1)}{p_end}

{pstd}预测未来 50 个时间期的条件方差，使用从 2016 时间期开始的动态预测，然后绘制预测图{p_end}
{phang2}{cmd:. tsappend, add(50)}{p_end}
{phang2}{cmd:. predict H*, variance dynamic(2016)}{p_end}
{phang2}{cmd:. tsline H_toyota_toyota H_nissan_nissan H_honda_honda if t>1600, legend(rows(3)) xline(2015)}{p_end}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <mgarch_vcc_postestimation.sthlp>}