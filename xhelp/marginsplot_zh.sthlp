{smcl}
{* *! version 1.1.4  12jun2019}{...}
{viewerdialog marginsplot "dialog marginsplot"}{...}
{vieweralsosee "[R] marginsplot" "mansection R marginsplot"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[R] margins" "help margins_zh"}{...}
{vieweralsosee "[R] margins, contrast" "help margins_contrast_zh"}{...}
{vieweralsosee "[R] margins, pwcompare" "help margins_pwcompare_zh"}{...}
{vieweralsosee "[R] margins postestimation" "help margins_postestimation_zh"}{...}
{viewerjumpto "Syntax" "marginsplot_zh##syntax"}{...}
{viewerjumpto "Menu" "marginsplot_zh##menu"}{...}
{viewerjumpto "Description" "marginsplot_zh##description"}{...}
{viewerjumpto "Links to PDF documentation" "marginsplot_zh##linkspdf"}{...}
{viewerjumpto "Options" "marginsplot_zh##options"}{...}
{viewerjumpto "Examples" "marginsplot_zh##examples"}{...}
{viewerjumpto "Video examples" "marginsplot_zh##video"}{...}
{viewerjumpto "Addendum: Advanced uses of dimlist" "marginsplot_zh##dimlist2"}
{help marginsplot:English Version}
{hline}{...}
{p2colset 1 20 22 2}{...}
{p2col:{bf:[R] marginsplot} {hline 2}}图形化边际结果 
   （轮廓图等）{p_end}
{p2col:}({mansection R marginsplot:查看完整的 PDF 手册条目}){p_end}
{p2colreset}{...}


{marker syntax}{...}
{title:语法}

{p 8 21 2}{cmd:marginsplot} [{cmd:,} {it:选项}]

{synoptset 37 tabbed}{...}
{synopthdr}
{synoptline}
{syntab:主选项}
{synopt:{cmdab:x:dimension(}{help marginsplot##dimlist:{it:dimlist}} [{cmd:,} {help marginsplot##dimopts:{it:dimopts}}]{cmd:)}}使用
	{it:dimlist} 定义 x 轴{p_end}
{synopt:{cmdab:plot:dimension(}{help marginsplot##dimlist:{it:dimlist}} [{cmd:,} {help marginsplot##dimopts:{it:dimopts}}]{cmd:)}}为 
	{it:dimlist} 中的组创建图形{p_end}
{synopt:{cmdab:by:dimension(}{help marginsplot##dimlist:{it:dimlist}} [{cmd:,} {help marginsplot##dimopts:{it:dimopts}}]{cmd:)}}为 
	{it:dimlist} 中的组创建子图{p_end}
{synopt:{cmdab:gr:aphdimension(}{help marginsplot##dimlist:{it:dimlist}} [{cmd:,} {help marginsplot##dimopts:{it:dimopts}}]{cmd:)}}为 
	{it:dimlist} 中的组创建图形{p_end}
{synopt:{opt horiz:ontal}}交换 
	x 轴和 y 轴{p_end}
{synopt:{opt noci}}不绘制置信区间{p_end}
{synopt:{cmd:name(}{it:name}|{it:stub} [{cmd:, replace}]{cmd:)}}图形的名称，或者在多个图形时使用 stub{p_end}

{syntab:标签}
{synopt:{opt allx:labels}}在 x 轴上为每个值放置
	刻度和标签{p_end}
{synopt:{opt nolab:els}}使用值而非标签标记组{p_end}
{synopt:{opt allsim:plelabels}}所有标签中省略
	变量名和等号{p_end}
{synopt:{opt nosim:plelabels}}所有标签中包含
	变量名和等号{p_end}
{synopt:{opth sep:arator(strings:string)}}多个变量指定维度时 
	标签的分隔符{p_end}
{synopt:{opt nosep:arator}}不使用分隔符{p_end}

{syntab:图形}
{synopt :{cmdab:plotop:ts(}{it:{help marginsplot##plotopts:plot_options}}{cmd:)}}影响 
	所有边际图形的呈现{p_end}
{synopt :{cmdab:plot:}{ul:{it:#}}{cmd:opts(}{it:{help marginsplot##plotopts:plot_options}}{cmd:)}}影响 
        第 {it:#} 个边际图形的呈现{p_end}
{synopt:{opth recast:(twoway:plottype)}}使用 {it:plottype} 绘制 
	边际{p_end}

{syntab:置信区间图}
{synopt :{opth ciop:ts(rcap_options)}}影响 
	所有置信区间图的呈现{p_end}
{synopt :{cmdab:ci:}{ul:{it:#}}{cmd:opts(}{it:{help rcap_options_zh}}{cmd:)}}影响
        第 {it:#} 个置信区间图的呈现{p_end}
{synopt:{opth recastci:(twoway:plottype)}}使用 {it:plottype} 绘制 
	置信区间{p_end}
{synopt:{opth mcomp:are(marginsplot##method:method)}}调整多重比较{p_end}
{synopt:{opt l:evel(#)}}设置置信水平{p_end}

{syntab:成对比较}
{synopt:{opt uniq:ue}}仅绘制唯一的成对比较{p_end}
{synopt:{opt csort}}首先排序比较类别{p_end}

{syntab:添加图形}
{synopt:{opth "addplot(addplot_option:plot)"}}向图形中 
	添加其他图形{p_end}

{syntab:Y 轴、X 轴、标题、图例、整体、按}
{synopt :{it:twoway_options}}任何 
	在 {manhelpi twoway_options G-3} 中记录的选项{p_end}
{synopt :{opth byop:ts(by_option:byopts)}}子图的组合、标签方式等{p_end}
{synoptline}
{marker dimlist}{...}
{phang}
    其中 {it:dimlist} 可以是之前的 {help margins_zh} 命令中计算的任何维度。也就是说，{it:dimlist} 可以是
    在 {cmd:margins} 命令中使用的任何变量，包括在 {cmd:at()}、{cmd:over()} 和
    {cmd:within()} 选项中指定的变量。更高级的 {it:dimlist} 规范在下面的
    {it:{help marginsplot##dimlist2:附录：dimlist 的高级用法}} 中进行了介绍。

{marker dimopts}{...}
{synoptset 26}{...}
{synopthdr:dimopts}
{synoptline}
{synopt:{opt lab:els(lablist)}}为维度的每个级别列出带引号的字符串作为标签{p_end}
{synopt:{opt elab:els(elablist)}}列出
	编号标签{p_end}
{synopt:{opt nolab:els}}使用值而非标签标记组{p_end}
{synopt:{opt allsim:plelabels}}所有标签中省略
	变量名和等号{p_end}
{synopt:{opt nosim:plelabels}}所有标签中包含
	变量名和等号{p_end}
{synopt:{opth sep:arator(strings:string)}}多个变量指定维度时 
	标签的分隔符{p_end}
{synopt:{opt nosep:arator}}不使用分隔符{p_end}
{synoptline}

{pstd}
其中 {it:lablist} 定义为

{p 8 16 2}
{cmd:"}{it:label}{cmd:"} [{cmd:"}{it:label}{cmd:"} [...]]

{pstd}
{it:elablist} 被定义为

{p 8 16 2}
{it:#} {cmd:"}{it:label}{cmd:"} [{it:#} {cmd:"}{it:label}{cmd:"} [...]]

{pstd}
和 {it:#} 是维度级别的索引 -- 1 是第一个级别，2 是第二个级别，以此类推。

{marker plotopts}{...}
{synoptset 25}{...}
{synopthdr:plot_options}
{synoptline}
包括帮助 gr_markopt2
包括帮助 gr_clopt
{synoptline}

{p2colreset}{...}
{marker method}{...}
{synoptset 25}{...}
{synopthdr:method}
{synoptline}
{synopt:{opt noadj:ust}}不调整多重比较{p_end}
{synopt:{opt bon:ferroni} [{opt adjustall}]}Bonferroni 方法；在所有项中进行调整{p_end}
{synopt:{opt sid:ak} [{opt adjustall}]}Sidak 方法；在所有项中进行调整{p_end}
{synopt:{opt sch:effe}}Scheffe 方法{p_end}
{synoptline}
{p2colreset}{...}


{marker menu}{...}
{title:菜单}

{phang}
{bf:统计 > 后期估计}


{marker description}{...}
{title:描述}

{pstd}
{cmd:marginsplot} 图形化上一个 {help margins_zh} 命令的结果。 {cmd:marginsplot} 可以生成的一些图形的常见名称包括轮廓图和交互图。


{marker linkspdf}{...}
{title:链接到 PDF 文档}

        {mansection R marginsplotRemarksandexamples:备注和示例}

{pstd}
上述部分未包括在此帮助文件中。


{marker options}{...}
{title:选项}

{dlgtab:主选项}

{phang}
{opt xdimension()}、{opt plotdimension()}、{opt bydimension()} 和
        {opt graphdimension()} 指定来自前一个
        {cmd:margins} 命令的变量，这些变量的组级别将用于图形的
        x 轴、图形、{cmd:by()} 子图和图形。
	
{pmore}
        {cmd:marginsplot} 根据 
        {cmd:margins} 命令选择默认维度。 在大多数情况下，第一个在 
        {cmd:at()} 选项中出现并在多个值上被评估的变量被用作 x 轴。如果没有 
        满足此条件的 {cmd:at()} 变量，则通常使用 {it:marginlist} 中的第一个变量作为 x 轴，剩余变量决定绘制的线条或标记。成对比较和边际效应（导数）的图形有不同的默认值。在所有情况下，您可以通过使用这些维度选项覆盖默认值并明确控制每个图形的维度所使用的变量。

{pmore}
        每个选项支持 
        {help marginsplot##dimopts:子选项} 控制维度的标签 -- 
        {opt xdimension()} 的轴标签、{opt plotdimension()} 的绘图标签、{opt bydimension()} 的子图标题，以及 {opt graphdimension()} 的图形标题。

{pmore}
	有关使用维度选项的示例，请参见
	{it:{mansection R marginsplotRemarksandexamplesControllingthegraphsdimensions:控制图形的维度}} 在 {bf:[R] marginsplot} 中。

{phang2}
{cmd:xdimension(}{help marginsplot##dimlist:{it:dimlist}} [{cmd:,} {help marginsplot##dimopts:{it:dimopts}}]{cmd:)} 指定
        {it:dimlist} 中 x 轴的变量，并使用 {it:dimopts} 控制标签的内容。

{phang2}
{cmd:plotdimension(}{help marginsplot##dimlist:{it:dimlist}} [{cmd:,} {help marginsplot##dimopts:{it:dimopts}}]{cmd:)} 指定
	in {it:dimlist} 决定图形的变量的组级别，并可选地使用 {it:dimopts} 指定图形标签的内容。

{phang2}
{cmd:bydimension(}{help marginsplot##dimlist:{it:dimlist}} [{cmd:,} {help marginsplot##dimopts:{it:dimopts}}]{cmd:)} 指定
        {it:dimlist} 中决定 {cmd:by()} 子图的变量的组级别，并可选地使用 {it:dimopts} 指定子图标题的内容。有关使用 {cmd:by()} 的示例，请参见 {it:{mansection R marginsplotRemarksandexamplesThree-wayinteractions:三元交互}} 在 {bf:[R] marginsplot} 中。

{phang2}
{cmd:graphdimension(}{help marginsplot##dimlist:{it:dimlist}}
[{cmd:,} {help marginsplot##dimopts:{it:dimopts}}]{cmd:)} 指定 {it:dimlist} 中决定图形的变量的组级别，并可选地使用 {it:dimopts} 指定图形标题的内容。

{phang}
{opt horizontal} 反转默认的 x 轴和 y 轴。默认情况下，y 轴表示边际估计，x 轴表示一个或多个因素或连续协变量。指定 {opt horizontal} 会交换轴，使 x 轴表示边际估计。如果因素或连续协变量的标签较长，此选项可能会很有用。

{pmore}
	有关水平选项的讨论，请参见 {it:{mansection R marginsplotRemarksandexamplesHorizontalissometimesbetter:水平有时更好}} 在 {bf:[R] marginsplot} 中。

{phang}
{opt noci} 移除点置信区间的绘图。 默认情况下，绘制置信区间。

{phang}
{cmd:name(}{it:name}|{it:stub} [{cmd:, replace}]{cmd:)} 指定
        图形或图形的名称。如果指定了 {cmd:graphdimension()} 选项，或者默认行为是生成多个图形，则 {opt name()} 的参数被视为 {it:stub}，并创建名称为 {it:stub}{cmd:1}、{it:stub}{cmd:2} 等的图形。  
	
{pmore}
        {opt replace} 子选项会导致用指定名称或名称的现有图形被替换。

{pmore}
        如果未指定 {cmd:name()}，则使用默认名称，并且图形可能会被后续的 {cmd:marginsplot} 或其他绘图命令替换。

{dlgtab:标签}
	
{pstd}
除了 {opt allxlabels}，所有这些选项可以直接作为选项或作为选项 {opt xdimension()}、{opt plotdimension()}、{opt bydimension()} 和 {opt graphdimension()} 中的 {it:dimopts} 指定。当在一个维度选项中指定时，仅影响该维度的标签。当在维度选项外部指定时，所有维度的所有标签均受到影响。在维度选项中的规格具有优先权。

{phang}
{opt allxlabels} 指定在 x 轴上为每个 x 维度变量的值放置刻度和标签。默认情况下，如果刻度超过 25 个，则应用默认的图形轴标签规则。标签也可以使用标准的 {cmd:graph twoway} x 轴标签 {help axis label options:规则和选项} -- {cmd:xlabel()} 来指定。

{phang}
{opt nolabels} 指定不使用值标签为维度中的组级别构建图形标签和标题。默认情况下，如果维度中的变量具有值标签，则使用这些标签构建轴刻度、绘图、子图和图形的标签和标题。
	
{pmore} 
	对比和成对比较的图形是此规则的例外，始终使用值而非值标签进行标记。

{phang}
{opt allsimplelabels} 和 {opt nosimplelabels}
        控制图形的标签和标题是否仅包含变量的值，或包括变量名和等号。默认情况下，对具有值标签的变量使用值标签，而对没有值标签的变量使用变量名和等号。前者的示例为“女性”，后者为“国家=2”。

{pmore}
        有时值标签是普遍描述性的，而有时只有在与其变量考虑时才有意义。例如，“男性”和“女性”通常是普遍性的，无论它们来自哪个变量。“高”和“低”可能只有在你知道它们与特定测量（例如血压水平）有关时才有意义。{opt allsimplelabels} 和 {opt nosimplelabels} 选项允许您覆盖默认标签。

{phang2}
{opt allsimplelabels}
	specifies that all titles and labels use just the value or value label
	of the variable.

{phang2}
{opt nosimplelabels}
	specifies that all titles and labels include {it:varname}{cmd:=} before
        the value or value label of the variable.

{phang}
{opth separator:(strings:string)} 和 {opt noseparator} 控制当使用多个变量指定维度时标签部分之间的分隔符。默认的分隔符是逗号后跟一个空格，但可以使用 {opt noseparator} 请求不使用分隔符，或者使用 {opt separator()} 将默认值更改为任何字符串。

{pmore} 
        例如，如果指定 {cmd:plotdimension(a b)}，图例中的图形标签可能是“a=1，b=1”、“a=1，b=2”等等。指定 {cmd:separator(:)} 会生成标签“a=1:b=1”、“a=1:b=2”等等。

{dlgtab:图形}

{phang}
{cmd:plotopts(}{it:{help marginsplot##plotopts:plot_options}}{cmd:)}
        影响所有边际图形的呈现。 {it:plot_options} 可以影响标记的大小和颜色、标记的标签方式以及点的连接方式； 
        请参见 {manhelpi marker_options G-3}、 
        {manhelpi marker_label_options G-3} 和 {manhelpi cline_options G-3}。

{pmore} 
        这些设置可以通过使用 {cmd:plot}{it:#}{cmd:opts()} 选项为特定图形覆盖。

{phang}
{cmd:plot}{it:#}{cmd:opts(}{it:{help marginsplot##plotopts:plot_options}}{cmd:)}
        影响第 {it:#} 个边际图形的呈现。 
        {it:plot_options} 可以影响标记的大小和颜色、标记的标签方式和点的连接方式；请参见 {manhelpi marker_options G-3}、 
        {manhelpi marker_label_options G-3} 和 {manhelpi cline_options G-3}。

{phang}
{opt recast(plottype)}
	specifies that margins be plotted using {it:plottype}.  
        {it:plottype} may be {cmd:scatter}, {cmd:line}, {cmd:connected},
        {cmd:bar}, {cmd:area}, {cmd:spike}, {cmd:dropline}, or {cmd:dot}; see
	{manhelp graph_twoway G-2:graph twoway}.  When {cmd:recast()} is
	specified, the plot-rendition options appropriate to the specified
        {it:plottype} may be used in lieu of
	{it:{help marginsplot##plotopts:plot_options}}.  For details on those
        options, follow the appropriate link from
        {manhelp graph_twoway G-2:graph twoway}.

{pmore} 
	For an example using {cmd:recast()}, see
	{it:{mansection R marginsplotRemarksandexamplesContinuouscovariates:连续协变量}} 在 {bf:[R] marginsplot} 中。

{pmore} 
	You may specify {cmd:recast()} within a {cmd:plotopts()} or
        {cmd:plot}{it:#}{cmd:opts()} option.  It is better, however, to
        specify it as documented here, outside those options.  When
        specified outside those options, you have greater access to the
        plot-specific rendition options of your specified {it:plottype}.

{dlgtab:置信区间图}

{phang}
{opt ciopts(rcap_options)} 
        affects the rendition of all confidence interval plots; see 
	{manhelpi rcap_options G-3}.

{pmore} 
        These settings may be overridden for specific confidence interval
        plots with the {cmd:ci}{it:#}{cmd:opts()} option.

{phang}
{cmd:ci}{it:#}{cmd:opts(}{it:rcap_options}{cmd:)} 
        affects the rendition of the {it:#}th confidence interval; see
        {manhelpi rcap_options G-3}.

{phang}
{opt recastci(plottype)}
        specifies that confidence intervals be plotted using {it:plottype}.
        {it:plottype} may be {cmd:rarea}, {cmd:rbar}, {cmd:rspike},
        {cmd:rcap}, {cmd:rcapsym}, {cmd:rline}, {cmd:rconnected}, or
        {cmd:rscatter}; see {manhelp graph_twoway G-2:graph twoway}.  When
        {cmd:recastci()} is
        specified, the plot-rendition options appropriate to the specified
        {it:plottype} may be used in lieu of {it:rcap_options}.  For details
        on those options, follow the appropriate link from 
        {manhelp graph_twoway G-2:graph twoway}.

{pmore} 
	For an example using {cmd:recastci()}, see
	{it:{mansection R marginsplotRemarksandexamplesContinuouscovariates:连续协变量}} 在 {bf:[R] marginsplot} 中。

{pmore} 
	You may specify {cmd:recastci()} within a {cmd:ciopts()} or
        {cmd:ci}{it:#}{cmd:opts()} option.  It is better, however, to
        specify it as documented here, outside those options.  When
        specified outside those options, you have greater access to the
        plot-specific rendition options of your specified {it:plottype}.

{phang}
{opt mcompare(method)}
specifies the method for confidence intervals that account for multiple
comparisons within a factor-variable term.
The default is determined by the {cmd:margins} results stored in {cmd:r()}.
If {cmd:marginsplot} is working from {cmd:margins} results stored in
{cmd:e()}, the default is {cmd:mcompare(noadjust)}.

{phang}
{opt level(#)}
specifies the confidence level, as a percentage, for confidence intervals.
The default is determined by the {cmd:margins} results stored in {cmd:r()}.
If {cmd:marginsplot} is working from {cmd:margins} results stored in
{cmd:e()}, the default is {cmd:level(95)} or as set by {helpb set level}.

{dlgtab:成对比较}

{pstd}
这些选项仅在前面的 {cmd:margins} 命令中指定了 {opt pwcompare} 选项时生效。

{phang}
{opt unique}
	specifies that only unique pairwise comparisons be plotted.  The
	default is to plot all pairwise comparisons, including those that are
	mirror images of each other -- "male" versus "female" and "female"
	versus "male".  {cmd:margins} reports only the unique pairwise
	comparisons.  {cmd:unique} also changes the default {cmd:xdimension()}
	for graphs of pairwise comparisons from the reference categories
        ({cmd:_pw0}) to the comparisons of each pairwise category ({cmd:_pw}).

{pmore}
	Unique comparisons are often preferred with horizontal graphs that put
	all pairwise comparisons on the x axis, whereas including the full
	matrix of comparisons is preferred for charts showing the reference
	groups on an axis and the comparison groups as plots; see 
	{it:{mansection R marginsplotRemarksandexamplesPairwisecomparisons:成对比较}} 和
	{it:{mansection R marginsplotRemarksandexamplesHorizontalissometimesbetter:水平有时更好}} 在 {bf:[R] marginsplot} 中。

{phang}
{opt csort}
	specifies that comparison categories are sorted first, and then
	reference categories are sorted within comparison category.  The
	default is to sort reference categories first, and then sort comparison
	categories within reference categories.  This option has an observable
	effect only when {cmd:_pw} is also specified in one of the dimension
	options.  It then determines the order of the labeling in the dimension
        where {cmd:_pw} is specified.

{dlgtab:添加图形}

{phang}
{opt addplot(plot)} 
        提供了一种向生成的图形添加其他图形的方法；见 {manhelpi addplot_option G-3}。  

{pmore} 
	例如使用 {cmd:addplot()} 的示例，请参见 {it:{mansection R marginsplotRemarksandexamplesAddingscatterplotsofthedata:添加数据散点图}} 在 {bf:[R] marginsplot} 中。
	
{pmore}
        如果通过单个 {cmd:marginsplot} 命令绘制多个图形，或者如果 {it:plot} 指定多个 y 变量的图形，例如 {cmd:scatter y1 y2 x}，那么图例将无法清楚标识所有图形，并需要使用 {opt legend()} 选项进行自定义；见 {manhelpi legend_options G-3}。

{dlgtab:Y 轴、X 轴、标题、图例、整体、按}

{phang}
{it:twoway_options} 
        是在 {manhelpi twoway_options G-3} 中记录的任何选项。这些包括图形标题的选项（见 {manhelpi title_options G-3}）；将图形保存到磁盘的选项（见 {manhelpi saving_option G-3}）；控制轴的标签和外观的选项（见 {manhelpi axis_options G-3}）；控制图例的外观、内容、位置和组织的选项（见 {manhelpi legend_options G-3}）；添加线条的选项（见 {manhelpi added_line_options G-3}）和文本的选项（见 {manhelpi added_text_options G-3}）；以及控制图形外观的其他方面（见 {manhelpi twoway_options G-3}）。

{pmore}
        {cmd:label()} 子选项对 {cmd:marginsplot} 没有影响。请使用 {cmd:order()} 子选项。

{phang}
{opt byopts(byopts)} 
        影响当指定 {cmd:bydimension()} 时组合图形的外观或当默认图形具有子图时，包括总体图形标题、图例位置和子图的组织。见 {manhelpi by_option G-3}。


{marker examples}{...}
{title:示例}

{pstd}
这些示例旨在提供快速参考。有关 {cmd:marginsplot} 的概念概述和带讨论的示例，请参见 {it:{mansection R marginsplotRemarksandexamples:备注和示例}} 在 {bf:[R] marginsplot} 中。

{pstd}设置{p_end}
{phang2}{cmd:. webuse nhanes2}

{pstd}边际的轮廓图{p_end}
{phang2}{cmd:. regress bpsystol agegrp##sex}{p_end}
{phang2}{cmd:. margins agegrp}{p_end}
{phang2}{cmd:. marginsplot}{p_end}

{pstd}交互图{p_end}
{phang2}{cmd:. margins agegrp#sex}{p_end}
{phang2}{cmd:. marginsplot}{p_end}

{pstd}边际的对比 -- 效应（离散边际效应）{p_end}
{phang2}{cmd:. margins r.sex@agegrp}{p_end}
{phang2}{cmd:. marginsplot}{p_end}

{pstd}同样使用 dydx(){p_end}
{phang2}{cmd:. margins agegrp, dydx(sex)}{p_end}
{phang2}{cmd:. marginsplot}{p_end}

{pstd}在连续协变量的指定值下绘图{p_end}
{phang2}{cmd:. logistic highbp sex##agegrp##c.bmi}{p_end}
{phang2}{cmd:. margins sex, at(bmi=(10(5)65))}{p_end}
{phang2}{cmd:. marginsplot}{p_end}

{pstd}改变图形类型{p_end}
{phang2}{cmd:. marginsplot, recast(line) recastci(rarea)}{p_end}

{pstd}控制维度{p_end}
{phang2}{cmd:. regress bpsystol agegrp##sex##c.bmi}{p_end}
{phang2}{cmd:. margins agegrp, over(sex) at(bmi=(10(10)60))}{p_end}
{phang2}{cmd:. marginsplot}{p_end}
{phang2}{cmd:. marginsplot, xdimension(agegrp)}{p_end}
{phang2}{cmd:. marginsplot, xdimension(agegrp) bydimension(sex)}{p_end}
{phang2}{cmd:. marginsplot, xdimension(agegrp) bydimension(bmi) xlabel(, angle(45))}{p_end}

{pstd}连续协变量的边际效应{p_end}
{phang2}{cmd:. logistic highbp sex##agegrp##c.bmi}{p_end}
{phang2}{cmd:. margins agegrp, dydx(bmi)}{p_end}
{phang2}{cmd:. marginsplot}{p_end}

{phang2}{cmd:. margins agegrp#sex, dydx(bmi)}{p_end}
{phang2}{cmd:. marginsplot}{p_end}


{marker video}{...}
{title:视频示例}

{phang}
{browse "https://www.youtube.com/watch?v=7iSa_gboh9I":边际的轮廓图和交互图，第 1 部分：单个分类变量}

{phang}
{browse "http://www.youtube.com/watch?v=O4QbEaHRGT8":边际的轮廓图和交互图，第 2 部分：单个连续变量}

{phang}
{browse "http://www.youtube.com/watch?v=7M3vJrLq1t0":边际的轮廓图和交互图，第 3 部分：分类变量之间的交互}

{phang}
{browse "http://www.youtube.com/watch?v=iHfTJIdhwWs":边际的轮廓图和交互图，第 4 部分：连续变量和分类变量之间的交互}

{phang}
{browse "http://www.youtube.com/watch?v=QFROtui_OyM":边际的轮廓图和交互图，第 5 部分：两个连续变量之间的交互}


{marker dimlist2}{...}
{title:附录：{it:dimlist} 的高级用法}

{pstd}
{it:dimlist} 指定来自上一个 {cmd:margins} 命令的维度，这些维度将用于 {cmd:marginsplot} 的
{it:x} 轴、图形、子图和图形。
{it:dimlist} 可以包含：

{synoptset 15}{...}
{synopthdr:dim}
{synoptline}
{synopt:{it:varname}}任何在前面的 {cmd:margins} 命令中引用的变量{p_end}

{synopt:{cmd:_equation}}如果分析的估计命令是多元的，并且 {cmd:margins} 自动生成了多个因变量方程的估计，则 {it:dimlist} 可以包含 {cmd:_equation} 来枚举这些方程。

{synopt:{cmd:_outcome}}如果分析的估计命令是序数的，并且 {cmd:margins} 自动生成了多个结果级别的估计，则 {it:dimlist} 可以包含 {cmd:_outcome} 来枚举这些结果。

{synopt:{cmd:_predict}}如果前面的 {cmd:margins} 命令包含多个 {cmd:predict()} 选项，则 {it:dimlist} 可以包含 {cmd:_predict} 来枚举这些 {cmd:predict()} 选项。

{synopt:{cmd:at(}{it:varname}{cmd:)}}如果在 {cmd:margins} 的 {it:marginlist} 或 {cmd:over()} 选项中指定了变量，并且在 {cmd:at()} 选项中也指定了该变量，则可以通过在 {it:dimlist} 中将 {at()} 变量输入为 {cmd:at(}{it:varname}{cmd:)} 来区分这两种用法。{p_end}

{synopt:{cmd:_deriv}}如果前面的 {cmd:margins} 命令包含 {cmd:dydx()}、{cmd:eyex()}、{cmd:dyex()} 或 {cmd:eydx()} 选项，则 {it:dimlist} 也可以包含 {cmd:_deriv} 来指定所有对其进行导数计算的变量。{p_end}

{synopt:{cmd:_term}}如果前面的 {cmd:margins} 命令包含多个项，例如， {cmd:margins} {cmd:a} {cmd:b}；则 {it:dimlist} 可以包含 {cmd:_term} 来枚举这些项。

{synopt:{cmd:_atopt}}如果前面的 {cmd:margins} 命令包含多个 {cmd:at()} 选项，则 {it:dimlist} 可以包含 {cmd:_atopt} 来枚举这些 {cmd:at()} 选项。

{pstd}
当在 {cmd:margins} 上指定 {cmd:pairwise} 选项时，可以指定维度来枚举成对比较。{p_end}

{synopt:{cmd:_pw}}枚举 
	所有的成对比较{p_end}
{synopt:{cmd:_pw0}}枚举 
	比较的参考类别{p_end}
{synopt:{cmd:_pw1}}枚举 
	比较的比较类别{p_end}
{synoptline}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <marginsplot.sthlp>}