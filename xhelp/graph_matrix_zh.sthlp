{smcl}
{* *! version 1.1.13  16apr2019}{...}
{viewerdialog "graph matrix" "dialog graph_matrix"}{...}
{vieweralsosee "[G-2] graph matrix" "mansection G-2 graphmatrix"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[G-2] graph" "help graph_zh"}{...}
{vieweralsosee "[G-2] graph twoway scatter" "help scatter_zh"}{...}
{viewerjumpto "Syntax" "graph_matrix_zh##syntax"}{...}
{viewerjumpto "Menu" "graph_matrix_zh##menu"}{...}
{viewerjumpto "Description" "graph_matrix_zh##description"}{...}
{viewerjumpto "Links to PDF documentation" "graph_matrix_zh##linkspdf"}{...}
{viewerjumpto "Options" "graph_matrix_zh##options"}{...}
{viewerjumpto "Remarks" "graph_matrix_zh##remarks"}{...}
{viewerjumpto "References" "graph_matrix_zh##references"}
{help graph_matrix:English Version}
{hline}{...}
{p2colset 1 23 25 2}{...}
{p2col:{bf:[G-2] graph matrix} {hline 2}}矩阵图{p_end}
{p2col:}({mansection G-2 graphmatrix:查看完整的 PDF 手册条目}){p_end}
{p2colreset}{...}


{marker syntax}{...}
{title:语法}

{p 8 43 2}
{cmdab:gr:aph}
{cmd:matrix}
{varlist}
{ifin}
[{it:{help graph matrix##weight:权重}}]
[{cmd:,}
{it:选项}]

{synoptset 30}{...}
{p2col:{it:选项}}描述{p_end}
{p2line}
{p2col:{cmd:half}}仅绘制下三角{p_end}

{p2col:{it:{help marker_options_zh}}}标记的外观{p_end}
{p2col:{it:{help marker_label_options_zh}}}在标记上包含标签{p_end}
{p2col:{cmd:jitter(}{it:#}{cmd:)}}扰动标记的位置{p_end}
{p2col:{cmd:jitterseed(}{it:#}{cmd:)}}{cmd:jitter()}的随机数种子{p_end}

{p2col:{cmdab:diag:onal:(}{it:stringlist}{cmd:,} ...{cmd:)}}覆盖对角线上的文字{p_end}
{p2col:{cmdab:diagopt:s(}{it:{help textbox_options_zh}}{cmd:)}}对角线文本的渲染

{p2col:{help scale_option_zh:{bf:scale(}{it:#}{bf:)}}}符号、标签等的整体大小{p_end}
{p2col:{cmd:iscale(}[{cmd:*}]{it:#}{cmd:)}}图中符号、标签的大小{p_end}

{p2col:{cmdab:max:es:(}{it:{help axis_scale_options_zh}}}{p_end}
{p2col 15 37 39 2:{it:{help axis_label_options_zh}}{cmd:)}}标签、刻度、网格、对数尺度等{p_end}
{p2col:{it:{help axis_label_options_zh}}}逐轴控制{p_end}

{p2col:{help by_option_zh:{bf:by(}{it:varlist}{bf:, ...)}}}对子组重复{p_end}

{p2col:{it:{help std_options_zh}}}标题、纵横比、保存到磁盘{p_end}
{p2line}
{p2colreset}{...}
{phang}
所有允许的选项
{cmd:graph} {cmd:twoway} {cmd:scatter} 也被允许，但会被忽略。{p_end}
{phang}
{cmd:half},
{cmd:diagonal()},
{cmd:scale()} 和
{cmd:iscale()} 是 {it:唯一的} ;
{cmd:jitter()} 和
{cmd:jitterseed()} 
是 {it:最右边的} ，而
{cmd:maxes()} 是 {it:合并隐式的} ;
请参见 {help repeated options}。

{pstd}
{it:stringlist}{cmd:,} ...,
{cmd:diagonal()}允许的参数

{pin}
[{c -(}{cmd:.}|{cmd:"}{it:string}{cmd:"}{c )-}]
[ {c -(}{cmd:.}|{cmd:"}{it:string}{cmd:"}{c )-} ... ]
[{cmd:,} {it:{help textbox_options_zh}}]

{marker weight}{...}
{pstd}
允许使用 {cmd:aweight}s、{cmd:fweight}s 和 {cmd:pweight}s；请参见 {help weight_zh}。
权重影响标记的大小。
请参见 {it:{help scatter##remarks14:加权标记}}在
{manhelp scatter G-2:graph twoway scatter}。

{marker menu}{...}
{title:菜单}

{phang}
{bf:图形 > 散点图矩阵}


{marker description}{...}
{title:描述}

{pstd}
{cmd:graph} {cmd:matrix} 绘制散点图矩阵。


{marker linkspdf}{...}
{title:PDF 文档链接}

        {mansection G-2 graphmatrixQuickstart:快速入门}

        {mansection G-2 graphmatrixRemarksandexamples:备注和示例}

{pstd}
上述部分未包含在此帮助文件中。


{marker options}{...}
{title:选项}

{phang}
{cmd:half}
    指定仅绘制散点图矩阵的下三角。

{phang}
{it:marker_options}
    指定用于标记点位置的标记外观。重要的 {it:marker_options} 是
    {cmd:msymbol()}、{cmd:mcolor()} 和 {cmd:msize()}。

{pmore}
    使用的默认符号是 {cmd:msymbol(O)} -- 实心圆。您
    可以指定 {cmd:msymbol(Oh)} 如果您想要空心圆（推荐替代方案）。如果
    您有许多观察值，建议您指定 {cmd:msymbol(p)}；请参阅
    {it:{help graph matrix##remarks2:标记符号和观察数量}}
    在下面的 {it:备注} 中。请参见 {manhelpi symbolstyle G-4} 获取标记符号选择列表。

{pmore}
    默认的 {cmd:mcolor()} 由方案决定；请参阅 
    {manhelp schemes G-4:方案介绍}。请参阅 {manhelpi colorstyle G-4} 获取颜色选择列表。

{pmore}
    在指定 {cmd:msize()} 选项时要小心。在 {cmd:graph}
    {cmd:matrix} 中，标记的大小会随着指定的变量数量变化；请参见下面选项 {helpb graph matrix##iscale():iscale()}。如果
    您指定 {cmd:msize()}，这将覆盖自动缩放。

{pmore}
    请参见 {manhelpi marker_options G-3} 获取有关标记的更多信息。

{phang}
{it:marker_label_options}
    允许在点上放置标识标签。为此，您
    指定 {it:marker_label_option} {cmd:mlabel(}{varname}{cmd:)}；请参阅
    {manhelpi marker_label_options G-3}。这些选项对于散点图矩阵几乎没有用，因为它们会使图形显得过于拥挤。

{phang}
{cmd:jitter(}{it:#}{cmd:)}
    在绘图之前向数据添加球形随机噪声。
    {it:#} 表示噪声的大小，作为图形区域的百分比。这在绘图数据时非常有用，
    否则会导致点重叠。请参见
    {it:{help scatter##remarks15:抖动标记}}在
    {manhelp scatter G-2:graph twoway scatter} 中以获取关于抖动的解释。

{phang}
{cmd:jitterseed(}{it:#}{cmd:)}
     指定 {cmd:jitter()} 选项添加的随机噪声的种子。{it:#} 应被指定为正整数。使用此
     选项以便在指定 {cmd:jitter()} 选项时复现相同的绘制点。

{phang}
{cmd:diagonal(}[{it:stringlist}][{cmd:,} {it:textbox_options}]{cmd:)}
    指定要在对角线显示的文本及其样式。
    该文本用于标记图形（坐标轴）。
    默认情况下，出现在对角线上的文本是 {varlist} 的变量标签，
    或者如果变量没有标签，则是其名称。输入

{phang3}
	    {cmd:. graph matrix mpg weight displ, diag(. "车辆重量")}

{pmore}
    将更改对应于变量 {cmd:weight} 的单元格中显示的文本。我们指定句点 ({cmd:.}) 以使第一个单元格中的文本保持不变，而且我们没有输入
    第三个字符串或句号，因此我们也让第三个元素保持不变。

{pmore}
    您可以在 {it:stringlist} 后（可以省略）和逗号后指定 {it:textbox_options}。这些选项将修改文本的显示样式，但在这里几乎用不着。我们
    建议您不要指定 {cmd:diagonal(,size())} 来覆盖
    文本的默认大小。默认情况下，文本大小随着指定变量的数量变化；请参见下面选项
    {helpb graph matrix##iscale():iscale()}。
    指定 {cmd:diagonal(,size())} 将覆盖自动大小
    缩放。有关文本框的更多信息，请参见 {manhelpi textbox_options G-3}。

{phang}
{opth diagopts:(textbox_options)} 指定对角线文本的外观。
此选项是 {cmd:diagonal(, }{it:textbox_options}{cmd:)} 的快捷方式。

{phang}
{cmd:scale(}{it:#}{cmd:)}
    指定影响图中所有文本和标记大小的乘数。{cmd:scale(1)} 是默认值，{cmd:scale(1.2)}
    将使所有文本和标记增大 20%。
    请参见 {manhelpi scale_option G-3}。

{marker iscale()}{...}
{phang}
{cmd:iscale(}{it:#}{cmd:)}
和
{cmd:iscale(*}{it:#}{cmd:)}
    指定用于缩放标记、在对角线出现的文本以及出现在坐标轴上的标签和刻度的调整（乘数）。

{pmore}
    默认情况下，{cmd:iscale()} 的值随着指定的变量数量 {it:n} 的增大而减少。
    默认值参数化为乘数
    f({it:n}) -- 0<f({it:n})<1, f'({it:n})<0 -- 用于
    {cmd:msize()}、{cmd:diagonal(,size())}、{cmd:maxes(labsize())} 和 {cmd:maxes(tlength())} 。

{pmore}
    如果您指定 {cmd:iscale(}{it:#}{cmd:)}, 您指定的数字将替代 f({it:n})。我们建议您指定 0 到 1 之间的数字，但您可以自由指定大于 1 的数字。

{pmore}
    如果您指定 {cmd:iscale(*}{it:#}{cmd:)}, 您指定的数字将乘以 f({it:n})，该乘积用于缩放文本。
    在这里您应该指定 {it:#}>0； {it:#}>1 仅意味着您希望文本比 {cmd:graph}
    {cmd:matrix} 的默认值更大。

{phang}
{cmd:maxes(}{it:axis_scale_options axis_label_options}{cmd:)}
    影响坐标轴的缩放和外观。这是您在选项内指定选项的情况。

{pmore}
    考虑 {it:axis_scale_options}
    {c -(}{cmd:y}|{cmd:x}{c )-}{cmd:scale(log)}，使用对数尺度。
    输入 {cmd:maxes(yscale(log)} {cmd:xscale(log))} 以绘制
    散点图矩阵，使用对数尺度。请记得指定
    {cmd:xscale(log)} 和 {cmd:yscale(log)}，除非您确实只想对 {it:y} 轴或仅 {it:x}
    轴进行对数处理。

{pmore}
    或考虑 {it:axis_label_options}
    {c -(}{cmd:y}|{cmd:x}{c )-}{cmd:label(,grid)}，添加网格线。
    指定
    {cmd:maxes(ylabel(,grid))} 添加水平网格线，
    {cmd:maxes(xlabel(,grid))} 添加垂直网格线，
    和两个选项以便在两个方向添加网格线。
    使用两个选项时，可以指定 {cmd:maxes()} 选项
    两次 -- {cmd:maxes(ylabel(,grid)) maxes(xlabel(,grid))} -- 或
    一次合并 -- {cmd:maxes(ylabel(,grid) xlabel(,grid))} -- 没有区别，因为 {cmd:maxes()} 是 {it:合并隐式的}；请参见
    {help repeated options}。

{pmore}
    请参见 {manhelpi axis_scale_options G-3} 和
    {manhelpi axis_label_options G-3}，以获取可能出现在 {cmd:maxes()} 内的子选项。在阅读这些条目时，忽略
    {cmd:axis(}{it:#}{cmd:)} 子选项；如果您指定它，{cmd:graph} {cmd:matrix} 将忽略它。

{marker axis_label_options_desc}{...}
{phang}
{it:axis_label_options}
    允许您逐轴控制标签。不要将此与 {cmd:maxes(}{it:axis_label_options}{cmd:)} 混淆，
    后者指定影响所有轴的选项。
    {it:axis_label_options} 在 {cmd:maxes()} 选项外指定时，
    仅指定影响其中一个坐标轴的选项。{it:axis_label_options}
    可以为每个坐标轴重复指定。

{pmore}
    当您在 {cmd:maxes()} 外指定 {it:axis_label_options} 时，
    必须指定坐标标签子选项 {cmd:axis(}{it:#}{cmd:)}。
    例如，您可以输入

{phang3}
	    {cmd:. graph matrix mpg weight displ, ylabel(0(5)40, axis(1))}

{pmore}
    这将对第一个 {it:y} 轴（最右侧的轴）标记指定值。
    坐标轴编号如下：

			       {it:x}               {it:x}
			     {cmd:axis(2)}         {cmd:axis(4)}
		    {c TLC}{hline 7}{c TT}{hline 7}{c TT}{hline 7}{c TT}{hline 7}{c TT}{hline 7}{c TRC}
{...}
		    {c |}       {c |} v1/v2 {c |} v1/v3 {c |} v1/v4 {c |} v1/v5 {c |}  {it:y} {cmd:axis(1)}
{...}
		    {c LT}{hline 7}{c +}{hline 7}{c +}{hline 7}{c +}{hline 7}{c +}{hline 7}{c RT}
{...}
	  {it:y} {cmd:axis(2)} {c |} v2/v1 {c |}       {c |} v2/v3 {c |} v2/v4 {c |} v2/v5 {c |}
		    {c LT}{hline 7}{c +}{hline 7}{c +}{hline 7}{c +}{hline 7}{c +}{hline 7}{c RT}
{...}
		    {c |} v3/v1 {c |} v3/v2 {c |}       {c |} v3/v4 {c |} v3/v5 {c |}  {it:y} {cmd:axis(3)}
		    {c LT}{hline 7}{c +}{hline 7}{c +}{hline 7}{c +}{hline 7}{c +}{hline 7}{c RT}
{...}
	  {it:y} {cmd:axis(4)} {c |} v4/v1 {c |} v4/v2 {c |} v4/v3 {c |}       {c |} v4/v5 {c |}
		    {c LT}{hline 7}{c +}{hline 7}{c +}{hline 7}{c +}{hline 7}{c +}{hline 7}{c RT}
{...}
		    {c |} v5/v1 {c |} v5/v2 {c |} v5/v3 {c |} v5/v4 {c |}       {c |}  {it:y} {cmd:axis(5)}
		    {c BLC}{hline 7}{c BT}{hline 7}{c BT}{hline 7}{c BT}{hline 7}{c BT}{hline 7}{c BRC}
		        {it:x               x               x}
		      {cmd:axis(1)         axis(3)         axis(5)}

{pmore}
如果指定了 {cmd:half}，则编号方案为

		    {c TLC}{hline 7}{c TRC}
		    {c |}       {c |}
		    {c LT}{hline 7}{c +}{hline 7}{c TRC}
	  {it:y} {cmd:axis(2)} {c |} v2/v1 {c |}       {c |}
		    {c LT}{hline 7}{c +}{hline 7}{c +}{hline 7}{c TRC}
	  {it:y} {cmd:axis(3)} {c |} v3/v1 {c |} v3/v2 {c |}       {c |}
		    {c LT}{hline 7}{c +}{hline 7}{c +}{hline 7}{c +}{hline 7}{c TRC}
{...}
	  {it:y} {cmd:axis(4)} {c |} v4/v1 {c |} v4/v2 {c |} v4/v3 {c |}       {c |}
		    {c LT}{hline 7}{c +}{hline 7}{c +}{hline 7}{c +}{hline 7}{c +}{hline 7}{c TRC}
{...}
	  {it:y} {cmd:axis(5)} {c |} v5/v1 {c |} v5/v2 {c |} v5/v3 {c |} v5/v4 {c |}       {c |}
{...}
		    {c BLC}{hline 7}{c BT}{hline 7}{c BT}{hline 7}{c BT}{hline 7}{c BT}{hline 7}{c BRC}
{...}
		       {it:x       x       x       x       x}
		     {cmd:axis(1) axis(2) axis(3) axis(4) axis(5)}

{pmore}
    请参见 {manhelpi axis_label_options G-3}；记得指定
    {cmd:axis(}{it:#}{cmd:)} 子选项，并且不要指定 {cmd:graph matrix} 选项 {cmd:maxes()}。

{phang}
{cmd:by(}{varlist}{cmd:,} ...{cmd:)}
    允许为数据的每个子组绘制多个图形。
    请参见下面 {it:备注} 中的 {it:{help graph matrix##remarks6:与 by() 一起使用}}，
    以及 {manhelpi by_option G-3}。

{phang}
{it:std_options}
    允许您指定标题
    （请参见下面的 {it:{help graph matrix##remarks5:添加标题}} 的 {it:备注}，
    以及 {manhelpi title_options G-3}），控制纵横比和背景阴影（见 {manhelpi region_options G-3}），控制图的整体外观（见 {manhelpi scheme_option G-3}），并将图保存到磁盘（见 {manhelpi saving_option G-3}）。

{pmore}
    请参见 {manhelpi std_options G-3} 获取标准选项概述。


{marker remarks}{...}
{title:备注}

{pstd}
备注按以下标题呈现：

	{help graph matrix##remarks1:典型用法}
	{help graph matrix##remarks2:标记符号和观察数量}
	{help graph matrix##remarks3:控制坐标轴标签}
	{help graph matrix##remarks4:添加网格线}
	{help graph matrix##remarks5:添加标题}
	{help graph matrix##remarks6:与 by() 一起使用}
	{help graph matrix##remarks7:历史}


{marker remarks1}{...}
{title:典型用法}

{pstd}
{cmd:graph} {cmd:matrix} 提供了一个很好的替代相关矩阵（请参见 {manhelp correlate R}），作为快速检查变量之间关系的方法：

	{cmd:. sysuse lifeexp}

	{cmd:. graph matrix popgrowth-safewater}
	  {it:({stata "gr_example lifeexp: gr matrix popgrowth-safewater":点击运行})}
{* graph grmatrix1}{...}

{pstd}
看到上面的图，我们会倾向于将 {cmd:gnppc} 转换为对数单位：

	{cmd:. generate lgnppc = ln(gnppc)}

	{cmd:. graph matrix popgr lexp lgnp safe}
	  {it:({stata "gr_example2 matrix1":点击运行})}
{* graph grmatrix2}{...}

{pstd}
有些人更喜欢只显示矩阵的一半，将“因变量”移动到列表的末尾：

	{cmd:. graph matrix popgr lgnp safe lexp, half}
	  {it:({stata "gr_example2 matrix2":点击运行})}
{* graph grmatrix3}{...}


{marker remarks2}{...}
{title:标记符号和观察数量}

{pstd}
{cmd:msymbol()} 选项 -- 缩写为 {cmd:ms()} -- 允许我们控制使用的标记符号；见 {manhelpi marker_options G-3}。
当观察数量增加时，空心符号有时效果更佳：

	{cmd:. sysuse auto, clear}

	{cmd:. graph mat mpg price weight length, ms(Oh)}
	  {it:({stata "gr_example auto: gr mat mpg price weight length, ms(Oh)":点击运行})}
{* graph grmatrix4}{...}

{pstd}
当有大量数据时，点效果最佳：

	{cmd:. sysuse citytemp, clear}

	{cmd:. graph mat heatdd-tempjuly, ms(p)}
	  {it:({stata "gr_example citytemp: gr mat heatdd-tempjuly, ms(p)":点击运行})}
{* graph citytemp}{...}


{marker remarks3}{...}
{title:控制坐标轴标签}

{pstd}
默认情况下，{it:y} 和 {it:x} 轴上大约标记三个值。当仅绘制少量变量时，增加这一数量通常效果很好：

	{cmd:. sysuse citytemp, clear}

{phang2}
	{cmd:. graph mat heatdd-tempjuly, ms(p) maxes(ylab(#4) xlab(#4))}
{p_end}
	  {it:({stata "gr_example citytemp: gr mat heatdd-tempjuly, ms(p) maxes(ylab(#4) xlab(#4))":点击运行})}
{* graph citytemp2}{...}

{pstd}
指定 {cmd:#4} 并不保证有四个标签；它指定了大约使用四个标签；请参见 {manhelpi axis_label_options G-3}。另请参见 {help graph matrix##axis_label_options_desc:{it:axis_label_options}} 以上关于逐轴控制标签的说明。


{marker remarks4}{...}
{title:添加网格线}

{pstd}
要添加水平网格线，请指定 {cmd:maxes(ylab(,grid))}，要添加垂直网格线，请指定 {cmd:maxes(xlab(,grid))}。
下面我们同时进行两者，并指定四个值被标记：

	{cmd:. sysuse lifeexp, clear}

	{cmd:. generate lgnppc = ln(gnppc)}

{phang2}
	{cmd:. graph matrix popgr lexp lgnp safe, maxes(ylab(#4, grid) xlab(#4, grid))}
{p_end}
	  {it:({stata "gr_example2 matrix3":点击运行})}
{* graph matrix3}{...}


{marker remarks5}{...}
{title:添加标题}

{pstd}
可以使用标准标题选项与 {cmd:graph} {cmd:matrix}：

	{cmd:. sysuse lifeexp, clear}

	{cmd:. generate lgnppc = ln(gnppc)}

	{cmd:. label var lgnppc "每人 GNP 的对数"}

	{cmd:. graph matrix popgr lexp lgnp safe, maxes(ylab(#4, grid) xlab(#4, grid))}
	{cmd:                  subtitle("1998 年收入预期数据摘要")}
	{cmd:                  note("来源：世界银行集团")}
	  {it:({stata "gr_example2 matrix4":点击运行})}
{* graph matrix4}{...}


{marker remarks6}{...}
{title:与 by() 一起使用}

{pstd}
{cmd:graph} {cmd:matrix} 可能与 {cmd:by()} 一起使用：

	{cmd:. sysuse auto, clear}

	{cmd:. graph matrix mpg weight displ, by(foreign)}
	  {it:({stata "gr_example auto: gr matrix mpg weight displ, by(foreign)":点击运行})}
{* graph grmatrix5}{...}

{pstd}
请参见 {manhelpi by_option G-3}。


{* index histories}{...}
{* index Hartigan 1975}{...}
{* index Tukey and Tukey 1981}{...}
{* index Chambers et al. 1983}{...}
{* index Becker and Chambers 1984}{...}
{marker remarks7}{...}
{title:历史}

{pstd}
散点图矩阵的起源尚不清楚，尽管早期的书面讨论可以在
{help graph matrix##H1975:Hartigan (1975)}、
{help graph matrix##TT1981:Tukey and Tukey (1981)} 和
{help graph matrix##C1983:Chambers et al. (1983)} 中找到。散点图矩阵
也被称为 {it:草图显示} 和 {it:成对散点图}。
无论使用何种名称，我们相信第一个“现成的”实现是由 Becker 和 Chambers 在名为 S 的系统中完成的 -- 见
{help graph matrix##BC1984:Becker and Chambers (1984)} -- 尽管 S 早于 1984 年。我们还相信 Stata 提供了第二个实现，时间是在 1985 年。

{marker references}{...}
{title:参考文献}

{marker BC1984}{...}
{phang}
Becker, R. A., 和 J. M. Chambers. 1984.
{it:S: An Interactive Environment for Data Analysis and Graphics}.
加利福尼亚州贝尔蒙特：Wadsworth。

{marker C1983}{...}
{phang}
Chambers, J. M., W. S. Cleveland, B. Kleiner, 和 P. A. Tukey. 1983.
{it:Graphical Methods for Data Analysis}.
加利福尼亚州贝尔蒙特：Wadsworth。

{marker H1975}{...}
{phang}
Hartigan, J. A. 1975. 聚类的打印图形。
{it:Journal of Statistical Computation and Simulation} 4: 187-213。

{marker TT1981}{...}
{phang}
Tukey, P. A., 和 J. W. Tukey. 1981. 准备；预选视图序列。在 {it:Interpreting Multivariate Data} 中编者 V. Barnett, 189-213.
英国奇切斯特：Wiley。
{p_end}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <graph_matrix.sthlp>}