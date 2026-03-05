{smcl}
{* *! version 1.2.0  16apr2019}{...}
{viewerdialog twoway "dialog twoway"}{...}
{vieweralsosee "[G-2] graph twoway scatter" "mansection G-2 graphtwowayscatter"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[G-2] graph twoway" "help twoway"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[G-3] axis_choice_options" "help axis_choice_options_zh"}{...}
{vieweralsosee "[G-3] connect_options" "help connect_options_zh"}{...}
{vieweralsosee "[G-3] marker_label_options" "help marker_label_options_zh"}{...}
{vieweralsosee "[G-3] marker_options" "help marker_options_zh"}{...}
{vieweralsosee "[G-3] twoway_options" "help twoway_options_zh"}{...}
{viewerjumpto "Syntax" "scatter_zh##syntax"}{...}
{viewerjumpto "Menu" "scatter_zh##menu"}{...}
{viewerjumpto "Description" "scatter_zh##description"}{...}
{viewerjumpto "Links to PDF documentation" "scatter_zh##linkspdf"}{...}
{viewerjumpto "Options" "scatter_zh##options"}{...}
{viewerjumpto "Remarks" "scatter_zh##remarks"}
{help scatter:English Version}
{hline}{...}
{p2colset 1 31 33 2}{...}
{p2col:{bf:[G-2] graph twoway scatter} {hline 2}}双变量散点图{p_end}
{p2col:}({mansection G-2 graphtwowayscatter:查看完整的 PDF 手册条目}){p_end}
{p2colreset}{...}


{marker syntax}{...}
{title:语法}

{p 8 34 2}
[{cmdab:tw:oway}]
{cmdab:sc:atter}
{varlist}
{ifin}
[{it:{help scatter##weight:weight}}]
[{cmd:,} {it:options}]


{pstd}
其中 {it:varlist} 为 
{p_end}
		{it:y_1} [{it:y_2} [...]] {it:x}

{synoptset 30}{...}
{p2col:{it:options}}描述{p_end}
{p2line}
{p2col:{it:{help scatter##marker_options:marker_options}}}更改
       标记的外观（颜色、大小等）{p_end}
{p2col:{it:{help scatter##marker_label_options:marker_label_options}}}添加
       标记标签；更改外观或位置{p_end}
{p2col:{it:{help scatter##connect_options:connect_options}}}更改
       线的外观或连接方式{p_end}

{p2col:{it:{help scatter##composite_style_option:composite_style_option}}}图表的整体样式{p_end}

{p2col:{it:{help scatter##jitter_options:jitter_options}}}使用随机噪声
       抖动标记位置{p_end}

{p2col:{it:{help scatter##axis_choice_options:axis_choice_options}}}将图表与备用轴关联{p_end}

{p2col:{it:{help scatter##twoway_options:twoway_options}}}标题、图例、
       轴、附加线和文本、区域、名称、长宽比等{p_end}
{p2line}


{marker marker_options}{...}
{p2col:{it:marker_options}}描述{p_end}
{p2line}
{p2col:{cmdab:m:symbol:(}{it:{help symbolstyle_zh}列表}{cmd:)}}标记的形状
       {p_end}
{p2col:{cmdab:mc:olor:(}{it:{help colorstyle_zh}列表}{cmd:)}}标记的颜色和不透明度
	{p_end}
{p2col:{cmdab:msiz:e:(}{it:{help markersizestyle_zh}列表}{cmd:)}}标记的大小{p_end}
{p2col:{cmdab:msa:ngle:(}{it:{help anglestyle_zh}}{cmd:)}}标记符号的角度{p_end}
{p2col:{cmdab:mfc:olor:(}{it:{help colorstyle_zh}列表}{cmd:)}}内部或“填充”
        颜色和不透明度{p_end}
{p2col:{cmdab:mlc:olor:(}{it:{help colorstyle_zh}列表}{cmd:)}}轮廓的颜色和不透明度{p_end}
{p2col:{cmdab:mlw:idth:(}{it:{help linewidthstyle_zh}列表}{cmd:)}}轮廓的厚度{p_end}
{p2col : {cmdab:mla:lign:(}{it:{help linealignmentstyle_zh}}{cmd:)}}轮廓
	对齐（内侧、外侧、居中）{p_end}
{p2col:{cmdab:mlsty:le:(}{it:{help linestyle_zh}列表}{cmd:)}}轮廓的整体样式{p_end}
{p2col:{cmdab:msty:le:(}{it:{help markerstyle_zh}列表}{cmd:)}}标记的整体样式{p_end}
{p2line}


{marker marker_label_options}{...}
{p2col:{it:marker_label_options}}描述{p_end}
{p2line}
{p2col:{cmd:mlabel(}{varlist}{cmd:)}}指定标记变量{p_end}
{p2col:{cmdab:mlabp:osition:(}{it:{help clockposstyle_zh:clockpos}列表}{cmd:)}}标签的位置{p_end}
{p2col:{cmdab:mlabv:position:(}{varname}{cmd:)}}标签位置 2{p_end}
{p2col:{cmdab:mlabg:ap:(}{it:{help size_zh}列表}{cmd:)}}标记与标签之间的间隙{p_end}
{p2col:{cmdab:mlabang:le:(}{it:{help anglestyle_zh}列表}{cmd:)}}标签的角度{p_end}
{p2col:{cmdab:mlabs:ize:(}{it:{help textsizestyle_zh}列表}{cmd:)}}标签的大小{p_end}
{p2col:{cmdab:mlabc:olor:(}{it:{help colorstyle_zh}列表}{cmd:)}}标签的颜色和不透明度{p_end}
{p2col:{cmdab:mlabt:extstyle:(}{it:{help textstyle_zh}列表}{cmd:)}}文本的整体样式{p_end}
{p2col:{cmdab:mlabsty:le:(}{it:{help markerlabelstyle_zh}列表}{cmd:)}}标签的整体样式{p_end}
{p2line}


{marker connect_options}{...}
{p2col:{it:connect_options}}描述{p_end}
{p2line}
{p2col:{cmdab:c:onnect:(}{it:{help connectstyle_zh}列表}{cmd:)}}连接点的方式{p_end}
{p2col:{cmd:sort}[{cmd:(}{varlist}{cmd:)}]}连接前如何对数据进行排序{p_end}
{p2col:{cmdab:cmis:sing:(}{c -(}{cmd:y}|{cmd:n}{c )-} ...{cmd:)}}忽略缺失值{p_end}

{p2col:{cmdab:l:pattern:(}{it:{help linepatternstyle_zh}列表}{cmd:)}}线条模式（实线、虚线等）{p_end}
{p2col:{cmdab:lw:idth:(}{it:{help linewidthstyle_zh}列表}{cmd:)}}线的厚度{p_end}
{p2col:{cmdab:lc:olor:(}{it:{help colorstyle_zh}列表}{cmd:)}}线的颜色和不透明度{p_end}
{p2col : {cmdab:la:lign:(}{it:{help linealignmentstyle_zh}}{cmd:)}}线对齐（内侧、外侧、居中）{p_end}
{p2col:{cmdab:lsty:le:(}{it:{help linestyle_zh}列表}{cmd:)}}线的整体样式{p_end}
{p2line}


{marker composite_style_option}{...}
{p2col:{it:composite_style_option}}描述{p_end}
{p2line}
{p2col:{cmdab:psty:le:(}{it:{help pstyle_zh}列表}{cmd:)}}所有的 {cmd:...style()}
        选项{p_end}
{p2line}
{p 4 6 2}
请参见 {it:{help scatter##remarks19:附录：样式和复合样式}} 下的 {it:备注}。

{marker jitter_options}
{p2col:{it:jitter_options}}描述{p_end}
{p2line}
{p2col:{cmd:jitter(}{it:#}{cmd:)}}扰动点的位置{p_end}
{p2col:{cmd:jitterseed(}{it:#}{cmd:)}}为 {cmd:jitter()} 指定随机数种子{p_end}
{p2line}
{p 4 6 2}
请参见 {it:{help scatter##jitter:抖动的标记}} 下的 {it:备注}。

{marker axis_choice_options}{...}
{p2col:{it:axis_choice_options}}描述{p_end}
{p2line}
{p2col:{cmdab:yax:is:(}{it:#} [{it:#} ...]{cmd:)}}使用哪个 {it:y} 轴{p_end}
{p2col:{cmdab:xax:is:(}{it:#} [{it:#} ...]{cmd:)}}使用哪个 {it:x} 轴{p_end}
{p2line}


{marker twoway_options}{...}
{p2col:{it:twoway_options}}描述{p_end}
{p2line}
{p2col:{it:{help added_line_options_zh}}}在指定的 {it:y} 或 {it:x} 值处绘制线{p_end}
{p2col:{it:{help added_text_options_zh}}}在指定的 ({it:y},{it:x}) 值处显示文本{p_end}

{p2col:{it:{help axis_options_zh}}}标签、刻度、网格、对数尺度{p_end}
{p2col:{it:{help title_options_zh}}}标题、副标题、注释、说明{p_end}
{p2col:{it:{help legend_options_zh}}}解释符号和线条样式的图例{p_end}

{p2col:{help scale_option_zh:{bf:scale(}{it:#}{bf:)}}}调整文本和标记的大小{p_end}
{p2col:{it:{help region_options_zh}}}外框、阴影、长宽比{p_end}
{p2col:{it:{help aspect_option_zh}}}限制图表区域的长宽比{p_end}
{p2col:{help scheme_option_zh:{bf:scheme(}{it:schemename}{bf:)}}}整体外观{p_end}
{p2col:{help play_option_zh:{bf:play(}{it:recordingname}{bf:)}}}播放来自 {it:recordingname} 的编辑{p_end}

{p2col:{help by_option_zh:{bf:by(}{it:varlist}{bf:, ...)}}}为子组重复绘制{p_end}
{p2col:{help nodraw_option_zh:{bf:nodraw}}}抑制图形显示{p_end}
{p2col:{help name_option_zh:{bf:name(}{it:name}{bf:, ...)}}}指定图的名称{p_end}
{p2col:{help saving_option_zh:{bf:saving(}{it:filename}{bf:, ...)}}}将图保存到文件{p_end}

{p2col:{it:{help advanced_options_zh}}}不易解释{p_end}
{p2line}
{p2colreset}{...}

{marker weight}{...}
{p 4 6 2}
允许使用 {cmd:aweight}s、{cmd:fweight}s 和 {cmd:pweight}s；请参阅 {help weight_zh}。

{marker menu}{...}
{title:菜单}

{phang}
{bf:图形 > 双变量图（散点、线等）}

{marker description}{...}
{title:描述}

{pstd}
{cmd:scatter} 绘制散点图，是所有 {cmd:twoway} 图类型的母体，如 {helpb twoway line} 和 {helpb twoway lfit}。

{pstd}
{cmd:scatter}既是一个命令，也是一个 {it:plottype}，如在 {manhelp twoway G-2:graph twoway} 中定义。因此，{cmd:scatter} 的语法为 

	{cmd:. graph twoway scatter} ...

	{cmd:. twoway scatter} ...

	{cmd:. scatter} ...

{pstd}
作为一种图类型，{cmd:scatter}可以与其他 {helpb twoway} 家族中的图类型组合，如 

{phang2}
	{cmd:. twoway (scatter} ...{cmd:) (line} ...{cmd:) (lfit} ...{cmd:)} ...

{pstd}
这也可以写为

{phang2}
	{cmd:. scatter} ... {cmd:|| line} ... {cmd:|| lfit} ... {cmd:||} ...


{marker linkspdf}{...}
{title:PDF 文档链接}

        {mansection G-2 graphtwowayscatterQuickstart:快速开始}

        {mansection G-2 graphtwowayscatterRemarksandexamples:备注和示例}

{pstd}
上述部分未包含在本帮助文件中。


{marker options}{...}
{title:选项}

{phang}
{it:marker_options}
    指定图上点的标记方式。
    标记是用于标记图上点的位置的墨水。
    标记有形状、颜色、大小和其他特征。
    详见 {manhelpi marker_options G-3} 关于标记的描述
    及指定它们的选项。

{pmore}
    默认的 {cmd:msymbol(O D S T + X o d s t smplus x)}。
    {cmd:msymbol(i)} 将完全抑制标记的外观。

{phang}
{it:marker_label_options}
    指定要显示在标记旁边或代替标记的标签。
    例如，如果您绘制的是国家数据，标记标签可以让您在每个点旁边显示“阿根廷”、“玻利维亚”等，使用几个数据时，这可能是期望的。
    详见 {manhelpi marker_label_options G-3} 关于标记标签的描述
    及控制它们的选项。

{pmore}
    默认情况下，不显示标记标签。
    如果您希望在标记处显示标签，请指定 {cmd:mlabposition(0)} 和 {cmd:msymbol(i)}。

{phang}
{it:connect_options}
    指定如何连接点。
    默认情况下，不连接点。

{pmore}
    {cmd:connect()} 指定是否连接点，若连接，则连接线的形状。
    每对点之间的线可以直接连接它们或以阶梯的方式连接。

{pmore}
    {cmd:sort} 指定在连接点之前按 {it:x} 变量对数据进行排序。
    除非您追求特殊效果或数据已排序，否则请记得指定此选项。如果您追求特殊效果，并且数据未排序，您可以指定 {cmd:sort(}{varlist}{cmd:)} 以准确指定数据应该如何排序。请理解，不必要时指定 {cmd:sort} 或 {cmd:sort(}{it:varlist}{cmd:)} 会稍微减慢 Stata 的速度。
    如果您希望连接点，则必须指定 {cmd:sort}，并且需要与 {cmd:total} 一起指定 {it:twoway_option} {cmd:by()}。

{pmore}
    {cmd:cmissing(y)} 和 {cmd:cmissing(n)} 指定连接点时是否忽略缺失值；线是否应有间断。默认是 {cmd:cmissing(y)}，意味着不会有间断。

{pmore}
    {cmd:lpattern()} 指定线的样式为实线、虚线等。

{pmore}
    {cmd:lwidth()} 指定线的宽度。

{pmore}
    {cmd:lcolor()} 指定线的颜色和不透明度。

{pmore}
    {cmd:lalign()} 指定线的对齐方式。

{pmore}
    {cmd:lstyle()} 指定线的整体样式。

{pmore}
    详见 {manhelpi connect_options G-3} 获取更多关于这些
    及相关选项的信息。
    详见 {help lines_zh} 获取线条的概述。

{marker pstyle()}{...}
{phang}
{cmd:pstyle(}{it:pstyle}{cmd:)}
    指定图表的整体样式，是 {cmd:mstyle()}、{cmd:mlabstyle()}、{cmd:lstyle()}、{cmd:connect()} 和 {cmd:cmissing()} 的组合。默认情况下，对于第一个图为 {cmd:pstyle(p1)}，对于第二个图为 {cmd:pstyle(p2)}，依此类推。请参见 {it:{help scatter##remarks19:附录：样式和复合样式}} 下的 {it:备注}。

{phang}
{cmd:jitter(}{it:#}{cmd:)}
     在绘图之前向数据添加球形随机噪声。
     {it:#} 代表噪声的大小，作为图形区域的百分比。此选项在绘制数据时很有用，否则会导致一些点重叠在一起，难以判断绘制的点是否代表一个或 1,000 个观察值。

{pmore}
     常见的指定有 {cmd:jitter(5)} 或 {cmd:jitter(6)}；{cmd:jitter(0)} 为默认值。

{phang}
{cmd:jitterseed(}{it:#}{cmd:)}
     指定由 {cmd:jitter()} 选项添加的随机噪声的种子。{it:#} 应指定为正整数。使用此选项以在指定 {cmd:jitter()} 选项时重现相同的绘制点。

{phang}
{it:axis_choice_options}
    用于当您有多个 {it:x} 或 {it:y} 轴时。详见 {manhelpi axis_choice_options G-3} 获取更多信息。

{phang}
{it:twoway_options} 包括

{pmore}
    {it:added_line_options},
	指定在图表上绘制水平或垂直线；详见 {manhelpi added_line_options G-3}。如果您关注在绘图区绘制网格线，请参见下方的 {it:axis_options}。

{pmore}
    {it:added_text_options},
	指定要在图表上显示的文本（位于绘图区内）；详见 {manhelpi added_text_options G-3}。

{pmore}
    {it:axis_options},
	允许您指定标签、刻度和网格。这些选项
	还允许您获得对数尺度；详见 {manhelpi axis_options G-3}。

{pmore}
    {it:title_options},
       允许您指定标题、副标题、注释和说明，以放置在图表上；详见 {manhelpi title_options G-3}。

{pmore}
    {it:legend_options},
	允许您指定解释符号和线条样式的图例；详见 {manhelpi legend_options G-3}。

{pmore}
    {cmd:scale(}{it:#}{cmd:)},
	使图表上的所有文本和标记增大或缩小
	（{cmd:scale(1)} 意味着不改变）；详见 {manhelpi scale_option G-3}。

{pmore}
    {it:region_options},
	允许您控制长宽比，并指定图表是否应有外框或阴影；详见 {manhelpi region_options G-3}。

{pmore}
    {cmd:scheme(}{it:schemename}{cmd:)},
	指定图表的整体外观；详见 {manhelpi scheme_option G-3}。

{pmore}
包含帮助播放选项描述

{pmore}
    {cmd:by(}{varlist}{cmd:,} ...{cmd:)},
	允许为每个数据子组绘制多个图；详见 {manhelpi by_option G-3}。

{pmore}
    {cmd:nodraw},
	防止显示图形；详见 {manhelpi nodraw_option G-3}。

{pmore}
    {cmd:name(}{it:name}{cmd:)},
	允许您在内存中为图指定一个与 {cmd:Graph} 不同的名称；详见 
	{manhelpi name_option G-3}。

{pmore}
    {cmd:saving(}{it:filename}[{cmd:, asis replace}]{cmd:)},
	允许您将图保存到磁盘；详见 
	{manhelpi saving_option G-3}。

{pmore}
    其他选项允许抑制图形显示、命名图形等。

{pmore}
请参见 {manhelpi twoway_options G-3}。


{marker remarks}{...}
{title:备注}

{pstd}
备注按以下标题呈现：

	{help scatter##remarks1:典型用法}
	{help scatter##remarks2:散点语法}
	{help scatter##remarks3:图表的整体外观}
	{help scatter##remarks4:图表的大小和长宽比}
	{help scatter##remarks5:标题}
	{help scatter##remarks6:轴标题}
	{help scatter##remarks7:轴标签和刻度}
	{help scatter##remarks8:网格线}
	{help scatter##remarks9:附加线}
	{help scatter##remarks10:轴范围}
	{help scatter##remarks11:对数尺度}
	{help scatter##remarks12:多个轴}
	{help scatter##remarks13:标记}
	{help scatter##remarks14:加权标记}
	{help scatter##remarks15:抖动标记}
	{help scatter##remarks16:连接的线}
	{help scatter##remarks17:按组绘制图形}
	{help scatter##remarks18:保存图形}
	{help scatter##video:视频示例}
	{help scatter##remarks19:附录：样式和复合样式}


{marker remarks1}{...}
{title:典型用法}

{pstd}
默认情况下，散点图类型单独标记每个点的位置：

	{cmd:. sysuse uslifeexp2}

	{cmd:. scatter le year}
	  {it:({stata "gr_example uslifeexp2: scatter le year":点击运行})}
{* graph scatter1}{...}

{pstd}
通过指定选项，您可以产生与 {helpb twoway connected} 相同的效果，

	{cmd:. scatter le year, connect(l)}
	  {it:({stata "gr_example uslifeexp2: scatter le year, c(l)":点击运行})}
{* graph scatter2}{...}

{pstd}
或者 {cmd:twoway} {cmd:line}：

	{cmd:. scatter le year, connect(l) msymbol(i)}
	  {it:({stata "gr_example uslifeexp2: scatter le year, c(l) m(i)":点击运行})}
{* graph scatter3}{...}

{pstd}
实际上，所有其他双变量图类型最终都回到执行 {cmd:scatter}。 {cmd:scatter} 真实地是 Stata 中所有双变量图的母体。


{marker remarks2}{...}
{title:散点语法}

{pstd}
请参见 {manhelp twoway G-2:graph twoway} 获取 {cmd:graph} {cmd:twoway} 语法的概述。特别是对于  {cmd:graph} {cmd:twoway} {cmd:scatter}，唯一需要知道的是，如果指定了超过两个变量，除了最后一个变量外，所有变量都会被解释为 {it:y} 变量。例如：

	{cmd:. scatter} {it:y1var} {it:y2var} {it:xvar}

{pstd}
将绘制 {it:y1var} 与 {it:xvar} 的关系，并与 {it:y2var} 与 {it:xvar} 的关系叠加，所以这与键入

{phang2}
	{cmd:. scatter} {it:y1var} {it:xvar} {cmd:|| scatter} {it:y2var} {it:xvar}

{pstd}
是相同的。使用多变量语法时，在指定散点图选项（即，除语法图中定义的 {it:twoway_options} 外的所有选项）时，参数 {it:y1var}、{it:y2var}、... 以空格分开的方式指定。也就是说，您可以键入

{phang2}
	{cmd:. scatter} {it:y1var} {it:y2var} {it:xvar}{cmd:, ms(O i) c(. l)}

{pstd}
{cmd:ms()} 和 {cmd:c()} 是 {cmd:msymbol()} 和 {cmd:connect()} 选项的缩写；请参见 {manhelpi marker_options G-3} 和 {manhelpi connect_options G-3}。在任何情况下，上述结果与键入

{phang2}
	{cmd:. scatter} {it:y1var} {it:xvar}{cmd:, ms(O) c(.)}
		{cmd:|| scatter} {it:y2var} {it:xvar}{cmd:, ms(i) c(l)}

{pstd}
是相同的。使用多变量语法时，选项和 {it:y} 变量之间不需要一对一的对应关系。如果您键入

{phang2}
	{cmd:. scatter} {it:y1var} {it:y2var} {it:xvar}{cmd:, ms(O) c(l)}

{pstd}
那么选项 {cmd:ms()} 和 {cmd:c()} 将对第二个散点图具有默认值。如果您键入

{phang2}
	{cmd:. scatter} {it:y1var} {it:y2var} {it:xvar}{cmd:, ms(O S i) c(l l l)}

{pstd}
对于不存在的第三个变量的额外选项将被忽略。

{pstd}
如果您希望为某一个 {it:y} 变量指定默认值，可以用句号（{cmd:.}）指定：

{phang2}
	{cmd:. scatter} {it:y1var} {it:y2var} {it:xvar}{cmd:, ms(. O) c(. l)}

{pstd}
还有其他简写可使多个参数的指定更容易；详见 {manhelpi stylelists G-4}。

{pstd}
由于多个变量被解释为多个 {it:y} 变量，因此，要绘制包含多个 {it:x} 变量的图，您必须将单独的 {cmd:scatter} 命令串联起来：

{phang2}
	{cmd:. scatter} {it:yvar} {it:x1var}{cmd:,} ... {cmd:||}
		{cmd:. scatter} {it:yvar} {it:x2var}{cmd:,} ...


{marker remarks3}{...}
{title:图表的整体外观}

{pstd}
图表的整体外观受到方案的极大影响，并且有一个 {cmd:scheme()} 选项允许您指定使用哪个方案。
我们之前显示了 {cmd:scatter} {cmd:le} {cmd:year} 的结果。以下是重复使用 {cmd:economist} 方案的相同图表：

	{cmd}. sysuse uslifeexp2, clear

	. scatter le year,
		title("散点图")
		subtitle("美国出生时的预期寿命")
		note("1")
		caption("来源：国家生命统计报告，
			 第 50 卷，第 6 期")
		scheme(economist){txt}
	  {it:({stata "gr_example2 grscae":点击运行})}
{* graph scatter4}{...}

{pstd}
详见 {manhelp schemes G-4:方案介绍}。


{marker remarks4}{...}
{title:图表的大小和长宽比}

{pstd}
图表的大小和长宽比由 {it:region_options} {cmd:ysize(}{it:#}{cmd:)} 和 {cmd:xsize(}{it:#}{cmd:)} 控制，指定图表的高度和宽度（单位为英寸）。
例如，

{phang2}
	{cmd:. scatter} {it:yvar} {it:xvar}{cmd:, xsize(4) ysize(4)}

{pstd}
将生成一个 4x4 英寸的正方形图。
详见 {manhelpi region_options G-3}。


{marker remarks5}{...}
{title:标题}

{pstd}
默认情况下，图表上不显示标题，但是 {it:title_options} {cmd:title()}、{cmd:subtitle()}、{cmd:note()}、{cmd:caption()} 和 {cmd:legend()} 允许您指定希望出现的标题，并且控制它们的位置和大小。 
例如，

{phang2}
	{cmd:. scatter} {it:yvar} {it:xvar}{cmd:, title("我的标题")}

{pstd}
将绘制图表并在顶部包括“我的标题”（不带引号）。允许使用多行标题。键入

{phang2}
	{cmd:. scatter} {it:yvar} {it:xvar}{cmd:, title("我的标题" "第二行")}

{pstd}
将创建一个两行标题。然而，上述表示可能更好地作为一个标题后跟一个副标题：

{phang2}
	{cmd:. scatter} {it:yvar} {it:xvar}{cmd:, title("我的标题") subtitle("第二行")}

{pstd}
无论如何，请参见 {manhelpi title_options G-3}。


{marker remarks6}{...}
{title:轴标题}

{pstd}
标题默认出现在 {it:y} 和 {it:x} 轴上。轴的标题与正在绘制的变量名称相同，或者，如果变量具有变量标签，则用其变量标签命名。 {it:axis_title_options} {cmd:ytitle()} 和 {cmd:xtitle()} 允许您重写这一点。如果您指定

{phang2}
	{cmd:. scatter} {it:yvar} {it:xvar}{cmd:, ytitle("")}

{pstd}
则 {it:y} 轴上的标题将消失。如果您指定

{phang2}
	{cmd:. scatter} {it:yvar} {it:xvar}{cmd:, ytitle("变化率")}

{pstd}
那么 {it:y} 轴的标题将变为“变化率”。
与所有标题一样，允许使用多行标题：

{phang2}
	{cmd:. scatter} {it:yvar} {it:xvar}{cmd:, ytitle("事件时间" "变化率")}

{pstd}
请参见 {manhelpi axis_title_options G-3}。


{marker remarks7}{...}
{title:轴标签和刻度}

{pstd}
默认情况下，每个轴上大约放置五个主要刻度和标签。
{it:axis_label_options} {cmd:ylabel()} 和 {cmd:xlabel()} 允许您控制这一点。键入

{phang2}
	{cmd:. scatter} {it:yvar} {it:xvar}{cmd:, ylabel(#10)}

{pstd}
将在 {it:y} 轴上放置大约 10 个标签和刻度。键入

{phang2}
	{cmd:. scatter} {it:yvar} {it:xvar}{cmd:, ylabel(0(1)9)}

{pstd}
将在值 0、1、...、9 处放置确切的 10 个标签。

{pstd}
{cmd:ylabel()} 和 {cmd:xlabel()} 具有其他功能，并且提供了次要标签和次要刻度的选项；详见 
{manhelpi axis_label_options G-3}。


{marker remarks8}{...}
{title:网格线}

{pstd}
如果您使用 {cmd:s2} 系列方案中的一个成员 -- 详见 {manhelp scheme_s2 G-4:方案 s2} -- 默认情况下包含 {it:y} 轴，但不包含 {it:x} 轴的网格线。
您可以指定选项 {cmd:xlabel(,grid)} 来添加 {it:x} 网格线，并且可以指定 {cmd:ylabel(,nogrid)} 来抑制 {it:y} 网格线。

{pstd}
网格线被视为刻度的扩展，并作为子选项指定在 {it:axis_label_options} {cmd:ylabel()} 和 {cmd:xlabel()} 内。 
例如，

	{cmd:. sysuse auto, clear}

	{cmd:. scatter mpg weight, xlabel(,grid)}
	  {it:({stata "gr_example auto: scatter mpg weight, xlabel(,grid)":点击运行})}
{* graph scatter5}{...}

{pstd}
在上述示例中，网格线的位置与默认刻度和标签相同，但您也可以控制这一点。
详见 {manhelpi axis_label_options G-3}。


{marker remarks9}{...}
{title:附加线}

{pstd}
可以通过使用 {it:added_line_options} {cmd:yline()} 和 {cmd:xline()} 将线添加到图形中以强调；详见 
{manhelpi added_line_options G-3}。


{marker remarks10}{...}
{title:轴范围}

{pstd}
轴的范围或范围根据其上出现的所有事物设置 -- 被绘制的数据和标记或刻度的值。 在上面刚出现的图中，

	{cmd:. sysuse auto, clear}

	{cmd:. scatter mpg weight}
	  {it:({stata "gr_example auto: scatter mpg weight":点击运行})}
{* graph smpgweight}{...}

变量 {cmd:mpg} 的值在 12 到 41 之间，而 {it:y} 轴的范围从 10 到 41。轴被扩展到了 10<12，因为标记了值 10。
变量 {cmd:weight} 的值在 1,760 到 4,840 之间；{it:x} 轴的范围从 1,760 到 5,000。此轴被扩展到了 5,000>4,840，因为标记了值 5,000。

{pstd}
您可以通过指定 {cmd:ylabel(minmax)} 和 {cmd:xlabel(minmax)} 选项来防止轴的扩展。{cmd:minmax} 指定仅标记最小值和最大值：

{phang2}
	{cmd:. scatter mpg weight, ylabel(minmax) xlabel(minmax)}
{p_end}
	  {it:({stata "gr_example auto: scatter mpg weight, ylabel(minmax) xlabel(minmax)":点击运行})}
{* graph scatter6}{...}

{pstd}
在其他情况下，您可能希望扩大轴的范围。您可以通过指定 {cmd:range()} 描述符的 {it:axis_scale_options} {cmd:yscale()} 或 {cmd:xscale()} 来实现。
例如，

{phang2}
	{cmd:. scatter mpg weight, xscale(range(1000 5000))}

{pstd}
将扩展 {it:x} 轴以包含 1,000--5,000。我们逐个输入了选项名称，但大多数人会键入

{phang2}
	{cmd:. scatter mpg weight, xscale(r(1000 5000))}

{pstd}
{cmd:range()} 可以扩展，但永远无法缩小轴的范围。键入

{phang2}
	{cmd:. scatter mpg weight, xscale(r(1000 4000))}

{pstd}
将不会将 {cmd:weight}>4000 的汽车排除在图表外。如果这是您的期望，键入

	{cmd:. scatter mpg weight if weight<=4000}

{pstd}
请参见 
{manhelpi axis_scale_options G-3} 获取有关 {cmd:range()}、{cmd:yscale()} 和 {cmd:xscale()} 的更多信息；请参见 
{manhelpi axis_label_options G-3} 获取有关 {cmd:ylabel(minmax)} 和 {cmd:xlabel(minmax)} 的更多信息。


{marker remarks11}{...}
{title:对数尺度}

{pstd}
默认情况下，使用的是轴的算术尺度。可以通过指定 {cmd:log} 子选项为 {cmd:yscale()} 和 {cmd:xscale()} 来获得对数尺度。例如，

	{cmd:. sysuse lifeexp, clear}

	{cmd:. scatter lexp gnppc, xscale(log) xlab(,g)}
	  {it:({stata "gr_example lifeexp: scatter lexp gnppc, xscale(log) xlab(,g)":点击运行})}
{* graph scatter7}{...}

{pstd}
上述重要选项为 {cmd:xscale(log)}，使得 {cmd:gnppc} 以对数尺度呈现。

{pstd}
我们还包括了 {cmd:xlab(,g)}（是 {cmd:xlabel(, grid)} 的缩写形式）以获得 {it:x} 网格线。
值 30,000 和 40,000 被重叠显示。通过键入

	{cmd:. generate gnp000 = gnppc/1000}

{phang2}
	{cmd:. label var gnp000 "每千美元的人均 GNP"}

{phang2}
	{cmd:. scatter lexp gnp000, xsca(log) xlab(.5 2.5 10(10)40, grid)}
{p_end}
	  {it:({stata "gr_example2 scatterlog":点击运行})}
{* graph scatterlog}{...}

{pstd}
请参见 {manhelpi axis_options G-3}。


{marker remarks12}{...}
{title:多个轴}

{pstd}
图形可以有多个 {it:y} 轴和多个 {it:x} 轴。
这么做有两个原因：您可能会添加额外的轴，以便您有额外的位置标记特殊值，或您可能会在不同的尺度上绘制多个变量。在这两种情况下，指定 {cmd:yaxis()} 或 {cmd:xaxis()} 选项。详见 {manhelpi axis_choice_options G-3}。


{marker remarks13}{...}
{title:标记}

{pstd}
标记是用于标记图上点的墨水。
许多人认为标记的形状（圆形、菱形等），但它们还有其他属性，包括最重要的，其颜色和大小。
标记的形状由 {cmd:msymbol()} 选项指定，颜色由 {cmd:mcolor()} 选项指定，大小由 {cmd:msize()} 选项指定。

{pstd}
默认情况下，第一个 {it:y} 变量使用实心圆，第一个 {it:y} 变量使用实心菱形，第三个使用实心正方形，依此类推；
请参见 {it:{help scatter##marker_options:marker_options}} 下的内容，详细了解其余信息。无论如何，当您键入

	{cmd:. scatter} {it:yvar} {it:xvar}

{pstd}
结果与键入

{phang2}
	{cmd:. scatter} {it:yvar} {it:xvar}{cmd:, msymbol(O)}

{pstd}
相同。您可以通过指定其他 {cmd:msymbol()} 参数来改变所使用的符号。同样，您可以通过指定 {cmd:mcolor()} 和 {cmd:msize()} 选项来改变符号的颜色和大小。
详见 {manhelpi marker_options G-3}。

{pstd}
除了标记本身，您还可以要求标记的个别点进行标签。这些标记标签是数字或文本，出现在标记符号旁边 -- 或代替它 -- 以识别这些点。详见 {manhelpi marker_label_options G-3}。


{marker remarks14}{...}
{title:加权标记}

{pstd}
如果指定了权重 -- 请参见 {help weight_zh} -- 标记的大小按照权重的大小进行缩放。允许使用 {cmd:aweight}s、{cmd:fweight}s 和 {cmd:pweight}s，统统被视为相同；不允许使用 {cmd:iweight}s，因为 {cmd:scatter} 不知道如何处理负值。权重影响标记的大小，而不影响图的其他内容。

{pstd}
在下面，我们使用美国各州的平均数据来绘制一个州的离婚率与该州的中位年龄之间的关系。我们将符号缩放到与人口数量成比例：

	{cmd:. sysuse census, clear}

	{cmd:. generate drate = divorce / pop18p}

	{cmd:. label var drate "离婚率"}

	{cmd:. scatter drate medage [w=pop18p] if state!="Nevada", msymbol(Oh)}
	     {cmd:note("不包括内华达州的 Stata 数据"}
	     {cmd:"符号的面积与18岁以上州人口成比例")}
	  {it:({stata gr_example2 scatterwgt:点击运行})}
{* graph scatterwgt}{...}

{pstd}
注意使用 {cmd:msymbol(Oh)} 选项。空心的缩放标记看起来比实心的要好得多。

{pstd}
{cmd:scatter} 将符号进行缩放，使得图中大小的公正表征，当权重代表人口权重时。如果所有权重（除了一个）为 1,000，例外为 999，则所有符号的大小几乎相等。权重为 999 的观察值不会是一个点，而权重为 1,000 的观察值将成为巨大的圆圈，这将是权重为 1 的结果。

{pstd}
当指定 {cmd:mlabel()} 选项时，权重将被忽略。详见 {manhelpi marker_label_options G-3}。

{marker jitter}{...}
{marker remarks15}{...}
{title:抖动标记}

{pstd}
如果您指定 {cmd:jitter(}{it:#}{cmd:) }，{cmd:scatter} 将在绘制之前向您的数据添加球形随机噪声，其中 {it:#} 代表噪声的大小，作为图形区域的百分比。这在绘制分类数据时非常有用，否则，如果数据不被抖动，许多点将会重叠在一起，使人无法判断绘制的点是否代表一个或 1,000 个观察值。

{pstd}
例如，在下面用于变体的 {cmd:auto.dta} 中，{cmd:mpg} 以 5 {cmd:mpg} 单位记录，而 {cmd:weight} 以 500 磅单位记录。标准散点存在相当大的重叠度：

	{cmd:. sysuse autornd, clear}

	{cmd:. scatter mpg weight}
	  {it:({stata "gr_example autornd: scatter mpg weight":点击运行})}
{* graph scatter8}{...}

{pstd}
图中有 74 个点，尽管由于重叠看起来只有 19 个。抖动解决了这个问题：

	{cmd:. scatter mpg weight, jitter(7)}
	  {it:({stata "gr_example autornd: scatter mpg weight, jitter(7)":点击运行})}
{* graph scatter9}{...}


{marker remarks16}{...}
{title:连接的线}

{pstd}
{cmd:connect()} 选项允许您连接图形的点。默认情况下，不连接点。

{pstd}
如果您想连接点，您可能想要指定 {cmd:connect(l)}，通常缩写为 {cmd:c(l)}。 {cmd:l} 表示要用直线连接点。点可以以其他方式连接（例如阶梯连接），但通常 {cmd:c(l)} 是正确的选择。命令

	{cmd:. scatter} {it:yvar} {it:xvar}{cmd:, c(l)}

{pstd}
将绘制 {it:yvar} 与 {it:xvar} 的关系，以通常的方式标记点，并在点之间绘制直线。通常还会指定 {cmd:sort} 选项，

{phang2}
	{cmd:. scatter} {it:yvar} {it:xvar}{cmd:, c(l) sort}

{pstd}
否则，点将按数据的顺序连接。如果数据按 {it:xvar} 的顺序排列，则 {cmd:sort} 是不必要的。在创建特殊效果时，也可以省略 {cmd:sort}。

{pstd}
{cmd:connect()} 经常与 {cmd:msymbol(i)} 选项一起指定，以抑制显示单个点：

{phang2}
	{cmd:. scatter} {it:yvar} {it:xvar}{cmd:, c(l) sort m(i)}

{pstd}
详见 {manhelpi connect_options G-3}。


{marker remarks17}{...}
{title:按组绘制图形}

{pstd}
选项 {cmd:by()} 指定将为不同组分别绘制图形，并将结果排列到一个显示中。
以下我们使用国家数据按世界区域对结果进行分组：

	{cmd:. sysuse lifeexp, clear}

	{cmd:. scatter lexp gnppc, by(region)}
	  {it:({stata "gr_example lifeexp: scatter lexp gnppc, by(region)":点击运行})}
{* graph scatter10}{...}

{pstd}
变量 {cmd:region} 是数值变量，取值为 1、2 和 3。
为每个区域值绘制了单独的图。由于数值变量 {cmd:region} 被分配了值标签，因此这些图标题为“欧亚地区”、“北美”和“南美”。但如果变量 {cmd:region} 是直接包含“欧亚地区”、“北美”和“南美”的字符串，则结果将相同。

{pstd}
详见 
{manhelpi by_option G-3} 获取关于此实用选项的更多信息。


{marker remarks18}{...}
{title:保存图形}

{pstd}
要将图形保存到磁盘，以便以后打印或查看，请包括 {cmd:saving()} 选项，

{phang2}
	{cmd:. scatter} ...{cmd:,} ... {cmd:saving(}{it:filename}{cmd:)}

{pstd}
或者使用 {cmd:graph} {cmd:save} 命令：

	{cmd:. scatter} ...
	{cmd:. graph save} {it:filename}

{pstd}
请参见 {manhelpi saving_option G-3} 和 {manhelp graph_save G-2:graph save}。同时查阅 {help gph files} 了解如何后续使用类似 {it:filename}{cmd:.gph} 的文件。


{marker video}{...}
{title:视频示例}

{phang}
{browse "http://www.youtube.com/watch?v=GhVGpe3lb3E":Stata 中的基本散点图}


{marker remarks19}{...}
{title:附录：样式和复合样式}

{pstd}
许多选项以样式一词结尾，包括 
{cmd:mstyle()}、{cmd:mlabstyle()} 和 {cmd:lstyle()}。例如，选项 {cmd:mstyle()} 被描述为设置标记的“整体外观”。那是什么意思？

{pstd}
某样本的外观（标记、标记标签、线条）通过许多详细选项来指定。对于标记，选项 {cmd:msymbol()} 指定其形状，{cmd:mcolor()} 指定其颜色和不透明度，{cmd:msize()} 指定其大小，等等。

{pstd}
样式指定相关选项设置的组合。如果您键入选项 {cmd:mstyle(p1)}，则您将指定一整套适用于 {cmd:msymbol()}、{cmd:mcolor()}、{cmd:msize()} 和所有其他 {cmd:m*()} 选项的值。 {cmd:p1} 被称为样式名称，而 {cmd:p1} 包含了这些设置。

{pstd}
关于 {cmd:mstyle()} 和所有以样式一词结尾的选项，在本手册中您将阅读此类声明

{pmore}
    选项 {it:whatever}{cmd:style()} 指定 {it:whatever} 的整体外观，如其 {it:(插入列表这里)}。其他选项允许您更改 {it:whatever} 属性，但 {it:whatever}{cmd:style()} 是起点。

{pmore}
     由于您想更改某个 {it:whatever} 的外观，而不必指定 {it:whatever}{cmd:style()}。而且实际上，大多数人很少指定 {it:whatever}{cmd:style()} 选项。您在下面另一个样式存在且正是您所期望时，或当另一个样式可以让您指定更少的更改以获得所需内容时，您会指定 {it:whatever}{cmd:style()}。

{pstd}
样式实际上有两种形式，称为 {it:复合样式} 和 {it:详细样式}，上述声明仅适用于复合样式，并且仅出现在关于复合样式的手册条目中。
复合样式在以样式一词结尾的选项中进行指定。以下是复合样式的示例：

	{cmd:mstyle(}{it:{help symbolstyle_zh}}{cmd:)}
	{cmd:mlstyle(}{it:{help linestyle_zh}}{cmd:)}
	{cmd:mlabstyle(}{it:{help markerlabelstyle_zh}}{cmd:)}
	{cmd:lstyle(}{it:{help linestyle_zh}}{cmd:)}
	{cmd:pstyle(}{it:{help pstyle_zh}}{cmd:)}

{pstd}
以下是详细样式的示例：

	{cmd:mcolor(}{it:{help colorstyle_zh}}{cmd:)}
	{cmd:mlwidth(}{it:{help linewidthstyle_zh}}{cmd:)}
	{cmd:mlabsize(}{it:{help textsizestyle_zh}}{cmd:)}
	{cmd:lpattern(}{it:{help linepatternstyle_zh}}{cmd:)}

{pstd}
在上述示例中，请仔细区分选项名称（如 {cmd:mcolor()}）和选项参数（如 {it:colorstyle}）。{it:colorstyle} 是详细样式的一个例子，因为它出现在选项 {cmd:mcolor()} 的选项中，并且选项名称不以样式一词结束。

{pstd}
详细样式精确指定了某一属性的外观，而复合样式则通过详细样式值指定“整体外观”。

{pstd}
复合样式有时包含其他复合样式作为成员。例如，当您指定 {cmd:mstyle()} 选项时 -- 它指定标记的整体外观 -- 您还在指定一个 {cmd:mlstyle()} -- 它规定了标记轮廓形状的线条的整体外观。这并不意味着您不能同时指定 {cmd:mlstyle()} 选项。这只是意味着指定 {cmd:mstyle()} 隐含了一个 {cmd:mlstyle()}。选择选项的顺序无关紧要。您可以键入

{phang2}
	{cmd:. scatter} ...{cmd:,} ... {cmd:mstyle(}...{cmd:)} ... {cmd:mlstyle(}...{cmd:)} ...

{pstd}
或

{phang2}
	{cmd:. scatter} ...{cmd:,} ... {cmd:mlstyle(}...{cmd:)} ... {cmd:mstyle(}...{cmd:)} ...

{pstd}
无论哪种方式，{cmd:mstyle()} 都会如您所指定，而 {cmd:mlstyle()} 也会按照您的意愿进行重置。相同的原则适用于混合复合样式和详细样式选项。选项 {cmd:mstyle()} 隐含了一个 {cmd:mcolor()} 值。即使如此，您可以键入

{phang2}
	{cmd:. scatter} ...{cmd:,} ... {cmd:mstyle(}...{cmd:)} ... {cmd:mcolor(}...{cmd:)} ...

{pstd}
或

{phang2}
	{cmd:. scatter} ...{cmd:,} ... {cmd:mcolor(}...{cmd:)} ... {cmd:mstyle(}...{cmd:)} ...

{pstd}
结果将是一样的。

{pstd}
最大的复合样式是 {cmd:pstyle(}{it:pstyle}{cmd:)}。它包含所有其他复合样式，而 {cmd:scatter}（实际上，{cmd:twoway}）充分利用了这一宏伟样式。当您键入

{phang2}
	{cmd:. scatter} {it:y1var} {it:y2var} {it:xvar}{cmd:,} ...

{pstd}
结果与键入 

{phang2}
	{cmd:. scatter} {it:y1var} {it:y2var} {it:xvar}{cmd:,} {cmd:pstyle(p1 p2)} ...

{pstd}
相同。也就是说，{it:y1var} 与 {it:xvar} 以 {cmd:pstyle(p1)} 绘制，而 {it:y2var} 与 {it:xvar} 以 {cmd:pstyle(p2)} 绘制。正是 {cmd:pstyle(p1)} 设置了所有的默认值 -- 使用哪些标记符号，它们的颜色等等。

{pstd}
如果您输入如下代码

{phang2}
	{cmd:. scatter} {it:y1var} {it:xvar}{cmd:,} ... {cmd:||}
		{cmd:scatter} {it:y2var} {it:xvar}{cmd:,} ...

{pstd}
{it:y1var} 与 {it:xvar} 将以 {cmd:pstyle(p1)} 绘制，而 {it:y2var} 与 {it:xvar} 将以 {cmd:pstyle(p2)} 绘制，就好像您键入了

{phang2}
	{cmd:. scatter} {it:y1var} {it:xvar}{cmd:,} {cmd:pstyle(p1)} ... {cmd:||}
		{cmd:scatter} {it:y2var} {it:xvar}{cmd:,} {cmd:pstyle(p2)} ...

{pstd}
相同的道理适用于将 {cmd:scatter} 与其他图类型混合的情况：

{phang2}
	{cmd:. scatter} {it:y1var} {it:xvar}{cmd:,} ... {cmd:||}
		{cmd:line} {it:y2var} {it:xvar}{cmd:,} ...

{pstd}
等同于

{phang2}
	{cmd:. scatter} {it:y1var} {it:xvar}{cmd:,} {cmd:pstyle(p1)} ... {cmd:||}
		{cmd:line} {it:y2var} {it:xvar}{cmd:,} {cmd:pstyle(p2)} ...

{pstd}
并且

	{cmd:. twoway (}..., ...{cmd:) (}..., ...{cmd:),} ...

{pstd}
等同于

{phang2}
	{cmd:. twoway (}..., {cmd:pstyle(p1)} ...{cmd:) (}...{cmd:,} {cmd:pstyle(p2)} ...{cmd:),} ...

{pstd}
这就是为什么我们说，利用 {cmd:scheme()} 的不仅仅是 {cmd:scatter}，而是 {cmd:twoway}。

{pstd}
您可以将此付诸实践。假设您有一个关于丈夫和妻子的数据集，并且它包含变量

	{cmd:hinc}        丈夫的收入
	{cmd:winc}        妻子的收入
	{cmd:hed}         丈夫的教育
	{cmd:wed}         妻子的教育

{pstd}
您希望绘制收入与教育之间的关系，而不对丈夫和妻子进行区分。您键入

	{cmd:. scatter hinc hed || scatter winc wed}

{pstd}
您打算在图中均等地对待丈夫和妻子，但是在上述示例中，它们被视为不同，因为 {cmd:msymbol(O)} 将用于标记 {cmd:hinc} 与 {cmd:hed} 的点，而 {cmd:msymbol(D)} 将用于指定 {cmd:winc} 与 {cmd:wed} 的点。符号的颜色也会不同。

{pstd}
您可以用多种不同方式解决这个问题。您可以指定 {cmd:msymbol()} 和 {cmd:mcolor()} 选项（见 {manhelpi marker_options G-3}），以及其他必要的详细选项，使两个散点图看起来相同。您知道，您无需全部这样做。您知道，有一种复合样式可以指定。于是您查阅手册，翻阅，发现适用的标记符号的复合样式为 {cmd:mstyle()}。

{pstd}
然而，最简单的做法是记住 {cmd:pstyle()} 包含了所有其他样式。您不必重置 {cmd:mstyle()}，只需重置 {cmd:pstyle()}，有需要的所有设置都会得到解决。键入

	{cmd:. scatter hinc hed || scatter winc wed, pstyle(p1)}

{pstd}
或者如果您愿意，

{phang2}
	{cmd:. scatter hinc hed, pstyle(p1) || scatter winc wed, pstyle(p1)}

{pstd}
不过，您不需要为第一个图指定 {cmd:pstyle(p1)}，因为那是默认值。

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <scatter.sthlp>}