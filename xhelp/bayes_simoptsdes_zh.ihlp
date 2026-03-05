
{help bayes_simoptsdes:English Version}
{hline}
{* *! version 1.0.0  25apr2019}{...}
{phang}
{opt mcmcsize(#)} 指定目标 MCMC 样本大小。默认的 MCMC 样本大小为 {cmd:mcmcsize(10000)}。MH 算法的总迭代次数等于烧入迭代次数与 MCMC 样本大小的总和（如果没有稀疏化）。如果存在稀疏化，总的 MCMC 迭代次数计算为 {cmd:burnin()} + ({cmd:mcmcsize()} - 1) x {cmd:thinning()} + 1。MH 算法的计算时间与总迭代次数成正比。MCMC 样本大小决定后验汇总的精度，这在不同模型参数之间可能会有所不同，并且将依赖于马尔可夫链的效率。另见 {mansection BAYES bayesmhRemarksandexamplesBurn-inperiodandMCMCsamplesize:{it:烧入期和 MCMC 样本大小}} 在 {bf:[BAYES] bayesmh} 中。

{phang}
{opt burnin(#)} 指定 MCMC 的烧入期迭代次数。烧入期间模拟的参数值仅用于适应目的，且不用于估计。默认值为 {cmd:burnin(2500)}。通常，烧入期的选择应与适应期相同或更长。另见 {mansection BAYES bayesmhRemarksandexamplesBurn-inperiodandMCMCsamplesize:{it:烧入期和 MCMC 样本大小}} 在 {bf:[BAYES] bayes} 和 {mansection BAYES bayesmhRemarksandexamplesConvergenceofMCMC:{it:MCMC 收敛}} 在 {bf:[BAYES] bayes} 中。

{phang}
{opt thinning(#)} 指定稀疏化间隔。最终 MCMC 样本中仅保存每 (1+k x {it:#}) 次迭代（k = 0, 1, 2, ...）的模拟值；所有其他模拟值将被丢弃。默认值为 {cmd:thinning(1)}；即保存所有模拟值。通常使用大于 1 的稀疏化来降低模拟 MCMC 样本的自相关性。

{phang}
{opt rseed(#)} 设置随机数种子。此选项可用于重现结果。 {opt rseed(#)} 相当于在调用 {cmd:bayes} 前输入 {cmd:set} {cmd:seed} {it:#}; 参见 {manhelp set_seed R:set seed} 和 {mansection BAYES bayesmhRemarksandexamplesReproducingresults:{it:重现结果}} 在 {bf:[BAYES] bayes} 中。

{phang}
{opth exclude:(bayesmh##paramref:paramref)} 指定应排除哪些模型参数以形成最终 MCMC 样本。这些模型参数将不会出现在估计表中，对这些参数的后期估计特征及对数边际似然将不可用。此选项对于抑制干扰模型参数非常有用。例如，如果你有一个具有多个级别的因子预测变量，但你只对与其级别相关的系数的变异性感兴趣，而不是它们的实际值，则你可能希望将此因子变量从模拟结果中排除。如果你只是想从输出中省略某些模型参数，请参见 {helpb bayes##noshow():noshow()} 选项。