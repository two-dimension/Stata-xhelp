{smcl}
{* *! version 1.0.0  21jun2019}{...}
{viewerdialog "meta" "dialog meta"}{...}
{vieweralsosee "[META] meta esize" "mansection META metaesize"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[META] meta data" "mansection META metadata"}{...}
{vieweralsosee "[META] meta set" "help meta set"}{...}
{vieweralsosee "[META] meta update" "help meta update"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[META] meta" "help meta_zh"}{...}
{vieweralsosee "[META] Glossary" "help meta glossary"}{...}
{vieweralsosee "[META] Intro" "mansection META Intro"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[R] esize" "help esize_zh"}{...}
{viewerjumpto "Syntax" "meta_esize_zh##syntax"}{...}
{viewerjumpto "Menu" "meta_esize_zh##menu"}{...}
{viewerjumpto "Description" "meta_esize_zh##description"}{...}
{viewerjumpto "Links to PDF documentation" "meta_esize_zh##linkspdf"}{...}
{viewerjumpto "Options" "meta_esize_zh##options"}{...}
{viewerjumpto "Examples" "meta_esize_zh##examples"}{...}
{viewerjumpto "Stored results" "meta_esize_zh##results"}{...}
{viewerjumpto "References" "meta_esize_zh##references"}
{help meta_esize:English Version}
{hline}{...}
{p2colset 1 22 24 2}{...}
{p2col:{bf:[META] meta esize} {hline 2}}计算效果大小并声明元分析数据{p_end}
{p2col:}({mansection META metaesize:查看完整PDF手册条目}){p_end}
{p2colreset}{...}


{marker syntax}{...}
{title:语法}

{phang}
计算和声明连续结果的两组比较的效果大小

{p 8 16 2}
{cmd:meta} {cmdab:es:ize}
{help meta_esize##nms:{it:n1}}
{help meta_esize##nms:{it:mean1}}
{help meta_esize##nms:{it:sd1}}
{help meta_esize##nms:{it:n2}}
{help meta_esize##nms:{it:mean2}}
{help meta_esize##nms:sd2}
{ifin} [{cmd:,}
{help meta_esize##cont_options:{it:options_continuous}}
{help meta_esize##optstbl:{it:options}}]


{phang}
计算和声明二元结果的两组比较的效果大小

{p 8 16 2}
{cmd:meta} {cmd:esize} 
{help meta_esize##n11:{it:n11}}
{help meta_esize##n11:{it:n12}}
{help meta_esize##n11:{it:n21}}
{help meta_esize##n11:{it:n22}}
{ifin} [{cmd:,} 
{help meta_esize##bin_options:{it:options_binary}}
{help meta_esize##optstbl:{it:options}}]


{marker nms}{...}
{phang}
变量 {it:n1}、{it:mean1} 和 {it:sd1} 包含来自第一组（处理组）单个研究的样本大小、均值和标准差，变量 {it:n2}、{it:mean2} 和 {it:sd2} 包含第二组（对照组）的相应汇总值。

{marker n11}{...}
{phang}
变量 {it:n11} 和 {it:n12} 包含来自第一组（处理组）单个研究的成功次数和失败次数，变量 {it:n21} 和 {it:n22} 包含第二组（对照组）的相应数字。由变量 {it:n11}、{it:n12}、{it:n21} 和 {it:n22} 定义的单个观察表示来自单个研究的 2 × 2 表。因此，变量 {it:n11}、{it:n12}、{it:n21} 和 {it:n22} 代表来自所有研究的 2 × 2 表样本。因此，我们将这些变量上的观察称为 2 × 2 表，并将这些变量的值称为单元。

{marker cont_options}{...}
{synoptset 22 tabbed}{...}
{synopthdr:options_continuous}
{synoptline}
{syntab:Main}
{synopt :{opth es:ize(meta_esize##esspeccnt:esspeccnt)}}指定要用于元分析的连续结果的效果大小{p_end}

{syntab:Model}
{synopt :{opt random}[{cmd:(}{help meta_esize##remethod:{it:remethod}}{cmd:)}]}随机效应元分析；默认值为 {cmd:random(reml)}{p_end}
{synopt :{opt common}}共同效应元分析；隐含逆方差法{p_end}
{synopt :{opt fixed}}固定效应元分析；隐含逆方差法{p_end}
{synoptline}

{marker bin_options}{...}
{synopthdr:options_binary}
{synoptline}
{syntab:Main}
{synopt :{opth es:ize(meta_esize##estypebin:estypebin)}}指定用于元分析的二元结果的效果大小

{syntab:Model}
{synopt :{opt random}[{cmd:(}{help meta_esize##remethod:{it:remethod}}{cmd:)}]}随机效应元分析；默认值为 {cmd:random(reml)}{p_end}
{synopt :{opt common}[{cmd:(}{help meta_esize##cefemethod:{it:cefemethod}}{cmd:)}]}共同效应元分析{p_end}
{synopt :{opt fixed}[{cmd:(}{help meta_esize##cefemethod:{it:cefemethod}}{cmd:)}]}固定效应元分析{p_end}

{syntab:Options}
{synopt :{opth zerocells:(meta_esize##zcspec:zcspec)}}在计算期间调整零单元；默认情况下，对所有包含零单元的 2 x 2 表的所有单元添加 0.5{p_end}
{synoptline}

{marker optstbl}{...}
{synopthdr:options}
{synoptline}
{syntab:Options}
{synopt :{opth studylab:el(varname)}}要用于在所有元分析输出中标记研究的变量{p_end}
{synopt :{opth eslab:el(strings:string)}}所有元分析输出中使用的效果大小标签；默认值为 {cmd:eslabel(Effect Size)}{p_end}
{synopt :{opt l:evel(#)}}所有后续元分析命令的置信水平{p_end}
{synopt :[{cmd:no}]{opt metashow}}显示或抑制与其他 {cmd:meta} 命令的元设置{p_end}
{synoptline}

{marker esspeccnt}{...}
{pstd}
{it:esspeccnt} 的语法为

{pmore2}
{help meta_esize##estypecnt:{it:estypecnt}}{cmd:,}
{help meta_esize##esopts:{it:esopts}}

{synoptset 22}{...}
包含帮助 meta_estypecnt

包含帮助 meta_estypebin

包含帮助 meta_remethod

包含帮助 meta_cefemethod


包含帮助 menu_meta


{marker description}{...}
{title:描述}

{pstd}
{cmd:meta esize} 从研究汇总数据计算效果大小，并使用结果声明内存中的数据为 {cmd:meta} 数据，告知 Stata 关键变量及其在元分析中的角色。它计算连续和二元结果的两组比较的各种效果大小及其相应的标准误差。然后它使用计算的效果大小和标准误差声明内存中的数据为 {cmd:meta} 数据。如果您没有来自单个研究的汇总数据，而是预先计算的效果大小，则可以使用 {helpb meta set} 来声明您的元分析数据。您必须使用 {cmd:meta esize} 或 {cmd:meta set} 来使用 {cmd:meta} 命令执行元分析；请参见 {manlink META meta data}。

{pstd}
如果您需要在数据声明后更新某些元设置，请参见 {manhelp meta_update META:meta update}。要显示当前的元设置，请使用 {cmd:meta query}；参见 {manhelp meta_update META:meta update}。
 

{marker linkspdf}{...}
{title:PDF文档链接}

        {mansection META metaesizeQuickstart:快速入门}

        {mansection META metaesizeRemarksandexamples:备注和示例}

        {mansection META metaesizeMethodsandformulas:方法和公式}

{pstd}
上述部分未包含在此帮助文件中。


{marker options}{...}
{title:选项}

{dlgtab:Main}

{marker esopts}{...}
{phang}
{opt esize(esspec)} 指定用于元分析的效果大小。对于连续结果，{it:esspec} 为
{help meta_esize##estypecntdes:{it:estypecnt}}[{cmd:,}
{help meta_esize##esopts:{it:esopts}}]。对于二元结果，{it:esspec}
为 {help meta_esize##estypebindes:{it:estypebin}}。

{marker estypecntdes}{...}
{pmore}
对于连续结果，{it:estypecnt} 是以下之一：{cmd:hedgesg}、{cmd:cohend}、{cmd:glassdelta2}、{cmd:glassdelta1}或 {cmd:mdiff}。下面我们将描述每种类型及其特定选项 {it:esopts}。

{phang3}
{cmd:hedgesg}[{cmd:,} {cmd:exact holkinse}] 将效果大小计算为 Hedges's g ({help meta_esize##hedges1981:1981}) 标准化均值差。这是连续结果的默认值。为了与元分析文献的统一，{cmd:hedgesg} 使用近似值计算 g，而不是确切计算（请参见 {mansection META metaesizeMethodsandformulas:{it:方法和公式}}在 {bf:[META] meta esize} 中提供的内容），如 {cmd:esize} 的 {cmd:hedgesg} 选项所述。您可以使用 {cmd:exact} 子选项来匹配 {cmd:esize} 的结果（见 {manhelp esize R}）。

{phang3}
{cmd:cohend}[{cmd:,} {cmd:holkinse}] 将效果大小计算为 Cohen's d ({help meta_esize##cohen1969:1969}, {help meta_esize##cohen1988:1988}) 标准化均值差。

{phang3}
{cmd:glassdelta2} 将效果大小计算为 Glass's ∆ 标准化均值差，其中标准化使用组 2（对照组）的标准差。{cmd:glassdelta2} 在实际中比 {cmd:glassdelta1} 更常见。

{phang3}
{cmd:glassdelta1} 将效果大小计算为 Glass's ∆ 标准化均值差，其中标准化使用组 1（处理组）的标准差。{cmd:glassdelta2} 在实际中比 {cmd:glassdelta1} 更常见。

{phang3}
{cmd:mdiff}[{cmd:,} {cmd:unequal}] 将效果大小计算为未标准化或原始均值差。

{pmore}
{it:esopts} 为 {cmd:exact}、{cmd:holkinse} 和 {cmd:unequal}。

{phang3}
{cmd:exact} 指定使用 Hedges's g 的偏差校正因子的确切计算，而不是默认使用的近似值。

{phang3}
{cmd:holkinse} 指定 Hedges's g 和 Cohen's d 的标准误差按照 {help meta_esize##hedgesolkin1985:Hedges 和 Olkin (1985)} 所述进行计算。这是有时在实践中使用的另一种效果大小的标准误差的近似。

{phang3}
{cmd:unequal} 指定均值差的标准误差的计算假设组方差不等。

{marker estypebindes}{...}
{pmore}
对于二元结果，{it:estypebin} 是以下之一：
{cmd:lnoratio}、{cmd:lnrratio}、{cmd:rdiff} 或 {cmd:lnorpeto}。

{phang3}
{cmd:lnoratio} 指定效果大小为对数优势比。这是二元结果的默认值。

{phang3}
{cmd:lnrratio} 指定效果大小为对数风险比，也称为对数相对风险和对数风险率。

{phang3}
{cmd:rdiff} 指定效果大小为风险差。

{phang3}
{cmd:lnorpeto} 指定效果大小为 Peto 等人定义的对数优势比 ({help meta_esize##petoetal1977:Peto et al. (1977)})。在稀有事件中，此效果大小更为合适。

{pmore}
对于对数度量（如对数优势比）的效果大小，结果默认以对数度量显示。您可以使用 {help meta_summarize##eform_option:{it:eform_option}} 来获得指数结果，如赔率比。

{dlgtab:Model}
 
{pstd}
选项 {cmd:random()}、{cmd:common()} 和 {cmd:fixed()} 在整个元分析中全局声明元分析模型；请参见 {mansection META metadataRemarksandexamplesDeclaringameta-analysismodel:{it:声明元分析模型}} 在 {bf:[META] meta data} 中的内容。换句话说，一旦您使用 {cmd:meta esize} 设置了您的元分析模型，所有后续的 {cmd:meta} 命令将假定该模型。您可以使用 {helpb meta update} 更新声明的模型，或通过在 {cmd:meta} 命令中指定相应的选项暂时更改它。选项 {cmd:random()}、{cmd:common()} 和 {cmd:fixed()} 不能结合使用。如果省略这些选项，将假定使用 {cmd:random(reml)}；请参见 {mansection META metadataRemarksandexamplesDefaultmeta-analysismodelandmethod:{it:默认的元分析模型和方法}} 在 {bf:[META] meta data} 中的内容。另请参见 {mansection META IntroRemarksandexamplesMeta-analysismodels:{it:元分析模型}} 在 {bf:[META] Intro} 中的内容。

{phang}
{cmd:random} 和 {opt random(remethod)} 指定假定使用随机效应模型进行元分析；请参见 {mansection META IntroRemarksandexamplesRandom-effectsmodel:{it:随机效应模型}} 在 {bf:[META] Intro} 中。

{marker remethoddes}{...}
{phang2}
{it:remethod} 指定用于估计研究间方差 τ^2 的估计类型。{it:remethod} 是 {cmd:reml}、{cmd:mle}、{cmd:ebayes}、{cmd:dlaird}、{cmd:sjonkman}、{cmd:hedges} 或 {cmd:hschmidt} 之一。{cmd:random} 是 {cmd:random(reml)} 的同义词。下面，我们根据 {help meta_esize##veronikietal2016:Veroniki et al. (2016)} 提供每种方法的简要描述。另请参见 {mansection META metadataRemarksandexamplesDeclaringameta-analysisestimationmethod:{it:声明元分析估计方法}} 在 {bf:[META] meta data} 中的内容。

{phang3}
{cmd:reml}（默认值）指定使用 REML 方法 ({help meta_esize##raudenbush2009:Raudenbush 2009}) 来估计 τ^2。此方法产生无偏、非负的研究间方差估计，并在实践中广泛使用。方法 {cmd:reml} 需要迭代。

{phang3}
{cmd:mle} 指定使用 ML 方法 ({help meta_esize##hardythompson1996:Hardy 和 Thompson 1996}) 来估计 τ^2。它产生研究间方差的非负估计。使用少量研究或小规模研究时，此方法可能产生偏倚估计。对于许多研究，ML 方法效率高于 REML 方法。方法 {cmd:mle} 需要迭代。

{phang3}
{cmd:ebayes} 指定使用经验贝叶斯估计器 ({help meta_esize##berkeyetal1995:Berkey et al. 1995})，也称为 Paule–Mandel 估计器 ({help meta_esize##paulemandel1982:Paule 和 Mandel 1982}) 来估计 τ^2。从模拟中可以看出，此方法通常比其他随机效应方法偏倚较小，但效率低于 {cmd:reml} 或 {cmd:dlaird}。方法 {cmd:ebayes} 产生 τ^2 的非负估计，并需要迭代。

{phang3}
{cmd:dlaird} 指定使用 DerSimonian–Laird 方法 ({help meta_esize##dersimonianlaird1986:DerSimonian 和 Laird 1986}) 来估计 τ^2。此方法历史上是最流行的估计方法之一，因为它不对随机效应的分布做出任何假设，不需要迭代。但当变异性大且研究数量少时，它可能低估真实的研究间方差。此方法可能产生负值 τ^2，因此在这种情况下会截断为零。

{phang3}
{cmd:sjonkman} 指定使用 Sidik–Jonkman 方法 ({help meta_esize##sidikjonkman2005:Sidik 和 Jonkman 2005}) 来估计 τ^2。此方法始终产生研究间方差的非负估计，因此不像其他非迭代方法那样需要在 0 处截断。方法 {cmd:sjonkman} 不需要迭代。

{phang3}
{cmd:hedges} 指定使用 Hedges 方法 ({help meta_esize##hedges1983:Hedges 1983}) 来估计 τ^2。当效果大小估计的抽样方差可以无偏估计时，此估计量是完全无偏的（截断前），但在实践中并不广泛使用 ({help meta_esize##veronikietal2016:Veroniki et al. 2016})。方法 {cmd:hedges} 不需要迭代。

{phang3}
{cmd:hschmidt} 指定使用 Hunter–Schmidt 方法 ({help meta_esize##schmidthunter2015:Schmidt 和 Hunter 2015}) 来估计 τ^2。尽管此估计量相比其他方法（除 ML 外）能够实现较低的均方误差，但已知存在负偏倚。方法 {cmd:hschmidt} 不需要迭代。

{phang}
{cmd:common} 和 {opth common:(meta_esize##ccefemethoddes:cefemethod)} 指定假定使用共同效应模型进行元分析；请参见 {mansection META IntroRemarksandexamplesCommon-effect(fixed-effect)model:{it:共同效应（固定效应）模型}} 在 {bf:[META] Intro} 中的内容。另请参见 {mansection META metadataRemarksandexamplesfixedvscommon:讨论} 在 {bf:[META] meta data} 中的内容，关于共同效应与固定效应模型的比较。

{pmore}
{cmd:common} 隐含 {cmd:common(mhaenszel)} 用于效果大小 {cmd:lnoratio}、{cmd:lnrratio} 和 {cmd:rdiff}，以及 {cmd:common(invvariance)} 对于所有其他效果大小。

{marker ccefemethoddes}{...}
{phang2}
{it:cefemethod} 是 {cmd:mhaenszel} 或 {cmd:invvariance}（同义词 {cmd:ivariance}）之一。下面，我们提供每种方法的简要描述。另请参见 {mansection META metadataRemarksandexamplesDeclaringameta-analysisestimationmethod:{it:声明元分析估计方法}} 在 {bf:[META] meta data} 中的内容。

{phang3}
{cmd:mhaenszel} 仅对二元结果可用。它指定使用 Mantel–Haenszel 方法进行元分析，以估计二元结果的整体效果大小。此方法是效果大小 {cmd:lnoratio}、{cmd:lnrratio} 和 {cmd:rdiff} 的默认值，但对效果大小 {cmd:lnorpeto} 不可用。

{phang3}
{cmd:invvariance} 指定使用逆方差法进行元分析，以估计整体效果大小。此方法可适用于所有类型的结果和效果大小，并且对于连续结果以及使用效果大小 {cmd:lnorpeto} 的二元结果为默认值。

{phang3}
{cmd:ivariance} 是 {cmd:invvariance} 的同义词。

{phang}
{cmd:fixed} 和 {opth fixed:(meta_esize##fcefemethoddes:cefemethod)} 指定假定使用固定效应模型进行元分析；请参见 {mansection META IntroRemarksandexamplesFixed-effectsmodel:{it:固定效应模型}} 在 {bf:[META] Intro} 中的内容。另请参见 {mansection META metadataRemarksandexamplesfixedvscommon:讨论} 在 {bf:[META] meta data} 中的内容，关于共同效应与固定效应模型的比较。

{pmore}
{cmd:fixed} 隐含 {cmd:fixed(mhaenszel)} 用于效果大小 {cmd:lnoratio}、{cmd:lnrratio} 和 {cmd:rdiff}，以及 {cmd:fixed(invvariance)} 对于所有其他效果大小。

{marker fcefemethoddes}{...}
{phang2}
{it:cefemethod} 是 {cmd:mhaenszel} 或 {cmd:invvariance}（同义词 {cmd:ivariance}）；见上述描述 {help meta_esize_zh##ccefemethoddes}。

{dlgtab:Options}

{marker zcspec}{...}
{phang}
{opt zerocells(zcspec)} 用于二元结果，当效果大小为 {cmd:lnoratio} 或 {cmd:lnrratio} 时。它指定在有零单元的情况下要用于单元的调整。调整在计算期间应用 -- 原始数据不被修改。默认值为 {cmd:zerocells(0.5, only0)}；它对至少包含一个零单元的 2 x 2 表的所有单元添加 0.5。要请求没有调整，请指定 {cmd:zerocells(none)}。更一般地，{it:zcspec} 的语法为

            {it:#}[{cmd:,} {it:zcadj}]

{pmore}
其中 {it:#} 为调整值，在元分析文献中也称为连续校正值，{it:zcadj} 为 {cmd:only0} 或 {cmd:allif0}。

{phang2}
{cmd:only0} 指定 {it:#} 添加到仅包含至少一个零单元的那些 2 x 2 表的所有单元。在计算期间，{it:#} 添加到由变量定义的每个观察：{help meta_esize##n11:{it:n11}}、{help meta_esize##n11:{it:n12}}、{help meta_esize##n11:{it:n21}} 和 {help meta_esize##n11:{it:n22}}，如果该观察在这些变量中的任何一个变量中包含零值。

{phang2}
{cmd:allif0} 指定 {it:#} 添加到所有 2 x 2 表的所有单元，但仅当至少有一个 2 × 2 表具有零单元时。在计算期间，{it:#} 添加到变量的所有值：{help meta_esize##n11:{it:n11}}、{help meta_esize##n11:{it:n12}}、{help meta_esize##n11:{it:n21}} 和 {help meta_esize##n11:{it:n22}}，但仅当其中一个四个变量具有零值时。

{pmore}
对于效果大小 {cmd:lnoratio}，{it:zcspec} 也可以是 {cmd:tacc}，它实施 {help meta_esize##sweetingsuttonlambert2004:Sweeting、Sutton 和 Lambert (2004)} 的治疗组连续校正。此方法从数据中估计组特定的调整值，以最小化在存在零单元时整体优势比估计器的偏倚。建议在组不平衡时使用此方法。

{phang}
{opth studylabel(varname)} 指定一个字符串变量，包含用于所有适用元分析输出的单个研究的标签。默认研究标签为 {cmd:Study 1}、{cmd:Study 2}，...、{cmd:Study K}，其中 K 为元分析中的研究总数。

{phang}
{opth eslabel:(strings:string)} 指定在所有相关元分析输出中使用 {it:string} 作为效果大小标签。默认标签为 {cmd:Effect Size}。

{phang}
{opt level(#)} 指定置信水平，以百分比表示，供置信区间使用。它将被所有后续元分析命令使用，用于计算置信区间。默认值为 {cmd:level(95)} 或通过 {helpb set level} 设置的值。在声明后，您可以通过在 {cmd:meta update} 中指定 {cmd:level()} 来更新在整个元分析会话中使用的置信水平。您还可以在执行命令时直接使用 {cmd:level()} 与 {cmd:meta} 命令，以临时修改置信水平。

{phang}
{cmd:metashow} 和 {cmd:nometashow} 在其他 {cmd:meta} 命令的输出中显示或抑制元设置信息。默认情况下，此信息显示在其输出的顶部。您还可以在声明后与 {helpb meta update} 一起指定 {cmd:nometashow}，以抑制整个元分析会话的元设置输出。


{marker examples}{...}
{title:示例}

    {hline}
{pstd}设置{p_end}
{phang2}{cmd:. webuse metaesbin}{p_end}

{pstd}基于 2 x 2 汇总表计算对数优势比、其标准误差和置信区间{p_end}
{phang2}{cmd:. meta esize tdead tsurv cdead csurv}

{pstd}如上，但请求 Mantel–Haenszel 共同效应方法{p_end}
{phang2}{cmd:. meta esize tdead tsurv cdead csurv, common(mhaenszel)}

{pstd}计算对数风险比并指定研究标签{p_end}
{phang2}{cmd:. meta esize tdead tsurv cdead csurv, esize(lnrratio)}
           {cmd:studylabel(study)}

{pstd}请求治疗组连续校正（TACC）以调整零单元{p_end}
{phang2}{cmd:. meta esize tdead tsurv cdead csurv, zerocells(tacc)}

    {hline}
{pstd}设置{p_end}
{phang2}{cmd:. webuse metaescnt, clear}

{pstd}计算 Hedges's g 均值标准化差异及其标准误差和置信区间，基于样本大小、均值和标准差{p_end}
{phang2}{cmd:. meta esize n1 m1 sd1 n2 m2 sd2}

{pstd}如上，但计算 Cohen's d 均值标准化差异{p_end}
{phang2}{cmd:. meta esize n1 m1 sd1 n2 m2 sd2, esize(cohend)}

    {hline}


{marker results}{...}
{title:存储结果}

{pstd}
{cmd:meta esize} 存储以下特征和系统变量：

{synoptset 28 tabbed}{...}
{p2col 5 28 32 2: 特征}{p_end}
{synopt:{cmd:_dta[_meta_marker]}}"{cmd:_meta_ds_1}"{p_end}
{synopt:{cmd:_dta[_meta_K]}}元分析中的研究数量{p_end}
{synopt:{cmd:_dta[_meta_studylabel]}}包含研究标签的字符串变量名称或 {cmd:Generic}{p_end}
{synopt:{cmd:_dta[_meta_estype]}}效果大小的类型；变化{p_end}
{synopt:{cmd:_dta[_meta_eslabelopt]}}{opt eslabel(eslab)}，如果指定{p_end}
{synopt:{cmd:_dta[_meta_eslabel]}}来自 {opt eslabel()} 的效果大小标签；默认值变化{p_end}
{synopt:{cmd:_dta[_meta_eslabeldb]}}对话框的效果大小标签{p_end}
{synopt:{cmd:_dta[_meta_esvardb]}}{cmd:_meta_es}{p_end}
{synopt:{cmd:_dta[_meta_level]}}元分析的默认置信水平{p_end}
{synopt:{cmd:_dta[_meta_esizeopt]}}{opt esize(estype)}，如果指定{p_end}
{synopt:{cmd:_dta[_meta_esopt_exact]}}{cmd:exact}，如果 {cmd:esize(, exact)} 被指定{p_end}
{synopt:{cmd:_dta[_meta_esopt_holkinse]}}{cmd:holkinse}，如果 {cmd:esize(, holkinse)} 被指定{p_end}
{synopt:{cmd:_dta[_meta_esopt_unequal]}}{cmd:unequal}，如果 {cmd:esize(, unequal)} 被指定{p_end}
{synopt:{cmd:_dta[_meta_modellabel]}}元分析模型标签： {cmd:Random-effects}、 {cmd:Common-effect} 或 {cmd:Fixed-effects}{p_end}
{synopt:{cmd:_dta[_meta_model]}}元分析模型： {cmd:random}、 {cmd:common} 或 {cmd:fixed}{p_end}
{synopt:{cmd:_dta[_meta_methodlabel]}}元分析方法标签；根据元分析模型变化{p_end}
{synopt:{cmd:_dta[_meta_method]}}元分析方法；根据元分析模型变化{p_end}
{synopt:{cmd:_dta[_meta_randomopt]}}{opt random(remethod)}，如果指定{p_end}
{synopt:{cmd:_dta[_meta_zcopt]}}{opt zerocells(zcspec)}，如果指定{p_end}
{synopt:{cmd:_dta[_meta_zcadj]}}零单元的调整类型，如果指定了 {cmd:zerocells()}{p_end}
{synopt:{cmd:_dta[_meta_zcvalue]}}如果指定了零单元的调整，则调整单元的值{p_end}
{synopt:{cmd:_dta[_meta_show]}}空值或 {cmd:nometashow}{p_end}
{synopt:{cmd:_dta[_meta_n1var]}}第一组样本大小变量的名称；用于连续数据{p_end}
{synopt:{cmd:_dta[_meta_mean1var]}}第一组均值变量的名称；用于连续数据{p_end}
{synopt:{cmd:_dta[_meta_sd1var]}}第一组标准差变量的名称；用于连续数据{p_end}
{synopt:{cmd:_dta[_meta_n2var]}}第二组样本大小变量的名称；用于连续数据{p_end}
{synopt:{cmd:_dta[_meta_mean2var]}}第二组均值变量的名称；用于连续数据{p_end}
{synopt:{cmd:_dta[_meta_sd2var]}}第二组标准差变量的名称；用于连续数据{p_end}
{synopt:{cmd:_dta[_meta_n11var]}}{help meta_esize##n11:{it:n11}} 变量的名称；用于二元数据{p_end}
{synopt:{cmd:_dta[_meta_n12var]}}{help meta_esize##n11:{it:n12}} 变量的名称；用于二元数据{p_end}
{synopt:{cmd:_dta[_meta_n21var]}}{help meta_esize##n11:{it:n21}} 变量的名称；用于二元数据{p_end}
{synopt:{cmd:_dta[_meta_n22var]}}{help meta_esize##n11:{it:n22}} 变量的名称；用于二元数据{p_end}
{synopt:{cmd:_dta[_meta_datatype]}}数据类型； {cmd:continuous} 或 {cmd:binary}{p_end}
{synopt:{cmd:_dta[_meta_datavars]}}通过 {cmd:meta esize} 指定的变量{p_end}
{synopt:{cmd:_dta[_meta_setcmdline]}}{cmd:meta esize} 命令行{p_end}
{synopt:{cmd:_dta[_meta_ifexp]}}{it:if} 规范{p_end}
{synopt:{cmd:_dta[_meta_inexp]}}{it:in} 规范{p_end}

{p2col 5 28 32 2: 系统变量}{p_end}
{synopt:{cmd:_meta_id}}研究 ID 变量{p_end}
{synopt:{cmd:_meta_es}}包含效果大小的变量{p_end}
{synopt:{cmd:_meta_se}}包含效果大小标准误差的变量{p_end}
{synopt:{cmd:_meta_cil}}包含效果大小置信区间下限的变量{p_end}
{synopt:{cmd:_meta_ciu}}包含效果大小置信区间上限的变量{p_end}
{synopt:{cmd:_meta_studylabel}}包含研究标签的字符串变量{p_end}
{synopt:{cmd:_meta_studysize}}每个研究的总样本量的变量{p_end}
{p2colreset}{...}


{marker references}{...}
{title:参考文献}

{marker berkeyetal1995}{...}
{phang}
Berkey, C. S., D. C. Hoaglin, F. Mosteller, 和 G. A. Colditz. 1995.
一个随机效应回归模型用于元分析。
{it:Statistics in Medicine} 14: 395–411.

{marker cohen1969}{...}
{phang}
Cohen, J. 1969. {it:行为科学的统计功效分析}。
纽约：学术出版社。

{marker cohen1988}{...}
{phang}
--------. 1988. {it:行为科学的统计功效分析}。
第二版。新泽西州希尔斯代尔：厄尔布劳姆公司。

{marker dersimonianlaird1986}{...}
{phang}
DerSimonian, R. 和 N. Laird. 1986. 临床试验中的元分析。
{it:Controlled Clinical Trials} 7: 177–188.

{marker hardythompson1996}{...}
{phang}
Hardy, R. J. 和 S. G. Thompson. 1996. 随机效应的元分析的似然方法。
{it:Statistics in Medicine} 15: 619–629.

{marker hedges1981}{...}
{phang}
Hedges, L. V. 1981. Glass 的效果大小估计量及相关估计量的分布理论。 {it:Journal of Educational Statistics} 6: 107–128.

{marker hedges1983}{...}
{phang}
------. 1983. 一种用于效果大小的随机效应模型。
{it:Psychological Bulletin} 93: 388–395.

{marker hedgesolkin1985}{...}
{phang}
Hedges, L. V. 和 I. Olkin. 1985. {it:元分析的统计方法}。
佛罗里达州奥兰多：学术出版社。

{marker paulemandel1982}{...}
{phang}
Paule, R. C. 和 J. Mandel. 1982. 共识值和加权因子。
{it:Journal of Research of the National Bureau of Standards} 87: 377–385.

{marker petoetal1977}{...}
{phang}
Peto, R., M. C. Pike, P. Armitage, N. E. Breslow, D. R. Cox, S. V. Howard, N.
Mantel, K. McPherson, J. Peto, 和 P. G. Smith. 1977. 设计和分析需要对每位患者进行长期观察的随机临床试验。 II. 分析和示例。 {it:British Journal of Cancer} 35: 1–39.

{marker raudenbush2009}{...}
{phang}
Raudenbush, S. W. 2009. 分析效果大小：随机效应模型。在 {it:研究综合与元分析手册}，
编辑 H. Cooper、L. V. Hedges 和 J. C. Valentine，第 2 版，295–316。
纽约：拉塞尔·萨吉基金会。

{marker schmidthunter2015}{...}
{phang}
Schmidt, F. L. 和 J. E. Hunter. 2015.
{it:元分析的方法：纠正研究结果中的错误和偏差}。
第三版。加利福尼亚州千椰树：SAGE。

{marker sidikjonkman2005}{...}
{phang}
Sidik, K. 和 J. N. Jonkman. 2005. 关于随机效应元回归中方差估计的说明。
{it:Journal of Biopharmaceutical Statistics} 15: 823–838.

{marker sweetingsuttonlambert2004}{...}
{phang}
Sweeting, M. J., A. J. Sutton, 和 P. C. Lambert. 2004. 要向无中添加什么？
在稀疏数据的元分析中使用和避免连续校正。
{it:Statistics in Medicine} 23: 1351–1375.

{marker veronikietal2016}{...}
{phang}
Veroniki, A. A., D. Jackson, W. Viechtbauer, R. Bender, J. Bowden, G. Knapp,
O. Kuss, J. P. T. Higgins, D. Langan, 和 G. Salanti. 2016.
在元分析中估计研究间方差及其不确定性的方法。 {it:Research Synthesis Methods} 7: 55–79.
{p_end}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <meta_esize.sthlp>}