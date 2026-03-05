
{help bayesmh_adaptoptsdes:English Version}
{hline}
{* *! version 1.0.0  10jan2017}{...}
{phang}
{opt adaptation(adaptopts)} 控制 MCMC 程序的适应性。
适应性发生在每个预设的 MCMC 迭代次数，并且包括调整每个模型参数块的提议尺度因子和提议协方差。适应性用于提高采样效率。
提供的默认值基于理论结果，可能不适用于所有应用。有关适应性及其参数的详细信息，请参见 {mansection BAYES bayesmh RemarksandexamplesAdaptationoftheMHalgorithm:{it:适应性 MH 算法}}  在 {bf:[BAYES] bayesmh} 中。

{pmore}
{it:adaptopts} 为以下选项中的任意一个：

{phang2}
{opt every(#)} 指定每 {it:#} 次迭代尝试适应性。默认值为 {cmd:every(100)}。要确定适应性间隔，您需要考虑模型中指定的最大块大小。
使用 k 个模型参数更新一个块需要估计一个 k x k 的协方差矩阵。如果适应性间隔不足以估计该矩阵的 k(k+1)/2 个元素，则适应性可能不足。

{phang2}
{opt maxiter(#)} 指定最大适应性迭代次数。适应性包括调整每个模型参数块的提议协方差和尺度因子。达到指定容差的 TAR 后，适应性停止。然而，不会执行超过 {it:#} 次的适应步骤。默认值是变量，并计算为 max{25,{cmd:floor(burnin()/adaptation(every()))}}。

{pmore2}
{cmd:maxiter()} 通常选定为不超过 ({cmd:mcmcsize()}+{cmd:burnin()})/{cmd:adaptation(every())}。

{phang2}
{opt miniter(#)} 指定无论是否达到 TAR 都要执行的最小适应性迭代次数。默认值为 {cmd:miniter(5)}。如果指定的 {opt miniter()} 大于 {opt maxiter()}，则 {opt miniter()} 会重置为 {opt maxiter()}。因此，如果您指定 {cmd:maxiter(0)}，则不会执行任何适应性。

{phang2}
{opt alpha(#)} 指定控制 AR 适应性的参数。 {opt alpha()} 应在 [0,1] 范围内。默认值为 {cmd:alpha(0.75)}。

{phang2}
{opt beta(#)} 指定控制提议协方差矩阵适应性的参数。 {opt beta()} 必须在 [0,1] 范围内。 {opt beta()} 越接近零，提议协方差的适应性越低。当 {opt beta()} 为零时，在所有 MCMC 迭代中将使用相同的提议协方差。默认值为 {cmd:beta(0.8)}。

{phang2}
{opt gamma(#)} 指定控制提议协方差矩阵适应率的参数。 {opt gamma()} 必须在 [0,1] 范围内。 {opt gamma()} 值越大，提议协方差的适应性越低。默认值为 {cmd:gamma(0)}。

{phang2}
{opt tarate(#)} 指定所有模型参数块的 TAR；这很少使用。 {opt tarate()} 必须在 (0,1) 范围内。默认 AR 为连续多个参数块的 0.234，对于具有一个连续参数的块为 0.44，对于离散参数块为 1/{it:n_maxlev}，其中 {it:n_maxlev} 是块中离散参数的最大层级数。

{phang2}
{opt tolerance(#)} 指定基于 TAR 的适应性容忍标准。 {opt tolerance()} 应在 (0,1) 范围内。
一旦当前 AR 与 TAR 之间的绝对差异小于 {opt tolerance()}，适应性停止。默认值为 {cmd:tolerance(0.01)}。

{phang}
{opt scale(#)} 指定所有块的尺度因子的初始乘数。初始尺度因子计算为 {it:#}/sqrt{n_p} 针对连续参数和 {it:#}/n_p 针对离散参数，其中 n_p 是块中的参数数量。默认值为 {cmd:scale(2.38)}。

{phang}
{opt covariance(cov)} 指定一个尺度矩阵 {it:cov} 用于计算初始提议协方差矩阵。初始提议协方差计算为 rho x Sigma，其中 rho 是尺度因子，Sigma = {it:matname}。默认情况下，Sigma 为单位矩阵。Sigma 的部分指定也被允许。 {it:cov} 的行和列应以某些或所有模型参数命名。根据某些理论结果，最佳提议协方差是模型参数的后验协方差矩阵，这通常是未知的。