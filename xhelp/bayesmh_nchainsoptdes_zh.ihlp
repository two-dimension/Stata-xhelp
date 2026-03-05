
{help bayesmh_nchainsoptdes:English Version}
{hline}
{p 8 10 2}
{opt nchains(#)} 指定要模拟的马尔可夫链的数量。您必须至少指定两个链。默认情况下，只生成一个链。模拟多个链对于收敛诊断和提高参数估计的精确度是有用的。文献中通常推荐四条链，但您可以根据自己的目标指定更多或更少的链。报告的估计结果是基于所有链的。您可以使用 {helpb bayesstats summary} 并结合选项 {cmd:sepchains} 查看每条链的结果。报告的接受率、效率和对数边际似然是对所有链的平均值。您可以使用选项 {cmd:chainsdetail} 查看每条链的这些模拟汇总。另请参见 {mansection BAYES bayesmhRemarksandexamplesConvergencediagnosticsusingmultiplechains:{it:使用多个链的收敛诊断}} 在 {bf:[BAYES] bayesmh} 和 {mansection BAYES bayesstatsgrubinRemarksandexamplesGelman--Rubinconvergencediagnostic:{it:Gelman-Rubin 收敛诊断}} 在 {bf:[BAYES] bayesstats grubin}。