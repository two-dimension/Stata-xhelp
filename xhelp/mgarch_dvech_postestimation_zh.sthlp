{smcl}
{* *! version 2.1.6  15may2018}{...}
{viewerdialog predict "dialog mgarch_dvech_p"}{...}
{vieweralsosee "[TS] mgarch dvech postestimation" "mansection TS mgarchdvechpostestimation"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[TS] mgarch dvech" "help mgarch dvech"}{...}
{viewerjumpto "Postestimation commands" "mgarch dvech postestimation##description"}{...}
{viewerjumpto "Links to PDF documentation" "mgarch_dvech_postestimation_zh##linkspdf"}{...}
{viewerjumpto "predict" "mgarch dvech postestimation##syntax_predict"}{...}
{viewerjumpto "margins" "mgarch dvech postestimation##syntax_margins"}{...}
{viewerjumpto "Examples" "mgarch dvech postestimation##examples"}
{help mgarch_dvech_postestimation:English Version}
{hline}{...}
{p2colset 1 37 41 2}{...}
{p2col:{bf:[TS] mgarch dvech postestimation} {hline 2}}mgarch dvech 的后处理工具{p_end}
{p2col:}({mansection TS mgarchdvechpostestimation:查看完整的 PDF 手册条目}){p_end}


{marker description}{...}
{title:后处理命令}

{pstd}
在 {cmd:mgarch dvech} 之后可用的标准后处理命令如下：

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
{synopt:{helpb mgarch_dvech_postestimation##margins:margins}}边际
	均值、预测边际、边际效应和平均边际
	效应{p_end}
INCLUDE help post_marginsplot
INCLUDE help post_nlcom
{synopt :{helpb mgarch dvech postestimation##predict:predict}}预测、残差、影响统计和其他诊断指标{p_end}
INCLUDE help post_predictnl
INCLUDE help post_pwcompare
INCLUDE help post_test
INCLUDE help post_testnl
{synoptline}
{p2colreset}{...}


{marker linkspdf}{...}
{title:PDF 文档链接}

        {mansection TS mgarchdvechpostestimationRemarksandexamples:备注和示例}

        {mansection TS mgarchdvechpostestimationMethodsandformulas:方法和公式}

{pstd}
上述章节未包含在此帮助文件中。


{marker syntax_predict}{...}
{marker predict}{...}
{title:预测的语法}

{p 8 16 2}
{cmd:预测} {dtype}
{c -(}{it:{help newvarlist##stub*:stub}}{cmd:*} {c |} {it:{help newvarlist_zh}}{c )-}
{ifin}
[{cmd:,} {it:statistic} {it:options}]

{synoptset 23 tabbed}{...}
{synopthdr:统计量}
{synoptline}
{syntab:主}
{synopt :{opt xb}}线性预测；默认值{p_end}
{synopt :{opt r:esiduals}}残差{p_end}
{synopt :{opt v:ariance}}条件方差和协方差{p_end}
{synoptline}
INCLUDE help esample
{p2colreset}{...}

{synoptset 23 tabbed}{...}
{synopthdr:选项}
{synoptline}
{syntab:选项}
{synopt :{opt e:quation(eqnames)}}要进行预测的方程名称{p_end}
{synopt :{opt dyn:amic(time_constant)}}在指定时间开始动态预测{p_end}
{synoptline}
{p2colreset}{...}


INCLUDE help menu_predict


{marker des_predict}{...}
{title:预测描述}

{pstd}
{cmd:预测} 创建一个新变量，包含线性预测和条件方差与协方差等预测。所有预测均可作为静态一步预测或动态多步预测，并且您可以控制动态预测开始的时间。


{marker options_predict}{...}
{title:预测选项}

{dlgtab:主}

{phang}
{opt xb}，默认情况下，计算因变量的线性预测。

{phang}
{opt residuals} 计算残差。

{phang}
{opt variance} 预测条件方差和条件协方差。

{dlgtab:选项}

{phang}
{opt equation(eqnames)} 指定计算预测的方程。使用此选项可以预测特定方程的统计量。方程名称，例如 {cmd:equation(income)}，用于识别方程。

{pmore}
预测因变量、残差或条件方差时，可以指定一个方程名称。例如，指定 {cmd:equation(income)} 会使得 {cmd:predict} 预测 {cmd:income}，而指定 {cmd:variance equation(income)} 会使预测 {cmd:income} 的条件方差。

{pmore}
预测条件方差或协方差时，可以指定两个方程。例如，指定 {cmd:equation(income, consumption)} {cmd:variance} 会使得 {cmd:predict} 预测 {cmd:income} 和 {cmd:consumption} 的条件协方差。

{phang}
{opt dynamic(time_constant)} 指定 {cmd:预测} 开始产生动态预测的时间。指定的 {it:time_constant} 必须在在 {cmd:tsset} 中指定的时间变量的范围内，并且 {it:time_constant} 必须在有可用因变量观测的样本内。例如，{cmd:dynamic(tq(2008q4))} 导致动态预测在 2008 年第四季度开始，前提是您的时间变量为季度；参见 {manhelp Datetime D}。如果模型包含外生变量，则这些变量必须在整个预测样本中存在。{cmd:dynamic()} 不能与 {cmd:residuals} 一起指定。


INCLUDE help syntax_margins

{synoptset 17}{...}
{synopthdr :统计量}
{synoptline}
{synopt :默认}每个方程的线性预测{p_end}
{synopt :{opt xb}}指定方程的线性预测{p_end}
{synopt :{opt v:ariance}}条件方差和协方差{p_end}
{synopt :{opt r:esiduals}}与 {cmd:margins} 不兼容{p_end}
{synoptline}
{p2colreset}{...}
{p 4 6 2}
{opt xb} 默认针对第一个方程。
{p_end}

INCLUDE help notes_margins


INCLUDE help menu_margins


{marker des_margins}{...}
{title:margins 的描述}

{pstd}
{cmd:margins} 估计线性预测和条件方差与协方差的响应边际。所有预测均可作为静态一步预测或动态多步预测，并且您可以控制动态预测开始的时间。


{marker examples}{...}
{title:示例}

    {hline}
{pstd}设置{p_end}
{phang2}{cmd:. webuse acme}{p_end}
{phang2}{cmd:. constraint 1 [L.ARCH]1_1  = [L.ARCH]2_2}{p_end}
{phang2}{cmd:. constraint 2 [L.GARCH]1_1 = [L.GARCH]2_2}{p_end}
{phang2}{cmd:. mgarch dvech (acme = L.acme) (anvil = L.anvil), arch(1) garch(1) constraints(1 2)}{p_end}

{pstd}预测条件方差，向前 12 周，使用在1998年第26周开始的动态预测，然后绘制预测图{p_end}
{phang2}{cmd:. tsappend, add(12)}{p_end}
{phang2}{cmd:. predict H*, variance dynamic(tw(1998w26))}{p_end}
{phang2}{cmd:. tsline H_acme_acme H_anvil_anvil if t>=tw(1995w25), legend(rows(2))}{p_end}

    {hline}
{pstd}设置{p_end}
{phang2}{cmd:. webuse aacmer, clear}{p_end}
{phang2}{cmd:. mgarch dvech (acme anvil = , noconstant), arch(1/2) garch(1) }{p_end}

{pstd}预测 {cmd:acme} 方程的条件方差并绘制结果{p_end}
{phang2}{cmd:. predict h_acme, variance eq(acme, acme)}{p_end}
{phang2}{cmd:. tsline h_acme}{p_end}

    {hline}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <mgarch_dvech_postestimation.sthlp>}