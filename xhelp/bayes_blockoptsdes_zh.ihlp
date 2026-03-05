
{help bayes_blockoptsdes:English Version}
{hline}
{* *! version 1.0.0  10jan2017}{...}
{phang}
{cmd:block(}{help bayesmh##paramref:{it:paramref}}[{cmd:,} {it:blockopts}]{cmd:)}
指定用于阻塞MH算法的一组模型参数。默认情况下，模型参数被分为独立的50个参数块或在选项 {opt blocksize()} 中指定的大小。来自不同方程的回归系数被放置在不同的块中。辅助参数如方差和相关性被作为单独的块进行采样，而有序结果回归的截断点参数被作为一个单独的块进行采样。可以重复使用 {opt block()} 选项以定义多个块。不同类型的模型参数，如标量和矩阵，不能在一个 {opt block()} 中指定。每个块内的参数同时更新，每个参数块按其指定顺序更新；第一个指定的块首先更新，第二个块其次更新，依此类推。有关详细信息，请参见 {mansection BAYES bayesmhRemarksandexamplesImprovingefficiencyoftheMHalgorithm---blockingofparameters:{it:Improving efficiency of the MH algorithm---blocking of parameters}} 在 {bf:[BAYES] bayesmh} 中。

{phang2}
{it:blockopts} 包括 {cmd:gibbs}、{cmd:split}、 
{cmd:scale()}、{cmd:covariance()} 和 {cmd:adaptation()}。

{phang2}
{opt gibbs} 指定使用Gibbs抽样来更新块中的参数。此选项仅适用于特定组合的似然模型和先验分布；有关详细信息，请参见 {mansection BAYES bayesmhMethodsandformulasGibbssamplingforsomelikelihood-priorandprior-hyperpriorconfigurations:{it:Gibbs sampling for some likelihood-prior and prior-hyperprior configurations}} 在 {bf:[BAYES] bayesmh} 中。有关更多信息，请参见 {mansection BAYES bayesmhRemarksandexamplesGibbsandhybridMHsampling:{it:Gibbs and hybrid MH sampling}} 在 {bf:[BAYES] bayesmh} 中。 {cmd:gibbs} 不能与 {cmd:scale()}、{cmd:covariance()} 或 {cmd:adaptation()} 结合使用。

{phang2}
{opt split} 指定在一个块中的所有参数都被视为独立的块。这对于因子变量的水平可能是有用的。

{phang2}
{opt scale(#)} 指定与指定块相对应的初始倍增因子。初始缩放因子被计算为 {it:#}/sqrt{n_p} 用于连续参数，以及 {it:#}/n_p 用于离散参数，其中 n_p 是块中的参数数量。默认值为 {cmd:scale(2.38)}。如果指定，此选项将覆盖与命令中指定的 {cmd:scale()} 选项相关的设置。 {cmd:scale()} 不能与 {cmd:gibbs} 结合使用。

{phang}
{opt covariance(matname)} 指定一个缩放矩阵 {it:matname} 用于计算与指定块相对应的初始提议协方差矩阵。初始提议协方差计算为 {it:rho} x {it:Sigma}，其中 {it:rho} 是一个缩放因子，{it:Sigma} = {it:matname}。默认情况下，{it:Sigma} 是单位矩阵。如果指定，此选项将覆盖与命令中指定的 {opt covariance()} 选项相关的设置。 {opt covariance()} 不能与 {opt gibbs} 结合使用。

{phang}
{cmd:adaptation(tarate())} 和 {cmd:adaptation(tolerance())} 指定块特定的TAR和接受公差。如果指定，它们将覆盖与命令中指定的 {opt adaptation()} 选项相关的设置。 {opt adaptation()} 不能与 {opt gibbs} 结合使用。

{phang}
{opt blocksummary} 显示指定块的摘要。此选项在指定了 {opt block()} 时非常有用。