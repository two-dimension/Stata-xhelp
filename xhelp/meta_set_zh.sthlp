{smcl}
{* *! version 1.0.0  20jun2019}{...}
{viewerdialog "meta" "dialog meta"}{...}
{vieweralsosee "[META] meta set" "mansection META metaset"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[META] meta data" "mansection META metadata"}{...}
{vieweralsosee "[META] meta esize" "help meta esize"}{...}
{vieweralsosee "[META] meta update" "help meta update"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[META] meta" "help meta_zh"}{...}
{vieweralsosee "[META] Glossary" "help meta glossary"}{...}
{vieweralsosee "[META] Intro" "mansection META Intro"}{...}
{viewerjumpto "Syntax" "meta_set_zh##syntax"}{...}
{viewerjumpto "Menu" "meta_set_zh##menu"}{...}
{viewerjumpto "Description" "meta_set_zh##description"}{...}
{viewerjumpto "Links to PDF documentation" "meta_set_zh##linkspdf"}{...}
{viewerjumpto "Options" "meta_set_zh##options"}{...}
{viewerjumpto "Examples" "meta_set_zh##examples"}{...}
{viewerjumpto "Stored results" "meta_set_zh##results"}{...}
{viewerjumpto "References" "meta_set_zh##references"}
{help meta_set:English Version}
{hline}{...}
{p2colset 1 20 22 2}{...}
{p2col:{bf:[META] meta set} {hline 2}}声明元分析数据，使用通用效应大小{p_end}
{p2col:}({mansection META metaset:查看完整的 PDF 手册条目}){p_end}
{p2colreset}{...}


{marker syntax}{...}
{title:语法}

{pstd}
指定通用效应大小及其标准误

{p 8 16 2}
{cmd:meta set}
{help meta_set##esvar:{it:esvar sevar}}
{ifin}
[{cmd:,} {help meta_set##optstbl:{it:options}}]


{pstd}
指定通用效应大小及其置信区间

{p 8 16 2}
{cmd:meta set}
{help meta_set##esvar:{it:esvar cilvar ciuvar}}
{ifin}
[{cmd:,} {opt civarlev:el(#)}{cmd:,}
 {help meta_set##optstbl:{it:options}}]


{marker esvar}{...}
{pstd}
{it:esvar} 指定包含效应大小的变量, {it:sevar} 指定包含效应大小标准误的变量，{it:cilvar} 和 {it:ciuvar} 指定包含效应大小相应下限和上限置信区间的变量。

{synoptset 22 tabbed}{...}
{marker optstbl}{...}
{synopthdr:选项}
{synoptline}
{syntab:模型}
{synopt :{opt random}[{cmd:(}{help meta_set##remethod:{it:remethod}}{cmd:)}]}随机效应元分析；默认值为 {cmd:random(reml)}{p_end}
{synopt :{cmd:common}}共同效应元分析；隐含反方差方法{p_end}
{synopt :{opt fixed}}固定效应元分析；隐含反方差方法{p_end}

{syntab:选项}
{synopt :{opth studylab:el(varname)}}用于标记所有元分析输出中的研究的变量{p_end}
{synopt :{opth studysize(varname)}}每项研究的总样本量{p_end}
{synopt :{opth eslab:el(strings:string)}}在所有元分析输出中使用的效应大小标签；默认值为 {cmd:eslabel(Effect Size)}{p_end}
{synopt :{opt l:evel(#)}}后续所有元分析命令的置信水平{p_end}
{synopt :[{cmd:no}]{opt metashow}}显示或抑制其他 {cmd:meta} 命令的元设置{p_end}
{synoptline}

{synoptset 22}{...}
包含 help meta_remethod


包含 help menu_meta


{marker description}{...}
{title:描述}

{pstd}
{cmd:meta set} 将内存中的数据声明为 {cmd:meta} 数据，告知 Stata 关键变量及其在元分析中的作用。它用于通用（预计算）效应大小；如果您需要计算和声明效应大小，请参阅 {helpb meta esize:[META] meta esize}。您必须使用 {cmd:meta set} 或 {cmd:meta esize} 执行使用 {cmd:meta} 命令的元分析；请参见 {manlink META meta data}。

{pstd}
如果在数据声明后需要更新某些元设置，请参见 {helpb meta update:[META] meta update}。要显示当前元设置，请使用 {cmd:meta query}；请参见 {helpb meta update:[META] meta update}。


{marker linkspdf}{...}
{title:PDF 文档链接}

        {mansection META metasetQuickstart:快速开始}

        {mansection META metasetRemarksandexamples:备注和示例}

{pstd}
以上部分未包含在此帮助文件中。


{marker options}{...}
{title:选项}

{dlgtab:主要}

{phang}
{opt civarlevel(#)} 仅在您为 {cmd:meta set} 指定 CI 变量 {help meta_set##esvar:{it:cilvar}} 和 {help meta_set##esvar:{it:ciuvar}} 时相关。指定与这些变量相关的置信水平。默认值为 {cmd:civarlevel(95)}。此选项影响存储在 {mansection META metadataRemarksandexamplesSystemvariables:system variable} {cmd:_meta se} 中的效应大小标准误的计算。

{pmore}
不要将 {cmd:civarlevel()} 与 {cmd:level()} 混淆。前者仅影响指定的 CI 变量的置信水平。后者指定元分析的置信水平。

{dlgtab:模型}
 
{pstd}
选项 {cmd:random()}、{cmd:common} 和 {cmd:fixed} 在整个元分析中全局声明元分析模型；请参见 {mansection META metadataRemarksandexamplesDeclaringameta-analysismodel:{it:声明一个元分析模型}} 在 {bf:[META] meta data}。换句话说，一旦使用 {cmd:meta set} 设置您的元分析模型，所有后续的 {cmd:meta} 命令都将假定该模型。您可以通过使用 {helpb meta update} 更新声明的模型，或通过在 {cmd:meta} 命令中指定相应选项临时更改它。选项 {cmd:random()}、{cmd:common} 和 {cmd:fixed} 不能组合使用。如果省略这些选项，假定为 {cmd:random(reml)}；请参见 {mansection META metadataRemarksandexamplesDefaultmeta-analysismodelandmethod:{it:默认元分析模型和方法}} 在 {bf:[META] meta data}。另请参见 {mansection META IntroRemarksandexamplesMeta-analysismodels:{it:Meta-analysis models}} 在 {bf:[META] Intro}。

{phang}
{cmd:random} 和 {opt random(remethod)} 指定假定用于元分析的随机效应模型；请参见 {mansection META IntroRemarksandexamplesRandom-effectsmodel:{it:随机效应模型}} 在 {bf:[META] Intro}。

{marker remethoddes}{...}
{phang2}
{it:remethod} 指定用于研究间方差 τ^2 的估计类型。{it:remethod} 可以是 {cmd:reml}、{cmd:mle}、{cmd:ebayes}、{cmd:dlaird}、{cmd:sjonkman}、{cmd:hedges} 或 {cmd:hschmidt}。{cmd:random} 是 {cmd:random(reml)} 的同义词。下面，我们根据 {help meta_set##veronikietal2016:Veroniki et al. (2016)} 提供每种方法的简要描述。另请参见 {mansection META metadataRemarksandexamplesDeclaringameta-analysisestimationmethod:{it:声明元分析估计方法}} 在 {bf:[META] meta data}。

{phang3}
{cmd:reml}，默认值，指定使用 REML 方法（{help meta_set##raudenbush2009:Raudenbush 2009}）来估计 τ^2。此方法产生无偏、非负的研究间方差估计，并在实践中通常使用。{cmd:reml} 方法需要迭代。

{phang3}
{cmd:mle} 指定使用 ML 方法（{help meta_set##hardythompson1996:Hardy and Thompson 1996}）来估计 τ^2。它产生非负的研究间方差估计。对于少量研究或小型研究，此方法可能产生偏差估计。对于许多研究，ML 方法比 REML 方法更有效。{cmd:mle} 方法需要迭代。

{phang3}
{cmd:ebayes} 指定使用经验贝叶斯估计器（{help meta_set##berkeyetal1995:Berkey et al. 1995}），也称为 Paule–Mandel 估计器（{help meta_set##paulemandel1982:Paule and Mandel 1982}），来估计 τ^2。从模拟结果来看，该方法通常倾向于比其他随机效应方法更少偏差，但与 {cmd:reml} 或 {cmd:dlaird} 相比效率较低。{cmd:ebayes} 方法产生非负的 τ^2 估计，并需要迭代。

{phang3}
{cmd:dlaird} 指定使用 DerSimonian–Laird 方法（{help meta_set##dersimonianlaird1986:DerSimonian and Laird 1986}）来估计 τ^2。此方法在历史上是最流行的估计方法之一，因为它不对随机效应的分布做任何假设且不需要迭代。但它可能低估真实的研究间方差，特别是在变异性大且研究数量少的情况下。此方法可能产生 τ^2 的负值，因此在这种情况下被截断为零。

{phang3}
{cmd:sjonkman} 指定使用 Sidik–Jonkman 方法（{help meta_set##sidikjonkman2005:Sidik and Jonkman 2005}）来估计 τ^2。该方法总是产生非负的研究间方差估计，因此不需要像其他非迭代方法那样在 0 截断。{cmd:sjonkman} 方法不需要迭代。

{phang3}
{cmd:hedges} 指定使用 Hedges 方法（{help meta_set##hedges1983:Hedges 1983}）来估计 τ^2。当效应大小估计的采样方差可以无偏估计时，该估计器在截断之前是完全无偏的，但在实践中未被广泛使用（{help meta_set##veronikietal2016:Veroniki et al. 2016}）。{cmd:hedges} 方法不需要迭代。

{phang3}
{cmd:hschmidt} 指定使用 Hunter–Schmidt 方法（{help meta_set##schmidthunter2015:Schmidt and Hunter 2015}）来估计 τ^2。虽然该估计器的均方误差低于其他方法（除了 ML 之外），但已知存在负偏差。{cmd:hschmidt} 方法不需要迭代。

{phang}
{cmd:common} 指定假设用于元分析的共同效应模型；请参见 {mansection META IntroRemarksandexamplesCommon-effect(fixed-effect)model:{it:共同效应（固定效应）模型}} 在 {bf:[META] Intro}。它使用反方差估计方法；请参见 {mansection META IntroRemarksandexamplesMeta-analysisestimationmethods:{it:元分析估计方法}} 在 {bf:[META] Intro}。另请参见关于共同效应与固定效应模型的 {mansection META metadataRemarksandexamplesfixedvscommon:讨论} 在 {bf:[META] meta data}。

{phang}
{cmd:fixed} 指定假设用于元分析的固定效应模型；请参见 {mansection META IntroRemarksandexamplesFixed-effectsmodel:{it:固定效应模型}} 在 {bf:[META] Intro}。它使用反方差估计方法；请参见 {mansection META IntroRemarksandexamplesMeta-analysisestimationmethods:{it:元分析估计方法}} 在 {bf:[META] Intro}。另请参见关于共同效应与固定效应模型的 {mansection META metadataRemarksandexamplesfixedvscommon:讨论} 在 {bf:[META] meta data}。

{dlgtab:选项}
 
{phang}
{opth studylabel(varname)} 指定一个字符串变量，包含所有适用的元分析输出中研究的标签。默认的研究标签是 {cmd:Study 1}、{cmd:Study 2} 、...，{cmd:Study} K，其中 K 是元分析中研究的总数。

{phang}
{opth studysize(varname)} 指定包含每个研究的总样本量的变量。此选项对于后续的 {cmd:meta} 命令非常有用，这些命令在计算如使用样本量度量的 {helpb meta funnelplot} 时使用此信息。

{phang}
{opth eslabel:(strings:string)} 指定在所有相关元分析输出中使用 {it:string} 作为效应大小标签。默认标签为 {cmd:Effect Size}。

{marker level}{...}
{phang}
{opt level(#)} 指定置信区间的置信水平，以百分比表示。它将被后续所有元分析命令在计算置信区间时使用。默认值为 {cmd:level(95)} 或由 {helpb set level} 设置的值。声明后，您可以使用 {cmd:level()} 通过 {cmd:meta update} 更新在整个元分析会话中使用的置信水平。您还可以在执行命令期间直接与 {cmd:meta} 命令一起指定 {cmd:level()}，以临时修改置信水平。

{phang}
{cmd:metashow} 和 {cmd:nometashow} 在其他 {cmd:meta} 命令的输出中显示或抑制元设置信息。默认情况下，此信息显示在输出的顶部。您还可以在声明后的整个元分析会话中，使用 {helpb meta update} 指定 {cmd:nometashow} 以抑制元设置输出。


{marker examples}{...}
{title:示例}

{pstd}设置{p_end}
{phang2}{cmd:. webuse metaset}{p_end}

{pstd}声明预计算效应大小及其标准误{p_end}
{phang2}{cmd:. meta set es se}

{pstd}如上所述，但指定 DerSimonian–Laird 随机效应方法和研究标签{p_end}
{phang2}{cmd:. meta set es se, random(dlaird) studylabel(studylab)}

{pstd}声明预计算效应大小及其置信区间，而不是标准误{p_end}
{phang2}{cmd:. meta set es cil ciu}

{pstd}如上所述，但指定共同效应模型和效应大小标签{p_end}
{phang2}{cmd:. meta set es cil ciu, common eslabel("平均差异")}


{marker results}{...}
{title:存储的结果}

{pstd}
{cmd:meta set} 存储以下特征和系统变量：

{synoptset 28 tabbed}{...}
{p2col 5 28 32 2: 特征}{p_end}
{synopt:{cmd:_dta[_meta_marker]}}"{cmd:_meta_ds_1"}{p_end}
{synopt:{cmd:_dta[_meta_K]}}元分析中的研究数量{p_end}
{synopt:{cmd:_dta[_meta_studylabel]}}包含研究标签的字符串变量名称或 {cmd:Generic}{p_end}
{synopt:{cmd:_dta[_meta_studysize]}}包含研究大小的数值变量名称，如果指定了 {cmd:studysize()} {p_end}
{synopt:{cmd:_dta[_meta_estype]}}效应大小的类型； {cmd:Generic}{p_end}
{synopt:{cmd:_dta[_meta_eslabelopt]}}{opt eslabel(eslab)}，如果指定{p_end}
{synopt:{cmd:_dta[_meta_eslabel]}}来自 {cmd:eslabel()} 的效应大小标签；默认值为 {cmd:Effect Size}{p_end}
{synopt:{cmd:_dta[_meta_eslabeldb]}}对话框中的效应大小标签{p_end}
{synopt:{cmd:_dta[_meta_esvar]}}效应大小变量的名称{p_end}
{synopt:{cmd:_dta[_meta_esvardb]}}对话框中的效应大小变量的缩写名称{p_end}
{synopt:{cmd:_dta[_meta_sevar]}}标准误变量的名称，如果指定，或 {cmd:_meta_se}{p_end}
{synopt:{cmd:_dta[_meta_cilvar]}}包含下限 CI 边界的变量名称，如果指定，或 {cmd:_meta_cil}{p_end}
{synopt:{cmd:_dta[_meta_ciuvar]}}包含上限 CI 边界的变量名称，如果指定，或 {cmd:_meta_ciu}{p_end}
{synopt:{cmd:_dta[_meta_civarlevel]}}与 CI 变量相关的置信水平，如果指定{p_end}
{synopt:{cmd:_dta[_meta_level]}}元分析的默认置信水平{p_end}
{synopt:{cmd:_dta[_meta_modellabel]}}元分析模型标签： {cmd:Random-effects}、{cmd:Common-effect} 或 {cmd:Fixed-effects}{p_end}
{synopt:{cmd:_dta[_meta_model]}}元分析模型： {cmd:random}、{cmd:common} 或 {cmd:fixed}{p_end}
{synopt:{cmd:_dta[_meta_methodlabel]}}元分析方法标签；根据元分析模型有所不同{p_end}
{synopt:{cmd:_dta[_meta_method]}}元分析方法；根据元分析模型有所不同{p_end}
{synopt:{cmd:_dta[_meta_randomopt]}}{opt random(remethod)}，如果指定{p_end}
{synopt:{cmd:_dta[_meta_show]}}为空或 {cmd:nometashow}{p_end}
{synopt:{cmd:_dta[_meta_datatype]}}数据类型； {cmd:Generic}{p_end}
{synopt:{cmd:_dta[_meta_datavars]}}使用 {cmd:meta set} 指定的变量{p_end}
{synopt:{cmd:_dta[_meta_setcmdline]}}{cmd:meta set} 命令行{p_end}
{synopt:{cmd:_dta[_meta_ifexp]}}{it:if} 规范{p_end}
{synopt:{cmd:_dta[_meta_inexp]}}{it:in} 规范{p_end}

{p2col 5 28 32 2: 系统变量}{p_end}
{synopt:{cmd:_meta_id}}研究 ID 变量{p_end}
{synopt:{cmd:_meta_es}}包含效应大小的变量{p_end}
{synopt:{cmd:_meta_se}}包含效应大小标准误的变量{p_end}
{synopt:{cmd:_meta_cil}}包含效应大小的 CI 下限变量{p_end}
{synopt:{cmd:_meta_ciu}}包含效应大小的 CI 上限变量{p_end}
{synopt:{cmd:_meta_studylabel}}包含研究标签的字符串变量{p_end}
{synopt:{cmd:_meta_studysize}}每项研究的总样本量的变量{p_end}
{p2colreset}{...}


{marker references}{...}
{title:参考文献}

{marker berkeyetal1995}{...}
{phang}
Berkey, C. S., D. C. Hoaglin, F. Mosteller, 和 G. A. Colditz. 1995.
随机效应回归模型的元分析。
{it:医学统计} 14: 395–411.

{marker dersimonianlaird1986}{...}
{phang}
DerSimonian, R., 和 N. Laird. 1986. 临床试验中的元分析。
{it:受控临床试验} 7: 177–188.

{marker hardythompson1996}{...}
{phang}
Hardy, R. J., 和 S. G. Thompson. 1996. 随机效应元分析的似然方法。
{it:医学统计} 15: 619–629.

{marker hedges1983}{...}
{phang}
Hedges, L. V. 1983. 效应大小的随机效应模型。
{it:心理学公报} 93: 388–395.

{marker paulemandel1982}{...}
{phang}
Paule, R. C. 和 J. Mandel. 1982. 共识值和加权因素。
{it:国家标准局研究杂志} 87: 377–385.

{marker raudenbush2009}{...}
{phang}
Raudenbush, S. W. 2009. 分析效应大小：随机效应模型。在 {it:研究综合与元分析手册}，
编 H. Cooper、L. V. Hedges 和 J. C. Valentine，第 2 版，295–316。
纽约：拉塞尔·塞奇基金会。

{marker schmidthunter2015}{...}
{phang}
Schmidt, F. L. 和 J. E. Hunter. 2015.
{it:元分析方法：纠正研究发现中的错误和偏差}。
第 3 版。加利福尼亚州千橡市：SAGE。

{marker sidikjonkman2005}{...}
{phang}
Sidik, K. 和 J. N. Jonkman. 2005. 关于随机效应元回归中的方差估计的说明。
{it:生物制药统计杂志} 15: 823–838.

{marker veronikietal2016}{...}
{phang}
Veroniki, A. A., D. Jackson, W. Viechtbauer, R. Bender, J. Bowden, G. Knapp,
O. Kuss, J. P. T. Higgins, D. Langan, 和 G. Salanti. 2016.
估计元分析中研究间方差及其不确定性的方法。{it:研究综合方法} 7: 55–79。
{p_end}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <meta_set.sthlp>}