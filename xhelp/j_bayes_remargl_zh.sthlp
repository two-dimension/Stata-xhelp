
{smcl}
{* *! version 1.0.1  25apr2019}{...}
{title:为什么多层模型不报告对数边际似然？}

{help j_bayes_remargl:English Version}
{hline}
{pstd}
{cmd:bayes} 前缀默认情况下不报告多层模型的对数边际似然（LML）。贝叶斯多层模型包含许多参数，因为除了回归系数和方差成分外，它们还估计个体随机效应。LML 的计算涉及所有参数的样本协方差矩阵行列式的逆，随着参数数量的增加，计算的准确性降低。对于高维模型，如多层模型，LML 的计算可能非常耗时，并且其准确性可能变得不可接受。由于很难评估所有多层模型的计算精度，因此默认情况下不报告 LML。

{pstd}
对于包含少量随机效应的多层模型，可以使用 {cmd:remargl} 选项来计算和显示 LML。当您指定 {cmd:remargl} 选项时，某些模型仍然可能无法提供 LML；有关详细信息，请参见 {it:{help j_bayesmh_marglmiss_zh:为什么对数边际似然报告缺失？}}。

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <j_bayes_remargl.sthlp>}