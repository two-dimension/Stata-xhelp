{smcl}
{* *! version 1.0.2  20nov2018}{...}
{vieweralsosee "[BAYES] bayesmh" "mansection BAYES bayesmh"}
{help j_bayesmh_marglmiss:English Version}
{hline}{...}
{title:为什么报告缺少对数边际似然？}

{pstd}
无法计算对数边际似然（LML）。当 MCMC 样本的大小非常小时，通常会出现这种情况。LML 的计算涉及参数样本协方差矩阵行列式的逆。当 MCMC 样本量较小，通常导致样本中具有非常少的不同模拟参数值时，矩阵的行列式评估为 0，这时 LML 值变为缺失。解决方法是在选项 {cmd:mcmcsize()} 中指定更大的 MCMC 样本大小。

{pstd}
此外，对于多维模型如多层模型，高维模型的 LML 估计可能变得不稳定，并可能导致缺失值的出现。

{pstd}
当您在使用 {cmd:bayesmh} 时指定了 {cmd:exclude()} 选项，并且使用 Laplace-Metropolis 近似时，也会报告缺失值，因为此近似需要所有参数的模拟结果。

{pstd}
当 LML 缺失时，通过 {helpb bayesstats ic} 计算的贝叶斯因子以及通过 {helpb bayestest model} 计算的后验模型概率也将缺失。您可以尝试使用这些命令中的选项 {cmd:marglmethod(hmean)} 来使用 LML 的谐波均值近似，尽管此近似通常精度较低。
{p_end}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <j_bayesmh_marglmiss.sthlp>}