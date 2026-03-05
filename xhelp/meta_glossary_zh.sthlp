{smcl}
{* *! version 1.0.0  19jun2019}{...}
{vieweralsosee "[META] 词汇表" "mansection META Glossary"}{...}
{viewerjumpto "描述" "meta_glossary_zh##description"}{...}
{viewerjumpto "词汇表" "meta_glossary_zh##glossary"}{...}
{viewerjumpto "参考文献" "meta_glossary_zh##references"}
{help meta_glossary:English Version}
{hline}{...}
{p2colset 1 20 21 2}{...}
{p2col:{bf:[META] 词汇表} {hline 2}}术语词汇表{p_end}
{p2col:}({mansection META Glossary:查看完整 PDF 手册条目}){p_end}
{p2colreset}{...}


{marker description}{...}
{title:描述}

{pstd}此处定义了常用术语。


{marker glossary}{...}
{title:词汇表}

{phang}
{bf:Begg检验，Begg和Mazumdar检验}。一种用于漏斗图不对称的非参数秩相关检验
{help meta_glossary##beggmazumdar1994:Begg和Mazumdar (1994)}。它检验效应大小与其方差之间的Kendall秩相关是否等于零。基于回归的检验，如
{help meta_glossary##Egger_test:Egger检验}通常在I型误差方面表现更好，而不是秩相关检验。该检验在文献中不再推荐，主要是为了完整性。见
{help meta_bias_zh:[META] 元偏倚}。

{phang}
{bf:研究间样本量}。元分析中研究的数量。

{phang}
{bf:研究间变异性}。也称为研究间异质性；见 {help meta_glossary##heterog:{it:异质性}}。

{phang}
{bf:气泡图}。在元回归中，效应大小与一个连续协变量（调节变量）的散点图。代表研究的点的大小与基于固定效应或可选的随机效应元分析的研究权重成正比。

{phang}
{bf:临床异质性}。依据
{help meta_glossary##deekshigginsaltman2017:Deeks, Higgins,和Altman (2017)}，
它是“研究对象、干预及结果的可变性”。如果效应大小受到这些变化因素的影响，临床变异将导致
{help meta_glossary##heterog:异质性}。

{phang}
{bf:哥chrane的Q统计量}。见
{help meta_glossary##qstat:{it:Q统计量}}。

{marker cohend}{...}
{phang}
{bf:Cohen's d}。一种效应大小的测量，由
{help meta_glossary##cohen1988:Cohen (1988)}引入，适用于连续结果。它是一个标准化的均值差，其中两组均值之间的差异通常被两组共同的标准差所除。见
{mansection META metaesizeMethodsandformulasStandardizedmeandifference:{it:标准化均值差}}于 {bf:[META] meta esize}。

{phang}
{bf:合并效应大小}。见
{it:{help meta_glossary##oes:总体效应大小}}。

{phang}
{bf:共同效应元分析模型}。一种假设单一（共同）真实效应大小隐含在所有
{help meta_glossary##primary:主要研究}结果中的元分析模型。
见 {mansection META IntroRemarksandexamplesCommon-effect(fixed-effect)model:{it:共同效应（"固定效应"）模型}}于 {bf:[META] Intro}。

{phang}
{bf:累积元分析}。累积元分析通过一次性累积研究来执行多次元分析。研究首先根据感兴趣的变量排序，即排序变量。
然后计算第一个研究、前两个研究、前三个研究等等的元分析总结。最后的元分析将对应于使用所有研究的标准元分析。
见 {manhelp meta_summarize META:meta summarize}。

{phang}
{bf:累积总体效应大小}。在累积元分析中，累积（总体）效应大小是指通过一次性累积一项研究所计算的总体效应大小。也就是说，第一个总体效应大小只是第一项研究的个体效应大小。第二个总体效应大小是基于前两项研究计算的总体效应大小。第三个总体效应大小是基于前三项研究计算的总体效应大小。依此类推。累积元分析中的最后效应大小对应于使用所有研究的标准元分析计算的总体效应大小。

{phang}
{bf:DerSimonian-Laird的方法}。一种非迭代的随机效应估计方法，该方法不对随机效应的分布做任何假设。此方法由
{help meta_glossary##dersimonianlaird1986:DerSimonian和Laird (1986)}引入。历史上，随机效应元分析仅基于此方法。见
{mansection META metasummarizeMethodsandformulasNoniterativemethods:{it:非迭代方法}}于 {bf:[META] meta summarize}。

{marker esize}{...}
{phang}
{bf:效应大小}。一组差异或因素之间关联的数值摘要。例如，对于两组比较的效应大小包括标准化和非标准化均值差、赔率比、风险比、风险比和相关系数。
见 {helpb meta esize:[META] meta esize}。

{marker Egger_test}{...}
{phang}
{bf:Egger检验}。用于漏斗图不对称的基于回归的检验
({help meta_glossary##eggeretal1997:Egger等人 1997年})。这是效应大小与其标准误差的加权回归中的斜率系数检验。见 {helpb meta bias:[META] 元偏倚}。

{marker femamodel}{...}
{phang}
{bf:固定效应元分析模型}。一种假设效应大小在不同研究中不同，并估计其真实值的加权平均值的元分析模型。此模型对推论超出包括在元分析中的研究是不有效的。见
{mansection META IntroRemarksandexamplesFixed-effectsmodel:{it:固定效应模型}}于 {bf:[META] Intro}。

{phang}
{bf:固定效应元回归}。
{help meta_glossary##meta_regression:元回归}，假设
一个固定效应元分析模型。该回归模型不考虑残余异质性。见
{mansection META metaregressRemarksandexamplesIntroduction:{it:介绍}}于 {bf:[META] meta regress}。

{phang}
{bf:森林图}。森林图是元分析结果的图形表示。除了包括总体效应大小及其置信区间、异质性统计量和检验之外，它还包括特定研究的效应大小和置信区间。见 {manhelp meta_forestplot META:meta forestplot}。

{phang}
{bf:漏斗图}。漏斗图是研究特定效应大小与研究精度的测量的散点图。该图通常用于探索小样本效应或出版偏倚。在没有小样本效应的情况下，散点图的形状应类似于对称的反向漏斗。见 {manhelp meta_funnelplot META:meta funnelplot}。

{marker glassdelta}{...}
{phang}
{bf:Glass's Delta}。一种效应大小的测量，由
{help meta_glossary##smithglass1977:Smith和Glass (1977)}引入，适用于连续结果。它是一个标准化均值差，其中两组均值之间的差异由控制组的样本标准差除以。此统计量的另一种变体使用处理组的样本标准差进行标准化。见
{mansection META metaesizeMethodsandformulasStandardizedmeandifference:{it:标准化均值差}}于 {bf:[META] meta esize}。

{phang}
{bf:灰色文献}。在元分析中，灰色文献是指难以获得的文献；因此，通常不包含在元分析中。

{phang}
{bf:H^2统计量}。用于评估异质性的统计量。H^2 = 1的值表示研究之间完全同质。见
{mansection META metasummarizeMethodsandformulasHeterogeneitymeasures:{it:异质性测量}}于 {bf:[META] meta summarize}。

{marker hedgesg}{...}
{phang}
{bf:Hedges's g}。一种效应大小的测量，由
{help meta_glossary##hedges1981:Hedges (1981)}引入，适用于
连续结果。它是一个{help meta_glossary##cohend:Cohen's d}统计量，经过偏差调整。
见 {mansection META metaesizeMethodsandformulasStandardizedmeandifference:{it:标准化均值差}}于 {bf:[META] meta esize}。

{marker heterog}{...}
{phang}
{bf:异质性}。在元分析中，统计异质性，或简单称为异质性，是指研究特定效应大小之间的变异性，无法通过随机变异解释。
见 {mansection META IntroRemarksandexamplesHeterogeneity:{it:异质性}}于 {bf:[META] Intro}。

{marker heteroparam}{...}
{phang}
{bf:异质性参数}。在随机效应元分析中，随机效应的方差tau^2用于解释研究间的异质性。它通常被称为“异质性参数”。

{phang}
{bf:同质性}。与{help meta_glossary##heterog:异质性}相反。

{marker homogeneity_test}{...}
{phang}
{bf:同质性检验}。基于Cochrane的
{help meta_glossary##qstat:Q统计量}的检验，用于评估元分析中研究的效应大小是否同质。见
{mansection META metasummarizeMethodsandformulasHomogeneitytest:{it:同质性检验}}于 {bf:[META] meta summarize}。

{phang}
{bf:I^2统计量}。用于评估异质性的统计量。它估计因异质性引起的效应大小变异的比例，相对于纯采样变异而言。I^2 > 50表示显著异质性。见
{mansection META metasummarizeMethodsandformulasHeterogeneitymeasures:{it:异质性测量}}于 {bf:[META] meta summarize}。

{phang}
{bf:干预效应}。见
{help meta_glossary##esize:{it:效应大小}}。

{phang}
{bf:逆方差法}。一种估计总体效应大小的方法，通过使用与方差成反比的权重，作为各研究特定效应大小的加权平均。
({help meta_glossary##whiteheadwhitehead1991:Whitehead和Whitehead 1991})。此方法适用于所有元分析模型和所有类型的效应大小。

{phang}
{bf:L'Abb{c e'}图}。一个包含对照组的对数赔率在x轴上的总结结果测量散点图，治疗组在y轴上。它用于二元结果，检查研究中组级总结结果的范围，以识别过度异质性。见 {manhelp meta_labbeplot META:meta labbeplot}。

{phang}
{bf:大层限制模型}。一种针对二元数据的模型假设，其中研究数量保持固定，但2 x 2表中的单元格大小相似且增大。见
{help meta_glossary##robinsbreslowgreenland1986:Robins, Breslow和Greenland (1986)}。

{phang}
{bf:Mantel-Haenszel方法}。在元分析中，Mantel-Haenszel方法结合赔率比、风险比和风险差异。该方法在稀疏数据存在的情况下表现良好。
对于非稀疏数据，其结果与逆方差法的结果相似。它由
{help meta_glossary##mantelhaenszel1959:Mantel和Haenszel (1959)}引入用于赔率比，并由
{help meta_glossary##greenlandrobins1985:Greenland和Robins (1985)}扩展到风险比和风险差异。见
{mansection META metasummarizeMethodsandformulasMantel--Haenszelmethodforbinaryoutcomes:{it:二元结果的Mantel-Haenszel方法}}于 {bf:[META] meta summarize}。

{marker meta_data}{...}
{phang}
{bf:元数据}。{cmd:meta}数据是通过 {helpb meta set} 或 {helpb meta esize} 声明的 {cmd:meta} 数据。{cmd:meta} 数据存储关于您的元分析规范的关键变量和特征，将在您的元分析会话期间，所有 {help meta_zh} 命令中使用。因此，将您的数据声明为 {cmd:meta} 数据是您在Stata中进行元分析的第一步。此步骤有助于减少错误并节省时间 – 您只需一次性指定必要信息。另见 {manlink META meta data}。

{marker meta_settings}{...}
{phang}
{bf:元设置}。元设置是指在通过 {helpb meta set} 或 {helpb meta esize} 声明 {cmd:meta} 数据时指定的元分析信息。包括声明的效应大小、元分析模型、估计方法、置信水平等。见
{mansection META metadataRemarksandexamplesDeclaringmeta-analysisinformation:{it:声明元分析信息}}于 {bf:[META] meta data}以获取详细信息。

{marker meta_analysis}{...}
{phang}
{bf:元分析}。一种将来自多个个体研究的定量结果合并为单一结果的统计分析。它通常作为系统评价的一部分进行。
见 {mansection META IntroRemarksandexamplesBriefoverviewofmeta-analysis:{it:元分析的简要概述}}于 {bf:[META] Intro}。

{marker meta_regression}{...}
{phang}
{bf:元回归}。对研究效应大小与
研究级别协变量或调节变量的加权回归。您可以将其视为标准元分析的扩展，以纳入调节变量，以解释研究间异质性。见 {manhelp meta_regress META:meta regress}。

{phang} 
{bf:方法学异质性}。研究设计和实施中的可变性
({help meta_glossary##deekshigginsaltman2017:Deeks, Higgins和Altman 2017})。
见 {mansection META IntroRemarksandexamplesHeterogeneity:{it:异质性}}于 {bf:[META] Intro}。

{marker moderator}{...}
{phang}
{bf:调节变量}。调节变量是一个研究级别的协变量，可能有助于解释
研究间异质性。如果调节变量是分类的，可以通过子组分析研究其影响（见 {manhelp meta_summarize META:meta summarize}）；如果调节变量是连续的，则可以通过元回归研究其影响。
见 {manhelp meta_regress META:meta regress}。

{phang}
{bf:多个子组分析}。为每个多个分类变量单独进行的子组分析。见
{manhelp meta_summarize META:meta summarize}。

{marker mdparam}{...}
{phang}
{bf:乘法散布参数}。在固定效应元回归中，乘法散布参数是应用于每个效应大小的方差的乘法因子，以考虑
{help meta_glossary##residhet:残余异质性}。见
{mansection META metaregressRemarksandexamplesIntroduction:{it:介绍}}于 {bf:[META] meta regress}。

{phang}
{bf:乘法元回归}。一种固定效应元回归，通过一个分散参数phi准确考虑了{help meta_glossary##residhet:残余异质性}，以乘法方式应用于每个效应大小方差。见
{mansection META metaregressRemarksandexamplesIntroduction:{it:介绍}}于 {bf:[META] meta regress}。

{phang}
{bf:叙述性回顾}。在叙述性回顾中，由某人（某领域的专家）基于对研究的研究，给出关于多个研究结果的结论。该方法通常是主观的，并且无法考虑研究的一些方面，例如研究异质性和出版偏倚。

{phang}
{bf:赔率比}。一个组（治疗组）成功的几率与另一个组（对照组）成功几率的比率。它通常用作比较两个组的二元结果的效应大小。
见 {helpb meta esize:[META] meta esize}。

{marker oes}{...}
{phang}
{bf:总体效应大小}。元分析中主要关注的目标。其解释取决于假设的元分析模型。在共同效应模型中，它是研究的共同效应大小。在固定效应模型中，它是具体研究效应大小的加权平均值。在随机效应模型中，它是效应大小分布的均值。
总体效应大小通常在输出中表示为 {cmd:theta}。另见
{mansection META IntroRemarksandexamplesMeta-analysismodels:{it:元分析模型}}于 {bf:[META] Intro}。

{phang}
{bf:Peto方法}。一种组合赔率比的方法，通常用于稀疏的 2 x 2 表。此方法不需要{help meta_glossary##zerocelladj:零单元调整}。
见 {mansection META metasummarizeMethodsandformulasPetosmethodforoddsratios:{it:Peto方法用于赔率比}}于
{manhelp meta_summarize META:meta summarize}。

{phang}
{bf:合并效应大小}。见
{it:{help meta_glossary##oes:总体效应大小}}。

{marker prediction_interval}{...}
{phang}
{bf:预测区间}。在随机效应元分析中，100(1-alpha)%
的预测区间表示新研究中真实效应大小将在该区间内的概率为100(n1-alpha)%。见
{mansection META metasummarizeMethodsandformulasPredictionintervals:{it:预测区间}}于 {bf:[META] meta summarize}。

{marker primary}{...}
{phang}
{bf:主要研究}。原始数据收集的研究。元分析中的观察表示一个主要研究。

{phang}
{bf:伪置信区间}。伪置信区间是指由标准漏斗图构造的置信区间。见
{manhelp meta_funnelplot META:meta funnelplot}。

{marker pubbias}{...}
{phang}
{bf:出版偏倚}。出版偏倚在元分析文献中被认为是出版可能性与研究结果统计显著性之间的关联。见
{mansection META IntroRemarksandexamplesPublicationbias:{it:出版偏倚}}于 {bf:Intro}。

{marker qstat}{...}
{phang}
{bf:Q统计量}。{help meta_glossary##homogeneity_test:同质性检验}的检验统计量。见
{mansection META metasummarizeMethodsandformulasHomogeneitytest:{it:同质性检验}}于 {manhelp meta_summarize META:meta summarize}。

{marker remamodel}{...}
{phang}
{bf:随机效应元分析模型}。一种假设研究效应是随机的元分析模型；
即，元分析中使用的研究代表了从更大相似研究群体中随机抽取的样本。见
{mansection META IntroRemarksandexamplesRandom-effectsmodel:{it:随机效应模型}}于 {bf:[META] Intro}。

{phang}
{bf:随机效应元回归}。
{help meta_glossary##meta_regression:元回归}，假设
随机效应元分析模型。该回归模型通过加性误差项来解释残余异质性。见
{mansection META metaregressRemarksandexamplesIntroduction:{it:介绍}}于 {manhelp meta_regress META:meta regress}。

{phang}
{bf:随机对照试验}。随机对照试验是一种实验，参与者随机分配到两个或多个不同的治疗组。随机对照试验通常用于临床研究，以确定新疗法的有效性。按设计，避免了治疗估算中的偏见。

{phang}
{bf:比率比}。见 {help meta_glossary##rratio:{it:风险比}}。

{phang}
{bf:相对风险}。见 {help meta_glossary##rratio:{it:风险比}}。

{phang}
{bf:报告偏倚}。在元分析中选择的研究与与研究问题相关的所有研究之间的系统差异。另见 {help meta_glossary##pubbias:{it:出版偏倚}}。

{marker residhet}{...}
{phang}
{bf:残余异质性}。在元回归上下文中，这是研究之间未被调节变量解释的剩余变异性。
它通常在随机效应元回归中由{help meta_glossary##heteroparam:异质性参数}表示，或者在固定效应元回归中由
{help meta_glossary##mdparam:乘法散布参数}表示。

{marker rratio}{...}
{phang}
{bf:风险比}。一个组（治疗组）成功概率与另一个组（对照组）成功概率的比率。它通常用作比较两个组的二元结果的效应大小。见 
{helpb meta esize:[META] meta esize}。

{phang}
{bf:敏感性分析}。在元分析上下文中，敏感性分析用于评估元分析结果对数据和元分析模型的假设的稳健性。
见 {manhelp meta_summarize META:meta summarize}。

{phang}
{bf:显著性轮廓}。在漏斗图的上下文中
({manhelp meta_funnelplot META:meta funnelplot})，显著性轮廓（或统计显著性的等高线）是对应于给定显著性水平 alpha = c/100的单独效应大小显著性检验的等高线。换句话说，如果一项研究落在c级等高线的阴影区域内，则基于研究效应大小的显著性检验被认为在alpha水平下不具有统计显著性。

{phang}
{bf:单一子组分析}。为一个分类变量进行的子组分析。见 {manhelp meta_summarize META:meta summarize}。

{marker small_study_effects}{...}
{phang}
{bf:小样本效应}。小样本效应是指较小的研究结果与较大研究结果之间存在系统性差异。见
{mansection META metafunnelplotRemarksandexamplesIntroduction:{it:介绍}}于 {bf:[META] meta funnelplot}。

{marker sparsedata}{...}
{phang}
{bf:稀疏数据}。对于二元数据，如果任何单元格的计数较小，则认为一个 2 x 2 表是稀疏的。

{phang}
{bf:稀疏数据限制模型}。一种针对二元数据的模型假设，其中2 x 2表（研究）的数量增加，但单元格大小保持固定。见
{help meta_glossary##robinsbreslowgreenland1986:Robins, Breslow 和 Greenland (1986)}。

{phang}
{bf:统计异质性}。见
{help meta_glossary##heterog:{it:异质性}}。

{phang}
{bf:研究精度}。研究精度是研究样本大小或研究变异性的函数。通常，研究精度通过效应大小标准误的倒数1/σ_j来衡量，但也使用其他衡量方式。例如，在漏斗图中，考虑了多种精度指标，如方差和样本大小。在元分析中，更精确的研究（较大样本和较小方差）被赋予更大的权重。

{phang}
{bf:子组分析}。子组分析将研究分为几个组，然后为每个组估计总体效应大小。子组分析的目标是比较总体效应大小并探索亚组之间的异质性。见 
{helpb meta summarize:[META] meta summarize} 和 
{helpb meta forestplot:[META] meta forestplot}。

{marker subgroup_het}{...}
{phang}
{bf:子组异质性}。在元分析上下文中，子组异质性是由一个或多个分类变量定义的组效应大小之间的差异引起的研究间异质性。见 {manhelp meta META} 和 {manhelp meta_summarize META:meta summarize}。

{marker summary_data}{...}
{phang}
{bf:总结数据}。在
{help meta_glossary##meta_analysis:元分析}的上下文中，我们使用总结数据一词，指用于计算每个研究的效应大小及其标准误的总结统计数据。例如，对于连续结果的两组比较，总结数据包含每个组的观察数量、均值和标准差。对于二元结果的两组比较，摘要数据包含每个研究的 2 x 2 表。见
{manhelp meta_esize META:meta esize}。

{phang}
{bf:总结效应}。见
{help meta_glossary##oes:{it:总体效应大小}}。

{phang}
{bf:系统评审}。一种使用系统且定义明确的方法找到、选择和评估相关研究，以回答特定研究问题的程序。通常涉及对所选研究的总结数据进行收集和分析。元分析是系统评审中使用的统计分析。

{phang}
{bf:修剪与填补方法}。一种用于测试和调整元分析中出版偏倚的方法；见
{manhelp meta_trimfill META:meta trimfill}。

{marker zerocelladj}{...}
{phang}
{bf:零单元调整}。对包含零单元的2 x 2表的单元格进行的调整。在二元数据的元分析中，零单元计数在计算赔率比和风险比时会造成困难。因此，通常会进行零单元调整，例如向所有包含零的单元格添加一个小数字。见
{mansection META metaesizeMethodsandformulasZero-cellsadjustments:{it:零单元调整}}于 {manhelp meta_esize META:meta esize}。


{marker references}{...}
{title:参考文献}

{marker beggmazumdar1994}{...}
{phang}
Begg, C. B., and M. Mazumdar. 1994. 用于出版偏倚的秩相关检验的操作特性。
{it:生物统计学} 50: 1088–1101。

{marker cohen1988}{...}
{phang}
Cohen, J. 1988. {it:行为科学的统计功效分析}。
第二版。新泽西州希尔斯代尔：Erlbaum。

{marker deekshigginsaltman2017}{...}
{phang}
Deeks, J. J., J. P. T. Higgins, and D. G. Altman. 2017. 数据分析与元分析的实施。载于
{it:干预系统评审的考克兰手册，第 5.2.0 版}，编辑 J. P. T. Higgins 和 S. Green，第 9 章。
伦敦：考克兰合作组织。
{browse "https://training.cochrane.org/handbook"}。

{marker dersimonianlaird1986}{...}
{phang}
DerSimonian, R., 和 N. Laird. 1986. 临床试验中的元分析。
{it:受控临床试验} 7: 177-188。

{marker eggeretal1997}{...}
{phang}
Egger, M., G. Davey Smith, M. Schneider, 和 C. Minder. 1997. 通过简单的图形检验检测元分析中的偏倚。
{it:英国医学杂志} 315: 629–634。

{marker greenlandrobins1985}{...}
{phang}
Greenland, S., 和 J. M. Robins. 1985. 从稀疏的跟踪数据中估计共同效应参数。
{it:生物统计学} 41: 55–68。

{marker hedges1981}{...}
{phang}
Hedges, L. V. 1981. Glass的效应大小估计量及相关估计量的分布理论。 {it:教育统计学杂志} 6: 107-128。

{marker mantelhaenszel1959}{...}
{phang}
Mantel, N., 和 W. Haenszel. 1959. 回顾性研究中数据分析的统计学方面。
{it:国家癌症研究所杂志} 22: 719-748。
重印于 {it:流行病学思想的演变：注释} 
{it:概念与方法的阅读}，编辑 S. Greenland，第 112-141 页。
马萨诸塞州新顿下瀑布：流行病学资源。

{marker robinsbreslowgreenland1986}{...}
{phang}
Robins, J. M., N. E. Breslow, 和 S. Greenland. 1986. 在稀疏数据和大层限制模型中一致的 Mantel-Haenszel 方差估计量。 {it:生物统计学} 42: 311-323。

{marker smithglass1977}{...}
{phang}
Smith, M. L., 和 G. V. Glass. 1977. 心理治疗结果研究的元分析。 {it:美国心理学家} 32: 752-760。

{marker whiteheadwhitehead1991}{...}
{phang}
Whitehead, A., 和 J. Whitehead. 1991. 随机临床试验元分析的一般参数方法。
{it:医学统计学} 10: 1665-1677。
{p_end}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <meta_glossary.sthlp>}