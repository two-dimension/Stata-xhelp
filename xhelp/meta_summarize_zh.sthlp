{smcl}
{* *! version 1.0.0  19jun2019}{...}
{viewerdialog "meta" "dialog meta"}{...}
{vieweralsosee "[META] meta summarize" "mansection META metasummarize"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[META] meta data" "mansection META metadata"}{...}
{vieweralsosee "[META] meta forestplot" "help meta forestplot"}{...}
{vieweralsosee "[META] meta regress" "help meta regress"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[META] meta" "help meta_zh"}{...}
{vieweralsosee "[META] Glossary" "help meta glossary"}{...}
{vieweralsosee "[META] Intro" "mansection META Intro"}{...}
{viewerjumpto "Syntax" "meta_summarize_zh##syntax"}{...}
{viewerjumpto "Menu" "meta_summarize_zh##menu"}{...}
{viewerjumpto "Description" "meta_summarize_zh##description"}{...}
{viewerjumpto "Links to PDF documentation" "meta_summarize_zh##linkspdf"}{...}
{viewerjumpto "Options" "meta_summarize_zh##options"}{...}
{viewerjumpto "Examples" "meta_summarize_zh##examples"}{...}
{viewerjumpto "Stored results" "meta_summarize_zh##results"}{...}
{viewerjumpto "References" "meta_summarize_zh##references"}
{help meta_summarize:English Version}
{hline}{...}
{p2colset 1 26 28 2}{...}
{p2col:{bf:[META] meta summarize} {hline 2}}汇总元分析数据{p_end}
{p2col:}({mansection META metasummarize:查看完整 PDF 手册条目}){p_end}
{p2colreset}{...}


{marker syntax}{...}
{title:语法}

{pstd}
根据 meta set 或 meta esize 声明的元分析

{p 8 16 2}
{cmd:meta} {cmdab:sum:marize}
{ifin} [{cmd:,} {help meta_summarize##optstbl:{it:选项}}
                {help meta_summarize##reopts:{it:重新选项}}]


{pstd}
随机效应元分析

{p 8 16 2}
{cmd:meta} {cmdab:sum:marize}
{ifin}{cmd:,}
{cmd:random}[{cmd:(}{help meta_summarize##remethod:{it:重方法}}{cmd:)}]
           [{help meta_summarize##optstbl:{it:选项}}
                {help meta_summarize##reopts:{it:重新选项}}]


{pstd}
共同效应元分析

{p 8 16 2}
{cmd:meta} {cmdab:sum:marize}
{ifin}{cmd:,}
{cmd:common}[{cmd:(}{help meta_summarize##cefemethod:{it:共同效应方法}}{cmd:)}]
           [{help meta_summarize##optstbl:{it:选项}}]


{pstd}
固定效应元分析

{p 8 16 2}
{cmd:meta} {cmdab:sum:marize}
{ifin}{cmd:,}
{cmd:fixed}[{cmd:(}{help meta_summarize##cefemethod:{it:共同效应方法}}{cmd:)}]
           [{help meta_summarize##optstbl:{it:选项}}]


{marker optstbl}{...}
{synoptset 22 tabbed}{...}
{synopthdr:选项}
{synoptline}
{syntab:主}
{synopt :{opth subgr:oup(varlist)}}按 {it:变量列表} 中每个变量进行亚组元分析{p_end}
{synopt :{opth cumul:ative(meta_summarize##cumulspec:cumulspec)}}累积元分析{p_end}

{syntab:选项}
{synopt :{opt l:evel(#)}}设置置信水平; 默认值是声明的元分析{p_end}
{synopt :{help meta_summarize##eform_option:{it:eform_option}}}报告指数化结果{p_end}
{synopt :{opt tdist:ribution}}根据总体效应量报告 t 检验而不是 z 检验{p_end}
{synopt :{opt nostud:ies}}抑制单个研究的输出{p_end}
{synopt :{opt nohead:er}}抑制输出头部{p_end}
{synopt :[{cmd:no}]{opt metashow}}在输出中显示或抑制元设置{p_end}
{synopt :{help meta_summarize##dispopts:{it:显示选项}}}控制列格式{p_end}

{syntab:最大化}
{synopt :{help meta_summarize##maxopts:{it:最大化选项}}}控制最大化过程; 很少使用{p_end}
{synoptline}

{synoptset 22}{...}
INCLUDE help meta_remethod

INCLUDE help meta_cefemethod

{marker reopts}{...}
{synopthdr:重新选项}
{synoptline}
{synopt :{opt tau2(#)}}使用固定的研究间方差值 τ^2 进行敏感性元分析{p_end}
{synopt :{opt i2(#)}}使用固定的异质性统计量 I^2 值进行敏感性元分析{p_end}
{synopt :{opt predint:erval}[{cmd:(}{it:#}{cmd:)}]}报告总体效应量的预测区间{p_end}
{synopt :{opth se:(meta_summarize##seadj:seadj)}}调整总体效应量的标准误差{p_end}
{synoptline}


INCLUDE help menu_meta


{marker description}{...}
{title:描述}

{pstd}
{cmd:meta summarize} 汇总 {help meta_glossary##meta_data:{bf:元} 数据}。它报告个体效应量及总体效应量（ES）、它们的置信区间（CIs）、异质性统计量等。 {cmd:meta summarize} 可以执行随机效应（RE）、共同效应（CE）和固定效应（FE）元分析。它还可以进行亚组、累积和敏感性元分析。有关元分析汇总的图形显示，请参见 {help meta_forestplot_zh:[META] meta forestplot}。


{marker linkspdf}{...}
{title:PDF 文件文档链接}

        {mansection META metasummarizeQuickstart:快速入门}

        {mansection META metasummarizeRemarksandexamples:备注和示例}

        {mansection META metasummarizeMethodsandformulas:方法和公式}

{pstd}
上述部分不包含在此帮助文件中。


{marker options}{...}
{title:选项}

{dlgtab:主}

{pstd}
选项 {cmd:random()}、{cmd:common()} 和 {cmd:fixed()} 在与 {cmd:meta summarize} 一起指定时，会暂时覆盖由 {helpb meta set} 或 {helpb meta esize} 声明的全局模型。 选项 {cmd:random()}、{cmd:common()} 和 {cmd:fixed()} 不能同时使用。如果省略这些选项，则假定使用声明的元分析模型；请参见 {mansection META metadataRemarksandexamplesDeclaringameta-analysismodel:{it:声明元分析模型}} 在 {bf:[META] meta data}中。另请参见 {mansection META IntroRemarksandexamplesMeta-analysismodels:{it:元分析模型}} 在 {bf:[META] Intro} 中。

{phang}
{opt random} 和 {opt random(remethod)} 指定在元分析中假定随机效应模型；见 {mansection META IntroRemarksandexamplesRandom-effectsmodel:{it:随机效应模型}} 在 {bf:[META] Intro} 中。

{marker remethoddes}{...}
{phang2}
{it:remethod} 指定用于研究间方差 τ^2 的估计类型。 {it:remethod} 可以是 {cmd:reml}、{cmd:mle}、{cmd:ebayes}、{cmd:dlaird}、{cmd:sjonkman}、{cmd:hedges} 或 {cmd:hschmidt}。 {cmd:random} 是 {cmd:random(reml)} 的同义词。有关更多信息，请参见 {help meta_esize##options:{it:选项}} 在 {help meta_esize_zh:[META] meta esize} 中。

{phang}
{cmd:common} 和 {opth common:(meta_summarize##ccefemethoddes:cefemethod)} 指定在元分析中假定共同效应模型；见 {mansection META IntroRemarksandexamplesCommon-effect(fixed-effect)model:{it:共同效应（“固定效应”）模型}} 在 {bf:[META] Intro} 中。另请参见 {mansection META metadataRemarksandexamplesfixedvscommon:讨论} 在 {bf:[META] meta data} 中关于共同效应和固定效应模型的讨论。

{pmore}
{cmd:common} 意味着对于效应量 {cmd:lnoratio}、{cmd:lnrratio} 和 {cmd:rdiff} 假定 {cmd:common(mhaenszel)}，对于所有其他效应量假定 {cmd:common(invvariance)}。 {cmd:common(mhaenszel)} 仅支持效应量 {cmd:lnoratio}、{cmd:lnrratio} 和 {cmd:rdiff}。

{marker ccefemethoddes}{...}
{phang2}
{it:cefemethod} 可以是 {cmd:mhaenszel} 或 {cmd:invvariance}（同义词 {cmd:ivariance}）。有关更多信息，请参见 {help meta_summarize##options:{it:选项}} 在 {help meta_esize_zh:[META] meta esize} 中。

{phang}
{cmd:fixed} 和 {opth fixed:(meta_summarize##fcefemethoddes:cefemethod)} 指定在元分析中假定固定效应模型；见 {mansection META IntroRemarksandexamplesFixed-effectsmodel:{it:固定效应模型}} 在 {bf:[META] Intro} 中。另请参见 {mansection META metadataRemarksandexamplesfixedvscommon:讨论} 在 {bf:[META] meta data} 中关于共同效应和固定效应模型的讨论。

{pmore}
{cmd:fixed} 意味着对于效应量 {cmd:lnoratio}、{cmd:lnrratio} 和 {cmd:rdiff} 假定 {cmd:fixed(mhaenszel)}，对于所有其他效应量假定 {cmd:fixed(invvariance)}。 {cmd:fixed(mhaenszel)} 仅支持效应量 {cmd:lnoratio}、{cmd:lnrratio} 和 {cmd:rdiff}。

{marker fcefemethoddes}{...}
{phang2}
{it:cefemethod} 可以是 {cmd:mhaenszel} 或 {cmd:invvariance}（同义词 {cmd:ivariance}）。有关更多信息，请参见 {help meta_summarize##options:{it:选项}} 在 {help meta_esize_zh:[META] meta esize} 中。

{phang}
{opth subgroup(varlist)} 指定对 {it:变量列表} 中每个变量进行亚组元分析（亚组分析）。亚组分析对 {it:变量列表} 中的每个变量和该变量定义的每个组单独进行元分析。假设用于每个子组的指定元分析模型。当所有研究的结果太不均匀而无法合并为一个估计时，但结果在某些研究组内相似时，此分析非常有用。指定的变量可以是数字或字符串变量。当指定多个变量时，仅显示亚组结果；即，抑制单个研究的结果以简化。只能指定 {cmd:subgroup()} 或 {cmd:cumulative()} 之一。

{marker cumulspec}{...}
{phang}
{cmd:cumulative(}{it:ordervar} [{cmd:,} {cmdab:asc:ending}{c |}{cmdab:desc:ending} {opt by(byvar)}]{cmd:)} 执行累积元分析（CMA）。 CMA 执行多个元分析，并通过每次向每次后续分析添加一项研究来累积结果。它便于监控随着新研究的可用而更新的研究结果。研究是依据变量 {it:ordervar} 的顺序值进入 CMA 的。 {it:ordervar} 必须是一个数字变量。 默认情况下，如果不指定子选项 {cmd:descending}，则假定为升序；仅允许 {cmd:ascending} 或 {cmd:descending} 之一。 {opt by(byvar)} 选项指定 CMA 按变量 {it:byvar} 分层。

{marker reoptsdes}{...}
{phang}
{it:reopts} 是 {opt tau2(#)}、{opt i2(#)}、 {opt predinterval}[{cmd:(}{it:#}{cmd:)}] 和 {cmd:se(}{cmd:khartung}[{cmd:, truncated}]{cmd:)}。这些选项与随机效应元分析一起使用。

{phang2}
{opt tau2(#)} 指定用于随机效应元分析的研究间方差参数 τ^2 的值。此选项用于探讨结果对不同层次的研究间异质性的敏感性。只能指定 {cmd:tau2()} 或 {cmd:i2()} 之一。此选项不允许与 {cmd:subgroup()} 或 {cmd:cumulative()} 结合使用。

{phang2}
{opt i2(#)} 指定用于随机效应元分析的异质性统计量 I^2（作为百分比）的值。此选项用于探讨结果对不同层次的研究间异质性的敏感性。只能指定 {cmd:i2()} 或 {cmd:tau2()} 之一。此选项不允许与 {cmd:subgroup()} 或 {cmd:cumulative()} 结合使用。

{phang2}
{cmd:predinterval} 和 {opt predinterval(#)} 指定要报告 95% 或 {it:#}% 的 {help meta_glossary##prediction_interval:预测区间} 以外的总体效应量的置信区间。 {it:#} 指定预测区间的置信水平。预测区间为将来新研究中的效应量提供合理范围。

{marker seadj}{...}
{phang2}
{opt se(seadj)} 指定将调整 {it:seadj} 应用于总体效应量的标准误差。此外，总体效应量的显著性检验基于学生 t 分布，而不是正态分布。

{phang3}
{it:seadj} 为 {opt kh:artung}[{cmd:,} {opt trunc:ated}]. 调整 {cmd:khartung} 指定将 Knapp-Hartung 调整 ({help meta_summarize##hartungknapp2001a:Hartung and Knapp 2001a}, {help meta_summarize##hartungknapp2001b:2001b}; {help meta_summarize##knapphartung2003:Knapp and Hartung 2003})，也称为 Sidik-Jonkman 调整 ({help meta_summarize##sidikjonkman2002:Sidik and Jonkman 2002})，应用于总体效应量的标准误差。 {cmd:hknapp} 和 {cmd:sjonkman} 是 {cmd:khartung} 的同义词。 {cmd:truncated} 指定使用截断的 Knapp-Hartung 调整 ({help meta_summarize##knapphartung2003:Knapp and Hartung 2003})，也称为修正的 Knapp-Hartung 调整。

{dlgtab:选项}

{phang}
{opt level(#)} 指定置信区间的置信水平，作为百分比。默认值为声明的元分析会话值；见 {mansection META metadataRemarksandexamplesDeclaringaconfidencelevelformeta-analysis:{it:声明元分析的置信水平}} 在 {bf:[META] meta data} 中。另请参见选项 {helpb meta_set##level:level()} 在 {help meta_set_zh:[META] meta set} 中。

{marker eform_option}{...}
{phang}
{it:eform_option} 是 {cmd:eform}、{opt eform(string)}、{cmd:or} 或 {cmd:rr} 中的一个。它报告指数化效应量并在适用时转换其相应的置信区间。默认情况下，结果以 {cmd:meta set} 或 {cmd:meta esize} 声明的度量显示，例如对数比率和对数风险比。 {it:eform_option} 影响结果的显示方式，而不是它们的估计和存储方式。

{phang2}
{opt eform(string)} 将指数化效应量标记为 {it:string}；其他选项使用默认标签。默认标签特定于所选的效应量。例如，当与声明的对数比率或对数风险比一起使用时，选项 {cmd:eform} 使用 {cmd:Odds Ratio} 或 {cmd:Risk Ratio}。当声明对数比率时，选项 {cmd:or} 是 {cmd:eform} 的同义词，而当声明对数风险比时，选项 {cmd:rr} 是 {cmd:eform} 的同义词。如果在声明时指定选项 {opt eslabel(eslab)}，则 {cmd:eform} 将使用 {opt exp(eslab)} 标签，或如果 {it:eslab} 太长，则使用 {cmd:exp(ES)} 标签。

{phang}
{opt tdistribution} 对总体效应量报告 t 检验，而不是 z 检验。此选项不能与选项 {cmd:subgroup()}、{cmd:cumulative()}或 {cmd:se()} 结合使用。

{phang}
{opt nostudies}（同义词 {cmd:nostudy}）抑制单个研究的效应量及其置信区间等信息的显示。

{phang}
{opt noheader} 抑制输出头部。

{phang}
{opt metashow} 和 {opt nometashow} 显示或抑制元设置信息。默认情况下，此信息显示在输出的顶部。您还可以使用 {cmd:nometashow} 与 {helpb meta update} 一起指定，以抑制整个元分析会话的元设置输出。

{marker dispopts}{...}
{phang}
{it:显示选项}: {opth cformat(%fmt)}、{opt pformat(%fmt)} 和 {opt sformat(%fmt)}；请参阅 {help estimation_options_zh:[R] 估计选项}。默认值为 {cmd:cformat(%9.3f)}、{cmd:pformat(%5.3f)} 和 {cmd:sformat(%8.2f)}。

{phang2}
{opth wgtformat(%fmt)} 指定输出表中权重列的格式。默认值为 {cmd:wgtformat(%5.2f)}。最大格式宽度为 5。

{phang2}
{opth ordformat(%fmt)} 指定在 {opt cumulative(ordervar)} 中指定的顺序变量值的格式。默认值为 {cmd:ordformat(%9.0g)}。最大格式宽度为 9。

{dlgtab:最大化}
    
{marker maxopts}{...}
{phang}
{it:最大化选项}: {opt iter:ate(#)}、{opt tol:erance(#)}、{opt nrtol:erance(#)}、{opt nonrtol:erance}（见 {help maximize_zh:[R] 最大化}）、{opt from(#)} 和 {opt showtrace}。这些选项控制随机效应方法 {cmd:reml}、{cmd:mle} 和 {cmd:ebayes} 的研究间方差参数 τ^2 的迭代估计。这些选项很少使用。

{phang2}
{opt from(#)} 指定估计期间 τ^2 的初始值。默认情况下，τ^2 的初始值为非迭代的 Hedges 估计量。

{phang2}
{opt showtrace} 显示迭代日志，其中包含估计的参数 τ^2、其与前一次迭代的相对差异及缩放梯度。


{marker examples}{...}
{title:示例}

{pstd}设置{p_end}
{phang2}{cmd:. webuse pupiliqset}{p_end}

{pstd}获取标准元分析摘要{p_end}
{phang2}{cmd:. meta summarize}

{pstd}基于 DerSimonian-Laird 随机效应和将 Knapp-Hartung 调整数应用于总体效应量的标准误差获取结果{p_end}
{phang2}{cmd:. meta summarize, random(dlaird) se(khartung)}

{pstd}基于 τ^2 的固定值 0.25 获取结果，并抑制单个研究的输出{p_end}
{phang2}{cmd:. meta summarize, tau2(0.25) nostudies}

{pstd}对变量 {cmd:week1} 进行亚组分析{p_end}
{phang2}{cmd:. meta summarize, subgroup(week1)}

{pstd}基于变量 {cmd:week1} 和 {cmd:tester} 执行两项独立的亚组分析{p_end}
{phang2}{cmd:. meta summarize, subgroup(week1 tester)}

{pstd}基于变量 {cmd:year} 执行累积 MA{p_end}
{phang2}{cmd:. meta summarize, cumulative(year)}

{pstd}如上所述，但按变量 {cmd:week1} 执行分层 CMA{p_end}
{phang2}{cmd:. meta summarize, cumulative(year, by(week1))}


{marker results}{...}
{title:存储结果}

{pstd}
{cmd:meta summarize} 将以下内容存储在 {cmd:r()} 中：

{synoptset 20 tabbed}{...}
{p2col 5 20 24 2: 标量}{p_end}
{synopt:{cmd:r(N)}}观察数量{p_end}
{synopt:{cmd:r(theta)}}总体效应量{p_end}
{synopt:{cmd:r(se)}}总体效应量的标准误差{p_end}
{synopt:{cmd:r(ci_lb)}}总体效应量的下置信区间{p_end}
{synopt:{cmd:r(ci_ub)}}总体效应量的上置信区间{p_end}
{synopt:{cmd:r(tau2)}}研究间方差{p_end}
{synopt:{cmd:r(I2)}}I^2 异质性统计量（不适用于 CE 模型）{p_end}
{synopt:{cmd:r(H2)}}H^2 异质性统计量（不适用于 CE 模型）{p_end}
{synopt:{cmd:r(z)}}总体效应量显著性检验的 z 统计量（当未指定 {cmd:se()} 时）{p_end}
{synopt:{cmd:r(t)}}总体效应量显著性检验的 t 统计量（当指定 {cmd:se()} 时）{p_end}
{synopt:{cmd:r(df)}}t 分布的自由度{p_end}
{synopt:{cmd:r(p)}}总体效应量显著性检验的 p 值{p_end}
{synopt:{cmd:r(Q)}}Cochran 的 Q 异质性检验统计量（不适用于 CE 模型）{p_end}
{synopt:{cmd:r(df_Q)}}异质性检验的自由度{p_end}
{synopt:{cmd:r(p_Q)}}异质性检验的 p 值{p_end}
{synopt:{cmd:r(Q_b)}}用于组差异检验的 Cochran 的 Q 统计量（对于 {cmd:subgroup()} 与一个变量）{p_end}
{synopt:{cmd:r(df_Q_b)}}组差异检验的自由度{p_end}
{synopt:{cmd:r(p_Q_b)}}组差异检验的 p 值{p_end}
{synopt:{cmd:r(seadj)}}标准误差调整{p_end}
{synopt:{cmd:r(level)}}置信区间的置信水平{p_end}
{synopt:{cmd:r(pi_lb)}}预测区间的下界{p_end}
{synopt:{cmd:r(pi_ub)}}预测区间的上界{p_end}
{synopt:{cmd:r(pilevel)}}预测区间的置信水平{p_end}
{synopt:{cmd:r(converged)}}{cmd:1} 如果已收敛，{cmd:0} 否则（使用迭代随机效应方法）{p_end}

{p2col 5 20 24 2: 宏}{p_end}
{synopt:{cmd:r(model)}}元分析模型{p_end}
{synopt:{cmd:r(method)}}元分析估计方法{p_end}
{synopt:{cmd:r(subgroupvars)}}亚组分析变量的名称{p_end}
{synopt:{cmd:r(ordervar)}}在选项 {cmd:cumulative()} 中使用的顺序变量的名称{p_end}
{synopt:{cmd:r(byvar)}}在选项 {cmd:cumulative()} 中子选项 {cmd:by()} 使用的变量名称{p_end}
{synopt:{cmd:r(direction)}}{cmd:ascending} 或 {cmd:descending}{p_end}
{synopt:{cmd:r(seadjtype)}}标准误差调整的类型{p_end}

{p2col 5 20 24 2: 矩阵}{p_end}
{synopt:{cmd:r(esgroup)}}亚组分析的效应量和置信区间{p_end}
{synopt:{cmd:r(hetgroup)}}亚组分析的异质性摘要{p_end}
{synopt:{cmd:r(diffgroup)}}亚组分析的组差异检验结果{p_end}
{synopt:{cmd:r(cumul)}}累积元分析的结果{p_end}
{p2colreset}{...}

{pstd}
{cmd:meta summarize} 还创建系统变量 {cmd:_meta_weight}，其中包含研究权重。另请参见 {help meta_set##results:{it:存储结果}} 在 {help meta_set_zh:[META] meta set} 和 {help meta_esize##results:{it:存储结果}} 在 {help meta_esize_zh:[META] meta esize} 中获取其他系统变量。
{p_end}


{marker references}{...}
{title:参考文献}

{marker hartungknapp2001a}{...}
{phang}
Hartung, J., and G. Knapp. 2001a. 关于采用正态分布响应的元分析中总体治疗效应的检验。
{it:Statistics in Medicine} 20: 1771–1782。

{marker hartungknapp2001b}{...}
{phang}
------. 2001b. 一种针对二元结果的控制临床试验进行元分析的精细方法。{it:Statistics in Medicine} 20: 3875–3889。

{marker knapphartung2003}{...}
{phang}
Knapp, G., and J. Hartung. 2003. 改进的单协变量随机效应元回归检验。
{it:Statistics in Medicine} 22: 2693–2710。

{marker sidikjonkman2002}{...}
{phang}
Sidik, K., and J. N. Jonkman. 2002. 一种简单的元分析置信区间。{it:Statistics in Medicine} 21: 3153–3159。
{p_end}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <meta_summarize.sthlp>}