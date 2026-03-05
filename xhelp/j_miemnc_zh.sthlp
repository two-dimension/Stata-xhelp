{smcl}
{* *! version 1.0.4  19oct2017}{...}
{vieweralsosee "[MI] mi impute mvn" "mansection MI miimputemvn"}{...}
{viewerjumpto "我的 {cmd:mi impute mvn} 输出显示 EM 未收敛" "j_miemnc_zh##converge"}{...}
{viewerjumpto "EM 用于获取起始值" "j_miemnc_zh##startvalues"}{...}
{viewerjumpto "我该怎么办？" "j_miemnc_zh##todo"}
{help j_miemnc:English Version}
{hline}{...}
{marker converge}{...}
{title:我的 {cmd:mi impute mvn} 输出显示 EM 未收敛}

{pstd}
当 {cmd:mi impute mvn} 的输出显示期望最大化（EM）未收敛时，通常不需要担心。然而，如果您遇到此消息，我们建议在评估产生插补的估计链的收敛特性时要格外谨慎。下面我们说明如何进行此操作。


{marker startvalues}{...}
{title:EM 用于获取起始值}

{pstd}
多变量正态插补是通过迭代的马尔可夫链蒙特卡洛（MCMC）方法，从给定观测数据的缺失数据的后验预测分布中获取的。这条链的起始点由此预测分布的 EM 参数估计决定。当 EM 不收敛时，这表示 1）MCMC 的起始点不够优化，并且 2）插补模型可能不适合数据。第一点并不是一个严重的问题，只要 MCMC 的预热期足够长，可以抵消不良的起始点。第二点则更为严重，需要对模型进行调整。


{marker todo}{...}
{title:我该怎么办？}

{pstd}
首先，尝试增加 EM 迭代的次数，从而给予 EM 更好的收敛机会；有关如何更改最大 EM 迭代次数，请参阅 {cmd:iterate()} 选项中的 {it:em_options} 在 {help mi_impute_mvn_zh:mi impute mvn}。

{pstd}
如果增加迭代次数仍未导致 EM 收敛，则检查 MCMC 的收敛特性，以确保没有更大问题。有关如何执行此操作，请参见 {manlink MI mi impute mvn} 的示例 4（及后续示例）。如果诊断表明 MCMC 不稳定，则增加预热期和清空期（分别为 {cmd:burnin()} 和 {cmd:burnbetween()} 选项）可能会有所帮助。如果诊断未指示 MCMC 不稳定，您可能需要考虑使用其他插补模型，例如具有不同预测变量的模型。
{p_end}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <j_miemnc.sthlp>}