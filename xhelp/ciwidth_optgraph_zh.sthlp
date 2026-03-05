{smcl}
{* *! version 1.0.1  21mar2019}{...}
{viewerdialog ciwidth "dialog ciwidth_graph"}{...}
{vieweralsosee "[PSS-3] ciwidth, graph" "mansection PSS-3 ciwidth,graph"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[PSS-3] ciwidth" "help ciwidth_zh"}{...}
{vieweralsosee "[PSS-3] ciwidth, table" "help ciwidth_opttable_zh"}{...}
{viewerjumpto "语法" "ciwidth_optgraph_zh##syntax"}{...}
{viewerjumpto "菜单" "ciwidth_optgraph_zh##menu"}{...}
{viewerjumpto "描述" "ciwidth_optgraph_zh##description"}{...}
{viewerjumpto "PDF文档链接" "ciwidth_optgraph_zh##linkspdf"}{...}
{viewerjumpto "子选项" "ciwidth_optgraph_zh##suboptions"}{...}
{viewerjumpto "示例" "ciwidth_optgraph_zh##examples"}
{help ciwidth_optgraph:English Version}
{hline}{...}
{p2colset 1 27 29 2}{...}
{p2col:{bf:[PSS-3] ciwidth, graph} {hline 2}}绘制 ciwidth 命令的图形结果{p_end}
{p2col:}({mansection PSS-3 ciwidth,graph:查看完整的 PDF 手册条目}){p_end}
{p2colreset}{...}


{marker syntax}{...}
{title:语法}

{phang}
生成默认图形 

{p 8 16 2}
{opt ciwidth} ... {cmd:, graph} ...
  

{phang}
将样本量与 CI 宽度进行绘图

{p 8 16 2}
{opt ciwidth} ... {cmd:, graph(y(N) x(width))} ...


{phang}
将样本量与 CI 宽度概率进行绘图

{p 8 16 2}
{opt ciwidth} ... {cmd:, graph(y(N) x(Pr_width))} ...


{phang}
将 CI 宽度与样本量进行绘图

{p 8 16 2}
{opt ciwidth} ... {cmd:, graph(y(width) x(N))} ...


{phang}
将 CI 宽度概率与样本量进行绘图

{p 8 16 2}
{opt ciwidth} ... {cmd:, graph(y(Pr_width) x(N))} ...


{phang}
生成其他自定义图形

{p 8 16 2}
{opt ciwidth} ... {cmd:,} {opt graph(graphopts)} ...


{marker graphopts}{...}
{synoptset 37 tabbed}{...}
{synopthdr:graphopts}
{synoptline}
{syntab:主选项}
{synopt:{cmdab:y:dimension(}{help ciwidth_optgraph##dimlist:{it:dimlist}} [{cmd:,} {help ciwidth_optgraph##dimopts:{it:dimopts}}]{cmd:)}}使用
	{it:dimlist} 定义 y 轴{p_end}
{synopt:{cmdab:x:dimension(}{help ciwidth_optgraph##dimlist:{it:dimlist}} [{cmd:,} {help ciwidth_optgraph##dimopts:{it:dimopts}}]{cmd:)}}使用
	{it:dimlist} 定义 x 轴{p_end}
{synopt:{cmdab:plot:dimension(}{help ciwidth_optgraph##dimlist:{it:dimlist}} [{cmd:,} {help ciwidth_optgraph##dimopts:{it:dimopts}}]{cmd:)}}为 {it:dimlist} 中的组创建
	图形{p_end}
{synopt:{cmdab:by:dimension(}{help ciwidth_optgraph##dimlist:{it:dimlist}} [{cmd:,} {help ciwidth_optgraph##dimopts:{it:dimopts}}]{cmd:)}}为 {it:dimlist} 中的组创建 
	子图{p_end}
{synopt:{cmdab:gr:aphdimension(}{help ciwidth_optgraph##dimlist:{it:dimlist}} [{cmd:,} {help ciwidth_optgraph##dimopts:{it:dimopts}}]{cmd:)}}为 {it:dimlist} 中的组创建 
	图形{p_end}
{synopt:{opt horiz:ontal}}交换 
	x 和 y 轴{p_end}
{synopt:{opt schemeg:rid}}不应用默认的 x 和 y 网格线{p_end}
{synopt:{cmd:name(}{it:name}|{it:stub} [{cmd:, replace}]{cmd:)}}图形的名称，或者如果有多个图形则为 {it:stub}{p_end}

{syntab:标签}
{synopt:{opt yreg:ular}}在 y 轴上放置规则间隔的刻度线和标签{p_end}
{synopt:{opt xreg:ular}}在 x 轴上放置规则间隔的刻度线和标签{p_end}
{synopt:{opt yval:ues}}在 y 轴上为每个不同值放置 
	刻度线和标签{p_end}
{synopt:{opt xval:ues}}在 x 轴上为每个不同值放置 
	刻度线和标签{p_end}
{synopt:{cmdab: collab:els(}{help ciwidth_optgraph##colspec:{it:colspec}}{cmd:)}}更改 
	列的默认标签{p_end}
{synopt:{opt nolab:els}}用其值而不是标签标记 
	组{p_end}
{synopt:{opt allsim:plelabels}}在所有标签中放弃
	列标签和等号{p_end}
{synopt:{opt nosim:plelabels}}在所有标签中包括
	列标签和等号{p_end}
{synopt:{opth eqsep:arator(strings:string)}}用 {it:string} 替换等号分隔符{p_end}
{synopt:{opth sep:arator(strings:string)}}当在一个维度中指定多个列时用于标签的分隔符{p_end}
{synopt:{opt nosep:arator}}不使用分隔符{p_end}
{synopt:{cmd:format(}{help format_zh:{bf:%}{it:fmt}}{cmd:)}}将
	数值转换为标签的格式{p_end}

{syntab:绘图}
{synopt :{cmdab:plotop:ts(}{it:{help ciwidth_optgraph##plotopts:plot_options}}{cmd:)}}影响 
	所有图形的呈现{p_end}
{synopt :{cmdab:plot:}{ul:{it:#}}{cmd:opts(}{it:{help ciwidth_optgraph##plotopts:plot_options}}{cmd:)}}影响 
        {it:#}th 图形的呈现{p_end}
{synopt:{opth recast:(twoway:plottype)}}使用 {it:plottype} 绘制
	所有图形{p_end}

{syntab:添加图形}
{synopt :{opth "addplot(addplot_option:plot)"}}将其他图形添加到生成的图形中{p_end}

{syntab:Y 轴, X 轴, 标题, 图例, 整体, 按}
{synopt :{it:twoway_options}}任何 
	在 {manhelpi twoway_options G-3} 中记录的选项{p_end}
{synopt :{opth byop:ts(by_option:byopts)}}如何 
	合并、标记子图等{p_end}
{synoptline}

{marker dimlist}{...}
{pstd}
{it:dimlist} 可以包含以下任何列：

{marker column}{...}
{synoptset 22}{...}
{synopthdr:column}
{synoptline}
{synopt:{opt level}}置信水平{p_end}
{synopt:{opt alpha}}显著性水平{p_end}
{synopt:{opt N}}受试者总数{p_end}
{synopt:{opt N1}}对照组中的受试者数量{p_end}
{synopt:{opt N2}}实验组中的受试者数量{p_end}
{synopt:{opt nratio}}实验组与对照组的样本量比{p_end}
{synopt:{opt Pr_width}} CI 宽度的概率{p_end}
{synopt:{opt width}} CI 宽度{p_end}
{synopt:{it:method_columns}}特定于的列
         {help ciwidth##method:method} 与 {cmd:ciwidth} 一起指定{p_end}
{synoptline}

{marker colspec}{...}
{pstd}
{it:colspec} 是 

{p 8 16 2}
{help ciwidth_optgraph##column:{it:column}} {cmd:"}{it:label}{cmd:"} [{it:column} {cmd:"}{it:label}{cmd:"} [...]]

{marker dimopts}{...}
{synopthdr:dimopts}
{synoptline}
{synopt:{opt lab:els(lablist)}}被引号字符串的列表，用于标记维度的每个级别{p_end}
{synopt:{opt elab:els(elablist)}}枚举标签的列表{p_end}
{synopt:{opt nolab:els}}用其值而不是标签标记 
	组{p_end}
{synopt:{opt allsim:plelabels}}放弃
	列名称和等号的所有标签{p_end}
{synopt:{opt nosim:plelabels}}在所有标签中包括
	列名称和等号{p_end}
{synopt:{opth eqsep:arator(strings:string)}}用 {it:string} 替换维度中的等号分隔符{p_end}
{synopt:{opth sep:arator(strings:string)}}当在一个维度中指定多个列时用于标签的分隔符{p_end}
{synopt:{opt nosep:arator}}不使用分隔符{p_end}
{synopt:{cmd:format(}{help format_zh:{bf:%}{it:fmt}}{cmd:)}}格式
	将数值转换为标签{p_end}
{synoptline}

{pstd}
其中 {it:lablist} 定义为

{p 8 16 2}
{cmd:"}{it:label}{cmd:"} [{cmd:"}{it:label}{cmd:"} [...]]

{pstd}
{it:elablist} 定义为

{p 8 16 2}
{it:#} {cmd:"}{it:label}{cmd:"} [{it:#} {cmd:"}{it:label}{cmd:"} [...]]

{pstd}
而 {it:#} 是维度的级别。

{marker plotopts}{...}
{synopthdr:plot_options}
{synoptline}
包含 help gr_markopt2
包含 help gr_clopt
{synoptline}


包含 help menu_pss


{marker description}{...}
{title:描述}

{pstd}
{cmd:graph()} 选项的 {help ciwidth_zh} 指定将 {cmd:ciwidth} 命令的结果进行绘图。

{pstd}
虽然有许多选项可以控制图形的外观，但您通常只需在 {cmd:ciwidth} 命令中指定 {cmd:graph} 选项即可。


{marker linkspdf}{...}
{title:PDF文档链接}

        {mansection PSS-3 ciwidth,graphRemarksandexamples:备注和示例}

{pstd}
以上部分没有包含在此帮助文件中。


{marker suboptions}{...}
{title:子选项}

{pstd}
以下是 {cmd:ciwidth} 命令的 {cmd:graph()} 选项中的子选项。

{dlgtab:主选项}

{phang}
{opt ydimension()}, {opt xdimension()}, {opt plotdimension()}, 
        {opt bydimension()}, 和 {opt graphdimension()} 指定用于图形的 y 轴、x 轴、图形、{cmd:by()} 
        子图和图形的维度。

{pmore}
	默认维度基于您的分析。y 维度为正在估计的参数：样本量、CI 宽度或 CI 宽度概率。如果只有一列包含多个值，则该列在 x 维度上绘制。否则，x 维度为 CI 宽度以确定样本量，而在估计 CI 宽度和 CI 宽度概率时为样本量。其他包含多个值的列用作绘图维度。
        有关详细信息，请参见 {mansection PSS-3 ciwidth,graphRemarksandexamplesDefaultgraphs:{it:默认图形}} 
        中的 {bf:[PSS-3] ciwidth, graph}。
        您可以覆盖默认设置并明确控制用于图形每个维度的列，使用这些维度子选项。

{pmore}
        每个子选项都支持 
        {help ciwidth_optgraph##dimopts:子选项}，控制
        维度的标签 - 对于 {opt ydimension()} 和 
        {opt xdimension()} 的轴标签，{opt plotdimension()} 的图标签，{opt bydimension()} 的子图标题，以及 
	{opt graphdimension()} 的图标题。

{pmore}
	有关使用维度子选项的示例，请参见 
	{mansection PSS-3 ciwidth,graphRemarksandexamplesChangingdefaultgraphdimensions:{it:更改默认图形维度}} 
	在 {bf:[PSS-3] ciwidth, graph} 中。

{phang2}
{cmd:ydimension(}{help ciwidth_optgraph##dimlist:{it:dimlist}} [{cmd:,} {help ciwidth_optgraph##dimopts:{it:dimopts}}]{cmd:)} 指定
        y 轴的列 {it:dimlist}，并使用 {it:dimopts} 控制这些标签的内容。

{phang2}
{cmd:xdimension(}{help ciwidth_optgraph##dimlist:{it:dimlist}} [{cmd:,} {help ciwidth_optgraph##dimopts:{it:dimopts}}]{cmd:)} 指定
        x 轴的列 {it:dimlist}，并使用 {it:dimopts} 控制这些标签的内容。

{phang2}
{cmd:plotdimension(}{help ciwidth_optgraph##dimlist:{it:dimlist}} [{cmd:,} {help ciwidth_optgraph##dimopts:{it:dimopts}}]{cmd:)} 指定
	in {it:dimlist} 的列，其水平决定图的数量，并可选择在 {it:dimopts} 中指定图的标签内容。

{phang2}
{cmd:bydimension(}{help ciwidth_optgraph##dimlist:{it:dimlist}} [{cmd:,} {help ciwidth_optgraph##dimopts:{it:dimopts}}]{cmd:)} 指定
        在 {it:dimlist} 中的列，其水平决定 {cmd:by()} 子图，并可选择在 {it:dimopts} 中指定
        子图标题的内容。

{phang2}
{cmd:graphdimension(}{help ciwidth_optgraph##dimlist:{it:dimlist}}
[{cmd:,} {help ciwidth_optgraph##dimopts:{it:dimopts}}]{cmd:)} 指定
{it:dimlist} 中的列，其水平决定图，并可选择在 {it:dimopts} 中指定图标题的内容。

{pmore}
请参阅 {it:{help pss_glossary##def_columns:图中的列}} 的定义 
在 {bf:[PSS-5] 词汇表} 中。

{phang}
{opt horizontal} 反转默认的 x 和 y 轴。默认情况下，由 {help ciwidth_zh} 计算的值绘制在 y 轴上，而 x 轴表示其他列之一。
指定 {opt horizontal} 则交换这两个轴。
	
{pmore}
        一种常见的用途是将样本量放置在 x 轴上，即使它是由 {cmd:ciwidth} 计算得到的值。此子选项在当指定 {cmd:parallel} 选项时也很有用，从而产生较长的标签。
 
{pmore}
        请参阅 {mansection PSS-3 ciwidth,graphRemarksandexamplesParallelplots:{it:平行图}}
        在 {bf:[PSS-3] ciwidth, graph} 中的示例，关于 {cmd:horizontal} 子选项。

{phang}
{opt schemegrid} 指定在 {cmd:ciwidth} 图形上不总是绘制 x 和 y 网格线。相反，是否绘制网格线将由当前 {help scheme} 确定。

{phang}
{cmd:name(}{it:name}|{it:stub} [{cmd:, replace}]{cmd:)} 指定
        图形或图形的名称。如果指定了 {cmd:graphdimension()} 子选项，则 {opt name()} 的参数被视为 
        {it:stub}，并创建名为 {it:stub}{cmd:1}、{it:stub}{cmd:2} 等的图形。

{pmore} 
        {opt replace} 指定可以替换同名的现有图形。

{pmore}
        如果未指定 {cmd:name()}，则使用默认名称并且后续的 {cmd:ciwidth} 图形或其他绘图命令可能会替换这些图形。

{dlgtab:标签}
	
{pstd}
所有在 {bf:标签} 选项卡下列出的子选项可以直接在 {cmd:graph()} 选项中指定。除 
	{cmd:yregular}、{cmd:xregular}、{cmd:yvalues} 和 {cmd:xvalues} 外，其余都可以在 
	{cmd:ydimension()}、{cmd:xdimension()}、{cmd:plotdimension()}、 
	{cmd:bydimension()} 和 {cmd:graphdimension()} 中作为 {it:dimopts} 指定。 
当在某个维度选项中指定子选项时，仅影响该维度的标签。当在维度选项外指定子选项时，则影响所有维度上的所有标签。维度选项中的规范优先于外部规范。

{phang}
{opt yregular} 和 {opt yvalues} 指定如何在 y 轴上放置刻度线和标签。  

{phang2}
{opt yregular} 指定在 y 轴上放置规则间隔的刻度线和标签。

{phang2}
{opt yvalues} 指定为每个不同值放置刻度线和标签。

{pmore}
如果两者都未指定，将尝试根据您的结果选择最合理的选项。标签也可以使用标准的 {cmd:graph twoway}
{help axis label options:轴标签规则和选项} 来指定。

{phang}
{opt xregular} 和 {opt xvalues} 对 x 轴上的刻度线和标签做同样的处理。

{phang}
{cmd:collabels(}{help ciwidth_optgraph##colspec:{it:colspec}}{cmd:)} 指定
        在图形中用于指定列的标签。例如，{cmd:collabels(N "N")} 指定在图形中使用列 
        {cmd:N} 时 - 轴标签、图标签、图标题、图例标题等 - 显示 "N" 而不是默认标签 
        "样本量"。

{pmore}
	可以通过键入以下格式重标记多个列，比如，

{pmore2}
	{cmd:collabels(N "N" v "方差")}

{pmore}
        并且 {help graph_text_zh:SMCL} 标签可用于希腊字符和其他排版，如键入以下内容，

{pmore2}
	{cmd:collabels(alpha "{&alpha}" N1 "N{sub:1}")}

{pmore}
请参见 {it:{help pss_glossary##def_columns:图中的列}} 的定义在 
{bf:[PSS-5] 词汇表} 中。

{phang}
{opt nolabels} 指定不使用值标签构建图形标签和图标题。默认情况下，如果维度中的列有值标签，则这些标签用来构建轴刻度、图标、子图和图的标签和标题。

{phang}
{opt allsimplelabels} 和 {opt nosimplelabels}
        控制图形的标签和标题是否仅包含列的值，或者还包括列标签和等号。默认值取决于该维度是轴维度，还是绘图、按和图形维度之一。它也取决于维度的级别值是否已标记。简单标签的示例是 “alpha” 或 “.05”，而非简单标签的示例是 “alpha=.05”。

{pmore}
        在 {cmd:ciwidth, graph} 中，简单标签几乎总是对 x 和 y 轴以及大多数图标签最好。带等号的标签通常更适合子图和图标题。
	这些是 {cmd:ciwidth, graph} 使用的默认值。 {opt allsimplelabels} 和
        {opt nosimplelabels} 子选项让您可以覆盖默认标记。

{phang2}
{opt allsimplelabels}
 指定所有标题和标签仅使用该列的值或值标签。

{phang2}
{opt nosimplelabels}
 指定所有标题和标签在值或值标签之前包括 {it:dimname}{cmd:=}。

{phang}
{opth eqseparator:(strings:string)} 指定标签中列标签与值之间的自定义分隔符。使用 {it:string} 替换默认的等号。此选项用于 {opt nosimplelabels}。

{phang}
{opth separator:(strings:string)} 和 {opt noseparator} 控制当多个列用于指定一个维度时，标签部分之间的分隔符。默认分隔符为逗号后跟空格，但可以使用 {opt noseparator} 请求不使用分隔符，或使用 {opt separator()} 更改默认值为任何字符串。

{pmore} 
        例如，如果指定了 {cmd:bydimension(a b)}，则图例中的子图标签可能是 "a=1, b=1"、"a=1, b=2" 等等。
        指定 {cmd:separator(:)} 将创建标签 "a=1:b=1"、"a=1:b=2" 等等。

{phang}
{cmd:format(}{help format_zh:{bf:%}{it:fmt}}{cmd:)}
    指定如何格式化数值以显示为轴标签、图上的标签以及子图和图的标题。

{dlgtab:绘图}

{phang}
{cmd:plotopts(}{it:{help ciwidth_optgraph##plotopts:plot_options}}{cmd:)}
        影响所有图形的呈现。 {it:plot_options} 可以影响标记的大小和颜色、标记是否以及如何标记，以及点是否以及如何连接； 
        参见 {manhelpi marker_options G-3}, 
        {manhelpi marker_label_options G-3}, 和 {manhelpi cline_options G-3}。

{pmore} 
        可通过使用 {cmd:plot}{it:#}{cmd:opts()} 子选项为特定图形覆盖这些设置。

{phang}
{cmd:plot}{it:#}{cmd:opts(}{it:{help ciwidth_optgraph##plotopts:plot_options}}{cmd:)}
        影响第 {it:#} 个图形的呈现。 
        {it:plot_options} 可以影响标记的大小和颜色、标记是否以及如何标记，以及点是否以及如何连接； 
        参见 {manhelpi marker_options G-3}, 
        {manhelpi marker_label_options G-3}, 和 {manhelpi cline_options G-3}。

{phang}
{opt recast(plottype)}
	指定使用 {it:plottype} 绘制结果。 
        {it:plottype} 可以是 {cmd:scatter}、{cmd:line}、{cmd:connected}、{cmd:area}、{cmd:bar}、{cmd:spike}、{cmd:dropline} 或 {cmd:dot}；请参见 
	{manhelp graph_twoway G-2:graph twoway}。当指定 {cmd:recast()} 时，与指定的 
        {it:plottype} 相应的图呈现选项可用于替代 
	{it:{help ciwidth_optgraph##plotopts:plot_options}}。 
	有关这些子选项的详细信息，请按照
        {manhelp graph_twoway G-2:graph twoway} 中适当的链接。

{pmore} 
	您可以在 {cmd:plotopts()} 或 
        {cmd:plot}{it:#}{cmd:opts()} 子选项中指定 {cmd:recast()}。然而，更好的是如这里记录的那样，在这些子选项外指定它。
        当在这些子选项外指定时，您可以更好地访问所指定 
	{it:plottype} 的图特定呈现子选项。

{dlgtab:添加图形}

{phang}
{opt addplot(plot)} 
        提供了一种向生成的图形中添加其他图形的方法；请参见 
        {manhelpi addplot_option G-3}。  

{pmore}
        如果由单个 {cmd:ciwidth} 命令绘制了多个图形，或者如果 {it:plot} 指定了具有多个 y 变量的图形，例如 
        {cmd:scatter y1 y2 x}，则图形的图例将无法明确识别所有图形，并且需要使用 {opt legend()} 子选项进行自定义；请参见 
        {manhelpi legend_options G-3}。

{dlgtab:Y 轴, X 轴, 标题, 图例, 整体, 按}

{phang}
{it:twoway_options} 
        是在 {manhelpi twoway_options G-3} 中记录的任何选项。
        这些包括：
        图形的标题选项（参见 {manhelpi title_options G-3}）；
        将图形保存到磁盘的选项（参见 {manhelpi saving_option G-3}）；
        控制轴的标签和外观的选项（参见 {manhelpi axis_options G-3}）；
        控制图例的外观、内容、位置和组织的选项（参见 {manhelpi legend_options G-3}）；
        添加线条（参见 {manhelpi added_line_options G-3}）和文本（参见 {manhelpi added_text_options G-3}）；
        以及控制图形外观的其他方面（参见 {manhelpi twoway_options G-3}）。

{pmore}
        {cmd:label()} 子选项的 {cmd:legend()} 选项对 {cmd:ciwidth, graph} 没有影响。请改用 {cmd:order()} 子选项。

{phang}
{opt byopts(byopts)} 
        影响指定了 {cmd:bydimension()} 或者在默认图形中有子图时合并图形的外观，包括整体图形标题、图例位置和子图的组织。请参见 {manhelpi by_option G-3}。


{marker examples}{...}
{title:示例}

{pstd}
这些示例旨在快速参考。有关 {cmd:ciwidth, graph} 的概念概述和讨论示例，请参见 
{it:{mansection PSS-3 ciwidth,graphRemarksandexamples:备注和示例}} 在 
{bf:[PSS-3] ciwidth, graph} 中。

{pstd}
在图形中显示结果{p_end}
{phang2}{cmd:. ciwidth onemean, n(50(10)80) probwidth(0.9) sd(12) graph}{p_end}
{phang2}{cmd:. ciwidth onemean, n(50(10)80) probwidth(0.8 0.85 0.9) sd(12) graph}

{pstd}
更改图形轴，此处将样本量显示在 y 轴上{p_end}
{phang2}{cmd:. ciwidth onemean, n(50(10)80) probwidth(0.9) sd(12) graph(y(N))}

{pstd}
同上，格式化 x 轴上的标签{p_end}
{phang2}{cmd:. ciwidth onemean, n(50(10)80) probwidth(0.9) sd(12)}
       {cmd:graph(y(N) xlabel(,format(%4.2f)))}

{pstd}
变化三个参数{p_end}
{phang2}{cmd:. ciwidth onemean, n(50(10)80) probwidth(0.8 0.85 0.9)}
       {cmd:sd(10 12) graph}

{pstd}
同上，为每个标准差值生成单独的图形{p_end} 
{phang2}{cmd:. ciwidth onemean, n(50(10)80) probwidth(0.8 0.85 0.9)}
       {cmd:sd(10 12) graph(by(sd))}
{p_end}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <ciwidth_optgraph.sthlp>}