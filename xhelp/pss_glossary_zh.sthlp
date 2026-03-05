{smcl}
{* *! version 1.0.13  20jun2019}{...}
{vieweralsosee "[PSS-5] 术语表" "mansection PSS-5 Glossary"}{...}
{viewerjumpto "描述" "pss_glossary_zh##description"}{...}
{viewerjumpto "术语表" "pss_glossary_zh##glossary"}
{help pss_glossary:English Version}
{hline}{...}
{p2colset 1 15 17 2}{...}
{p2col:{bf:[PSS-5] 术语表}}{p_end}
{p2col:({mansection PSS-5 Glossary:查看完整PDF手册条目})}{p_end}
{p2colreset}{...}


{marker description}{...}
{title:描述}

{p 4 4 2}
这里定义了在 {bf:PSS} 手册条目中常用的术语。


{marker glossary}{...}
{title:术语表}

{phang}
{bf:1:M 匹配病例对照研究}。
参见 {help pss_glossary##matchedstudy:{it:匹配研究}}。

{marker def_2x2table}{...}
{phang}
{bf:2 x 2 列联表}。
2 x 2 列联表用于描述一个二元自变量与一个二元响应变量之间的关系。

{marker def_2x2Ktable}{...}
{phang}
{bf:2 x 2 x K 列联表}。
参见 {help pss_glossary##def_stratified2x2tables:{it:分层 2 x 2 表}}。

{phang}
{bf:接受区域}。
在 {help pss_glossary##def_hyptesting:假设检验} 中，接受区域是一组样本值，这些值使得
{help pss_glossary##def_nullhyp:原假设} 不能被拒绝或可以被接受。它是
{help pss_glossary##def_rejregion:拒绝区域} 的补集。

{phang}
{marker accrual_period}{...}
{bf:入组期}或 {bf:招募期}或 {bf:入组}。 入组期（或招募期）是指将受试者招募（注册）进入研究的时间段。参见
{it:{help pss_glossary##followup_period:随访期}}。

{phang}
{bf:实际显著性水平}。
这是一个获得的或观察到的
{help pss_glossary##def_siglevel:显著性水平}。

{phang}
{bf:实际置信区间宽度}。
这是使用已知总体标准差的四舍五入样本量计算得出的 {help pss glossary##def_ciwidth:CI宽度}。

{phang}
{bf:实际置信区间宽度的概率}。
{cmd:ciwidth} 将计算所需样本量以达到指定的 CI 宽度概率，如果是分数，则会向上取整报告一个整数。实际的 CI 宽度的概率是利用四舍五入的样本量估计值计算得出的。

{phang}
{bf:实际样本量}。
对于双样本研究，当指定一个样本量和一个样本量比，导致非整数样本量时，{cmd:power} 和
{cmd:ciwidth} 将把非整数样本量四舍五入到最接近的整数，并用这些整数进行计算。实际样本量是下限样本量。

{phang}
{bf:实际样本比}。
当指定一个样本比导致非整数样本量时，{cmd:power} 和 {cmd:ciwidth} 将把输入样本量四舍五入到最接近的整数并向上取整计算得出的样本量。实际样本比是使用四舍五入的样本量计算的。

{phang}
{marker administrative_censoring}{...}
{bf:行政删失}。
行政删失是在研究观察期结束时发生的右删失。所有受试者完成研究，并被确认在研究结束时经历了两种结果之一：
生存或失败。这种类型的删失不应与
{it:{help pss_glossary##withdrawal:撤回}} 和 
{it:{help pss_glossary##loss_to_followup:失访}} 混淆。也参见
{it:{help st_glossary##censored:删失、左删失、右删失和区间删失}}。

{phang}
{bf:分配比}。
这个比率 n2/n1 代表在对照组中受试者与实验组中受试者的比例
{help pss_glossary##def_expgroup:实验组} 与在参考组中的受试者
{help pss_glossary##def_controlgroup:对照组}。也见
{manlink PSS-4 不平衡设计}。

{marker def_alpha}{...}
{phang}
{bf:α}。
α 表示
{help pss_glossary##def_siglevel:显著性水平}。

{marker def_althyp}{...}
{phang}
{bf:替代假设}。
在 {help pss_glossary##def_hyptesting:假设检验} 中，替代
{help pss_glossary##def_hyp:假设} 代表与
{help pss_glossary##def_nullhyp:原假设} 相对的假设。当被检验的参数是标量时，替代假设可以是
{help pss_glossary##def_onesided:单边} 或者
{help pss_glossary##def_twosided:双边}。

{marker def_altval}{...}
{phang}
{bf:替代值}，{bf:替代参数}。
这是在假设检验中研究人员在功效和样本量分析中固定的感兴趣参数值。比如替代均值值和替代均值指的是在替代假设下均值参数的值。

{marker def_anova}{...}
{phang}
{bf:方差分析}，{bf:ANOVA}。
这是一类统计模型，通过将连续结果的方差划分为由于感兴趣的效应和随机变化引起的独立变化源，从而研究多个总体间均值的差异。然后，检验统计量形式为感兴趣效应引起的期望变化与期望随机变化之比。也见
{help pss_glossary##def_oneway:{it:单因素 ANOVA}},
{help pss_glossary##def_twoway:{it:双因素 ANOVA}},
{help pss_glossary##def_onewayrep:{it:单因素重复测量 ANOVA}} 和
{help pss_glossary##def_twowayrep:{it:双因素重复测量 ANOVA}}。

{marker def_balanced}{...}
{phang}
{bf:平衡设计}。
平衡设计表示一个实验，其中接受处理和不接受处理的受试者数目相等。对于许多类型的
{help pss_glossary##def_twosample:双样本假设检验}，平衡设计的检验效能最大。在 PrSS 和 PSS 分析中，
平衡设计往往需要的受试者比其对应的不平衡设计更少。

{marker def_beta}{...}
{phang}
{bf:β}。
β 表示
{help pss_glossary##def_prtypeIIerr:犯 II 型错误的概率}，即在原假设为假时未能拒绝它的概率。

{marker def_betweendesign}{...}
{phang}
{bf:组间设计}。
这是一个仅包含
{help pss_glossary##def_betweenfactor:组间因素}的实验。参见
{manlink PSS-2 power oneway} 和 {manlink PSS-2 power twoway}。

{marker def_betweenfactor}{...}
{phang}
{bf:组间因素}。
这是一个每个受试者仅接受其中一个水平的 {help pss_glossary##def_factor:因素}。

{phang}
{bf:二项检验}。
二项检验是一种检验，其中检验统计量的确切抽样分布是二项分布；参见 {help bitest_zh:[R] bitest}。也参见
{helpb power oneproportion:[PSS-2] power oneproportion}。

{phang}
{bf:二分法}。
这种方法通过不断细分基于 f(x) 已定义的区间来找到一个函数 f(x)=0 的根 x，直到连续根估计之间的变化在请求的容忍度范围内，并且在当前估计处评估的函数 f() 足够接近于零。

{marker def_casecontrolstudy}{...}
{phang}
{bf:病例对照研究。}
一种 {help pss_glossary##def_obsstudy:观察研究}，它
{help pss_glossary##def_retrospective:回顾性}比较具有特定问题的受试者（病例）与不具有该问题的受试者（对照）的特征。例如，为了研究吸烟与肺癌之间的关联，研究人员将抽取肺癌患者和非肺癌患者，并记录他们的吸烟状况。病例对照研究通常用于研究罕见疾病。

{phang}
{bf:CCT}。
参见 {help pss_glossary##def_cct:{it:对照临床试验研究}}。

{marker def_cellmean}{...}
{phang}
{bf:单元均值}。
这些是通过两个 
{help pss_glossary##def_factor:因素} 的交叉分类形成的感兴趣结果的均值。参见
{manlink PSS-2 power twoway} 和 {manlink PSS-2 power repeated}。

{marker def_cellmeanmodel}{...}
{phang}
{bf:单元均值模型}。
单元均值模型是一种以 {help pss_glossary##def_cellmean:单元均值} 为形式的
{help pss_glossary##def_anova:ANOVA} 模型。

{phang}
{bf:卡方检验}。
这种检验的检验统计量的抽样分布为卡方分布。参见 {helpb power onevariance:[PSS-2] power onevariance} 和
{helpb power twoproportions:[PSS-2] power twoproportions}。

{phang}
{bf:CI}。
参见 {help pss glossary##def_ci:{it:置信区间}}。

{phang}
{bf:CI 精度}。
参见 {help pss glossary##def_ciprecision:{it:置信区间精度}}。

{phang}
{bf:CI 精度图}。
参见
{help pss glossary##def_ciwcurve:{it:置信区间精度曲线}}。

{phang}
{bf:CI 宽度}。
参见 {help pss glossary##def_ciwidth:{it:置信区间宽度}}。

{marker def_clinicaltrial}{...}
{phang}
{bf:临床试验}。临床试验是一种对人类受试者进行医学治疗或程序的实验。

{marker def_clinicaldiff}{...}
{phang}
{bf:临床意义的差异}，{bf:临床意义的效应}，{bf:临床显著性差异}。
临床意义的差异表示感兴趣的效应的大小，这在临床上是重要的。“临床意义”在不同研究中可能有所不同。例如，在 {help pss_glossary##def_clinicaltrial:临床试验} 中，如没有可用的有关拟议临床程序的表现的先前知识，则标准化
{help pss_glossary##def_esize:效应大小}（调整为标准差）介于 0.25 和 0.5 之间可能被视为临床重要。

{marker def_crd}{...}
{phang}
{bf:集群随机设计}，{bf:CRD}，{bf:集群随机试验}，{bf:CRT}，{bf:组随机试验}，{bf:GRT}。
集群随机设计是一种随机设计，受试者组或集群作为独立抽样单位进行抽样，而不是单个受试者。集群是随机化单位，而集群中的个体是分析单位。集群内的观察通常具有相关性。相关性的强度由
{help pss_glossary##def_intraclasscorr:班内相关性} 来衡量。
也见 {help pss_glossary##def_indivleveldesign:{it:个体水平设计}}。

{marker def_clustersize}{...}
{phang}
{bf:集群大小}。
在 {help pss_glossary##def_crd:集群随机设计} 中，集群或组中的受试者数量。如果集群大小在集群之间变化，则用于功效和
{help pss_glossary##def_sampsideterm:样本量确定} 是集群大小的 {help pss_glossary##def_cv:变异系数}。

{marker def_CAtest}{...}
{phang}
{bf:Cochran-Armitage 检验}。
Cochran-Armitage 检验是一种在 {help pss glossary##def_Jx2table:J x 2 列联表} 中响应概率的线性趋势检验。
在原假设下，检验统计量有一个渐近的卡方分布。参见 {helpb power trend:[P] power trend}。

{marker def_CMHtest}{...}
{phang}
{bf:Cochran-Mantel-Haenszel 检验}。
参见 {help pss glossary##def_MHtest:{it:Mantel-Haenszel 检验}}。

{marker def_cv}{...}
{phang}
{bf:变异系数}，{bf:CV}。
变异系数衡量观测值相对于均值的分布或变异性。

{marker def_cohort}{...}
{phang}
{bf:队列研究}。
通常是一种 {help pss_glossary##def_obsstudy:观察研究}，队列研究也可以是一种
{help pss_glossary##def_expstudy:实验性} 研究，其中一个队列、具有相似特征的受试者组，会随时间推移而被观察，并在研究结束时进行评估。例如，跟踪接种和未接种疫苗的受试者队列的随访，以研究流感疫苗的有效性。

{marker def_columns}{...}
{phang}
{bf:图形中的列}。
将 {cmd:power, graph()} 和 {cmd:ciwidth, graph()} 视为图示 {cmd:power, table} 的列。一个列将放置在 x 轴上，另一个将放置在 y 轴上，如果你有更多值不同的列，将为每个列创建单独的图。同样，我们使用“列符号”、“列名称”和“列标签”来引用在请求表格输出时出现在表格中的符号、名称和标签。

{marker def_commonoddsratio}{...}
{phang} 
{bf:通用比率}。
在 {help pss glossary##def_stratified2x2tables:分层 2 x 2 表} 中的关联度量。它可以被视为分层特定
{help pss glossary##def_oddsratio:比率} 的加权总和。

{phang}
{bf:比较值}。参见
{help pss_glossary##def_altval:{it:替代值}}。

{phang}
{bf:复合对称性}。
如果所有方差相等且所有协方差相等，则协方差矩阵具有复合对称结构。这是
{help pss_glossary##def_sphericity:球面性} 假设的一种特殊情况。

{marker def_concordpairs}{...}
{phang}
{bf:一致对}。
在 {help pss_glossary##def_2x2table:2 x 2 列联表} 中，一致对是一对都为成功或都为失败的观察对。
也见 {help pss_glossary##def_discpairs:{it:不一致对}} 和
{mansection PSS-2 powerpairedproportionsRemarksandexamplesIntroduction:{it:引言}}
在 {bf:[PSS-2] power pairedproportions} 的 {it:备注和示例} 下。

{phang}
{bf:置信边界}。
参见 {help pss glossary##def_climits:{it:置信限}}。

{phang}
{bf:置信系数}。
参见 {help pss glossary##def_clevel:{it:置信水平}}。

{marker def_ci}{...}
{phang}
{bf:置信区间}。
置信区间为感兴趣的参数提供一个区间估计。它的构建方式是，在重复独立抽样中，包含真实参数值的置信区间比例将大于或等于指定的 {help pss glossary##def_clevel:置信水平}，1-alpha。置信区间也可以被视为一组不能被拒绝的合理值，基于在指定显著性水平 alpha 下相应的假设检验。参见 {mansection PSS-3 Intro(ciwidth)RemarksandexamplesConfidenceintervals:{it:置信区间}} 在 {bf:[PSS-3] Intro (ciwidth)}。也见
{help pss glossary##def_onesidedci:{it:单边置信区间}} 和
{help pss glossary##def_twosidedci:{it:双边置信区间}}。

{marker def_clevel}{...}
{phang}
{bf:置信水平}。
置信水平设定了以一定的程度保证从重复独立抽样构建的 CIs 将包含真实参数值的置信度。例如，当指定置信水平为 95 时，CI 确保在 95% 的时间内包含真实参数值。置信水平等于 1-alpha，其中 alpha 是 
{help pss glossary##def_siglevel:显著性水平}。

{marker def_climits}{...}
{phang}
{bf:置信限}。
置信限是置信区间的上下限。对于双边 CI，两个置信限都是有限的。对于单边 CI，一个置信限为有限而另一个为无穷大。上单边 CI 的下限为负无穷，而下单边 CI 的上限为无穷。参见 {mansection PSS-3 Intro(ciwidth)RemarksandexamplesConfidenceintervals:{it:置信区间}} 在 {bf:[PSS-3] Intro (ciwidth)}。

{marker def_cihalfwidth}{...}
{phang}
{bf:置信区间半宽}。
置信区间的半宽等于置信区间宽度的一半，w/2，也称为误差边际。CI 半宽用作对称置信区间的精度度量。

{marker def_ciprecision}{...}
{phang}
{bf:置信区间精度}。
置信区间的精度通常由其 {help pss glossary##def_ciwidth:宽度} 衡量。更大的宽度意味着较低的精度，导致更宽的 CI。更小的宽度意味着更高的精度，导致更窄的 CI。

{marker def_ciwcurve}{...}
{phang}
{bf:置信区间精度曲线}。
置信区间精度曲线是估计的 {help pss glossary##def_ciwidth:CI宽度} 随某个其他研究参数的变化的图形，例如样本量或 CI 宽度的概率。CI 宽度在 y 轴上绘制，样本量或其他参数在 x 轴上绘制。

{phang}
{bf:置信区间精度确定}。
这涉及到根据样本量、CI 宽度的概率和其他研究参数计算 {help pss glossary##def_ciwidth:置信区间宽度}。

{marker def_ciwidth}{...}
{phang}
{bf:置信区间宽度}。
对于双边 CI，宽度定义为上下限之间的差。对于上单边 CI，宽度为上置信限与点估计之间的差。对于下单边 CI，宽度为下置信限与点估计之间的差。

{marker def_contrasts}{...}
{phang}
{bf:对比}。
对比是列均值的线性组合，使得对比系数的总和为零。

{phang}
{bf:控制协变量}。
参见 {help pss_glossary##def_reducedmodel:{it:简约模型}}。

{marker def_controlgroup}{...}
{phang}
{bf:对照组}。
对照组由随机分配到一个组的受试者组成，他们不接受任何治疗或接受标准治疗。在 {help pss_glossary##def_hyptesting:假设检验} 中，这通常是一个参考组。参见
{help pss_glossary##def_expgroup:{it:实验组}}。

{marker def_cct}{...}
{phang}
{bf:对照临床试验研究}。
这是一种 {help pss_glossary##def_expstudy:实验研究}，其中治疗分配给两个或多个组的受试者，而没有进行随机化。

{phang}
{bf:CRD}。
参见 {help pss_glossary##def_crd:{it:集群随机设计}}。

{phang}
{bf:临界区域}。
参见 {help pss_glossary##def_rejregion:{it:拒绝区域}}。

{phang}
{bf:临界值}。
在 {help pss_glossary##def_hyptesting:假设检验} 中，临界值是
{help pss_glossary##def_rejregion:拒绝区域} 的边界。

{phang}
{bf:横断面研究}。
这种类型的 {help pss_glossary##def_obsstudy:观察研究} 在一个时间点或短时间内测量各种人群特征。例如，对人群中乳腺癌患病率的研究是横断面研究。

{phang}
{bf:CRT}。
参见 {help pss_glossary##def_crd:{it:集群随机设计}}。

{phang}
{bf:CV}。
参见 {help pss_glossary##def_cv:{it:变异系数}}。

{phang}
{bf:delta}。
在功效和样本量计算的背景下，delta 表示 {help pss_glossary##def_esize:效应大小}。

{phang}
{bf:方向检验}。
参见 {help pss_glossary##def_onesided:{it:单侧检验}}。

{marker def_discpairs}{...}
{phang}
{bf:不一致对}。
在 {help pss_glossary##def_2x2table:2 x 2 列联表} 中，不一致对是成对的成功-失败或失败-成功的观察对。也见 {help pss_glossary##def_concordpairs:{it:一致对}} 和
{mansection PSS-2 powerpairedproportionsRemarksandexamplesIntroduction:{it:引言}}
在 {bf:[PSS-2] power pairedproportions} 的 {it:备注和示例} 下。

{phang}
{bf:不一致比例}。
这是
{help pss_glossary##def_discpairs:不一致对} 或
{help pss_glossary##def_discsets:不一致集} 的比例。参见
{mansection PSS-2 powerpairedproportionsRemarksandexamplesIntroduction:{it:引言}}
在 {bf:[PSS-2] power pairedproportions} 的 {it:备注和示例} 以及
{mansection PSS-2 powermccRemarksandexamplesIntroduction:{it:引言}}
在 {bf:[PSS-2] power mcc} 的 {it:备注和示例} 中。

{marker def_discsets}{...}
{phang}
{bf:不一致集}。 在匹配研究中，多个对照组与一个病例匹配，不一致集是在病例与任何匹配对照之间存在任何成功-失败或失败-成功匹配的集合。也见
{mansection PSS-2 powermccRemarksandexamplesIntroduction:{it:引言}}
在 {bf:[PSS-2] power mcc} 的 {it:备注和示例} 中。

{phang}
{bf:退组}。
退组是受试者在研究结束前退出，导致不完整或缺失的数据。

{marker def_esize}{...}
{phang}
{bf:效应大小}。
效应大小是正在比较的治疗之间的
{help pss_glossary##def_clinicaldiff:临床显著性差异} 的大小，通常表示为与单位无关的量。例如，在 {help pss_glossary##def_onesampletest:单样本均值检验} 中，效应大小是均值与其参考值之间的标准化差异。在其他情况下，效应大小可以用 {help pss_glossary##def_oddsratio:比率} 或 {help pss_glossary##def_riskratio:风险比} 来衡量。参见 {manlink PSS-2 Intro (power)} 以了解效应大小与检验功效之间的关系。

{phang}
{bf:效应大小曲线}。
效应大小曲线是预测的 {help pss_glossary##def_esize:效应大小} 或 {help pss_glossary##def_target:目标参数} 随某个其他研究参数（如 {help pss_glossary##def_samplesize:样本大小}）的变化而绘制的图形。效应大小或目标参数在 y 轴上绘制，样本大小或其他参数在 x 轴上绘制。

{phang}
{bf:效应大小确定}。
这涉及在给定功效、样本量和其他研究参数的情况下计算 {help pss_glossary##def_esize:效应大小} 或 {help pss glossary##def_target:目标参数}。

{phang}
{bf:等额分配设计}。
参见 {help pss_glossary##def_balanced:{it:平衡设计}}。

{marker def_exacttest}{...}
{phang}
{bf:精确检验}。
精确检验是一种其在原假设下观察数据的概率直接计算的检验，通常采用枚举法。精确检验不依赖于任何渐近近似，因此在小数据集上应用广泛。参见 {helpb power oneproportion:[PSS-2] power oneproportion} 和 {helpb power twoproportions:[PSS-2] power twoproportions}。

{marker def_expgroup}{...}
{phang}
{bf:实验组}。
实验组是接受在控制实验中定义的治疗或程序的受试者组。在 {help pss_glossary##def_hyptesting:假设检验} 中，通常是比较组。参见
{help pss_glossary##def_controlgroup:{it:对照组}}。

{marker def_expstudy}{...}
{phang}
{bf:实验研究。}
在实验研究中，与 {help pss_glossary##def_obsstudy:观察研究} 相对，受试者的治疗分配由研究人员控制。例如，通过将每种治疗分配给一组受试者来比较新治疗与标准治疗的研究是实验研究。

{phang}
{bf:指数检验}。
指数检验是参数检验，比较两个独立的指数（仅限常数）回归模型的风险率 lambda_1 和 lambda_2（或对数风险），原假设 H_0：lambda_2-lambda_1=0（或 H_0：
ln(lambda_2)-ln(lambda_1)=ln(lambda_2/lambda_1)=0）。

{marker def_exposureoddsratio}{...}
{phang}
{bf:暴露比率}。
在 {help pss glossary##def_oddsratio:比率} 中，表示病例中暴露相对于对照的比率。

{phang}
{bf:F 检验}。
F 检验是检验统计量的抽样分布是 F 分布的检验。参见 {helpb power twovariances:[PSS-2] power twovariances}。

{marker def_factor}{...}
{phang}
{bf:因素}，{bf:因素变量}。
这是一种分类解释变量，具有任意数量的水平。

{phang}
{bf:有限总体修正}。
在有限总体中进行不放回抽样时，会对估计量的标准误施加有限总体修正，以减少抽样方差。

{phang}
{bf:Fisher-Irwin 精确检验}。
参见 {help pss_glossary##def_fisher:{it:Fisher's exact test}}。

{marker def_fisher}{...}
{phang}
{bf:Fisher精确检验}。
Fisher 的精确检验是用于检测 2 x 2 列联表中行和列之间独立性的 {help pss_glossary##def_exacttest:精确小样本检验}。在给定边际总和的条件下，检验统计量在原假设下具有超几何分布。参见
{helpb power twoproportions:[PSS-2] power twoproportions} 和
{helpb tabulate twoway:[R] tabulate twoway}。

{phang}
{bf:Fisher 的 z 检验}。
这是比较一个或两个相关性的 {help pss_glossary##def_ztest:z 检验}。参见 {helpb power onecorrelation:[PSS-2] power onecorrelation}
和
{helpb power twocorrelations:[PSS-2] power twocorrelations}。也见
{help pss_glossary##def_fisherz:{it:Fisher's z 变换}}。

{marker def_fisherz}{...}
{phang}
{bf:Fisher 的 z 变换}。
Fisher 的 z 变换对样本相关系数应用反双曲切变换。此变换对于检验关于 {help pss_glossary##def_corrcoef:皮尔逊相关系数} 的假设是有用的。
相关系数的确切抽样分布是复杂的，而变换后的统计量近似服从标准正态分布。

{marker def_fixedeffects}{...}
{phang}
{bf:固定效应}。
固定效应代表所有感兴趣因素水平的集合。

{phang}
{marker followup_period}{...}
{bf:随访期}或 {bf:随访}。
（最小）随访期是从最后一个受试者进入研究到研究结束的时间段。随访定义了研究阶段，在这个阶段，受试者处于观察状态而没有新受试者进入研究。如果 T 是研究的总持续时间，R 是研究的入组期，则随访期 f 等于 T-R。也见
{it:{help pss_glossary##accrual_period:入组期}}。

{phang}
{bf:随访研究。}
参见 {help pss_glossary##def_cohort:{it:队列研究}}。

{marker def_nfraction}{...}
{phang}
{bf:分数样本量}。
在具有等额分配设计的研究中，当为总样本量指定一个奇数时，会出现分数（非整数）样本量。它们也可能出现在非整数样本量比的指定时。

{marker def_fullmodel}{...}
{phang}
{bf:全模型}。
在回归上下文中，全模型是包含所有感兴趣协变量的回归模型。也见
{help pss_glossary##def_reducedmodel:{it:简约模型}}。

{phang}
{bf:Greenhouse-Geisser 修正}。
参见 {help pss_glossary##def_nonsphericityeps:{it:非球面校正}}。

{phang}
{bf:组随机试验}，{bf:GRT}。
参见 {help pss_glossary##def_crd:{it:集群随机设计}}。

{marker def_hyp}{...}
{phang}
{bf:假设}。
假设是关于感兴趣的总体参数的声明。

{marker def_hyptesting}{...}
{phang}
{bf:假设检验}，{bf:假设检验}。
这种推断方法基于来自总体的样本评估假设的有效性。见
{mansection PSS-2 Intro(power)RemarksandexamplesHypothesistesting:{it:假设检验}}
在 {bf:[PSS-2] Intro (power)} 的 {it:备注和示例} 下。

{phang}
{bf:假设值}。
参见 {help pss_glossary##def_nullval:{it:原假设值}}。

{marker def_indivleveldesign}{...}
{phang}
{bf:个体水平设计}。
个体水平设计是经典的随机化设计，其中个体受试者或观察被抽样，因此它们代表随机化单位和分析单位。相对而言，见 
{help pss_glossary##def_crd:{it:集群随机设计}}。

{marker def_intereffects}{...}
{phang}
{bf:交互效应}。
交互效应衡量一个因素的效应对另一个因素水平的依赖性。在数学上，它们可以定义为去除
{help pss_glossary##def_maineffects:主效应}后这些差异中的治疗均值差。

{marker def_intraclasscorr}{...}
{phang}
{bf:班内相关性}。
班内相关性衡量同一组或集群中观察值之间的依赖性。

{marker def_Jx2table}{...}
{phang}
{bf:J x 2 列联表}。
J x 2 列联表用于描述具有 J 个水平的ordinal独立变量与一个感兴趣的二元响应变量之间的关联。

{phang}
{bf:Lagrange 乘子检验}。
参见 {help pss_glossary##def_scoretest:{it:得分检验}}。

{phang}
{bf:似然比检验}。
似然比 (LR) 检验是用于比较两种模型适合度的三种经典检验程序之一，其中一个模型（受限模型）嵌套在全模型（不受限模型）中。在原假设下，受限模型的拟合数据与全模型相同。LR 检验要求确定受限模型和全模型的对数似然函数的最大值。见 {helpb power twoproportions:[PSS-2] power twoproportions} 和 {help lrtest_zh:[R] lrtest}。

{phang}
{marker loss_to_followup}
{bf:失访}。
如果受试者因与感兴趣的事件无关的原因未完成研究，他们就会失去随访。例如，如果受试者迁移到其他地区或决定不再参与研究，就会发生失访。失访不应与行政删失混淆。如果受试者失访，关于这些受试者在研究结束时将经历什么结果的信息是不可得的。也见
{it:{help pss_glossary##withdrawal:撤回}},
{it:{help pss_glossary##administrative_censoring:行政删失}},
和 {it:{help pss_glossary##followup_period:随访期或随访}}。

{marker def_lowerci}{...}
{phang}
{bf:下单边置信区间}。
下单边置信区间包含大于或等于下置信限 {it:ll} 的值范围。
该置信区间定义为有限的下置信限和上置信限为无穷大：
[{it:ll}, 无穷大)。

{phang}
{bf:下单边检验}，{bf:下单尾检验}。
下单边检验是对标量参数的
{help pss_glossary##def_onesided:单侧检验}，其中 {help pss_glossary##def_althyp:替代假设} 为下单边的，意思是替代假设表示该参数小于在 {help pss_glossary##def_nullhyp:原假设} 下推测的值。也见
{mansection PSS-2 Intro(power)Remarksandexamplesonevstwo:{it:单侧检验与双侧检验}}
在 {bf:[PSS-2] Intro (power)} 的 {it:备注和示例} 下。

{marker def_maineffects}{...}
{phang}
{bf:主效应}。
这些是与每个因素的每个水平相关联的平均加性效应。例如，因素水平 j 的主效应是所有观察值在结果中的均值与总均值之间的差异。

{marker def_MHtest}{...}
{phang}
{bf:Mantel-Haenszel 检验}。
Mantel-Haenszel 检验评估在 {help pss glossary##def_stratified2x2tables:分层 2 x 2 表} 中的整体关联度是否显著，假设暴露效应在各层之间是相同的。见 {manhelp power_cmh P:power cmh}。

{phang}
{bf:误差边际}。
参见 {help pss glossary##def_cihalfwidth:{it:置信区间半宽}}。

{marker def_marghomog}{...}
{phang}
{bf:边际同质性}。
边际同质性指的是一个或多个行边际比例与相应列比例的相等性。也见 {mansection PSS-2 powerpairedproportionsRemarksandexamplesIntroduction:{it:引言}} 在 {bf:[PSS-2] power pairedproportions} 的 {it:备注和示例}。

{phang}
{bf:边际比例}。
这代表在 {help pss_glossary##def_2x2table:列联表} 的一行或一列中的观察数量与总观察数量的比率。也见
{mansection PSS-2 powerpairedproportionsRemarksandexamplesIntroduction:{it:引言}} 在 {bf:[PSS-2] power pairedproportions} 的 {it:备注和示例}。

{marker matchedstudy}{...}
{phang}
{bf:匹配研究}。
在匹配研究中，来自一个组的观察与另一组中一个或多个观察在一个或多个感兴趣特征上进行匹配。当多个匹配发生时，研究设计为 1:M，其中 M 是匹配的数量。也见
{help pss_glossary##def_paireddata:{it:成对数据}}，也称为 1:1 匹配数据。

{phang}
{bf:McNemar 检验}。
McNemar 检验是一种用于比较两个相依二元总体的检验。原假设以 2 x 2 列联表中边际同质性的假设形式进行。见 {helpb power pairedproportions:[PSS-2] power pairedproportions} 和 {help mcc_zh}。

{phang}
{bf:MDES}。
参见 {help pss_glossary##def_mdes:{it:最小可检测效应大小}}。

{phang}
{bf:均值对比}。
参见 {help pss_glossary##def_contrasts:{it:对比}}。

{marker def_mdes}{...}
{phang}
{bf:最小可检测效应大小}。
最小可检测的 {help pss_glossary##def_esize:效应大小} 是在给定功效和样本量的假设检验中能够检测到的最小效应大小。

{phang}
{bf:最小可检测值}。
最小可检测值是可以可靠测量的物质的最小量或浓度。

{marker def_mixeddesign}{...}
{phang}
{bf:混合设计}。
混合设计是一种实验，具有至少一个 {help pss_glossary##def_betweenfactor:组间因素} 和一个 {help pss_glossary##def_withinfactor:组内因素}。参见 {manlink PSS-2 power repeated}。

{marker def_mpcorr}{...}
{phang}
{bf:多重部分相关}。
在回归的上下文中，多重部分相关是在控制其他变量的效果的情况下，因变量与一个或多个感兴趣的自变量之间的关联性度量。

{marker def_negesize}{...}
{phang}
{bf:负效应大小}。
在功效和样本量分析中，当替代假设下的参数的假设值小于原假设下的参数的假设值时，我们得到一个负效应大小。也见 {help pss_glossary##def_posesize:{it:正效应大小}}。

{phang}
{bf:名义 α}，{bf:名义显著性水平}。
这是期望或请求的 {help pss_glossary##def_siglevel:显著性水平}。

{phang}
{bf:非中心参数}。
在功效和样本量分析中，非中心参数是替代假设下检验统计量的期望值。

{phang}
{bf:非方向检验}。
参见 {help pss_glossary##def_twosided:{it:双边检验}}。

{marker def_nonsphericityeps}{...}
{phang}
{bf:非球面校正}。
这是用于在重复测量 ANOVA 中对常规 F 检验的自由度进行修正，以补偿重复测量协方差矩阵缺乏 {help pss_glossary##def_sphericity:球面性} 的情况。

{marker def_nullhyp}{...}
{phang}
{bf:原假设}。
在 {help pss_glossary##def_hyptesting:假设检验} 中，原
{help pss_glossary##def_hyp:假设} 通常表示我们试图反驳的猜想。通常原假设是某个处理没有效应，或者某个统计量在总体中是相等的。

{marker def_nullval}{...}
{phang}
{bf:原假设值}，{bf:原假设参数}。
在功效和样本量分析中，原假设下感兴趣参数的值是由研究人员固定的。例如，原均值值和原均值指的是在原假设下均值参数的值。

{marker def_nclust}{...}
{phang}
{bf:集群数量}。
在 {help pss_glossary##def_crd:集群随机设计} 中，独立抽样单元的数量、组或集群。

{marker def_obsstudy}{...}
{phang}
{bf:观察研究。}
在观察研究中，与实验研究相对，受试者被自然分配到治疗中，因此在研究人员的控制之外。研究人员只能观察受试者并测量其特征。例如，评估儿童暴露于家庭农药的效应的研究是观察研究。

{phang}
{bf:观察到的显著性水平}。
参见 {help pss_glossary##def_pvalue:{it:p值}}。

{marker def_oddsratio}{...}
{phang}
{bf:几率和几率比}。
某事件的 Odds 是 Odds = p/(1-p)，其中 p 是该事件的概率。因此如果 p=0.2，则几率为 0.25，而如果 p=0.8，则几率为 4。

{pmore}
几率的对数为
ln(Odds) = logit(p) = ln{c -(}p/(1-p){c )-}，
并且逻辑回归模型例如，拟合 ln(Odds) 作为协变量的线性函数。

{pmore}
几率比是两个几率的比率： Odds2/Odds1。
出现在比率中的单个几率通常针对实验组和对照组或两个不同的流行病学组。

{marker def_onesampletest}{...}
{phang}
{bf:单样本检验}。
单样本检验比较一个样本中的感兴趣参数与参考值。例如，单样本均值检验将样本的均值与参考值进行比较。

{marker def_onesidedci}{...}
{phang}
{bf:单边置信区间}。
参见
{help pss glossary##def_upperci:{it:上单边置信区间}}
和
{help pss glossary##def_lowerci:{it:下单边置信区间}}。

{marker def_onesided}{...}
{phang}
{bf:单侧检验}，{bf:单尾检验}。
单侧检验是对标量参数的假设检验，其中替代假设是单侧的，意味着替代假设表示该参数小于或大于在原假设下推测的值，但不是两者。也参见 {mansection PSS-2 Intro(power)Remarksandexamplesonevstwo:{it:单侧检验与双侧检验}} 在 {bf:[PSS-2] Intro (power)} 的 {it:备注和示例} 下。

{marker def_oneway}{...}
{phang}
{bf:单因素 ANOVA}，{bf:单因素方差分析}。
单因素 {help pss_glossary##def_anova:ANOVA} 模型有一个 {help pss_glossary##def_factor:因素}。也见
{manlink PSS-2 power oneway}。

{marker def_onewayrep}{...}
{phang}
{bf:单因素重复测量 ANOVA}。
单因素重复测量 ANOVA 模型有一个 {help pss_glossary##def_withinfactor:组内因素}。也见 {manlink PSS-2 power repeated}。

{marker def_paireddata}{...}
{phang}
{bf:成对数据}。
成对数据由共享一些感兴趣特征的观察配对组成。例如，双胞胎的测量、前测和后测测量、之前和之后的测量、同一个体的重复测量。成对数据是相关的，因此必须使用 {help pss_glossary##def_pairedtest:成对检验} 进行分析。
参见 {manhelp ciwidth_pairedmeans PSS: ciwidth pairedmeans} 以获取成对均值差 CI 的 PrSS 分析。

{phang}
{bf:成对观察}。
参见 {help pss_glossary##def_paireddata:{it:成对数据}}。

{marker def_pairedtest}{...}
{phang}
{bf:成对检验}。
成对检验用于检验两个 {help pss_glossary##def_paireddata:成对总体} 中的感兴趣参数是否相等。该检验考虑了测量之间的依赖性。因此，成对检验通常比其
{help pss_glossary##def_twosample:双样本} 对应物更具效能。例如，成对均值或成对差检验用于检验两个成对（相关）总体的均值是否相等。

{marker def_pcorr}{...}
{phang}
{bf:部分相关}。
部分相关是在控制其他变量的影响下，两个连续变量之间的关联性度量。

{marker def_corrcoef}{...}
{phang}
{bf:皮尔逊相关}。
皮尔逊相关 rho，也称为乘积矩相关，衡量两个变量之间的关联程度。皮尔逊相关等于它们的协方差除以各自的标准差，并在 -1 和 1 之间取值。零表示两个变量之间没有相关性。

{phang}
{bf:总体参数}。
参见 {help pss_glossary##def_target:{it:目标参数}}。

{marker def_posesize}{...}
{phang}
{bf:正效应大小}。
在功效和样本量分析中，当替代假设下参数的假设值大于原假设下参数的假设值时，我们得到正效应大小。也见 {help pss_glossary##def_negesize:{it:负效应大小}}。

{phang}
{bf:假设值}。
参见 {help pss_glossary##def_altval:{it:替代值}}。

{marker def_power}{...}
{phang}
{bf:功效}。
检验的功效是正确拒绝 {help pss_glossary##def_nullhyp:原假设} 为假的概率。在统计文献中，通常用 1-β 表示，其中 β 是 {help pss_glossary##def_prtypeIIerr:II 型错误概率}。常用的功效值为 80% 和 90%。参见 {manlink PSS-2 Intro (power)} 以了解有关功效的更多详细信息。

{marker def_pss}{...}
{phang}
{bf:功效和样本量分析}。
功效和样本量分析调查研究资源的最佳分配，以增加成功实现研究目标的可能性。功效和样本量分析关注的是使用假设检验进行推断的研究。功效和样本量分析提供了估算的样本量，这样可以在未来研究中达到所需的 {help pss glossary##def_power:功效}。参见 {manlink PSS-2 Intro (power)}。也见 
{help pss glossary##def_prss:{it:精度和样本量分析}}。

{marker def_powercurve}{...}
{phang}
{bf:功效曲线}。
功效曲线是估计的 {help pss_glossary##def_power:功效} 随其他研究参数（如样本大小）变化的图形。功效在 y 轴上绘制，样本量或其他参数在 x 轴上绘制。参见 {help power_optgraph_zh:[PSS-2] power, graph}。

{phang}
{bf:功效确定}。
这涉及到在给定样本量、效应大小和其他研究参数的情况下计算功效。

{phang}
{bf:功效函数}。
功效函数是一个对总体参数θ 的函数，定义为观察样本属于给定 θ 的检验的 {help pss_glossary##def_rejregion:拒绝区域} 的概率。参见 {mansection PSS-2 Intro(power)RemarksandexamplesHypothesistesting:{it:假设检验}} 在 {bf:[PSS-2] Intro (power)} 的 {it:备注和示例} 下。

{phang}
{bf:功效图}。
参见 {help pss_glossary##def_powercurve:{it:功效曲线}}。

{marker def_prss}{...}
{phang}
{bf:精度和样本量分析}。
就像 {help pss glossary##def_pss:功效和样本量分析}，精度和样本量分析调查研究资源的最佳分配，以增加成功实现研究目标的可能性。精度和样本量分析集中在使用置信区间进行推断的研究。精度和样本量分析提供了估算的样本量，以便在未来研究中满足所需的 {help pss glossary##def_ciprecision:置信区间精度} 。参见 {manlink PSS-3 Intro (ciwidth)}。

{phang}
{bf:置信区间的精度}。
参见 {help pss glossary##def_ciprecision:{it:置信区间精度}}。

{marker def_prtypeIerr}{...}
{phang}
{bf:第一类错误概率}。
这是犯 {help pss_glossary##def_typeIerr:第一类错误} 的概率，即错误地拒绝 {help pss_glossary##def_nullhyp:原假设}。也见
{help pss_glossary##def_siglevel:{it:显著性水平}}。

{marker def_prtypeIIerr}{...}
{phang}
{bf:第二类错误概率}。
这是犯 {help pss_glossary##def_typeIIerr:第二类错误} 的概率，即错误地接受 {help pss_glossary##def_nullhyp:原假设}。常见的第二类错误概率值为 0.1 和 0.2，或等同于 10% 和 20%。也见 {help pss_glossary##def_beta:{it:β}} 及 {help pss_glossary##def_power:{it:功效}}。

{marker def_prwidth}{...}
{phang}
{bf:置信区间宽度的概率}。
置信区间宽度的概率是指在未来的研究中，置信区间的宽度不大于预先规定的值的概率。

{marker def_prwidthdet}{...}
{phang}
{bf:置信区间宽度的概率确定}。
这涉及在给定 CI 宽度、样本量和其他研究参数的情况下计算 {help pss glossary##def_prwidth:置信区间宽度的概率}。

{marker def_prospective}{...}
{phang}
{bf:前瞻性研究}。
在前瞻性研究中，人口或队列按特定 {help pss_glossary##def_riskfactor:风险因子} 分类，以便能够随时间推移观察到各种疾病的表现并与最初的分类进行联系。也见 {help pss_glossary##def_retrospective:{it:回顾性研究}}。

{phang}
{bf:PrSS 分析}。
参见 {help pss glossary##def_prss:{it:精度和样本量分析}}。

{phang}
{bf:PSS 分析}。
参见 {help pss_glossary##def_pss:{it:功效和样本量分析}}。

{marker def_pcp}{...}
{phang}
{bf:PSS 控制面板}。
PSS 控制面板是用于 {help pss_glossary##def_pss:功效和样本量分析} 的点击式图形用户界面。参见 {manlink PSS-2 GUI (power)}。

{marker def_pvalue}{...}
{phang}
{bf:p 值}。
p 值是指在假设 {help pss_glossary##def_nullhyp:原假设} 为真的情况下，获得的检验统计量与所观察到的样本一样极端或更极端的概率。

{marker def_r2}{...}
{phang}
{bf:R²}。
参见 {help sem_glossary##coefdeter:{it:确定系数}}。

{marker def_randomeffects}{...}
{phang}
{bf:随机效应}。
随机效应表示从所有可能水平中随机抽样的水平，关注的是所有可能的水平。

{marker def_rct}{...}
{phang}
{bf:随机对照试验}。
在这种 {help pss_glossary##def_expstudy:实验研究} 中，治疗随机分配给两个或多个组的受试者。

{phang}
{bf:RCT}。
参见 {help pss_glossary##def_rct:{it:随机对照试验}}。

{phang}
{bf:招募期}。
参见 {help pss_glossary##accrual_period:{it:入组期}}。

{marker def_reducedmodel}{...}
{phang}
{bf:简约模型}。
在回归上下文中，简约模型是包含对应的 {help pss_glossary##def_fullmodel:全模型} 中的协变量子集的回归模型。这些协变量称为“控制协变量”。不在简约模型中的协变量称为“被检验协变量”。

{phang}
{bf:参考值}。
参见 {help pss_glossary##def_nullval:{it:原假设值}}。

{marker def_rejregion}{...}
{phang}
{bf:拒绝区域}。
在 {help pss_glossary##def_hyptesting:假设检验} 中，拒绝区域是使得原
{help pss_glossary##def_nullhyp:假设} 可以被拒绝的样本值集合。

{phang}
{bf:相对风险}。
参见 {help pss_glossary##def_riskratio:{it:风险比}}。

{marker def_retrospective}{...}
{phang}
{bf:回顾性研究}。
在回顾性研究中，具有兴趣疾病的群体与没有该疾病的群体进行比较，并以回顾的方式收集每组对各种 {help pss_glossary##def_riskfactor:风险因子} 的暴露信息，这些因子可能与该疾病相关。也见 {help pss_glossary##def_prospective:{it:前瞻性研究}}。

{phang}
{bf:风险差}。
风险差被定义为在增加一个单位的风险因子时事件发生的概率减去在没有增加风险因子的情况下事件发生的概率。

{pmore}
当风险因子是二元的时，风险差是当风险因子存在时事件发生的概率减去当风险因子不存在时事件发生的概率。

{pmore}
当比较两个群体时，风险差被定义为两个组中事件发生的概率之间的差。它通常是比较组或实验组中的概率与参考组或对照组中的概率之间的差异。

{marker def_riskfactor}{...}
{phang}
{bf:风险因子}。
风险因子是与结果发生概率增加或减少相关的变量。

{marker def_riskratio}{...}
{phang}
{bf:风险比}。
风险比，也称为相对风险，测量风险因子增加一个单位时事件发生的可能性增加。它是当风险因子增加一个单位时事件发生的概率与未增加该风险因子时的概率之比。

{pmore}
当风险因子是二元的时，风险比是当风险因子发生时事件发生的概率与当风险因子不发生时的概率之比。

{pmore}
当比较两个群体时，风险比被定义为两个组中事件发生的概率之比。它通常是比较组或实验组中的概率与参考组或对照组中的概率之比。

{marker def_samplesize}{...}
{phang}
{bf:样本量}。
这是样本中受试者的数量。参见 {manlink PSS-2 Intro (power)} 以了解有关样本量与检验功效之间关系的更多信息。

{phang}
{bf:样本量曲线}。
样本量曲线是估计的 {help pss_glossary##def_samplesize:样本量} 随某个其他研究参数（如功效）变化的图形。样本量在 y 轴上绘制，而功效或其他参数在 x 轴上绘制。

{marker def_sampsideterm}{...}
{phang}
{bf:样本量确定}。
这涉及给定功效、效应大小和其他研究参数计算的 {help pss_glossary##def_samplesize:样本量}。在 {help pss_glossary##def_crd:集群随机设计} 中，样本量确定包括在给定集群大小的情况下确定集群数量或在给定集群数量的情况下确定集群大小。

{marker def_sampsiratio}{...}
{phang}
{bf:样本量比}。
实验组样本量与对照组样本量的比率，n_2/n_1。

{marker def_sattw}{...}
{phang}
{bf:Satterthwaite's t 检验}。
Satterthwaite's t 检验是对 {help pss_glossary##def_ttest:双样本 t 检验} 的修改，以考虑两个总体中方差的不均等。见 {mansection PSS-2 powertwomeansMethodsandformulas:{it:方法和公式}} 在 {bf:[PSS-2] power twomeans} 中获取更多详细信息。

{marker def_scoretest}{...}
{phang}
{bf:得分检验}。
得分检验，也称为拉格朗日乘子检验，是与其他经典的检验程序之一，用于比较两种模型的适合度，其中一个模型（受限模型）嵌套在全模型（不受限模型）中。原假设是受限模型的拟合数据与全模型相同。得分检验只需要拟合受限模型。参见 {helpb power oneproportion:[PSS-2] power oneproportion} 和 {help prtest_zh:[R] prtest}。

{phang}
{bf:灵敏度分析}。
灵敏度分析研究变化研究参数对功效、样本量和研究其他组成部分的影响。研究参数的真实值通常是未知的，功效和样本量分析使用这些值的最佳猜测。因此，评估计算功效或样本量相对于研究参数变化的敏感性是重要的。有关详细信息，请见 {help power_opttable_zh:[PSS-2] power, table} 和 {helpb power optgraph:[PSS-2] power, graph}。

{phang}
{bf:符号检验}。
符号检验用于检验分布的中位数是否等于某个参考值。符号检验作为二项比例检验进行，其中参考值为 0.5。参见 {helpb power oneproportion:[PSS-2] power oneproportion} 和 {help bitest_zh:[R] bitest}。

{marker def_siglevel}{...}
{phang}
{bf:显著性水平}。
在 {help pss_glossary##def_hyptesting:假设检验} 中，显著性水平 alpha 是对 {help pss_glossary##def_prtypeIerr:第一类错误概率} 的上限。参见 {manlink PSS-2 Intro (power)} 以了解显著性水平与检验功效之间的关系。

{phang}
{bf:检验大小}。
参见 {help pss_glossary##def_siglevel:{it:显著性水平}}。

{marker def_sphericity}{...}
{phang}
{bf:球面性假设}。
组内因素的不同水平之间的差异具有相同的方差。

{marker def_stratified2x2tables}{...}
{phang}
{bf:分层 2 x 2 表}。
分层 2 x 2 表描述一个二元自变量与一个二元响应变量之间的关系。所进行的分析以具有 K 个水平的名义（分类）变量为分层依据。

{phang}
{bf:对称性}。
在一个 {help pss_glossary##def_2x2table:2 x 2 列联表} 中，对称性指的是对角线外的元素的相等性。对于 2 x 2 表，对
{help pss_glossary##def_marghomog:边际同质性} 的检验归结为对称性的检验。

{marker def_ttest}{...}
{phang}
{bf:t 检验}。
t 检验是检验统计量的抽样分布是学生 t 分布的检验。

{pmore}
单样本 t 检验用于检验总体的均值是否等于指定值，当方差必须被估计时。检验统计量遵循学生 t 分布，具有 N-1 个自由度，其中 N 是样本大小。

{pmore}
双样本 t 检验用于检验两个总体的均值是否相等，当两个总体的方差也必须被估计时。当两个总体方差不相等时，会对标准双样本 t 检验进行修改；见
{help pss_glossary##def_sattw:{it:Satterthwaite's t 检验}}。

{marker def_target}{...}
{phang}
{bf:目标参数}。
在功效和样本量分析中，目标参数是与研究进行假设检验的感兴趣参数。

{phang}
{bf:检验统计量}。
在 {help pss_glossary##def_hyptesting:假设检验} 中，检验统计量是样本的一个函数，而不依赖于任何未知参数。

{phang}
{bf:被检验协变量}。
参见 {help pss_glossary##def_reducedmodel:{it:简约模型}}。

{phang}
{bf:两独立样本检验}。
参见 {help pss_glossary##def_twosample:{it:双样本检验}}。

{phang}
{bf:双样本配对检验}。
参见 {help pss_glossary##def_pairedtest:{it:成对检验}}。

{marker def_twosample}{...}
{phang}
{bf:双样本检验}。
双样本检验用于检验两个独立总体的感兴趣参数是否相等。例如，双样本均值检验、双样本方差检验、双样本比例检验和双样本相关性检验。

{marker def_twosidedci}{...}
{phang}
{bf:双边置信区间}。
双边 CI 包含一个关于感兴趣参数的合理值的有限范围。双边 CIs 对于比点估计大的可能值有一个有限的上限，对比点估计小的可能值有一个有限的下限。参见
{mansection PSS-3 Intro(ciwidth)RemarksandexamplesConfidenceintervals:{it:置信区间}}
在 {bf:[PSS-3] Intro (ciwidth)} 中。

{marker def_twosided}{...}
{phang}
{bf:双边检验}，{bf:双尾检验}。
双边检验是对某参数的 {help pss_glossary##def_hyptesting:假设检验}，其中 {help pss_glossary##def_althyp:替代假设} 是原假设的补充。在对标量参数的检验中，替代假设声明该参数小于或大于在原假设下推测的值。

{marker def_twoway}{...}
{phang}
{bf:双因素 ANOVA}，{bf:双因素方差分析}。
双因素 {help pss_glossary##def_anova:ANOVA} 模型包含两个 {help pss_glossary##def_factor:因素}。
参见 {manlink PSS-2 power twoway}。

{marker def_twowayrep}{...}
{phang}
{bf:双因素重复测量 ANOVA}，{bf:双因素 ANOVA}。
这是带有一个 {help pss_glossary##def_withinfactor:组内因素} 和一个 {help pss_glossary##def_betweenfactor:组间因素} 的重复测量 {help pss_glossary##def_onewayrep:ANOVA} 模型。该模型可以是加法的（仅包含因素的主效应）或包含主效应和两个因素之间的交互作用。也见 {manlink PSS-2 power repeated}。

{marker def_typeIerr}{...}
{phang}
{bf:第一类错误}。
检验的第一类错误是错误地拒绝正确的原假设；参见 {manlink PSS-2 Intro (power)} 以了解更多详细信息。

{phang}
{bf:第一类错误概率}。
参见 {help pss_glossary##def_prtypeIerr:{it:第一类错误概率}}。

{phang}
{bf:第一类研究}。
第一类研究是所有受试者在研究结束时失败（或发生事件）的研究；即，没有任何受试者被删失。

{marker def_typeIIerr}{...}
{phang}
{bf:第二类错误}。
检验的第二类错误是未能拒绝原假设，但原假设实际上是假的；见 {manlink PSS-2 Intro (power)} 以了解更多详细信息。

{phang}
{bf:第二类错误概率}。
参见 {help pss_glossary##def_prtypeIIerr:{it:第二类错误概率}}。

{phang}
{bf:第二类研究}。
第二类研究是一些受试者在研究结束时没有失败（或发生事件）的研究。这些受试者已知是被删失的。

{marker def_unbalanced}{...}
{phang}
{bf:不平衡设计}。
不平衡设计表示在实验中处理和不处理的受试者数量不同。也见 {manlink PSS-4 不平衡设计}。

{phang}
{bf:不等额分配设计}。
参见 {help pss_glossary##def_unbalanced:{it:不平衡设计}}。

{marker def_upperci}{...}
{phang}
{bf:上单边置信区间}。
上单边置信区间包含小于或等于上置信限 {it:ul} 的值范围。置信区间定义为有限的上置信限和下置信限为负无穷大：
(-无穷大， {it:ul}]。

{phang}
{bf:上单边检验}，{bf:上单尾检验}。
上单边检验是对标量的 {help pss_glossary##def_onesided:单边检验}，其中 {help pss_glossary##def_althyp:替代假设} 上单边，意味着替代假设表示参数大于在 {help pss_glossary##def_nullhyp:原假设} 下推测的值。也见
{mansection PSS-2 Intro(power)Remarksandexamplesonevstwo:{it:单侧检验与双侧检验}} 在 {bf:[PSS-2] Intro (power)} 的 {it:备注和示例} 下。

{phang}
{bf:Wald 检验}。
Wald 检验是用于比较两个模型适合度的三种经典检验程序之一，其中一个模型（受限模型）嵌套在全模型（不受限模型）中。在原假设下，受限模型的拟合数据与全模型相同。Wald 检验要求拟合全模型，但不要求拟合受限模型。
也见 {helpb power oneproportion:[PSS-2] power oneproportion} 和 {help test_zh:[R] test}。

{phang}
{marker withdrawal}{...}
{bf:撤回}。
撤回是受试者因与感兴趣事件无关的原因而从研究中退出的过程。例如，如果受试者迁移到其他地方或决定不再参与研究，就会发生撤回。撤回不应与行政删失混淆。如果受试者从研究中退出，关于这些受试者在研究结束时将经历的结果的信息是不可得的。也见
{it:{help pss_glossary##loss_to_followup:失访}} 和
{it:{help pss_gl

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <pss_glossary.sthlp>}