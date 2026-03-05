{smcl}
{* *! version 2.0.6  21may2018}{...}
{viewerdialog predict "dialog ivprobit_p"}{...}
{viewerdialog estat "dialog ivprobit_estat"}{...}
{viewerdialog lroc "dialog lroc"}{...}
{viewerdialog lsens "dialog lsens"}{...}
{vieweralsosee "[R] ivprobit postestimation" "mansection R ivprobitpostestimation"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[R] ivprobit" "help ivprobit_zh"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[R] estat classification" "help estat classification"}{...}
{vieweralsosee "[R] lroc" "help lroc_zh"}{...}
{vieweralsosee "[R] lsens" "help lsens_zh"}{...}
{viewerjumpto "Postestimation commands" "ivprobit postestimation##description"}{...}
{viewerjumpto "Links to PDF documentation" "ivprobit_postestimation_zh##linkspdf"}{...}
{viewerjumpto "predict" "ivprobit postestimation##syntax_predict"}{...}
{viewerjumpto "margins" "ivprobit postestimation##syntax_margins"}{...}
{viewerjumpto "estat" "ivprobit postestimation##estat"}{...}
{viewerjumpto "Examples" "ivprobit postestimation##examples"}
{help ivprobit_postestimation:English Version}
{hline}{...}
{p2colset 1 32 34 2}{...}
{p2col:{bf:[R] ivprobit postestimation} {hline 2}}ivprobit 的后续估计工具{p_end}
{p2col:}({mansection R ivprobitpostestimation:查看完整的 PDF 手册条目}){p_end}
{p2colreset}{...}


{marker description}{...}
{title:后续估计命令}

{pstd}
以下后续估计命令在 {cmd:ivprobit} 后特别有用：

{synoptset 22}{...}
{p2coldent :命令}描述{p_end}
{synoptline}
{synopt :{helpb estat classification}}报告各种汇总统计，包括分类表{p_end}
{synopt :{helpb ivprobit_postestimation##estat:estat correlation}}报告因变量和内生变量的误差的相关矩阵{p_end}
{synopt :{helpb ivprobit_postestimation##estat:estat covariance}}报告因变量和内生变量的误差的协方差矩阵{p_end}
{synopt :{help lroc_zh}}计算 ROC 曲线下的面积并绘制曲线{p_end}
{synopt :{help lsens_zh}}绘制敏感性和特异性与概率截止值的关系{p_end}
{synoptline}
{p2colreset}{...}
{p 4 6 2}
这些命令在两步估计器或 {cmd:svy} 前缀之后不适用。{p_end}

{pstd}
以下标准后续估计命令也可用：

{synoptset 22 tabbed}{...}
{p2coldent :命令}描述{p_end}
{synoptline}
包含 help post_contrast
{p2coldent :* {bf:{help estat ic}}}赤池信息量准则（AIC）和施瓦兹信息量准则（BIC）{p_end}
包含 help post_estatsum
包含 help post_estatvce
包含 help post_svy_estat
包含 help post_estimates
{p2col 4 29 31 2:*+ {bf:{help forecast_zh}}}动态预测和模拟{p_end}
包含 help post_hausman_star2
包含 help post_lincom
{p2coldent :+ {help lrtest_zh}}似然比检验；不适用于两步估计器{p_end}
{synopt:{helpb ivprobit_postestimation##margins:margins}}边际均值、预测边际、边际效应和平均边际效应{p_end}
包含 help post_marginsplot
包含 help post_nlcom
{synopt :{helpb ivprobit postestimation##predict:predict}}预测、残差、影响统计和其他诊断措施{p_end}
包含 help post_predictnl
包含 help post_pwcompare
{p2coldent :* {help suest_zh}}看似不相关的估计{p_end}
包含 help post_test
包含 help post_testnl
{synoptline}
{p2colreset}{...}
{p 4 6 2}
* {cmd:estat ic}、{cmd:forecast} 和 {cmd:suest} 在 {cmd:ivprobit, twostep} 后不适用。{p_end}
{p 4 6 2}
+ {cmd:forecast}、{cmd:hausman} 和 {cmd:lrtest} 在 {cmd:svy} 估计结果中不适用。{p_end}


{marker linkspdf}{...}
{title:PDF 文档链接}

        {mansection R ivprobitpostestimationRemarksandexamples:备注和示例}

        {mansection R ivprobitpostestimationMethodsandformulas:方法和公式}

{pstd}
上述部分未包含在此帮助文件中。


{marker syntax_predict}{...}
{marker predict}{...}
{title:预测的语法}

{phang}
在 ML 或两步法之后

{p 8 16 2}
{cmd:predict} {dtype} {newvar} {ifin} [{cmd:,} {it:statistic} 
     {opt rule:s} {opt asif}]


{phang}
在 ML 之后

{p 8 16 2}
{cmd:predict} {dtype}
{c -(}{it:{help newvarlist##stub*:stub}}{cmd:*} {c |} {it:{help newvarlist_zh}}{c )-}
{ifin} {cmd:,} {opt sc:ores}


{synoptset 20 tabbed}{...}
{synopthdr :statistic}
{synoptline}
{syntab :主}
{synopt :{opt xb}}线性预测；默认{p_end}
{synopt :{opt stdp}}线性预测的标准误{p_end}
{synopt :{opt pr}}考虑到内生性的积极结果的概率；不适用于两步估计器{p_end}
{synoptline}
{p2colreset}{...}
包含 help esample


包含 help menu_predict


{marker des_predict}{...}
{title:预测的描述}

{pstd}
{cmd:predict} 创建一个包含预测的变量，例如线性预测、标准误和概率。


{marker options_predict}{...}
{title:预测的选项}

{dlgtab:主}

{phang}{opt xb}，默认，计算线性预测。

{phang}{opt stdp} 计算线性预测的标准误。

{phang}{opt pr} 计算考虑内生性的积极结果的概率。{opt pr} 在两步估计器中不可用。

{phang}{opt rules} 请求 Stata 在进行预测时使用用于识别模型的任何规则。默认情况下，Stata 对被排除的观察值计算缺失值。{opt rules} 在两步估计器中不可用。

{phang}{opt asif} 请求 Stata 忽略规则和排除标准，根据模型估计的参数计算所有可能观察值的预测。{opt asif} 在两步估计器中不可用。

{phang}{opt scores}，在 {opt twostep} 中不可用，计算方程级得分变量。

{pmore}
对于包含一个内生回归量的模型，会创建四个新变量。

{pmore2}
第一个新变量将包含与 probit 方程的对数似然的第一导数。

{pmore2}
第二个新变量将包含与内生回归量的简化方程的对数似然的第一导数。

{pmore2}
第三个新变量将包含与 atanh(rho) 的对数似然的第一导数。

{pmore2}
第四个新变量将包含与 ln(sigma) 的对数似然的第一导数。

{pmore}
对于包含 p 个内生回归量的模型，
将创建 p + {c -(}(p + 1)(p + 2){c )-}/2 个新变量。

{pmore2}
第一个新变量将包含与 probit 方程的对数似然的第一导数。

{pmore2}
第二个到 (p + 1) 个新变量将包含与在调用 {cmd:ivprobit} 时指定的内生变量的简化方程的对数似然的第一导数。

{pmore2}
剩余的得分变量将包含与 s[2,1]、s[3,1]、...、s[p+1,1]、s[2,2]、...、s[p+1,2]、...、s[p+1,p+1] 的对数似然的偏导数，其中 s[m,n] 表示误差协方差矩阵的 Cholesky 分解的 (m,n) 元素。


包含 help syntax_margins

{synoptset 17}{...}
{synopthdr :statistic}
{synoptline}
{synopt :{opt xb}}线性预测；默认{p_end}
{synopt :{opt pr}}考虑内生性的积极结果的概率；不适用于两步估计器{p_end}
{synopt :{opt stdp}} 不允许与 {cmd:margins}{p_end}
{synoptline}
{p2colreset}{...}

包含 help notes_margins


包含 help menu_margins


{marker des_margins}{...}
{title:margins 的描述}

{pstd}
{cmd:margins} 估计线性预测和概率的响应边际。


{marker estat}{...}
{title:estat 的语法}

{pstd}
相关矩阵

{p 8 19 2}
{cmd:estat} {opt cor:relation} [{cmd:,}
	{opth bor:der(matlist##bspec:bspec)} {opt left(#)}
        {opth for:mat(%fmt)}]


{pstd}
协方差矩阵

{p 8 19 2}
{cmd:estat} {opt cov:ariance} [{cmd:,}
	{opth bor:der(matlist##bspec:bspec)} {opt left(#)}
        {opth for:mat(%fmt)}]


包含 help menu_estat


{marker des_estat}{...}
{title:estat 的描述}

{pstd}
{cmd:estat correlation} 显示因变量和内生变量的误差的相关矩阵。

{pstd}
{cmd:estat covariance} 显示因变量和内生变量的误差的协方差矩阵。

{pstd}
{cmd:estat correlation} 和 {cmd:estat covariance} 在 {cmd:ivprobit} 两步估计器之后不允许使用。


{marker options_estat}{...}
{title:estat 的选项}

{dlgtab:主}

{phang}
{opth border:(matlist##bspec:bspec)} 设置矩阵显示的边框样式。默认值是 {cmd:border(all)}。

{phang}
{opt left(#)} 设置矩阵显示的左缩进。默认值是 {cmd:left(2)}。

{phang}
{opth format(%fmt)} 指定显示矩阵中各个元素的格式。默认值是 {cmd:format(%9.0g)}。


{marker examples}{...}
{title:示例}

{pstd}设置{p_end}
{phang2}{cmd:. webuse laborsup}{p_end}
{phang2}{cmd:. ivprobit fem_work fem_educ kids (other_inc = male_educ)}{p_end}

{pstd}计算 {cmd:fem_educ} 对女性工作的概率的平均边际效应{p_end}
{phang2}{cmd:. margins, dydx(fem_educ) predict(pr)}{p_end}

{pstd}同上，但指定没有孩子{p_end}
{phang2}{cmd:. margins, dydx(fem_educ) predict(pr) at(kids=0)}{p_end}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <ivprobit_postestimation.sthlp>}