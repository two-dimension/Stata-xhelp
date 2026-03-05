{smcl}
{* *! version 1.1.9  16apr2019}{...}
{viewerdialog "graph combine" "dialog graph_combine"}{...}
{vieweralsosee "[G-2] graph combine" "mansection G-2 graphcombine"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[G-2] graph use" "help graph_use_zh"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[G-2] graph save" "help graph_save_zh"}{...}
{vieweralsosee "[G-3] saving_option" "help saving_option_zh"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[G-4] Concept: gph files" "help gph_files_zh"}{...}
{viewerjumpto "Syntax" "graph_combine_zh##syntax"}{...}
{viewerjumpto "Description" "graph_combine_zh##description"}{...}
{viewerjumpto "Links to PDF documentation" "graph_combine_zh##linkspdf"}{...}
{viewerjumpto "Options" "graph_combine_zh##options"}{...}
{viewerjumpto "Remarks" "graph_combine_zh##remarks"}
{help graph_combine:English Version}
{hline}{...}
{p2colset 1 24 26 2}{...}
{p2col:{bf:[G-2] graph combine} {hline 2}}合并多个图形{p_end}
{p2col:}({mansection G-2 graphcombine:查看完整 PDF 手册条目}){p_end}
{p2colreset}{...}


{marker syntax}{...}
{title:语法}

{p 8 23 2}
{cmdab:gr:aph}
{cmd:combine}
{it:name}
[{it:name} ...]
[{cmd:,}
{it:options}]

{synoptset 25}{...}
{p2col:{it:name}}描述{p_end}
{p2line}
{p2col:{it:simplename}}内存中图形的名称{p_end}
{p2col:{it:name}{cmd:.gph}}存储在磁盘上的图形名称{p_end}
{p2col:{cmd:"}{it:name}{cmd:"}}存储在磁盘上的图形名称{p_end}
{p2line}


{p2col:{it:options}}描述{p_end}
{p2line}
{p2col:{cmdab:colf:irst}}按列显示{p_end}
{p2col:{cmdab:r:ows:(}{it:#}{cmd:)} | {cmdab:c:ols:(}{it:#}{cmd:)}}在
        {it:#}行或{it:#}列中显示{p_end}
{p2col:{cmdab:hol:es:(}{it:{help numlist_zh}}{cmd:)}}要留空的位置
       {p_end}
{p2col:{cmd:iscale(}[{cmd:*}]{it:#}{cmd:)}}文本和标记的大小{p_end}
{p2col:{cmd:altshrink}}文本等的备用缩放{p_end}
{p2col:{cmd:imargin(}{it:{help marginstyle_zh}}{cmd:)}}单个图形的边距{p_end}

{p2col:{cmdab:ycom:mon}}给{it:y}轴统一刻度{p_end}
{p2col:{cmdab:xcom:mon}}给{it:x}轴统一刻度{p_end}

{p2col:{it:{help title_options_zh}}}在合成图上显示的标题{p_end}
{p2col:{it:{help region_options_zh}}}轮廓、阴影、宽高比{p_end}

{p2col:{cmdab:com:monscheme}}将图形放置在统一的样式上{p_end}
{p2col:{help scheme_option_zh:{ul:sch}eme({it:schemename})}}整体外观{p_end}
{p2col:{help nodraw_option_zh:{bf:nodraw}}}抑制合成图的显示{p_end}
{p2col:{help name_option_zh:{bf:name(}{it:name}{bf:, ...)}}}指定合成图的名称{p_end}
{p2col:{help saving_option_zh:{bf:saving(}{it:filename}{bf:, ...)}}}将合成图保存在文件中{p_end}
{p2line}
{p2colreset}{...}


{marker description}{...}
{title:描述}

{pstd}
{cmd:graph} {cmd:combine} 将分别绘制的图形数组合并为一个图形。


{marker linkspdf}{...}
{title:PDF 文档链接}

        {mansection G-2 graphcombineQuickstart:快速开始}

        {mansection G-2 graphcombineRemarksandexamples:备注和示例}

{pstd}
上述部分不包含在此帮助文件中。


{marker options}{...}
{title:选项}

{phang}
{cmd:colfirst},
{cmd:rows(}{it:#}{cmd:)},
{cmd:cols(}{it:#}{cmd:)},
以及
{cmd:holes(}{it:{help numlist_zh}}{cmd:)}
    指定结果图形的排列方式。这些与{manhelpi by_option G-3}中描述的选项相同。

{phang}
{cmd:iscale(}{it:#}{cmd:)}
和
{cmd:iscale(*}{it:#}{cmd:)}
    指定用于调整单个图形中使用的文本和标记的大小。

{pmore}
    默认情况下，{cmd:iscale()}的大小会随着合并的图形数量{it:G}的增加而减小。
    默认参数化为一个乘法因子
    f({it:G}) -- 0<f({it:G})<1,
    f'({it:G})<0 -- 也就是说用于乘以{cmd:msize()},
    {c -(}{cmd:y}|{cmd:x}{c )-}{cmd:label(,labsize())}等，适用于
    单个图形。

{pmore}
    如果您指定{cmd:iscale(}{it:#}{cmd:)}, 您指定的数字将替代f({it:G})。{cmd:iscale(1)}意味着文本和标记应该以原始大小显示。{cmd:iscale(.5)}则使文本和标记显示为原大小的一半。我们建议您指定一个在0到1之间的数字，但您可以自由地指定大于1的数字。

{pmore}
    如果您指定{cmd:iscale(*}{it:#}{cmd:)}, 您指定的数字将乘以f({it:G})，并将该乘积用于缩放文本和标记。{cmd:iscale(*1)}是默认情况。{cmd:iscale(*1.2)}表示文本和标记应比{cmd:graph}{cmd:combine}通常选择的大小大20%。{cmd:iscale(*.8)}将使它们小20%。

{phang}
{cmd:altshrink}
    指定一种替代方法来确定文本、标记、线条厚度和线条模式的大小。每个图形上绘制的所有内容的大小就像该图形以全尺寸绘制，但以合成图的宽高比，然后将单个图形及其所有内容缩小到合成图所显示的大小。

{phang}
{cmd:imargin(}{it:marginstyle}{cmd:)}
    指定放置在单个图形周围的边距。
    请参见{manhelpi marginstyle G-4}。

{phang}
{cmd:ycommon}
和
{cmd:xcommon}
    指定之前由{cmd:graph}{cmd:twoway}绘制的单个图形的{it:y}或{it:x}轴统一刻度，并且未指定{cmd:by()}选项。请参见
    {it:{help graph combine##remarks3:组合 twoway 图形}}在下面的{it:备注}中。

{pmore} 当应用于{cmd:bar}、{cmd:box}和{cmd:dot}图形的分类轴时，这些选项没有效果。此外，当{cmd:twoway}图形与{cmd:bar}、{cmd:box}和{cmd:dot}图形合并时，这些选项仅影响与第一个合并的图形类型相同的图形。

{phang}
{it:title_options}
    允许您指定要放在合成图上的标题、副标题、备注和说明；请参见{manhelpi title_options G-3}。

{phang}
{it:region_options}
    允许您控制合成图的宽高比、大小等；请参见{manhelpi region_options G-3}。在这些选项中，{cmd:ysize(}{it:#}{cmd:)} 和 {cmd:xsize(}{it:#}{cmd:)}意义重大，它们指定结果图形的整体大小。有时希望使合成图更宽或更长。

{phang}
{cmd:commonscheme} 和 {opt scheme(schemename)}
    用于合并使用不同方案的图形。默认情况下，每个子图形将按照其自己的方案绘制。

{pmore}
    {cmd:commonscheme}指定所有子图形使用相同方案绘制，并且默认情况下，这一方案将是您的默认方案。

{pmore}
    {cmd:scheme(}{it:schemename}{cmd:)}指定使用{it:schemename}；请参见{manhelpi scheme_option G-3}。

{phang}
{cmd:nodraw}
    导致合成图被构建但不显示；请参见{manhelpi nodraw_option G-3}。

{phang}
{cmd:name(}{it:name}[{cmd:, replace}]{cmd:)}
    指定结果合成图的名称。
    {cmd:name(Graph, replace)}是默认设置。
    请参见{manhelpi name_option G-3}。

{phang}
{cmd:saving(}{it:{help filename_zh}}[{cmd:, asis replace}]{cmd:)}
    指定将合成图保存为{it:filename}。如果{it:filename}未指定扩展名，则假定为.cmd:.gph。
    {cmd:asis}指定图形以原格式保存。
    {cmd:replace}指定如果文件已经存在，可以替换它。请参见{manhelpi saving_option G-3}。


{marker remarks}{...}
{title:备注}

{pstd}
备注根据以下标题呈现：

	{help graph combine##remarks1:典型用法}
	{help graph combine##remarks2:使用内存图形的典型用法}
	{help graph combine##remarks3:组合 twoway 图形}
	{help graph combine##remarks4:高级用法}
	{help graph combine##remarks5:控制子图的宽高比}


{marker remarks1}{...}
{title:典型用法}

{pstd}
我们之前绘制了

	{cmd:. sysuse uslifeexp}

	{cmd:. line le_male   year, saving(male)}

	{cmd:. line le_female year, saving(female)}

{pstd}
我们现在希望将这两幅图合并：

	{cmd:. gr combine male.gph female.gph}
	  {it:({stata "gr_example2 combine1":单击运行})}
{* graph combine1}{...}

{pstd}
该图合并为一列后看起来会更好，并且如果我们指定{cmd:iscale(1)}以防止字体缩小：

	{cmd:. gr combine male.gph female.gph, col(1) iscale(1)}
	  {it:({stata "gr_example2 combine2":单击运行})}
{* graph combine2}{...}


{marker remarks2}{...}
{title:使用内存图形的典型用法}

{pstd}
在上述示例中，我们在文件名末尾明确地输入了{cmd:.gph}后缀：

	{cmd:. gr combine male.gph female.gph}

	{cmd:. gr combine male.gph female.gph, col(1) iscale(1)}

{pstd}
我们必须这样做，或者必须将文件名用引号括起来：

	{cmd:. gr combine "male" "female"}

	{cmd:. gr combine "male" "female", col(1) iscale(1)}

{pstd}
如果我们都没有这样做，{cmd:graph}{cmd:combine}将假设图形存储在内存中，并且会发出无法找到图形的错误。如果我们想使用内存图形而不是磁盘文件完成这些示例，我们可以在单个图形上用{name()}替换saving：

	{cmd:. sysuse uslifeexp, clear}

	{cmd:. line le_male   year, name(male)}

	{cmd:. line le_female year, name(female)}

{pstd}
然后我们可以在{cmd:graph}{cmd:combine}命令中不使用引号输入名称：

	{cmd:. gr combine male female}

	{cmd:. gr combine male female, col(1) iscale(1)}


{marker remarks3}{...}
{title:组合 twoway 图形}

{pstd}
在{it:{help graph_combine##remarks1:典型用法}}的第一个示例中，两个图形的{it:y}轴未对齐：一个具有40的最小值，而另一个大约为37。选项{cmd:ycommon}将所有{cmd:twoway}图形放置在统一的{it:y}刻度上。

	{cmd:. sysuse uslifeexp, clear}

	{cmd:. line le_male   year, saving(male)}

	{cmd:. line le_female year, saving(female)}

	{cmd:. gr combine male.gph female.gph, ycommon}
	  {it:({stata "gr_example2 combine3":单击运行})}
{* graph combine3}{...}


{marker remarks4}{...}
{title:高级用法}

	{cmd}. sysuse lifeexp, clear

	. gen loggnp = log10(gnppc)

	. label var loggnp "人均国民生产总值的对数"

	. scatter lexp loggnp,
		ysca(alt) xsca(alt)
		xlabel(, grid gmax)      saving(yx)

	. twoway histogram lexp, fraction
		xsca(alt reverse) horiz  saving(hy)

	. twoway histogram loggnp, fraction
		ysca(alt reverse)
		ylabel(,nogrid)
		xlabel(,grid gmax)       saving(hx)

	. graph combine hy.gph yx.gph hx.gph,
		hole(3)
		imargin(0 0 0 0) graphregion(margin(l=22 r=22))
		title("与人均国民生产总值相关的出生时预期寿命")
		note("来源：世界银行集团1998年的数据"){txt}
	  {it:({stata "gr_example2 combine4":单击运行})}
{* graph combine4}{...}

{pstd}
注意

		{cmd:imargin(0 0 0 0) graphregion(margin(l=22 r=22))}

{pstd}
在{cmd:graph}{cmd:combine}语句中的指定。
指定{cmd:imargin()}通过消除图形周围的边距将图形紧密排列在一起。指定{cmd:graphregion(margin())}使图形更加方正，以控制宽高比。


{* index aspect ratio, controlling}{...}
{* index fysize() tt option}{...}
{* index fxsize() tt option}{...}
{marker remarks5}{...}
{title:控制子图的宽高比}

{pstd}
上述图形可以转换为看起来像这样

	  {it:({stata "gr_example2 combine5":单击运行})}
{* graph combine5}{...}

{pstd}
通过在{it:x}轴的直方图绘制中添加{cmd:fysize(25)}，

	{cmd}. twoway histogram loggnp, fraction
		ysca(alt reverse)
		ylabel(0(.1).2), nogrid)
		xlabel(, grid gmax)       saving(hx)
		fysize(25){txt}{right:<- {it:new}  }

{pstd}
并添加{cmd:fxsize(25)}到{it:y}轴的直方图绘制中：

	{cmd}. twoway histogram lexp, fraction
		xsca(alt reverse) horiz
					 saving(hy)
		fxsize(25){txt}{right:<- {it:new}  }

{pstd}
{cmd:graph}{cmd:combine}命令保持不变。

{pstd}
{it:forced_size_options} {cmd:fysize()}和{cmd:fxsize()}在任何图形中都允许使用，其语法如下：

{p2colset 9 40 42 2}{...}
{p2col:{it:forced_size_options}}
	描述{p_end}
{p2line}
{p2col:{cmdab:fysiz:e:(}{it:{help size_zh}}{cmd:)}}
	仅使用可用高度的百分比{p_end}
{p2col:{cmdab:fxsiz:e:(}{it:{help size_zh}}{cmd:)}}
	仅使用可用宽度的百分比{p_end}
{p2line}
{p2colreset}{...}

{pstd}
控制图形宽高比有三种方法：

{phang2}
1.  指定{it:{help region_options_zh}} {cmd:ysize(}{it:#}{cmd:)} 和
    {cmd:xsize(}{it:#}{cmd:)}；{it:#}以英寸为单位。

{phang2}
2.  指定{it:region_option}
    {cmd:graphregion(margin(}{it:marginstyle}{cmd:))}。

{phang2}
3.  指定{it:forced_size_options}
    {cmd:fysize(}{it:size}{cmd:)}
    和
    {cmd:fxsize(}{it:size}{cmd:)}。

{pstd}
现在让我们区分

{phang2}
a.  控制整体图形的宽高比，以及

{phang2}
b.  控制合成图中单个图形的宽高比。

{pstd}
对于问题（a），方法（1）和（2）效果最佳。
我们在构造上述合成图时使用了方法（2） -- 我们指定了
{cmd:graphregion(margin(l=22 r=22))}。
方法1和2在{it:{help region_options##remarks2:控制宽高比}}中进行了讨论
{manhelpi region_options G-3}。

{pstd}
对于问题（b），方法（1）将不起作用，而方法（2）和（3）则执行不同的操作。

{pstd}
方法（1）控制图形显示的物理大小，因此间接控制宽高比。然而，{cmd:graph}{cmd:combine}会丢弃该物理大小信息。

{pstd}
方法（2）是控制子图宽高比的一种方式。{cmd:graph}{cmd:combine}尊重边距，假设您未指定{cmd:graph}{cmd:combine}的{cmd:imargin()}选项，这会覆盖原始边距信息。无论如何，如果您希望子图长且窄或短且宽，只需在绘制子图时指定适当的{cmd:graphregion(margin())}。当您将结果图与其他图形合并时，它将完全按照您的想法显示。长且窄或短且宽的图将在数组中与其他所有图形相邻显示。每个图形都在数组中分配了相等大小的区域，而形状不规则的图形会被绘制到其中。

{pstd}
方法（3）是唯一可以获得不等大小区域的方法。
对于上述合成图，您指定了{it:graph}{cmd:combine}的{cmd:imargin()}选项，而这一点单独使得我们无法使用方法（2），但最重要的是，您不希望得到四个大小相等的区域：

		{c TLC}{hline 15}{c TT}{hline 15}{c TRC}
		{c |} 1             {c |}             2 {c |}
		{c |}{space 15}{c |}{space 15}{c |}
		{c |}   {it:histogram}   {c |}    {it:scatter}    {c |}
		{c |}{space 15}{c |}{space 15}{c |}
		{c |}{space 15}{c |}{space 15}{c |}
		{c LT}{hline 15}{c +}{hline 15}{c RT}
		{c |} 3             {c |}             4 {c |}
		{c |}{space 15}{c |}{space 15}{c |}
		{c |}               {c |}   {it:histogram}   {c |}
		{c |}{space 15}{c |}{space 15}{c |}
		{c |}{space 15}{c |}{space 15}{c |}
		{c BLC}{hline 15}{c BT}{hline 15}{c BRC}

{pstd}
我们希望得到

		{c TLC}{hline 3}{c TT}{hline 27}{c TRC}
		{c |} {it:h} {c |}                         2 {c |}
		{c |} {it:i} {c |}                           {c |}
		{c |} {it:s} {c |}                           {c |}
		{c |} {it:t} {c |}                           {c |}
		{c |} {it:o} {c |}         {it:scatter}           {c |}
		{c |} {it:g} {c |}                           {c |}
		{c |} {it:r} {c |}                           {c |}
		{c |} {it:a} {c |}                           {c |}
		{c |} {it:m} {c |}                           {c |}
		{c LT}{hline 3}{c +}{hline 27}{c RT}
		{c |} 3 {c |}        {it:histogram}        4 {c |}
		{c BLC}{hline 3}{c BT}{hline 27}{c BRC}

{pstd}
{it:forced_size_options}使我们得以实现这一目标。您在绘制子图时，而不是在{cmd:graph}{cmd:combine}时指定{it:forced_size_options} {cmd:fysize()}和{cmd:fxsize()}。在括号内，您指定要使用的图形区域的百分比。
虽然您可以在普通情况下使用{cmd:fysize()}和{cmd:fxsize()}控制宽高比，但没必要这么做。在将要使用{cmd:graph}{cmd:combine}且希望有不等大小区域或在您将指定{cmd:graph}{cmd:combine}的{cmd:imargin()}选项时，使用{cmd:fysize()}和{cmd:fxsize()}。 
{p_end}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <graph_combine.sthlp>}