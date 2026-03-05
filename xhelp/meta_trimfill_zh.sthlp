{smcl}
{* *! version 1.0.0  21jun2019}{...}
{viewerdialog "meta" "dialog meta"}{...}
{vieweralsosee "[META] meta trimfill" "mansection META metatrimfill"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[META] meta bias" "help meta bias"}{...}
{vieweralsosee "[META] meta data" "mansection META metadata"}{...}
{vieweralsosee "[META] meta funnelplot" "help meta funnelplot"}{...}
{vieweralsosee "[META] meta summarize" "help meta summarize"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[META] meta" "help meta_zh"}{...}
{vieweralsosee "[META] Glossary" "help meta glossary"}{...}
{vieweralsosee "[META] Intro" "mansection META Intro"}{...}
{viewerjumpto "Syntax" "meta_trimfill_zh##syntax"}{...}
{viewerjumpto "Menu" "meta_trimfill_zh##menu"}{...}
{viewerjumpto "Description" "meta_trimfill_zh##description"}{...}
{viewerjumpto "Links to PDF documentation" "meta_trimfill_zh##linkspdf"}{...}
{viewerjumpto "Options" "meta_trimfill_zh##options"}{...}
{viewerjumpto "Examples" "meta_trimfill_zh##examples"}{...}
{viewerjumpto "Stored results" "meta_trimfill_zh##results"}{...}
{viewerjumpto "Reference" "meta_trimfill_zh##reference"}
{help meta_trimfill:English Version}
{hline}{...}
{p2colset 1 25 27 2}{...}
{p2col:{bf:[META] meta trimfill} {hline 2}}非参数修整与填充
发表偏倚分析{p_end}
{p2col:}({mansection META metatrimfill:查看完整的PDF手册条目}){p_end}
{p2colreset}{...}


{marker syntax}{...}
{title:语法}

{p 8 16 2}
{cmd:meta} {cmdab:trim:fill}
{ifin}
[{cmd:,} {it:选项}]

{marker optstbl}{...}
{synoptset 22 tabbed}{...}
{synopthdr:选项}
{synoptline}
{syntab:主要}
{synopt :{opth est:imator(meta_trimfill##estimator:估计量)}}缺失研究数量的估计量，默认是 {cmd:linear}{p_end}
{synopt :{opt left}}对漏斗图左侧的研究进行插补{p_end}
{synopt :{opt right}}对漏斗图右侧的研究进行插补{p_end}
{synopt :{opt funnel}[{cmd:(}{help meta_trimfill##funnelopts:{it:funnelopts}}{cmd:)}]}绘制漏斗图{p_end}

{syntab:选项}
{synopt :{opt l:evel(#)}}设置信赖水平；默认值是为meta分析声明的值{p_end}
{synopt :{help meta_trimfill##eform_option:{it:eform_option}}}报告指数化结果{p_end}
{synopt :[{cmd:no}]{opt metashow}}在输出中显示或抑制meta设置{p_end}
{synopt :{help meta_trimfill##dispopts:{it:display_options}}}控制列格式{p_end}

{syntab:迭代}
{synopt :{opt random}[{cmd:(}{help meta_trimfill##remethod:{it:remethod}}{cmd:)}]}用于迭代和汇总步骤的随机效应meta分析{p_end}
{synopt :{opt common}}用于迭代和汇总步骤的共同效应meta分析；隐含反方差法{p_end}
{synopt :{opt fixed}}用于迭代和汇总步骤的固定效应meta分析；隐含反方差法{p_end}
{synopt :{opth itermeth:od(meta_trimfill##itermethod:方法)}}用于迭代步骤的meta分析{p_end}
{synopt :{opth poolmeth:od(meta_trimfill##poolmethod:方法)}}用于汇总步骤的meta分析{p_end}
{synopt :{opt iter:ate(#)}}修整与填充算法的最大迭代次数；默认值是 {cmd:iterate(100)}{p_end}
{synopt :[{cmd:no}]{cmd:log}}显示修整与填充算法的迭代日志{p_end}
{synoptline}

{marker estimator}{...}
{synoptset 22}{...}
{synopthdr:估计量}
{synoptline}
{synopt :{opt lin:ear}}线性估计量，L_0；默认值{p_end}
{synopt :{opt run}}右端运行估计量，R_0{p_end}
{synopt :{opt quad:ratic}}二次估计量，Q_0（很少使用）{p_end}
{synoptline}

包括 help meta_remethod


包括 help menu_meta


{marker description}{...}
{title:描述}

{pstd}
{cmd:meta trimfill} 执行非参数的“修整与填充”方法，以考虑meta分析中的发表偏倚。该命令估计因发表偏倚而可能缺失的研究数量，对这些研究进行插补，并使用观察到的和插补的研究计算整体效应大小估计。它还可以提供一个漏斗图，其中缺失的研究被插补。


{marker linkspdf}{...}
{title:PDF文档链接}

        {mansection META metatrimfillQuickstart:快速开始}

        {mansection META metatrimfillRemarksandexamples:备注与示例}

        {mansection META metatrimfillMethodsandformulas:方法与公式}

{pstd}
上述部分未包含在此帮助文件中。


{marker options}{...}
{title:选项}

{dlgtab:主要}

{phang}
{opt estimator(estimator)} 指定缺失研究数量的估计量类型。 {it:estimator} 可以是 {cmd:linear}、{cmd:run} 或 {cmd:quadratic}。 默认值是 {cmd:estimator(linear)}。

{phang2}
{cmd:linear} 指定使用“线性”估计量 L_0 来估计缺失研究的数量。这是默认估计量。

{phang2}
{cmd:run} 指定使用右端运行估计量 R_0 来估计缺失研究的数量。

{phang2}
{cmd:quadratic} 指定使用“二次”估计量 Q_0 来估计缺失研究的数量。该估计量在文献中并不推荐，仅为完整性提供。

{pmore}
{help meta_trimfill##duvaltweedie2000:Duval 和 Tweedie (2000)} 发现 L_0 和 R_0 估计量在均方误差方面优于 Q_0 估计量，且在某些情况下 L_0 具有最小均方误差。他们还发现 R_0 在某些情况下倾向于保守。因此，L_0 被选为默认值，但作者推荐在实践中考虑所有估计量。有关估计量的详细信息，请参见
{mansection META metatrimfillMethodsandformulasEstimatingthenumberofmissingstudies:{it:估计缺失研究的数量}}
在 {bf:[META] meta trimfill} 中。

{phang}
{cmd:left} 和 {cmd:right} 指定漏斗图的哪个侧面要插补缺失的研究。默认情况下，根据传统的 Egger 测试结果选择侧面——如果估计的斜率为正，则假定为 {cmd:left}；否则，则假定为 {cmd:right}。只允许使用 {cmd:left} 或 {cmd:right} 中的一个。

{phang2}
{cmd:left} 假设左侧（最小）效应大小被抑制，并指定进行插补。

{phang2}
{cmd:right} 假设右侧（最大）效应大小被抑制，并指定进行插补。

{marker funnelopts}{...}
{phang}
{cmd:funnel} 和 {opt funnel(funnelopts)} 指定绘制包含插补研究的漏斗图。

{phang2}
{it:funnelopts} 是在 {help meta_funnelplot_zh:[META] meta funnelplot} 中记录的任何选项，除了 {cmd:random}[{cmd:()}]、{cmd:common}[{cmd:()}]、{cmd:fixed}[{cmd:()}]、{cmd:by()}、[{cmd:no}]{cmd:metashow} 和 {cmd:addplot()}。

{dlgtab:选项}

{phang}
{opt level(#)} 指定置信区间的置信水平，以百分比表示。默认值为为meta分析会话声明的值；请参见 {mansection META metadataRemarksandexamplesDeclaringaconfidencelevelformeta-analysis:{it:为meta分析声明置信水平}}
在 {bf:[META] meta data} 中。还有选项 {helpb meta_set##level:level()} 在 {help meta_set_zh:[META] meta set} 中。

{marker eform_option}{...}
{phang}
{it:eform_option} 是 {cmd:eform}、{opt eform(string)}、{cmd:or} 或 {cmd:rr} 之一。它报告指数化效应大小，并在适用时转换其置信区间。默认情况下，结果按使用 {cmd:meta set} 或 {cmd:meta esize} 声明的度量显示，例如对数几率比和对数风险比。{it:eform_option} 影响结果的显示方式，而不影响它们的估计和存储方式。

{phang2}
{opt eform(string)} 将指数化的效应大小标记为 {it:string}；其他选项使用默认标签。默认标签与所选择的效应大小特定。例如，选项 {cmd:eform} 在与 {cmd:meta esize} 声明的对数几率比一起使用时使用 {cmd:Odds Ratio}，在与声明的对数风险比一起使用时使用 {cmd:Risk Ratio}。当声明对数几率比时，选项 {cmd:or} 是 {cmd:eform} 的同义词；声明对数风险比时，选项 {cmd:rr} 是 {cmd:eform} 的同义词。如果在声明期间指定了选项 {opt eslabel(eslab)}，则 {cmd:eform} 将使用 {opt exp(eslab)} 标签，或者如果 {it:eslab} 太长，则使用 {cmd:exp(ES)} 标签。

{phang}
{cmd:metashow} 和 {cmd:nometashow} 显示或抑制meta设置信息。默认情况下，该信息显示在输出顶部。您还可以使用 {cmd:nometashow} 与 {helpb meta update} 结合使用，以抑制整个meta分析会话的meta设置输出。

{marker dispopts}{...}
{phang}
{it:display_options}: {opth cformat(%fmt)}; 参见 {help estimation_options_zh:[R] 估计选项}。

{dlgtab:迭代}

{pstd}
选项 {cmd:random()}、{cmd:common} 和 {cmd:fixed} 在与 {cmd:meta trimfill} 指定时，暂时覆盖由 {helpb meta set} 或 {helpb meta esize} 宣布的全局模型。在计算过程中，这些选项指定在迭代和汇总步骤中使用相同的方法。要指定不同的方法，请使用选项 {cmd:itermethod()} 和 {cmd:poolmethod()}。选项 {cmd:random()}、{cmd:common} 和 {cmd:fixed} 不得组合。如果省略这些选项，则假定使用声明的meta分析模型；参见 {mansection META metadataRemarksandexamplesDeclaringameta-analysismodel:{it:声明meta分析模型}}
在 {bf:[META] meta data} 中。另请参见 {mansection META IntroRemarksandexamplesMeta-analysismodels:{it:Meta分析模型}}
在 {bf:[META] Intro} 中。

{phang}
{opt random} 和 {opt random(remethod)} 指定假设在修整与填充算法的迭代和汇总步骤中使用随机效应模型进行meta分析；请参阅
{mansection META IntroRemarksandexamplesRandom-effectsmodel:{it:随机效应模型}}

{marker remethoddes}{...}
{phang2}
{it:remethod} 指定用于研究间方差 τ^2 的估计量类型。 {it:remethod} 可以是 {cmd:reml}、{cmd:mle}、{cmd:ebayes}、{cmd:dlaird}、{cmd:sjonkman}、{cmd:hedges} 或 {cmd:hschmidt}。 {cmd:random} 是 {cmd:random(reml)} 的同义词。有关更多信息，请参见 {help meta_esize##options:{it:选项}} 在 {help meta_esize_zh:[META] meta esize} 中。

{phang}
{cmd:common} 指定假设在修整与填充算法的迭代和汇总步骤中使用共同效应模型进行meta分析；请参阅
{mansection META IntroRemarksandexamplesCommon-effect(fixed-effect)model:{it:共同效应（固定效应）模型}}
在 {bf:[META] Intro} 中。它使用反方差估计方法；参见 {mansection META IntroRemarksandexamplesMeta-analysisestimationmethods:{it:Meta分析估计方法}}
在 {bf:[META] Intro} 中。另请参见 {mansection META metadataRemarksandexamplesfixedvscommon:讨论}
在 {bf:[META] meta data} 中关于共同效应与固定效应模型的讨论。
{cmd:common} 不能与 {it:moderators} 同时使用。

{phang}
{cmd:fixed} 指定假设在修整与填充算法的迭代和汇总步骤中使用固定效应模型进行meta分析；请参阅
{mansection META IntroRemarksandexamplesFixed-effectsmodel:{it:固定效应模型}}
在 {bf:[META] Intro} 中。它使用反方差估计方法；参见 {mansection META IntroRemarksandexamplesMeta-analysisestimationmethods:{it:Meta分析估计方法}}
在 {bf:[META] Intro} 中。另请参见 
{mansection META metadataRemarksandexamplesfixedvscommon:讨论}
在 {bf:[META] meta data} 中关于共同效应与固定效应模型的讨论。

{marker itermethod}{...}
{phang}
{opt itermethod(method)} 指定在修整与填充算法的迭代步骤中使用的meta分析方法。默认值为为meta分析声明的方法；参见
{mansection META metadataRemarksandexamplesDeclaringameta-analysismodel:{it:声明meta分析模型}}
在 {bf:[META] meta data} 中。另请参见
{mansection META metatrimfillMethodsandformulasTrim-and-fillalgorithm:{it:修整与填充算法}}
在 {bf:[META] meta trimfill} 的 {it:方法与公式} 中。该选项不得与 {cmd:random()}、{cmd:common} 或 {cmd:fixed} 一起使用。

{phang2}
{it:method} 可以是随机效应meta分析方法，
{help meta_trimfill##remethod:{it:remethod}}；或共同效应的反方差方法，{cmd:common}；或者固定效应的反方差方法，{cmd:fixed}；有关详细信息，请参见
{help meta_set##options:{it:选项}} 在 {help meta_set_zh:[META] meta esize} 中。

{marker poolmethod}{...}
{phang}
{opt poolmethod(method)} 指定在修整与填充算法的汇总步骤中使用的meta分析方法。默认值是使用为meta分析声明的方法；参见 
{mansection META metadataRemarksandexamplesDeclaringameta-analysismodel:{it:声明meta分析模型}}
在 {bf:[META] meta data} 中。另请参见
{mansection META metatrimfillMethodsandformulasTrim-and-fillalgorithm:{it:修整与填充算法}}
在 {bf:[META] meta trimfill} 的 {it:方法与公式} 中。该选项不得与 {cmd:random()}、{cmd:common} 或 {cmd:fixed} 一起使用。

{phang2}
{it:method} 可以是随机效应meta分析方法，
{help meta_trimfill##remethod:{it:remethod}}；或共同效应的反方差方法，{cmd:common}；或者固定效应的反方差方法，{cmd:fixed}；有关详细信息，请参见
{help meta_set##options:{it:选项}} 在 {help meta_set_zh:[META] meta esize} 中。

{phang}
{opt iterate(#)} 指定修整与填充算法的最大迭代次数。默认值为 {cmd:iterate(100)}。当迭代次数等于 {cmd:iterate()} 时，算法停止并呈现当前结果。如果未达到收敛，也会显示警告信息。如果在达到此阈值之前宣布收敛，则算法将在宣布收敛时停止。

{phang}
{opt nolog} 和 {opt log} 指定是否显示显示修整与填充算法进展的迭代日志。默认情况下，日志被抑制，但可以指定 {cmd:log} 来显示。

{marker examples}{...}
{title:示例}

{pstd}设置{p_end}
{phang2}{cmd:. webuse metatrim}{p_end}
{phang2}{cmd:. meta set stdmdiff se}

{pstd}执行发表偏倚的修整与填充分析{p_end}
{phang2}{cmd:. meta trimfill}

{pstd}与上面相同，但请求右端运行估计量来估计失落研究的数量{p_end}
{phang2}{cmd:. meta trimfill, estimator(run)}

{pstd}与上面相同，但请求观察和插补研究的漏斗图{p_end}
{phang2}{cmd:. meta trimfill, estimator(run) funnel}

{pstd}与上面相同，但请求一个轮廓增强的漏斗图{p_end}
{phang2}{cmd:. meta trimfill, estimator(run) funnel(contour(1 5 10))}

{pstd}指定在迭代步骤中基于固定效应反方差法的总体效应大小估计，在汇总步骤中基于随机效应 DerSimonian–Laird 方法{p_end}
{phang2}{cmd:. meta trimfill, itermethod(fixed) poolmethod(dlaird)}


{marker results}{...}
{title:存储结果}

{pstd}
{cmd:meta trimfill} 在 {cmd:r()} 中存储以下内容：

{synoptset 20 tabbed}{...}
{p2col 5 20 24 2: 标量}{p_end}
{synopt:{cmd:r(K_total)}}研究总数（观察到的和插补的）{p_end}
{synopt:{cmd:r(K_observed)}}观察到的研究数量{p_end}
{synopt:{cmd:r(K_imputed)}}插补研究数量{p_end}
{synopt:{cmd:r(converged)}}若修整与填充算法收敛，则为 {cmd:1}，否则为 {cmd:0}{p_end}

{p2col 5 20 24 2: 宏}{p_end}
{synopt:{cmd:r(estimator)}}缺失研究数量的估计量类型{p_end}
{synopt:{cmd:r(side)}}缺失研究的漏斗图侧面；{cmd:left} 或 {cmd:right}{p_end}
{synopt:{cmd:r(itermethod)}}在迭代步骤中使用的meta分析估计方法{p_end}
{synopt:{cmd:r(poolmethod)}}在最终汇总步骤中使用的meta分析估计方法{p_end}
{synopt:{cmd:r(level)}}置信区间的置信水平{p_end}

{p2col 5 20 24 2: 矩阵}{p_end}
{synopt:{cmd:r(table)}}修整与填充结果表{p_end}
{synopt:{cmd:r(imputed)}}插补研究的效应大小及其标准误差的矩阵{p_end}


{marker reference}{...}
{title:参考文献}

{marker duvaltweedie2000}{...}
{phang}
Duval, S. 和 R. L. Tweedie. 2000. 修整与填充：一种简单的基于漏斗图的方法，用于测试和调整meta分析中的发表偏倚。
{it:生物统计学} 56: 455–463。
{p_end}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <meta_trimfill.sthlp>}