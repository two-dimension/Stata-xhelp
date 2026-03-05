{smcl}
{* *! version 1.2.4  15may2018}{...}
{viewerdialog "graph bar" "dialog graph_bar"}{...}
{vieweralsosee "[G-2] graph bar" "mansection G-2 graphbar"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[G-2] graph dot" "help graph_dot_zh"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[D] collapse" "help collapse_zh"}{...}
{vieweralsosee "[R] table" "help table_zh"}{...}
{viewerjumpto "Syntax" "graph_bar_zh##syntax"}{...}
{viewerjumpto "Menu" "graph_bar_zh##menu"}{...}
{viewerjumpto "Description" "graph_bar_zh##description"}{...}
{viewerjumpto "Links to PDF documentation" "graph_bar_zh##linkspdf"}{...}
{viewerjumpto "group_options" "graph_bar_zh##group_options_desc"}{...}
{viewerjumpto "yvar_options" "graph_bar_zh##yvar_options_desc"}{...}
{viewerjumpto "lookofbar_options" "graph_bar_zh##lookofbar_options_desc"}{...}
{viewerjumpto "legending_options" "graph_bar_zh##legending_options_desc"}{...}
{viewerjumpto "axis_options" "graph_bar_zh##axis_options_desc"}{...}
{viewerjumpto "title_and_other_options" "graph_bar_zh##title_and_other_options_desc"}{...}
{viewerjumpto "Suboptions for use with over() and yvaroptions()" "graph_bar_zh##suboptions_desc"}{...}
{viewerjumpto "Remarks" "graph_bar_zh##remarks"}{...}
{viewerjumpto "References" "graph_bar_zh##references"}
{help graph_bar:English Version}
{hline}{...}
{p2colset 1 20 22 2}{...}
{p2col:{bf:[G-2] graph bar} {hline 2}}条形图{p_end}
{p2col:}({mansection G-2 graphbar:查看完整PDF手册条目}){p_end}
{p2colreset}{...}


{marker syntax}{...}
{title:语法}

{p 8 23 2}
{cmdab:gr:aph} {cmd:bar}{space 2}{it:yvars}
{ifin}
[{it:{help graph bar##weight:weight}}]
[{cmd:,}
{it:options}]

{p 8 23 2}
{cmdab:gr:aph} {cmd:hbar}
{it:yvars}
{ifin}
[{it:{help graph bar##weight:weight}}]
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

    其中 {it:stat} 可以是以下任意值：

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

    或者是
{p 20 20 2}
    任何其他在 {manhelp collapse D} 中定义的 {it:stats}

{pstd}
{it:yvars} 是可选的，如果指定了 {opt over(varname)} 选项。
{cmd:percent} 是默认统计量，百分比是基于 {it:varname} 计算的。

{pstd}
    {cmd:mean} 是在指定 {it:varname} 或 {it:varlist} 时的默认值
    且未指定 {it:stat} 。{cmd:p1} 表示第一个百分位数，
    {cmd:p2} 表示第二个百分位数，以此类推；{cmd:p50} 表示
    与 {cmd:median} 相同。{cmd:count} 表示指定变量的非缺失值个数。


{synoptset 30}{...}
{p2col:{it:options}}描述{p_end}
{p2line}
{p2col:{help graph_bar##group_options:{it:group_options}}}所画条形的类别{p_end}
{p2col:{help graph_bar##yvar_options:{it:yvar_options}}}条形所代表的变量{p_end}
{p2col:{help graph_bar##lookofbar_options:{it:lookofbar_options}}}条形的外观{p_end}
{p2col:{help graph_bar##legending_options:{it:legending_options}}}如何标记 {it:yvars}{p_end}
{p2col:{help graph_bar##axis_options:{it:axis_options}}}如何标记数值y轴{p_end}
{p2col:{help graph_bar##title_and_other_options:{it:title_and_other_options}}}标题、附加文本、长宽比等{p_end}
{p2line}


{marker group_options}{...}
{p2col:{it:group_options}}描述{p_end}
{p2line}
{p2col:{cmdab:o:ver:(}{varname}[{cmd:,} {help graph bar##over_subopts:{it:over_subopts}}]{cmd:)}}条形绘制的类别；选项可以重复{p_end}
{p2col:{cmd:nofill}}省略空类别{p_end}
{p2col:{cmdab:miss:ing}}将缺失值保留为类别{p_end}
{p2col:{cmdab:allc:ategories}}包括数据集中所有的类别{p_end}
{p2line}


{marker yvar_options}{...}
{p2col:{it:yvar_options}}描述{p_end}
{p2line}
{p2col:{cmdab:asc:ategory}}将 {it:yvars} 视作第一个 {cmd:over()} 组{p_end}
{p2col:{cmdab:asy:vars}}将第一个 {cmd:over()} 组视作 {it:yvars}{p_end}
{p2col:{cmdab:per:centages}}在 {it:yvars} 内显示百分比{p_end}
{p2col:{cmd:stack}}将 {it:yvar} 条形叠加{p_end}
{p2col:{cmdab:cw}}在计算 {it:yvar} 统计量时忽略任何 {it:yvar} 的缺失值{p_end}
{p2line}


{marker lookofbar_options}{...}
{p2col:{it:lookofbar_options}}描述{p_end}
{p2line}
{p2col:{cmd:outergap(}[{cmd:*}]{it:#}{cmd:)}}边缘与第一条柱之间、最后一条柱与边缘之间的间距{p_end}
{p2col:{cmd:bargap(}{it:#}{cmd:)}} {it:yvar} 条形之间的间距；默认值为 0{p_end}
{p2col:{cmdab:inten:sity:(}[{cmd:*}]{it:#}{cmd:)}}填充的强度{p_end}
{p2col:{cmdab:linten:sity:(}[{cmd:*}]{it:#}{cmd:)}}轮廓线的强度{p_end}
{p2col:{cmdab:pcyc:le:(}{it:#}{cmd:)}}条形样式在 {help pstyle_zh:pstyles} 中的循环{p_end}
{p2col:{cmd:bar(}{it:#}{cmd:,} {it:{help barlook_options_zh}}{cmd:)}} {it:#}th {it:yvar} 条的外观{p_end}
{p2line}


{marker legending_options}{...}
{p2col:{it:legending_options}}描述{p_end}
{p2line}
{p2col:{it:{help legend_options_zh}}}控制 {it:yvar} 图例{p_end}
{p2col:{cmdab:nolab:el}}在图例中使用 {it:yvar} 名称，而非标签{p_end}
{p2col:{cmdab:yvar:options:(}{help graph_bar##over_subopts:{it:over_subopts}}{cmd:)}} {it:yvars} 的 {it:over_subopts} 选项；不常指定{p_end}
{p2col:{cmd:showyvars}}在 x 轴上标记 {it:yvars}；不常指定{p_end}
{p2col:{help blabel_option_zh:{bf:{ul:blab}el(...)}}}在柱上增加标签{p_end}
{p2line}


{marker axis_options}{...}
{p2col:{it:axis_options}}描述{p_end}
{p2line}
{p2col:{cmdab:yalt:ernate}}将数值 y 轴放在右侧（顶部）{p_end}
{p2col:{cmdab:xalt:ernate}}将类别 x 轴放在顶部（右侧）{p_end}
{p2col:{cmd:exclude0}}不强制 y 轴包含 0{p_end}
{p2col:{cmdab:yrev:erse}}反转 y 轴{p_end}
{p2col:{it:{help axis_scale_options_zh}}} y 轴缩放及外观{p_end}
{p2col:{it:{help axis_label_options_zh}}} y 轴标签{p_end}
{p2col:{help axis_title_options_zh:{bf:{ul:yti}tle(...)}}} y 轴标题{p_end}
{p2line}


{marker title_and_other_options}{...}
{p2col:{it:title_and_other_options}}描述{p_end}
{p2line}
{p2col:{help added_text_option:{bf:text(...)}}}在图上增加文本；x 范围为 [0,100]{p_end}
{p2col:{help added_line_options_zh:{bf:yline(...)}}}在图上增加 y 线{p_end}
{p2col:{it:{help aspect_option_zh}}}约束图形区域的长宽比{p_end}
{p2col:{it:{help std_options_zh}}}标题、图形大小、保存到磁盘{p_end}

{p2col:{help by_option_zh:{bf:by(}{it:varlist}{bf:, ...)}}}为子组重复{p_end}
{p2line}


{pstd}{marker over_subopts}
选项 {it:over_subopts} -- 用于
{cmd:over(}{varname}{cmd:,} {it:over_subopts}{cmd:)}
及在少数情况下在
{cmd:yvaroptions(}{it:over_subopts}{cmd:)} 中 -- 是

{p2col:{it:over_subopts}}描述{p_end}
{p2line}
{p2col:{cmdab:re:label:(}{it:#} {cmd:"}{it:text}{cmd:"} ...{cmd:)}}更改轴标签{p_end}
{p2col:{cmdab:lab:el:(}{it:{help cat_axis_label_options_zh}}{cmd:)}}标签的表现形式{p_end}
{p2col:{cmdab:ax:is:(}{it:{help cat_axis_line_options_zh}}{cmd:)}}坐标轴线的表现形式{p_end}

{p2col:{cmd:gap(}[{cmd:*}]{it:#}{cmd:)}}条形之间的间距{cmd:over()} 类别{p_end}
{p2col:{cmd:sort(}{varname}{cmd:)}}将条形按预定顺序排列{p_end}
{p2col:{cmd:sort(}{it:#}{cmd:)}}按高度顺序排列条形{p_end}
{p2col:{cmd:sort((}{it:stat}{cmd:)} {varname}{cmd:)}}按计算得出的顺序排列条形{p_end}
{p2col:{cmdab:des:cending}}反转默认或指定的条形顺序{p_end}
{p2col:{cmdab:rev:erse}}重新设定顺序使最大值到最小值{p_end}
{p2line}

{marker weight}{...}
{pstd}
允许使用 {cmd:aweight}、{cmd:fweight} 和 {cmd:pweight}；见 {help weight_zh} 和 {manhelp collapse D} 中有关权重的说明。


{marker menu}{...}
{title:菜单}

{phang}
{bf:图形 > 条形图}


{marker description}{...}
{title:描述}

{pstd}
{cmd:graph} {cmd:bar} 绘制垂直条形图。在垂直条形图中，y 轴是数值，x 轴是类别。

	{cmd:. graph bar (mean)} {it:numeric_var}{cmd:, over(}{it:cat_var}{cmd:)}

	      {it:y}
	      {c |}{...}
{col 47}{it:numeric_var} 必须是数值；
	    7 {c RT}            {c TLC}{hline 2}{c TRC}{...}
{col 47}统计数据显示在
	      {c |}            {c |}  {c |}{...}
{col 47}y 轴上。
	    5 {c RT}  {c TLC}{hline 2}{c TRC}      {c |}  {c |}
	      {c |}  {c |}  {c |}      {c |}  {c |}{...}
{col 47}{it:cat_var} 可以是数值或字符串；
	      {c |}  {c |}  {c |}      {c |}  {c |}{...}
{col 47}它显示在类别
	      {c |}  {c |}  {c |}      {c |}  {c |}{...}
{col 47}x 轴上。
	      {c BLC}{hline 2}{c BT}{hline 2}{c BT}{hline 6}{c BT}{hline 2}{c BT}{hline 9} {it:x}
		 首个    第二个    {bf:...}
		 组     组

{pstd}
{cmd:graph} {cmd:hbar} 绘制水平条形图。在水平条形图中，数值轴仍称为 y 轴，类别轴仍称为 x 轴，但是 {it:y} 水平显示，而 {it:x} 垂直显示。

	{cmd:. graph hbar (mean)} {it:numeric_var}{cmd:, over(}{it:cat_var}{cmd:)}

			  {it:x}
			  {c |}
			  {c LT}{hline 6}{c TRC}
	    首个组   {c |}      {c |}
			  {c LT}{hline 6}{c BRC}{...}
{col 48}概念上相同的布局：
			  {c |}{...}
{col 48}{it:numeric_var} 仍然出现在
			  {c LT}{hline 10}{c TRC}{...}
{col 48}上 {it:y}， {it:cat_var} 在 {it:x} 上
	    第二个组  {c |}          {c |}
			  {c LT}{hline 10}{c BRC}
		{bf:.}         {c |}
		{bf:.}         {c |}
			  {c BLC}{hline 6}{c TT}{hline 3}{c TT}{hline 6} {it:y}
				 5   7

{pstd}
垂直和水平条形图的语法是相同的；唯一的要求是在 {cmd:bar} 和 {cmd:hbar} 之间切换。

{marker linkspdf}{...}
{title:PDF 文档链接}

        {mansection G-2 graphbarQuickstart:快速开始}

        {mansection G-2 graphbarRemarksandexamples:备注与示例}

{pstd}
以上部分不包含在此帮助文件中。


{marker group_options_desc}{...}
{title:group_options}

{phang}
{cmd:over(}{varname}[{cmd:,} {it:over_subopts}]{cmd:)}
    指定一个类变量，{it:yvars} 在其上进行重复。 {it:varname} 可以是字符串或数值。当指定多个 {it:yvars} 时，可以指定两个 {cmd:over()} 选项，指定一个 {it:yvar} 时可以指定三个 {cmd:over()}；可以指定选项；请参见下文的 {it:{help graph bar##remarks2:语法示例}} 和 {it:{help graph bar##remarks7:多个 over() （重复条形）}}。

{marker nofill}{...}
{phang}
{cmd:nofill}
    指定省略缺失的子类别。例如，考虑

{phang3}
	    {cmd:. graph bar (mean) y, over(division) over(region)}

{pmore}
    假设其中一个分部在某个区域没有数据，或者因为没有这样的观察值，或者 y==. 对于这样的观察值。在生成的图表中，该条形将缺失：

	     {c TLC}{c -}{c TRC}    {c TLC}{c -}{c TRC}    {c TLC}{c -}{c TRC}       {c TLC}{c -}{c TRC}           {c TLC}{c -}{c TRC}
	     {c |} {c |}    {c |} {c |}    {c |} {c |}       {c |} {c |}           {c |} {c |}
	     {c |} {c |}    {c |} {c |}    {c |} {c |}       {c |} {c |}           {c |} {c |}
	    {c -}{c BT}{c -}{c BT}{hline 4}{c BT}{c -}{c BT}{hline 4}{c BT}{c -}{c BT}{hline 7}{c BT}{c -}{c BT}{c -}
	    div_1  div_2  div_3     div_1  div_2  div_3
		  region_1               region_2

{pmore}
    如果您指定 {cmd:nofill}，则该缺失类别将从图表中删除：

	     {c TLC}{c -}{c TRC}    {c TLC}{c -}{c TRC}    {c TLC}{c -}{c TRC}       {c TLC}{c -}{c TRC}    {c TLC}{c -}{c TRC}
	     {c |} {c |}    {c |} {c |}    {c |} {c |}       {c |} {c |}    {c |} {c |}
	     {c |} {c |}    {c |} {c |}    {c |} {c |}       {c |} {c |}    {c |} {c |}
	    {c -}{c BT}{c -}{c BT}{hline 4}{c BT}{c -}{c BT}{hline 4}{c BT}{c -}{c BT}{hline 7}{c BT}{c -}{c BT}{c -}
	    div_1  div_2  div_3     div_1  div_3
		  region_1            region_2

{phang}
{cmd:missing}
    指定保留 {cmd:over()} 变量的缺失值作为其类别，{cmd:.} 一个，{cmd:.a} 另一个，等等。默认行为是假设这些观察值在数据集中根本不存在；这些观察值会被忽略。如果 {cmd:over()} 变量是数值并包含缺失值，或者如果它是字符串并包含 ""，则视为缺失。

{phang}
{cmd:allcategories}
    指定在整个数据集中保留 {cmd:over()} 变量的所有类别。当指定 {cmd:if} 或 {cmd:in} 而不指定 {cmd:allcategories} 时，图形被绘制，完全排除在指定子样本中未出现的 {cmd:over()} 变量的任何类别。使用 {cmd:allcategories} 选项，即使类别在子样本中未出现，仍将出现在图例中，并且在这些类别应出现的位置绘制零高度的条形。这种行为在比较包含不完全相同类别的子样本的图形时非常方便。此选项仅在指定 {cmd:if} 或 {cmd:in} 时或变量中存在缺失值时有效。{cmd:allcategories} 不能与 {cmd:by()} 组合。

{marker yvar_options_desc}{...}
{title:yvar_options}

{marker ascategory}{...}
{phang}
{cmd:ascategory}
    表示将 {it:yvars} 视为第一个 {cmd:over()} 组；请参见下文的 {it:{help graph bar##remarks3:条形的处理}}。 {cmd:ascategory} 是一个有用的选项。

{pmore}
    当你指定 {cmd:ascategory} 时，结果与指定一个 {it:yvar} 并引入一个新的第一个 {cmd:over()} 变量是相同的。每当你在文档中读到某些事情是针对第一个 {cmd:over()} 类别进行的，或是使用第一个 {cmd:over()} 类别进行的，它就将在 {it:yvars} 上进行。

{pmore}
    假设你指定了

{phang3}
	    {cmd:. graph bar y1 y2 y3, ascategory} {it:其他选项}

{pmore}
    结果将与输入

{phang3}
	    {cmd:. graph bar} {it:y}{cmd:, over(}{it:newcategoryvariable}{cmd:)} {it:其他选项}

{pmore}
    的结果相同，只是内存中数据集更长而不是更宽。

{marker asyvars}{...}
{phang}
{cmd:asyvars}
    指定第一个 {cmd:over()} 组视为 {it:yvars}。请参见下文的 {it:{help graph bar##remarks3:条形的处理}}。

{pmore}
    当你指定 {cmd:asyvars}，结果将与去掉第一个 {cmd:over()} 组并引入多个 {it:yvars} 是相同的。如果你之前有 {it:k} {it:yvars}，并且在你的第一个 {cmd:over()} 类别中有 {it:G} 的组，结果将会与指定 {it:k}*{it:G} 的 {it:yvars} 并移除 {cmd:over()} 是相同的。每当你在文件中读取某些内容时，某些事情都是关于 {it:yvars} 或者利用 {it:yvars} 时，它将在第一个 {cmd:over()} 组中进行。

{pmore}
    假设你指定了

{phang3}
	    {cmd:. graph bar y, over(group) asyvars} {it:其他选项}

{pmore}
    结果将与输入

{phang3}
	    {cmd:. graph bar} {it:y1 y2 y3} ...{cmd:,} {it:其他选项}

{pmore}
    的结果相同，只是内存中数据集更宽而不是更长。 {it:y1}、{it:y2} 等经常被称为虚拟 {it:yvars}。

{phang}
{cmd:percentages}
    指定条形高度基于 {it:yvar_i} 占所有 {it:yvars} 的百分比。也就是说，

{phang3}
	    {cmd:. graph bar (mean) inc_male inc_female}

{pmore}
    将生成一张条形图，其高度反映平均收入。

{phang3}
	    {cmd:. graph bar (mean) inc_male inc_female, percentage}

{pmore}
    将生成一张条形图，其高度为
    
	    100*inc_male/(inc_male+inc_female) 和
	    100*inc_female/(inc_male+inc_female) 的百分比。

{pmore}
    如果你有一个 {it:yvar} 且想在第一个 {cmd:over()} 组中计算百分比，请指定 {cmd:asyvars} 选项。例如，

{phang3}
	    {cmd:. graph bar (mean) wage, over(}{it:i}{cmd:) over(}{it:j}{cmd:)}

{pmore}
    将生成一张条形图，条形高度反映平均工资。

{phang3}
	    {cmd:. graph bar (mean) wage, over(}{it:i}{cmd:) over(}{it:j}{cmd:) asyvars percentages}

{pmore}
   将生成一张条形图，条形高度为

	    100*( mean_ij / (Sum_i mean_ij) )

{pmore}
    选项 {cmd:stack} 经常与选项 {cmd:percentage} 组合使用。

{phang}
{cmd:stack}
    指定 {it:yvar} 条形堆叠。

{p 12 40 2}
	    {cmd:. graph bar (mean) inc_male inc_female,}
			{bind:{cmd:over(region) percentage stack}}

{pmore}
    将生成一张所有条形相同高度的图表，100%。每个条形将是两条堆叠的条形（inc_male 的百分比和 inc_female 的百分比），因此该分部将显示 inc_male 和 inc_female 在总收入中的相对份额。

{pmore}
    要在第一个 {cmd:over()} 组上堆叠条形，指定 {cmd:asyvars} 选项：

{p 12 40 2}
	    {cmd:. graph bar (mean) wage, over(sex) over(region)}
			{bind:{cmd:asyvars percentage stack}}

{phang}
{cmd:cw}
    指定逐情况删除。如果指定了 {cmd:cw}，则缺失任何 {it:yvars} 的观察值将被忽略。默认情况下，使用所有可能的数据计算请求的统计量。


{marker lookofbar_options_desc}{...}
{title:lookofbar_options}

{phang}
{cmd:outergap(*}{it:#}{cmd:)} 和
{cmd:outergap(}{it:#}{cmd:)}
    指定图表边缘与第一条条形之间、最后一条条形与图表边缘之间的间距。

{pmore}
    {cmd:outergap(*}{it:#}{cmd:)} 指定修改默认值。
    指定 {cmd:outergap(*1.2)} 将间距增加 20%，且指定 {cmd:outergap(*.8)} 将间距减少 20%。

{pmore}
    {cmd:outergap(}{it:#}{cmd:)} 指定间距为单位的百分比条宽度。 {cmd:outergap(50)} 指定间距为条宽度的二分之一。

{phang}
{cmd:bargap(}{it:#}{cmd:)}
    指定在 {it:yvar} 条形之间留下的间距，为单位的百分比条宽度。 默认值为 {cmd:bargap(0)}，意味着条形相接触。

{pmore}
    {cmd:bargap()} 可以指定为正数或负数。 {cmd:bargap(10)} 在条形之间留出小间距（精确数值为条宽的 10%）。 {cmd:bargap(-30)} 将条形重叠 30%。

{pmore}
    {cmd:bargap()} 仅影响 {it:yvar} 条形。如果你想更改第一个、第二个或第三个 {cmd:over()} 组的间距，请在 {cmd:over()} 内部指定 {it:over_subopt} {cmd:gap()}；见下文的 {it:{help graph bar##subopt_over:与 over() 和 yvaroptions() 的子选项}}。

{phang}
{cmd:intensity(}{it:#}{cmd:)}
和
{cmd:intensity(*}{it:#}{cmd:)}
    指定用于填充条形内部颜色的强度。 {cmd:intensity(}{it:#}{cmd:)} 指定强度，{cmd:intensity(*}{it:#}{cmd:)} 指定相对于默认的强度。

{pmore}
    默认情况下，条形填充颜色与其边框颜色相同，经过减弱。指定 {cmd:intensity(*}{it:#}{cmd:)}, {it:#}<1, 使其更减弱，指定 {cmd:intensity(*}{it:#}{cmd:)}, {it:#}>1, 使其更加强烈。

{pmore}
    指定 {cmd:intensity(0)} 如果你根本不想填充该条形。指定 {cmd:intensity(100)} 如果你想让条形的强度与边框的强度保持一致。

{phang}
{cmd:lintensity(}{it:#}{cmd:)}
和
{cmd:lintensity(*}{it:#}{cmd:)}
    指定用于描绘条形轮廓的线条的强度。{cmd:lintensity(}{it:#}{cmd:)} 指定强度，{cmd:lintensity(*}{it:#}{cmd:)} 指定相对于默认的强度。

{pmore}
    默认情况下，条形的轮廓强度与其填充强度相同，或者相对增强，具体取决于您选择的方案；请见 {manhelp schemes G-4:方案介绍}。如果您希望条形的轮廓用最深的色彩表现，请指定 {cmd:intensity(255)}。如果您仅希望增强轮廓，请指定 {cmd:intensity(*}{it:#}{cmd:)}, {it:#}>1，如果您希望减弱轮廓，请指定 {cmd:intensity(*}{it:#}{cmd:)}, {it:#}<1。

{phang}
{cmd:pcycle(}{it:#}{cmd:)}
    指定在下一个变量开始之前绘制多少变量的条形，然后恢复到第一个变量的 pstyle -- {cmd:p1bar}（接下来的变量使用 {cmd:p2bar} 等）。换句话说，{it:#} 指定当指定多个 {it:#} 变量时条形外观的循环速率。大多数 {help schemes_zh} 的默认值是 {cmd:pcycle(15)}。

{phang}
{cmd:bar(}{it:#}{cmd:,} {it:barlook_options}{cmd:)}
    指定 {it:yvar} 条形的外观。
    {cmd:bar(1,} ...{cmd:)} 指的是与第一个 {it:yvar} 关联的条形，{cmd:bar(2,} ...{cmd:)} 指的是与第二个关联的条形，以此类推。最有用的 {it:barlook_option} 是 {cmd:color(}{it:colorstyle}{cmd:)}, 可以设置条形的颜色和不透明度。例如，你可以指定 {cmd:bar(1, color(green))} 使与第一个 {it:yvar} 相关的条形为绿色。请见 {manhelpi colorstyle G-4} 以获取颜色选择的列表，参考 {manhelpi barlook_options G-3} 了解其他 {it:barlook_options} 的信息。


{marker legending_options_desc}{...}
{title:legending_options}

{phang}
{it:legend_options}
    控制图例。
    如果指定了多个 {it:yvar} ，则会生成图例。
    否则，不需要图例，因为 {cmd:over()} 组会在类别 x 轴上标记。
    请参见 {manhelpi legend_options G-3}，并请参见下文的 {it:{help graph bar##remarks3:条形的处理}}。

{phang}
{cmd:nolabel}
    指定在自动构造图例时，使用 {it:yvars} 的变量名称，而不是 "mean of {varname}" 或 "sum of {it:varname}" 等。

{phang}
{cmd:yvaroptions(}{it:over_subopts}{cmd:)}
    允许你为 {it:yvars} 指定 {it:over_subopts} 。这很少这样做。

{phang}
{cmd:showyvars}
    指定在构建图例时，额外显示 {it:yvars} 的身份在类别 x 轴上。如果指定了 {cmd:showyvars}，同时指定 {cmd:legend(off)} 是常见的。

{phang}
{cmd:blabel()} 允许你在条形顶部添加标签；请参见 {manhelpi blabel_option G-3}。


{marker axis_options_desc}{...}
{title:axis_options}

{phang}
{cmd:yalternate} 和 {cmd:xalternate}
    切换轴出现的侧面。

{pmore}
    与 {cmd:graph} {cmd:bar} 一起使用时，{cmd:yalternate} 会将数值 y 轴移到右侧；{cmd:xalternate} 会将类别 x 轴移到顶部。

{pmore}
    与 {cmd:graph} {cmd:hbar} 一起使用时，{cmd:yalternate} 会将数值 y 轴移到顶部；{cmd:xalternate} 会将类别 x 轴移到右侧。

{pmore}
    如果你的方案默认将轴放在相反的侧面，那么 {cmd:yalternate} 和 {cmd:xalternate} 会反转其作用。

{phang}
{cmd:exclude0}
    指定数值 y 轴不必缩放到包括 0。

{phang}
{cmd:yreverse}
    指定数值 y 轴的刻度反转，使其从最大值到最小值。这一选项导致条形向下延伸，而非向上（对于 {cmd:graph} {cmd:bar} ）或从右向左而非从左向右（对于 {cmd:graph} {cmd:hbar} ）。

{phang}
{it:axis_scale_options}
    指定数值 y 轴的缩放及外观；请参见 {manhelpi axis_scale_options G-3}。在那里你还会看到选项 {cmd:xscale()} 除了 {cmd:yscale()}。
    忽略 {cmd:xscale()}，因为它与条形图无关。

{phang}
{it:axis_label_options}
    指定数值 y 轴的标签。 {it:axis_label_options} 还允许你添加和抑制网格线；
    请参见 {manhelpi axis_label_options G-3}。
    在那里你会看到，除了 {cmd:ylabel()}、{cmd:ytick()} 和 {cmd:ymtick()} 的选项外，允许使用 {cmd:xlabel()} 和 {cmd:xmtick()} 的选项。忽略 {cmd:x*()} 选项，它们与条形图无关。

{phang}
{cmd:ytitle()}
    覆盖数值 y 轴的默认标题；请参见 {manhelpi axis_title_options G-3}。在那里你还会找到选项 {cmd:xtitle()} 的文档，它与条形图无关。


{marker title_and_other_options_desc}{...}
{title:title_and_other options}

{phang}
{cmd:text()}
    将文本添加到图表中的指定位置；请参见 {manhelpi added_text_option G-3}。 {cmd:text()} 的基本语法为

	    {cmd:text(}{it:#_y} {it:#_x} {cmd:"}{it:text}{cmd:")}

{pmore}
    {cmd:text()} 在双向图形中进行文档编制。当与条形图一起使用时，“数值” x 轴的范围为 0 到 100。

{phang}
{cmd:yline()}
    在指定 y 值处添加水平 ({cmd:bar}) 或垂直 ({cmd:hbar}) 线；请参见 {manhelpi added_line_options G-3}。此外存在的 {cmd:xline()} 选项对条形图无关。
    如果你有兴趣添加网格线，请参见 {manhelpi axis_label_options G-3}。

{phang}
{it:aspect_option}
    允许你控制图形绘制区域的高度与宽度之间的关系；请参见 {manhelpi aspect_option G-3}。

{phang}
{it:std_options}
    允许你添加标题，控制图形大小，将图形保存到磁盘等详细内容；请参见 {manhelpi std_options G-3}。

{phang}
{cmd:by(}{varlist}{cmd:, ...)}
    在一个图表中绘制单独的图形；请参见 {manhelpi by_option G-3}，并且参见下文的 {it:{help graph bar##remarks16:与 by() 一起使用}}。


{marker suboptions_desc}{...}
{marker subopt_over}{...}
{title:与 over() 和 yvaroptions() 的子选项}

{marker relabel()}{...}
{phang}
{cmd:relabel(}{it:#} {cmd:"}{it:text}{cmd:"} ...{cmd:)}
    指定文本以覆盖默认类别标签。
    假设变量 {cmd:sex} 取两个值，而你输入

{phang3}
	    {cmd:. graph bar} ...{cmd:,} ... {cmd:over(sex, relabel(1 "Male" 2 "Female"))}

{pmore}
    结果将是将 {cmd:sex} 的第一个值重新标为“男性”，第二个值标为“女性”；“男性”和“女性”将显示在类别 x 轴上标记条形。这个结果是，变量 {cmd:sex} 不管是字符串还是数值，以及实际存储在变量中的记录。

{pmore}
    也就是说，{it:#} 指的是类别号，按对变量的唯一值（这里 {cmd:sex}）进行排序并赋值 1给第一个值，2给第二个，依此类推。如果你不确定该排序的情况，最简单的方法就是输入

	    {cmd:. tabulate sex}

{pmore}
    如果你还计划指定 {cmd:graph} {cmd:bar} 或 {cmd:graph} {cmd:hbar} 的 {cmd:missing} 选项，

{phang3}
	    {cmd:. graph bar} ...{cmd:,} ... {cmd:missing over(sex, relabel(}...{cmd:))}

{pmore}
    那么输入

	    {cmd:. tabulate sex, missing}

{pmore}
     以确定编码。参见 {manhelp tabulate_oneway R:tabulate 单向}。

{pmore}
     重标记值不会改变条形显示的顺序。

{pmore}
    你可以通过在用双引号括起来的字符串中使用被双引号括四次的字符串来创建多行标签：

	    {cmd:over(}{it:varname}{cmd:, relabel(1 `" "Male"   "patients" "'}
				  {cmd:2 `" "Female" "patients" "'))}

{pmore}
    当指定被双引号括的字符串时，请记得在外层使用复合双引号 {cmd:`"} 和 {cmd:"'}。

{pmore}
    {cmd:relabel()} 也可以在 {cmd:yvaroptions()} 内指定。
    默认情况下，{it:yvars} 的身份在图例中揭示，因此指定 {cmd:yvaroptions(relabel())} 会更改图例。因为它会修改图例，所以使用 {cmd:legend(label())} 的方式更可取；见上文的 {it:{help graph bar##legending_options_desc:legending_options}}。在任何情况下，指定

	    {cmd:yvaroptions(relabel(1 "Males" 2 "Females"))}

{pmore}
    将更改图例中第一个 {it:yvar} 和第二个 {it:yvar} 的文本。在 {cmd:relabel(}{it:#} ...{cmd:)} 中，{it:#} 指的是 {it:yvar} 编号。
    在这里，您不能使用嵌套的引号创建多行标签；使用 {cmd:legend(label())} 选项，因为它提供多行功能。

{phang} {cmd:label(}{it:cat_axis_label_options}{cmd:)} 确定类别标签在 x 轴上的其他外观。
除 {cmd:label(labcolor())} 和 {cmd:label(labsize())} 外，这些选项很少指定；请见 {manhelpi cat_axis_label_options G-3}。

{phang}
{cmd:axis(}{it:cat_axis_line_options}{cmd:)}
    指定轴线的绘制方式。此选项很少指定。请见 {manhelpi cat_axis_line_options G-3}。

{phang}
{cmd:gap(}{it:#}{cmd:)} 和
{cmd:gap(*}{it:#}{cmd:)}
    指定在该 {cmd:over()} 组中条形之间的间距。
    {cmd:gap(}{it:#}{cmd:)} 在百分比条宽度单位中指定，因此 {cmd:gap(67)} 意味着两条条形的宽度的三分之二。
    {cmd:gap(*}{it:#}{cmd:)} 允许修改默认间距。
    {cmd:gap(*1.2)} 将间距增加 20%，而 {cmd:gap(*.8)} 将间距减少 20%。

{pmore}
    为了理解 {cmd:over(}...{cmd:,} {cmd:gap())} 和 {cmd:bargap()} 之间的区别，请考虑

{phang3}
	    {cmd:. graph bar revenue profit, bargap(}...{cmd:) over(division, gap(}...{cmd:))}

{pmore}
    {cmd:bargap()} 设置收入与利润条形之间的距离。 
    {cmd:over(,gap())} 设置第一个和第二个划分之间的距离、第二个和第三个之间的距离，依此类推。在

	    {cmd:. graph bar revenue profit, bargap(}...{cmd:)}
					{cmd:over(division, gap(}...{cmd:))}
					{cmd:over(year,     gap(}...{cmd:))}

{pmore}
    {cmd:over(division, gap())} 设置划分之间的间距，而 {cmd:over(year, gap())} 设置年份之间的间距。

{phang}
{cmd:sort(}{varname}{cmd:)},
{cmd:sort(}{it:#}{cmd:)}, 和
{cmd:sort((}{it:stat}{cmd:)} {it:varname}{cmd:)}
    控制条形的顺序。请参见下文的 {it:{help graph bar##remarks10:条形的排序}} 和 {it:{help graph bar##remarks11:重新排序条形}}。

{pmore}
    {cmd:sort(}{it:varname}{cmd:)} 将条形按 {it:varname} 的顺序排列；
    请参见下文的 {it:{help graph bar##remarks12:将条形放入预定顺序}}。

{pmore}
    {cmd:sort(}{it:#}{cmd:)} 将条形按高度顺序排列。
    {it:#} 指的是在应该执行排序的 {it:yvar} 编号；
    请参见下文的 {it:{help graph bar##remarks13:按高度排序条形}}。

{pmore}
    {cmd:sort((}{it:stat}{cmd:)} {it:varname}{cmd:)}
    将条形按计算统计的顺序排列；
    请参见下文的 {it:{help graph bar##remarks14:按推导出的顺序排列条形}}。

{phang}
{cmd:descending}
    指定条形的顺序 -- 默认或按 {cmd:sort()} 指定的。
{phang}
{cmd:reverse}
     指定分类尺度从最大到最小，而不是默认的最小到最大。此外，在与 {cmd:bargap(}-{it:#}{cmd:)} 组合时，{cmd:reverse} 会导致重叠的顺序反转。


{marker remarks}{...}
{title:备注}

{pstd}
备注分为以下几类：

	{help graph bar##remarks1:简介}
	{help graph bar##remarks2:语法示例}
	{help graph bar##remarks3:条形的处理}
	{help graph bar##remarks4:数据的处理}
	{help graph bar##remarks4b:获取频率}
	{help graph bar##remarks5:多个条形（重叠条形）}
	{help graph bar##remarks6:控制图例文本}
	{help graph bar##remarks7:多个 over()（重复条形）}
	{help graph bar##remarks8:嵌套的 over()}
	{help graph bar##remarks9:含有多个类别的图表}
	{help graph bar##remarks10:条形的排序}
	{help graph bar##remarks11:重新排序条形}
	{help graph bar##remarks12:将条形放入预定顺序}
	{help graph bar##remarks13:按高度排序条形}
	{help graph bar##remarks14:按推导出的顺序排列条形}
	{help graph bar##remarks15:重新排序条形示例}
	{help graph bar##remarks16:与 by() 一起使用}
	{help graph bar##remarks17:视频示例}
	{help graph bar##remarks18:历史}


{marker remarks1}{...}
{title:简介}

{pstd}
让我们展示一些条形图：

	{cmd}. sysuse citytemp

	. graph bar (mean) tempjuly tempjan, over(region)
		bargap(-30)
		legend( label(1 "July") label(2 "January") )
		ytitle("华氏度")
		title("七月和一月的平均温度")
		subtitle("按美国地区划分")
		note("来源：美国人口普查局，商务部"){txt}
	  {it:({stata gr_example2 grbar1:单击以运行})}
{* graph grbar1}{...}


	{cmd}. sysuse citytemp, clear

	. graph hbar (mean) tempjan, over(division) over(region) nofill
		ytitle("华氏度")
		title("一月的平均温度")
		subtitle("按美国地区和分部划分")
		note("来源：美国人口普查局，商务部"){txt}
	  {it:({stata gr_example2 grbar3:单击以运行})}
{* graph grbar3}{...}


	{cmd}. sysuse nlsw88, clear

	. graph bar (mean) wage, over(smsa) over(married) over(collgrad)
		title("1988年34-46岁女性的平均时薪")
		subtitle("按大学毕业、婚姻状况和 SMSA 居住地")
		note("来源：1988年 NLS 数据，劳工部统计局"){txt}
	  {it:({stata gr_example2 grbar5:单击以运行})}
{* graph grbar5}{...}


	{cmd}. sysuse educ99gdp, clear

	. generate total = private + public

	. graph hbar (asis) public private,
		over(country, sort(total) descending) stack
		title( "1999 Tertiary 教育占 GDP 的支出百分比", span pos(11) )
		subtitle(" ")
		note("来源：OECD，《教育一览》2002", span){txt}
	  {it:({stata gr_example2 grbar7:单击以运行})}
{* graph grbar7}{...}

{pstd}
在接下来的部分中，我们将解释如何生成以上图形 -- 以及其他图形。


{marker remarks2}{...}
{title:语法示例}

{pstd}
以下是一些 {cmd:graph} {cmd:bar} 命令及其执行结果：

{p 4 8 8}
{cmd:graph bar, over(division)}{break}
    {it:#_of_divisions} 条形显示每个划分的观察值百分比。

{p 4 8 8}	
{cmd:graph bar (count), over(division)}{break}
    {it:#_of_divisions} 条形显示每个划分的观察频率。

{p 4 8 8}
{cmd:graph bar revenue}{break}
    一条大条形显示平均收入。

{p 4 8 8}
{cmd:graph bar revenue profit}{break}
    两条条形，一条显示平均收入，另一条显示平均利润。

{p 4 8 8}
{cmd:graph bar revenue, over(division)}{break}
    {it:#_of_divisions} 条形显示每个划分的平均收入。

{p 4 8 8}
{cmd:graph bar revenue profit, over(division)}{break}
    2*{it:#_of_divisions} 条形显示每个划分的平均收入和平均利润。
    分组将如下所示（假设有三个划分）：

	    {c TLC}{c -}{c TRC}       {c TLC}{c -}{c TRC}       {c TLC}{c -}{c TRC}
	    {c |} {c |}       {c |} {c |}       {c |} {c |}
	    {c |} {c LT}{c -}{c TRC}     {c |} {c LT}{c -}{c TRC}     {c |} {c LT}{c -}{c TRC}
	    {c |} {c |} {c |}     {c |} {c |} {c |}     {c |} {c |} {c |}
	  {hline 2}{c BT}{c -}{c BT}{c -}{c BT}{hline 5}{c BT}{c -}{c BT}{c -}{c BT}{hline 5}{c BT}{c -}{c BT}{c -}{c BT}{c -}
	  division  division  division

{p 4 8 8}
{cmd:graph bar revenue, over(division) over(year)}{break}
    {it:#_of_divisions}*{it:#_of_years} 条形显示每个划分的平均收入，针对每个年份重复。分组将如下所示（假设有三个划分和 2 年）：

	    {c TLC}{c -}{c TRC}      {c TLC}{c -}{c TRC}      {c TLC}{c -}{c TRC}          {c TLC}{c -}{c TRC}      {c TLC}{c -}{c TRC}      {c TLC}{c -}{c TRC}
	    {c |} {c |}      {c |} {c |}      {c |} {c |}          {c |} {c |}      {c |} {c |}      {c |} {c |}
	    {c |} {c |}      {c |} {c |}      {c |} {c |}          {c |} {c |}      {c |} {c |}      {c |} {c |}
	 {hline 3}{c BT}{c -}{c BT}{hline 6}{c BT}{c -}{c BT}{hline 6}{c BT}{c -}{c BT}{hline 10}{c BT}{c -}{c BT}{hline 6}{c BT}{c -}{c BT}{hline 6}{c BT}{c -}{c BT}{hline 4}
	  division division division     division division division
		     year                           year

{p 4 8 8}
{cmd:graph bar revenue, over(year) over(division)}{break}
    同样，但顺序不同。 在前面示例中，我们输入了 {cmd:over(division)} {cmd:over(year)}。这次我们反转了顺序：

	    {c TLC}{c -}{c TRC}     {c TLC}{c -}{c TRC}       {c TLC}{c -}{c TRC}     {c TLC}{c -}{c TRC}       {c TLC}{c -}{c TRC}     {c TLC}{c -}{c TRC}
	    {c |} {c |}     {c |} {c |}       {c |} {c |}     {c |} {c |}       {c |} {c |}     {c |} {c |}
	    {c |} {c |}     {c |} {c |}       {c |} {c |}     {c |} {c |}       {c |} {c |}     {c |} {c |}
	  {hline 2}{c BT}{c -}{c BT}{hline 5}{c BT}{c -}{c BT}{hline 7}{c BT}{c -}{c BT}{hline 5}{c BT}{c -}{c BT}{c -}
	   year    year      year    year      year    year
	     division          division          division

{p 4 8 8}
{cmd:graph bar revenue profit, over(division) over(year)}{break}
    2*{it:#_of_divisions}*{it:#_of_years} 条形显示每个划分的平均收入和平均利润，针对每个年份重复。分组将如下所示（假设有三个划分和 2 年）：

	   {c TLC}{c -}{c TRC}       {c TLC}{c -}{c TRC}       {c TLC}{c -}{c TRC}        {c TLC}{c -}{c TRC}       {c TLC}{c -}{c TRC}       {c TLC}{c -}{c TRC}
	   {c |} {c |}       {c |} {c |}       {c |} {c |}        {c |} {c |}       {c |} {c |}       {c |} {c |}
	   {c |} {c LT}{c -}{c TRC}     {c |} {c LT}{c -}{c TRC}     {c |} {c LT}{c -}{c TRC}      {c |} {c LT}{c -}{c TRC}     {c |} {c LT}{c -}{c TRC}     {c |} {c LT}{c -}{c TRC}
	   {c |} {c |} {c |}     {c |} {c |} {c |}     {c |} {c |} {c |}      {c |} {c |} {c |}     {c |} {c |} {c |}     {c |} {c |} {c |}
	 {hline 2}{c BT}{c -}{c BT}{c -}{c BT}{hline 5}{c BT}{c -}{c BT}{c -}{c BT}{hline 5}{c BT}{c -}{c BT}{c -}{c BT}{hline 5}{c -}{c BT}{c -}{c BT}{c -}{c BT}{hline 5}{c BT}{c -}{c BT}{c -}{c BT}{hline 5}{c BT}{c -}{c BT}{c -}{c BT}{c -}
	 division  division  division   division  division  division
		     year                          year

{p 4 8 8}
{cmd:graph bar (sum) revenue profit, over(division) over(year)}{break}
    2*{it:#_of_divisions}*{it:#_of_years} 条形显示每个划分的收入总和和利润总和，针对每个年份重复。

{p 4 8 8}
{cmd:graph bar (median) revenue profit, over(division) over(year)}{break}
    2*{it:#_of_divisions}*{it:#_of_years} 条形显示每个划分的收入中位数和利润中位数，针对每个年份重复。

{p 4 8 8}
{cmd:graph bar (median) revenue (mean) profit, over(division) over(year)}{break}
    2*{it:#_of_divisions}*{it:#_of_years} 条形显示每个划分的收入中位数和利润均值，针对每个年份重复。


{marker remarks3}{...}
{title:条形的处理}

{pstd}
假设有人告诉你美国东北部一月的平均温度是 27.9 华氏度，中北部为 27.1 南部 46.1，西部 46.2。你可以输入这些统计数据并绘制条形图：

	{cmd}. input ne nc south west

	     {txt}       ne         nc      south       west
	  1{cmd}. 27.9 21.7 46.1 46.2
	{txt}  2{cmd}. end{txt}

	{cmd:. graph bar (asis) ne nc south west}
	  {it:({stata gr_example2 grbar0:单击以运行})}
{* graph grbar0}{...}

{pstd}
以上无疑不是一张好看的图表，然而指定一些选项就可以修正这一点。重要的是要明白，当我们指定多个 {it:yvars} 时，1) 条形是相接触的，2) 条形是不同颜色的（或者至少是不同的灰度），3) 条形的含义在图例中显示其标记。

{pstd}
我们可以通过另一种方式输入这些数据：

	{cmd:. clear}

	{cmd}. input  str10 region  float tempjan

	     {txt}   region  tempjan
	  1{cmd}. N.E. 27.9
	{txt}  2{cmd}. "N. Central" 21.7
	{txt}  3{cmd}. South 46.1
	{txt}  4{cmd}. West 46.2
	{txt}  5{cmd}. end{txt}

	{cmd:. graph bar (asis) tempjan, over(region)}
	  {it:({stata gr_example2 grbar0b:单击以运行})}
{* graph grbar0b}{...}

{pstd}
注意，在通过 {cmd:over()} 选项生成多个条形时，1) 条形不相接，2) 条形都是相同颜色，3) 条形的意义通过类别 x 轴的标记显示。

{pstd}
这些关于多个 {it:yvars} 情况下条形的处理和 {cmd:over()} 情况下条形的处理的差异是 {cmd:graph} {cmd:bar} 和 {cmd:graph} {cmd:hbar} 的一般特性：


			       多个 {it:yvars}           {cmd:over()} 组
	{hline 61}
	条形相接                     是                           否
	条形颜色不同                  是                           否
	条形通过...确认标识       图例                         轴标签
	{hline 61}

{pstd}
选项 {cmd:ascategory} 导致多个 {it:yvars} 被呈现为 {cmd:over()} 组，而选项 {cmd:asyvars} 导致 {cmd:over()} 组被表现为多个 {it:yvars}。因此

	{cmd:. graph bar (asis) tempjan, over(region)}

{pstd}
将生成第一个图，而

	{cmd:. graph bar (asis) ne nc south west, ascategory}

{pstd}
将生成第二个图。


{marker remarks4}{...}
{title:数据的处理}

{pstd}
在之前的两个示例中，我们已经有了要绘制的统计数据：
27.9 (东北部)，21.7 (中北部)，46.1 (南部) 和 46.2 (西部)。
我们输入了数据，并键入

	{cmd:. graph bar (asis) ne nc south west}
    或
	{cmd:. graph bar (asis) tempjan, over(region)}

{pstd}
我们不需要事先知道统计数据：{cmd:graph} {cmd:bar} 和 {cmd:graph} {cmd:hbar} 可以为我们计算统计数据。如果我们有大量观察值的数据集（例如美国的城市），我们可以键入

	{cmd:. graph bar (mean) ne nc south west}
    或
	{cmd:. graph bar (mean) tempjan, over(region)}

{pstd}
并获得相同的图。我们所需要做的就是将 {cmd:(asis)} 改为 {cmd:(mean)}。在第一个示例中，数据将被组织为宽形式：

	cityname           ne     nc     south     west
	{hline 47}
	{it:name of city}       42      .         .        .
	{it:another city}        .     28         .        .
	...
	{hline 47}

{pstd}
而在第二个示例中，数据将被组织为长形式：

	cityname        region        tempjan
	{hline 37}
	{it:name of city}      ne          42
	{it:another city}      nc          28
	...
	{hline 37}

{pstd}
我们有这样的数据集，已组织为长形式。 在 {bf:citytemp.dta} 中，我们拥有956个美国城市的信息，包括每个城市所在的地区和其平均一月温度：

	{cmd:. sysuse citytemp, clear}

	{cmd}. list region tempjan if _n < 3 | _n > 954
	{txt}
	     {c TLC}{hline 8}{c -}{hline 9}{c TRC}
	     {c |} {res}region   tempjan {txt}{c |}
	     {c LT}{hline 8}{c -}{hline 9}{c RT}
	  1. {c |} {res}    NE      16.6 {txt}{c |}
	  2. {c |} {res}    NE      18.2 {txt}{c |}
	955. {c |} {res}  West      72.6 {txt}{c |}
	956. {c |} {res}  West      72.6 {txt}{c |}
	     {c BLC}{hline 8}{c -}{hline 9}{c BRC}

{pstd}
使用此数据，我们可以输入

	{cmd:. graph bar (mean) tempjan, over(region)}
	  {it:({stata "gr_example citytemp: gr bar (mean) tempjan, over(region)":单击以运行})}
{* graph barct}{...}

{pstd}
我们刚刚生成了与之前输入的统计数据 27.9 (东北部)、21.7 (中北部)、46.1 (南部) 和 46.2 (西部) 所生成的条形图相同：

	{cmd:. graph bar (asis) tempjan, over(region)}

{pstd}
当我们没有指定 {cmd:(asis)} 或 {cmd:(mean)}（或 {cmd:(median)} 或 {cmd:(sum)} 或 {cmd:(p1)} 或其他允许的 {it:stats}）时，假定为 {cmd:(mean)}。因此，当希望得到 {cmd:(mean)} 时，{cmd:(...)} 通常被省略，我们可以输入

	{cmd:. graph bar tempjan, over(region)}

{pstd}
一些用户甚至在 {cmd:(...) 的情况下省略输入 {cmd:(asis)}，因为对一个观察值求平均数的结果就是该数值。
因此在前面的部分，我们没有输入

	{cmd:. graph bar (asis) ne nc south west}
    和
	{cmd:. graph bar (asis) tempjan, over(region)}

{pstd}
我们可以输入

	{cmd:. graph bar ne nc south west}
    和
	{cmd:. graph bar tempjan, over(region)}


{marker remarks4b}{...}
{title:获取频率}

{pstd}
{cmd:(percent)} 和 {cmd:(count)} 统计量与 {cmd:graph} {cmd:bar} 命令中的任何其他统计量一样有效。 除了标准语法外，你可以使用下面的缩写语法，为按类别变量的百分比和频率创建条形图。

{pstd}
要绘制每个 {cmd:division} 类别的观察百分比，输入

	{cmd:. sysuse citytemp, clear}{break}
	{cmd:. graph bar, over(division)}
	  {it:({stata gr_example2 grbar9:单击以运行})}
	{* graph grbar9}{...}
	
{pstd}
要绘制每个 {cmd:division} 类别的观察频率，输入

	{cmd:. graph bar (count), over(division)}
	  {it:({stata gr_example2 grbar10:单击以运行})}
	{* graph grbar10}{...}


{marker remarks5}{...}
{title:多个条形（重叠条形）}

{pstd}
在 {bf:citytemp.dta} 中，除了变量 {cmd:tempjan}，还有变量 {cmd:tempjuly}，即平均七月温度。我们可以在一张图中包含这两个平均值，按地区分类：

	{cmd:. sysuse citytemp, clear}

	{cmd:. graph bar (mean) tempjuly tempjan, over(region)}
	  {it:({stata "gr_example citytemp: graph bar (mean) tempjuly tempjan, over(region)":单击以运行})}
{* graph barct2}{...}

{pstd}
我们可以通过

{phang2}
    1.  包含 {it:legend_options} {cmd:legend(label())}
	来更改图例文本；见 {manhelpi legend_options G-3}；

{phang2}
    2.  包含 {it:axis_title_option} {cmd:ytitle()} 添加
	标题为“华氏度”；见 {manhelpi axis_title_options G-3}；

{phang2}
    3.  包含 {it:title_options} {cmd:title()}、 {cmd:subtitle()} 和 {cmd:note()} 说明图表的内容及数据的来源；见 {manhelpi title_options G-3}。

{pstd}
完成这些操作后，得到的结果如下：

	{cmd}. graph bar (mean) tempjuly tempjan, over(region)
		legend( label(1 "July") label(2 "January") )
		ytitle("华氏度")
		title("七月和一月的平均温度")
		subtitle("按美国地区划分")
		note("来源：美国人口普查局，商务部"){txt}
	  {it:({stata gr_example2 grbar1a:单击以运行})}
{* graph grbar1a}{...}

{pstd}
通过重叠条形，我们还可以再改善此图表。以下我们添加选项 {cmd:bargap(-30)}：

	{cmd}. graph bar (mean) tempjuly tempjan, over(region)
  {txt:{it:new} ->}        bargap(-30)
		legend( label(1 "July") label(2 "January") )
		ytitle("华氏度")
		title("七月和一月的平均温度")
		subtitle("按美国地区划分")
		note("来源：美国人口普查局，商务部"){txt}
	  {it:({stata gr_example2 grbar1:单击以运行})}
{* graph grbar1}{...}

{pstd}
{cmd:bargap(}{it:#}{cmd:)} 指定 {it:yvar} 条形之间的距离
（即 {cmd:tempjuly} 和 {cmd:tempjan} 的条形之间的距离）； {it:#} 是百分比条宽度单位，因此 {cmd:bargap(-30)} 意味着条形重叠 30%。 {cmd:bargap()} 可以是正数或负数；默认值为 0。


{marker remarks6}{...}
{title:控制图例文本}

{pstd}
在上述示例中，我们通过指定图例选项更改了图例文本：

		{cmd:legend( label(1 "July") label(2 "January") )}

{pstd}
我们同样可以通过键入

		{cmd:yvaroptions( relabel(1 "July" 2 "January") )}

{pstd}
无论你使用哪种方式都没什么区别，但我们更喜欢使用 {cmd:legend(label())} 而不是 {cmd:yvaroptions(relabel())}，因为 {cmd:legend(label())} 是修改双向图的图例内容的方式；那么条形图为什么要不同呢？


{marker remarks7}{...}
{title:多个 over()（重复条形）}

{pstd}
选项 {cmd:over(}{it:varname}{cmd:)} 会对每个 {it:varname} 的各个唯一值重复 {it:yvar} 条形。使用 {bf:citytemp.dta}，如果我们键入

	{cmd:. graph bar (mean) tempjuly tempjan}

{pstd}
我们将获得两条（波浪）条形。当我们输入

	{cmd:. graph bar (mean) tempjuly tempjan, over(region)}

{pstd}
我们为四个区域每个区域获得两条（细）条形。（我们在上面的 {hi:多个条形} 中输入了确切的命令。）

{pstd}
你可以重复 {cmd:over()} 选项。当指定两个或多个 {it:yvars} 时，可以指定两次 {cmd:over()}；当指定一个 {it:yvar} 时，可以指定最多三次 {cmd:over()}。

{pstd}
在 {cmd:nlsw88.dta} 中，我们掌握了 2246 名女性：

	{cmd}. sysuse nlsw88, clear

	. graph bar (mean) wage, over(smsa) over(married) over(collgrad)
		title("1988年34-46岁女性的平均时薪")
		subtitle("按大学毕业、婚姻状况和 SMSA 居住地")
		note("来源：1988年 NLS 数据，劳工部统计局"){txt}
	  {it:({stata gr_example2 grbar5:单击以运行})}
{* graph grbar5}{...}

{pstd}
如果去掉 {it:title_options}，上述命令可简化为

	{cmd:. graph bar (mean) wage, over(smsa) over(married) over(collgrad)}

{pstd}
在这个三个 {cmd:over()} 的例子中，第一个 {cmd:over()} 被视为多个 {it:yvars}：条形相接，条形被分配不同颜色，条形的意义在图例中被揭示。当你指定三个 {cmd:over()} 组时，第一个与多个 {it:yvars} 相同。这意味着，如果我们想分开条形，我们可以指定选项 {cmd:bargap(}{it:#}{cmd:)}, {it:#}>0，而如果我们希望它们重叠，我们可以指定 {cmd:bargap(}{it:#}{cmd:)}, {it:#}<0。


{marker remarks8}{...}
{title:嵌套的 over()}

{pstd}
有时你有多个 {cmd:over()} 组，其中一个组是另一个组的嵌套。在 {bf:citytemp.dta}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <graph_bar.sthlp>}