{smcl}
{* *! version 1.0.17  22may2019}{...}
{vieweralsosee "[SEM] 术语表" "mansection SEM Glossary"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[SEM] sem 和 gsem" "help sem_zh"}{...}
{viewerjumpto "描述" "sem_glossary_zh##description"}{...}
{viewerjumpto "术语表" "sem_glossary_zh##glossary"}{...}
{viewerjumpto "参考" "sem_glossary_zh##reference"}
{help sem_glossary:English Version}
{hline}{...}
{p2colset 1 15 17 2}{...}
{p2col:{bf:[SEM] 术语表}}{p_end}
{p2col:({mansection SEM Glossary:查看完整 PDF 手册条目})}{p_end}
{p2colreset}{...}


{marker description}{...}
{title:描述}

{p 4 4 2}
请阅读。以下定义的术语在整个文档中使用，有时没有解释。


{marker glossary}{...}
{title:术语表}

{phang}
{marker ADF}{...}
{bf:ADF}, {bf:method(adf)}.
        ADF 代表渐近分布自由，是用于获取标准线性 SEM 拟合参数的一种方法。
	当指定 {cmd:method(adf)} 选项时，{cmd:sem} 会使用 ADF。 其他可用的方法
        包括 {help sem_glossary##ML:最大似然估计 (ML)}、{help sem_glossary##QML:准最大似然估计 (QML)} 和
	{help sem_glossary##MLMV:缺失值下的最大似然估计 (MLMV)}。

{phang}
{marker anchoring}{...}
{bf:anchoring}, {bf:anchor variable}.
        如果潜在变量与锚定变量之间的路径系数被限制为 1，则该变量被称为潜在变量的锚定。
        {cmd:sem} 和 {cmd:gsem} 使用锚定作为标准化潜在变量的一种方法，从而识别模型。

{phang}
{marker baseline_model}{...}
{bf:基线模型}。
        基线模型是一种协方差模型，即在没有其他路径的情况下，观察变量的拟合均值和协方差模型，
        大多数协方差被限制为 0。也就是说，基线模型是拟合均值和方差的模型，但通常不是所有
        协方差。另请参见 
	{it:{help sem_glossary##saturated_model:饱和模型}}。
	基线模型仅适用于标准线性 SEM。

{phang}
{bf:Bentler-Weeks 矩阵}。
     Bentler 和 Weeks 的 {help sem glossary##Bentler1980:(1980)}
     标准线性 SEM 的表达方式将结果放置在围绕结果计算方式的多个矩阵中。请参见 
     {helpb sem estat framework:[SEM] estat framework}。

{marker bootstrap}{...}
{phang}
{bf:bootstrap}, {bf:vce(bootstrap)}.
引导法是一种重复方法，用于获取方差估计。
考虑一个估计方法 E 用于估计 theta。让 theta-hat 成为将 E 应用到包含 N 个观察值的数据集 D 的结果。
引导法是一种获取 theta-hat 方差估计的方法，通过反复估计 theta_1-hat、theta_2-hat 等，
每个 theta_i-hat 是将 E 应用到从 D 中带替换抽取的 N 大小数据集的结果。
请参见 {helpb sem option method:[SEM] sem option method()} 和
{help bootstrap_zh:[R] bootstrap}。

{pmore}
{cmd:vce(bootstrap)} 可与 {cmd:sem} 一起使用，但不能与 {cmd:gsem} 一起使用。
您可以通过在 {cmd:gsem} 命令前加上 {cmd:bootstrap:} 来获取引导结果，
但如果您正在拟合一个多层模型，请记得指定 {cmd:bootstrap} 的 {cmd:cluster()} 和
{cmd:idcluster()} 选项。请参见 {manlink SEM Intro 9}。

{marker Builder}{...}
{phang}
{bf:Builder}。
     Builder 是 Stata 用于构建 {cmd:sem} 和
     {cmd:gsem} 模型的图形界面。 Builder 也被称为 SEM Builder。
     参见 {manlink SEM Intro 2}、{help sem_builder_zh:[SEM] Builder} 和
     {help gsem_builder_zh:[SEM] Builder, generalized}。

{marker categorical_latent_variable}{...}
{phang}
{bf:categorical latent variable}。
      一个分类潜在变量具有表示人群中未观察到的组的水平。
      潜在类别与分类潜在变量的水平相关，并可能表示健康和不健康的个体、具有不同购买偏好的消费者，或者
      违法行为的不同动机。图形 SEM 允许分类潜在变量，但标准 SEM 不允许。参见
      {manhelp gsem_lclass_options SEM:gsem lclass options} 和
      {manlink SEM Intro 2}。

{phang}
{bf:CFA}, {bf:CFA models}。
        CFA 代表确认性因子分析。它是一种分析测量模型的方法。
        CFA 模型是
        {help sem_glossary##measurement_models:测量模型} 的同义词。

{phang}
{marker cluster}{...}
{bf:cluster}, {bf:vce(cluster clustvar)}.
        Cluster 是我们用于广义 Huber/White/sandwich 估计的 VCE 名称，
        这是 {cmd:robust} 技术的推广，放宽了错误在观察值间独立假设以至于在观察值集群间独立。
        在集群内，误差可能相关。
        
{pmore}
        当 {cmd:sem} 或 {cmd:gsem} 的选项 {cmd:vce(cluster} {it:clustvar}{cmd:)} 被指定时，将报告集群标准误。
        其他可用的技术有
	{help sem_glossary##OIM:OIM}，
	{help sem_glossary##OPG:OPG}，
	{help sem_glossary##robust:robust}，
	{help sem_glossary##bootstrap:bootstrap} 和
	{help sem_glossary##jackknife:jackknife}。
	仅适用于 {cmd:sem} 的其他技术是
        {help sem_glossary##EIM:EIM}。

{marker coefdeter}{...}
{phang}
{bf:决定系数}。
        决定系数是由模型方程解释的变化（方差）的百分比（或分数）。因此，决定系数类似于线性回归中的 R^2。

{phang}
{bf:command language}。
        Stata 的 {cmd:sem} 和 {cmd:gsem} 命令提供了一种指定
        SEM 的方法。替代方案是使用 Builder 
        绘制路径图；参见 {manlink SEM Intro 2}，
	{helpb Builder:[SEM] Builder} 和
	{helpb Builder_generalized:[SEM] Builder, generalized}。

{phang}
{bf:conditional normality assumption}。
        请参见
        {it:{help sem glossary##normality_assumption:正态性假设，联合与条件}}。

{phang}
{bf:constraints}。请参见
     {it:{help sem glossary##parameter_constraints:参数约束}}。

{marker continuous_latent_variable}{...}
{phang}
{bf:continuous latent variable}。
    连续潜在变量是未观察到的变量，例如数学能力，其值假定遵循连续分布。
    {cmd:sem} 和 {cmd:gsem} 都允许假定遵循高斯分布的连续潜在变量，均值和方差可以是
    估计的或被约束为特定值以便于识别。请参见
    {help sem_glossary##identification:{it:识别}}。

{phang}
{bf:correlated uniqueness model}。
        相关独特性模型是一种测量模型，其中测量的误差具有结构相关性。请参见 {manlink SEM Intro 5}。

{phang}
{bf:crossed-effects models}。
	请参见 {it:{help sem glossary##multilevel_models:多层模型}}。

{phang}
{bf:curved path}。
	请参见 {it:{help sem glossary##path:path}}。

{phang}
{bf:degree-of-freedom adjustment}。
        在方差和协方差的估计中，有时应用有限样本的一般自由度调整，以使估计值无偏。

{pmore}
        让我们将估计方差写为 sigma_ii hat，并写出公式为
        sigma_ii hat = S_ii/N。如果 sigma_ii hat 是可观察变量 x_i 的方差，可以容易地证明 S_ii/N
        在大小为 N 的样本中是方差的有偏估计，而 S_ii/(N-1) 是无偏估计。通常，
        使用 S_ii/(N-1) 来计算方差，这意味着“标准”公式应用了 N/(N-1) 的乘法自由度调整。

{pmore}
        若 Sigma_ii hat 是估计参数 beta_i 的方差，则有时可以推导出类似的有限样本自由度调整，使估计无偏。
        例如，如果 beta_i 是线性回归的系数，则回归系数 beta_i 的方差的无偏估计为 S/(N-p-1)，其中 p 是总
        回归系数的数量，不包括截距。在其他情况下，不能推导出这样的调整。
        这样的估计器没有可推导的有限样本特性，只能依靠其可证明的渐近特性提供保证。
        在这种情况下，系数 beta_i 的方差计算为 S/N，可从理论上推导出。SEM 是这种
        估计器的一个例子。

{pmore}
        SEM 是一种灵活的估计器，可以重现有时可以被其他估计器估计的结果。SEM 可能会产生渐近等效的结果，或者根据
        估计器的不同可能会产生相同的结果。线性回归就是一个例子，在这种情况下，{cmd:sem} 和 {cmd:gsem} 产生与
        {cmd:regress} 相同的结果。然而，报告的标准误差可能不会完全相同，因为线性回归估计已经应用了有限样本
        自由度调整，而 SEM 估计则没有。要查看等效性，您必须通过将报告的线性回归标准误差乘以 
        sqrt{(N-p-1)/N} 来取消调整。

{phang}
{marker direct}{...}
{bf:直接效应}、{bf:间接效应} 和 {bf:总效应}。
         考虑以下方程组：

            y_1 = b_10 + b_11 y_2 + b_12 x_1 + b_13 x_3 + e_1
            y_2 = b_20 + b_21 y_3 + b_22 x_1 + b_23 x_4 + e_2
            y_3 = b_30 + b_32 x_1 + b_33 x_5 + e_3

{pmore}
         x_1 对 y_1 的总效应是 
         b_12 + b_11 b_22 + b_11 b_21 b_32。  
         它衡量允许 x_1 在系统中变化对 y_1 的完全影响。

{pmore}
         x_1 对 y_1 的直接效应是 b_12。它度量了在保持其他内生变量（即 y_2 和 y_3）不变的情况下，x_1 的变化引起的
         y_1 的变化。

{pmore}
         x_1 对 y_1 的间接效应通过减去总效应和直接效应获得，因此为 b_11 b_22 + b_11 b_21 b_32。

{phang}
{marker EIM}{...}
{bf:EIM}, {bf:vce(eim)}.
        EIM 代表期望信息矩阵，定义为二阶导数矩阵（通常为对数似然函数的负期望值）的逆。
        EIM 是 VCE 的估计。当指定 {cmd:sem} 选项 {cmd:vce(eim)} 时，会报告 EIM 标准误。
	EIM 仅适用于 {cmd:sem}。
        {cmd:sem} 的其他可用技术包括
	{help sem_glossary##OIM:OIM}，
	{help sem_glossary##OPG:OPG}，
        {help sem_glossary##robust:robust}，
        {help sem_glossary##cluster:cluster}，
        {help sem_glossary##bootstrap:bootstrap} 和
        {help sem_glossary##jackknife:jackknife}。

{phang}
{marker endogenous_variable}{...}
{bf:内生变量}。
        如果有任何路径指向某个变量，则该变量（观察或潜在）是内生的（由系统决定的）。另请参见
        {it:{help sem glossary##exogenous_variable:外生变量}}。

{phang}
{marker error}{...}
{bf:错误}、{bf:误差变量}。
        错误是在一个线性方程中的随机干扰 e： 

		y = b_0 + b_1 x_1 + b_2 x_2 + ... + e

{pmore}
        误差变量是在路径图中对应于 e 的未观察到的内生变量。 在数学上，误差变量只是
        潜在内生变量的另一个例子，但在 {cmd:sem} 和 {cmd:gsem} 中，误差变量被视为一个单独的类别。
        所有内生变量（观察和潜在）都有相应的误差变量。误差变量的路径系数自动固定为 1。
        软件中对误差变量有固定的命名约定。如果一个变量是（观察或潜在）内生变量 {cmd:y} 的误差，
        那么残差变量的名称是 {cmd:e.y}。

{pmore}
        在 {cmd:sem} 和 {cmd:gsem} 中，除非明确表示，否则误差变量彼此之间不相关。该指示
        是通过在误差变量之间绘制曲线路径表示的，并在命令符号中通过在 {cmd:sem} 命令指定的选项中包含
        {cmd:cov(e.}{it:name1}{cmd:*e.}{it:name2}{cmd:)} 来表示。
  在 {cmd:gsem} 中，具有高斯家族的错误，不允许相关的 log 响应。

{phang}
{bf:estimation method}。
        有多种方法可以求解 SEM 的参数。不同的方法对数据生成过程作出不同的假设，
        因此，选择适合您的模型和数据的方法十分重要；请参阅 {manlink SEM Intro 4}。

{phang}
{marker exogenous_variable}{...}
{bf:外生变量}。
        如果路径仅从某个变量出发，或者等效地，没有路径指向该变量，则该变量（观察或潜在）是外生的（由
        系统外部决定）。在本手册中，我们不区分外生变量是否严格外生——即，与误差无关。另请参见
        {it:{help sem glossary##endogenous_variable:内生变量}}。

{phang}
{bf:family distribution}。请参见
     {it:{help sem glossary##generalized_linear_response_functions:广义线性响应函数}}。

{phang}
{bf:fictional data}。
        虚构数据是指没有现实基础的数据，即使它们看起来真实；它们是为示例而编造的数据。

{phang}
{bf:finite mixture model}。
        有限混合模型 (FMM) 是一种
        {help sem_glossary##latent_class_model:潜在类模型}，
        其中回归模型的参数允许在不同类别之间变化。回归模型可以是线性或
        {help sem_glossary##generalized_linear_response_functions:广义线性响应函数}。

{phang}
{marker first_order_variables}{...}
{bf:一阶和二阶潜在变量}。
        如果潜在变量仅由其他潜在变量测量，
        对于执行测量的潜在变量称为一阶潜在变量，
        被测量的潜在变量称为二阶潜在变量。

{marker first_level_variables}{...}
{phang}
{bf:一层、二层和更高层（潜在）变量}。
        考虑一个多层模型，其中患者在医生之下，在医院之内。
        第一层变量是变动于观察（患者）层面的变量。第二层变量在医生之间变化，但在医生内是不变的。
        第三层变量在医院之间变化，但在医院内是不变的。
        这个术语无论变量是潜在的还是观察到的都适用。

{phang}
{bf:full joint and conditional normality assumption}。
        请参见
        {it:{help sem glossary##normality_assumption:正态性假设，联合与条件}}。

{phang}
{bf:gamma regression}。
     Gamma 回归是广义线性响应函数的一个术语，即属伽马分布，链接为 log。
     它用于连续、非负、正偏数据。
     Gamma 回归在 Stata 领域也被称为 log-gamma 回归。请参见
     {it:{help sem glossary##generalized_linear_response_functions:广义线性响应函数}}。

{phang}
{bf:Gaussian regression}。
     高斯回归是线性回归的另一个术语。
     在涉及广义线性响应函数时，通常使用。 在该框架中，高斯回归属高斯家族，链接为恒等。请参见
     {it:{help sem glossary##generalized_linear_response_functions:广义线性响应函数}}。

{marker generalized_linear_response_functions}{...}
{phang}
{bf:广义线性响应函数}。
        广义线性响应函数包括线性函数，以及
        probit、logit、 multinomial logit、ordered probit、 ordered logit、
        Poisson 等函数。

{pmore}
	这些广义线性函数通过链接函数 g() 和统计分布 F 来描述。链接函数 g() 指定响应变量 y_i
        与解释变量的线性方程 {bf:x}_i beta 之间的关系，家族 F 指定 y_i 的分布：

                g{E(y_i)} = {bf:x}_i beta,     y_i ~ F

{pmore}
        如果我们指定 g() 为恒等函数，$F$ 为高斯（正态）分布，则我们得到了线性回归。如果我们指定
        g() 为 logit 函数，并且 F 为伯努利分布，则我们得到了 logit（逻辑斯蒂）回归。

{pmore}
        在这个广义线性结构中，家族可能是高斯、伽马、伯努利、二项式、Poisson、
        负二项式、有序或多项式。
        链接函数可以是恒等、对数、logit、probit 或补充 log-log。

{pmore}
        {cmd:gsem} 适用于具有广义线性响应函数的模型。

{marker GMM}{...}
{phang}
{bf:广义矩估计}。
        广义矩估计（GMM）是一种用于获取拟合参数的方法。
        在本手册中，GMM 被称为 {help sem_glossary##ADF:ADF}，
        其代表渐近分布自由，并可用于 {cmd:sem}。
        {cmd:sem} 的其他可用方法有
	{help sem_glossary##ML:ML}，
        {help sem_glossary##QML:QML}，
        {help sem_glossary##ADF:ADF} 和
	{help sem_glossary##MLMV:MLMV}。

{pmore}
        SEM 的矩条件以二阶矩的形式呈现，
        而不是许多与 GMM 相关的应用中使用的第一矩。

{marker generalized_SEM}{...}
{phang}
{bf:广义 SEM}。
        广义 SEM 是我们创造的一个术语，表示 SEM 可选地允许 
     {help sem glossary##generalized_linear_response_functions:广义线性响应函数}， 
     {help sem glossary##multilevel_models:多层模型}，
        或
     {help sem glossary##categorical_latent_variable:分类潜在变量}。
        {cmd:gsem} 拟合广义 SEM。

{phang}
{bf:GMM}。
        请参见 {it:{help sem glossary##GMM:广义矩估计}}。

{phang}
{bf:goodness-of-fit statistic}。
        拟合优度统计量是一个数值，用于衡量模型在多大程度上重现
        模型期望拟合的数据的某种特征。SEM 重现
        数据的第一和第二次矩（更强调第二次矩），因此拟合优度统计量
        在使用 {cmd:sem} 后，与观察到的协方差矩阵（和均值向量）进行比较，反映模型的质量。

{marker gsem}{...}
{phang}
{bf:gsem}。
        {cmd:gsem} 是 Stata 用于拟合广义 SEM 的命令。
	另请参见 {it:{help sem_glossary##sem:sem}}。

{phang}
{bf:GUI}。
        请参见
	{it:{help sem glossary##Builder:Builder}}。

{phang}
{marker identification}{...}
{bf:识别}。
        识别是对模型参数的概念约束，这些约束是模型中其余参数具有唯一解的必要条件。
        如果没有提供这些约束，则表示模型是未识别的。
        这些约束有两种类型：实质性约束和标准化约束。

{pmore}
        标准化约束与每个连续潜在变量一个尺度能够与另一个尺度相容的问题有关。
        例如，可以将倾向于编写软件的程度视为在 0 到 1、1 到 100 或其他任何尺度上进行测量。
        标准化约束是选择特定尺度所需的约束。标准化约束由 {cmd:sem} 和
        {cmd:gsem} 自动提供，使用带单位载荷的 
	{help sem glossary##anchoring:锚定}。

{pmore}
        实质性约束是您指定关于模型的约束，以便使其具有实质内容。通常，这些约束是
        路径省略所暗示的 0 约束，
        但也可以包括显式参数约束。很容易编写一个因实质性原因未被识别的模型；
        请参阅 {manlink SEM Intro 4}。

{phang}
{marker indicator_variables}{...}
{bf:indicator variables}, {bf:指标}。
	“指标变量”一词有两个不同的含义。一个指标变量
	是一个 0/1 的变量，表示某种情况为真。
        另一个用法是作为
	{help sem glossary##measurement_variables:测量变量} 的同义词。

{phang}
{bf:indirect effects}。请参见
       {it:{help sem glossary##direct:直接、间接和总效应}}。

{phang}
{bf:initial values}。请参见
       {it:{help sem glossary##starting_values:初始值}}。

{phang}
{marker intercept}{...}
{bf:截距}。
        内生变量 y 的方程的截距，观察到的或潜在的，是从 {cmd:_cons} 到 y 的路径系数。
        {cmd:_cons} 是 Stata 术语，表示包含 
        所有观察值为 1 的内置变量。在 SEM 术语中，{cmd:_cons} 是一个
        观察到的外生变量。

{marker jackknife}{...}
{phang}
{bf:jackknife}, {bf:vce(jackknife)}.
Jackknife 是一种获取方差估计的重复方法。
考虑一个估计方法 E 用于估计 theta。让 theta-hat 成为将 E 应用到包含 N 个观察值的数据集 D 的结果。
Jackknife 是一种获取 theta-hat 方差估计的方法，通过反复估计 theta_1-hat、theta_2-hat 等，theta_N-hat，
每个 theta_i-hat 是将 E 应用到 D 的结果，去掉观察值 i。
请参见 {helpb sem option method:[SEM] sem option method()} 和
{help jackknife_zh:[R] jackknife}。

{pmore}
{cmd:vce(jackknife)} 允许与 {cmd:sem} 一起使用，但不允许与 {cmd:gsem} 一起使用。
您可以通过在 {cmd:gsem} 命令前加上 {cmd:jackknife:} 来获取 jackknife 结果，
但是当您拟合多层模型时，请记得指定 {cmd:jackknife} 的 {cmd:cluster()} 和 {cmd:idcluster()} 选项。
请参见 {manlink SEM Intro 9}。

{phang}
{bf:joint normality assumption}。
        请参见 
        {it:{help sem glossary##normality_assumption:正态性假设，联合与条件}}。

{phang}
{bf:Lagrange multiplier tests}。
        这是 {help sem glossary##score_tests:得分检验} 的同义词。

{marker latent_class_analysis}{...}
{phang}
{bf:潜在类分析}。
        潜在类分析有助于识别和理解人群中未观察到的组。在进行潜在类分析时，我们拟合包括
        {help sem_glossary##categorical_latent_variable:分类潜在变量}
        的模型，这些分类潜在变量的水平对应于未观察到的组。
        在潜在类分析中，我们可以比较具有不同数量潜在类和不同参数约束集合的模型，以确定拟合最佳的模型。
        针对给定模型，我们可以比较各类之间的参数估计。
        我们可以估计每个潜在类中人群的比例。我们还可以预测样本中个体属于每个潜在类的概率。

{marker latent_class_model}{...}
{phang}
{bf:潜在类模型}。
        任何具有
        {help sem_glossary##categorical_latent_variable:分类潜在变量}
        的模型，可作为
        {help sem_glossary##latent_class_analysis:潜在类分析} 的一部分进行拟合。
        在一些文献中，潜在类模型更狭义地被定义为仅包含分类潜在变量和指示类成员资格的二元或分类观察变量，
        但是我们不做这样的限制。请参见 {manlink SEM Intro 5}。

{phang}
{bf:latent cluster model}。
	一种具有连续观察结果的 {help sem_glossary##latent_class_model:潜在类模型}。

{phang}
{bf:latent growth model}。
        潜在增长模型是一种测量模型，其中观察值在时间内收集，并允许遵循趋势。参见 {manlink SEM Intro 5}。
        
{phang}
{bf:latent profile model}。
        一种具有连续观察结果的 {help sem_glossary##latent_class_model:潜在类模型}。

{phang}
{marker latent_variable}{...}
{bf:latent variable}。
        如果一个变量没有被观察到，它就是潜在变量。您希望有一个变量记录暴力犯罪倾向、社会经济地位、
        幸福感、真实能力，甚至收入的准确记录。但在您的数据集中并未观察到这些变量。潜在变量有时被描述为假想变量。

{pmore}
        在软件中，潜在变量通常通过其首字母大写来指示。

{pmore}
        另请参见
	{help sem_glossary##continuous_latent_variable:{it:连续潜在变量}},
       {help sem_glossary##categorical_latent_variable:{it:分类潜在变量}},
        {it:{help sem glossary##first_order_variables:一阶和二阶潜在变量}},
        {it:{help sem glossary##first_level_variables:一层、二层和更高层（潜在）变量}},
        和
	{it:{help sem glossary##observed_variables:观察变量}}。

{phang}
{bf:linear regression}。
        线性回归是一种 SEM 
       ，其中包含一个方程。 
        参见 {manlink SEM Intro 5}。

{phang}
{bf:link function}。
        请参见
     {it:{help sem glossary##generalized_linear_response_functions:广义线性响应函数}}。

{phang}
{bf:logit regression}。
     Logit 回归是广义线性响应函数的一个术语，属于伯努利分布，链接为 logit。
     它用于二元结果数据。
     Logit 回归在 Stata 中也被称为逻辑回归，简称 logit。请参见
     {it:{help sem glossary##generalized_linear_response_functions:广义线性响应函数}}。

{phang}
{bf:manifest variables}。
        意思是 {help sem glossary##observed_variables:观察变量} 的同义词。

{phang}
{bf:measure}、{bf:measurement}、{bf:x 是 X 的测量}、{bf:x 测量 X}。
        请参见
	{it:{help sem glossary##measurement_variables:测量变量}}。

{phang}
{marker measurement_models}{...}
{bf:测量模型}、{bf:测量组件}。
        测量模型是一种特定类型的模型，解决将观察值转换为适合建模的值的问题。
        测量模型通常与结构模型结合使用，然后测量模型部分称为测量组件。
        请参见 {manlink SEM Intro 5}。

{phang}
{marker measurement_variables}{...}
{bf:测量变量}、{bf:测量}、{bf:x 是 X 的测量}、{bf:x 测量 X}。
        如果存在连接 x-> X 的路径，则观察变量 x 是潜在变量 X 的测量。测量变量由测量模型建模。
        测量变量也称为 {help sem glossary##indicator_variables:指标变量}。

{phang}
{bf:method}。
        方法是一个英语词，在特定的上下文中理解。
        尽管如此，此处通常用于指代用于求解 SEM 的拟合参数的方法。
	这些方法包括
	{help sem_glossary##ML:最大似然估计 (ML)}、
        {help sem_glossary##QML:准最大似然估计 (QML)}、 
	{help sem_glossary##MLMV:缺失值下的最大似然估计 (MLMV)} 和
	{help sem_glossary##ADF:ADF}。另请参见
        {it:{help sem_glossary##technique:技术}}。

{phang}
{bf:MIMIC}。请参见
        {it:{help sem_glossary##MIMIC:多指标与多因}}。

{phang}
{bf:mixed-effects models}。请参见
        {it:{help sem_glossary##multilevel_models:多层模型}}。

{phang}
{marker ML}{...}
{bf:ML}, {bf:method(ml)}。
        ML 代表最大似然估计。这是一种用于获取拟合参数的方法。 ML 是 {cmd:sem} 和 {cmd:gsem} 的默认方法。
        {cmd:sem} 的其他可用方法有
	{help sem_glossary##QML:QML}、 
	{help sem_glossary##MLMV:MLMV} 和
	{help sem_glossary##ADF:ADF}。
	对于 {cmd:gsem}，还有 
	{help sem_glossary##QML:QML} 可用。

{phang}
{marker MLMV}{...}
{bf:MLMV}, {bf:method(mlmv)}。
	MLMV 代表包含缺失值的最大似然估计。这是一种在缺失值存在的情况下获取拟合参数的 ML 方法。
	当指定 {cmd:method(mlmv)} 选项时，{cmd:sem} 和 {cmd:gsem} 使用 ML； {cmd:method(mlmv)} 不适用于 {cmd:gsem}。
        可用于 {cmd:sem} 的其他方法有
	{help sem_glossary##ML:ML}、 
	{help sem_glossary##QML:QML} 和 {help sem_glossary##ADF:ADF}。
	这些其他方法在计算中省略包含缺失值的观察值。

{phang}
{bf:modification indices}。
	修正指数是在没有出现路径的情况下添加路径的得分检验。路径可以是系数或协方差。

{phang}
{bf:moments (of a distribution)}。
        分布的矩是随机变量或中心（去均值）随机变量的幂的期望值。用于此处，第一矩是期望或观察均值，
        第二矩是期望或观察到的方差和协方差。

{marker multilevel_models}
{phang}
{bf:多层模型}。
        多层模型包括数据中不同组的未观察到的效应（潜在变量）。
        例如，在学生的数据集中，学生组可能与同一教师共享。
        如果教师的身份记录在数据中，则可以引入一个在教师内保持不变并在教师之间变化的潜在变量。
        这称为二层模型。

{pmore}
        如果教师又可以被分组到学校中，并且学校身份记录在数据中，则可以引入另一个在学校内保持不变并在学校之间变化的潜在变量。
        这称为三层（嵌套效应）模型。

{pmore}
        在上面的例子中，观察值（学生）被认为嵌套在教师下，嵌套在学校内。有时没有这种后续嵌套结构。
        考虑在职业和行业内的工人。相同的职业出现在各种行业中，相同的行业出现在各种职业中。
        我们仍然可以在职业和行业层级引入潜在变量。在这种情况下，模型被称为交叉效应模型。

{pmore}
        我们讨论的潜在变量也称为随机效应。模型中观察变量的任何系数称为模型的固定部分。
        同时包含固定和随机部分的模型称为混合效应模型。

{phang}
{bf:multinomial logit regression}。
     多项式 logit 回归是广义线性响应函数的一个术语，属于多项式家族，链接为 logit。
     它用于类别结果数据，当结果不能排序时使用。多项式 logit 回归在 Stata 中也称为多项式逻辑回归，以简称 mlogit。
     请参见 {it:{help sem glossary##generalized_linear_response_functions:广义线性响应函数}}。

{phang}
{bf:multiple correlation}。
	多重相关性是内生变量 y 与其线性预测之间的相关性。

{marker MIMIC}{...}
{phang}
{bf:多指标与多因}。 
	多指标与多因是一种结构模型，其中观察到的因果关系决定一个潜在变量，
	而该潜在变量又决定多个指标。请参见
        {manlink SEM Intro 5}。

{phang}
{marker multivariate_regression}{...}
{bf:多元回归}。
        多元回归是一种结构模型，其中一组观察内生变量的每个成员都是同一组观察外生变量的函数，
        及唯一的随机干扰项。干扰项是相关的。多元回归是
        {help sem glossary##SUREG:表面无关回归} 的特殊情况。

{phang}
{bf:negative binomial regression}。
     负二项回归是广义线性响应函数的一个术语，属于负二项家族，链接为 log。
     它用于相对 Poisson 的计数数据，且分散度较大。
     负二项回归在 Stata 中也称为 nbreg。请参见
     {it:{help sem glossary##generalized_linear_response_functions:广义线性响应函数}}。

{phang}
{bf:nested-effects models}。
        请参见
     {it:{help sem glossary##multilevel_models:多层模型}}。


{phang}
{marker nonrecursive_models}{...}
{bf:非递归（结构）模型（系统）}、 
{bf:递归（结构）模型（系统）}。
        如果存在一个或多个内生变量之间双向路径，则该结构模型（系统）被称为非递归。如果系统是递归的 - 它是一种具有内生变量的系统且存在路径从它们出发的系统 - 则它不是非递归的。

{pmore}
        非递归模型可能是不稳定的。考虑：

            y_1 = 2 y_2 + 1 x_1 + e_1
            y_2 = 3 y_1 - 2 x_2 + e_2

{pmore}
        该模型不稳定。为了理解，无损失的一般性，可以将 x_1 + e_1 和  2x_2 + e_2 看作都是 0。考虑
	y_1 = 1 和 y_2 = 1。这些值将结果变为
	y_1 = 2 和 y_2 = 3，之后产生新的值
	y_1 = 6 和 y_2 = 6，之后又产生新的值 ....
	继续以这种方式，您会得到两个内生变量的无穷大。在用于检查该特性的数学术语中，系数矩阵的特征值位于单位圆以外。

{pmore}
        另一方面，考虑以下值：

            y_1 = 0.5 y_2 + 1 x_1 + e_1
            y_2 = 1.0 y_1 - 2 x_2 + e_2

{pmore}
        这些结果是稳定的，因为结果值收敛到 y_1 = 0 和 y_2 = 0。在用于检查该特性的数学术语中，系数矩阵的特征值在单位圆内。

{pmore}
        最后，考虑这些值 

            y_1 = 0.5 y_2 + 1 x_1 + e_1
            y_2 = 2.0 y_1 - 2 x_2 + e_2

{pmore}
        从 y_1 = 1 和 y_2 = 1 开始。这将产生
        新值 y_1 = 0.5 和 y_2 = 2，进一步产生新值 y_1 = 1
        和 y_2 = 1，将再次产生新值 y_1 = 0.5 和 y_2 = 2，
        以此类推。根据用于检查该特性的数学术语，系数矩阵的特征值位于单位圆上。这些
        系数也被认为是不稳定的。

{marker normality_assumption}{...}
{phang}
{bf:正态性假设，联合与条件}。
    标准线性 SEM 估计器的推导通常假定观察变量和潜在变量的完全联合正态性。
    但是，完全联合正态性可以替代关于外生变量值条件的正态性假设，
    所失去的仅是一个拟合优度检验（由 {cmd:sem} 在输出中报告的检验）以及使用可选方法 MLMV 处理缺失值的合理性。
    对于不能合理假定观察变量正态性的研究人员，这个假设的替代非常重要。比如说，某个研究人员包括变量年龄和年龄的平方在其模型中。

{pmore}
    与此同时，广义 SEM 仅做条件
    正态性假设。

{pmore}
    请注意，即使标准线性 SEM 不要求完全联合正态性假设，{cmd:sem}
    在这一假设下计算对数似然值。除了 {cmd:sem} 的对数似然值不能与 
    {cmd:gsem} 报告的对数似然值进行比较外，这并不相关，而后者做了较小的假设。

{pmore}
    请参见 {manlink SEM Intro 4}。

{phang}
{bf:normalization constraints}。请参见
      {it:{help sem glossary##identification:识别}}。

{phang}
{bf:normalized residuals}。请参见
     {it:{help sem glossary##standardized_residuals:标准化残差}}。

{phang}
{marker observed_variables}{...}
{bf:观察变量}。
         一个变量已被观察到，如果它是您的数据集中的变量。在本手册中，我们通常通过使用 {cmd:x1}、 
         {cmd:x2}、...、{cmd:y1}、{cmd:y2} 等来引用观察变量；实际上，观察变量的名称如 {cmd:mpg}、 
         {cmd:weight}、{cmd:testscore} 等。

{pmore}
         在软件中，观察变量通常通过所有字母小写的名称来表示。

{pmore}
         另请参见 {it:{help sem glossary##latent_variable:潜在变量}}。

{phang}
{marker OIM}{...}
{bf:OIM}, {bf:vce(oim)}。
        OIM 代表观察信息矩阵，定义为二阶导数矩阵（通常为对数似然函数负数）的逆。
        OIM 是 VCE 的估计。 OIM 是 {cmd:sem} 和 {cmd:gsem} 报告的默认 VCE。
        其他可用的技术有
	{help sem_glossary##EIM:EIM}、
	{help sem_glossary##OPG:OPG}，
	{help sem_glossary##robust:robust}、
	{help sem_glossary##cluster:cluster}、
	{help sem_glossary##bootstrap:bootstrap} 和
	{help sem_glossary##jackknife:jackknife}。

{phang}
{marker OPG}{...}
{bf:OPG}, {bf:vce(opg)}。
        OPG 代表梯度外积，定义为观察层级的第一导数交叉乘积，通常为对数似然函数。
        OPG 是 VCE 的估计。其他可用的技术包括 
	{help sem_glossary##OIM:OIM}、
	{help sem_glossary##EIM:EIM}、
        {help sem_glossary##robust:robust}、
	{help sem_glossary##cluster:cluster}。
	{help sem_glossary##bootstrap:bootstrap} 和
	{help sem_glossary##jackknife:jackknife}。

{phang}
{bf:ordered complementary log-log regression}。
     有序补充 log-log 回归是广义线性响应
     函数的一个术语，属于有序家族，链接为 clog-log。
     它用于有序结果数据。
     有序补充 log-log 回归在 Stata 中也被称为 oclog-log。请参见
     {it:{help sem glossary##generalized_linear_response_functions:广义线性响应函数}}。

{phang}
{bf:ordered logit regression}。
     有序 logit 回归是广义线性响应
     函数的一个术语，属于有序家族，链接为 logit。
     它用于有序结果数据。
     有序 logit 回归也被称为有序逻辑回归，或简称有序 logit，并且在 Stata 中被称为 ologit。请参见
     {it:{help sem glossary##generalized_linear_response_functions:广义线性响应函数}}。

{phang}
{bf:ordered probit regression}。
     有序 probit 回归是广义线性响应
     函数的一个术语，属于有序家族，链接为 probit。
     它用于有序结果数据。
     有序 probit 回归通常被称为有序 probit，并且在 Stata 圈中被称为 oprobit。请参见
     {it:{help sem glossary##generalized_linear_response_functions:广义线性响应函数}}。

{phang}
{marker parameter_constraints}{...}
{bf:参数约束}。
         参数约束是对模型参数施加的限制。这些约束通常以 0 约束和等式约束的形式出现。
         例如，当未绘制连接 x 和 y 的路径时，隐含了 0 约束。
	当将一条路径系数强制平等于另一条或将一个协方差强制平等于另一条时，即为等式约束。

{pmore}
         另请参见 {it:{help sem glossary##identification:识别}}。
       
{phang}
{bf:parameters}, {bf:辅助参数}。
        参数是待估计系数的集合。
        包括所有路径系数、均值、方差和协方差。 在数学符号中，理论参数通常可以写为
        theta = (alpha, beta, mu,
        Sigma)，其中 alpha 是截距向量，
        beta 是路径系数向量，mu 是均值向量，Sigma 是方差和协方差的矩阵。
        得到的参数估计写为 theta hat。

{pmore}
	辅参数是除上述参数之外的额外参数，涉及分布。这些包括伽马回归的尺度参数、
	负二项回归的离散参数、及有序 probit、logit 和 clog-log 回归的截断点等。
	这些参数也包括在 theta 中。

{phang}
{marker path}{...}
{bf:path}。
        路径通常以箭头的形式从一个变量指向另一个变量，表明第一个变量由第二个变量决定，至少部分是如此。
        如果 x -> y，或者等效地 y <- x，那么
        y_j = alpha + ... + beta x_j + ... + e.y_j，
        其中 beta 被称为 x -> y 的路径系数。省略号用于表示 y 还受到其他变量的影响。
        alpha 被定义为截距，并且在指定到 y 的第一条路径时自动添加。

{pmore}
        曲线路径是连接两个变量的曲线，表明两个变量允许相关。如果变量之间没有曲线路径，则通常假定这些变量不相关。
        之所以通常如此，是因为观察到的所有外生变量是相关的，而在命令语言中，潜在变量之间也是相关的，
        如果不希望某些相关性，则必须抑制。许多作者提到协方差而非相关性。从严格意义上讲，曲线路径表示一个非零协方差。
        相关性通常称为 {help sem glossary##standardized_covariance:标准化协方差}。

{pmore}
        曲线路径可以将一个变量连接到它自身，在这种情况下，它指示方差。在本手册中的路径图中，我们通常不显示这样的方差路径，尽管假定有方差。

{phang}
{bf:path coefficient}。
        路径系数由路径指定；请参见 
       {it:{help sem glossary##path:path}}。
        另请参见 {it:{help sem glossary##intercept:截距}}。

{phang}
{bf:path diagram}。
        路径图是一个图形表示，显示一组变量之间的关系，使用 
       {help sem glossary##path:路径}。
        请参见 {manlink SEM Intro 2} 以获取路径图的描述。

{phang}
{bf:path notation}。
        路径符号是 Stata 相关作者为在
	命令语言中输入路径图而定义的语法。要拟合的模型可以在路径符号中指定，或者可以使用 Builder 绘图。

{phang}
{bf:Poisson regression}。
     Poisson 回归是广义线性响应函数的一个术语，属于 Poisson 家族，链接为 log。它用于计数数据。请参见
	{it:{help sem_glossary##generalized_linear_response_functions:广义线性响应函数}}。

{phang}
{bf:probit regression}。
     Probit 回归是广义线性响应函数的一个术语，属于伯努利分布，链接为 probit。它用于二元结果数据。
     Probit 回归也简单称为 probit。请参见
	{it:{help sem_glossary##generalized_linear_response_functions:广义线性响应函数}}。

{phang}
{bf:p-value}。
        P 值是与检验关联的报告的显著性水平的小值。小的 p 值表明拒绝原假设。

{phang}
{marker QML}{...}
{bf:QML}, {bf:method(ml) vce(robust)}。
        QML 代表准最大似然估计。这是一种用于获取拟合参数和相应 VCE 的技术。QML 仅在指定 {cmd:method(ml)} 和 {cmd:vce(robust)} 选项时由 {cmd:sem} 和 {cmd:gsem} 使用。
        可用的其他方法有
	{help sem_glossary##ML:ML}、
        {help sem glossary##MLMV:MLMV} 和
	{help sem_glossary##ADF:ADF}。
        其他可用技术有
	{help sem_glossary##OIM:OIM}、 {help sem_glossary##EIM:EIM}、
	{help sem_glossary##OPG:OPG}、
	{help sem_glossary##cluster:群集}，
	{help sem_glossary##bootstrap:引导法} 和
	{help sem_glossary##jackknife:拔靴法}。

{phang}
{bf:quadrature}。
	Quadrature 是一种执行数值积分的通用方法。
	{cmd:gsem} 在任何包括潜在变量的模型中使用 quadrature（不包括误差变量）。
	{cmd:sem} 由于仅限于线性模型，因此不需要执行 quadrature。

{phang}
{bf:随机效应模型}。
	请参见 {it:{help sem_glossary##multilevel_models:多层模型}}。


{phang}
{bf:回归}。
         回归是一种模型，其中内生变量写为其他变量、需估计的参数和随机扰动的函数。

{phang}
{bf:可靠性}。
         可靠性是指一个变量方差中不是由于测量误差导致的部分的比率。没有测量误差的变量的可靠性为 1。

{phang}
{bf:残差}。
         在本手册中，我们保留“残差”一词，以表示 SEM 中观察到的和拟合的矩之间的差异。
         我们使用“误差”一词表示与 （高斯）线性方程相关的干扰项；请参见
         {it:{help sem glossary##error:错误}}。
         另请参见
         {it:{help sem glossary##standardized_residuals:标准化残差}}。

{phang}
{marker robust}{...}
{bf:robust}, {bf:vce(robust)}.
	稳健是我们在这里用于 Huber/White/sandwich 
        VCE 估计器（技术）的名称。
        此技术要求的假设比大多数其他技术要少。
        特别是，它仅假定错误在观察值间独立分布，因此允许错误
        具有异方差性。报告 {cmd:sem}（{cmd:gsem}）选项 {cmd:vce(robust)} 指定的稳健标准误。
        其他可用的技术包括
	{help sem_glossary##OIM:OIM}、 {help sem_glossary##EIM:EIM}、
	{help sem_glossary##OPG:OPG}、
	{help sem_glossary##cluster:集群}、
	{help sem_glossary##bootstrap:引导法} 和
	{help sem_glossary##jackknife:拔靴法}。

{phang}
{marker saturated_model}{...}
{bf:饱和模型}。
	饱和模型是一种完全协方差模型，即观察变量的拟合均值和协方差模型，没有对这些值的任何限制。另请参见
        {it:{help sem glossary##baseline_model:基线模型}}。
	饱和模型仅适用于标准线性 SEM。

{phang}
{marker score_tests}{...}
{bf:得分检验}、{bf:Lagrange 乘子检验}。
        得分检验是基于似然函数的一阶导数的检验。得分检验尤其方便于检验是否
        应该放宽参数约束或向模型添加参数。另请参见
        {it:{help sem glossary##Wald_tests:沃尔德检验}}。

{phang}
{bf:scores}。
	分数有两个无关的含义。首先，分数是（准）对数似然函数的观察值的第一导数。
	当我们提到“分数”一词时，这就是我们所指的。其次，在因子分析文献中，分数（通常在因子分数的背景下）指的是
	在所有观察变量条件下潜在变量的期望值。我们将此简单称为潜在变量的预测值。

{phang}
{bf:second-level latent variable}。请参见
       {it:{help sem glossary##first_level_variables:一层、二层和更高层（潜在）变量}}。

{phang}
{bf:second-order latent variable}。请参见
       {it:{help sem glossary##first_order_variables:一阶和二阶潜在变量}}。

{phang}
{marker SUREG}{...}
{bf:表面无关回归}。
        表面无关回归是一种结构模型，其中观察到的内生变量集中的每个成员都是一个观察外生变量集和唯一随机扰动项的函数。
        此外，干扰项要相关且外生变量集可能重叠。如果外生变量集合相同，则称为
       {help sem glossary##multivariate_regression:多元回归}。

{phang}
{bf:SEM}。
        SEM 代表结构方程模型和
        结构方程模型。在讨论理论或概念问题时，我们使用大写 SEM，
        而不是该模型在 Stata 中的具体实现问题，
        使用 {cmd:sem} 或 {cmd:gsem} 命令。

{marker sem}{...}
{phang}
{bf:sem}。
        {cmd:sem} 是 Stata 拟合标准线性 SEM 的命令。另请参见
       {it:{help sem glossary##gsem:gsem}}。

{marker SSD}
{phang}
{bf:SSD}, {bf:ssd}。请参见
       {it:{help sem glossary##SSD:汇总统计数据}}。

{phang}
{bf:标准线性 SEM}。
	不包含多层效应的 SEM，其中所有响应变量均由线性方程表示。标准线性
	SEM 通常是大多数人所指的标准 SEM。标准线性 SEM 由 {cmd:sem} 拟合，
	尽管也可以通过 {cmd:gsem} 拟合；请参见
       {it:{help sem glossary##generalized_SEM:广义 SEM}}。

{phang}
{marker standardized_coefficient}{...}
{bf:标准化系数}。
        在方程 y = ... bx + ... 中，标准化系数 beta^* 是 (sigma_y hat/sigma_x hat)b。
        标准化系数根据 y 中的标准差变化比例进行缩放。

{phang}
{marker standardized_covariance}{...}
{bf:标准化协方差}。
        y 和 x 之间的标准化协方差等于 y 和 x 的相关性，换句话说，它等于
        sigma_(xy) / sigma_x sigma_y。当变量被标准化为方差为 1 时，协方差等于相关性。

{phang}
{marker standardized_residuals}{...}
{bf:标准化残差}、{bf:归一化残差}。
         标准化残差是调整后符合标准正态分布的残差。调整并非总是可能。
         归一化残差是根据另一种公式调整的残差，大致符合标准正态分布。归一化残差
         始终可以计算。

{phang}
{marker starting_values}{...}
{bf:初始值}。
        {cmd:sem} 和 {cmd:gsem} 提供的估计方法是迭代的。初始值是用于初始化估计过程的每个待估参数的值。
        {cmd:sem} 和 {cmd:gsem} 会自动提供初始值，但在某些情况下，这些初始值可能不足以解决问题，您必须
        诊断问题并提供更好的初始值。请参见 {manlink SEM Intro 12}。

{phang}
{marker structural}{...}
{bf:结构方程模型}。
        不同作者对“结构方程模型”这一术语的解释各异，但都同意 SEM 
        有时带有作为带有测量组件的 
        {help sem glossary##structural_model:结构模型}
        的含义，即与
        {help sem glossary##measurement_models:测量模型}结合在一起。

{phang}
{marker structural_model}{...}
{bf:结构模型}。
        结构模型是一种模型，其中参数不仅仅是描述，而被认为具有因果性质。
        毫无疑问，SEM 可以拟合结构模型，因此 {cmd:sem} 也是如此。
        但是，SEM、{cmd:sem} 和 {cmd:gsem} 
        并不限于拟合
        结构模型。

{pmore}
        结构模型通常具有多个方程和内生变量之间的依赖性，尽管这并不是必要条件。

{pmore}
        请参见 {manlink SEM Intro 5}。另请参见
	{it:{help sem glossary##structural:结构方程模型}}。

{phang}
{bf:structured (correlation or covariance)}。请参见
        {it:{help sem glossary##unstructured:非结构化与结构化（协方差或相关性）}}。

{phang}
{bf:substantive constraints}。
        请参阅 {it:{help sem glossary##identification:识别}}。

{marker SSD}{...}
{phang}
{bf:汇总统计数据}。
        数据有时只以汇总统计形式提供，例如
        均值和协方差；均值、标准差或方差和相关性；协方差；标准差或方差和相关性；或相关性。
        在没有底层原始数据的情况下，SEM 可以用于拟合这样的数据集。{cmd:ssd} 命令创建包含汇总统计的数据集。

{marker technique}{...}
{phang}
{bf:技术}。
        技术仅是一个英文单词，应结合上下文进行解释。
        然而，技术通常在这里用于指代用于计算估计 VCE 的技术。
        这些技术为
	{help sem_glossary##OIM:OIM}、 {help sem_glossary##EIM:EIM}、
	{help sem_glossary##OPG:OPG}、
        {help sem glossary##robust:稳健}、
	{help sem_glossary##cluster:集群}、
	{help sem_glossary##bootstrap:引导法} 和
	{help sem_glossary##jackknife:拔靴法}。

{pmore}
        技术一词也用于指代 {cmd:ml}，Stata 的优化器和似然最大化器，用于寻找解决方案。

{phang}
{bf:total effects}。请参见
       {it:{help sem glossary##direct:直接、间接和总效应}}。

{phang}
{bf:unstandardized coefficient}。
	未标准化的系数。如果
        {cmd:mpg} = -0.006 x {cmd:weight} + 39.44028，
        那么 -0.006 是一个未标准化的系数，实际上以 mpg/磅为单位度量。

{phang}
{marker unstructured}{...}
{bf:非结构化与结构化（协方差或相关性)}。
        一组变量，通常是误差变量，如果协方差矩阵没有依据理论施加特定模式，则被称为具有非结构化的相关性或协方差。
        如果施加模式，则称该相关性或协方差为结构化。

{marker VCE}{...}
{phang}
{bf:估计器的方差-协方差矩阵}。
        估计器是用于解决拟合参数的公式，有时称为拟合系数。VCE
        是参数估计的方差-协方差矩阵。VCE 的对角元素是参数的方差；这些元素的平方根即为
        所报告的参数标准误差。

{phang}
{bf:VCE}。请参见
       {it:{help sem glossary##VCE:估计器的方差-协方差矩阵}}。

{phang}
{marker Wald_tests}{...}
{bf:沃尔德检验}。沃尔德检验是一种基于参数估计的方差-协方差矩阵的统计检验。沃尔德检验
特别方便于检验可能施加在模型的估计参数上的约束。另请参见 
{it:{help sem glossary##score_tests:得分检验}}。

{marker WLS}{...}
{phang}
{bf:加权最小二乘法}。
        加权最小二乘法 (WLS) 是一种用于获取拟合参数的方法。在本手册中，WLS 指代
        {help sem glossary##ADF:ADF}，其代表渐近分布自由。其他可用方法为
	{help sem_glossary##ML:最大似然估计 (ML)}、 {help sem_glossary##QML:准最大似然估计 (QML)} 和
	{help sem_glossary##MLMV:缺失值下的最大似然估计 (MLMV)}。
        实际上，ADF 是更为通用的 WLS 的一种特定形式。

{phang}
{bf:WLS}。请参见 {it:{help sem glossary##WLS:加权最小二乘法}}。
{p_end}


{marker reference}{...}
{title:参考}

{marker Bentler1980}{...}
{phang}
Bentler, P. M., 和 D. G. Weeks. 1980.  带有潜在变量的线性结构方程。 {it:Psychometrika} 45: 289-308.
{p_end}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <sem_glossary.sthlp>}