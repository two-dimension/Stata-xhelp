{smcl}
{* *! version 1.0.11  14may2019}{...}
{vieweralsosee "[BAYES] 术语表" "mansection BAYES Glossary"}{...}
{viewerjumpto "描述" "bayes_glossary_zh##description"}{...}
{viewerjumpto "参考" "bayes_glossary_zh##reference"}
{help bayes_glossary:English Version}
{hline}{...}
{p2colset 1 21 23 2}{...}
{p2col:{bf:[BAYES] 术语表} {hline 2}}术语表{p_end}
{p2col:}({mansection BAYES Glossary:查看完整PDF手册条目}){p_end}
{p2colreset}{...}


{marker description}{...}
{title:描述}

{marker a_posteriori}{...}
{phang}
{bf:后验}。
在贝叶斯分析的上下文中，我们用后验来表示“在样本观察之后”。例如，后验信息是任何在观测数据样本后获得的信息。参见
{it:{help bayes_glossary##posterior_distribution:后验分布, 后验}}。

{marker a_priori}{...}
{phang}
{bf:先验}。
在贝叶斯分析的上下文中，我们用先验来表示“在样本观察之前”。例如，先验信息是任何在观测数据样本之前获得的信息。在贝叶斯模型中，关于{help bayes_glossary##model_parameter:模型参数}的先验信息由{help bayes_glossary##prior_distribution:先验分布}指定。

{marker acceptance_rate}{...}
{phang}
{bf:接受率}。
在MH算法的上下文中，接受率是被接受的提议样本的比例。最佳接受率依赖于{help bayes_glossary##stationary_distribution:目标分布}的特性，并且通常是不确定的。然而，如果目标分布为正态分布，最佳接受率在单变量分布时为0.44，在多变量分布时为0.234。

{marker adaptation}{...}
{phang}
{bf:自适应}。
在MH算法的上下文中，自适应指的是调整或适应提议分布以优化MCMC采样的过程。通常，自适应是在MCMC采样过程中定期进行的。{cmd:bayesmh}命令在指定的每{it:#}次迭代中执行自适应，如选项{cmd:adaptation(every(}{it:#}{cmd:))}中所指定，最多可进行{cmd:adaptation(maxiter())}次迭代。在连续自适应状态下，自适应在整个MCMC采样过程中持续进行。参见{manhelp bayesmh BAYES}。

{marker adaptation_period}{...}
{phang}
{bf:适应期}。
适应期包括所有MH {help bayes_glossary##adaptive_iteration:自适应迭代}。它等于由{cmd:adaptation(every())}指定的适应间隔的长度，乘以最大适应次数{cmd:adaptation(maxiter())}。

{marker adaptive_iteration}{...}
{phang}
{bf:自适应迭代}。
在自适应MH算法中，自适应迭代是执行{help bayes_glossary##adaptation:自适应}的迭代。

{marker AIC}{...}
{phang}
{bf:赤池信息量准则，AIC}。
赤池信息量准则（AIC）是基于信息的模型选择准则。其公式为 -2 × 对数似然 + 2k，其中k是参数数量。AIC通过对模型参数的数量进行惩罚来偏向于较简单的模型。然而，它不考虑样本大小。因此，随着样本大小的增加，AIC的惩罚会减小，反之亦然。

{marker batch_means}{...}
{phang}
{bf:批量均值}。
批量均值是从等大小的样本值批次中获得的均值。批量均值为估计MCMC标准误差提供了一种替代方法（{help bayes_glossary##MCSE:MCSE}）。批量大小通常选择为最小化不同批次均值之间的相关性。

{marker Bayes_factor}{...}
{phang}
{bf:贝叶斯因子}。
贝叶斯因子由两个模型M_1和M_2的{help bayes_glossary##marginal_likelihood:边际似然}的比率给出。这是进行贝叶斯模型比较的一个广泛使用的标准。贝叶斯因子用于计算模型M_1与M_2的后验优势比，

            P(M_1|y)/P(M_2|y) = P(y|M_1)/P(y|M_2) P(M_1)/P(M_2)

{pmore}
其中P(M_i|y)是模型M_i的后验概率，P(M_i)是模型M_i的先验概率。当这两个模型同样可能，也就是说，当P(M_1) = P(M_2)时，贝叶斯因子等于两个模型的后验优势比。

{marker Bayes_theorem}{...}
{phang}
{bf:贝叶斯定理}。
贝叶斯定理是一个用于关联条件概率陈述的正式方法。对于两个随机事件X和Y，贝叶斯定理表示为

            P(X|Y) ∝ P(Y|X) P(X)

{pmore}
也就是说，X在Y给定的条件下的概率与X的概率以及X在Y给定条件下的概率成比例。在贝叶斯分析中，贝叶斯定理用于结合关于模型参数的先验信息和从观测数据中获得的证据，以形成{help bayes_glossary##posterior_distribution:后验分布}。

{marker Bayesian_analysis}{...}
{phang}
{bf:贝叶斯分析}。
贝叶斯分析是一种统计方法论，它将模型参数视为随机量，并通过将关于参数的先验知识与观察数据样本的证据结合来估计它们的{help bayes_glossary##posterior_distribution:后验分布}。关于参数的先验知识由{help bayes_glossary##prior_distribution:先验分布}描述，观察数据的证据通过似然模型纳入。使用{help bayes_glossary##Bayes_theorem:贝叶斯定理}，将先验分布和似然模型结合形成模型参数的后验分布。然后后验分布用于参数推断、假设检验和预测。

{marker Bayesian_estimation}{...}
{phang}
{bf:贝叶斯估计}。
贝叶斯估计包括拟合贝叶斯模型并基于最终的后验分布估计其参数。可以使用方便的{help bayes_zh}前缀或更一般的{help bayesmh_zh}命令在Stata中进行贝叶斯估计。有关详细信息，请参见{manhelp bayesian_estimation BAYES:贝叶斯估计}。

{marker Bayesian_estimation_results}{...}
{phang}
{bf:贝叶斯估计结果}。
在执行{help bayes_zh}前缀或{help bayesmh_zh}命令后获得的估计结果。

{marker Bayesian_hypothesis_testing}{...}
{phang}
{bf:贝叶斯假设检验}。
贝叶斯假设检验计算假设在观察数据条件下的概率。与频率派假设检验相反，贝叶斯假设检验通过使用贝叶斯定理计算假设H的实际概率，

            P(H|y) ∝ P(y|H) P(H)

{pmore}
其中y是观察到的数据，P(y|H)是给定H的y的边际似然，P(H)是H的先验概率。通过简单比较P(H_1|y)与P(H_2|y)可以比较两个不同的假设H_1和H_2。

{marker BIC}{...}
{phang}
{bf:贝叶斯信息准则，BIC}。
贝叶斯信息准则（BIC），也称为Schwarz准则，是用于经典统计中的模型选择的一种基于信息的准则。其公式为 -0.5 × 对数似然 + k × ln n，其中k是参数数量，n是样本大小。BIC偏向于较为简单的模型，并且在复杂性上比{help bayes_glossary##AIC:AIC}更加保守。

{marker model_checking}{...}
{phang}
{bf:贝叶斯模型检验}。
在贝叶斯统计中，模型检验指的是在研究问题和观察数据的背景下，测试似然和先验模型的适用性。简单的合理性检验可能包括验证后验推断是否在问题的上下文中产生合理的结果。更深层次的检查可能包括分析贝叶斯推断对似然和先验分布规格变化的敏感性。参见{help bayes_glossary##posterior_predictive_checking:{it:后验预测检验}}。

{marker Bayesian_predictions}{...}
{phang}
{bf:贝叶斯预测}。
贝叶斯预测是从{help bayes_glossary##posterior_predictive_distribution:后验预测分布}中样本的结果变量及其函数，以及可选的模型参数的样本。贝叶斯预测的示例包括{help bayes_glossary##replicated_data:重复数据}、样本外预测和{help bayes_glossary##simulated_outcome:模拟结果}的检验统计量。

{marker blocking}{...}
{phang}
{bf:分块}。
在MH算法的上下文中，分块指的是将模型参数分成不同的子集或块以独立于彼此进行采样的过程。MH算法为每个块生成提议并依次应用接受-拒绝规则。建议将相关参数保持在同一块中。将较少相关或独立的模型参数分开到不同的块中可能会改善MH算法的{help bayes_glossary##mixing:混合}。

{marker burnin_period}{...}
{phang}
{bf:烧入期}。
烧入期是指一个{help bayes_glossary##MCMC:MCMC}序列达到平稳状态所需的迭代次数。

{phang}
{bf:中心后验区间}。参见
{it:{help bayes_glossary##equal_tailed_cri:等尾可信区间}}。

{phang}
{bf:条件共轭}。参见
{it:{help bayes_glossary##semiconjugate_prior:半共轭先验}}。

{marker conjugate_prior}{...}
{phang}
{bf:共轭先验}。
对于一类似然分布，如果先验和后验分布属于同一类分布，则该先验分布被称为共轭先验。例如，伽马分布是泊松似然的共轭先验。共轭可以提供从后验分布采样的高效方法，并用于{help bayes_glossary##Gibbs_sampling:Gibbs采样}。

{marker continuous_parameters}{...}
{phang}
{bf:连续参数}。
连续参数是具有连续先验分布的参数。

{marker credible_interval}{...}
{phang}
{bf:可信区间}。
在贝叶斯分析中，标量模型参数的可信区间是该参数的边际后验分布域中的一个区间。实践中通常使用两种类型的可信区间：{help bayes_glossary##equal_tailed_cri:等尾可信区间}和{help bayes_glossary##HPD_cri:HPD可信区间}。

{marker credible_level}{...}
{phang}
{bf:可信水平}。
可信水平是在贝叶斯分析中用于计算{help bayes_glossary##credible_interval:可信区间}的0%到100%之间的概率水平。例如，标量参数的95%可信区间是该参数属于该区间的概率为95%的区间。

{marker cusum_plot}{...}
{phang}
{bf:累计和图，CUSUM图}。
MCMC样本的累计和图是样本值与其总体均值之间差异的累计和与迭代次数的图。累计和图是检测MCMC样本中早期漂移的有用图形摘要。

{marker DIC}{...}
{phang}
{bf:偏差信息准则，DIC}。
偏差信息准则（DIC）是一种用于贝叶斯模型选择的基于信息的准则。它是AIC的类似物，其公式为D(overline theta) + 2 × p_D，其中D(overline theta)是在样本均值处的偏差，p_D是有效复杂性，相当于模型中的参数数量。较小的DIC被优先考虑。

{marker diminishing_adaptation}{...}
{phang}
{bf:递减自适应}。
自适应算法的递减自适应是指适应量随着MCMC链的大小而减少的自适应类型。

{marker discrete_parameters}{...}
{phang}
{bf:离散参数}。
离散参数是具有离散先验分布的参数。

{marker ESS}{...}
{phang}
{bf:有效样本量，ESS}。
有效样本量（ESS）是调整样本中的自相关的MCMC样本大小T。它代表MCMC样本中的独立观察数量。在计算MCSE时使用ESS而不是T。较小的ESS相对于T表示高自相关，因此链的{help bayes_glossary##mixing:混合}较差。

{marker efficiency}{...}
{phang}
{bf:效率}。
在MCMC的上下文中，效率是用于评估MCMC过程的混合质量的术语。高效的MCMC算法能够在更短的时间内（使用更少的迭代）探索后验域。效率通常通过样本自相关和有效样本大小量化。生成低自相关和高ESS样本的MCMC过程被认为更有效。

{marker equal_tailed_cri}{...}
{phang}
{bf:等尾可信区间}。
等尾可信区间是以这样的方式定义的可信区间，使得边际后验分布的两个尾部具有相同的概率。100 × (1-alpha)%的等尾可信区间由边际后验分布的alpha/2分位数和(1-alpha)/2分位数定义。

{marker feasible_initial_value}{...}
{phang}
{bf:可行初始值}。
当一个初始值向量对应于具有正后验概率的状态时，该初始值向量被称为可行的。

{marker fixed_effects}{...}
{phang}
{bf:固定效应}。参见
{help bayes_glossary##fixed_effects_parameters:{it:固定效应参数}}。

{marker fixed_effects_parameters}{...}
{phang}
{bf:固定效应参数}。
在贝叶斯上下文中，“固定效应”或“固定效应参数”这个术语是一个误称，因为所有模型参数本质上都是随机的。我们在贝叶斯多层模型的背景下使用这个术语来指代回归模型参数，并将其与{help bayes_glossary##random_effects_parameters:随机效应参数}区分开来。您可以认为固定效应参数是用于建模响应与感兴趣变量总体平均或边际关系的参数。

{marker frequentist_analysis}{...}
{phang}
{bf:频率主义分析}。
频率主义分析是一种统计分析形式，其中模型参数被认为是未知但固定的常数，观察到的数据被视为可重复的随机样本。推断是基于数据的采样分布。

{marker full_conditionals}{...}
{phang}
{bf:全条件分布}。
全条件分布是条件于联合概率模型中所有其他随机变量的随机变量的概率分布。全条件分布用于{help bayes_glossary##Gibbs_sampling:Gibbs采样}。

{phang}
{bf:完整Gibbs采样}。参见{it:{help bayes_glossary##Gibbs_sampling:Gibbs采样，Gibbs采样器}}。

{marker Gelman_Rubin_convergence_diagnostic}{...}
{phang}
{bf:Gelman-Rubin收敛诊断，Gelman-Rubin收敛统计量}。
Gelman-Rubin收敛诊断通过分析多个马尔可夫链之间的差异来评估MCMC的收敛性。通过比较每个模型参数的链间和链内方差估计值来评估收敛性。这样的方差之间的较大差异表明不收敛。参见{manhelp bayesstats_grubin BAYES:bayesstats grubin}。

{marker Gibbs_sampling}{...}
{phang}
{bf:Gibbs采样，Gibbs采样器}。
Gibbs采样是一种MCMC方法，其中来自联合概率模型的每个随机变量根据其{help bayes_glossary##full_conditionals:全条件分布}进行采样。

{marker HPD_cri}{...}
{phang}
{bf:最高后验密度可信区间，HPD可信区间}。最高后验密度（HPD）可信区间是一种具有最高边际后验密度的可信区间。HPD区间在所有其他可信区间中具有最小的宽度。在某些多峰边际分布中，HPD可能不存在。参见{it:{help bayes_glossary##HPD_region:最高后验密度区间，HPD区域}}。

{marker HPD_region}{...}
{phang}
{bf:最高后验密度区间，HPD区域}。
模型参数的最高后验密度（HPD）区域在所有域区域中具有最高的边际后验概率。与{help bayes_glossary##HPD_cri:HPD可信区间}不同，HPD区域总是存在。

{marker hybrid_MH_sampling}{...}
{phang}
{bf:混合MH采样，混合MH采样器}。
混合MH采样器是一种MCMC方法，其中一些参数块使用MH算法更新，而其他块使用Gibbs采样更新。

{marker hyperparameter}{...}
{phang}
{bf:超参数}。
在贝叶斯分析中，超参数是先验分布的参数，与{help bayes_glossary##model_parameter:模型参数}相对。

{marker hyperprior}{...}
{phang}
{bf:超先验}。
在贝叶斯分析中，超先验是超参数的先验分布。参见{it:{help bayes_glossary##hyperparameter:超参数}}。

{marker improper_prior}{...}
{phang}
{bf:不当先验}。
如果先验不能集成到一个有限的数值上，则该先验被称为不当。不受限区间上的均匀分布是不当的。不当先验仍然可以产生适当的后验分布。然而，在使用不当先验时，必须确保生成的后验分布是适当的，以便贝叶斯推断有效。

{marker independent_aposteriori}{...}
{phang}
{bf:后验独立}。
如果它们的边际后验分布是独立的，则参数被视为后验独立；也就是说，它们的联合后验分布是其各自的边际后验分布的乘积。

{marker independent_apriori}{...}
{phang}
{bf:先验独立}。
如果它们的先验分布是独立的，则参数被视为先验独立；也就是说，它们的联合先验分布是其各自的边际先验分布的乘积。

{marker informative_prior}{...}
{phang}
{bf:信息先验}。
信息先验是一种对后验分布有显著影响的先验分布。

{phang}
{bf:样本内预测}。参见{help bayes_glossary##replicated_outcome:{it:重复结果}}。

{marker interval_hypothesis_testing}{...}
{phang}
{bf:区间假设检验}。
区间假设检验执行{help bayes_glossary##interval_test:区间假设检验}以测试模型参数和模型参数函数。

{marker interval_test}{...}
{phang}
{bf:区间检验}。
在贝叶斯分析中，对标量模型参数应用的区间检验计算该参数包含在指定区间内的边际后验概率。

{marker Jeffreys_prior}{...}
{phang}
{bf:杰弗瑞斯先验}。
杰弗瑞斯先验的模型参数向量θ的比例是其Fisher信息矩阵I(θ)的行列式的平方根。杰弗瑞斯先验是局部均匀的，并且根据定义与似然函数一致。杰弗瑞斯先验被视为对后验分布影响最小的非信息先验。

{marker marginal_distribution}{...}
{phang}
{bf:边际分布}。
在贝叶斯上下文中，边际分布是指在联合分布中对参数进行积分后的数据分布。

{marker marginal_likelihood}{...}
{phang}
{bf:边际似然}。
在贝叶斯模型比较的上下文中，给定模型M的数据y的边际似然P(y|M)=m(y)=∫P(y|θ,M)P(θ|M)dθ。另见
{it:{help bayes_glossary##Bayes_factor:贝叶斯因子}}。

{marker marginal_posterior_distribution}{...}
{phang}
{bf:边际后验分布}。
在贝叶斯背景下，边际后验分布是从联合后验分布中积分出去所有参数后得到的分布。

{marker Markov_chain}{...}
{phang}
{bf:马尔可夫链}。
马尔可夫链是一种随机过程，生成随机向量（或状态）序列，并满足马尔可夫性质：下一个状态仅依赖于当前状态，而不是任何以前的状态。{help bayes_glossary##MCMC:MCMC}是模拟马尔可夫链的最常见方法。

{marker matrix_model_parameter}{...}
{phang}
{bf:矩阵模型参数}。
矩阵模型参数是任何{help bayes_glossary##model_parameter:模型参数}，其为矩阵。然而，矩阵元素被视为{help bayes_glossary##scalar_model_parameter:标量模型参数}。

{pmore}
矩阵模型参数在{cmd:bayesmh}命令中定义并称为{cmd:{c -(}}{it:param}{cmd:,}{cmdab:m:atrix}{cmd:{c )-}}或{cmd:{c -(}}{it:eqname}{cmd::}{it:param}{cmd:,}{cmdab:m:atrix}{cmd:{c )-}}，其中方程名称为{it:eqname}。例如，{cmd:{Sigma, matrix}}和{cmd:{Scale:Omega, matrix}}是矩阵模型参数。单个矩阵元素在{cmd:bayesmh}命令中无法单独引用，但可以在接受参数的后推断命令中引用。例如，要引用定义为2 x 2矩阵的单个元素，例如{cmd:{Sigma_1_1}}、{cmd:{Sigma_2_1}}、{cmd:{Sigma_1_2}}、{cmd:{Sigma_2_2}}以及{cmd:{Scale:Omega_1_1}}、{cmd:{Scale:Omega_2_1}}、{cmd:{Scale:Omega_1_2}}、{cmd:{Scale:Omega_2_2}}。参见{manhelp bayesmh BAYES}。

{phang}
{bf:矩阵参数}。参见
{it:{help bayes_glossary##matrix_model_parameter:矩阵模型参数}}。

{marker MCMC}{...}
{phang}
{bf:MCMC，马尔可夫链蒙特卡洛}。
MCMC是一类基于模拟的方法，用于从概率分布中生成样本。任何MCMC算法模拟一个{help bayes_glossary##Markov_chain:马尔可夫链}，其目标分布是其平稳或平衡分布。MCMC算法的精度随着迭代次数的增加而增加。然而，缺乏停止规则和收敛规则使得难以确定运行MCMC多长时间。收敛于目标分布所需的时间在预设误差范围内称为混合时间。更好的MCMC算法具有更快的混合时间。一些流行的MCMC算法包括随机游走Metropolis算法、{help bayes_glossary##MH_sampling:Metropolis-Hastings}和{help bayes_glossary##Gibbs_sampling:Gibbs采样}。

{marker MCMC_replicates}{...}
{phang}
{bf:MCMC重复值}。
一个{help bayes_glossary##MCMC_sample:MCMC样本}的{help bayes_glossary##simulated_outcome:模拟结果}。

{marker MCMC_sample}{...}
{phang}
{bf:MCMC样本}。
MCMC样本是通过{help bayes_glossary##MCMC_sampling:MCMC采样}获得的。一个MCMC样本逼近一个目标分布并被用于总结该分布。

{marker MCMC_sample_size}{...}
{phang}
{bf:MCMC样本大小}。
MCMC样本大小是{help bayes_glossary##MCMC_sample:MCMC样本}的大小。在{cmd:bayesmh}的选项{cmd:mcmcsize()}中指定；请参见{manhelp bayesmh BAYES}。

{marker MCMC_sampling}{...}
{phang}
{bf:MCMC采样，MCMC采样器}。
MCMC采样是一种生成来自目标概率分布样本的MCMC算法。

{marker MCSE}{...}
{phang}
{bf:MCMC标准误差，MCSE}。
MCSE是后验均值估计的标准误差。它定义为标准差除以{help bayes_glossary##ESS:ESS}的平方根。MCSE是频率统计中的标准误差的对应物，用于衡量模拟MCMC样本的准确性。

{marker MH_sampling}{...}
{phang}
{bf:Metropolis-Hastings (MH)采样，MH采样器}。
Metropolis-Hastings (MH)采样器是一种用于模拟概率分布的MCMC方法。根据此方法，在马尔可夫链的每一步，从当前状态根据预先指定的提议分布生成一个新的提议状态。基于当前状态和新状态，计算一个接受概率，然后用来接受或拒绝所提议的状态。MH采样的重要特征是{help bayes_glossary##acceptance_rate:接受率}和{help bayes_glossary##mixing:混合}时间。MH算法非常通用，可以应用于任意目标分布。然而，其效率受到限制，尤其在目标分布的维数增加时，混合时间增加。{help bayes_glossary##Gibbs_sampling:Gibbs采样}可以在可用时提供比MH采样更高效的采样。

{marker mixing}{...}
{phang}
{bf:马尔可夫链的混合}。
混合指的是马尔可夫链遍历参数空间的速率。它是马尔可夫链的一个特性，与收敛不同。较差的混合指示链以较慢的速率探索平稳分布，并且需要更多的迭代才能在给定精度下提供推断。较差（缓慢）混合通常是由于模型参数之间的高相关性或模型规格定义不明确造成的。

{marker model_hypothesis_testing}{...}
{phang}
{bf:模型假设检验}。
模型假设检验通过计算{help bayes_glossary##model_posterior_probability:模型后验概率}来测试关于模型的假设。

{marker model_parameter}{...}
{phang}
{bf:模型参数}。
模型参数是贝叶斯模型中任何（随机）参数。模型参数可以是{help bayes_glossary##scalar_model_parameter:标量}或{help bayes_glossary##matrix_model_parameter:矩阵}。在{cmd:bayesmh}中定义的模型参数示例包括{cmd:{mu}}、{cmd:{scale:s}}、{cmd:{Sigma,matrix}}和{cmd:{Scale:Omega,matrix}}。请参见{help bayesmh_zh}，特别是
{it:{mansection BAYES bayesmhRemarksandexamplesDeclaringmodelparameters:声明模型参数}}和
{it:{mansection BAYES bayesmhRemarksandexamplesReferringtomodelparameters:引用模型参数}}。另见{it:{mansection BAYES BayesianpostestimationRemarksandexamplesDifferentwaysofspecifyingmodelparameters:不同的模型参数指定方式}}在{bf:[BAYES] 贝叶斯后检验}中。

{phang}
{marker model_posterior_probability}{...}
{bf:模型后验概率}。
模型后验概率是给定观察数据y条件下模型M的概率，

            P(M|y)=P(M)P(y|M)=P(M)m(y)

{pmore}
其中P(M)是模型M的先验概率，m(y)是给定模型M的{help bayes_glossary##marginal_likelihood:边际似然}。

{marker noninformative_prior}{...}
{phang}
{bf:非信息先验}。
非信息先验是一种对后验分布几乎没有影响的先验。另见，例如，
{it:{help bayes_glossary##Jeffreys_prior:杰弗瑞斯先验}}。

{phang}
{bf:客观先验}。参见
{it:{help bayes_glossary##noninformative_prior:非信息先验}}。

{marker onetime_sampling}{...}
{phang}
{bf:一次性MCMC采样}。
一次性MCMC采样是一个MCMC采样过程，其中随机变量逐个单独采样。例如，在{help bayes_glossary##Gibbs_sampling:Gibbs采样}中，单独变量根据其最近的其他变量的值进行一次性采样。

{phang}
{bf:样本外预测}。
未来观察的预测；参见{help bayes_glossary##simulated_outcome:{it:模拟结果}}。

{marker overdispersed_initial_value}{...}
{phang}
{bf:过度分散的初始值}。
过度分散的初始值是从一个过度分散或相对于真实边际后验分布具有更大变异性的分布中获得的。过度分散的初始值用于多个马尔可夫链来诊断MCMC的收敛性。另见{mansection BAYES bayesmhRemarksandexamplesSpecifyinginitialvalues:{it:指定初始值}}在{bf:[BAYES] bayesmh}中。

{marker posterior_distribution}{...}
{phang}
{bf:后验分布，后验}。
后验分布是给定观测数据的模型参数的概率分布。后验分布由参数的似然和其先验分布决定。对于参数向量θ和数据y，后验分布由以下公式给出：

            P(θ|y) = {P(θ) P(y|θ)}/{P(y)}

{pmore}
其中P(θ)是先验分布，P(y|θ)是模型的似然，P(y)是y的边际分布。贝叶斯推断是基于后验分布进行的。

{phang}
{bf:后验独立性}。参见
{it:{help bayes_glossary##independent_aposteriori:后验独立}}。

{phang}
{bf:后验区间}。参见
{it:{help bayes_glossary##credible_interval:可信区间}}。

{marker posterior_odds}{...}
{phang}
{bf:后验优势}。
对于θ_1与θ_2的后验优势是给定模型下在θ_1和θ_2处评估的后验密度的比率，

{phang3}
            p(θ_1|y)/p(θ_2|y)= p(θ_1)/p(θ_2) p(y|θ_1)/p(y|θ_2)

{pmore}
换句话说，后验优势是先验优势乘以似然比。

{marker posterior_predictive_checking}{...}
{phang}
{bf:后验预测检验}。
后验预测检验是一种评估贝叶斯模型拟合优度的方法，使用从模型的{help bayes_glossary##replicated_data:重复数据}中模拟的结果。举例来说，重复残差的图形诊断可用于检查模型误差项的分布假设。一种更正式和系统的方法使用{help bayes_glossary##test_quantity:检验数量}和检验统计量来测量重复数据和观察数据之间的差异。可以使用均值、最小值和最大值等检验统计量来比较观察数据分布与重复数据分布的不同方面。
为检验数量和检验统计量计算的{help bayes_glossary##posterior_predictive_pvalue:后验预测p值}，也称为贝叶斯p值，用于量化观察数据和重复数据之间的差异。通常，p值小于0.05或大于0.95表明模型不拟合（{help bayes_glossary##gelmanetal2014:Gelman等，2014年}）。

{marker posterior_predictive_distribution}{...}
{phang}
{bf:后验预测分布}。
后验预测分布是基于观测数据对未观察（未来）数据的条件分布。后验预测分布是通过对模型参数的{help bayes_glossary##posterior_distribution:后验分布}对似然函数进行边际化而得出。

{marker posterior_predictive_pvalue}{...}
{phang}
{bf:后验预测p值}。
后验预测p值，也称为贝叶斯p值，是针对为{help bayes_glossary##replicated_data:重复数据}计算的检验数量（或统计量）大于或等于观测数据的检验数量的概率。后验预测p值用于{help bayes_glossary##posterior_predictive_checking:后验预测检验}。p值小于0.05或大于0.95通常指示模型不拟合（{help bayes_glossary##gelmanetal2014:Gelman等，2014年}）。

{marker predictive_distribution}{...}
{phang}
{bf:预测分布}。参见{help bayes_glossary##prior_predictive_distribution:{it:先验预测分布}}和{help bayes_glossary##posterior_predictive_distribution:{it:后验预测分布}}。

{marker predictive_inference}{...}
{phang}
{bf:预测推断}。
在贝叶斯统计中，预测推断是关于未观察（未来）数据的推断，它依赖于过去数据和关于模型参数的先验知识。预测推断基于模型参数的{help bayes_glossary##prior_predictive_distribution:先验预测}或{help bayes_glossary##posterior_predictive_distribution:后验预测}分布。

{marker predictive_outcome}{...}
{phang}
{bf:预测结果}。
预测结果ỹ是从贝叶斯模型的{help bayes_glossary##posterior_predictive_distribution:后验预测分布}中模拟的值或一组值p(ỹ|y)（{help bayes_glossary##gelmanetal2014:Gelman等，2014年}）。
与{help bayes_glossary##replicated_outcome:重复结果}不同，预测结果可以使用与拟合模型所使用的自变量不同的值。另见{help bayes_glossary##simulated_outcome:{it:模拟结果}}。

{marker prior_distribution}{...}
{phang}
{bf:先验分布，先验}。
在贝叶斯统计中，先验分布是基于对参数的一些先验知识形成的模型参数的概率分布。先验分布与观察数据无关。

{phang}
{bf:先验独立}。参见{it:{help bayes_glossary##independent_apriori:先验独立}}。

{marker prior_odds}{...}
{phang}
{bf:先验优势}。
对于θ_1与θ_2的先验优势是在给定模型下在θ_1和θ_2处评估的先验密度的比率，
p(θ_1)/p(θ_2)。另见{it:{help bayes_glossary##posterior_odds:后验优势}}。

{marker prior_predictive_distribution}{...}
{phang}
{bf:先验预测分布}。
先验预测分布是通过对模型参数的{help bayes_glossary##prior_distribution:先验分布}对似然函数进行边际化来得到的未观察（未来）数据的分布。另见{help bayes_glossary##marginal_distribution:{it:边际分布}}。

{marker proposal_distribution}{...}
{phang}
{bf:提议分布}。
在MH算法的上下文中，提议分布用于定义马尔可夫链的转移步骤。在标准随机游走Metropolis算法中，提议分布是均值为零和可调协方差矩阵的多元正态分布。

{marker pseudoconvergence}{...}
{phang}
{bf:伪收敛}。
当马尔可夫链似乎收敛时，实际上可能并没有收敛。我们将这种现象称为伪收敛。伪收敛通常是由平稳分布的多模态性引起的，此时链可能未能遍历分布空间中的弱连接区域。检测伪收敛的常见方法是使用不同的起始值运行多个链，并验证所有链是否都收敛到相同的目标分布。

{marker random_effects}{...}
{phang}
{bf:随机效应}。参见{help bayes_glossary##random_effects_parameters:{it:随机效应参数}}。

{marker random_effects_linear_form}{...}
{phang}
{bf:随机效应线性形式}。
表示随机效应变量的线性形式，可用于可替代表达式。

{marker random_effects_parameters}{...}
{phang}
{bf:随机效应参数}。
在贝叶斯多层模型的上下文中，随机效应参数是与{help bayes_glossary##random_effects_variable:随机效应变量}相关的参数。假定在给定所有其他模型参数的情况下，随机效应参数在随机效应变量的各级条件下是独立的。通常，假定随机效应参数服从均值为零和未知方差协方差矩阵的正态分布。

{marker random_effects_variable}{...}
{phang}
{bf:随机效应变量}。
用于识别随机效应在特定层次结构中组结构的变量。

{phang}
{bf:参考先验}。参见{it:{help bayes_glossary##noninformative_prior:非信息先验}}。

{marker replicated_data}{...}
{phang}
{bf:重复数据}。
重复数据{bf:y}^{rep}是如果使用相同模型和生成{bf:y}^{obs}的独立变量的相同值来重复产生观察数据{bf:y}^{obs}时将观察到的数据。参见{help bayes_glossary##gelmanetal2014:Gelman et al. (2014, 145)}，{help bayespredict_zh:[BAYES] bayespredict}，以及{helpb bayesstats ppvalues:[BAYES] bayesstats ppvalues}。

{marker replicated_outcome}{...}
{phang}
{bf:重复结果}。
重复结果是使用与拟合模型所使用的自变量相同的值生成的{help bayes_glossary##simulated_outcome:模拟结果}的一种特殊情况。另见{help bayes_glossary##replicated_data:{it:重复数据}}。

{marker scalar_model_parameter}{...}
{phang}
{bf:标量模型参数}。
标量模型参数是任何{help bayes_glossary##model_parameter:模型参数}，其为标量。例如，{cmd:{mean}}和{cmd:{hape:alpha}}是由{cmd:bayesmh}命令声明的标量参数。
{help bayes_glossary##matrix_model_parameter:矩阵模型参数}的元素被视为标量模型参数。例如，对于2 x 2的矩阵参数{cmd:{Sigma,matrix}}，单个元素{cmd:{Sigma_1_1}}、{cmd:{Sigma_2_1}}、{cmd:{Sigma_1_2}}和{cmd:{Sigma_2_2}}是标量参数。如果矩阵参数包含标签，则标签也应包括在单个元素的规范中。参见{manhelp bayesmh BAYES}。

{phang}
{bf:标量参数}。参见{it:{help bayes_glossary##scalar_model_parameter:标量模型参数}}。

{marker semiconjugate_prior}{...}
{phang}
{bf:半共轭先验}。
对于一类似然分布，如果先验分布和（全）条件后验分布属于同一类分布，则该先验分布被称为半共轭先验。为使半共轭成立，参数通常必须先验独立；也就是说，它们的联合先验分布必须是各自边际先验分布的乘积。例如，对于具有未知方差的正态数据分布的均值参数的正态先验分布（假定在先验条件下独立于均值）是半共轭先验。半共轭可以提供从后验分布高效采样的方法，并用于{help bayes_glossary##Gibbs_sampling:Gibbs采样}。

{marker simulated_outcome}{...}
{phang}
{bf:模拟结果}。
在贝叶斯预测推断中，模拟结果是从{help bayes_glossary##posterior_predictive_distribution:后验预测分布}中抽取的样本。在{help bayespredict_zh}的上下文中，我们定义模拟结果为从后验预测分布p({bf:ỹ}|{bf:y})模拟的新输出值的T x n矩阵，其中T是MCMC样本大小，n是观察数。

{marker stationary_distribution}{...}
{phang}
{bf:平稳分布}。
随机过程的平稳分布是不随时间变化的联合分布。在MCMC的上下文中，平稳分布是马尔可夫链收敛的目标概率分布。当MCMC用于模拟贝叶斯模型时，平稳分布是模型参数的目标联合后验分布。

{phang}
{bf:主观先验}。参见{it:{help bayes_glossary##informative_prior:信息先验}}。

{phang}
{bf:链的子采样}。参见{it:{help bayes_glossary##thinning:稀疏化}}。

{marker sufficient_statistic}{...}
{phang}
{bf:充分统计量}。
对于参数的参数化似然模型而言，充分统计量是样本的任何函数，这个函数包含关于模型参数的所有信息。

{marker test_quantity}{...}
{phang}
{bf:检验数量}。
在贝叶斯预测推断中，检验数量是依赖于任意一个{help bayes_glossary##simulated_outcome:模拟结果}{bf:y}^{sim}和模型参数θ的任意函数。它通过从联合后验分布p({bf:y}^{sim},θ)中采样进行估计。仅依赖于{bf:y}^{sim}的检验数量称为检验统计量。检验数量用于{help bayes_glossary##posterior_predictive_checking:后验预测检验}以评估模型拟合。

{marker test_statistic}{...}
{phang}
{bf:检验统计量}。
一种特殊情况的{help bayes_glossary##test_quantity:检验数量}，仅依赖于数据。

{marker thinning}{...}
{phang}
{bf:稀疏化}。
稀疏化是一种减少MCMC样本中的自相关的方法，通过按照预先指定的稀疏化间隔对MCMC链进行子采样。例如，稀疏化间隔为1对应于使用整个MCMC样本；稀疏化间隔为2对应于使用每个其他样本值；稀疏化间隔为3对应于使用来自迭代1、4、7、10等的值。在使用稀疏化减少自相关时，必须谨慎应用，因为它可能不是改善估计精度的最合适方法。

{phang}
{bf:模糊先验}。参见{it:{help bayes_glossary##noninformative_prior:非信息先验}}。

{phang}
{bf:有效初始状态}。参见{it:{help bayes_glossary##feasible_initial_value:可行初始值}}。

{phang}
{bf:消失自适应}。参见{it:{help bayes_glossary##diminishing_adaptation:递减自适应}}。

{marker zellnersg}{...}
{phang}
{bf:泽尔纳的g先验}。
泽尔纳的g先验是线性模型中回归系数的一种弱信息先验形式。它考虑了预测变量之间的相关性，并控制回归系数的先验对后验的影响，以参数g为控制。例如，g=1表示先验权重为50%，而g→∞表示扩散先验。
{p_end}


{marker reference}{...}
{title:参考}

{marker gelmanetal2014}{...}
{phang}
Gelman, A., J. B. Carlin, H. S. Stern, D. B. Dunson, A. Vehtari, 和 D. B. Rubin. 2014. {it:贝叶斯数据分析}. 第3版。
美国佛罗里达州波卡拉顿市：Chapman & Hall/CRC。
{p_end}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <bayes_glossary.sthlp>}