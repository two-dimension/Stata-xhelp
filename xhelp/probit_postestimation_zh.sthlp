{smcl}
{* *! version 1.2.6  21may2018}{...}
{viewerdialog predict "dialog probit_p"}{...}
{viewerdialog estat "dialog probit_estat"}{...}
{viewerdialog lroc "dialog lroc"}{...}
{viewerdialog lsens "dialog lsens"}{...}
{vieweralsosee "[R] probit postestimation" "mansection R probitpostestimation"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[R] probit" "help probit_zh"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[R] estat classification" "help estat classification"}{...}
{vieweralsosee "[R] estat gof" "help logistic estat gof"}{...}
{vieweralsosee "[R] lroc" "help lroc_zh"}{...}
{vieweralsosee "[R] lsens" "help lsens_zh"}{...}
{viewerjumpto "Postestimation commands" "probit postestimation##description"}{...}
{viewerjumpto "Links to PDF documentation" "probit_postestimation_zh##linkspdf"}{...}
{viewerjumpto "predict" "probit postestimation##syntax_predict"}{...}
{viewerjumpto "margins" "probit postestimation##syntax_margins"}{...}
{viewerjumpto "Examples" "probit postestimation##examples"}
{help probit_postestimation:English Version}
{hline}{...}
{p2colset 1 30 32 2}{...}
{p2col:{bf:[R] probit postestimation} {hline 2}}probit 的事后估计工具{p_end}
{p2col:}({mansection R probitpostestimation:查看完整的PDF手册条目}){p_end}
{p2colreset}{...}


{marker description}{...}
{title:事后估计命令}

{pstd}
在 {cmd:probit} 之后，以下事后估计命令特别重要：

{synoptset 20}{...}
{p2coldent :命令}描述{p_end}
{synoptline}
{synopt :{helpb estat classification}}报告各种摘要统计，包括分类表{p_end}
{synopt :{helpb logistic estat gof:estat gof}}皮尔逊或霍斯默-莱梅肖检验{p_end}
{synopt :{help lroc_zh}}计算ROC曲线下的面积并绘制曲线{p_end}
{synopt :{help lsens_zh}}绘制灵敏度和特异性与概率截断的关系图{p_end}
{synoptline}
{p2colreset}{...}
{p 4 6 2}
这些命令在 {cmd:svy} 前缀之后不适用。
{p_end}

{pstd}
以下标准的事后估计命令也可用：

{synoptset 20 tabbed}{...}
{p2coldent :命令}描述{p_end}
{synoptline}
INCLUDE help post_contrast
INCLUDE help post_estatic
INCLUDE help post_estatsum
INCLUDE help post_estatvce
INCLUDE help post_svy_estat
INCLUDE help post_estimates
INCLUDE help post_forecast_star
INCLUDE help post_hausman_star
INCLUDE help post_lincom
INCLUDE help post_linktest
INCLUDE help post_lrtest_star
{synopt:{helpb probit_postestimation##margins:margins}}边际均值、预测边际、边际效应和平均边际效应{p_end}
INCLUDE help post_marginsplot
INCLUDE help post_nlcom
{synopt :{helpb probit postestimation##predict:predict}}预测、残差、影响统计量和其他诊断度量{p_end}
INCLUDE help post_predictnl
INCLUDE help post_pwcompare
INCLUDE help post_suest
INCLUDE help post_test
INCLUDE help post_testnl
{synoptline}
{p2colreset}{...}
{p 4 6 2}
* {cmd:forecast}、{cmd:hausman} 和 {cmd:lrtest} 不适用于 {cmd:svy} 估计结果。{cmd:forecast} 也不适用于 {cmd:mi} 估计结果。{p_end}


{marker linkspdf}{...}
{title:PDF文档链接}

        {mansection R probitpostestimationRemarksandexamples:备注和示例}

        {mansection R probitpostestimationMethodsandformulas:方法和公式}

{pstd}
上述章节不包括在此帮助文件中。


{marker syntax_predict}{...}
{marker predict}{...}
{title:预测的语法}

{p 8 16 2}
{cmd:predict} {dtype} {newvar} {ifin} 
[{cmd:,} {it:statistic} {opt nooff:set} {opt rule:s} {opt asif}]

{synoptset 20 tabbed}{...}
{synopthdr :统计量}
{synoptline}
{syntab :主要}
{synopt :{opt pr}}正结果的概率；默认值{p_end}
{synopt :{cmd:xb}}线性预测{p_end}
{synopt :{cmd:stdp}}线性预测的标准误差{p_end}
{p2coldent :* {opt de:viance}}偏差残差{p_end}
{synopt :{opt sc:ore}}相对于 xb 的对数似然函数的一阶导数{p_end}
{synoptline}
{p2colreset}{...}
INCLUDE help unstarred


INCLUDE help menu_predict


{marker des_predict}{...}
{title:预测的描述}

{pstd}
{cmd:predict} 创建一个包含预测的新增变量，如概率、线性预测、标准误差、偏差残差和方程级分数。


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
{opt deviance} 计算偏差残差。  

{phang}
{opt score} 计算方程级分数，对数似然函数相对于线性预测的一阶导数。

{phang}
{opt nooffset} 仅在为 {opt probit} 指定了 {opth offset(varname)} 时相关。它修改 {opt predict} 的计算方式，以忽略偏移变量；线性预测被视为 xb，而不是 xb + offset。

{phang}
{opt rules} 请求 Stata 在进行预测时使用用于识别模型的任何规则。默认情况下，Stata 对排除的观察值计算缺失。

{phang}
{opt asif} 请求 Stata 忽略规则和排除标准，并使用模型估计的参数为所有可能的观察值计算预测。


INCLUDE help syntax_margins

{synoptset 17}{...}
{synopthdr :统计量}
{synoptline}
{synopt :{opt pr}}正结果的概率；默认值{p_end}
{synopt :{cmd:xb}}线性预测{p_end}
{synopt :{opt stdp}}与 {cmd:margins} 不允许使用{p_end}
{synopt :{opt de:viance}}与 {cmd:margins} 不允许使用{p_end}
{synopt :{opt sc:ore}}与 {cmd:margins} 不允许使用{p_end}
{synoptline}
{p2colreset}{...}

INCLUDE help notes_margins


INCLUDE help menu_margins


{marker des_margins}{...}
{title:margins 的描述}

{pstd}
{cmd:margins} 估计响应的边际，包括概率和线性预测。


{marker examples}{...}
{title:示例}

{pstd}设置{p_end}
{phang2}{cmd:. sysuse auto}{p_end}
{phang2}{cmd:. probit foreign weight mpg}{p_end}

{pstd}获取预测的概率{p_end}
{phang2}{cmd:. predict p}

{pstd}计算并显示摘要统计{p_end}
{phang2}{cmd:. summarize foreign p}{p_end}

{pstd}在进行预测时使用规则{p_end}
{phang2}{cmd:. predict p2, rules}

{pstd}计算并显示摘要统计{p_end}
{phang2}{cmd:. summarize foreign p p2}{p_end}

{pstd}忽略规则和排除标准{p_end}
{phang2}{cmd:. predict p3, asif}

{pstd}计算并显示摘要统计{p_end}
{phang2}{cmd:. summarize foreign p p2 p3}{p_end}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <probit_postestimation.sthlp>}