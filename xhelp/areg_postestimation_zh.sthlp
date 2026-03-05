{smcl}
{* *! version 1.2.5  19oct2017}{...}
{viewerdialog predict "dialog areg_p"}{...}
{vieweralsosee "[R] areg postestimation" "mansection R aregpostestimation"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[R] areg" "help areg_zh"}{...}
{viewerjumpto "后估计命令" "areg_postestimation_zh##description"}{...}
{viewerjumpto "PDF文档链接" "areg_postestimation_zh##linkspdf"}{...}
{viewerjumpto "预测" "areg_postestimation_zh##syntax_predict"}{...}
{viewerjumpto "边际" "areg_postestimation_zh##syntax_margins"}{...}
{viewerjumpto "示例" "areg_postestimation_zh##examples"}
{help areg_postestimation:English Version}
{hline}{...}
{p2colset 1 28 30 2}{...}
{p2col:{bf:[R] areg postestimation} {hline 2}}areg 的后估计工具{p_end}
{p2col:}({mansection R aregpostestimation:查看完整的 PDF 手册条目}){p_end}
{p2colreset}{...}


{marker description}{...}
{title:后估计命令}

{pstd}
在 {cmd:areg} 之后，可以使用以下后估计命令：

{synoptset 17 tabbed}{...}
{p2coldent :命令}描述{p_end}
{synoptline}
INCLUDE help post_contrast
INCLUDE help post_estatic
INCLUDE help post_estatsum
INCLUDE help post_estatvce
INCLUDE help post_estimates
INCLUDE help post_forecast_star
INCLUDE help post_hausman
INCLUDE help post_lincom
INCLUDE help post_linktest
INCLUDE help post_lrtest
{synopt:{helpb areg_postestimation##margins:margins}}边际
	均值、预测边际、边际效应和平均边际
	效应{p_end}
INCLUDE help post_marginsplot
INCLUDE help post_nlcom
{synopt :{helpb areg postestimation##predict:predict}}预测、残差、影响统计和其他诊断措施{p_end}
INCLUDE help post_predictnl
INCLUDE help post_pwcompare
INCLUDE help post_test
INCLUDE help post_testnl
{synoptline}
{p2colreset}{...}
{p 4 6 2}
* {cmd:forecast} 不适用于 {cmd:mi} 估计结果。{p_end}


{marker linkspdf}{...}
{title:PDF文档链接}

        {mansection R aregpostestimationRemarksandexamples:说明和示例}

{pstd}
上述部分未包括在此帮助文件中。


{marker syntax_predict}{...}
{marker predict}{...}
{title:预测的语法}

{p 8 16 2}
{cmd:predict} 
{dtype} 
{newvar} 
{ifin}
[{cmd:,} {it:statistic}]

{pstd}
其中 y = xb + d_absorbvar + e ，而 {it:statistic} 为

{synoptset 17 tabbed}
{synopthdr:statistic}
{synoptline}
{syntab :主要}
{synopt :{opt xb}} xb 拟合值；默认值{p_end}
{synopt :{opt stdp}} 预测的标准误{p_end}
{synopt:{opt dr:esiduals}} d_absorbvar + e = y - xb{p_end}
{p2coldent: * {opt xbd}} xb + d_absorbvar{p_end}
{p2coldent :* {opt d}} d_absorbvar{p_end}
{p2coldent :* {opt r:esiduals}} 残差{p_end}
{p2coldent :* {opt sc:ore}} 分数；等同于 {opt residuals}{p_end}
{synoptline}
{p2colreset}{...}
INCLUDE help unstarred


INCLUDE help menu_predict


{marker des_predict}{...}
{title:预测的描述}

{pstd}
{cmd:predict} 创建一个包含预测的新的变量，比如
拟合值、标准误、残差及方程级分数。


{marker options_predict}{...}
{title:预测的选项}

{dlgtab:主要}

{phang}{opt xb}，默认情况下，通过使用吸收变量的平均效应来计算 xb 的预测，即拟合值。另见
{opt xbd}。

{phang}{opt stdp} 计算 xb 的标准误差。

{phang}{opt dresiduals} 计算 y - xb，即
残差加上吸收变量的效应。

{phang}{opt xbd} 计算 xb + d_absorbvar，即
包括吸收变量个别效应的拟合值。

{phang}{opt d} 计算 d_absorbvar，吸收变量的个别系数。

{phang}{opt residuals} 计算残差，即 
{bind:y - (xb + d_absorbvar)}。  

{phang}{opt score} 是 {opt residuals} 的同义词。


INCLUDE help syntax_margins1

{synoptset 17}{...}
{synopthdr :statistic}
{synoptline}
{synopt :{opt xb}} xb 拟合值；默认值{p_end}
{synopt :{opt stdp}} 与 {cmd:margins} 不兼容{p_end}
{synopt :{opt dr:esiduals}} 与 {cmd:margins} 不兼容{p_end}
{synopt :{opt xdb}} 与 {cmd:margins} 不兼容{p_end}
{synopt :{opt d}} 与 {cmd:margins} 不兼容{p_end}
{synopt :{opt r:esiduals}} 与 {cmd:margins} 不兼容{p_end}
{synopt :{opt sc:ore}} 与 {cmd:margins} 不兼容{p_end}
{synoptline}
{p2colreset}{...}

INCLUDE help notes_margins


INCLUDE help menu_margins


{marker des_margins}{...}
{title:边际的描述}

{pstd}
{cmd:margins} 估计拟合值的反应边际。


{marker examples}{...}
{title:示例}

{pstd}设置{p_end}
{phang2}{cmd:. sysuse auto}{p_end}
{phang2}{cmd:. areg mpg weight gear_ratio, absorb(rep78)}{p_end}

{pstd}计算线性预测{p_end}
{phang2}{cmd:. predict yhat}

{pstd}显示信息标准{p_end}
{phang2}{cmd:. estat ic}

{pstd}模型规格的链接检验{p_end}
{phang2}{cmd:. linktest, absorb(rep78)}{p_end}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <areg_postestimation.sthlp>}