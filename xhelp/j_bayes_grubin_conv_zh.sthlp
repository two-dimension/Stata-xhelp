{smcl}
{* *! version 1.0.0  19jun2019}{...}
{vieweralsosee "[BAYES] bayes" "mansection BAYES bayes"}
{help j_bayes_grubin_conv:English Version}
{hline}{...}
{title:Gelman-Rubin 统计量的收敛规则}

{pstd}
Gelman-Rubin (1992) 统计量收敛统计量 {it:Rc} 是用于评估基于多个链的 MCMC 收敛性的诊断工具。 {it:Rc} 衡量链间变异性相对于链内变异性的比例。 如果所有链已收敛，则 {it:Rc} 应接近 1。

{pstd}
Brooks 和 Gelman (1998) 建议，当所有模型参数的 {it:Rc} 小于 1.2 时，可以宣布 MCMC 收敛。 在实践中，通常使用更严格的收敛规则 {it:Rc} < 1.1。 详细信息请参见 {mansection BAYES bayesstatsgrubinRemarksandexamplesGelman--Rubinconvergencediagnostic:{it:Gelman-Rubin 收敛诊断}} 中的 {bf:[BAYES] bayesstats grubin}。

{pstd}
当您使用 {help bayesmh_zh} 或 {help bayes_zh} 模拟多个链，或随后使用 {helpb bayesstats grubin} 检查 MCMC 收敛时，命令在标题中报告所有模型参数（多层模型的随机效应参数除外）中 {it:Rc} 的最大值。 这样，您可以快速评估上述收敛规则是否对所有参数都符合。

{pstd}
使用 {helpb bayesstats grubin}，您可以使用选项 {cmd:sort} 按照收敛统计量 {it:Rc} 的降序列出模型参数。 具有最大 {it:Rc} 值的参数将被优先列出，从而更容易验证它们的收敛性。

{pstd}
对于多层模型，默认情况下不会报告随机效应参数的收敛统计量。 如果这些参数在您的研究中是主要兴趣，您应使用选项 {cmd:showreffects} 或 {opt showreffects(reref)} 来获取所有随机效应参数或其子集 {it:reref} 的收敛统计量。

{pstd}
另请参阅 {mansection BAYES bayesmhRemarksandexamplesConvergencediagnosticsusingmultiplechains:{it:使用多个链的收敛诊断}} 
在 {bf:[BAYES] bayesmh} 中， 
{mansection BAYES bayesstatsgrubinRemarksandexamplesGelman--Rubinconvergencediagnostic:{it:Gelman-Rubin 收敛诊断}} 
在 {bf:[BAYES] bayesstats grubin} 中，以及 
{mansection BAYES bayesmhRemarksandexamplesConvergenceofMCMC:{it:MCMC 的收敛性}} 
在 {bf:[BAYES] bayesmh} 中。

{title:参考文献}

{marker brooks1998}{...}
{phang}
Brooks, S. P., 和 A. Gelman. 1998.
迭代模拟收敛监控的一般方法。
{it:计算与图形统计期刊} 7: 434-455。

{marker gelmanrubin1992}{...}
{phang}
Gelman, A., 和 D. B. Rubin. 1992.
利用多个序列进行迭代模拟推断。
{it:统计科学} 7: 457-472。
{p_end}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <j_bayes_grubin_conv.sthlp>}