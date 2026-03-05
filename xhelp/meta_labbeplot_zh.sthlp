{smcl}
{* *! version 1.0.0  19jun2019}{...}
{viewerdialog "meta" "dialog meta"}{...}
{vieweralsosee "[META] meta labbeplot" "mansection META metalabbeplot"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[META] meta data" "mansection META metadata"}{...}
{vieweralsosee "[META] meta esize" "help meta esize"}{...}
{vieweralsosee "[META] meta regress" "help meta regress"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[META] meta" "help meta_zh"}{...}
{vieweralsosee "[META] Glossary" "help meta glossary"}{...}
{vieweralsosee "[META] Intro" "mansection META Intro"}{...}
{viewerjumpto "Syntax" "meta_labbeplot_zh##syntax"}{...}
{viewerjumpto "Menu" "meta_labbeplot_zh##menu"}{...}
{viewerjumpto "Description" "meta_labbeplot_zh##description"}{...}
{viewerjumpto "Links to PDF documentation" "meta_labbeplot_zh##linkspdf"}{...}
{viewerjumpto "Options" "meta_labbeplot_zh##options"}{...}
{viewerjumpto "Examples" "meta_labbeplot_zh##examples"}{...}
{viewerjumpto "Stored results" "meta_labbeplot_zh##results"}
{help meta_labbeplot:English Version}
{hline}{...}
{p2colset 1 26 28 2}{...}
{p2col:{bf:[META] meta labbeplot} {hline 2}}L'Abb{c e'} 图{p_end}
{p2col:}({mansection META metalabbeplot:查看完整的 PDF 手册条目}){p_end}
{p2colreset}{...}


{marker syntax}{...}
{title:语法}

{p 8 16 2}
{cmd:meta} {cmdab:labbe:plot}
{ifin} [{cmd:,} {it:选项}]

{marker optstbl}{...}
{synoptset 22 tabbed}{...}
{synopthdr}
{synoptline}
{syntab:主要}
{synopt :{cmd:random}[{cmd:(}{help meta_labbeplot##remethod:{it:重估方法}}{cmd:)}]}随机效应元分析{p_end}
{synopt :{cmd:common}[{cmd:(}{help meta_labbeplot##cefemethod:{it:共效应方法}}{cmd:)}]}共效应元分析{p_end}
{synopt :{cmd:fixed}[{cmd:(}{help meta_labbeplot##cefemethod:{it:共效应方法}}{cmd:)}]}固定效应元分析{p_end}
{synopt :{opt reweight:ed}}让气泡大小依赖于随机效应权重{p_end}
{synopt :[{cmd:no}]{cmd:metashow}}在输出中显示或抑制元设置{p_end}
{synopt :{help meta_labbeplot##graphopts:{it:图形选项}}}影响整体 L'Abb{c e'} 图的呈现{p_end}
{synoptline}

{synoptset 22}{...}
包含 help meta_remethod

包含 help meta_cefemethod

{marker graphopts}{...}
{synoptset 22 tabbed}{...}
{synopthdr:图形选项}
{synoptline}
{syntab:RL 选项}
{synopt :{opth rlop:ts(线选项)}}影响绘制的参考线的呈现，该线指示干预或治疗无效{p_end}

{syntab:ES 选项}
{synopt :{opth esop:ts(线选项)}}影响绘制的估计效应大小线的呈现{p_end}

{syntab:添加图形}
{synopt :{opth addplot:(addplot_option:图形)}}将其他图形添加到轮廓图中{p_end}

{syntab:Y 轴, X 轴, 标题, 图例, 整体}
{synopt :{it:twoway_options}}在 {manhelp twoway_options G-3:twoway_options} 中记录的任何选项，除了 {cmd:by()} 外{p_end}
{synoptline}


包含 help menu_meta


{marker description}{...}
{title:描述}

{pstd}
{cmd:meta labbeplot} 生成 L'Abb{c e'} 图，用于比较两组的二元结果的元分析。这些图有助于评估异质性并比较两组中特定研究的事件发生率。


{marker linkspdf}{...}
{title:PDF 文档链接}

        {mansection META metalabbeplotQuickstart:快速入门}

        {mansection META metalabbeplotRemarksandexamples:备注和示例}

        {mansection META metalabbeplotMethodsandformulas:方法与公式}

{pstd}
上述部分不包含在此帮助文件中。


{marker options}{...}
{title:选项}

{dlgtab:主要}

{pstd}
选项 {cmd:random()}、{cmd:common()} 和 {cmd:fixed()} 指定在估计整体效应大小时使用的元分析模型。出于历史原因，默认为 {cmd:common(invvariance)}，无论 {helpb meta esize} 声明的全局模型是什么。请在 {cmd:meta labbeplot} 中指定这些选项之一以覆盖此默认值。 选项 {cmd:random()}、{cmd:common()} 和 {cmd:fixed()} 不能组合使用。另见 {mansection META IntroRemarksandexamplesMeta-analysismodels:{it:元分析模型}} 在 {bf:[META] Intro} 中。

{phang}
{cmd:random} 和 {opt random(remethod)} 指定假定用于元分析的随机效应模型；请参见 {mansection META IntroRemarksandexamplesRandom-effectsmodel:{it:随机效应模型}} 在 {bf:[META] Intro} 中。

{marker remethoddes}{...}
{phang2}
{it:remethod} 指定估计研究间方差 τ^2 的类型。 {it:remethod} 可以是 {cmd:reml}、{cmd:mle}、{cmd:ebayes}、{cmd:dlaird}、{cmd:sjonkman}、{cmd:hedges} 或 {cmd:hschmidt}。{cmd:random} 是 {cmd:random(reml)} 的同义词。 请参见 {help meta_esize##options:{it:选项}} 在 {help meta_esize_zh:[META] meta esize} 中了解更多信息。

{phang}
{cmd:common} 和 {opth common:(meta_summarize##ccefemethoddes:共效应方法)} 指定假定用于元分析的共效应模型；请参见 {mansection META IntroRemarksandexamplesCommon-effect(fixed-effect)model:{it:共效应（固定效应）模型}} 在 {bf:[META] Intro} 中。 另见 {mansection META metadataRemarksandexamplesfixedvscommon:讨论} 在 {bf:[META] meta data} 中，关于共效应与固定效应模型的比较。

{pmore}
{cmd:common} 意味着 {cmd:common(mhaenszel)}。

{marker ccefemethoddes}{...}
{phang2}
{it:cefemethod} 是 {cmd:mhaenszel} 或 {cmd:invvariance}（同义词 {cmd:ivariance}）之一。请参见 {help meta_summarize##options:{it:选项}} 在 {help meta_esize_zh:[META] meta esize} 中了解更多信息。

{phang}
{cmd:fixed} 和 {opth fixed:(meta_summarize##fcefemethoddes:共效应方法)} 指定假定用于元分析的固定效应模型；请参见 {mansection META IntroRemarksandexamplesFixed-effectsmodel:{it:固定效应模型}} 在 {bf:[META] Intro} 中。另见 {mansection META metadataRemarksandexamplesfixedvscommon:讨论} 在 {bf:[META] meta data} 中，关于共效应与固定效应模型的比较。

{pmore}
{cmd:fixed} 意味着 {cmd:fixed(mhaenszel)}。

{marker fcefemethoddes}{...}
{phang2}
{it:cefemethod} 是 {cmd:mhaenszel} 或 {cmd:invvariance}（同义词 {cmd:ivariance}）之一。 请参见 {help meta_summarize##options:{it:选项}} 在 {help meta_esize_zh:[META] meta esize} 中了解更多信息。

{phang}
{cmd:reweighted} 与随机效应元分析一起使用。它指定气泡的大小与随机效应元分析中的权重成比例，w^*_j = 1/(σ^2_j + τ^2)。默认情况下，气泡的大小与每个研究的精度成比例，w_j = 1/σ^2_j。

{phang}
{cmd:metashow} 和 {cmd:nometashow} 显示或抑制元设置信息。默认情况下，此信息在输出的顶部显示。您还可以在 {helpb meta update} 中指定 {cmd:nometashow} 以抑制整个元分析会话的元设置输出。

{dlgtab:RL 选项}
 
{phang}
{opt rlopts(线选项)} 影响绘制的参考（对角线）线的呈现，该线表示干预或治疗没有效果；请参见 {manhelpi line_options G-3}。

{dlgtab:ES 选项}
 
{phang}
{opt esopts(线选项)} 影响绘制的估计整体效应大小的虚线的呈现；请参见 {manhelpi line_options G-3}。
 
{dlgtab:添加图形}
 
{phang} {opt addplot(图形)} 允许将更多的图形 twoway 图添加到该图形中；请参见 {manhelpi addplot_option G-3}。

{dlgtab:Y 轴, X 轴, 标题, 图例, 整体}
 
{phang}
{it:twoway_options} 是记录在 {manhelpi twoway_options G-3} 中的任何选项，不包括 {cmd:by()}。这些选项包括标题图形的选项（参见 {manhelpi title_options G-3}）和将图形保存到磁盘的选项（参见 {manhelpi saving_option G-3}）。


{marker examples}{...}
{title:示例}

{pstd}设置{p_end}
{phang2}{cmd:. webuse bcgset}{p_end}

{pstd}构建 L'Abb{c e'} 图{p_end}
{phang2}{cmd:. meta labbeplot}

{pstd}与上面相同，但指定研究标记的大小与 REML 随机效应模型的权重成比例，而不是默认的共效应模型{p_end}
{phang2}{cmd:. meta labbeplot, random(reml) reweighted}


{marker results}{...}
{title:存储结果}

{pstd}
{cmd:meta labbeplot} 在 {cmd:r()} 中存储以下内容：

{synoptset 20 tabbed}{...}
{p2col 5 20 24 2: 标量}{p_end}
{synopt:{cmd:r(theta)}}估计的整体效应大小{p_end}
{synopt:{cmd:r(xmin)}}对照组的最小值（x 轴）{p_end}
{synopt:{cmd:r(xmax)}}对照组的最大值{p_end}
{synopt:{cmd:r(ymin)}}治疗组的最小值（y 轴）{p_end}
{synopt:{cmd:r(ymax)}}治疗组的最大值{p_end}

{p2col 5 20 24 2: 宏}{p_end}
{synopt:{cmd:r(model)}}元分析模型{p_end}
{synopt:{cmd:r(method)}}元分析估计方法{p_end}
{p2colreset}{...}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <meta_labbeplot.sthlp>}