{smcl}
{* *! version 1.2.4  19oct2017}{...}
{viewerdialog predict "dialog reg3_p"}{...}
{vieweralsosee "[R] reg3 postestimation" "mansection R reg3postestimation"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[R] reg3" "help reg3_zh"}{...}
{viewerjumpto "后估计命令" "reg3 postestimation##description"}{...}
{viewerjumpto "PDF 文档链接" "reg3_postestimation_zh##linkspdf"}{...}
{viewerjumpto "预测" "reg3 postestimation##syntax_predict"}{...}
{viewerjumpto "边际" "reg3 postestimation##syntax_margins"}{...}
{viewerjumpto "示例" "reg3 postestimation##examples"}
{help reg3_postestimation:English Version}
{hline}{...}
{p2colset 1 28 30 2}{...}
{p2col:{bf:[R] reg3 postestimation} {hline 2}}reg3 的后估计工具{p_end}
{p2col:}({mansection R reg3postestimation:查看完整 PDF 手册条目}){p_end}
{p2colreset}{...}


{marker description}{...}
{title:后估计命令}

{pstd}
{cmd:reg3} 之后可用以下后估计命令：

{synoptset 17 tabbed}{...}
{p2coldent :命令}描述{p_end}
{synoptline}
INCLUDE help post_contrast
{p2coldent :* {bf:{help estat ic}}}赤池信息准则和施瓦茨贝叶斯信息准则 (AIC 和 BIC){p_end}
INCLUDE help post_estatsum
INCLUDE help post_estatvce
INCLUDE help post_estimates
INCLUDE help post_forecast
INCLUDE help post_hausman
INCLUDE help post_lincom
{synopt:{helpb reg3_postestimation##margins:margins}}边际
	均值、预测边际、边际效应和平均边际
	效应{p_end}
INCLUDE help post_marginsplot
INCLUDE help post_nlcom
{synopt :{helpb reg3 postestimation##predict:predict}}预测、残差、
影响统计和其他诊断措施{p_end}
INCLUDE help post_predictnl
INCLUDE help post_pwcompare
INCLUDE help post_test
INCLUDE help post_testnl
{synoptline}
{p2colreset}{...}
{pstd}* {cmd:estat ic} 不适合在 {cmd:reg3, 2sls} 后使用。


{marker linkspdf}{...}
{title:PDF 文档链接}

        {mansection R reg3postestimationRemarksandexamples:备注和示例}

        {mansection R reg3postestimationMethodsandformulas:方法和公式}

{pstd}
上述部分不包含在此帮助文件中。


{marker syntax_predict}{...}
{marker predict}{...}
{title:预测的语法}

{p 8 19 2}
{cmd:predict} {dtype} {newvar} {ifin} 
   [{cmd:,} {opt eq:uation}{cmd:(}{it:eqno}[{cmd:,}{it:eqno}]{cmd:)} 
   {it:statistic}]

{marker statistic}{...}
{synoptset 17 tabbed}{...}
{synopthdr:statistic}
{synoptline}
{syntab:主}
{synopt :{opt xb}}线性预测；默认{p_end}
{synopt :{opt stdp}}线性预测的标准误差{p_end}
{synopt :{opt r:esiduals}}残差{p_end}
{synopt :{opt d:ifference}}两个方程线性预测的差异{p_end}
{synopt :{opt stddp}}线性预测差异的标准误差{p_end}
{synoptline}
{p2colreset}{...}
INCLUDE help esample


INCLUDE help menu_predict


{marker des_predict}{...}
{title:预测描述}

{pstd}
{cmd:predict} 创建一个包含预测的变量，例如
线性预测、标准误差、残差和两个方程线性预测之间的差异。


{marker options_predict}{...}
{title:预测选项}

{dlgtab:主}

{phang}
{cmd:equation(}{it:eqno}[{cmd:,}{it:eqno}]{cmd:)} 指定您所指的方程。

{pmore}
{opt equation()} 为 {opt xb}、 
{opt stdp} 和 {opt residuals} 选项填入一个 {it:eqno}。  {cmd:equation(#1)} 将计算第一个方程， {cmd:equation(#2)} 将计算第二个，依此类推。您还可以通过方程名称来引用方程。{cmd:equation(income)} 指的是名为 income 的方程， {cmd:equation(hours)} 指的是名为 hours 的方程。

{pmore}
如果您不指定 {opt equation()}，结果将与指定 {cmd:equation(#1)} 是一样的。

{pmore}
{opt difference} 和 {opt stddp} 与方程之间的概念相关。
要使用这些选项，您必须指定两个方程，例如 
{cmd:equation(#1,#2)} 或 {cmd:equation(income,hours)}。 当需要指定两个方程时， {opt equation()} 是必需的。

{phang}
{opt xb}，默认情况下，计算线性预测（拟合值）—— 这是指定方程的 xb 的预测。

{phang}
{opt stdp} 计算指定方程的预测标准误差。可以将其视为观察的协变量模式的预测期望值或均值的标准误差。预测的标准误差也称为拟合值的标准误差。

{phang}
{opt residuals} 计算残差。

{phang}
{opt difference} 计算系统中两个方程线性预测之间的差异。与 {cmd:equation(#1,#2)} 联合使用时， {opt difference} 计算 {cmd:equation(#1)} 的预测减去 {cmd:equation(#2)} 的预测。

{phang}
{opt stddp} 仅在您先前拟合多方程模型后允许使用。计算的是方程 1 和 2 之间线性预测差异 (x1b - x2b) 的标准误差。

{phang}
有关在多方程估计命令后使用 {cmd:predict} 的详细信息，请参见 {manhelp predict R}。 


INCLUDE help syntax_margins

{synoptset 17}{...}
{synopthdr :statistic}
{synoptline}
{synopt :default}每个方程的线性预测{p_end}
{synopt :{cmd:xb}}指定方程的线性预测{p_end}
{synopt :{opt d:ifference}}两个方程线性预测之间的差异{p_end}
{synopt :{cmd:stdp}}不允许与 {cmd:margins} 一起使用{p_end}
{synopt :{opt r:esiduals}}不允许与 {cmd:margins} 一起使用{p_end}
{synopt :{opt stdd:p}}不允许与 {cmd:margins} 一起使用{p_end}
{synoptline}
{p2colreset}{...}
{p 4 6 2}
{opt xb} 默认为第一个方程。
{p_end}

INCLUDE help notes_margins


INCLUDE help menu_margins


{marker des_margins}{...}
{title:边际描述}

{pstd}
{cmd:margins} 估计线性预测的响应边际和两个方程线性预测之间的差异。


{marker examples}{...}
{title:示例}

{pstd}设置{p_end}
{phang2}{cmd:. webuse supDem}{p_end}
{phang2}{cmd:. global demand "(qDemand: quantity price pcompete income)"}{p_end}
{phang2}{cmd:. global supply "(qSupply: quantity price praw)"}{p_end}
{phang2}{cmd:. reg3 $demand $supply, endog(price)}{p_end}
{phang2}{cmd:. summarize pcompete, meanonly}{p_end}
{phang2}{cmd:. replace pcompete = r(mean)}{p_end}
{phang2}{cmd:. summarize income, meanonly}{p_end}
{phang2}{cmd:. replace income = r(mean)}{p_end}
{phang2}{cmd:. summarize praw, meanonly}{p_end}
{phang2}{cmd:. replace praw = r(mean)}{p_end}

{pstd}预测需求{p_end}
{phang2}{cmd:. predict demand, equation(qDemand)}{p_end}

{pstd}预测供应{p_end}
{phang2}{cmd:. predict supply, equation(qSupply)}{p_end}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <reg3_postestimation.sthlp>}