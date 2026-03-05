{smcl}
{* *! version 1.1.10  19oct2017}{...}
{vieweralsosee "[G-3] by_option" "mansection G-3 by_option"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[G-3] region_options" "help region_options_zh"}{...}
{vieweralsosee "[G-3] title_options" "help title_options_zh"}{...}
{viewerjumpto "Syntax" "by_option_zh##syntax"}{...}
{viewerjumpto "Description" "by_option_zh##description"}{...}
{viewerjumpto "Links to PDF documentation" "by_option_zh##linkspdf"}{...}
{viewerjumpto "Option" "by_option_zh##option"}{...}
{viewerjumpto "byopts" "by_option_zh##byopts"}{...}
{viewerjumpto "Remarks" "by_option_zh##remarks"}{...}
{viewerjumpto "Reference" "by_option_zh##reference"}
{help by_option:English Version}
{hline}{...}
{p2colset 1 20 22 2}{...}
{p2col:{bf:[G-3]} {it:by_option} {hline 2}}重复图形命令的选项{p_end}
{p2col:}({mansection G-3 by_option:查看完整 PDF 手册条目}){p_end}
{p2colreset}{...}


{marker syntax}{...}
{title:语法}

{synoptset 25}{...}
{p2col:{it:by_option}}描述{p_end}
{p2line}
{p2col:{cmd:by(}{varlist}[{cmd:,} {it:byopts}]{cmd:)}}对 by-groups 重复
     {p_end}
{p2line}
    {cmd:by()} 是 {it:合并隐式}; 详见 {help repeated options}.


{p2col:{it:byopts}}描述{p_end}
{p2line}
{p2col:{cmd:total}}添加总组{p_end}
{p2col:{cmdab:miss:ing}}添加缺失组{p_end}
{p2col:{cmdab:colf:irst}}按列排列{p_end}
{p2col:{cmdab:r:ows:(}{it:#}{cmd:)} | {cmdab:c:ols:(}{it:#}{cmd:)}}以
     {it:#} 行或 {it:#} 列展示{p_end}
{p2col:{cmdab:hol:es:(}{it:{help numlist_zh}}{cmd:)}}要留空的位
     置{p_end}
{p2col:{cmd:iscale(}[{cmd:*}]{it:#}{cmd:)}}文本和标记的大小{p_end}

{p2col:{cmdab:com:pact}} {cmd:style(compact)} 的同义词{p_end}
{p2col:{cmd:style(}{it:{help bystyle_zh}}{cmd:)}}整体展示样式
     {p_end}
{p2col:[{cmdab:no:}]{cmdab:edge:label}}标签 {it:x} 边缘轴{p_end}
{p2col:[{cmdab:no:}]{cmdab:r:escale}}为每个组单独的 {it:y} 和 {it:x} 轴{p_end}
{p2col:[{cmdab:no:}]{cmdab:yr:escale}}为每个组单独的 {it:y} 轴{p_end}
{p2col:[{cmdab:no:}]{cmdab:xr:escale}}为每个组单独的 {it:x} 轴{p_end}
{p2col:[{cmdab:no:}]{cmdab:iy:axes:}}显示单独的 {it:y} 轴{p_end}
{p2col:[{cmdab:no:}]{cmdab:ix:axes:}}显示单独的 {it:x} 轴{p_end}
{p2col:[{cmdab:no:}]{cmdab:iyt:ick:}}显示单独的 {it:y} 轴刻度{p_end}
{p2col:[{cmdab:no:}]{cmdab:ixt:ick:}}显示单独的 {it:x} 轴刻度{p_end}
{p2col:[{cmdab:no:}]{cmdab:iyl:abel:}}显示单独的 {it:y} 轴标签{p_end}
{p2col:[{cmdab:no:}]{cmdab:ixl:abel:}}显示单独的 {it:x} 轴标签{p_end}
{p2col:[{cmdab:no:}]{cmdab:iytit:le:}}显示单独的 {it:y} 轴标题{p_end}
{p2col:[{cmdab:no:}]{cmdab:ixtit:le:}}显示单独的 {it:x} 轴标题{p_end}
{p2col:{cmdab:im:argin:(}{it:{help marginstyle_zh}}{cmd:)}}图形之间的边距
         {p_end}

{p2col:{it:{help by_option##legend_options:legend_options}}}显示图例及其位置{p_end}
{p2col:{it:{help title_options_zh}}}整体标题{p_end}
{p2col:{it:{help region_options_zh}}}整体轮廓、阴影和外观{p_end}
{p2line}
{p2colreset}{...}
{p 4 6 2}
命令中附加 {it:title_options} 和 {it:region_options} 的设置将成为个别 by-groups 的标题和区域。


{marker description}{...}
{title:描述}

{pstd}
选项 {cmd:by()} 针对 {varlist} 的每个值重复 {cmd:graph} 命令，并将生成的单独图形排列成一个图形。
{it:varlist} 可以是数值或字符串变量。


{marker linkspdf}{...}
{title:PDF 文档链接}

        {mansection G-3 by_optionQuickstart:快速入门}

        {mansection G-3 by_optionRemarksandexamples:备注和示例}

{pstd}
上述部分未包含在此帮助文件中。


{marker option}{...}
{title:选项}

{phang}
{cmd:by(}{varlist}[{cmd:,} {it:byopts}]{cmd:)}
    指定针对 {it:varlist} 每个唯一值集合重复 {cmd:graph} 命令，并将生成的单个图形排列成一个图形。


{marker byopts}{...}
{title:byopts}

{phang}
{cmd:total} 指定添加一个图形，用于所有 by-groups 的总体。

{phang}
{cmd:missing} 指定除了每个 by-group 的图形之外，还添加缺失值的图形。
    缺失值定义为 {cmd:.}、{cmd:.a}、...、{cmd:.z}（针对数值变量）和 {cmd:""}（针对字符串变量）。

{phang}
{cmd:colfirst} 指定单独图形按列排列，而不是按行排列。即，如果有四个组，图形将如下展示：

		默认                  {cmd:colfirst}
		  1  2                    1    3
		  3  4                    2    4

{phang}
{cmd:rows(}{it:#}{cmd:)} 和 {cmd:cols(}{it:#}{cmd:)} 是替代选项。
    它们指定生成的图形排列为 {it:#} 行和所需列数，或者排列为 {it:#} 列和所需行数。默认值为

	    {cmd:cols(}{it:c}{cmd:)}, {it:c} = ceil(sqrt({it:G}))

{pmore}
    其中 {it:G} 是要呈现的图形总数，ceil() 是将非整数向上四舍五入到下一个整数的函数。例如，如果要显示四个图形，则结果将呈现在 2{it:x}2 的数组中。如果要显示五个图形，则结果将呈现为 2{it:x}3，因为 ceil(sqrt(5))==3。

{pmore}
    {cmd:cols(}{it:#}{cmd:)} 可以指定为大于或小于 {it:c}; {it:r} 将是
    {it:c} 隐含的行数。
    同样，{cmd:rows(}{it:#}{cmd:)} 可以指定为大于或小于 {it:r}。

{phang}
{cmd:holes(}{it:{help numlist_zh}}{cmd:)}
    指定在数组中要留空的位置。考虑绘制一个有三个组的图形，假设这三个图形在 2{it:x}2 的数组中显示。默认情况下，第一个组将在图形 (1,1) 中出现，第二个组将在图形 (1,2) 中出现，第三个组将在图形 (2,1) 中出现。在 (2,2) 位置将不会显示任何内容。

{pmore}
    如果指定 {cmd:holes(3)}，则会将位置 (2,1) 留空，因此第三个组将出现在 (2,2) 中。

{pmore}
    您在 {cmd:holes()} 中指定的数字对应于位置编号，

	     1  2      1  2  3      1  2  3  4      1  2  3  4  5
	     3  4      4  5  6      5  6  7  8      6  7  8  9 10
		       7  8  9      9 10 11 12     11 12 13 14 15
				   12 14 15 16     16 17 18 19 20
						   21 22 23 24 25    {it:等等}

{pmore}
    上述是当未指定 {cmd:colfirst} 时的编号。如果指定了 {cmd:colfirst}，则这些位置会被转置：

	     1  3      1  4  7      1  5  9 13      1  6 11 16 21
	     2  4      2  5  8      2  6 10 14      2  7 12 17 22
		       3  6  9      3  7 11 15      3  8 13 18 23
				    4  8 12 16      4  9 14 19 24
						    5 10 15 20 25    {it:等等}

{phang}
{cmd:iscale(}{it:#}{cmd:)}
和
{cmd:iscale(*}{it:#}{cmd:)}
    指定一个大小调整（倍增器），用于缩放文本和标记。

{pmore}
    默认情况下，随着 {it:G} 的增大，{cmd:iscale()} 会变得越来越小，即 by-groups 的数量和因此呈现的图形数量。
    默认参数化为一个倍增器
    f({it:G}) -- 0<f({it:G})<1,
    f'({it:G})<0 -- 也就是说用于乘以 {cmd:msize()},
    {c -(}{cmd:y}|{cmd:x}{c )-}{cmd:label(,labsize())} 等。
    除整体标题、子标题、说明和备注外，所有内容都受 {cmd:iscale()} 的影响。

{pmore}
    如果您指定 {cmd:iscale(}{it:#}{cmd:)}, 那么指定的数字将替代 f({it:G})。 {cmd:iscale(1)} 意味着文本和标记将以每个图形单独绘制时的相同大小出现。 {cmd:iscale(.5)} 将文本和标记显示为一半的大小。我们建议您指定一个介于 0 和 1 之间的数字，但您也可以自由指定大于 1 的数字。

{pmore}
    如果您指定 {cmd:iscale(*}{it:#}{cmd:)}, 那么指定的数字将乘以 f({it:G}) 并将该乘积用于缩放文本和标记。 {cmd:iscale(*1)} 是默认值。
    {cmd:iscale(*1.2)} 意味着文本和标记将比 {cmd:graph,} {cmd:by()} 通常选择的大小大 20%。 {cmd:iscale(*.8)} 则使它们小 20%。

{phang}
{cmd:compact}
    是 {cmd:style(compact)} 的同义词。输入哪一个都没有区别。请参见下面 {cmd:style()} 选项的描述，并参见 {it:{help by_option##remarks8:By-styles}} 下的 {it:备注}。

{phang}
{cmd:style(}{it:bystyle}{cmd:)}
     指定 by-graphs 的整体外观。样式确定个别图形是否有自己的轴和标签，或者是否在同一行或同一列的图形之间共享轴和标签，以及图形之间的距离等。下面文档中的其他选项允许您更改结果的显示方式，但 {it:bystyle} 指定了起始点。

{pmore}
    由于您有某些内容想更改，不必指定 {cmd:style()}。仅当存在完全符合您需要的其他样式，或当另一个样式可以让您指定较少的更改以达到您的目标时，您才指定 {cmd:style()}。

{pmore}
    有关 by-style 选择的列表，请参见 {manhelpi bystyle G-4}。
    下面列出的 {it:byopts} 修改 by-style：

{phang}
{cmd:edgelabel} 和 {cmd:noedgelabel}
     指定最后一列的图形，如果未出现在最后一行，是否应将其 {it:x} 轴标记。
     详见 {it:{help by_option##remarks9:Labeling the edges}} 下的 {it:备注}。

{phang}
{cmd:rescale},
{cmd:yrescale} 和
{cmd:xrescale}
（以及
{cmd:norescale},
{cmd:noyrescale} 和
{cmd:noxrescale}）
    指定允许每个图形的比例不同（或强制相同）。是否
    {it:X} 或 {cmd:no}{it:X} 为默认值由 {cmd:style()} 决定。

{pmore}
    通常，
    {cmd:no}{it:X} 是默认值，而
    {cmd:rescale}、{cmd:yrescale} 和 {cmd:xrescale} 是选项。
    默认情况下，所有图形将共享相同的轴缩放。指定 {cmd:yrescale} 将允许
    {it:y} 轴在各图形之间不同，指定
    {cmd:xrescale} 将允许 {it:x} 轴不同，而指定 {cmd:rescale} 等同于指定 {cmd:yrescale} 和
    {cmd:xrescale}。

{phang}
{cmd:iyaxes} 和 {cmd:ixaxes}（及 {cmd:noiyaxes} 和 {cmd:noixaxes}）
    指定每个图形是否显示 {it:y} 轴和 {it:x} 轴。大多数样式和方案的默认值是将 {it:y} 轴放在每行的最左侧图形上，将 {it:x} 轴放在每列的最底部图形上。{it:y} 和 {it:x} 轴包括默认刻度和标签，但不包括轴标题。

{phang}
{cmd:iytick} 和 {cmd:ixtick}（以及 {cmd:noiytick} 和 {cmd:noixtick}）
    很少会指定。如果您指定了 {cmd:iyaxis}，然后想要抑制刻度，也可以指定 {cmd:noiytick}。在极少情况下，如果指定 {cmd:iyaxis} 未导致刻度显示（因为样式或方案的工作方式），则指定 {cmd:iytick} 将导致显示刻度。

{phang}
{cmd:iylabel} 和 {cmd:ixlabel}（以及 {cmd:noiylabel} 和 {cmd:noixlabel}）
    很少会指定。如果您指定了 {cmd:iyaxis}，然后想要抑制轴标签，也可以指定 {cmd:noiylabel}。在极少情况下，如果指定 {cmd:iyaxis} 未导致标签显示（因为样式或方案的工作方式），则指定 {cmd:iylabel} 将导致显示标签。

{phang}
{cmd:iytitle} 和 {cmd:ixtitle}（以及 {cmd:noiytitle} 和 {cmd:noixtitle}）
    很少会指定。如果您指定了 {cmd:iyaxis}，然后想要添加 {it:y} 轴标题（这会使图形看起来繁忙），您也可以指定 {cmd:iytitle}。在极少情况下，如果指定 {cmd:iyaxis} 导致标题显示（因为样式或方案的工作方式），则指定 {cmd:noiytitle} 将抑制标题显示。

{phang}
{cmd:imargin(}{it:marginstyle}{cmd:)}
    指定各个图形之间的边距。

{phang}
{marker legend_options}{...}
{it:legend_options} 用于 {cmd:by()} 设置图例的绘制与位置；参见 
    {it:{help by_option##use_of_legends:使用图例与 by()}} 下文。
    {cmd:legend()} 选项通常为 {it:merged-implicit}，但在 {cmd:by()} 中使用时为 {it:unique}; 详见 {help repeated options}。


{marker remarks}{...}
{title:备注}

{pstd}
备注以以下标题展示：

	{help by_option##remarks1:典型用法}
	{help by_option##remarks2:图形位置}
	{help by_option##remarks3:标题处理}
	{help by_option##remarks4:by() 使用 subtitle() 与图形}
	{help by_option##remarks5:副标题的位置()}
	{help by_option##remarks6:by() 使用整体注释()}
	{help by_option##remarks7:使用图例与 by()}
	{help by_option##remarks8:By-样式}
	{help by_option##remarks9:标记边缘}
	{help by_option##remarks10:为单独图形指定单独刻度}
	{help by_option##remarks11:历史}


{marker remarks1}{...}
{title:典型用法}

{pstd}
通常，数据可分为不同组——如性别或年龄类别（或两者）的个人数据，或可分类为不同地区的国家数据，或如下面的汽车数据，其中汽车为外国车或本土车。如果您输入

	{cmd:. scatter mpg weight}
	  {it:({stata "gr_example auto: scatter mpg weight":click to run})}
{* graph mpgweight}{...}

{pstd}
将获得一个 {cmd:mpg} 与 {cmd:weight} 的散点图。如果您添加 {cmd:by(foreign)} 作为选项，将获得两个图形，分别对应 {cmd:foreign} 的每个值：

	{cmd:. scatter mpg weight, by(foreign)}
	  {it:({stata "gr_example auto: scatter mpg weight, by(foreign)":click to run})}
{* graph mpgweightby}{...}

{pstd}
如果您添加 {cmd:total}，则将添加另一个图形，代表所有图形的总和：

	{cmd:. scatter mpg weight, by(foreign, total)}
	  {it:({stata "gr_example auto: scatter mpg weight, by(foreign, total)":click to run})}
{* graph mpgweightbyt}{...}

{pstd}
这里有三个图形要呈现，而 {cmd:by()} 选择以 2{it:x}2 的数组显示它们，留下最后一个位置为空。


{marker remarks2}{...}
{title:图形位置}

{pstd}
默认情况下，{cmd:by()} 将图形放在矩形 {it:RxC} 数组中，并在最后留下空位：

	   图形数量      数组维度      留下空位
	   {hline 65}
	       1           1{it:x}1
	       2           1{it:x}2
	       3           2{it:x}2         {cmd:4}=(2,2)
	       4           2{it:x}2
	       5           2{it:x}3         {cmd:6}=(3,3)
	       6           2{it:x}3
	       7           3{it:x}3         {cmd:8}=(3,2)   {cmd:9}=(3,3)
	       8           3{it:x}3         {cmd:9}=(3,3)
	       9           3{it:x}3
	      10           3{it:x}4        {cmd:11}=(3,3)  {cmd:12}=(3,4)
	      11           3{it:x}4        {cmd:12}=(3,4)
	      12           3{it:x}4
	      13           4{it:x}4        {cmd:14}=(4,2)  {cmd:15}=(4,3)  {cmd:16}=(4,4)
	      14           4{it:x}4        {cmd:15}=(4,3)  {cmd:16}=(4,4)
	      15           4{it:x}4        {cmd:16}=(4,4)
	      16           4{it:x}4
	      17           4{it:x}5        {cmd:18}=(4,3)  {cmd:19}=(4,4)  {cmd:20}=(4,5)
	      18           4{it:x}5        {cmd:19}=(4,4)  {cmd:20}=(4,5)
	      19           4{it:x}5        {cmd:20}=(4,5)
	      20           4{it:x}5
	      21           5{it:x}5        {cmd:22}=(5,2)  {cmd:23}=(5,3)  {cmd:24}=(5,4)  {cmd:25}=(5,5)
	      22           5{it:x}5        {cmd:23}=(5,3)  {cmd:24}=(5,4)  {cmd:25}=(5,5)
	      23           5{it:x}5        {cmd:24}=(5,4)  {cmd:25}=(5,5)
	      24           5{it:x}5        {cmd:25}=(5,5)
	      25           5{it:x}5
	     {it:等等}
	   {hline 65}

{pstd}
选项 {cmd:rows()}、{cmd:cols()} 和 {cmd:holes()} 允许您控制此行为。

{pstd}
您可以指定 {cmd:rows()} 或 {cmd:cols()}，但不能同时指定。在上一部分中，我们绘制了

	{cmd:. scatter mpg weight, by(foreign, total)}

{pstd}
并以 2{it:x}2 数组显示三幅图形，其中第4个位置为空。我们可以通过指定 {cmd:rows(1)} 或 {cmd:cols(3)} 将图形绘制成 1{it:x}3 数组，

	{cmd:. scatter mpg weight, by(foreign, total rows(1))}
	  {it:({stata "gr_example auto: scatter mpg weight, by(foreign, total rows(1))":click to run})}
{* graph mpgweightbyt1r}{...}

{pstd}
或者我们可以保持在 2{it:x}2 数组中，并将空位移动到位置 3，

	{cmd:. scatter mpg weight, by(foreign, total holes(3))}
	  {it:({stata "gr_example auto: scatter mpg weight, by(foreign, total holes(3))":click to run})}
{* graph mpgweightbyt3h}{...}


{marker remarks3}{...}
{title:标题处理}

{pstd}
如果您输入

	{cmd:. scatter} {it:yvar} {it:xvar}{cmd:, title("我的标题") by(catvar)}

{pstd}
"我的标题" 将在每个图形上方重复。 {cmd:by()} 重复整个 {cmd:graph} 命令，然后排列结果。

{pstd}
要为整个图形指定标题，请在 {cmd:by()} 选项中指定 {it:title_options} —— 参见
{manhelpi title_options G-3}：

	{cmd:. scatter} {it:yvar} {it:xvar}{cmd:, by(catvar, title("我的标题"))}


{marker remarks4}{...}
{title:by() 使用 subtitle() 与图形}

{pstd}
{cmd:by()} 使用 {cmd:subtitle()} {it:title_option} 为每个图形标记。例如，在：

	{cmd:. scatter mpg weight, by(foreign, total)}

{pstd}
{cmd:by()} 将图形标记为 "本土"、"外国" 和 "总计"。当指定 {cmd:total} 选项时，副标题为 "总计"。另外两个副标题是从 by-variable {cmd:foreign} 中获得的。

{pstd}
{cmd:by()} 可以与数值或字符串变量一起使用。这里 
{cmd:foreign} 为数值型，但恰好有一个标签。{cmd:by()} 从值标签获得副标题 "本土" 和 "外国"。如果 {cmd:foreign} 没有值标签，则前两个图形将标记为 "0" 和 "1"，即变量 {cmd:foreign} 的数值。如果 {cmd:foreign} 是字符串变量，则副标题将是 {cmd:foreign} 的字符串内容。

{pstd}
如果您希望抑制副标题，请输入

	{cmd:. scatter mpg weight, subtitle("") by(foreign, total)}

{pstd}
如果希望在副标题中添加 "{it:额外信息}"，请输入

	{cmd:. scatter mpg weight, subtitle("}{it:额外信息}{cmd:", suffix) by(foreign, total)}

{pstd}
请注意，"{it:额外信息}" 将显示在每个图形上方。


{marker remarks5}{...}
{title:副标题的位置()}

{pstd}
您可以使用 {cmd:subtitle()}'s 子选项控制识别标签的位置。例如，

	{cmd:. scatter mpg weight,}
		{cmd:subtitle(, ring(0) pos(1) nobexpand) by(foreign, total)}
	  {it:({stata "gr_example auto: scatter mpg weight, subtitle(, ring(0) pos(1) nobexpand) by(foreign, total)":click to run})}
{* graph byopt6}{...}

{pstd}
结果将把识别标签移到每个单独图形内部，并显示在每个图的东北角。输入

	{cmd:. scatter mpg weight,}
		{cmd:subtitle(, ring(0) pos(11) nobexpand) by(foreign, total)}

{pstd}
识别标签将移动到西北角。

{pstd}
{cmd:ring(0)} 将副标题移至图形的绘图区域内，而 {cmd:position()} 定义位置，指定为时钟位置。{cmd:nobexpand} 听起来有些奇怪，但只需记得指定它。默认情况下，{cmd:by()} 设置副标题以扩展至包含它们的框的大小，这是不寻常的，但使默认样式的副标题在阴影下看起来很好。

{pstd}
请参见 {manhelpi title_options G-3}。


{marker remarks6}{...}
{title:by() 使用整体注释()}

{pstd}
默认情况下，{cmd:by()} 添加一条总体注释，内容为 "Graphs by ..."。
当您输入

	{cmd:. scatter} {it:yvar} {it:xvar}{cmd:, by(catvar)}

{pstd}
其结果与您输入

	{cmd:. scatter} {it:yvar} {it:xvar}{cmd:, by(catvar, note("Graphs by ..."))}

{pstd}
相同。如果您希望抑制该注释，请输入

	{cmd:. scatter} {it:yvar} {it:xvar}{cmd:, by(catvar, note(""))}

{pstd}
如果希望将整体注释更改为 "我的注释"，请输入

	{cmd:. scatter} {it:yvar} {it:xvar}{cmd:, by(catvar, note("我的注释"))}

{pstd}
如果希望在默认注释后添加您的注释，请输入

	{cmd:. scatter} {it:yvar} {it:xvar}{cmd:, by(catvar, note("我的注释", suffix))}


{* index legends, use with by() tt}{...}
{* index by() tt, use of legends with}{...}
{marker use_of_legends}{...}
{marker remarks7}{...}
{title:使用图例与 by()}

{pstd}
如果您希望修改或抑制默认图例，必须以不同的方式进行，当 {cmd:by()} 被指定时。例如，{cmd:legend(off)}——请参见 {manhelpi legend_options G-3}——将抑制图例，但输入

	{cmd:. line y1 y2 x, by(group) legend(off)}

{pstd}
将不会有预期的效果。{cmd:legend(off)} 将被视为被忽略。您必须相应地键入

	{cmd:. line y1 y2 x, by(group, legend(off))}

{pstd}
我们将 {cmd:legend(off)} 移入 {cmd:by()} 里面。

{pstd}
记住，{cmd:by()} 重复 {cmd:graph} 命令。如果仔细考虑，您会意识到图例从未在各个图形底部显示。输入

	{cmd:. line y1 y2 x, legend(on) by(group)}

{pstd}
此图形将有很多图例：每个图形下面都有一个图例，以及图形底部的整体图例！
{cmd:by()} 的作用正如其所述：它为 {cmd:group} 的每个值重复整个图形命令。

{pstd}
无论如何，我们想要抑制的正是整体的 {cmd:legend()}，而这就是为什么必须在 {cmd:by()} 选项中指定 {cmd:legend(off)}；这是与上述 
{it:{help by_option##remarks3:标题处理}} 讨论的问题是相同的。

{pstd}
如果我们不想抑制图例，而想修改图例的内容或位置，则情况会复杂一些。此时，修改内容的 {cmd:legend()} 选项在 {cmd:by()} 之外指定，而修改位置的 {cmd:legend()} 选项在内部指定。请参见
{it:{help legend_options##use_of_legends_with_by:使用图例与 by()}} 在 
{manhelpi legend_options G-3} 中。


{marker remarks8}{...}
{title:By-样式}

{pstd}
选项 {cmd:style(}{it:bystyle}{cmd:)} 指定 by-graphs 的整体外观；请参见 {manhelpi bystyle G-4} 中的 {it:bystyle} 选择列表。
一个值得注意的 {it:bystyle} 是 {cmd:compact}。指定 
{cmd:style(compact)} 会使图形以更紧凑的格式显示。比较：

	{cmd:. sysuse lifeexp, clear}

	{cmd:. scatter lexp gnppc, by(region, total)}
	  {it:({stata "gr_example lifeexp: scatter lexp gnppc, by(region, total)":click to run})}
{* graph byopt7}{...}

{pstd}
与

	{cmd:. scatter lexp gnppc, by(region, total style(compact))}
	  {it:({stata "gr_example lifeexp: scatter lexp gnppc, by(region, total style(compact))":click to run})}
{* graph byopt8}{...}

{pstd}
{cmd:style(compact)} 将图形水平和垂直推在一起，留下更多空间用于单独图形。
缺点是，挤在一起时，轴标签上的值有时会相互重叠，如上面的 S.A. 图形中的 40000 与总图形的 0 相重合。这个问题可以通过将 {cmd:gnppc} 除以 1000 来解决。

{pstd}
您可以指定 {cmd:compact} 而不是输入 {cmd:style(compact)}，而且您可以进一步缩写为 {cmd:com}。


{marker remarks9}{...}
{title:标记边缘}

{pstd}
考虑图形

	{cmd:. scatter mpg weight, by(foreign, total)}
	  {it:({stata "gr_example auto: scatter mpg weight, by(foreign, total)":click to run})}
{* graph mpgweightbyt}{...}

{pstd}
图形 (1,2) 位置的 {it:x} 轴被标记。当列的最后一个图形未出现在最后一行时，它的 {it:x} 轴称为边缘。在 {cmd:style(default)} 中，默认情况下标记边缘，但您可以输入

	{cmd:. scatter mpg weight, by(foreign, total noedgelabel)}
	  {it:({stata "gr_example auto: scatter mpg weight, by(foreign, total noedgelabel)":click to run})}
{* graph byopt9}{...}

{pstd}
以抑制。这使得图形行之间更紧密。

{pstd}
如果您输入

{phang2}
	{cmd:. scatter mpg weight, by(foreign, total style(compact))}

{pstd}
您将发现图形 (1,2) 的 {it:x} 轴未被标记。使用 {cmd:style(compact)}，默认值为 {cmd:noedgelabel}，但您可以指定 {cmd:edgelabel} 来覆盖它。


{marker remarks10}{...}
{title:为单独图形指定单独刻度}

{pstd}
如果您输入

{phang2}
	{cmd:. scatter} {it:yvar} {it:xvar}{cmd:, by(}{it:catvar}{cmd:, yrescale)}

{pstd}
则每个图形将具有单独的 {it:y} 轴刻度；如果您输入

{phang2}
	{cmd:. scatter} {it:yvar} {it:xvar}{cmd:, by(}{it:catvar}{cmd:, xrescale)}

{pstd}
则每个图形将具有单独的 {it:x} 轴刻度；如果您输入

{phang2}
	{cmd:. scatter} {it:yvar} {it:xvar}{cmd:, by(}{it:catvar}{cmd:, yrescale xrescale)}

{pstd}
则两个刻度都会单独设置。


{* index histories}{...}
{* index casement displays}{...}
{* index Chambers, et al.}{...}
{marker remarks11}{...}
{title:历史}

{pstd}
通过 {cmd:by()} 选项生成的双向散点图类似于被称为 {it:casement} {it:displays} 的内容（请参见 {help by_option##C1983:Chambers et al. [1983, 141-145]}）。然而，传统的 casement display 将所有图形纵向或横向对齐。


{marker reference}{...}
{title:参考}

{marker C1983}{...}
{phang}
Chambers, J. M., W. S. Cleveland, B. Kleiner, and P. A. Tukey. 1983.
{it:数据分析的图形方法}. 加州贝尔蒙特: Wadsworth.
{p_end}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <by_option.sthlp>}