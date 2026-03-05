
{smcl}
{* *! version 1.0.0  20nov2018}{...}
{title:最大 Gelman-Rubin Rc 是什么？}

{help j_bayes_grubin_rc:English Version}
{hline}
{pstd}
当你使用 {help bayesmh_zh} 或 {help bayes_zh} 模拟多个链时，这些命令会在头部报告所有模型参数（多层模型中的随机效应参数除外）中 Gelman-Rubin 收敛统计量 {it:Rc} 的最大值。这个统计量用于评估多个马尔可夫链的收敛性。通过查看最大值，你可以快速评估所有参数是否满足收敛规则。当最大 {it:Rc} 大于 1.2 时，你应该怀疑出现了不收敛的情况，并进一步调查你的模型；详见 {help j_bayes_grubin_conv_zh: Gelman-Rubin 统计量的收敛规则} 和 {helpb bayesstats grubin}。 
{p_end}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <j_bayes_grubin_rc.sthlp>}