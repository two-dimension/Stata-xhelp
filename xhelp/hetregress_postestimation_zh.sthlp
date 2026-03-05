{smcl}
{* *! version 1.0.6  04jun2018}{...}
{viewerdialog predict "dialog hetregress_p"}{...}
{vieweralsosee "[R] hetregress postestimation" "mansection R hetregresspostestimation"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[R] hetregress" "help hetregress_zh"}{...}
{viewerjumpto "Postestimation commands" "hetregress postestimation##description"}{...}
{viewerjumpto "Links to PDF documentation" "hetregress_postestimation_zh##linkspdf"}{...}
{viewerjumpto "predict" "hetregress postestimation##syntax_predict"}{...}
{viewerjumpto "margins" "hetregress postestimation##syntax_margins"}{...}
{viewerjumpto "Examples" "hetregress postestimation##examples"}
{help hetregress_postestimation:English Version}
{hline}{...}
{p2colset 1 34 36 2}{...}
{p2col:{bf:[R] hetregress postestimation} {hline 2}}后估计工具
用于 hetregress{p_end}
{p2col:}({mansection R hetregresspostestimation:查看完整的 PDF 手册条目}){p_end}
{p2colreset}{...}


{marker description}{...}
{title:后估计命令}

{pstd}
在执行 {cmd:hetregress} 后，以下后估计命令可用：

{synoptset 17 tabbed}{...}
{p2coldent :命令}描述{p_end}
{synoptline}
INCLUDE help post_contrast
{p2coldent:* {bf:{help estat ic}}}赤池信息量准则和施瓦兹贝叶斯信息量准则（AIC 和 BIC）{p_end}
INCLUDE help post_estatsum
INCLUDE help post_estatvce
{p2coldent:* {help estat svy:{bf:estat} (svy)}}用于调查数据的后估计统计量{p_end}
INCLUDE help post_estimates
INCLUDE help post_forecast_star2
INCLUDE help post_hausman_star2
INCLUDE help post_lincom
INCLUDE help post_linktest
{p2col 4 24 26 2:*+ {bf:{help lrtest_zh}}}似然比检验；不适用于两步估计量{p_end}
{synopt:{helpb hetregress_postestimation##margins:margins}}边际
	均值、预测边际、边际效应和平均边际效应{p_end}
INCLUDE help post_marginsplot
INCLUDE help post_nlcom
{synopt :{helpb hetregress postestimation##predict:predict}}预测、残差、影响统计量和其他诊断措施{p_end}
INCLUDE help post_predictnl
INCLUDE help post_pwcompare
{p2coldent:* {help suest_zh}}表面上无关估计{p_end}
INCLUDE help post_test
INCLUDE help post_testnl
{synoptline}
{p2colreset}{...}
{p 4 6 2}
* {cmd:estat ic}、{cmd:estat} (svy)、{cmd:lrtest} 和 {cmd:suest} 不适用于 {cmd:hetregress, twostep}。{p_end}
{p 4 6 2}
+ {cmd:forecast}、{cmd:hausman} 和 {cmd:lrtest} 不适用于 {cmd:svy} 估计结果。{p_end}


{marker linkspdf}{...}
{title:PDF 文档链接}

        {mansection R hetregresspostestimationRemarksandexamples:备注和示例}

{pstd}
上述部分不包括在此帮助文件中。


{marker syntax_predict}{...}
{marker predict}{...}
{title:预测的语法}

{phang}
在最大似然或两步法之后

{p 8 16 2}
{cmd:predict} {dtype} {newvar} {ifin} [{cmd:,} {it:statistic}]


{phang}
在最大似然之后

{p 8 16 2}
{cmd:predict} {dtype} {c -(}{it:{help newvarlist##stub*:stub}}{cmd:*} {c |} {it:{help newvar_zh:newvar_reg}}
{it:{help newvar_zh:newvar_lnsigma2}}{c )-} {ifin}{cmd:,} {opt sc:ores}


{synoptset 17 tabbed}{...}
{synopthdr :statistic}
{synoptline}
{syntab :主要}
{synopt :{opt xb}}线性预测；默认{p_end}
{synopt :{opt stdp}}线性预测的标准误差{p_end}
{synopt :{opt sigma}}误差项的标准差{p_end}
{synoptline}
{p2colreset}{...}
INCLUDE help esample


INCLUDE help menu_predict


{marker des_predict}{...}
{title:预测的描述}

{pstd}
{cmd:predict} 创建一个新变量，其中包含预测值，例如线性预测、标准误差和标准差。


{marker options_predict}{...}
{title:预测的选项}

{dlgtab:主要}

{phang}
{opt xb}，默认情况下，计算线性预测。

{phang}
{opt stdp} 计算线性预测的标准误差。

{phang}
{opt sigma} 计算误差项的标准差。

{phang}
{opt scores} 计算方程级别的得分变量。

{pmore}
第一个新变量将包含关于回归方程的对数似然的导数。

{pmore}
第二个新变量将包含关于规模方程的对数似然的导数（{hi:lnsigma2}）。


INCLUDE help syntax_margins

{synoptset 17}{...}
{synopthdr :statistic}
{synoptline}
{synopt :{opt xb}}线性预测；默认{p_end}
{synopt :{opt stdp}}与 {opt margins} 一起使用时不允许{p_end}
{synopt :{opt sigma}}误差项的标准差{p_end}
{synoptline}
{p2colreset}{...}

INCLUDE help notes_margins


INCLUDE help menu_margins


{marker des_margins}{...}
{title:边际的描述}

{pstd}
{cmd:margins} 估计线性预测和标准差的响应边际。


{marker examples}{...}
{title:示例}

{pstd}设置{p_end}
{phang2}{cmd:. webuse salary}{p_end}

{pstd}拟合异方差回归模型{p_end}
{phang2}{cmd:. hetregress salary i.termdeg priorexp, het(i.female)}{p_end}

{pstd}计算均值模型的线性预测{p_end}
{phang2}{cmd:. predict xb, xb}{p_end}

{pstd}计算标准差的预测值，它是 {cmd:i.female} 的函数{p_end}
{phang2}{cmd:. predict sigma, sigma}{p_end}

{pstd}计算每个水平 {cmd:termdeg} 的预测边际{p_end}
{phang2}{cmd:. margins termdeg}{p_end}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <hetregress_postestimation.sthlp>}