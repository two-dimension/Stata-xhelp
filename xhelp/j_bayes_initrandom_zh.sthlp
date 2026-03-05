
{smcl}
{* *! version 1.0.0  19may2017}{...}
{title:随机初始状态不可行}

{help j_bayes_initrandom:English Version}
{hline}
{pstd}
当您在 {help bayes_zh} 或 {help bayesmh_zh} 中指定选项 {cmd:initrandom} 并使用扩散先验时，该命令可能并不总是能找到一个良好的初始状态。在这种情况下，它将产生错误信息“{err:无法找到可行的随机初始状态}”。例如，如果您使用 {cmd:bayes} 结合 {help j_bayes_defaultpriors_zh:默认先验}，选项 {cmd:initrandom} 将会从均值为零、方差为 10,000 的正态分布中生成回归系数的初始值，并可能产生较大的系数值。对于某些似然模型，大的系数可能会导致似然的值为零，从而使对数似然出现缺失值。在这种情况下，我们建议使用默认的初始值，指定更具信息量的先验，或提供您自己的初始值。
{p_end}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <j_bayes_initrandom.sthlp>}