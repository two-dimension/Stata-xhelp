{smcl}
{* *! version 1.0.1  01jul2019}{...}
{vieweralsosee "[LASSO] 术语表" "mansection LASSO Glossary"}{...}
{viewerjumpto "描述" "lasso_glossary_zh##description"}{...}
{viewerjumpto "术语表" "lasso_glossary_zh##glossary"}
{help lasso_glossary:English Version}
{hline}{...}
{p2colset 1 21 23 2}{...}
{p2col:{bf:[LASSO] 术语表} {hline 2}}术语表{p_end}
{p2col:}({mansection LASSO Glossary:查看完整 PDF 手册条目}){p_end}
{p2colreset}{...}


{marker description}{...}
{title:描述}

{pstd}常用术语在此定义。


{marker glossary}{...}
{title:术语表}

{marker adaptive_lasso}{...}
{phang} 
{bf:自适应套索}. 自适应套索是 Stata 提供的三种适合套索模型的方法之一。其他两种方法是
{help lasso_glossary##cross_validation:交叉验证}和
{help lasso_glossary##plugins:插件法}。自适应套索通常比交叉验证包含更少的协变量，而比插件法包含更多的协变量。
自适应套索不用于拟合平方根套索和弹性网模型。

{marker beta_min_condition}{...}
{phang} 
{bf:beta-min 条件}. Beta-min 条件是一个数学陈述，表明在真实或最佳近似模型中，最小非零系数的绝对值必须足够大。这个条件在套索模型中很少满足，因为套索通常会省略小系数的协变量。对于
{help lasso_glossary##prediction:预测}这不是问题，但对于
{help lasso_glossary##inference:推断}则是个问题。Stata 的
{help lasso_glossary##double_selection:双重选择、偏差处理和交叉拟合偏差处理}可以规避这个问题。

{phang}
{bf:感兴趣的系数}.
见 {help lasso_glossary##covariates_interest:{it:感兴趣的协变量和控制协变量}}。

{phang}
{bf:控制变量}.
见 {help lasso_glossary##covariates_interest:{it:感兴趣的协变量和控制协变量}}。

{marker covariates}{...}
{phang} 
{bf:协变量}. 协变量，也称为解释变量和右侧变量，指出现在模型右侧的变量并预测{help lasso_glossary##outcome_variable:结果变量}的值。本手册常常提到“潜在协变量”和“选定协变量”，以区分套索考虑的变量和它们在模型中被选择的变量。

{marker covariates_interest}{...}
{phang} 
{bf:感兴趣的协变量和控制协变量}. 感兴趣的协变量和控制协变量构成了在进行
{help lasso_glossary##inference:推断}时为拟合套索模型指定的
{help lasso_glossary##covariates:协变量}。在这些情况下，
感兴趣协变量的系数和标准误被估计并报告。控制协变量的系数没有被报告，也无法恢复，但它们仍然出现在模型中以改善对感兴趣系数的测量。

{pmore}
感兴趣的协变量和控制协变量通常被称为感兴趣的变量和控制变量。

{pmore} 
感兴趣协变量的系数称为感兴趣的系数。

{marker covariate_selection}{...}
{phang} 
{bf:协变量选择}. 协变量选择指的是自动选择要包含在模型中的协变量的过程。套索、平方根套索和弹性网是三种这样的过程。它们的特别之处在于能够处理如此多的潜在协变量。

{pmore} 
协变量选择与估计同时进行。协变量根据系数估计值被包含或排除。当估计为 0 时，协变量被排除。

{marker cross_fitting}{...}
{phang} 
{bf:交叉拟合}. 交叉拟合是{help lasso_glossary##DML:双重机器学习}的另一种说法。

{marker cross_validation}{...}
{phang}
{bf:交叉验证 (CV)}. 交叉验证 (CV) 是拟合套索模型的方法。Stata 提供的其他方法是
{help lasso_glossary##adaptive_lasso:自适应套索}和{help lasso_glossary##plugins:插件法}。

{pmore}
一般而言，该术语指验证预测模型性能的技术。经典 CV 使用一个数据集来拟合模型，使用另一个数据集来评估其预测。然而，当该术语与套索相关时，CV 指的是{help lasso_glossary##folds:K 折 CV}，一种使用相同数据集拟合模型并估算该模型在进行样本外预测时表现如何的技术。见{help lasso_glossary##folds:{it:折叠}}。

{marker cross_crit}{...}
{phang}
{bf:交叉验证函数}. 交叉验证 (CV) 函数通过首先将数据分为 K 个{help lasso_glossary##folds:折叠} 进行计算。每个 λ（以及弹性网的 α）在除了一个折叠的数据上进行拟合，然后计算被排除折叠的预测，并计算拟合度的度量。这 K 个拟合度的度量取平均值以给出 CV 函数的值。对于线性模型，CV 函数是{help lasso_glossary##cv_meanpred:CV 平均预测误差}。对于非线性模型，CV 函数是{help lasso_glossary##cross_cvmd:CV 平均偏差}。
{help lasso_glossary##cross_validation:CV}找到 CV 函数的最小值，给出最小值的 λ（和 α）是选定的 λ^*（和 α^*）。

{marker cross_cvmd}{...}
{phang}
{bf:交叉验证平均偏差}. 交叉验证平均偏差是使用观察级别的{help lasso_glossary##deviance:偏差}作为拟合度的度量的{help lasso_glossary##cross_crit:交叉验证函数}。

{marker cross_mdevr}{...}
{phang}
{bf:交叉验证平均偏差比}. 交叉验证平均偏差比是使用偏差比的均值作为拟合度的度量的{help lasso_glossary##cross_crit:交叉验证函数}。

{marker cv_meanpred}{...}
{phang}
{bf:交叉验证平均预测误差}. 交叉验证平均预测误差是使用预测误差平方的均值作为拟合度的度量的{help lasso_glossary##cross_crit:交叉验证函数}。对于线性模型，预测误差是个体层面的结果与线性预测{bf:x}_i'{bf:β}之间的差异。

{marker DGP}{...}
{marker DGM}{...}
{phang}
{bf:数据生成过程 (DGP) 和数据生成机制 (DGM)}. 数据生成过程 (DGP) 和数据生成机制 (DGM) 是对正在分析的数据生成的基本过程的同义词。研究人员拟合的科学和统计模型有时是 DGP 的近似。

{marker deviance}{...}
{phang}
{bf:偏差}. 偏差是线性和非线性基于似然的模型的拟合度统计量。观察 i 的偏差 D_i 由以下公式给出

            D_i = -2(l_i - l_{saturated})

{pmore}
其中 l_i 是观察级别的似然性，l_{saturated} 是饱和似然性的值。

{marker deviance_null}{...}
{phang}
{bf:偏差零假设}. 偏差零假设是仅包括常数的模型的对数似然评估的偏差的均值。

{marker deviance_ratio}{...}
{phang}
{bf:偏差比}. 偏差比是线性和非线性基于似然的模型的拟合度统计量。它由 D 给出

            D2 = 1 - Đ/(D_{null})

{pmore}
其中 Đ 是{help lasso_glossary##deviance:偏差}的均值，D_{null} 是{help lasso_glossary##deviance_null:偏差零假设}。

{marker DML}{...}
{phang}
{bf:双重机器学习 (DML)}. 双重机器学习 (DML) 是一种估计{help lasso_glossary##covariates_interest:感兴趣的系数}及其标准误的方法。当套索用于{help lasso_glossary##inference:推断}时，您指定感兴趣的协变量和潜在的{help lasso_glossary##covariates_interest:控制协变量}。DML 是结合{help lasso_glossary##sample_splitting:样本划分}和强健矩条件的一系列技术。见{help lasso_glossary##double_selection:{it:双重选择、偏差处理和交叉拟合偏差处理}}。

{marker double_selection}{...}
{phang}
{bf:双重选择、偏差处理和交叉拟合偏差处理}. 双重选择、偏差处理和交叉拟合偏差处理是对套索模型中一部分系数进行{help lasso_glossary##inference:推断}的三种不同的估计技术。Stata 为线性、逻辑、泊松和工具变量模型提供了这些技术。交叉拟合偏差处理也称为{help lasso_glossary##DML:双重机器学习} (DML)。另见{manlink LASSO Lasso 推断介绍}。

{marker ds}{...}
{phang} 
{bf:ds}. 本手册中用于指代所有双重选择推断命令的简写 -- {help dsregress_zh}、{help dslogit_zh} 和{help dspoisson_zh}。

{marker elastic_net}{...}
{phang}
{bf:弹性网}. 弹性网是一种{help lasso_glossary##penalized_estimators:惩罚估计量}，用于减少排除高度共线性协变量的可能性。Stata 的{cmd:elasticnet}命令使用{help lasso_glossary##cross_validation:交叉验证}拟合弹性网模型。

{phang}
{bf:被排除的协变量}. 见{help lasso_glossary##covariate_selection:{it:协变量选择}}。

{marker folds}{...}
{phang} 
{bf:折叠和 K 折交叉验证}. 折叠和 K 折交叉验证指一种技术，用于在不实际拥有第二数据集的情况下估计模型在样本外预测的性能。使用拟合模型的数据被划分为 K 个大致相等大小的、互不重叠的子样本，称为折叠。对于每个折叠 k，在其他 K - 1 个折叠的数据上重新拟合模型，然后使用该结果来对折叠 k 的值进行预测。当所有 K 折叠的过程完成后，将组合折叠中的预测与实际值进行比较。折叠数 K 通常设为 10。

{phang}
{bf:包含的协变量}. 见{help lasso_glossary##covariate_selection:{it:协变量选择}}。

{marker inference}{...}
{phang} 
{bf:推断}. 推断是统计推断或科学推断。它涉及利用数据样本推断潜在总体中参数的值以及它们可能的精确度。所述的可能精确度以概率、置信区间、可信区间、标准误和其他统计度量的形式表示。

{pmore}
推断也可以指科学推断。科学推断是对因果参数的统计推断。这些参数表征因果关系。更多的教育是否导致更高的收入，还是仅仅是与更高收入相关的代理，因为那些有更多教育的人被认为更聪明或更有成功欲望，或者只是花了更多时间和正确的人在一起？如果兴趣在于仅仅进行统计{help lasso_glossary##prediction:预测}，那么这就无关紧要。

{marker insampler2}{...}
{phang}
{bf:样本内 R 平方}. 样本内 R 平方是对模型拟合的样本评估的{help lasso_glossary##rsquared:R 平方}。

{marker knots}{...}
{phang} 
{bf:结}. 结是模型中变量发生变化的{help lasso_glossary##penalty_parameter:惩罚参数}值。

{marker lambda}{...}
{marker alpha}{...}
{phang}
{bf:lambda 和 alpha}. Lambda 和 alpha (λ 和 α) 是套索和弹性网的{help lasso_glossary##penalty_parameter:惩罚参数}。

{pmore}
Lambda 是套索和平方根套索的惩罚参数。Lambda 大于或等于 0。当它为 0 时，模型中包括所有可能的协变量。在其最大值（取决于模型）的情况下，没有协变量被纳入。因此，lambda 对模型进行排序。

{pmore}
Alpha 是弹性网的惩罚参数。Alpha 的值在 0 和 1 之间，包括 0 和 1。当 alpha 为 0 时，弹性网变为岭回归。当 alpha 为 1 时，弹性网变为套索。

{marker lasso}{...}
{phang}
{bf:套索}. 套索在本词表中有不同的含义，具体取决于使用情况。

{pmore}
首先，我们用套索指代套索这个词，最初是 LASSO，因为它是“最小绝对收缩和选择算子”的首字母缩写。

{pmore}
其次，我们用套索指代套索和平方根套索，它们是套索的两种不同变体。见{help lasso_glossary##square_root_lasso:{it:平方根套索}}。

{pmore}
第三，我们用套索指代套索、平方根套索和弹性网。弹性网是套索的另一种变体，它使用不同的惩罚函数。见{help lasso_glossary##elastic_net:{it:弹性网}}。

{pmore}
在最广泛的意义上，套索被广泛用于{help lasso_glossary##prediction:预测}和{help lasso_glossary##covariate_selection:协变量选择}。

{pmore}
在最狭义的意义上，套索由 Stata 的{cmd:lasso}命令实现。它拟合线性、逻辑、概率和泊松模型。它使用以下三种方法中的任意一种进行拟合：
{help lasso_glossary##cross_validation:交叉验证}、{help lasso_glossary##adaptive_lasso:自适应套索}和{help lasso_glossary##plugins:插件法}。

{pmore}
平方根套索由 Stata 的{cmd:sqrtlasso}命令实现。它使用{help lasso_glossary##cross_validation:交叉验证}或{help lasso_glossary##plugins:插件法}拟合线性模型。

{pmore}
弹性网由 Stata 的{cmd:elasticnet}命令实现。它拟合线性、逻辑、概率和泊松模型。它使用{help lasso_glossary##cross_validation:交叉验证}。

{pmore} 
无论使用何种具体的套索，这些方法都会估计潜在协变量的系数。协变量的包含和排除基于估计。当估计为 0 时，协变量被排除。

{phang}
{bf:套索选择}. 见{help lasso_glossary##covariate_selection:{it:协变量选择}}。

{marker nonzero_coefficients}{...}
{phang}
{bf:非零系数}. 非零系数是对{help lasso_glossary##covariate_selection:选定的协变量}进行估计的系数。

{phang} 
{bf:未选择的协变量}. 未选择的协变量是被排除的协变量的同义词；见{help lasso_glossary##covariate_selection:{it:协变量选择}}。

{marker outcome_variable}{...}
{phang} 
{bf:结果变量}. 结果变量，也称为因变量和左侧变量，指的是被独立变量预测的变量值，独立变量也称为{help lasso_glossary##covariates:协变量}和右侧变量。

{marker outsampler2}{...}
{phang}
{bf:样本外 R 平方}. 样本外 R 平方是对与模型拟合的数据样本不同的数据样本评估的{help lasso_glossary##rsquared:R 平方}。

{marker penalized_coeff}{...}
{phang}
{bf:惩罚系数}. 惩罚系数是套索在协变量没有标准化（均值为 0，标准差为 1）时产生的系数估计值。

{marker penalized_estimators}{...}
{phang}
{bf:惩罚估计量}. 惩罚估计量是最小化包括惩罚项的拟合度度量的统计估计量。该项基于模型的复杂性对模型施加惩罚。套索、平方根套索和弹性网是惩罚估计量。

{pmore}
区分套索与弹性网的特征，仅靠的是惩罚项的具体形式。套索使用包含的协变量绝对值总和的惩罚项。弹性网使用相同的惩罚项加上系数的平方和。该附加项旨在防止排除高度共线的协变量。

{pmore}
平方根套索使用与套索相同的惩罚项，但惩罚被添加到的目标函数的形式有所不同。

{marker penalty_loadings}{...}
{phang} 
{bf:惩罚载荷}. 惩罚载荷是指在{help lasso_glossary##adaptive_lasso:自适应套索}和{help lasso_glossary##plugins:插件法}中的系数特定惩罚权重。允许系数具有不同的惩罚权重可以改善套索、平方根套索和弹性网选择的模型。

{marker penalty_parameter}{...}
{phang} 
{bf:惩罚参数}. 惩罚参数是指 lambda (λ)，套索和平方根套索的惩罚参数，以及 alpha (α)，弹性网的惩罚参数。见{help lasso_glossary##lambda:{it:lambda 和 alpha}}。

{marker plugins}{...}
{phang}
{bf:插件}. 插件是拟合{help lasso_glossary##lasso:套索}和{help lasso_glossary##square_root_lasso:平方根套索}模型的方法，而不是{help lasso_glossary##elastic_net:弹性网}模型。这是{help lasso_glossary##cross_validation:交叉验证}的替代方法。交叉验证往往会包含比最佳近似模型更大数量的协变量。插件法的开发旨在解决这个问题。插件法还有执行更快的优点，但有时会遗漏交叉验证能够找到的重要协变量。

{marker po}{...}
{phang}
{bf:po}. 本手册中用于指代所有偏差处理推断命令的简写 -- {help poregress_zh}、{help pologit_zh}、{help popoisson_zh} 和 {help poivregress_zh}。

{marker postlasso_coefficients}{...}
{phang} 
{bf:后套索系数}. 后套索系数，也称为后选择系数，是如果您根据套索选择的模型重新拟合所获得的估计系数。为了明确，您使用套索拟合一个线性模型。它选择了协变量。然后您使用{cmd:regress}、{cmd:logit}等重新拟合该模型。这些是后选择系数，且它们将不同于套索生成的系数。它们的不同之处在于套索是收缩估计量，这引发了问题：哪种预测更好？

{pmore}
这个问题没有明确的答案。我们能给出的最佳答案是使用分割样本和{cmd:lassogof}来评估两组预测并选择更好的一个。

{pmore} 
供您参考，Stata 的套索命令 -- {cmd:lasso}、{cmd:sqrtlasso} 和 {cmd:elasticnet} -- 提供套索系数和后选择系数。套索系数存储在{cmd:e(b)}中。后选择系数存储在{cmd:e(b_postselection)}中。您可以使用{cmd:predict}进行样本内和样本外的预测。{cmd:predict} 默认使用套索系数。指定选项{cmd:postselection}，则使用后选择系数。

{phang}
{bf:潜在协变量}. 见{help lasso_glossary##covariates:{it:协变量}}。

{marker prediction}{...}
{phang}
{bf:预测和预测建模}. 预测和预测建模是指基于{help lasso_glossary##covariates:协变量}预测{help lasso_glossary##outcome_variable:结果变量}的值。预测是套索最初设计的目的。预测所基于的变量不一定与结果存在因果关系。它们可能是因果关系的代理。另见{help lasso_glossary##inference:{it:推断}}。

{marker regularized}{...}
{phang}
{bf:正则化估计器}. 正则化估计器是惩罚估计器的另一种说法。见{help lasso_glossary##penalized_estimators:{it:惩罚估计器}}。

{marker rsquared}{...}
{phang}
{bf:R 平方}. R 平方 (R^2) 是拟合优度的度量。它告诉您模型解释了结果方差的多少部分。

{marker sample_splitting}{...}
{phang}
{bf:样本划分}. 样本划分是从一个数据集中创建两个或更多较小数据集的一种方式。观察值被随机分配到子样本。Stata 的{cmd:splitsample}命令执行此操作。样本有时会被划分，以便以不同的方式使用所得到的子样本。可以使用第一个子样本来拟合模型，第二个子样本来评估其预测。

{marker saturated}{...}
{phang}
{bf:饱和似然}. 饱和似然是针对具有与数据点数量相同的估计参数的模型的似然。

{pmore}
对于线性模型、逻辑模型和概率模型，饱和模型的对数似然函数为 0。换句话说，l_{saturated} = 0。

{pmore}
对于泊松模型，

            l_{saturated} = 1/N sum_{i=1}^N {c -(}-y_i + ln(y_i)y_i{c )-}

{phang} 
{bf:选定的协变量}. 选定的协变量是包含的协变量的同义词；见{help lasso_glossary##covariate_selection:{it:协变量选择}}。

{marker sparsity_assumption}{...}
{phang}
{bf:稀疏性假设}. 稀疏性假设指套索为产生可靠结果而需要满足的条件。该条件是套索所寻求的真实模型具有少量变量，其中“少量”相对于用于拟合模型的数据集的观察值数量而言。

{marker square_root_lasso}{...}
{phang}
{bf:平方根套索}. 平方根套索是对{help lasso_glossary##lasso:套索}的变体。平方根套索的开发出自更好地拟合具有同方差但不是正态分布错误的线性模型的愿望，但也可以与异方差错误一起使用。Stata 的{cmd:sqrtlasso}命令拟合平方根套索。

{marker standardized_coeff}{...}
{phang}
{bf:标准化系数}. 标准化系数是当协变量标准化为均值为 0 和标准差为 1 时套索产生的系数估计。

{phang} 
{bf:变量选择}. 见{help lasso_glossary##covariate_selection:{it:协变量选择}}。

{phang}
{bf:感兴趣的变量}. 见{help lasso_glossary##covariates_interest:{it:感兴趣的协变量和控制协变量}}。

{marker xpo}{...}
{phang}
{bf:xpo}. 本手册中用于指代所有交叉拟合偏差处理推断命令的简写 -- {help xporegress_zh}、{help xpologit_zh}、{help xpopoisson_zh} 和 {help xpoivregress_zh}。
{p_end}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <lasso_glossary.sthlp>}