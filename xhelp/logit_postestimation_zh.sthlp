{smcl}
{* *! version 1.2.7  21may2018}{...}
{viewerdialog predict "dialog logit_p"}{...}
{viewerdialog estat "dialog logit_estat"}{...}
{viewerdialog lroc "dialog lroc"}{...}
{viewerdialog lsens "dialog lsens"}{...}
{vieweralsosee "[R] logit postestimation" "mansection R logitpostestimation"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[R] logit" "help logit_zh"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[R] estat classification" "help estat classification"}{...}
{vieweralsosee "[R] estat gof" "help logistic estat gof"}{...}
{vieweralsosee "[R] lroc" "help lroc_zh"}{...}
{vieweralsosee "[R] lsens" "help lsens_zh"}{...}
{viewerjumpto "Postestimation commands" "logit postestimation##description"}{...}
{viewerjumpto "Links to PDF documentation" "logit_postestimation_zh##linkspdf"}{...}
{viewerjumpto "predict" "logit postestimation##syntax_predict"}{...}
{viewerjumpto "margins" "logit postestimation##syntax_margins"}{...}
{viewerjumpto "Examples" "logit postestimation##examples"}{...}
{viewerjumpto "References" "logit postestimation##references"}
{help logit_postestimation:English Version}
{hline}{...}
{p2colset 1 29 31 2}{...}
{p2col:{bf:[R] logit postestimation} {hline 2}}logit的后期评估工具{p_end}
{p2col:}({mansection R logitpostestimation:查看完整的PDF手册条目}){p_end}
{p2colreset}{...}


{marker description}{...}
{title:后期评估命令}

{pstd}
在执行 {cmd:logit} 后，以下后期评估命令特别重要：

{synoptset 20}{...}
{p2coldent :命令}描述{p_end}
{synoptline}
{synopt :{helpb estat classification}}报告各种摘要统计，包括分类表{p_end}
{synopt :{helpb logistic estat gof:estat gof}} Pearson 或 Hosmer-Lemeshow 拟合优度检验{p_end}
{synopt :{help lroc_zh}}计算 ROC 曲线下的面积并绘制曲线{p_end}
{synopt :{help lsens_zh}}绘制灵敏度和特异性与概率阈值的关系图{p_end}
{synoptline}
{p2colreset}{...}
{p 4 6 2}
这些命令不适用于 {cmd:svy} 前缀之后的情况。
{p_end}

{pstd}
以下标准后期评估命令也可用：

{synoptset 20 tabbed}{...}
{p2coldent :命令}描述{p_end}
{synoptline}
包含 help post_contrast
包含 help post_estatic
包含 help post_estatsum
包含 help post_estatvce
包含 help post_svy_estat
包含 help post_estimates
包含 help post_forecast_star
包含 help post_hausman_star
包含 help post_lincom
包含 help post_linktest
包含 help post_lrtest_star
{synopt:{helpb logit_postestimation##margins:margins}}边际
	均值、预测边际、边际效应和平均边际
	效应{p_end}
包含 help post_marginsplot
包含 help post_nlcom
{synopt :{helpb logit postestimation##predict:predict}}预测、残差、影响统计和其他诊断措施{p_end}
包含 help post_predictnl
包含 help post_pwcompare
包含 help post_suest
包含 help post_test
包含 help post_testnl
{synoptline}
{p2colreset}{...}
{p 4 6 2}
* {cmd:forecast}、{cmd:hausman} 和 {cmd:lrtest} 不适用于
{cmd:svy} 估计结果。 {cmd:forecast} 也不适用于
{cmd:mi} 估计结果。{p_end}


{marker linkspdf}{...}
{title:PDF 文档链接}

        {mansection R logitpostestimationRemarksandexamples:备注和示例}

        {mansection R logitpostestimationMethodsandformulas:方法和公式}

{pstd}
上述部分未包含在此帮助文件中。


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
{synopt :{opt pr}}正面结果的概率；默认值{p_end}
{synopt :{cmd:xb}}线性预测{p_end}
{synopt :{cmd:stdp}}预测的标准误{p_end}
{p2coldent :* {opt db:eta}}{help logit postestimation##P1981:Pregibon (1981)} Delta-Beta 影响统计{p_end}
{p2coldent :* {opt de:viance}}偏差残差{p_end}
{p2coldent :* {opt dx:2}}{help logit postestimation##HLS2013:Hosmer, Lemeshow, and Sturdivant (2013)} Delta
卡方影响统计{p_end}
{p2coldent :* {opt dd:eviance}}{help logit postestimation##HLS2013:Hosmer, Lemeshow, and Sturdivant (2013)} Delta-D
影响统计{p_end}
{p2coldent :* {opt h:at}}{help logit postestimation##P1981:Pregibon (1981)} 杠杆{p_end}
{p2coldent :* {opt n:umber}}协变量模式的序列号{p_end}
{p2coldent :* {opt r:esiduals}}Pearson 残差；对共享协变量模式的数量进行调整{p_end}
{p2coldent :* {opt rs:tandard}}标准化 Pearson 残差；对共享协变量模式的数量进行调整{p_end}
{synopt :{opt sc:ore}}对 xb 的对数似然的第一次导数{p_end}
{synoptline}
{p2colreset}{...}
包含 help unstarred
{p 4 6 2}
{opt pr}、{opt xb}、{opt stdp} 和 {opt score} 是唯一允许与 {cmd:svy} 估计结果一起使用的选项。


包含 help menu_predict


{marker des_predict}{...}
{title:预测的描述}

{pstd}
{cmd:predict} 创建一个新变量，包含诸如
概率、线性预测、标准误、影响统计、
偏差残差、杠杆、序列编号、Pearson 残差
和方程级别的评分等预测结果。


{marker options_predict}{...}
{title:预测的选项}

{dlgtab:主要}

{phang}
{opt pr} 默认计算正面结果的概率。

{phang}
{opt xb} 计算线性预测。

{phang}
{opt stdp} 计算线性预测的标准误。

{phang}
{opt dbeta} 计算 {help logit postestimation##P1981:Pregibon (1981)}
Delta-Beta 影响统计，是因删除观测值而做出的协变量模式的
系数向量的标准化差异的量度。在
{help logit postestimation##HLS2013:Hosmer, Lemeshow, and Sturdivant (2013, 154-155)} 中，这个统计量被称为
M-渐近；即，它是对共享相同
协变量模式的观察值数量进行调整的。

{phang}
{opt deviance} 计算偏差残差。 

{phang}
{opt dx2} 计算
{help logit postestimation##HLS2013:Hosmer, Lemeshow, and Sturdivant (2013, 191)} Delta
卡方影响统计，反映因删除观测值和所有共享相同
协变量模式的观测值而导致的 Pearson
卡方的降低。

{phang}
{opt ddeviance} 计算
{help logit postestimation##HLS2013:Hosmer, Lemeshow, and Sturdivant (2013, 191)} Delta-D
影响统计，即因删除观测值和所有共享相同
协变量模式的观测值而导致的偏差残差的变化。

{phang}
{opt hat} 计算 {help logit postestimation##P1981:Pregibon (1981)}
杠杆，或对共享相同协变量模式的
观测值数量进行调整的帽子矩阵的对角元素。

{phang}
{opt number} 编号协变量模式 — 具有相同
协变量模式的观测值具有相同的 {cmd:number}。未用于
估计的观测值的 {opt number} 设为缺失。第一个
协变量模式编号为1，第二个为2，依此类推。

{phang}
{opt residuals} 计算 Pearson 残差，如
{help logit postestimation##HLS2013:Hosmer, Lemeshow, and Sturdivant (2013, 155)} 所述，并对
共享相同协变量模式的观测值的数量进行调整。

{phang}
{opt rstandard} 计算标准化 Pearson 残差，如
{help logit postestimation##HLS2013:Hosmer, Lemeshow, and Sturdivant (2013, 191)} 所述，并对
共享相同协变量模式的观测值的数量进行调整。

{phang}
{opt score} 计算方程级别的评分，即对线性预测的对数似然的第一次导数。

{dlgtab:选项}

{phang}
{opt nooffset} 仅在您为 {opt logit} 指定了 {opth offset(varname)} 时相关。
它修改 {opt predict} 的计算，使其忽略偏移变量；线性预测被视为 xb 而不是 xb + offset。

{phang}
{opt rules} 请求 Stata 在进行预测时使用用于识别模型的任何规则。默认情况下，Stata 对被排除的观测值计算缺失值。

{phang}
{opt asif} 请求 Stata 忽略规则和排除标准，并计算对所有可能的观测值的预测，使用从模型中估计的参数。


包含 help syntax_margins

{synoptset 17}{...}
{synopthdr :统计量}
{synoptline}
{synopt :{opt pr}}正面结果的概率；默认值{p_end}
{synopt :{cmd:xb}}线性预测{p_end}
{synopt :{opt stdp}}在 {cmd:margins} 中不允许{p_end}
{synopt :{opt db:eta}}在 {cmd:margins} 中不允许{p_end}
{synopt :{opt de:viance}}在 {cmd:margins} 中不允许{p_end}
{synopt :{opt dx:2}}在 {cmd:margins} 中不允许{p_end}
{synopt :{opt dd:eviance}}在 {cmd:margins} 中不允许{p_end}
{synopt :{opt h:at}}在 {cmd:margins} 中不允许{p_end}
{synopt :{opt n:umber}}在 {cmd:margins} 中不允许{p_end}
{synopt :{opt r:esiduals}}在 {cmd:margins} 中不允许{p_end}
{synopt :{opt rs:tandard}}在 {cmd:margins} 中不允许{p_end}
{synopt :{opt sc:ore}}在 {cmd:margins} 中不允许{p_end}
{synoptline}
{p2colreset}{...}

包含 help notes_margins


包含 help menu_margins


{marker des_margins}{...}
{title:margins 的描述}

{pstd}
{cmd:margins} 估计响应的边际概率和线性预测。 


{marker examples}{...}
{title:示例}

    {hline}
{pstd}设置{p_end}
{phang2}{cmd:. webuse lbw}

{pstd}拟合逻辑回归以预测低出生体重{p_end}
{phang2}{cmd:. logit low age lwt i.race smoke ptl ht ui}

{pstd}计算拟合概率{p_end}
{phang2}{cmd:. predict p}

{pstd}报告分类表和摘要统计{p_end}
{phang2}{cmd:. estat classification}

{pstd}进行拟合优度检验{p_end}
{phang2}{cmd:. estat gof}

    {hline}
{pstd}设置{p_end}
{phang2}{cmd:. webuse hospital, clear}{p_end}
{phang2}{cmd:. logistic satisfied hospital##illness}

{pstd}主效应和交互效应的 ANOVA 风格检验表{p_end}
{phang2}{cmd:. contrast hospital##illness}

{pstd}测试每个医院之间的疾病差异{p_end}
{phang2}{cmd:. margins illness, over(hospital) contrast}

    {hline}


{marker references}{...}
{title:参考文献}

{marker HLS2013}{...}
{phang}
Hosmer, D. W., Jr., S. A. Lemeshow, 和 R. X. Sturdivant. 2013.
{browse "http://www.stata.com/bookstore/applied-logistic-regression/":{it:Applied Logistic Regression}. 第3版.}
霍博肯，纽约：Wiley。

{marker P1981}{...}
{phang}
Pregibon, D. 1981. Logistic regression diagnostics.
{it:Annals of Statistics} 9: 705-724.
{p_end}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <logit_postestimation.sthlp>}