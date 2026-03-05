
{help bayesmh_blockoptsdes:English Version}
{hline}
{* *! version 1.0.1  12mar2017}{...}
{phang}
{cmd:block(}{help bayesmh##paramref:{it:paramref}}[{cmd:,} {it:blockopts}]{cmd:)}
指定用于阻塞 MH 算法的一组模型参数。默认情况下，所有除矩阵外的参数都被视为一个块，每个矩阵参数被视为一个单独的块。您可以使用 {opt block()} 选项将标量参数分隔到多个块中。从技术上讲，您也可以使用 {opt block()} 将矩阵参数组合在一个块中，但这不推荐。{opt block()} 选项可以重复以定义多个块。不同类型的模型参数，如标量和矩阵，不得在一个 {opt block()} 中指定。一个块内的参数是同时更新的，每个参数块按其指定的顺序更新；第一个指定的块首先更新，第二个块其次更新，以此类推。请参阅
{mansection BAYES bayesmhRemarksandexamplesImprovingefficiencyoftheMHalgorithm---blockingofparameters:{it:改进 MH 算法的效率---参数阻塞}}
在 {bf:[BAYES] bayesmh} 中。

{phang2}
{it:blockopts} 包括 {cmd:gibbs}、{cmd:split}、{cmd:reffects}、{cmd:scale()}、{cmd:covariance()} 和 {cmd:adaptation()}。

{phang2}
{opt gibbs} 指定使用 gibbs 采样来更新块中的参数。此选项仅适用于特定组合的似然模型和先验分布；请参阅 {mansection BAYES bayesmhMethodsandformulasGibbssamplingforsomelikelihood-priorandprior-hyperpriorconfigurations:{it:某些似然-先验和先验-超先验配置的吉布斯采样}}
在 {bf:[BAYES] bayesmh} 中。有关更多信息，请参阅
{mansection BAYES bayesmhRemarksandexamplesGibbsandhybridMHsampling:{it:吉布斯和混合 MH 采样}}
在 {bf:[BAYES] bayesmh} 中。{cmd:gibbs} 不能与 {cmd:reffects}、{cmd:scale()}、{cmd:covariance()} 或 {cmd:adaptation()} 组合使用。

{phang2}
{opt split} 指定将块中的所有参数视为单独的块。这对于因子变量的水平可能很有用。

{phang2}
{opt reffects} 指定在似然规格中包含的因子变量的水平相关的参数被视为随机效应参数。随机效应参数必须包含在一个先验声明中，并假设在给定所有其他模型参数的情况下在分组变量的水平之间条件独立。
{opt reffects} 要求参数被指定为
{cmd:{c -(}}{it:depvar}{cmd::i.}{it:varname}{cmd:{c )-}},
其中 {cmd:i.}{it:varname} 是在似然规格中的相应因子变量，并且不能与 {cmd:block()}'s 的子选项 {cmd:gibbs} 和 {cmd:split} 组合使用。此选项对于拟合分层或多层模型很有用。有关详细信息，请参阅 {mansection BAYES bayesmhRemarksandexamplesex25:例子 25}
在 {bf:[BAYES] bayesmh} 中。

{phang2}
{opt scale(#)} 指定与所指定块相关的初始缩放因子的乘数。初始缩放因子的计算为 {it:#}/sqrt{n_p}，用于连续参数，以及 {it:#}/n_p，用于离散参数，其中 n_p 是块中的参数数量。默认值为 {cmd:scale(2.38)}。如果指定，此选项会覆盖命令中指定的 {cmd:scale()} 选项的相应设置。{cmd:scale()} 不能与 {cmd:gibbs} 组合使用。

{phang2}
{opt covariance(matname)} 指定一个缩放矩阵 {it:matname}，用于计算与所指定块相关的初始提案协方差矩阵。初始提案协方差的计算为 {it:rho} x {it:Sigma}，其中 {it:rho} 是缩放因子，{it:Sigma} = {it:matname}。默认情况下，{it:Sigma} 是单位矩阵。如果指定，此选项会覆盖命令中指定的 {opt covariance()} 选项的相应设置。{opt covariance()} 不能与 {opt gibbs} 组合使用。

{phang2}
{cmd:adaptation(tarate())} 和 {cmd:adaptation(tolerance())} 指定块特定的 TAR 和接受容忍度。如果指定，它们会覆盖命令中指定的 {opt adaptation()} 选项的相应设置。
{opt adaptation()} 不能与 {opt gibbs} 组合使用。

{phang}
{opt blocksummary} 显示指定块的摘要。此选项在指定 {opt block()} 时非常有用。