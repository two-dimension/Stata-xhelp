{smcl}
{* *! version 1.1.13  16apr2019}{...}
{viewerdialog "graph dot" "dialog graph_dot"}{...}
{vieweralsosee "[G-2] graph dot" "mansection G-2 graphdot"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[G-2] graph bar" "help graph_bar_zh"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[D] collapse" "help collapse_zh"}{...}
{viewerjumpto "语法" "graph_dot_zh##syntax"}{...}
{viewerjumpto "菜单" "graph_dot_zh##menu"}{...}
{viewerjumpto "描述" "graph_dot_zh##description"}{...}
{viewerjumpto "PDF文档链接" "graph_dot_zh##linkspdf"}{...}
{viewerjumpto "分组选项" "graph_dot_zh##group_options_desc"}{...}
{viewerjumpto "y变量选项" "graph_dot_zh##yvar_options_desc"}{...}
{viewerjumpto "线条外观选项" "graph_dot_zh##linelook_options_desc"}{...}
{viewerjumpto "图例选项" "graph_dot_zh##legending_options_desc"}{...}
{viewerjumpto "坐标轴选项" "graph_dot_zh##axis_options_desc"}{...}
{viewerjumpto "标题及其他选项" "graph_dot_zh##title_and_other_options_desc"}{...}
{viewerjumpto "与over()和yvaroptions()共用的子选项" "graph_dot_zh##suboptions_desc"}{...}
{viewerjumpto "备注" "graph_dot_zh##remarks"}
{help graph_dot:English Version}
{hline}{...}
{p2colset 1 20 22 2}{...}
{p2col:{bf:[G-2] graph dot} {hline 2}}点图（汇总统计）{p_end}
{p2col:}({mansection G-2 graphdot:查看完整的PDF手册条目}){p_end}
{p2colreset}{...}


{marker syntax}{...}
{title:语法}

{p 8 23 2}
{cmdab:gr:aph} {cmd:dot}{space 2}{it:yvars}
{ifin}
[{it:{help graph dot##weight:weight}}]
[{cmd:,}
{it:options}]

    其中 {it:yvars} 是
	{col 20}{cmd:(asis)} {varlist}

    或是
{col 20}{cmd:(percent)} [{varlist}] | {cmd:(count)} [{varlist}]

    或是
{col 20}[{cmd:(}{it:stat}{cmd:)}] {varname}{...}
	       [[{cmd:(}{it:stat}{cmd:)}] ...]
{...}
{col 20}[{cmd:(}{it:stat}{cmd:)}] {varlist}{...}
	       [[{cmd:(}{it:stat}{cmd:)}] ...]
{...}
{col 20}[{cmd:(}{it:stat}{cmd:)}] [{it:name}{cmd:=}]{varname} [...]{...}
  [[{cmd:(}{it:stat}{cmd:)}] ...]

    其中 {it:stat} 可以是以下任何一个

{p 20 20 2}
	{cmd:mean}
	{cmd:median}
	{cmd:p1}
	{cmd:p2}
	... {cmd:p99}
	{cmd:sum}
	{cmd:count}
	{cmd:percent}
	{cmd:min}
	{cmd:max}
{p_end}

    或
{p 20 20 2}
    在 {manhelp collapse D} 中定义的其他 {it:stats}

{pstd}
如果指定了选项 {opt over(varname)}，则 {it:yvars} 是可选的。
默认统计是 {cmd:percent}，百分比是基于 {it:varname} 计算的。

{pstd}
{cmd:mean} 是当 {it:varname} 或 {it:varlist} 被指定且未指定 {it:stat} 时的默认值。
{cmd:p1} 表示第一个百分位数，{cmd:p2} 表示第二个百分位数，以此类推；{cmd:p50} 与 {cmd:median} 的意义相同。
{cmd:count} 表示指定变量的非缺失值的数量。


{synoptset 30}{...}
{p2col:{it:options}}描述{p_end}
{p2line}
{p2col:{help graph dot##group_options:{it:group_options}}}点线绘制的分组{p_end}
{p2col:{help graph dot##yvar_options:{it:yvar_options}}}作为点的变量{p_end}
{p2col:{help graph dot##linelook_options:{it:linelook_options}}}点线的外观{p_end}
{p2col:{help graph dot##legending_options:{it:legending_options}}}如何标记 {it:yvars}{p_end}
{p2col:{help graph dot##axis_options:{it:axis_options}}}如何标记数值 {it:y} 轴{p_end}
{p2col:{help graph dot##title_and_other_options:{it:title_and_other_options}}}标题、添加文本、纵横比等{p_end}
{p2line}


{marker group_options}{...}
{p2col:{it:group_options}}描述{p_end}
{p2line}
{p2col:{cmdab:o:ver:(}{varname}[{cmd:,} {help graph dot##over_subopts:{it:over_subopts}}]{cmd:)}}类别；选项可以重复{p_end}
{p2col:{cmd:nofill}}省略空类别{p_end}
{p2col:{cmdab:miss:ing}}将缺失值保留为类别{p_end}
{p2col:{cmdab:allc:ategories}}包含数据集中所有类别{p_end}
{p2line}


{marker yvar_options}{...}
{p2col:{it:yvar_options}}描述{p_end}
{p2line}
{p2col:{cmdab:asc:ategory}}将 {it:yvars} 视为第一 {cmd:over()} 组{p_end}
{p2col:{cmdab:asy:vars}}将第一 {cmd:over()} 组视为 {it:yvars}{p_end}
{p2col:{cmdab:per:centages}}在 {it:yvars} 内显示百分比{p_end}
{p2col:{cmdab:cw}}计算 {it:yvar} 统计量时省略缺失值{p_end}
{p2line}


{marker linelook_options}{...}
{p2col:{it:linelook_options}}描述{p_end}
{p2line}
{p2col:{cmd:outergap(}[{cmd:*}]{it:#}{cmd:)}}图形顶部与第一条线之间、最后一条线与底部之间的间距{p_end}
{p2col:{cmd:linegap(}{it:#}{cmd:)}} {it:yvar} 线之间的间距；默认值为 0{p_end}

{p2col:{cmdab:m:arker:(}{it:#}{cmd:,} {it:{help marker_options_zh}}{cmd:)}}用于第 #条 {it:yvar} 线的标记{p_end}
{p2col:{cmdab:pcyc:le:(}{it:#}{cmd:)}}标记样式在 {help pstyle_zh:pstyles} 中回收{p_end}

{p2col:{cmdab:linet:ype:(dot}|{cmd:line}|{cmd:rectangle)}}线条的样式{p_end}
{p2col:{cmdab:ndot:s:(}{it:#}{cmd:)}} 如果 {cmd:linetype(dot)}；默认值为 100 的点的数量{p_end}
{p2col:{cmdab:dot:s:(}{it:{help marker_options_zh}}{cmd:)}} 如果 {cmd:linetype(dot)} 的外观{p_end}
{p2col:{cmdab:line:s:(}{it:{help line_options_zh}}{cmd:)}} 如果 {cmd:linetype(line)} 的外观{p_end}
{p2col:{cmdab:rect:angles:(}{it:{help area_options_zh}}{cmd:)}} 如果 {cmd:linetype(rectangle)} 的外观{p_end}
{p2col:{cmd:rwidth(}{it:{help size_zh}}{cmd:)}} 如果 {cmd:linetype(rectangle)} 设定矩形的宽度{p_end}

{p2col:[{cmdab:no:}]{cmdab:ext:end:line}}线是否穿过图形区域的边界并触及坐标轴；通常默认值为 {cmd:extendline}{p_end}
{p2col:{cmdab:lowex:tension(}{it:{help size_zh}}{cmd:)}}线在坐标轴上延伸的量（高级选项）{p_end}
{p2col:{cmdab:highex:tension(}{it:{help size_zh}}{cmd:)}}线在坐标轴上延伸的量（高级选项）{p_end}
{p2line}


{marker legending_options}{...}
{p2col:{it:legending_options}}描述{p_end}
{p2line}
{p2col:{it:{help legend_options_zh}}} 控制 {it:yvar} 图例{p_end}
{p2col:{cmdab:nolab:el}}在图例中使用 {it:yvar} 名称，而非标签{p_end}
{p2col:{cmdab:yvar:options:(}{help graph dot##over_subopts:{it:over_subopts}}{cmd:)}}{it:over_subopts} 用于 {it:yvars}; 不常指定{p_end}
{p2col:{cmd:showyvars}}在 {it:x} 轴上标记 {it:yvars}; 不常指定{p_end}
{p2line}


{marker axis_options}{...}
{p2col:{it:axis_options}}描述{p_end}
{p2line}
{p2col:{cmdab:yalt:ernate}}将数值 {it:y} 轴放置在右侧（顶部）{p_end}
{p2col:{cmdab:xalt:ernate}}将分类 {it:x} 轴放置在顶部（右侧）{p_end}
{p2col:{cmd:exclude0}} 不强制 {it:y} 轴包括 0{p_end}
{p2col:{cmdab:yrev:erse}}反转 {it:y} 轴{p_end}
{p2col:{it:{help axis_scale_options_zh}}}{it:y} 轴的缩放及外观{p_end}
{p2col:{it:{help axis_label_options_zh}}}{it:y} 轴的标记{p_end}
{p2col:{help axis_title_options_zh:{bf:ytitle(...)}}}{it:y} 轴的标题{p_end}
{p2line}


{marker title_and_other_options}{...}
{p2col:{it:title_and_other_options}}描述{p_end}
{p2line}
{p2col:{help added_text_option:{bf:text(...)}}}在图形上添加文本； {it:x} 范围 [0,100]{p_end}
{p2col:{help added_line_options_zh:{bf:yline(...)}}}在图形上添加 {it:y} 线{p_end}
{p2col:{it:{help aspect_option_zh}}}限制图形区域的纵横比{p_end}
{p2col:{it:{help std_options_zh}}}标题、图形尺寸、保存到磁盘{p_end}

{p2col:{help by_option_zh:{bf:by(}{it:varlist}{bf:, ...)}}}针对子组重复{p_end}
{p2line}


{pstd}{marker over_subopts}
{it:over_subopts} -- 用于
{cmd:over(}{varname}{cmd:,} {it:over_subopts}{cmd:)}
且在少数情况下用于
{cmd:yvaroptions(}{it:over_subopts}{cmd:)} -- 是

{p2col:{it:over_subopts}}描述{p_end}
{p2line}
{p2col:{cmdab:re:label:(}{it:#} {cmd:"}{it:text}{cmd:"} ...{cmd:)}}更改坐标轴标签{p_end}
{p2col:{cmdab:lab:el:(}{it:{help cat_axis_label_options_zh}}{cmd:)}}标签的外观{p_end}
{p2col:{cmdab:ax:is:(}{it:{help cat_axis_line_options_zh}}{cmd:)}}坐标轴线的外观{p_end}

{p2col:{cmd:gap(}[{cmd:*}]{it:#}{cmd:)}}在 {cmd:over()} 类别内的线条间距{p_end}
{p2col:{cmd:sort(}{varname}{cmd:)}}按预定顺序放置线条{p_end}
{p2col:{cmd:sort(}{it:#}{cmd:)}}按高度顺序放置线条{p_end}
{p2col:{cmd:sort((}{it:stat}{cmd:)} {varname}{cmd:)}}按计算得出的顺序放置线条{p_end}
{p2col:{cmdab:des:cending}}反转默认或指定的线条顺序{p_end}
{p2line}

{marker weight}{...}
{pstd}
支持 {cmd:aweight}、{cmd:fweight} 和 {cmd:pweight}；请参见 {help weight_zh} 和 {manhelp collapse D} 中有关权重的说明。


{marker menu}{...}
{title:菜单}

{phang}
{bf:图形 > 点图}


{marker description}{...}
{title:描述}

{pstd}
{cmd:graph} {cmd:dot} 绘制水平点图。在点图中，分类轴垂直呈现，数值轴水平呈现。即便如此，数值轴仍称为 {it:y} 轴，分类轴仍称为 {it:x} 轴：

{phang2}
	{cmd:. graph dot (mean)} {it:numeric_var}{cmd:, over(}{it:cat_var}{cmd:)}

			  {it:x}
			  {c |}
	    第一组   {c |}......o..............
			  {c |}
	    第二组  {c |}..........o..........
		{bf:.}         {c |}
		{bf:.}         {c |}
			  {c BLC}{c TT}{hline 4}{c TT}{hline 4}{c TT}{hline 4}{c TT}{hline 4}{c TT}
			   0    2    4    6    8


{pstd}
点图的语法与条形图的语法相同；
请参见 {manhelp graph_bar G-2: graph bar}。

{pstd}
我们用以下词汇来描述点图：

			{it:x 轴}
			  {c |}
		第一组   {c |}..........o...............
		第二组   {c |}..............o...........
		第三组   {c |}..................o.......   <-  {it:lines}
		第四组   {c |}......................o...
			  {c BLC}{c TT}{hline 4}{c TT}{hline 4}{c TT}{hline 4}{c TT}{hline 4}{hline 4}
			   0    1    2    3    4    5   <-  {it:y 轴}

{pstd}
上面的点图包含四条 {it:lines}。描述线的词汇为
{p_end}
					  {it:marker}
					 /
			   .............o............
			   |{hline 2}{it:distance}{hline 2}|       \
						 {it:dots}


{marker linkspdf}{...}
{title:PDF文档链接}

        {mansection G-2 graphdotQuickstart:快速入门}

        {mansection G-2 graphdotRemarksandexamples:备注和示例}

{pstd}
上述部分未包括在此帮助文件中。


{marker group_options_desc}{...}
{title:group_options}

{phang}
{cmd:over(}{varname}[{cmd:,} {it:over_subopts}]{cmd:)}
    指定一个分类变量，根据该变量重复 {it:yvars}。 {it:varname} 可以是字符串或数字。当指定多个 {it:yvars} 时，可以指定多达两个 {cmd:over()} 选项；当指定一个 {it:yvar} 时，可以指定多达三个 {cmd:over()} 选项；
    可以指定选项；请参见下面的 {it:{help graph dot##remarks3:附录：语法示例}}。

{phang}
{cmd:nofill}
    指定省略缺失的小类别。例如，请考虑

{phang3}
	    {cmd:. graph dot (mean) y, over(division) over(region)}

{pmore}
    假设某个部门在某个区域没有数据，原因可能是没有这样的观察值，或者这些观察值的 y==.。在生成的图表中，标记将会缺失：

		       division 1  {c |}...........o....
	    region 1   division 2  {c |}....o...........
		       division 3  {c |}.......o........
				   {c |}
		       division 1  {c |}..o.............
	    region 2   division 2  {c |}................
		       division 3  {c |}..........o.....
				   {c BLC}{c TT}{hline 4}{c TT}{hline 4}{c TT}{hline 4}{c TT}

{pmore}
    如果指定了 {cmd:nofill}，缺失的类别将从图表中移除：

		       division 1  {c |}...........o....
	    region 1   division 2  {c |}....o...........
		       division 3  {c |}.......o........
				   {c |}
	    region 2   division 1  {c |}..o.............
		       division 3  {c |}..........o.....
				   {c BLC}{c TT}{hline 4}{c TT}{hline 4}{c TT}{hline 4}{c TT}

{phang}
{cmd:missing}
    指定将缺失的 {cmd:over()} 变量保留为它们自己的类别，一个类别对应 {cmd:.}，另一个对应 {cmd:.a}，等等。默认情况下，忽略这些观察值。
    如果它是数字并包含缺失值，或者它是字符串并包含 ""，则认为 {cmd:over()} 变量缺失。


{phang}
{cmd:allcategories}
    指定保留数据集中所有类别用于 {cmd:over()} 变量。当使用 {cmd:if} 或 {cmd:in} 而不使用 {cmd:allcategories} 指定时，图表绘制时会完全排除在指定子样本中不存在的 {cmd:over()} 变量的任何类别。
    使用 {cmd:allcategories} 选项，仍会在图例中出现在子样本中不存在的类别，但在这些类别应出现的地方不会绘制标记。在比较所有 {cmd:over()} 变量中并没有完全共享类别的子样本的图表时，这种行为是方便的。
    此选项仅在指定 {cmd:if} 或 {cmd:in} 时有效，或者如果这些变量中存在缺失值。 {cmd:allcategories} 不能与 {cmd:by()} 结合使用。


{marker yvar_options_desc}{...}
{title:yvar_options}

{phang}
{cmd:ascategory}
    指定将 {it:yvars} 视为第一 {cmd:over()} 组。

{pmore}
    当您指定 {cmd:ascategory} 时，结果与您指定一个 {it:yvar} 并引入新第一 {cmd:over()} 变量的情况相同。
    在文档中阅读时，无论何时提到是在第一个 {cmd:over()} 类别上执行的操作，或使用第一个 {cmd:over()} 类别进行的操作，都会在或使用 {it:yvars} 上进行。

{pmore}
    假设您指定了

{phang3}
	    {cmd:. graph dot y1 y2 y3, ascategory} {it:whatever_other_options}

{pmore}
    结果与您输入

{phang3}
	    {cmd:. graph dot} {it:y}{cmd:, over(}{it:newcategoryvariable}{cmd:)} {it:whatever_other_options}

{pmore}
    结果是内存中的数据集更长，而不是更宽。

{phang}
{cmd:asyvars}
    指定将第一 {cmd:over()} 组视为 {it:yvars}。

{pmore}
    当您指定 {cmd:asyvars} 时，结果与您移除第一 {cmd:over()} 组并引入多个 {it:yvars} 的情况相同。我们在大多数方面提到的不是所有方面，但暂时忽略这一点。如果你之前有 {it:k} {it:yvars} 并且在你的第一 {cmd:over()} 类别中有 {it:G} 个组，结果将与您指定了 {it:k}*{it:G} 个 yvars 并删除了 {cmd:over()} 时相同。在文档中阅读时，无论何时提到是在 {it:yvars} 上执行的操作或使用 {it:yvars} 的操作，都会在或使用第一 {cmd:over()} 组进行。

{pmore}
    假设您指定了

{phang3}
	    {cmd:. graph dot y, over(group) asyvars} {it:whatever_other_options}

{pmore}
    结果与您输入

{phang3}
	    {cmd:. graph dot} {it:y1 y2 y3} ...{cmd:,} {it:whatever_other_options}

{pmore}
    结果是内存中的数据集更宽，而不是更长。
    变量 {it:y1}、{it:y2} 等有时被称为虚拟 {it:yvars}。

{phang}
{cmd:percentages}
    指定标记位置基于 {it:yvar}_{it:i} 所占 {it:yvars} 总数的百分比。
    也就是说，

{phang3}
	    {cmd:. graph dot (mean) inc_male inc_female}

{pmore}
    将生成一张标记反映平均收入的图表。

{phang3}
	    {cmd:. graph dot (mean) inc_male inc_female, percentage}

{pmore}
    将生成一张标记位置为
    100*inc_male/(inc_male+inc_female) 和
    100*inc_female/(inc_male+inc_female) 的图表。

{pmore}
    如果您有一个 {it:yvar} 并希望基于第一个 {cmd:over()} 组计算百分比，请指定 {cmd:asyvars} 选项。例如，

{phang3}
	    {cmd:. graph dot (mean) wage, over(}{it:i}{cmd:) over(}{it:j}{cmd:)}

{pmore}
    将生成一张标记位置反映平均工资的图表。

{phang3}
	    {cmd:. graph dot (mean) wage, over(}{it:i}{cmd:) over(}{it:j}{cmd:) asyvars percentages}

{pmore}
   将生成一张标记位置为

	    100*( mean_ij / (Sum_i mean_ij) )

{phang}
{cmd:cw}
    指定逐案例删除。如果指定了 {cmd:cw}，则忽略 {it:yvars} 任何缺失值的观察值。默认情况下是尽可能使用所有数据计算每个统计量。


{marker linelook_options_desc}{...}
{title:linelook_options}

{phang}
{cmd:outergap(*}{it:#}{cmd:)} 和
{cmd:outergap(}{it:#}{cmd:)}
    指定图形顶部与第一条线之间以及最后一条线与图形底部之间的间距。

{pmore}
    {cmd:outergap(*}{it:#}{cmd:)} 指定修改默认值。
    指定 {cmd:outergap(*1.2)} 增加20%的间距，指定 {cmd:outergap(*.8)} 减少20%的间距。

{pmore}
    {cmd:outergap(}{it:#}{cmd:)} 指定间距为条形宽度单位的比例。{cmd:graph} {cmd:dot} 与 {cmd:graph} {cmd:bar} 相关。只需记住，{cmd:outergap(50)} 指定了一个相当可观但不过度的间距。

{phang}
{cmd:linegap(}{it:#}{cmd:)}
    指定在 {it:yvar} 线之间留出的间距。
    默认值为 {cmd:linegap(0)}，这意味着多个 {it:yvars} 将位于同一行。例如，输入

	    {cmd:. graph dot y1 y2, over(group)}

{pmore}
    结果为

		group 1  {c |}..x....o........
		group 2  {c |}........x..o....
		group 3  {c |}.......x.....o..
			 {c BLC}{c TT}{hline 4}{c TT}{hline 4}{c TT}{hline 4}{c TT}

{pmore}
    在以上，o 代表 y1 的符号，x 代表 y2 的符号。
    如果您想为不同的 {it:yvars} 指定单独的线条，请指定 {cmd:linegap(20)}：

	    {cmd:. graph dot y1 y2, over(group) linegap(20)}

		group 1  {c |}.......o........
			 {c |}..x.............
			 {c |}
		group 2  {c |}...........o....
			 {c |}........x.......
			 {c |}
		group 3  {c |}.............o..
			 {c |}.......x........
			 {c BLC}{c TT}{hline 4}{c TT}{hline 4}{c TT}{hline 4}{c TT}

{pmore}
    指定小于或大于20的数字，以减少或增加y1和y2线之间的距离。

{pmore}
    或者，更常见的做法是指定 {cmd:ascategory} 选项，这将导致

	    {cmd:. graph dot y1 y2, over(group) ascategory}

		group 1  y1  {c |}.......o........
			 y2  {c |}..o.............
			     {c |}
		group 2  y1  {c |}...........o....
			 y2  {c |}........o.......
			     {c |}
		group 3  y1  {c |}.............o..
			 y2  {c |}.......o........
			     {c BLC}{c TT}{hline 4}{c TT}{hline 4}{c TT}{hline 4}{c TT}


{pmore}
    {cmd:linegap()} 仅影响 {it:yvar} 线。如果想为第一、第二或第三 {cmd:over()} 组更改间距，请在 {cmd:over()} 组内指定 {it:over_subopt} {cmd:gap()}。

{phang}
{cmd:marker(}{it:#}{cmd:,} {it:marker_options}{cmd:)}
    指定用于标记第 {it:#} 个 {it:yvar} 变量的标记形状、大小、颜色等。 {cmd:marker(1,} ...{cmd:)} 涉及与第一个 {it:yvar} 相关的标记，{cmd:marker(2,} ...{cmd:)} 涉及与第二个相关的标记，以此类推。一个特别有用的 {it:marker_option} 是
    {cmd:mcolor(}{it:colorstyle}{cmd:)}, 用于设置标记的颜色和不透明度。例如，您可以指定 {cmd:marker(1, mcolor(green))} 使与第一个 {it:yvar} 相关的标记为绿色。有关颜色选择的列表，请参见 {manhelpi colorstyle G-4}，有关其他 {it:marker_options} 的信息，请参见 {manhelpi marker_options G-3}。

{phang}
{cmd:pcycle(}{it:#}{cmd:)}
    指定在下一个变量开始恢复标记样式所需绘制的变量数量。换句话说，{it:#} 指定在指定超过 {it:#} 个变量时，标记的外观回收的速度。大多数 {help schemes_zh} 的默认值为 {cmd:pcycle(15)}。

{phang}
{cmd:linetype(dot)},
{cmd:linetype(line)}和
{cmd:linetype(rectangle)}
    指定线条的样式。

{pmore}
    {cmd:linetype(dot)} 是通常的默认设置。在此样式中，使用点填充标记周围的线：
		       ........o........

{pmore}
    {cmd:linetype(line)} 指定使用实线填充标记周围的线：
		       {hline 8}o{hline 8}

{pmore}
    {cmd:linetype(rectangle)} 指定使用长“矩形”（看起来更像两条平行线）填充标记周围的区域：
		       ========o=======

{phang}
{cmd:ndots(}{it:#}{cmd:)}和
{cmd:dots(}{it:marker_options}{cmd:)}
    仅在 {cmd:linetype(dots)} 情况下相关。

{pmore}
    {cmd:ndots(}{it:#}{cmd:)} 指定用于填充线的点的数量。默认值为 {cmd:ndots(100)}。

{pmore}
    {cmd:dots(}{it:marker_options}{cmd:)} 指定用作点符号的标记符号、颜色和大小。默认值为使用 {cmd:dots(msymbol(p))}。参见 {manhelpi marker_options G-3}。

{phang}
{cmd:lines(}{it:line_options}{cmd:)}
    仅在指定 {cmd:linetype(line)} 时相关。它指定所用线条的外观；请参见 {manhelpi line_options G-3}。

{phang}
{cmd:rectangles(}{it:area_options}{cmd:)} 和
{cmd:rwidth(}{it:size}{cmd:)}
    仅在指定 {cmd:linetype(rectangle)} 时相关。

{pmore}
    {cmd:rectangles(}{it:area_options}{cmd:)}
    指定平行线（矩形）的外观；
    参见 {manhelpi area_options G-3}。

{pmore}
    {cmd:rwidth(}{it:size}{cmd:)}
    指定矩形的宽度（高度）（平行线之间的距离）。默认值通常为 {cmd:rwidth(.45)}；
    参见 {manhelpi size G-4}。

{phang}
{cmd:noextendline} 和 {cmd:extendline}
    在所有情况下均相关。它们指定线条（点、线或矩形）是否要穿过绘图区域边界并触及坐标轴。通常的默认值为 {cmd:extendline}，因此 {cmd:noextendline} 是选项。请参见 {manhelpi region_options G-3} 了解绘图区域的定义。

{phang}
{cmd:lowextension(}{it:size}{cmd:)}
和
{cmd:highextension(}{it:size}{cmd:)}
    是高级选项，指定线条（点、线或矩形）在坐标轴上扩展的量。通常的默认值是 {cmd:lowextension(0)} 和 {cmd:highextension(0)}。请参见 {manhelpi size G-4}。


{marker legending_options_desc}{...}
{title:legending_options}

{phang}
{it:legend_options}
    允许您控制图例。如果指定了多个 {it:yvar}，则会生成图例。否则，由于在分类 {it:x} 轴上标记了 {cmd:over()} 组，因此不需要图例。参见 {manhelpi legend_options G-3}。

{phang}
{cmd:nolabel}
    指定在自动构建图例时，优先使用 {it:yvars} 的变量名称，而不是“{varname} 的均值”或“{it:varname} 的总和”等。

{phang}
{cmd:yvaroptions(}{it:over_subopts}{cmd:)}
    允许您为 {it:yvars} 指定 {it:over_subopts}。这很少指定。

{phang}
{cmd:showyvars}
    指定在构建图例时，{it:yvars} 的标识在分类 {it:x} 轴上显示。如果指定了 {cmd:showyvars}，通常也会指定 {cmd:legend(off)}。


{marker axis_options_desc}{...}
{title:axis_options}

{phang}
{cmd:yalternate} 和 {cmd:xalternate}
    切换坐标轴出现的侧边。
    {cmd:yalternate} 将数值 {it:y} 轴从底部移动到顶部； {cmd:xalternate} 将分类 {it:x} 轴从左侧移动到右侧。
    如果您的方案默认将坐标轴放置在相反的边侧，{cmd:yalternate} 和 {cmd:xalternate} 将反转其动作。

{phang}
{cmd:exclude0}
    指定数值 {it:y} 轴不必缩放以包括 0。

{phang}
{cmd:yreverse}
    指定数值 {it:y} 轴的缩放方向反转，以使其从最大值到最小值。

{phang}
{it:axis_scale_options}
    指定数值 {it:y} 轴的缩放及外观；见 {manhelpi axis_scale_options G-3}。在那里，您还将看到选项 {cmd:xscale()} 除了 {cmd:yscale()}。
    忽略 {cmd:xscale()}，因为它与点图无关。

{phang}
{it:axis_label_options}
    指定数值 {it:y} 轴的标签。
    {it:axis_label_options} 还允许您添加和抑制网格线；
    参见 {manhelpi axis_label_options G-3}。在那里，您会看到，除了选项 {cmd:ylabel()}、{cmd:ytick()}、{cmd:ymlabel()} 和 {cmd:ymtick()}，还允许使用选项 {cmd:xlabel()}、...、{cmd:xmtick()}。忽略 {cmd:x*()} 选项，这与点图无关。

{phang}
{cmd:ytitle()}
    覆盖数值 {it:y} 轴的默认标题；见 {manhelpi axis_title_options G-3}。在那里，您还会找到 {cmd:xtitle()} 的文档，该选项对点图无关。


{marker title_and_other_options_desc}{...}
{title:title_and_other_options}

{phang}
{cmd:text()}
    向图形的指定位置添加文本；见 {manhelpi added_text_options G-3}。 {cmd:text()} 的基本语法为

{phang3}
	    {cmd:text(}{it:#_y} {it:#_x} {cmd:"}{it:text}{cmd:")}

{pmore}
    {cmd:text()} 在双向图形中记录。用于点图时，"numeric" {it:x} 轴的范围从 0 到 100。

{phang}
{cmd:yline()}
    在指定的 {it:y} 值处添加垂直线；查看 {manhelpi added_line_options G-3}。此处记录的 {cmd:xline()} 选项对点图无关。
    如果您希望添加网格线，请参见 {manhelpi axis_label_options G-3}。

{phang}
{it:aspect_option}
    允许您控制图形绘图区域的高度和宽度之间的关系；见 {manhelpi aspect_option G-3}。

{phang}
{it:std_options}
    允许您添加标题、控制图形大小、将图形保存到磁盘等；见 {manhelpi std_options G-3}。

{phang}
{cmd:by(}{varlist}{cmd:, ...)}
    在一个图形中绘制单独的图表；见 {manhelpi by_option G-3}。


{marker suboptions_desc}{...}
{title:与over()和yvaroptions()共用的子选项}

{phang}
{cmd:relabel(}{it:#} {cmd:"}{it:text}{cmd:"} ...{cmd:)}
    指定文本以覆盖默认类别标签。
    请参阅 {manhelp graph_bar##relabel():relabel()} 中对该非常有用选项的描述，了解更多信息。

{phang}
{cmd:label(}{it:cat_axis_label_options}{cmd:)}
    决定 {it:x} 轴上类别标签外观的其他方面。 除了 {cmd:label(labcolor())} 和 {cmd:label(labsize())}，这些选项很少被指定；见 
    {manhelpi cat_axis_label_options G-3}。

{phang}
{cmd:axis(}{it:cat_axis_line_options}{cmd:)}
    指定坐标轴线的呈现方式。这是很少指定的选项。见 {manhelpi cat_axis_line_options G-3}。

{phang}
{cmd:gap(}{it:#}{cmd:)} 和
{cmd:gap(*}{it:#}{cmd:)}
    指定此 {cmd:over()} 组内线条之间的间距。
    {cmd:gap(}{it:#}{cmd:)} 是以条形宽度单位进行指定的。
    请记住，{cmd:gap(50)} 是相当可观，但不过度的宽度。
    {cmd:gap(*}{it:#}{cmd:)} 允许修改默认间距。
    {cmd:gap(*1.2)} 将增加20%的间距，{cmd:gap(*.8)} 将减少20%的间距。

{phang}
{cmd:sort(}{varname}{cmd:)},
{cmd:sort(}{it:#}{cmd:)}, 和
{cmd:sort((}{it:stat}{cmd:)} {it:varname}{cmd:)}
    控制线条的排序。
    请参见 {manhelp graph_bar G-2:graph bar} 中的 {it:{help graph bar##remarks10:如何排序条形}} 和 {it:{help graph bar##remarks11:重新排序条形}}。


{pmore}
    {cmd:sort(}{varname}{cmd:)} 将线条放置在 {it:varname} 的顺序中。

{pmore}
    {cmd:sort(}{it:#}{cmd:)} 将标记按距离顺序放置。 {it:#} 指代应执行排序的 {it:yvar} 数。

{pmore}
    {cmd:sort((}{it:stat}{cmd:)} {varname}{cmd:)}
    将线条按计算统计的结果排序。

{phang}
{cmd:descending}
    指定线条的顺序（默认或由 {cmd:sort()} 指定）反转。


{marker remarks}{...}
{title:备注}

{pstd}
备注根据以下标题呈现：

	{help graph dot##remarks1:点图与水平条形图的关系}
	{help graph dot##remarks2:示例}
	{help graph dot##remarks3:附录：语法示例}


{marker remarks1}{...}
{title:点图与水平条形图的关系}

{pstd}
尽管外表相似，{cmd:graph} {cmd:hbar} 和 {cmd:graph} {cmd:dot} 实际上是相同的命令，这意味着概念和选项相同：

	{cmd:. graph hbar y, over(group)}

			{c LT}{hline 3}{c TRC}
		group 1 {c |}   {c |}
			{c LT}{hline 3}{c BRC}
			{c |}
			{c LT}{hline 8}{c TRC}
		group 2 {c |}        {c |}
			{c LT}{hline 8}{c BRC}
			{c |}
			{c LT}{hline 14}{c TRC}
		group 3 {c |}              {c |}
			{c LT}{hline 14}{c BRC}
			{c |}
			{c BLC}{c TT}{hline 4}{c TT}{hline 4}{c TT}{hline 4}{c TT}

	{cmd:. graph dot y, over(group)}

		group 1 {c |}...o............
		group 2 {c |}........o.......
		group 3 {c |}..............o.
			{c BLC}{c TT}{hline 4}{c TT}{hline 4}{c TT}{hline 4}{c TT}

{pstd}
这两个命令之间只有一个实质性区别：给定多个 {it:yvars}，{cmd:graph} {cmd:hbar} 绘制多个条形图：

	{cmd:. graph hbar y1 y2, over(group)}

			{c LT}{c -}{c TRC}
			{c |} {c |}
		group 1 {c LT}{c -}{c BT}{c -}{c TRC}
			{c |}   {c |}
			{c LT}{hline 3}{c BRC}
			{c |}
			{c LT}{hline 3}{c TRC}
			{c |}   {c |}
		group 2 {c LT}{hline 3}{c BT}{hline 4}{c TRC}
			{c |}        {c |}
			{c LT}{hline 8}{c BRC}
			{c |}
			{c LT}{hline 5}{c TRC}
			{c |}     {c |}
		group 3 {c LT}{hline 5}{c BT}{hline 8}{c TRC}
			{c |}              {c |}
			{c LT}{hline 14}{c BRC}
			{c |}
			{c BLC}{c TT}{hline 4}{c TT}{hline 4}{c TT}{hline 4}{c TT}

{pstd}
{cmd:graph} {cmd:dot} 在单条线条上绘制多个标记：

	{cmd:. graph dot y1 y2, over(group)}

		group 1 {c |}.x.o............
		group 2 {c |}...x....o.......
		group 3 {c |}.....x........o.
			{c BLC}{c TT}{hline 4}{c TT}{hline 4}{c TT}{hline 4}{c TT}

{pstd}
解决此问题（如果这是问题）的办法是指定选项 {cmd:ascategory} 或指定选项 {cmd:linegap(}{it:#}{cmd:)}。通常最好指定 {cmd:ascategory}。

{pstd}
请阅读 {cmd:graph} {cmd:hbar} 的说明，详见 {manhelp graph_bar G-2:graph bar}。


{marker remarks2}{...}
{title:示例}

{pstd}
因为 {cmd:graph} {cmd:dot} 和 {cmd:graph} {cmd:hbar} 是如此相关，
因此以下示例几乎无需解释：

	{cmd}. sysuse nlsw88

	. graph dot wage, over(occ, sort(1))
		ytitle("")
		title("1988年34-46岁女性的平均小时工资", span)
		subtitle(" ")
		note("来源:  1988年NLS数据，美国劳动部
		      劳工统计局", span){txt}
	  {it:({stata gr_example2 grdottall:点击运行})}
{* graph grdottall}{...}

	{cmd}. graph dot (p10) wage (p90) wage,
		over(occ, sort(2))
		legend(label(1 "第10百分位数") label(2 "第90百分位数"))
		title("小时工资的第10和第90百分位数", span)
		subtitle("1988年34-46岁女性" " ", span)
		note("来源:  1988年NLS数据，美国劳动部
		      劳工统计局", span){txt}
	  {it:({stata gr_example2 grdottall2:点击运行})}
{* graph grdottall2}{...}

	{cmd}. graph dot (mean) wage,
		over(occ, sort(1))
		by(collgrad,
		     title("1988年34-46岁女性的平均小时工资", span)
		     subtitle(" ")
		     note("来源:  1988年NLS数据，美国劳动部
			   劳工统计局", span)
		){txt}
	  {it:({stata gr_example2 grdotby:点击运行})}
{* graph grdottall2}{...}


{marker remarks3}{...}
{title:附录：语法示例}

{pstd}
让我们考虑一些 {cmd:graph} {cmd:dot} 命令及其作用：

{p 4 8 8}
{cmd:graph dot revenue}{break}
    一条线显示平均收入。

{p 4 8 8}
{cmd:graph dot revenue profit}{break}
    一条线有两个标记，一条标记显示平均收入，另一条显示平均利润。

{p 4 8 8}
{cmd:graph dot revenue, over(division)}{break}
    {it:#_of_divisions}条线，每条线有一个标记显示每个部门的平均收入。

{p 4 8 8}
{cmd:graph dot revenue profit, over(division)}{break}
    {it:#_of_divisions}条线，每条线有两个标记，一个显示每个部门的平均收入，另一个显示平均利润。

{p 4 8 8}
{cmd:graph dot revenue, over(division) over(year)}{break}
    {it:#_of_divisions}*{it:#_of_years}条线，每条线有一个标记显示每个部门的平均收入，按年份重复。分组将如下所示（假设有3个部门和2年）：

		     division 1   {c |}....o...............
	    year 1   division 2   {c |}..........o.........
		     division 3   {c |}..............o.....
				  {c |}
		     division 1   {c |}.o..................
	    year 2   division 2   {c |}.......o............
		     division 3   {c |}................o...
				  {c BLC}{hline 4}{c TT}{hline 4}{c TT}{hline 4}{c TT}{hline 4}{c TT}

{p 4 8 8}
{cmd:graph dot revenue, over(year) over(division)}{break}
    与上述相同，但排序不同。在以前的示例中，我们输入了 {cmd:over(division)} {cmd:over(year)}。这次，我们反向：

	    division 1   year 1   {c |}....o...............
			 year 2   {c |}.o..................
				  {c |}
	    division 2   year 1   {c |}..........o.........
			 year 2   {c |}.......o............
				  {c |}
	    division 3   year 1   {c |}..............o.....
			 year 2   {c |}................o...
				  {c BLC}{hline 4}{c TT}{hline 4}{c TT}{hline 4}{c TT}{hline 4}{c TT}

{p 4 8 8}
{cmd:graph dot revenue profit, over(division) over(year)}{break}
    {it:#_of_divisions}*{it:#_of_years}条线，每条线有两个标记，一个显示每个部门的平均收入，另一个显示平均利润，按年份重复。

{p 4 8 8}
{cmd:graph dot (sum) revenue profit, over(division) over(year)}{break}
    {it:#_of_divisions}*{it:#_of_years}条线，每条线有两个标记，第一个显示总收入，第二个显示每个部门的总利润，按年份重复。

{p 4 8 8}
{cmd:graph dot (median) revenue profit, over(division) over(year)}{break}
    {it:#_of_divisions}*{it:#_of_years}条线，每条线有两个标记，显示每个部门的中位数收入和中位数利润，按年份重复。

{p 4 8 8}
{cmd:graph dot (median) revenue (mean) profit, over(division) over(year)}{break}
    {it:#_of_divisions}*{it:#_of_years}条线，每条线有两个标记，显示每个部门的中位数收入和平均利润，按年份重复。
{p_end}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <graph_dot.sthlp>}