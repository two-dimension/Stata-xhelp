{smcl}
{* *! version 1.0.9  19oct2017}{...}
{vieweralsosee "[ME] 术语表" "mansection ME Glossary"}{...}
{viewerjumpto "描述" "me_glossary_zh##description"}{...}
{viewerjumpto "参考文献" "me_glossary_zh##references"}
{help me_glossary:English Version}
{hline}{...}
{p2colset 1 18 20 2}{...}
{p2col:{bf:[ME] 术语表} {hline 2}}术语表{p_end}
{p2col:}({mansection ME Glossary:查看完整的 PDF 手册条目}){p_end}
{p2colreset}{...}


{marker description}{...}
{title:描述}

{marker anovaDDF}{...}
{phang}
{bf:ANOVA 自由度 (DDF) 方法}。该方法使用传统的 ANOVA 计算 DDF。根据该方法，给定变量的固定效应检验的 DDF 取决于该变量是否也包含在任何随机效应方程中。对于具有平衡设计的传统 ANOVA 模型，该方法提供了检验统计量的精确抽样分布。对于更复杂的混合效应模型或不平衡数据，该方法通常导致对检验统计量实际抽样分布的较差近似。

{marker approximationDDF}{...}
{phang}
{bf:近似自由度 (DDF) 方法}。Kenward-Roger 和 Satterthwaite DDF 方法被称为近似方法，因为它们使用特定于复杂混合效应模型的方法利用 t 和 F 分布来近似检验统计量的抽样分布，并适用于简单的混合模型和不平衡数据。另请参见 {help me_glossary##exactDDF:{it:精确自由度 (DDF) 方法}}。

{phang}
{bf:组间-组内自由度 (DDF) 方法}。参见 {help me_glossary##repeatedDDF:{it:重复自由度 (DDF) 方法}}。

{phang}
{bf:最佳线性无偏预测 (BLUPs)}。BLUPs 是随机效应或随机效应线性组合的最佳线性无偏预测。在包含随机效应的线性模型中，这些效应不是直接估计的，而是通过积分被消去。一旦固定效应和方差成分被估计，您可以使用这些估计来预测特定组的随机效应。这些预测被称为 BLUPs，因为它们是无偏的，并且在所有响应的线性函数中具有最小的均方误差。

{phang}
{bf:典范链接 (canonical link)}。在广义线性模型 (GLM) 中，对于每个分布族都有一个典范链接函数，其具有与线性预测器中参数数目相同维度的充分统计量。使用典范链接函数为 GLM 提供了理想的统计属性，尤其是在样本量较小的情况下。

{phang}
{bf:条件危险函数}。在混合效应生存模型中，条件危险函数是条件于随机效应计算的危险函数。即使在相同的协变量模式下，条件危险函数在属于不同随机效应聚类的个体之间也会有所不同。

{phang}
{bf:条件危险比}。在混合效应生存模型中，条件危险比是评估在不同协变量值下的两个条件危险函数的比率。除非另有说明，分母对应于基线条件危险函数，即所有协变量均设置为零时的情况。

{phang}
{bf:条件超分散}。在负二项混合效应模型中，条件超分散是指在随机效应条件下的超分散。另请参见 {it:{help me_glossary##overdispersion:超分散}}。

{phang}
{bf:包含自由度 (DDF) 方法}。参见 {help me_glossary##anovaDDF:{it:ANOVA 自由度 (DDF) 方法}}。

{marker car1}{...}
{phang}
{bf:连续时间自回归结构}。允许不等距和非整数时间值的自回归结构的广义。

{phang}
{bf:协方差结构}。在混合效应模型中，协方差结构指的是随机效应的方差-协方差结构。

{marker crossed_effects_model}{...}
{phang}
{bf:交叉效应模型}。交叉效应模型是混合效应模型，其中随机效应的水平不是嵌套的。一个简单的交叉效应模型用于横截面时间序列数据，包含一个随机效应以控制面板特定变异，第二个随机效应控制时间特定的随机变异。在该模型中，由于特定时间造成的随机效应对于所有面板都是相同的，而不是嵌套在面板内。

{phang}
{bf:交叉随机效应}。参见 {it:{help me_glossary##crossed_effects_model:交叉效应模型}}。

{phang}
{bf:EB}。参见 {it:{help me_glossary##empirical_Bayes:经验贝叶斯}}。

{marker empirical_Bayes}{...}
{phang}
{bf:经验贝叶斯}。在广义线性混合效应模型中，经验贝叶斯指的是在估计模型参数后对随机效应的预测方法。经验贝叶斯方法使用贝叶斯原理来获取随机效应的后验分布，但不假设模型参数的先验分布，而是假定参数是给定的。

{phang}
{bf:经验贝叶斯均值}。参见 {it:{help me glossary##posterior_mean:后验均值}}。

{phang}
{bf:经验贝叶斯模式}。参见 {it:{help me glossary##posterior_mode:后验模式}}。

{marker error_covariance}{...}
{phang}
{bf:误差协方差}, {bf:误差协方差结构}。{help me_glossary##lowestlevelgroup:最低层组}内误差的方差-协方差结构。例如，如果您在建模嵌套在学校内的班级的随机效应，那么误差协方差指的是班内观察值的方差-协方差结构，这些是最低层组。稍微滥用术语，文献中有时也称误差协方差为残差协方差或残差误差协方差。

{marker exactDDF}{...}
{phang}
{bf:精确自由度 (DDF) 方法}。残差、重复和 ANOVA DDF 方法被称为精确方法，因为它们为特殊类别的混合效应模型（如线性回归、重复测量设计和传统 ANOVA 模型）在平衡数据下提供了精确的 t 和 F 抽样分布。另请参见 {help me_glossary##approximationDDF:{it:近似自由度 (DDF) 方法}}。

{phang}
{bf:固定效应}。在多层次混合效应模型中，固定效应代表在任何嵌套层次上对所有组都是恒定的效应。在 ANOVA 文献中，固定效应表示限制推断仅限于研究中观察到的特定水平的因子水平。另请参见 {it:{help xt_glossary##fixedeffects_model:固定效应模型}} 在 {bf:[XT] 术语表}中。

{marker free_parameter}{...}
{phang}
{bf:自由参数}。自由参数是未通过 {help me_glossary##linear_form:线性形式} 定义的参数。自由参数在前面的名字或方程名字前显示一个斜杠。

{marker GHquadrature}{...}
{phang}
{bf:高斯-赫尔米特积分法}。在广义线性混合模型的背景下，高斯-赫尔米特积分法是一种用以近似在计算对数似然时使用的积分的方法。在优化过程中，单个聚类的积分位置和权重是固定的。

{marker GLMEmodel}{...}
{phang}
{bf:广义线性混合效应模型}。广义线性混合效应模型是广义线性模型的扩展，允许包括随机偏差（效应）。

{marker GLM}{...}
{phang}
{bf:广义线性模型}。广义线性模型是一种估计框架，其中用户为因变量指定分布族以及将因变量与回归变量的线性组合联系起来的链接函数。该分布必须是指数分布族的成员。广义线性模型包含许多常见模型，包括线性、probit 和泊松回归。

{phang}
{bf:GHQ}。参见 {it:{help me_glossary##GHquadrature:高斯-赫尔米特积分法}}。

{phang}
{bf:GLM}。参见 {it:{help me_glossary##GLM:广义线性模型}}。

{phang}
{bf:GLME 模型}。参见 {it:{help me_glossary##GLMEmodel:广义线性混合效应模型}}。

{phang}
{bf:GLMM}。广义线性混合模型。参见 {it:{help me_glossary##GLMEmodel:广义线性混合效应模型}}。

{phang}
{bf:层次模型}。层次模型是指更狭义的定义组嵌套在更大的组内。例如，在一个层次模型中，患者可能嵌套在医生内，而医生又嵌套在他们执业的医院内。

{phang}
{bf:组内相关性}。在混合效应模型的背景下，组内相关性指的是模型各嵌套层次上响应对的相关性。

{phang}
{bf:Kenward-Roger 自由度 (DDF) 方法}。该方法实现了 {help me_glossary##KW1997:Kenward 和 Roger (1997)} 方法，旨在近似复杂线性混合效应模型的检验统计量的未知抽样分布。该方法仅支持有限的最大似然估计。

{phang}
{bf:拉普拉斯近似}。拉普拉斯近似是一种在不诉诸于积分方法的情况下近似定积分的技术。在混合效应模型的背景下，拉普拉斯近似通常比积分法更快，但代价是产生的方差成分参数估计偏差。

{marker lb_algorithm}{...}
{phang}
{bf:Lindstrom-Bates 算法}。由 {help me_glossary##linearization_method:线性化方法} 使用的算法。

{marker linear_form}{...}
{phang}
{bf:线性形式}。线性组合被称为“线性形式”，只要你在表达式的任何地方不引用其系数或线性组合的任何子集。线性形式对于某些非线性命令（如 {help nl_zh}）是有益的，因为它们使导数计算更快、更精确。与 {help me_glossary##free_parameter:自由参数} 相对，线性形式的参数在输出中不带斜杠。相反，它们作为参数显示在方程中，方程的名称为线性组合名称。另请参见 {mansection ME menlRemarksandexamplesLinearformsversuslinearcombinations:{it:线性形式与线性组合}} 在 {bf:[ME] menl} 中。

{phang}
{bf:线性混合模型}。参见 {it:{help me_glossary##LMEmodel:线性混合效应模型}}。

{marker LMEmodel}{...}
{phang}
{bf:线性混合效应模型}。线性混合效应模型是对线性模型的扩展，允许包括随机偏差（效应）。

{marker linearization_log_likelihood}{...}
{phang}
{bf:线性化对数似然}。由 {help me_glossary##linearization_method:线性化方法} 用于优化的目标函数。这是用于近似指定的非线性混合效应模型的线性混合效应模型的对数似然。

{marker linearization_method}{...}
{phang}
{bf:线性化方法}, {bf:Lindstrom-Bates 方法}。由 {help me_glossary##LB1990:Lindstrom 和 Bates (1990)} 开发的方法，用于近似拟合 {help me_glossary##NLMEmodel:非线性混合效应模型}。线性化方法使用指定的非线性均值函数的一阶泰勒级数展开，将其近似为固定效应和随机效应的线性函数。因此，非线性混合效应模型被近似为 {help me_glossary##LMEmodel:线性混合效应模型}，其中固定效应和随机效应设计矩阵涉及关于固定效应（系数）和随机效应的非线性均值函数的导数。另请参见 {mansection ME menlRemarksandexampleslinearization_method:{it:介绍}} 在 {bf:[ME] menl} 中。

{phang}
{bf:链接函数}。在广义线性模型或广义线性混合效应模型中，链接函数将预测变量的线性组合与因变量的期望值联系起来。在简单线性回归模型中，链接函数就是恒等函数。

{phang}
{bf:LME 模型}。参见 {it:{help me_glossary##LMEmodel:线性混合效应模型}}。

{marker lowestlevelgroup}{...}
{phang}
{bf:最低层组}。多层次模型的第二层，其观察值构成第一层。例如，如果您在建模嵌套在学校内的班级的随机效应，那么班级就是最低层组。

{phang}
{bf:MCAGH}。参见 {it:{help me_glossary##MCAGHquadrature:模式-曲率自适应高斯-赫尔米特积分法}}。

{marker MVAGHquadrature}{...}
{phang}
{bf:均值-方差自适应高斯-赫尔米特积分法}。在广义线性混合模型的背景下，均值-方差自适应高斯-赫尔米特积分法是一种近似用于计算对数似然的积分的方法。在优化过程中，单个聚类的积分位置和权重由后验均值和后验标准差更新。

{phang}
{bf:混合模型}。参见 {it:{help me_glossary##MEmodel:混合效应模型}}。

{marker MEmodel}{...}
{phang}
{bf:混合效应模型}。混合效应模型包含固定效应和随机效应。固定效应是直接估计的，而随机效应根据其（协）方差进行总结。混合效应模型主要用于在多层分组造成的复杂组内相关结构下对回归系数进行估计和推断。

{marker MCAGHquadrature}{...}
{phang}
{bf:模式-曲率自适应高斯-赫尔米特积分法}。在广义线性混合模型的背景下，模式-曲率自适应高斯-赫尔米特积分法是一种近似用于计算对数似然的积分的方法。在优化过程中，单个聚类的积分位置和权重由后验模式和标准差更新，这些标准差对应于在模式处近似对数后验的正态密度。

{phang}
{bf:MVAGH}。参见 {it:{help me_glossary##MVAGHquadrature:均值-方差自适应高斯-赫尔米特积分法}}。

{marker named_subexpr}{...}
{phang}
{bf:命名可替换表达式}。命名可替换表达式是在 {help menl_zh} 的 {cmd:define()} 选项中定义的 {mansection ME menlRemarksandexamplesnamed_subexpr:可替换表达式}；参见 {mansection ME menlRemarksandexamplesSubstitutableexpressions:{it:可替换表达式}} 在 {bf:[ME] menl} 中。

{phang}
{bf:嵌套随机效应}。在混合效应模型的背景下，嵌套随机效应指的是随机效应的嵌套分组因子。例如，我们可能拥有嵌套在班级中的学生数据，这些班级又嵌套在学校中。

{phang}
{bf:NLME 模型}。参见 {help me_glossary##NLMEmodel:{it:非线性混合效应模型}}。

{marker NLMEmodel}{...}
{phang}
{bf:非线性混合效应模型}。一种模型，在给定随机效应时，其条件均值函数是固定和随机效应的非线性函数。线性混合效应模型是非线性混合效应模型的特例。

{phang}
{bf:单层模型}。单层模型没有多层结构和随机效应。线性回归是一个单层模型。

{marker overdispersion}{...}
{phang}
{bf:超分散}。在计数数据模型中，当数据中的变化量大于认为该过程为泊松时的预期时，即发生超分散。

{marker posterior_mean}{...}
{phang}
{bf:后验均值}。在广义线性混合效应模型中，后验均值指基于后验分布均值的随机效应预测。

{marker posterior_mode}{...}
{phang}
{bf:后验模式}。在广义线性混合效应模型中，后验模式指基于后验分布模式的随机效应预测。

{phang}
{bf:QR 分解}。QR 分解是增强数据矩阵的正交三角分解，用于加速对数似然的计算；详见 {it:{mansection ME mixedMethodsandformulas:方法与公式}} 在 {bf:[ME] mixed} 中。

{phang}
{bf:积分法}。积分法是一组评估定积分的数值方法。

{phang}
{bf:随机系数}。在混合效应模型的背景下，随机系数是固定效应方程中的斜率对应物。您可以将随机系数视为在特定嵌套层次上随机变化的斜率。

{marker random_effects}{...}
{phang}
{bf:随机效应}。在混合效应模型的背景下，随机效应代表可能在不同嵌套层次上随组变化的效应。在 ANOVA 文献中，随机效应代表因子的水平，推断可以推广到研究中观察到的水平所代表的基础总体。另请参见 {it:{help xt_glossary##randomeffects_model:随机效应模型}} 在 {bf:[XT] 术语表}中。

{phang}
{bf:随机截距}。在混合效应模型的背景下，随机截距是固定效应方程中的截距对应物。您可以将随机截距视为在特定嵌套层次上随机变化的截距。

{phang}
{bf:随机效应可替换表达式}。随机效应可替换表达式是包含随机效应项的 {help me_glossary##subexpr:可替换表达式}；参见 {mansection ME menlRemarksandexamplesRandom-effectssubstitutableexpressions:{it:随机效应可替换表达式}} 在 {bf:[ME] menl} 中。

{phang}
{bf:REML}。参见 {it:{help me_glossary##REML:限制最大似然}}。

{marker repeatedDDF}{...}
{phang}
{bf:重复自由度 (DDF) 方法}。该方法使用重复测量 ANOVA 计算 DDF。它适用于具有球形相关误差结构的平衡重复测量设计。它将剩余自由度划分为组间自由度和组内自由度。重复方法仅支持双级模型。对于更复杂的混合效应模型或不平衡数据，该方法通常导致对检验统计量实际抽样分布的较差近似。

{phang}
{bf:残差协方差}, {bf:残差误差协方差}。参见 {help me_glossary##error_covariance:{it:误差协方差}}。

{phang}
{bf:残差自由度 (DDF) 方法}。该方法使用剩余自由度 n - rank(X) 作为所有固定效应检验的 DDF。对于没有随机效应且误差相互独立且同分布的线性模型，固定效应的检验统计量的分布是带有残差 DDF 的 t 或 F 分布。对于其他混合效应模型，该方法通常导致对检验统计量实际抽样分布的较差近似。

{marker REML}{...}
{phang}
{bf:限制最大似然}。限制最大似然是一种拟合线性混合效应模型的方法，涉及将固定效应转化以专注于方差成分估计。

{phang}
{bf:Satterthwaite 自由度 (DDF) 方法}。该方法实现了 {help me_glossary##S1946:Satterthwaite (1946)} 对复杂线性混合效应模型的未知抽样分布的近似的一种推广。该方法仅支持限制最大似然估计。

{marker subexpr}{...}
{phang}
{bf:可替换表达式}。可替换表达式类似于涉及标量和变量的任何其他数学表达式，例如您在 Stata 的 {cmd:generate} 命令中使用的表达式，只是要估计的参数被束缚在大括号内。参见 {mansection ME menlRemarksandexamplesSubstitutableexpressions:{it:可替换表达式}} 在 {bf:[ME] menl} 中。

{phang}
{bf:三层模型}。三层混合效应模型具有一层观察和两层分组。假设您拥有一个数据集，该数据集由医院的医生监督的患者组成，并且每位医生在一家医院执业。那么三层模型将包含一组随机效应以控制医院特定变异，第二组随机效应以控制医院内医生特定随机变异，以及一个随机误差项以控制患者的随机变异。

{phang}
{bf:两层模型}。两层混合效应模型具有一层观察和一层分组。假设您拥有一个面板数据集，其中包含医院的患者；两层模型将在医院层（第二层）有一组随机效应以控制医院特定的随机变异，并在观察层（第一层）有一个随机误差项以控制医院内的变异。

{phang}
{bf:方差成分}。在混合效应模型中，方差成分指各种随机效应的方差和协方差。

{marker withingrouperrors}{...}
{phang}
{bf:组内误差}。在观察值嵌套在组内的两层模型中，组内误差指的是观察层的误差项。在更高层次的模型中，它们指的是在 {help me_glossary##lowestlevelgroup:最低层组} 内的误差。

{marker references}{...}
{title:参考文献}

{marker KW1997}{...}
{phang}
Kenward, M. G., 和 J. H. Roger. 1997. 从限制最大似然中对固定效应的小样本推断。{it:生物统计学} 53: 983-997。

{marker LB1990}{...}
{phang}
Lindstrom, M. J., 和 D. M. Bates. 1990. 用于重复测量数据的非线性混合效应模型。{it:生物统计学} 46: 673-687。

{marker S1946}{...}
{phang}
Satterthwaite, F. E. 1946. 方差成分估计的近似分布。{it:生物统计学公告} 2: 110-114。
{p_end}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <me_glossary.sthlp>}