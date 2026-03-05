{smcl}
{* *! version 1.0.12  27feb2019}{...}
{viewerdialog power "dialog power_graph"}{...}
{vieweralsosee "[PSS-2] power, graph" "mansection PSS-2 power,graph"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[PSS-2] power" "help power_zh"}{...}
{vieweralsosee "[PSS-2] power, table" "help power_opttable_zh"}{...}
{viewerjumpto "语法" "power_optgraph_zh##syntax"}{...}
{viewerjumpto "菜单" "power_optgraph_zh##menu"}{...}
{viewerjumpto "描述" "power_optgraph_zh##description"}{...}
{viewerjumpto "PDF 文档链接" "power_optgraph_zh##linkspdf"}{...}
{viewerjumpto "子选项" "power_optgraph_zh##suboptions"}{...}
{viewerjumpto "示例" "power_optgraph_zh##examples"}
{help power_optgraph:English Version}
{hline}{...}
{p2colset 1 25 27 2}{...}
{p2col:{bf:[PSS-2] power, graph} {hline 2}}从 power 命令生成图形结果{p_end}
{p2col:}({mansection PSS-2 power,graph:查看完整 PDF 手册条目}){p_end}
{p2colreset}{...}


{marker syntax}{...}
{title:语法}

{phang}
产生默认图形 

{p 8 16 2}
{opt power} ... {cmd:, graph} ...
  

{phang}
将 power 与样本大小绘图 

{p 8 16 2}
{opt power} ... {cmd:, graph(y(power) x(N))} ...


{phang}
将样本大小与目标参数绘图

{p 8 16 2}
{opt power} ... {cmd:, graph(y(N) x(target))} ...


{phang}
将效应大小与样本大小绘图

{p 8 16 2}
{opt power} ... {cmd:, graph(y(delta) x(N))} ...


{phang}
生成其他自定义图形

{p 8 16 2}
[{opt power}] ... {cmd:,} {opt graph(graphopts)} ...


{marker graphopts}{...}
{synoptset 37 tabbed}{...}
{synopthdr:图形选项}
{synoptline}
{syntab:主}
{synopt:{cmdab:y:dimension(}{help power_optgraph##dimlist:{it:dimlist}} [{cmd:,} {help power_optgraph##dimopts:{it:dimopts}}]{cmd:)}}使用
	{it:dimlist} 定义 y 轴{p_end}
{synopt:{cmdab:x:dimension(}{help power_optgraph##dimlist:{it:dimlist}} [{cmd:,} {help power_optgraph##dimopts:{it:dimopts}}]{cmd:)}}使用
	{it:dimlist} 定义 x 轴{p_end}
{synopt:{cmdab:plot:dimension(}{help power_optgraph##dimlist:{it:dimlist}} [{cmd:,} {help power_optgraph##dimopts:{it:dimopts}}]{cmd:)}}为 {it:dimlist} 中的组创建
	图形{p_end}
{synopt:{cmdab:by:dimension(}{help power_optgraph##dimlist:{it:dimlist}} [{cmd:,} {help power_optgraph##dimopts:{it:dimopts}}]{cmd:)}}为 {it:dimlist} 中的组创建 
	子图{p_end}
{synopt:{cmdab:gr:aphdimension(}{help power_optgraph##dimlist:{it:dimlist}} [{cmd:,} {help power_optgraph##dimopts:{it:dimopts}}]{cmd:)}}为 {it:dimlist} 中的组创建 
	图形{p_end}
{synopt:{opt horiz:ontal}}交换 
	x 和 y 轴{p_end}
{synopt:{opt schemeg:rid}}不应用默认的 x 和 y 网格线{p_end}
{synopt:{cmd:name(}{it:name}|{it:stub} [{cmd:, replace}]{cmd:)}}图形的名称，或者如果有多个图形则为 {it:stub}{p_end}

{syntab:标签}
{synopt:{opt yreg:ular}}在 y 轴上放置规律间隔的刻度和标签{p_end}
{synopt:{opt xreg:ular}}在 x 轴上放置规律间隔的刻度和标签{p_end}
{synopt:{opt yval:ues}}在 y 轴上为每个不同值放置 
	刻度和标签{p_end}
{synopt:{opt xval:ues}}在 x 轴上为每个不同值放置 
	刻度和标签{p_end}
{synopt:{cmdab: collab:els(}{help power_optgraph##colspec:{it:colspec}}{cmd:)}}更改 
	列的默认标签{p_end}
{synopt:{opt nolab:els}}使用值而非标签标记 
	组{p_end}
{synopt:{opt allsim:plelabels}}在所有标签中放弃
	列标签和等号{p_end}
{synopt:{opt nosim:plelabels}}在所有标签中包括
	列标签和等号{p_end}
{synopt:{opth eqsep:arator(strings:string)}}使用 {it:string} 替换等号分隔符{p_end}
{synopt:{opth sep:arator(strings:string)}}在指定多个列的维度时，标签的分隔符{p_end}
{synopt:{opt nosep:arator}}不使用分隔符{p_end}
{synopt:{cmd:format(}{help format_zh:{bf:%}{it:fmt}}{cmd:)}}将数值转换为标签的格式{p_end}

{syntab:绘图}
{synopt :{cmdab:plotop:ts(}{it:{help power_optgraph##plotopts:plot_options}}{cmd:)}}影响 
	所有图形的显示{p_end}
{synopt :{cmdab:plot:}{ul:{it:#}}{cmd:opts(}{it:{help power_optgraph##plotopts:plot_options}}{cmd:)}}影响 
        第 {it:#} 个图形的显示{p_end}
{synopt:{opth recast:(twoway:plottype)}}所有图形使用 {it:plottype} 绘制{p_end}

{syntab:添加图形}
{synopt :{opth "addplot(addplot_option:plot)"}}将其他图形添加到生成的图中{p_end}

{syntab:Y 轴, X 轴, 标题, 图例, 整体, 按}
{synopt :{it:twoway_options}}任何 
	在 {manhelpi twoway_options G-3} 中记录的选项{p_end}
{synopt :{opth byop:ts(by_option:byopts)}}如何 
	组合子图，标记等{p_end}
{synoptline}

{marker dimlist}{...}
{pstd}
{it:dimlist} 可以包含以下任何列：

{marker column}{...}
{synoptset 22}{...}
{synopthdr:列}
{synoptline}
{synopt:{opt alpha}}显著性水平{p_end}
{synopt:{opt power}}效能{p_end}
{synopt:{opt beta}}II类错误概率{p_end}
{synopt:{opt N}}被试的总数{p_end}
{synopt:{opt N1}}对照组的被试数{p_end}
{synopt:{opt N2}}实验组的被试数{p_end}
{synopt:{opt nratio}}样本大小的比率，实验组与对照组{p_end}
{synopt:{opt K}}簇的数量{p_end}
{synopt:{opt K1}}对照组中的簇数量{p_end}
{synopt:{opt K2}}实验组中的簇数量{p_end}
{synopt:{opt kratio}}簇数量的比率，实验组与对照组{p_end}
{synopt:{opt M}}簇的大小{p_end}
{synopt:{opt M1}}对照组中的簇大小{p_end}
{synopt:{opt M2}}实验组中的簇大小{p_end}
{synopt:{opt mratio}}簇大小的比率，实验组与对照组{p_end}
{synopt:{opt delta}}效应大小{p_end}
{synopt:{opt target}}目标参数{p_end}
{synopt:{it:method_columns}}特定于 {cmd:power} 指定的 
         {help power##method:method} 的列{p_end}
{synoptline}

{marker colspec}{...}
{pstd}
{it:colspec} 是 

{p 8 16 2}
{help power_optgraph##column:{it:column}} {cmd:"}{it:label}{cmd:"} [{it:column} {cmd:"}{it:label}{cmd:"} [...]]

{marker dimopts}{...}
{synopthdr:dimopts}
{synoptline}
{synopt:{opt lab:els(lablist)}}用于给每个层次标记维度的引用字符串列表{p_end}
{synopt:{opt elab:els(elablist)}}列出
	枚举标签{p_end}
{synopt:{opt nolab:els}}用值标记 
	组，而不是标签{p_end}
{synopt:{opt allsim:plelabels}}在所有标签中放弃
	列名称和等号{p_end}
{synopt:{opt nosim:plelabels}}在所有标签中包括
	列名称和等号{p_end}
{synopt:{opth eqsep:arator(strings:string)}}在维度中用 {it:string} 替换等号分隔符{p_end}
{synopt:{opth sep:arator(strings:string)}}当在维度中指定多个列时，标签的分隔符{p_end}
{synopt:{opt nosep:arator}}不使用分隔符{p_end}
{synopt:{cmd:format(}{help format_zh:{bf:%}{it:fmt}}{cmd:)}}将数值转换为标签的格式{p_end}
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
并且 {it:#} 是维度的各个层次。

{marker plotopts}{...}
{synopthdr:绘图选项}
{synoptline}
包含 help gr_markopt2
包含 help gr_clopt
{synoptline}


包含 help menu_pss


{marker description}{...}
{title:描述}

{pstd}
{cmd:graph()} 选项在 {help power_zh} 中指定了 {cmd:power} 命令的结果应被绘制。

{pstd}
虽然有许多选项可以控制图形的外观，但通常你只需在你的 {cmd:power} 命令中指定 {cmd:graph} 选项即可。


{marker linkspdf}{...}
{title:PDF 文档链接}

        {mansection PSS-2 power,graphRemarksandexamples:备注和示例}

{pstd}
以上部分不包括在此帮助文件中。


{marker suboptions}{...}
{title:子选项}

{pstd}
以下是 {cmd:power} 命令的 {cmd:graph()} 选项中的子选项。

{dlgtab:主}

{phang}
{opt ydimension()}, {opt xdimension()}, {opt plotdimension()}, 
        {opt bydimension()} 和 {opt graphdimension()} 指定用于图形的 y 轴、x 轴、绘图、{cmd:by()} 子图和图形的维度。

{pmore}
        默认维度基于你的分析。y 维度为效能的确定，样本大小为样本大小的确定，目标参数为效应大小的确定。如果有一个包含多个值的列，这一列被绘制在 x 维度上。否则，x 维度用于效能的确定，样本大小用于样本大小的确定，效应大小的确定使用样本大小。其他包含多个值的列用作绘图维度。
        有关详细信息，请参见 {mansection PSS-2 power,graphRemarksandexamplesDefaultgraphs:{it:默认图形}}  在 {bf:[PSS-2] power, graph} 中。
        你可以覆盖默认设置，明确控制每个图形维度中使用哪些列，使用这些维度子选项。

{pmore}
        每个子选项支持 
        {help power_optgraph##dimopts:suboptions}，控制维度的标签--y 轴和 x 轴的轴标签，绘图的标签，子图的标题以及图形的标题。

{pmore}
        如需使用维度子选项的示例，请参见 {mansection PSS-2 power,graphRemarksandexamplesChangingdefaultgraphdimensions:{it:改变默认图形维度}}  在 {bf:[PSS-2] power, graph} 中。

{phang2}
{cmd:ydimension(}{help power_optgraph##dimlist:{it:dimlist}} [{cmd:,} {help power_optgraph##dimopts:{it:dimopts}}]{cmd:)} 指定
        在 {it:dimlist} 中 y 轴的列，并使用 {it:dimopts} 控制这些标签的内容。

{phang2}
{cmd:xdimension(}{help power_optgraph##dimlist:{it:dimlist}} [{cmd:,} {help power_optgraph##dimopts:{it:dimopts}}]{cmd:)} 指定
        在 {it:dimlist} 中 x 轴的列，并使用 {it:dimopts} 控制这些标签的内容。

{phang2}
{cmd:plotdimension(}{help power_optgraph##dimlist:{it:dimlist}} [{cmd:,} {help power_optgraph##dimopts:{it:dimopts}}]{cmd:)} 指定
        在 {it:dimlist} 中的列，其层次决定绘图，并可以在 {it:dimopts} 中选择性地指定绘图标签的内容。

{phang2}
{cmd:bydimension(}{help power_optgraph##dimlist:{it:dimlist}} [{cmd:,} {help power_optgraph##dimopts:{it:dimopts}}]{cmd:)} 指定
        在 {it:dimlist} 中的列，其层次决定 {cmd:by()} 子图，并可以在 {it:dimopts} 中选择性地指定子图的标题内容。

{phang2}
{cmd:graphdimension(}{help power_optgraph##dimlist:{it:dimlist}}
[{cmd:,} {help power_optgraph##dimopts:{it:dimopts}}]{cmd:)} 指定
{it:dimlist} 中的列，其层次决定图形，并可以在 {it:dimopts} 中选择性地指定图形的标题内容。

{pmore}
请参见 {it:{help pss_glossary##def_columns:图形中的列}} 的定义在 
{bf:[PSS-5] 词汇表} 中。

{phang}
{opt horizontal} 反转默认的 x 轴和 y 轴。默认情况下，由 {help power_zh} 计算的值绘制在 y 轴上，而 x 轴表示其他列之一。指定 
	{opt horizontal} 将交换轴。

{pmore}
        一个常见的用途是在 x 轴上放置样本大小，即使它是由 {cmd:power} 计算的值。此子选项还可以在使用 {cmd:power} 指定的 {cmd:parallel} 选项时生成的长标签中非常有用。

{pmore}
        有关 {cmd:horizontal} 子选项的示例，请参见 {mansection PSS-2 power,graphRemarksandexamplesParallelplots:{it:平行图}}  在 {bf:[PSS-2] power, graph} 中。

{phang}
{opt schemegrid} 指定在 {cmd:power} 图中不总是绘制 x 和 y 网格线。相反，绘制网格线的决定将由当前的 {help scheme} 决定。

{phang}
{cmd:name(}{it:name}|{it:stub} [{cmd:, replace}]{cmd:)} 指定图形或图形的名称。如果指定了 {cmd:graphdimension()} 子选项，则 {opt name()} 的参数将视为 {it:stub}，并创建名称为 {it:stub}{cmd:1}、 {it:stub}{cmd:2} 等等的图形。

{pmore} 
        {opt replace} 指定可以替换同一名称的现有图形。

{pmore}
        如果未指定 {cmd:name()}，则使用默认名称，图形可能被后续的 {cmd:power} 图形或其他绘图命令替换。

{dlgtab:标签}
	
{pstd}
所有列在 {bf:标签} 标签下的子选项可以直接在 {cmd:graph()} 选项中指定。除了 {cmd:yregular}， {cmd:xregular}， {cmd:yvalues} 和 {cmd:xvalues} 外，所有这些都可以作为 {it:dimopts} 在
{cmd:ydimension()}， {cmd:xdimension()}， {cmd:plotdimension()}，
{cmd:bydimension()} 和 {cmd:graphdimension()} 中指定。
当在某一维度选项中指定子选项时，只会影响该维度的标签。当在维度选项外指定子选项时，所有维度的所有标签都会受到影响。维度选项中的指定优先。

{phang}
{opt yregular} 和 {opt yvalues} 指定如何在 y 轴上放置刻度标记和标签。  

{phang2}
{opt yregular} 指定在 y 轴上放置规律间隔的刻度和标签。

{phang2}
{opt yvalues} 指定为每个不同值放置一个刻度和标签。

{pmore}
如果两者都未指定，将尝试根据你的结果选择最合理的选项。标签也可以使用标准的 {cmd:graph twoway}
{help axis label options:轴标签规则和选项} 进行指定。

{phang}
{opt xregular} 和 {opt xvalues} 在 x 轴上执行相同操作。

{phang}
{cmd:collabels(}{help power_optgraph##colspec:{it:colspec}}{cmd:)} 指定在图中用于指定列的标签。例如， {cmd:collabels(N "N")} 指定在图中如 x 轴标签、绘图标签、图表标题、图例标题等地方显示 "N"，而非默认标签 "样本大小"。

{pmore}
	可以通过输入多个列来重新标记，例如，

{pmore2}
	{cmd:collabels(N "N" ma "替代均值")}

{pmore}
        并且可以使用 {help graph_text_zh:SMCL} 标签的希腊字符和其他排版格式，比如输入，

{pmore2}
	{cmd:collabels(alpha "{&alpha}" ma "{&mu}{sub:a}")}

{pmore}
请参见 {it:{help pss_glossary##def_columns:图形中的列}} 在 
{bf:[PSS-5] 词汇表} 中的定义。

{phang}
{opt nolabels} 指定不使用值标签构建维度中层次的图形标签和标题。默认情况下，如果维度中的列具有值标签，使用这些标签构建轴刻度、绘图、小图和图形的标签和标题。

{phang}
{opt allsimplelabels} 和 {opt nosimplelabels}
        控制图的标签和标题是否仅包括列的值，或者还包括列标签和等号。默认值取决于维度是轴维度还是绘图、by 和图形维度之一。它还取决于维度的层级值是否被标记。简单标签的例子是 "alpha" 或 ".05"，而非简单标签的例子是 "alpha=.05"。

{pmore}
在 {cmd:power, graph} 中，简单标签几乎在 x 和 y 轴上以及大多数绘图标签中是最佳选择。包含等号的标签通常在子图和图形标题中是更可取的。 这些是 {cmd:power, graph} 使用的默认设置。 
{opt allsimplelabels} 和 
        {opt nosimplelabels} 子选项允许你覆盖默认标签设置。

{phang2}
{opt allsimplelabels}
	指示所有标题和标签仅使用列的值或值标签。

{phang2}
{opt nosimplelabels}
	指示所有标题和标签在值或值标签之前包含 {it:dimname}{cmd:=}。

{phang}
{opth eqseparator:(strings:string)} 指定在标签中列标签和值之间的自定义分隔符。使用 {it:string} 代替默认的等号。此选项供 {opt nosimplelabels} 使用。

{phang}
{opth separator:(strings:string)} 和 {opt noseparator} 控制在指定多个列时，标签部分之间的分隔符。默认分隔符为逗号后跟空格，但可以通过 {opt noseparator} 请求不使用分隔符，或者通过 {opt separator()} 更改为任何字符串。

{pmore} 
        例如，如果指定 {cmd:bydimension(a b)}，我们的图例中的子图标签可能是 "a=1, b=1"， "a=1, b=2" 等等。指定 {cmd:separator(:)} 将创建标签 "a=1:b=1"，"a=1:b=2" 等等。

{phang}
{cmd:format(}{help format_zh:{bf:%}{it:fmt}}{cmd:)}
    指定如何将数值格式化为用于绘制的轴标签、绘图上的标签和子图及图形的标题。

{dlgtab:绘图}

{phang}
{cmd:plotopts(}{it:{help power_optgraph##plotopts:plot_options}}{cmd:)}
        影响所有图形的显示。 {it:plot_options} 可以影响标记的大小和颜色、标记是否以及如何标记，以及点是否以及如何连接；请参见 {manhelpi marker_options G-3}， 
        {manhelpi marker_label_options G-3} 和 {manhelpi cline_options G-3}。

{pmore} 
这些设置可以通过使用 {cmd:plot}{it:#}{cmd:opts()} 子选项对特定绘图进行重写。

{phang}
{cmd:plot}{it:#}{cmd:opts(}{it:{help power_optgraph##plotopts:plot_options}}{cmd:)}
        影响第 {it:#} 个图形的显示。 {it:plot_options} 可以影响标记的大小和颜色、标记是否以及如何标记，以及点是否以及如何连接；请参见 {manhelpi marker_options G-3}， 
        {manhelpi marker_label_options G-3} 和 {manhelpi cline_options G-3}。

{phang}
{opt recast(plottype)}
	指示使用 {it:plottype} 绘制结果。
        {it:plottype} 可能是 {cmd:scatter}， {cmd:line}， {cmd:connected}，
        {cmd:area}， {cmd:bar}， {cmd:spike}， {cmd:dropline} 或 {cmd:dot}；请参见
	{manhelp graph_twoway G-2:图形 twoway}。当指定 {cmd:recast()} 时，可以使用适用于指定的 {it:plottype} 的图形显示选项替代
	{it:{help power_optgraph##plotopts:plot_options}}。
	有关这些子选项的详细信息，请通过 {manhelp graph_twoway G-2:图形 twoway} 的相关链接访问。

{pmore} 
	你可以在 {cmd:plotopts()} 或 {cmd:plot}{it:#}{cmd:opts()} 子选项中指定 {cmd:recast()}。但是，最好在此处记录，而不是在那些子选项中指定。指定在外部时，你可以更好地访问指定 {it:plottype} 的绘图特定显示子选项。

{dlgtab:添加图形}

{phang}
{opt addplot(plot)} 
        提供了一种将其他图形添加到生成的图形中的方法；请参见 {manhelpi addplot_option G-3}。

{pmore}
        如果通过单个 {cmd:power} 命令绘制多个图形，或者如果 {it:plot} 指定多个 y 变量的图，例如 {cmd:scatter y1 y2 x}，则图的图例无法清楚地识别所有图形，需要使用 {opt legend()} 子选项进行自定义；请参见 {manhelpi legend_options G-3}。

{dlgtab:Y 轴, X 轴, 标题, 图例, 整体, 按}

{phang}
{it:twoway_options} 
        是在 {manhelpi twoway_options G-3} 中记录的任何选项。
        这些包括图形的标题选项（请参见 {manhelpi title_options G-3}）；
        将图形保存到磁盘的选项（请参见 {manhelpi saving_option G-3}）；
        控制轴的标签和外观的选项
	（请参见 {manhelpi axis_options G-3}）；
        控制图例的外观、内容、位置和组织的选项（请参见 {manhelpi legend_options G-3}）；
        添加线条的选项（请参见 {manhelpi added_line_options G-3}）
	和文本的选项（请参见 {manhelpi added_text_options G-3}）；
        以及控制图形外观的其他方面的选项（请参见 {manhelpi twoway_options G-3}）。

{pmore}
        {cmd:label()} 子选项对 {cmd:power, graph} 无效。请改用 {cmd:order()} 子选项。

{phang}
{opt byopts(byopts)} 
        在指定 {cmd:bydimension()} 或当默认图形有子图时，影响组合图的外观，包括整体图的标题、图例的位置和子图的组织。请参见 {manhelpi by_option G-3}。


{marker examples}{...}
{title:示例}

{pstd}
这些示例旨在快速参考。有关 {cmd:power, graph} 的概念概述和讨论示例，请参见
{it:{mansection PSS-2 power,graphRemarksandexamples:备注和示例}} 在
{bf:[PSS-2] power, graph} 中。

{pstd}
以图形形式显示结果{p_end}
{phang2}{cmd:. power onemean 0 1, n(10 20 30 50) graph}{p_end}
{phang2}{cmd:. power onemean 0 (1(0.5)5), n(20 30) graph}

{pstd}
改变图形轴，这里在 y 轴上显示 II 类错误概率（beta）{p_end}
{phang2}{cmd:. power onemean 0 1, n(10 20 30 50 75 100) graph(y(beta))}

{pstd}
改变两个以上参数{p_end}
{phang2}{cmd:. power onemean 0 (1 2), n(10 20 30 50) sd(1 1.5) graph}

{pstd}
与上述相同，为每个替代假设的每个水平生成单独的图形{p_end}
{phang2}{cmd:. power onemean 0 (1 2), n(10 20 30 50) sd(1 1.5) graph(by(ma))}
{p_end}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <power_optgraph.sthlp>}