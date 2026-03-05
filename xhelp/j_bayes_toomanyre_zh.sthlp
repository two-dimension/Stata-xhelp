{smcl}
{* *! version 1.0.0  25apr2019}{...}
{vieweralsosee "[BAYES] bayesmh" "mansection BAYES bayesmh"}{...}
{vieweralsosee "[BAYES] bayes" "mansection BAYES bayes"}
{help j_bayes_toomanyre:English Version}
{hline}{...}

{title:当拟合贝叶斯多层模型时，MCMC 估计过多无法保存}

{pstd}
您正在尝试拟合一个包含许多随机效应的贝叶斯多层模型。与频率模型不同，贝叶斯模型不会将个体随机效应集成出去，而是与其他模型参数一起估计。因此，所有个体随机效应的 MCMC 估计会被保存，而不仅仅是其他模型参数。为了适应这一点，您必须增加数据集中变量的最大数量限制（参见 {helpb set maxvar}），使其达到模型中参数的总数，包括随机效应再加一。能够在仿真文件中保存的 MCMC 估计的参数总数不能超过最大变量数限制减一。此限制对于每种 {help flavors_zh:flavor} 的 Stata 是特定的，并且在 {help statamp_zh:Stata/MP} 中是最大的。

{pstd}
如果您只对模型参数的估计感兴趣，而不是随机效应本身，您可以考虑在 {help bayesmh_zh} 或 {help bayes_zh} 中指定 {cmd:exclude()} 选项，以防止保存随机效应的 MCMC 估计。如果您指定了 {cmd:exclude()} 选项，则对数边际似然和一些后验估计功能，例如贝叶斯因子的计算，将不可用。然而，考虑到高维模型的准确性可能存在问题，因此这可能并不是一个大损失。您可以选择排除所有随机效应或仅排除其中的一部分。在 MCMC 样本中保留若干随机效应可能有助于检查收敛性以及进行其他模型诊断。
{p_end}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <j_bayes_toomanyre.sthlp>}