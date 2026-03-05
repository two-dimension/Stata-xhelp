
{smcl}
{* *! version 1.0.3  19oct2017}{...}
{title:500个滞后后的高自相关性}

{help j_bayesmh_highcorr:English Version}
{hline}
{pstd}
您使用 {help bayesmh_zh} 或 {help bayes_zh} 拟合了一个贝叶斯模型，并在输出表底部收到了一条通知，指出在 500 个滞后后存在高自相关性。这意味着什么，这是否是一个问题？

{pstd}
在 500 个滞后后的高自相关性意味着， MCMC 估计值之间的相关性仍然高于 0.01，这个值由选项 {cmd:corrtol()} 确定。 MCMC 样本中的自相关性是任何 MCMC 采样算法的已知特征，但对于表现良好的模型和高效的采样算法，随着滞后的增加，自相关性应当减小。换句话说，MCMC 估计值在距离较远时应当变得不那么相关。 当自相关性维持在高水平，且随着滞后增加并未变得可以忽略不计时，例如，在 500 个滞后之后，您应仔细检查您的模型。

{pstd}
MCMC 估计值的高自相关性是 MCMC 样本低效率或混合缓慢的指示。这可能是由于不收敛或模型中存在高度相关的参数。缺乏收敛是您需要解决的问题。您可以通过使用 {help bayesgraph_zh:bayesgraph diagnostics} 进行可视化检查收敛性；有关详细信息，请参阅 {mansection BAYES bayesmhRemarksandexamplesConvergenceofMCMC:{it:MCMC 的收敛性}} 在 {manlink BAYES bayesmh} 中。

{pstd}
一旦建立了收敛性，高自相关性的存在通常意味着模型中某些参数估计的精度较低。根据参数的大小和您的研究目标，您可能对获得的精度感到满意，在这种情况下您可以忽略该通知。如果精度水平不可接受，您可以尝试减少模型中的自相关性。我们建议即使您对精度水平感到满意，也尝试这样做。

{pstd}
为了减少自相关性，您首先必须识别具有高自相关性的参数。这些参数也将具有低效率，因此有效样本量（ESS）低。您可以使用 {helpb bayesstats ess} 获取所有模型参数的效率和 ESS。对于值最低的参数，您可以使用 {help bayesgraph_zh:bayesgraph matrix} 检查它们之间的相关性。

{pstd}
一旦识别出具有高自相关性的参数，请考虑它们在模型中是如何指定的。您使用的先验分布是否使所有模型参数都是可识别的？例如，如果您使用的是非信息性先验，能否仅使用数据可靠地估计所有参数？如果不能，您应简化模型或考虑指定更信息性的先验。您能否重新参数化模型以改善 MCMC 采样器的混合性？例如，在双层模型中，常数项可以视为其自身的参数，具有围绕零的随机效应先验分布，或者作为一个超参数，具有围绕常数项的随机效应先验分布；请参见 {mansection BAYES bayesmhRemarksandexamplesTwo-levelrandom-interceptmodelorpanel-datamodel:{it:双层随机截距模型或面板数据模型}} 在 {manlink BAYES bayesmh} 中。参数的分组 ({mansection BAYES bayesmhRemarksandexamplesImprovingefficiencyoftheMHalgorithm---blockingofparameters:{it:改善 MH 算法效率 -- 参数分组}} 在 {manlink BAYES bayesmh}) 和使用其他更高效的采样器 ({mansection BAYES bayesmhRemarksandexamplesGibbsandhybridMHsampling:{it:Gibbs 和混合 MH 采样}} 在 {manlink BAYES bayesmh}) 可以帮助降低自相关性。最后，您可以考虑通过使用选项 {cmd:thinning()} 进行子采样或稀疏链来减少自相关性，但这通常会大幅增加模拟时间。

{pstd}
如果您使用非信息性先验拟合多层模型，您很可能会遇到某些参数估计的高自相关性。与频率模型不同，贝叶斯模型并不会排除个体随机效应，而是与其他模型参数一起估计这些效应。这大大增加了模型的维度，并使得以高精度估计所有参数变得困难。例如，方差成分的估计通常具有较低的精度。此外，{help bayes_glossary##fixed_effects_parameters:固定效应参数} 通常与相应的 {help bayes_glossary##random_effects_parameters:随机效应参数}（例如常数项和随机截距）相关。如前所述，自相关性的存在并不一定意味着您的所有结果都是不可靠的。如果高自相关性涉及一些个体随机效应的估计，但您主要关注回归系数，而这些系数具有低自相关性，因此高精度，那么随机效应估计中存在的高自相关性可能与您关系不大。

{pstd}
总之，MCMC 样本中高自相关性的存在可能是一个问题，也可能不是。只要模型收敛，高自相关性对参数估计精度的影响将取决于数据、模型和您的研究目标。我们确实建议您尝试遵循上述步骤来减少自相关性。有关更多信息，请参见 {mansection BAYES bayesmhRemarksandexamplesSpecifyingMCMCsamplingprocedure:{it:指定 MCMC 采样过程}} 在 {manlink BAYES bayesmh} 中。
{p_end}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <j_bayesmh_highcorr.sthlp>}