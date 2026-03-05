{smcl}
{* *! version 1.0.0  19jun2019}{...}
{viewerdialog "meta" "dialog meta"}{...}
{vieweralsosee "[META] meta funnelplot" "mansection META metafunnelplot"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[META] meta bias" "help meta bias"}{...}
{vieweralsosee "[META] meta data" "mansection META metadata"}{...}
{vieweralsosee "[META] meta trimfill" "help meta trimfill"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[META] meta" "help meta_zh"}{...}
{vieweralsosee "[META] Glossary" "help meta glossary"}{...}
{vieweralsosee "[META] Intro" "mansection META Intro"}{...}
{viewerjumpto "Syntax" "meta_funnelplot_zh##syntax"}{...}
{viewerjumpto "Menu" "meta_funnelplot_zh##menu"}{...}
{viewerjumpto "Description" "meta_funnelplot_zh##description"}{...}
{viewerjumpto "Links to PDF documentation" "meta_funnelplot_zh##linkspdf"}{...}
{viewerjumpto "Options" "meta_funnelplot_zh##options"}{...}
{viewerjumpto "Examples" "meta_funnelplot_zh##examples"}{...}
{viewerjumpto "Stored results" "meta_funnelplot_zh##results"}
{help meta_funnelplot:English Version}
{hline}{...}
{p2colset 1 27 29 2}{...}
{p2col:{bf:[META] meta funnelplot} {hline 2}}漏斗图{p_end}
{p2col:}({mansection META metafunnelplot:查看完整的PDF手册条目}){p_end}
{p2colreset}{...}


{marker syntax}{...}
{title:语法}

{pstd}
构建漏斗图

{p 8 16 2}
{cmd:meta} {cmdab:funnel:plot}
{ifin}
[{cmd:,} {opt level(#)}
{help meta_funnelplot##optstbl:{it:选项}}]


{pstd}
构建等高线增强的漏斗图

{p 8 16 2}
{cmd:meta} {cmdab:funnel:plot}
{ifin}{cmd:,}
{opth contours:(meta_funnelplot##contourspec:contourspec)}
[{help meta_funnelplot##optstbl:{it:选项}}]


{marker optstbl}{...}
{synoptset 22 tabbed}{...}
{synopthdr}
{synoptline}
{syntab:模型}
{synopt :{cmd:random}[{cmd:(}{help meta_funnelplot##remethod:{it:remethod}}{cmd:)}]}随机效应Meta分析{p_end}
{synopt :{cmd:common}[{cmd:(}{help meta_funnelplot##cefemethod:{it:cefemethod}}{cmd:)}]}公共效应Meta分析{p_end}
{synopt :{cmd:fixed}[{cmd:(}{help meta_funnelplot##cefemethod:{it:cefemethod}}{cmd:)}]}固定效应Meta分析{p_end}

{syntab:选项}
{synopt :{help by_option_zh:by({it:varlist}, ...)}}为{it:varlist}定义的每个组构建单独的图{p_end}
{synopt :{opth metric:(meta_funnelplot##metric:metric)}}指定y轴度量；默认为{cmd:metric(se)}{p_end}
{synopt :{opt n(#)}}在{it:#}个点上评估CI线或显著性等高线；默认为{cmd:n(300)}{p_end}
{synopt :[{cmd:no}]{opt metashow}}在输出中显示或抑制Meta设置{p_end}
{synopt :{help meta_funnelplot##graphopts:{it:图形选项}}}影响总体漏斗图的呈现{p_end}
{synoptline}

{synoptset 22}{...}
包含 help meta_remethod

包含 help meta_cefemethod

{marker graphopts}{...}
{synoptset 22 tabbed}{...}
{synopthdr:图形选项}
{synoptline}
{syntab:效应大小线}
{synopt :{opth esop:ts(line_options)}}影响估计效应大小线的呈现{p_end}

{syntab:CI图}
{p2coldent:∗ {opth ciop:ts(meta_funnelplot##ciopts:ciopts)}}影响置信区间的呈现{p_end}

{syntab:添加图形}
{synopt :{opth addplot:(addplot_option:plot)}}向漏斗图添加其他图{p_end}

{syntab:Y轴, X轴, 标题, 图例, 总体}
{synopt :{it:twoway_options}}任何在 {manhelp twoway_options G-3:twoway_options}中记录的选项{p_end}
{synoptline}
{p 4 6 2}
∗ {opt ciopts(ciopts)} 不适用于等高线增强的漏斗图。


包含 help menu_meta


{marker description}{...}
{title:描述}

{pstd}
{cmd:meta funnelplot} 生成漏斗图，通常用于探索与出版偏倚相关的小样本效应 {help meta_glossary##small_study_effects:小样本效应} 的存在。漏斗图是散点图，其中x轴表示特定研究的效应量，y轴表示研究精度的度量，如标准误和逆标准误。在没有小样本效应的情况下，图形应看起来是对称的。 {cmd:meta funnelplot} 还可以绘制等高线增强的漏斗图，这对于调查图形不对称是否可以归因于出版偏倚非常有用。


{marker linkspdf}{...}
{title:PDF文档链接}

        {mansection META metafunnelplotQuickstart:快速开始}

        {mansection META metafunnelplotRemarksandexamples:备注和示例}

        {mansection META metafunnelplotMethodsandformulas:方法与公式}

{pstd}
以上部分不包含在此帮助文件中。


{marker options}{...}
{title:选项}

{dlgtab:主要}

{marker contourspec}{...}
{phang}
{opt contours(contourspec)} 指定绘制等高线增强的漏斗图，而不是默认的标准漏斗图；见 {bf:[META] meta funnelplot} 中的 {mansection META metafunnelplotRemarksandexamplesContour-enhancedfunnelplots:{it:等高线增强的漏斗图}}。该选项不能与选项 {cmd:ciopts()} 和 {cmd:level()} 结合使用。

{pmore}
{it:contourspec} 为 {it:{help numlist_zh}}[{cmd:,} {cmd:lower} {cmd:upper} {cmd:lines} {help meta_funnelplot##cgraphopts:{it:图形选项}}]。
{it:numlist} 指定显著性水平（以百分比表示），最多可包含8个介于1和50之间的整数值。

{phang3}
{cmd:lower} 和 {cmd:upper} 指定显著性等高线基于单侧下尾或上尾z检验的个别效应大小。换句话说，特定等高线c的阴影区域内的研究在按照单侧下尾或上尾z检验计算的α = c/100的基础上被认为具有统计显著性。默认情况下，等高线对应于双侧z检验。

{phang3}
{cmd:lines} 指定仅绘制等高线。即，阴影区域不会显示。

{marker cgraphopts}{...}
{phang3}
{it:图形选项} 是除 {cmd:recast()} 外，在 {manhelpi area_options G-3} 中记录的任何选项，或者如果指定选项 {cmd:lines}，则是在 {manhelpi line_options G-3} 中记录的任何选项。

{dlgtab:模型}

{pstd}
选项 {cmd:random()}, {cmd:common()}, 和 {cmd:fixed()} 指定在估计总体效应大小时使用的Meta分析模型。出于历史原因，默认是 {cmd:common(invvariance)}，无论 {helpb meta set} 或 {helpb meta esize} 声明的全局模型如何。指定其中一个选项与 {cmd:meta funnelplot} 一起使用，可以覆盖此默认设置。选项 {cmd:random()}, {cmd:common()}, 和 {cmd:fixed()} 不能结合使用。另请参见 {bf:[META] Intro} 中的 {mansection META IntroRemarksandexamplesMeta-analysismodels:{it:Meta分析模型}}。

{phang}
{cmd:random} 和 {opt random(remethod)} 指定假设随机效应模型用于Meta分析；见 {bf:[META] Intro} 中的 {mansection META IntroRemarksandexamplesRandom-effectsmodel:{it:随机效应模型}}。

{marker remethoddes}{...}
{phang2}
{it:remethod} 指定用于研究间方差 τ^2 的估计量类型。 {it:remethod} 是 {cmd:reml}, {cmd:mle}, {cmd:ebayes}, {cmd:dlaird}, {cmd:sjonkman}, {cmd:hedges}, 或 {cmd:hschmidt} 之一。 {cmd:random} 是 {cmd:random(reml)} 的同义词。有关更多信息，请参见 {help meta_esize##options:{it:选项}} 中的 {help meta_esize_zh:[META] meta esize}。

{phang}
{cmd:common} 和 {opth common:(meta_summarize##ccefemethoddes:cefemethod)} 指定假设使用公共效应模型进行Meta分析；见 {bf:[META] Intro} 中的 {mansection META IntroRemarksandexamplesCommon-effect(fixed-effect)model:{it:公共效应（固定效应）模型}}。另请参见 {bf:[META] meta data} 中的 {mansection META metadataRemarksandexamplesfixedvscommon:关于公共效应与固定效应模型的讨论}。

{pmore}
{cmd:common} 意味着对效应 sizes {cmd:lnoratio}, {cmd:lnrratio}, 和 {cmd:rdiff} 使用 {cmd:common(mhaenszel)}，而对所有其他效应 sizes 使用 {cmd:common(invvariance)}。 {cmd:common(mhaenszel)} 仅支持效应 sizes {cmd:lnoratio}, {cmd:lnrratio}, 和 {cmd:rdiff}。

{marker ccefemethoddes}{...}
{phang2}
{it:cefemethod} 是 {cmd:mhaenszel} 或 {cmd:invvariance}（同义词 {cmd:ivariance}）之一。有关更多信息，请参见 {help meta_summarize##options:{it:选项}} 中的 {help meta_esize_zh:[META] meta esize}。

{phang}
{cmd:fixed} 和 {opth fixed:(meta_summarize##fcefemethoddes:cefemethod)} 指定假设使用固定效应模型进行Meta分析；见 {bf:[META] Intro} 中的 {mansection META IntroRemarksandexamplesFixed-effectsmodel:{it:固定效应模型}}。另请参见 {bf:[META] meta data} 中的 {mansection META metadataRemarksandexamplesfixedvscommon:关于公共效应与固定效应模型的讨论}。

{pmore}
{cmd:fixed} 意味着对效应 sizes {cmd:lnoratio}, {cmd:lnrratio}, 和 {cmd:rdiff} 使用 {cmd:fixed(mhaenszel)}，而对所有其他效应 sizes 使用 {cmd:fixed(invvariance)}。 {cmd:fixed(mhaenszel)} 仅支持效应 sizes {cmd:lnoratio}, {cmd:lnrratio}, 和 {cmd:rdiff}。

{marker fcefemethoddes}{...}
{phang2}
{it:cefemethod} 是 {cmd:mhaenszel} 或 {cmd:invvariance}（同义词 {cmd:ivariance}）之一。有关更多信息，请参见 {help meta_summarize##options:{it:选项}} 中的 {help meta_esize_zh:[META] meta esize}。

{dlgtab:选项}

{phang}
{cmd:by(}{varlist}[{cmd:,} {it:byopts}]{cmd:)} 指定为 {it:varlist} 定义的每个组生成单独的图。 {it:byopts} 是在 {manhelpi by_option G-3} 中记录的任何选项。 {cmd:by()} 对于探索由于一组分类变量引起的研究间异质性中的出版偏倚是有用的。这些变量必须在 {cmd:by()} 选项中指定。

{marker metric}{...}
{phang}
{opt metric(metric)} 指定y轴上的精度度量。 {it:metric} 是 {cmd:se}, {cmd:invse}, {cmd:var}, {cmd:invvar}, {cmd:n}, 或 {cmd:invn} 之一。当度量为 {cmd:n} 或 {cmd:invn} 时，不绘制CIs或显著性等高线。默认值为 {cmd:metric(se)}。

{phang2}
{cmd:se} 指定使用标准误 σ_j 作为精度度量。

{phang2}
{cmd:invse} 指定使用标准误的倒数 1/σ_j 作为精度度量。

{phang2}
{cmd:var} 指定使用方差 σ^2_j 作为精度度量。

{phang2}
{cmd:invvar} 指定使用方差的倒数 1/σ^2_j 作为精度度量。

{phang2}
{cmd:n} 指定使用样本量 n_j 作为精度度量。

{phang2}
{cmd:invn} 指定使用样本量的倒数 1/n_j 作为精度度量。

{phang}
{opt level(#)} 指定置信区间的置信水平，以百分比表示。默认值为Meta分析会话中声明的置信水平；见 {bf:[META] meta data} 中的 {mansection META metadataRemarksandexamplesDeclaringaconfidencelevelformeta-analysis:{it:为Meta分析声明置信水平}}。另请参见选项 {helpb meta_set##level:level()} 中的 {help meta_set_zh:[META] meta set}。该选项不能与选项 {cmd:contours()} 结合使用。

{phang}
{opt n(#)} 指定评估CIs或如果指定了选项 {cmd:contours()} 的显著性等高线的点数。默认为 {cmd:n(300)}。

{phang}
{opt metashow} 和 {opt nometashow} 显示或抑制Meta设置信息。默认情况下，此信息在输出顶部显示。您还可以和 {helpb meta update} 一起指定 {cmd:nometashow}，以抑制整个Meta分析会话的Meta设置输出。

{dlgtab:效应大小线}

{phang}
{opt esopts(line_options)} 影响绘制估计总体效应大小的线的呈现；见 {manhelpi line_options G-3}。

{dlgtab:CI图}

{marker ciopts}{...}
{phang}
{opt ciopts(ciopts)} 影响漏斗图中的（伪）CI线的呈现。 {it:ciopts} 是在 {manhelpi line_options G-3} 中记录的任何选项，以及在 {manhelpi advanced_options G-3} 中描述的选项 {cmd:recast(rarea)}。该选项不能与选项 {cmd:contours()} 结合使用。

{dlgtab:添加图形}

{phang}
{opt addplot(plot)} 允许将更多 {cmd:graph twoway} 图添加到图形中；见 {manhelpi addplot_option G-3}。

{dlgtab:Y轴, X轴, 标题, 图例, 总体}

{phang}
{it:twoway_options} 是在 {manhelpi twoway_options G-3} 中记录的任何选项。这些包括为图形命名的选项（见 {manhelpi title_options G-3}）和将图形保存到磁盘的选项（见 {manhelpi saving_option G-3}）。


{marker examples}{...}
{title:示例}

    {hline}
{pstd}设置{p_end}
{phang2}{cmd:. webuse nsaidsset}{p_end}

{pstd}构建漏斗图{p_end}
{phang2}{cmd:. meta funnelplot}

{pstd}如上，但指定逆标准误作为y轴上的精度度量{p_end}
{phang2}{cmd:. meta funnelplot, metric(invse)}

{pstd}指定1%、5%和10%的显著性等高线以生成一个等高线增强的漏斗图{p_end}
{phang2}{cmd:. meta funnelplot, contours(1 5 10)}

{pstd}如上，但将显著性等高线基于单侧下尾z检验{p_end}
{phang2}{cmd:. meta funnelplot, contours(1 5 10, lower)}

    {hline}
{pstd}设置{p_end}
{phang2}{cmd:. webuse pupiliqset, clear}

{pstd}为变量 {cmd:week1} 的每个组构建单独的漏斗图{p_end}
{phang2}{cmd:. meta funnelplot, by(week1)}

    {hline}


{marker results}{...}
{title:存储结果}

{pstd}
{cmd:meta funnelplot} 在 {cmd:r()} 中存储以下内容：

{synoptset 20 tabbed}{...}
{p2col 5 20 24 2: 标量}{p_end}
{synopt:{cmd:r(theta)}}估计的总体效应大小{p_end}
{synopt:{cmd:r(xmin)}}散点的最小横坐标{p_end}
{synopt:{cmd:r(xmax)}}散点的最大横坐标{p_end}
{synopt:{cmd:r(ymin)}}散点的最小纵坐标{p_end}
{synopt:{cmd:r(ymax)}}散点的最大纵坐标{p_end}

{p2col 5 20 24 2: 宏}{p_end}
{synopt:{cmd:r(model)}}Meta分析模型{p_end}
{synopt:{cmd:r(method)}}Meta分析估计方法{p_end}
{synopt:{cmd:r(metric)}}y轴度量{p_end}
{synopt:{cmd:r(contours)}}等高线的显著性水平{p_end}
{p2colreset}{...}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <meta_funnelplot.sthlp>}