{smcl}
{* *! version 1.2.8  19oct2017}{...}
{viewerdialog "predict for qreg, iqreg, bsqreg" "dialog qreg_p"}{...}
{viewerdialog "predict for sqreg" "dialog sqreg_p"}{...}
{vieweralsosee "[R] qreg postestimation" "mansection R qregpostestimation"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[R] qreg" "help qreg_zh"}{...}
{viewerjumpto "后处理命令" "qreg postestimation##description"}{...}
{viewerjumpto "PDF 文档链接" "qreg_postestimation_zh##linkspdf"}{...}
{viewerjumpto "预测" "qreg postestimation##syntax_predict"}{...}
{viewerjumpto "边际" "qreg postestimation##syntax_margins"}{...}
{viewerjumpto "示例" "qreg postestimation##examples"}
{help qreg_postestimation:English Version}
{hline}{...}
{p2colset 1 28 30 2}{...}
{p2col:{bf:[R] qreg postestimation} {hline 2}}qreg、iqreg、bsqreg 和 sqreg 的后处理工具{p_end}
{p2col:}({mansection R qregpostestimation:查看完整的 PDF 手册条目}){p_end}
{p2colreset}{...}


{marker description}{...}
{title:后处理命令}

{pstd}
在执行 {cmd:qreg}、{cmd:iqreg}、{cmd:bsqreg} 和 {cmd:sqreg} 后，可以使用以下后处理命令：

{synoptset 17 tabbed}{...}
{p2coldent :命令}描述{p_end}
{synoptline}
INCLUDE help post_contrast
INCLUDE help post_estatsum
INCLUDE help post_estatvce
INCLUDE help post_estimates
INCLUDE help post_forecast_star2
INCLUDE help post_hausman_star
INCLUDE help post_lincom
INCLUDE help post_linktest
{synopt:{helpb qreg_postestimation##margins:margins}}边际
	均值、预测边际、边际效应和平均边际效应{p_end}
INCLUDE help post_marginsplot
INCLUDE help post_nlcom
{synopt :{helpb qreg postestimation##predict:predict}}预测、残差、影响统计和其他诊断度量{p_end}
INCLUDE help post_predictnl
INCLUDE help post_pwcompare
INCLUDE help post_test
INCLUDE help post_testnl
{synoptline}
{p2colreset}{...}
{p 4 6 2}
* {cmd:hausman} 在 {cmd:bsqreg}、{cmd:iqreg} 或 {cmd:sqreg} 后不适用。{p_end}
{p 4 6 2}
+ {cmd:forecast} 与 {cmd:mi} 估计结果不适用。{p_end}


{marker linkspdf}{...}
{title:PDF 文档链接}

        {mansection R qregpostestimationRemarksandexamples:备注和示例}

{pstd}
上述部分未包含在本帮助文件中。


{marker syntax_predict}{...}
{marker predict}{...}
{title:预测的语法}

{phang}
对于 qreg、iqreg 和 bsqreg

{p 8 16 2}
{cmd:predict} {dtype} {newvar} {ifin}
	[{cmd:,} [{opt xb}{c |}{opt stdp}{c |}{opt r:esiduals}]]

{phang}
对于 sqreg

{p 8 16 2}
{cmd:predict} {dtype} {newvar} {ifin}
	[{cmd:,} {cmdab:eq:uation:(}{it:eqno}[{cmd:,}{it:eqno}]{cmd:)}
          {it:statistic}]

{synoptset 17 tabbed}{...}
{synopthdr :statistic}
{synoptline}
{syntab :主要}
{synopt :{opt xb}}线性预测；默认选项{p_end}
{synopt :{opt stdp}}线性预测的标准误差{p_end}
{synopt :{opt stddp}}线性预测差值的标准误差{p_end}
{synopt :{opt r:esiduals}}残差{p_end}
{synoptline}
{p2colreset}{...}
INCLUDE help esample


INCLUDE help menu_predict


{marker des_predict}{...}
{title:预测的描述}

{pstd}
{cmd:predict} 创建一个新变量，包含预测值，例如线性预测、标准误差和残差。


{marker options_predict}{...}
{title:预测的选项}

{dlgtab:主要}

{phang}{opt xb}，默认选项，计算线性预测。

{phang}{opt stdp} 计算线性预测的标准误差。

{phang}{opt stddp} 仅在您使用 {cmd:sqreg} 拟合模型后允许使用。计算方程 1 和方程 2 之间线性预测差值的标准误差。

{phang}{opt residuals} 计算残差，即 y - xb。

{phang}{cmd:equation(}{it:eqno}[{cmd:,}{it:eqno}]{cmd:)} 指定您要进行计算的方程。

{pmore} {opt equation()} 将使用一个 {it:eqno} 填充，适用于 {opt xb}、{opt stdp} 和 {opt residuals} 选项。
{cmd:equation(#1)} 表示要对第一个方程进行计算，{cmd:equation(#2)} 表示对第二个，依此类推。
您也可以通过名称引用方程。{cmd:equation(income)} 指引用名为 income 的方程，而 {cmd:equation(hours)} 指引用名为 hours 的方程。

{pmore} 如果您不指定 {opt equation()}，结果将与指定 {cmd:equation(#1)} 相同。

{pmore} 要使用 {opt stddp}，您必须指定两个方程。您可能指定 {cmd:equation(#1, #2)} 或 {cmd:equation(q80, q20)} 来指示第 80 和第 20 分位数。


INCLUDE help syntax_margins1

{synoptset 17}{...}
{synopthdr :statistic}
{synoptline}
{synopt :{opt xb}}线性预测；默认选项{p_end}
{synopt :{opt stdp}}与 {cmd:margins} 不允许共用{p_end}
{synopt :{opt stddp}}与 {cmd:margins} 不允许共用{p_end}
{synopt :{opt r:esiduals}}与 {cmd:margins} 不允许共用{p_end}
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
{phang2}{cmd:. sysuse auto}{p_end}
{phang2}{cmd:. qreg price weight length foreign}{p_end}

{pstd}获取预测值{p_end}
{phang2}{cmd:. predict hat}

{pstd}获取残差{p_end}
{phang2}{cmd:. predict r, resid}{p_end}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <qreg_postestimation.sthlp>}