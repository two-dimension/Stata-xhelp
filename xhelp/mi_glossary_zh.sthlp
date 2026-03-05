{smcl}
{* *! version 1.0.28  15may2018}{...}
{vieweralsosee "[MI] 术语表" "mansection MI Glossary"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[MI] 介绍" "help mi_zh"}{...}
{viewerjumpto "描述" "mi_glossary_zh##description"}{...}
{viewerjumpto "术语表" "mi_glossary_zh##glossary"}
{help mi_glossary:English Version}
{hline}{...}
{p2colset 1 15 17 2}{...}
{p2col:{bf:[MI] 术语表}}{p_end}
{p2col:({mansection MI Glossary:查看完整 PDF 手册条目})}{p_end}
{p2colreset}{...}


{marker description}{...}
{title:描述}

{p 4 4 2}
请阅读。以下定义的术语在文档中广泛使用，有时没有解释。


{marker glossary}{...}
{title:术语表}

{marker def_arbitrary}{...}
{p 4 8 2}
{bf:任意缺失模式}。
    任意缺失值模式。一些插补方法仅在缺失值模式特殊时适用，例如{help mi_glossary##def_monotone:单调缺失模式}。适用于任意缺失模式的插补方法可以不受该模式的限制使用。

{p 4 8 2}
{bf:增强回归}。
    在增强数据上进行的回归，即包含一些权重较小的额外观察的数据。数据以一种防止完美预测的方式增强，这种情况可能在估计分类数据时发生。请查看在{bf:[MI] mi impute}的{it:备注和示例}下的{mansection MI miimputeRemarksandexamplesTheissueofperfectpredictionduringimputationofcategoricaldata:{it:在插补分类数据时完美预测的问题}}。

{p 4 8 2}
{bf:燃烧期}。
    两次抽样之间的迭代次数，使得这些抽样可以被视为独立的{help mi_glossary##def_MCMC:MCMC}序列。

{p 4 8 2}
{bf:燃烧期}。
    一个{help mi_glossary##def_MCMC:MCMC}序列达到平稳状态所需的迭代次数。

{p 4 8 2}
{bf:逐例删除}。
    见{it:{help mi_glossary##def_listwise:逐列表删除}}。

{p 4 8 2}
{bf:链式方程}。
    见{it:{help mi_glossary##def_FCS:完全条件规范}}。

{marker def_complete}{...}
{p 4 8 2}
{bf:完整和不完整观察}。
    在{it:m}=0数据中，如果观察中的任何{help mi_glossary##def_imputed:插补}变量不包含{help mi_glossary##def_hardmissing:硬缺失}（{cmd:.}），则称该观察为完整。未完整的观察称为不完整。

{p 4 8 2}
{bf:完整数据}。
    不包含任何缺失值的数据。

{marker complete_DF}{...}
{p 4 8 2}
{bf:完整自由度}。
    如果数据是完整的，将用于推断的自由度。

{p 4 8 2}
{bf:完整 DF}。
    见{it:{help mi_glossary##complete_DF:完整自由度}}。

{p 4 8 2}
{bf:完整案例分析}。
    见{it:{help mi_glossary##def_listwise:逐列表删除}}。

{p 4 8 2}
{bf:完整数据分析}。
    在完整数据上进行的分析或估计，即所有值均已观察到的数据。这一术语不指对完整观察子集进行的分析或估计。请勿将其与{help mi_glossary##def_completed_data_analysis:已完成数据分析}混淆。

{p 4 8 2}
{bf:已完成数据}。
    见{it:{help mi_glossary##def_imputed_data:插补数据}}。

{marker def_completed_data_analysis}{...}
{p 4 8 2}
{bf:已完成数据分析}。
    对被制作成为完整（插补）的数据进行的分析或估计。这一术语不指对完整观察子集进行的分析或估计。

{p 4 8 2}
{bf:条件插补}。
    使用条件样本进行的插补，即样本的一个受限部分。在条件样本之外的缺失值用条件常数替代，即在条件样本之外的非缺失观察中的插补变量的常数值。请查看在{bf:[MI] mi impute}的{it:备注和示例}下的{mansection MI miimputeRemarksandexamplesConditionalimputation:{it:条件插补}}。

{p 4 8 2}
{bf:DA}。
    见{it:{help mi_glossary##def_DA:数据增强}}。

{marker def_DA}{...}
{p 4 8 2}
{bf:数据增强}。
    一种用于缺失数据插补的{help mi_glossary##def_MCMC:MCMC}方法。

{p 4 8 2}
{bf:EM}。
    见{it:{help mi_glossary##def_EM:期望最大化算法}}。

{marker def_EM}{...}
{p 4 8 2}
{bf:期望最大化算法}。
    在 MI 背景下，针对缺失数据进行的获得最大似然或后验模式估计的迭代程序。

{p 4 8 2}
{bf:FCS}。
    见{it:{help mi_glossary##def_FCS:完全条件规范}}。

{p 4 8 2}
{bf:flong 数据}。
    见{it:{help mi_glossary##def_style:格式}}。

{p 4 8 2}
{bf:flongsep 数据}。
    见{it:{help mi_glossary##def_style:格式}}。

{p 4 8 2}
{bf:FMI}。
    见{it:{help mi_glossary##def_FMI:缺失信息比例}}。

{marker def_FMI}{...}
{p 4 8 2}
{bf:缺失信息比例}。
    由于缺失数据而丢失的信息与如果没有缺失数据时可能存在的总信息的比率。

{p 8 8 2}
    等价 FMI 检验是在假设参数间 FMIs 相等的基础上进行的检验。

{p 8 8 2}
    不限制的 FMI 检验是在没有等价 FMI 假设的情况下进行的检验。

{marker def_FCS}{...}
{p 4 8 2}
{bf:完全条件规范}。
    考虑插补变量 X_1, X_2, ..., X_p。完全条件规范的预测方程对于 X_j 包含除 X_j 之外的所有变量；也就是说，变量 {bf:X}_{-j} = (X_1, X_2, ..., X_{j-1}, X_{j+1}, ..., X_p)。

{marker def_hardmissing}{...}
{p 4 8 2}
{bf:硬缺失和软缺失}。
    硬缺失值是在{it:m}=0的插补变量中的{cmd:.a}, {cmd:.b}, ..., {cmd:.z}的值。硬缺失值在{it:m}>0时不被替换。

{p 8 8 2}
    软缺失值是在{it:m}=0的插补变量中的{cmd:.}的值。如果插补变量包含软缺失，则该值可插补，并且在{it:m}>0时可能被插补。

{p 8 8 2}
    虽然你可以对被动、常规和未注册变量使用硬缺失和软缺失的术语，但这对缺失值的处理并没有特殊意义。

{marker def_ignorable}{...}
{p 4 8 2}
{bf:可忽略缺失数据机制}。
    如果缺失数据是{help mi_glossary##def_MAR:随机缺失}并且数据模型的参数与缺失数据机制的参数是不同的，则称缺失数据机制为可忽略的；即模型参数和缺失数据参数的联合分布可以分解为模型参数和缺失数据参数的两个独立边际分布。

{marker def_imputed}{...}
{p 4 8 2}
{bf:插补、被动和常规变量}。
    插补变量是具有缺失值的变量，并且你已经或将要进行插补。

{p 8 8 2}
    被动变量是一个{help mi_glossary##def_varying:变化变量}，其是插补变量或其他被动变量的函数。被动变量在{it:m}=0时会有缺失值，并且在{it:m}>0时会有变化值。

{p 8 8 2}
    常规变量是既不是插补也不是被动的变量，并且在所有{it:m}中都具有相同的值，无论是否缺失。
    
{p 8 8 2}
    插补、被动和常规变量可以使用{bf:{help mi_set_zh:mi register}}命令注册。
    你需要注册插补变量，并且我们建议你注册被动变量。常规变量也可以注册。请参见{it:{help mi_glossary##def_registered:注册和未注册变量}}。

{p 8 8 2}
INCLUDE help mi_longvarnames

{marker def_imputed_data}{...}
{p 4 8 2}
{bf:插补数据}。
    在其中所有缺失值均被插补的数据。

{p 4 8 2}
{bf:不完整观察}。
    见{it:{help mi_glossary##def_complete:完整和不完整观察}}。

{p 4 8 2}
{bf:不合格缺失值}。
    不合格缺失值是即将插补的变量中的缺失值，因计算结果无法得出而非潜在值未被观察到。例如，假设变量{cmd:income}有一些缺失值，因此你希望进行插补。因为{cmd:income}是偏斜的，你决定插补收入的对数，并且你开始输入

	   . {cmd:generate lnincome = log(income)}

{p 8 8 2}
    如果{cmd:income}包含任何零值，则{cmd:lnincome}中相应的缺失值将是不合格缺失值。为确保随后对值进行正确插补，至关重要的是将任何不合格缺失值记录为{help mi_glossary##def_hardmissing:硬缺失}。你可以输入

	   . {cmd:replace lnincome = .a if lnincome==. & income!=.}

{p 8 8 2}
    附带说明，如果你使用{bf:{help mi_impute_zh:mi impute}}插补了{cmd:lnincome}后想要填补{cmd:income}，{cmd:income}将意外成为一个被动变量，因为{cmd:lnincome}是插补变量，而{cmd:income}将从中派生。你将输入

	   . {cmd:mi register passive income}

	   . {cmd:mi passive: replace income = cond(lnincome==.a, 0, exp(lnincome))}

{p 8 8 2}
    一般来说，你应该避免使用会产生不合格缺失值的变换，以避免丢失其他变量在相应观察中包含的信息。例如，在上述情况下，对于{cmd:income}的零值，我们可以将收入的对数{cmd:lnincome}赋予可以存储的最小值{cmd:double}，因为零的对数是负无穷大：

	   . {cmd:generate lnincome = cond(income==0, mindouble(), log(income))}

{p 8 8 2}
    通过这种方式，所有{cmd:income==0}的观察将被用于{cmd:lnincome}的插补模型。

{p 4 8 2}
{bf:Jackknife 标准误差}。
    见{it:{help mi_glossary##def_MCE:蒙特卡罗误差}}。

{marker def_listwise}{...}
{p 4 8 2}
{bf:逐列表删除}，{bf:逐例删除}。
    从分析中省略包含缺失值的观察。

{marker def_M}{...}
{p 4 8 2}
{bf:M}，{bf:m}。
    {it:M} 是插补的数量。{it:m} 指特定插补，{it:m} = 1, 2, ..., {it:M}。
    在{cmd:mi}中，{it:m}=0用于指代包含缺失值的原始数据。因此，{cmd:mi}数据实际上包含{it:M}+1个数据集，对应于{it:m}=0, {it:m}=1, ..., 和{it:m}={it:M}。

{p 4 8 2}
{bf:MAR}。
    见{it:{help mi_glossary##def_MAR:随机缺失}}。

{marker def_MCMC}{...}
{p 4 8 2}
{bf:马尔可夫链蒙特卡罗}。
    一类方法，用于从其他不可处理的多元分布中模拟随机抽样。马尔可夫链的平衡分布即为所需分布。

{p 4 8 2}
{bf:MCAR}。
    见{it:{help mi_glossary##def_MCAR:完全随机缺失}}。

{p 4 8 2}
{bf:MCE}。
    见{it:{help mi_glossary##def_MCE:蒙特卡罗误差}}。

{p 4 8 2}
{bf:MCMC}。
    见{it:{help mi_glossary##def_MCMC:马尔可夫链蒙特卡罗}}。

{marker def_mi_data}{...}
{p 4 8 2}
{bf:mi 数据}。
    任何被{bf:{help mi_set_zh:mi set}}，无论是通过{cmd:mi} {cmd:set}还是通过{bf:{help mi_import_zh:mi import}}间接设置的数据。{cmd:mi}数据可能没有插补（{it:M}=0）和没有插补变量，或者它们可能有{it:M}>0并且没有插补变量，反之亦然。一个{cmd:mi}数据集可能有{it:M}>0和插补变量，但缺失值尚未用插补值替代。或者{cmd:mi}数据可能有{it:M}>0和插补变量，而插补变量的缺失值已用插补值填充。

{marker def_MAR}{...}
{p 4 8 2}
{bf:随机缺失}。
    如果缺失数据的概率不依赖于未观察到的数据但可能依赖于观察到的数据，则称缺失数据为随机缺失（MAR）。在 MAR 的情况下，缺失数据值不包含关于缺失数据机制的附加信息。因此导致缺失数据的过程可以被忽略。

{marker def_MCAR}{...}
{p 4 8 2}
{bf:完全随机缺失}。
    如果缺失数据的概率不依赖于观察到或未观察到的数据，则称缺失数据为完全随机缺失（MCAR）。在 MCAR 的情况下，缺失数据值是所有数据值的简单随机样本，因此任何丢弃缺失值的分析仍然保持一致，尽管可能效率较低。

{marker def_MNAR}{...}
{p 4 8 2}
{bf:非随机缺失}。
    如果缺失数据的概率依赖于未观察到的数据，则缺失数据被称为非随机缺失（MNAR）。在 MNAR 的情况下，必须建模缺失数据机制（导致缺失数据的过程）以获得有效结果。

{p 4 8 2}
{bf:mlong 数据}。
    见{it:{help mi_glossary##def_style:格式}}。

{p 4 8 2}
{bf:MNAR}。
    见{it:{help mi_glossary##def_MNAR:非随机缺失}}。

{marker def_monotone}{...}
{p 4 8 2}
{bf:单调缺失模式}，{bf:单调缺失性}。
    一种特殊的缺失值模式，如果变量按照缺失程度从小到大排序，则所有观察值中的变量包含缺失，在前一个变量包含缺失的情况下。

{marker def_MCE}{...}
{p 4 8 2}
{bf:蒙特卡罗误差}。
    在多重插补的背景下，蒙特卡罗误差被定义为在使用相同数据的同一插补程序的重复运行中，多重插补结果的标准偏差。蒙特卡罗误差对于评估多重插补结果的统计可复制性很有用。请查看{it:{mansection MI miestimateRemarksandexamplesExample6MonteCarloerrorestimates:示例 6：蒙特卡罗误差估计}}在{bf:[MI] mi estimate}的{it:备注和示例}下。

{marker original_data}{...}
{p 4 8 2}
{bf:原始数据}。
    原始数据是最初收集的数据，缺失值仍在原处。在{cmd:mi}数据中，原始数据存储在{it:m}=0。可以使用{bf:{help mi_extract_zh:mi extract}}从{cmd:mi}数据中提取原始数据。

{p 4 8 2} 
{bf:被动变量}。
    见{it:{help mi_glossary##def_imputed:插补、被动和常规变量}}。

{marker def_registered}{...}
{p 4 8 2}
{bf:注册和未注册变量}。
    在{cmd:mi}数据中，变量可以通过使用{cmd:mi} {cmd:register}命令注册为{help mi_glossary##def_imputed:插补、被动或常规}变量；见{bf:{help mi_set_zh:[MI] mi set}}。

{p 8 8 2}
    你必须注册插补变量。

{p 8 8 2}
    你应该注册被动变量；如果你的数据是宽格式，你必须注册它们。
    {bf:{help mi_passive_zh:mi passive}}命令使得创建被动变量变得简单，并且自动为你注册它们。

{p 8 8 2}
    是否注册常规变量由你决定。
    在除宽格式以外的所有格式中，注册它们是更安全的。根据定义，常规变量在{it:m}中应该相同。在长格式中，你可能会不小心创建变量，使其不同。如果变量已注册，{cmd:mi}会检测并修复你的错误。

{p 8 8 2}
    {help mi_glossary##def_varying:超变化变量}，这类情况极少发生并且只能在flong和flongsep数据中存储，绝不应该注册。

{p 8 8 2}
    通过{bf:{help mi_describe_zh:mi describe}}命令列出变量的注册状态。

{p 4 8 2}
{bf:常规变量}。
    见{it:{help mi_glossary##def_imputed:插补、被动和常规变量}}。

{marker re}{...}
{p 4 8 2}
{bf:相对效率}。
    以有限{it:M}进行估计时参数的方差与如果{it:M}为无限时的方差之比。
    
{* 文献说-因而，而不是-由于-}{...}
{marker RVI}{...}
{p 4 8 2}
{bf:相对方差增加}。
    由于非响应导致的参数估计方差的增加。

{p 4 8 2}
{bf:RVI}。
    见{it:{help mi_glossary##RVI:相对方差增加}}。

{marker def_style}{...}
{p 4 8 2}
{bf:格式}。
    格式指的是{cmd:mi}数据存储的形式。有四种格式：flongsep、flong、mlong和宽格式。除了在首次选择时，您可以忽略格式，因为所有{cmd:mi}命令都适用于任何格式。然而，如果你理解所使用格式的细节，你将能够更高效地工作；请参见{bf:{help mi_styles_zh:[MI] 格式}}。某些任务在一种格式下比在另一种格式下更容易。你可以使用{bf:{help mi_convert_zh:mi convert}}命令在不同格式之间切换。

{p 8 8 2}
    flongsep格式最好避免，除非你的数据过大而无法适应其他格式。在flongsep格式下，为{it:m}=0、{it:m=1}、... 和 {it:m}={it:M}分别创建单独的{cmd:.dta}集。
    flongsep最好避免，因为与它一起使用的{cmd:mi}命令运行更慢。

{p 8 8 2}
    在所有其他格式中，{it:M}+1个数据集存储在一个{cmd:.dta}文件中。其他格式都更加方便和高效。

{p 8 8 2}
    这几种{cmd:.dta}格式中最容易描述的是flong；但是，flong也最好避免，因为mlong格式同样方便，而在存储空间上效率更高。
    在flong中，原始数据中的每个观察被重复{it:M}次存储在{cmd:.dta}数据集中，第一次为{it:m}=1，再次为{it:m}=2，以此类推。
    变量{cmd:_mi_m}记录{it:m}，取值为0、1、2、...、{it:M}。
    在每个{it:m}值中，变量{cmd:_mi_id}取值为1、2、...、{it:N}，从而连接插补和原始观察。

{p 8 8 2} 
    推荐使用mlong格式。它高效且易于使用。
    Mlong与flong非常相似，除了{help mi_glossary##def_complete:完整}观察没有被重复。

{p 8 8 2}
    同样推荐使用宽格式。
    在宽格式中，每个{help mi_glossary##def_imputed:插补和被动变量}都有一个附加的{it:M}个变量与之关联，对应变量在{it:m}=1的值，另一个为在{it:m}=2的值，以此类推。
    如果插补或被动变量名为{it:vn}，那么在{it:m}=1的{it:vn}值存储在变量{cmd:_1_}{it:vn}中；{it:m}=2的值存储在变量{cmd:_2_}{it:vn}中；以此类推。

{p 8 8 2}
    mlong和宽格式的便利性在哪里？在mlong中，你的变量概念与Stata的变量概念是一一对应的——变量{it:vn}指代{it:m}中所有{it:vn}的值。在宽格式中，你的观察概念和Stata的观察概念也是一一对应的——物理观察5在所有数据集中都是观察5。

{p 8 8 2}
    选择与手头问题相匹配的格式。
    如果你想创建新变量或修改现有变量，选择mlong。如果你想删除观察或创建新观察，选择宽格式。你可以使用{bf:{help mi_convert_zh:mi convert}}命令切换格式。

{p 8 8 2}
    例如，如果你想创建新变量{cmd:ageXexp}，使其等于{cmd:age*exp}，并且你的数据是mlong格式，你只需输入{cmd:generate} {cmd:ageXexp} {cmd:=} {cmd:age*exp}，即使{cmd:age}和{cmd:exp}是插补、被动或混合的，这也可以正常工作。
    理论上，正确的方法是输入{cmd:mi} {cmd:passive:}{cmd:generate} {cmd:agexExp} {cmd:=} {cmd:age*exp}，但在涉及变量方面，如果你的数据是mlong格式，你可以按照通常的Stata方式操作。

{p 8 8 2}
    如果你想删除观察20或删除{cmd:if} {cmd:sex==2}，如果你的数据是宽格式，你只需输入{cmd:drop} {cmd:in} {cmd:20} 或 {cmd:drop} {cmd:if} {cmd:sex==2}。在这里，“正确”的方法是输入{cmd:drop}命令，然后记得输入{cmd:mi} {cmd:update}，以便{cmd:mi}能够执行所需的变换以在{it:m}>0中传播更改；然而，在宽格式中，不需要进行任何变换。

{p 4 8 2}
{bf:超变化变量}。
   见{it:{help mi_glossary##def_varying:变化和超变化变量}}。

{p 4 8 2}
{bf:未注册变量}。
    见{it:{help mi_glossary##def_registered:注册和未注册变量}}。

{marker def_varying}{...}
{p 4 8 2}
{bf:变化和超变化变量}。
    如果在不完整观察中，其值在{it:m}中不同，则该变量称为变化变量。插补和被动变量是变化的。常规变量是非变化的。未注册变量可以是变化的或非变化的。

{p 8 8 2}
    插补变量应该变化，因为其不完整的值被不同的插补值填充，尽管如果你尚未对其值进行插补，插补变量在短期内可能是非变化的。类似地，被动变量也应该变化，因为它们将在基于变化的插补变量值的情况下被填补。

{p 8 8 2}
    如果在完整观察中，其值在{it:m}中不同，则该变量称为超变化变量。超变化变量的存在通常表明可能存在错误。一个变量在完整观察中在{it:m}=0和{it:m}=2的值不同是没有意义的——在不包含任何缺失值的观察中。也就是说，这并不合理，除非该变量的值是基于多个观察中其他变量的值的函数。如果变量{cmd:sumx}是对观察值{cmd:x}的总和，而{cmd:x}被插补，则在所有插补{cmd:x}的观察之后，{cmd:sumx}将在{it:m}中不同。

{p 8 8 2}
    {bf:{help mi_varying_zh:mi varying}}命令将识别变化和超变化变量，以及非变化的插补和被动变量。{bf:{help mi_varying_zh:[MI] mi varying}}解释如何解决由于错误而导致的问题。

{p 8 8 2}
    理论上可能会出现的一些问题实际上不会发生，因为{cmd:mi}不会让它们发生。例如，插补变量可能是超变化的，这显然是一个严重错误。或者常规变量可能是变化的，这也是一个严重错误。当你注册一个变量时，{cmd:mi}会修复任何此类问题，并在此后监视问题并在其出现时修复它们。

{p 8 8 2}
    使用{cmd:mi} {cmd:register}来注册变量；见{bf:{help mi_set_zh:[MI] mi set}}。
    你可以随时通过运行{bf:{help mi_update_zh:mi update}}执行检查和修复。
    除其他事项外，{cmd:mi} {cmd:update}将替换{it:m}>0中的常规变量值为{it:m}=0中的值；它会将{it:m}>0中的插补变量值替换为其在{it:m}=0中的非缺失值；并且它会将{it:m}>0中不完整观察的被动变量值替换为它们在{it:m}=0中的值。{cmd:mi} {cmd:update}对未注册变量遵循无干预策略。

{p 8 8 2}
    如果你需要超变化变量，请使用flong或flongsep格式，并且不要注册该变量。
    你必须使用flong格式，因为在宽格式和mlong格式中，根本没有地方存储超变化值。

{p 4 8 2}
{bf:宽数据}。
    见{it:{help mi_glossary##def_style:格式}}。

{p 4 8 2}
{bf:WLF}。
    见{it:{help mi_glossary##WLF:最差线性函数}}。

{marker WLF}{...}
{p 4 8 2}
{bf:最差线性函数}。
     所有参数的线性组合，由于认为其收敛缓慢的迭代过程进行估计。 
{p_end}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <mi_glossary.sthlp>}