
{smcl}
{* *! version 1.0.0  20nov2018}{...}
{title:Gelman-Rubin Ru}

{help j_bayes_grubin_ru:English Version}
{hline}
{pstd}
Gelman-Rubin {it:Ru} 统计量是用于评估马尔可夫链收敛性的 {it:Rc} 诊断统计量的上置信限。 {it:Ru} 是相对于预设的覆盖概率计算的，默认为 0.95，并假设后验分布是正态的。在收敛的完美情况下，所有模型参数对应的 {it:Rc} 估计值都小于相应的 {it:Ru} 估计值。通常，这一条件过于严格，我们认为当最大 {it:Rc} 小于 1.1 时，收敛测试通过。有关详细的 Gelman-Rubin 收敛诊断，请使用 {helpb bayesstats grubin} 命令。
{p_end}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <j_bayes_grubin_ru.sthlp>}