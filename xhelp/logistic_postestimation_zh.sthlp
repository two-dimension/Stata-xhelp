{smcl}
{* *! version 1.2.7  21may2018}{...}
{viewerdialog predict "dialog logit_p"}{...}
{viewerdialog estat "dialog logit_estat"}{...}
{viewerdialog lroc "dialog lroc"}{...}
{viewerdialog lsens "dialog lsens"}{...}
{vieweralsosee "[R] logistic postestimation" "mansection R logisticpostestimation"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[R] logistic" "help logistic_zh"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[R] estat classification" "help estat classification"}{...}
{vieweralsosee "[R] estat gof" "help logistic estat gof"}{...}
{vieweralsosee "[R] lroc" "help lroc_zh"}{...}
{vieweralsosee "[R] lsens" "help lsens_zh"}{...}
{viewerjumpto "Postestimation commands" "logistic postestimation##description"}{...}
{viewerjumpto "Links to PDF documentation" "logistic_postestimation_zh##linkspdf"}{...}
{viewerjumpto "predict" "logistic postestimation##syntax_predict"}{...}
{viewerjumpto "margins" "logistic postestimation##syntax_margins"}{...}
{viewerjumpto "Examples" "logistic postestimation##examples"}{...}
{viewerjumpto "References" "logistic postestimation##references"}
{help logistic_postestimation:English Version}
{hline}{...}
{p2colset 1 32 34 2}{...}
{p2col:{bf:[R] logistic postestimation} {hline 2}}逻辑回归的事后估计工具{p_end}
{p2col:}({mansection R logisticpostestimation:查看完整的PDF手册条目}){p_end}
{p2colreset}{...}


{marker description}{...}
{title:事后估计命令}

{pstd}
以下事后估计命令在执行 {cmd:logistic} 后尤其重要：

{synoptset 20}{...}
{p2coldent :命令}描述{p_end}
{synoptline}
{synopt :{helpb estat classification}}报告各种摘要统计信息，包括分类表{p_end}
{synopt :{helpb logistic estat gof:estat gof}}Pearson 或 Hosmer-Lemeshow 拟合优度检验{p_end}
{synopt :{help lroc_zh}}计算 ROC 曲线下的面积并绘制曲线{p_end}
{synopt :{help lsens_zh}}绘制敏感性和特异性相对于概率截止的图{p_end}
{synoptline}
{p2colreset}{...}
{p 4 6 2}
这些命令在 {cmd:svy} 前缀后不合适使用。
{p_end}

{pstd}
以下标准事后估计命令也可用：

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
{synopt:{helpb logistic_postestimation##margins:margins}}边际均值、预测边际、边际效应和平均边际效应{p_end}
INCLUDE help post_marginsplot
INCLUDE help post_nlcom
{synopt :{helpb logistic postestimation##predict:predict}}预测、残差、影响统计量和其他诊断指标{p_end}
INCLUDE help post_predictnl
INCLUDE help post_pwcompare
INCLUDE help post_suest
INCLUDE help post_test
INCLUDE help post_testnl
{synoptline}
{p2colreset}{...}
{p 4 6 2}
* {cmd:forecast}、{cmd:hausman} 和 {cmd:lrtest} 不能与 {cmd:svy} 估计结果一起使用。 {cmd:forecast} 也不适用于 {cmd:mi} 估计结果。{p_end}


{marker linkspdf}{...}
{title:PDF 文档链接}

        {mansection R logisticpostestimationRemarksandexamples:备注和示例}

        {mansection R logisticpostestimationMethodsandformulas:方法和公式}

{pstd}
上述部分未包含在此帮助文件中。


{marker syntax_predict}{...}
{marker predict}{...}
{title:预测的语法}

{p 8 16 2}
{cmd:predict} {dtype} {newvar} {ifin} 
[{cmd:,} {it:statistic} {opt nooff:set} {opt rule:s} {opt asif}]

{synoptset 20 tabbed}{...}
{synopthdr :statistic}
{synoptline}
{syntab :主要}
{synopt :{opt pr}}正向结果的概率；默认值{p_end}
{synopt :{cmd:xb}}线性预测{p_end}
{synopt :{cmd:stdp}}预测的标准误差{p_end}
{p2coldent :* {opt db:eta}}{help logistic postestimation##P1981:Pregibon (1981)} Delta-Beta 影响统计量{p_end}
{p2coldent :* {opt de:viance}}deviance 残差{p_end}
{p2coldent :* {opt dx:2}}{help logistic postestimation##HLS2013:Hosmer, Lemeshow, and Sturdivant (2013)} Delta 卡方影响统计量{p_end}
{p2coldent :* {opt dd:eviance}}{help logistic postestimation##HLS2013:Hosmer, Lemeshow, and Sturdivant (2013)} Delta-D 影响统计量{p_end}
{p2coldent :* {opt h:at}}{help logistic postestimation##P1981:Pregibon (1981)} 杠杆{p_end}
{p2coldent :* {opt n:umber}}协变量模式的顺序号{p_end}
{p2coldent :* {opt r:esiduals}}Pearson 残差；调整根据共享协变量模式的数量{p_end}
{p2coldent :* {opt rs:tandard}}标准化 Pearson 残差；调整根据共享协变量模式的数量{p_end}
{synopt :{opt sc:ore}}关于 xb 的对数似然的一阶导数{p_end}
{synoptline}
{p2colreset}{...}
INCLUDE help unstarred
{p 4 6 2}
{opt pr}、{opt xb}、{opt stdp} 和 {opt score} 是与 {cmd:svy} 估计结果一起使用的唯一允许选项。


INCLUDE help menu_predict


{marker des_predict}{...}
{title:预测的描述}

{pstd}
{cmd:predict} 创建一个新变量，包含预测值，如概率、线性预测、标准误差、影响统计量、deviance 残差、杠杆、顺序号、Pearson 残差和方程级分数。


{marker options_predict}{...}
{title:预测的选项}

{dlgtab:主要}

{phang}
{opt pr}，默认情况下，计算正向结果的概率。

{phang}
{opt xb} 计算线性预测。

{phang}
{opt stdp} 计算线性预测的标准误差。

{phang}
{opt dbeta} 计算 {help logistic postestimation##P1981:Pregibon (1981)} Delta-Beta 影响统计量，这是由于删除观察值以及所有共享相同协变量模式的观测值导致的系数向量差异的标准化度量。根据 {help logistic postestimation##HLS2013:Hosmer, Lemeshow, and Sturdivant (2013, 154-155)} 行话，该统计量是 M-渐近的；即，根据共享相同协变量模式的观察值数量进行调整。

{phang}
{opt deviance} 计算 deviance 残差。

{phang}
{opt dx2} 计算 {help logistic postestimation##HLS2013:Hosmer, Lemeshow, and Sturdivant (2013, 191)} Delta 卡方影响统计量，反映由于删除观察值和所有共享相同协变量模式的观测值而导致的 Pearson 卡方的减少。

{phang}
{opt ddeviance} 计算 {help logistic postestimation##HLS2013:Hosmer, Lemeshow, and Sturdivant (2013, 191)} Delta-D 影响统计量，这是由于删除观察值和所有共享相同协变量模式的观测值而引起的 deviance 残差的变化。

{phang}
{opt hat} 计算 {help logistic postestimation##P1981:Pregibon (1981)} 杠杆或协变量模式的 hat 矩阵的对角元素，调整根据共享相同协变量模式的观测值数量。 

{phang}
{opt number} 对协变量模式进行编号 -- 拥有相同协变量模式的观测值具有相同的 {cmd:number}。未用于估计的观测值的 {opt number} 设置为缺失值。第一个协变量模式编号为 1，第二个为 2，以此类推。

{phang}
{opt residuals} 计算 Pearson 残差，如 {help logistic postestimation##HLS2013:Hosmer, Lemeshow, and Sturdivant (2013, 155)} 所述，并根据共享相同协变量模式的观察值数量进行调整。

{phang}
{opt rstandard} 计算标准化 Pearson 残差，如 {help logistic postestimation##HLS2013:Hosmer, Lemeshow, and Sturdivant (2013, 191)} 所述，并根据共享相同协变量模式的观察值数量进行调整。

{phang}
{opt score} 计算方程级分数，即对数似然关于线性预测的一阶导数。

{dlgtab:选项}

{phang}
{opt nooffset} 仅在您为 {opt logistic} 指定了 {opth offset(varname)} 时相关。它修改 {opt predict} 的计算，使其忽略偏移变量；线性预测被视为 xb，而不是 xb + offset。

{phang}
{opt rules} 请求 Stata 在做出预测时使用任何用于识别模型的规则。默认情况下，Stata 为被排除的观察值计算缺失值。请参见 {mansection R logitpostestimationRemarksandexamplesex1_logitp:示例 1} 中的 {bf:[R] logit postestimation}。

{phang}
{opt asif} 请求 Stata 忽略规则和排除标准，并使用模型中的估计参数为所有可能的观测值计算预测值。请参见 {mansection R logitpostestimationRemarksandexamplesex1_logitp:示例 1} 中的 {bf:[R] logit postestimation}。


INCLUDE help syntax_margins

{synoptset 17}{...}
{synopthdr :statistic}
{synoptline}
{synopt :{opt pr}}正向结果的概率；默认值{p_end}
{synopt :{cmd:xb}}线性预测{p_end}
{synopt :{opt stdp}}与 {cmd:margins} 不允许使用{p_end}
{synopt :{opt db:eta}}与 {cmd:margins} 不允许使用{p_end}
{synopt :{opt de:viance}}与 {cmd:margins} 不允许使用{p_end}
{synopt :{opt dx:2}}与 {cmd:margins} 不允许使用{p_end}
{synopt :{opt dd:eviance}}与 {cmd:margins} 不允许使用{p_end}
{synopt :{opt h:at}}与 {cmd:margins} 不允许使用{p_end}
{synopt :{opt n:umber}}与 {cmd:margins} 不允许使用{p_end}
{synopt :{opt r:esiduals}}与 {cmd:margins} 不允许使用{p_end}
{synopt :{opt rs:tandard}}与 {cmd:margins} 不允许使用{p_end}
{synopt :{opt sc:ore}}与 {cmd:margins} 不允许使用{p_end}
{synoptline}
{p2colreset}{...}

INCLUDE help notes_margins


INCLUDE help menu_margins


{marker des_margins}{...}
{title:margins的描述}

{pstd}
{cmd:margins} 估计响应的边际概率和线性预测。


{marker examples}{...}
{title:示例}

    {hline}
{pstd}设置{p_end}
{phang2}{cmd:. webuse lbw}

{pstd}拟合逻辑回归以预测低出生体重{p_end}
{phang2}{cmd:. logistic low age lwt i.race smoke ptl ht ui}

{pstd}绘制 ROC 曲线并计算曲线下的面积{p_end}
{phang2}{cmd:. lroc}

{pstd}绘制敏感性和特异性相对于概率截止{p_end}
{phang2}{cmd:. lsens}

{pstd}报告分类表和摘要统计{p_end}
{phang2}{cmd:. estat class}

{pstd}执行拟合优度检验{p_end}
{phang2}{cmd:. estat gof}

{pstd}仅计算估计样本的拟合概率{p_end}
{phang2}{cmd:. predict phat if e(sample)}

{pstd}计算 Pearson 残差{p_end}
{phang2}{cmd:. predict r, resid}

    {hline}


{pstd}设置{p_end}
{phang2}{cmd:. webuse nhanes2, clear}

{pstd}拟合包含三重交互项的逻辑回归{p_end}
{phang2}{cmd:. logistic highbp sex##agegrp##c.bmi}

{pstd}为每个 {cmd:sex} 估计高血压的概率在均匀间隔的 {cmd:bmi} 值下{p_end}
{phang2}{cmd:. margins sex, at(bmi=(10(5)65))}

{pstd}绘制估计值相对于 {cmd:bmi}{p_end}
{phang2}{cmd:. marginsplot}

{pstd}估计每个 {cmd:sex} 随着 BMI 增加五个单位而导致的高血压几率变化{p_end}
{phang2}{cmd:. margins sex, at(bmi=(10(5)65)) contrast(atcontrast(ar._at)}
   {cmd:marginswithin)}

{pstd}绘制结果{p_end}
{phang2}{cmd:. marginsplot}{p_end}

    {hline}


{marker references}{...}
{title:参考文献}

{marker HLS2013}{...}
{phang}
Hosmer, D. W., Jr., S. A. Lemeshow, 和 R. X. Sturdivant. 2013.
{browse "http://www.stata.com/bookstore/applied-logistic-regression/":{it:应用逻辑回归}. 第3版.}
新泽西州霍博肯：Wiley。

{marker P1981}{...}
{phang}
Pregibon, D. 1981. 逻辑回归诊断.
{it:统计年鉴} 9: 705-724.
{p_end}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <logistic_postestimation.sthlp>}