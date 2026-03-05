{smcl}
{* *! version 1.0.1  10jan2017}{...}
{vieweralsosee "[BAYES] bayes" "mansection BAYES bayes"}
{help j_bayes_defaultpriors:English Version}
{hline}{...}
{title:默认先验}

{pstd}
为了方便，{cmd:bayes} 前缀为模型参数提供默认先验。选择这些先验是为了使其对大多数具有小规模参数的模型信息量较少。例如，回归系数被赋予均值为零、方差为10,000的独立正态先验。对于中等规模的回归系数，10,000的方差应提供足够的系数变化，以使先验信息对结果的影响较小。这在一般情况下并不成立；请参见 {mansection BAYES bayesRemarksandexamplesex_linreg:{it:线性回归：一种信息性默认先验的案例}} 在 {bf:[BAYES] bayes} 中。

{pstd}
在拟合贝叶斯模型时，仔细评估先验的选择并指定适合您的模型和研究问题的先验非常重要。您不能仅仅依赖提供的默认值。

{pstd}
有关详细信息，请参见 {mansection BAYES bayesRemarksandexamplesDefaultpriors:{it:默认先验}} 在 {bf:[BAYES] bayes} 中。
{p_end}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <j_bayes_defaultpriors.sthlp>}