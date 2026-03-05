{smcl}
{* *! version 1.1.14  15may2018}{...}
{viewerdialog "graph box" "dialog graph_box"}{...}
{vieweralsosee "[G-2] graph box" "mansection G-2 graphbox"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[G-2] graph bar" "help graph_bar_zh"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[R] lv" "help lv_zh"}{...}
{vieweralsosee "[R] summarize" "help summarize_zh"}{...}
{viewerjumpto "Syntax" "graph_box_zh##syntax"}{...}
{viewerjumpto "Menu" "graph_box_zh##menu"}{...}
{viewerjumpto "Description" "graph_box_zh##description"}{...}
{viewerjumpto "Links to PDF documentation" "graph_box_zh##linkspdf"}{...}
{viewerjumpto "group_options" "graph_box_zh##group_options_desc"}{...}
{viewerjumpto "yvar_options" "graph_box_zh##yvar_options_desc"}{...}
{viewerjumpto "boxlook_options" "graph_box_zh##boxlook_options_desc"}{...}
{viewerjumpto "legending_options" "graph_box_zh##legending_options_desc"}{...}
{viewerjumpto "axis_options" "graph_box_zh##axis_options_desc"}{...}
{viewerjumpto "title_and_other_options" "graph_box_zh##title_and_other_options_desc"}{...}
{viewerjumpto "Suboptions for use with over() and yvaroptions()" "graph_box_zh##suboptions_desc"}{...}
{viewerjumpto "Remarks" "graph_box_zh##remarks"}{...}
{viewerjumpto "Reference" "graph_box_zh##reference"}
{help graph_box:English Version}
{hline}{...}
{p2colset 1 20 22 2}{...}
{p2col:{bf:[G-2] graph box} {hline 2}}箱线图{p_end}
{p2col:}({mansection G-2 graphbox:查看完整 PDF 手册条目}){p_end}
{p2colreset}{...}


{marker syntax}{...}
{title:语法}

{p 8 23 2}
{cmdab:gr:aph} {cmd:box}{space 2}{it:yvars}
{ifin}
[{it:{help graph box##weight:weight}}]
[{cmd:,}
{it:options}]

{p 8 23 2}
{cmdab:gr:aph} {cmd:hbox}
{it:yvars}
{ifin}
[{it:{help graph box##weight:weight}}]
[{cmd:,}
{it:options}]

{phang}
其中 {it:yvars} 是一个 {varlist}

{synoptset 30}{...}
{p2col:{it:options}}描述{p_end}
{p2line}
{p2col:{help graph box##group_options:{it:group_options}}}绘制箱体的类别{p_end}
{p2col:{help graph box##yvar_options:{it:yvar_options}}}作为箱体的变量{p_end}
{p2col:{help graph box##boxlook_options:{it:boxlook_options}}}箱体的外观{p_end}
{p2col:{help graph box##legending_options:{it:legending_options}}}如何标记变量{p_end}
{p2col:{help graph box##axis_options:{it:axis_options}}}数值 {it:y} 轴的标签{p_end}
{p2col:{help graph box##title_and_other_options:{it:title_and_other_options}}}标题、附加文本、纵横比等{p_end}
{p2line}


{marker group_options}{...}
{p2col:{it:group_options}}描述{p_end}
{p2line}
{p2col:{cmdab:o:ver:(}{varname}[{cmd:,} {help graph box##over_subopts:{it:over_subopts}}]{cmd:)}}类别；该选项可以重复{p_end}
{p2col:{cmd:nofill}}省略空类别{p_end}
{p2col:{cmdab:miss:ing}}保留缺失值作为类别{p_end}
{p2col:{cmdab:allc:ategories}}包括数据集中所有类别{p_end}
{p2line}


{marker yvar_options}{...}
{p2col:{it:yvar_options}}描述{p_end}
{p2line}
{p2col:{cmdab:asc:ategory}}将 {it:yvars} 视为第一组 {cmd:over()}{p_end}
{p2col:{cmdab:asy:vars}}将第一组 {cmd:over()} 视为 {it:yvars}{p_end}
{p2col:{cmdab:cw}}计算统计量时忽略任何变量的缺失值{p_end}
{p2line}


{marker boxlook_options}{...}
{p2col:{it:boxlook_options}}描述{p_end}
{p2line}
{p2col:{cmdab:noout:sides}}不绘制外部值{p_end}

{p2col:{cmd:box(}{it:#}{cmd:,} {it:{help barlook_options_zh}}{cmd:)}}第 {it:#} 个箱体的外观{p_end}
{p2col:{cmdab:pcyc:le:(}{it:#}{cmd:)}}箱体样式在 {help pstyle_zh:pstyles} 中回收{p_end}
{p2col:{cmdab:inten:sity:(}[{cmd:*}]{it:#}{cmd:)}}填充的强度{p_end}
{p2col:{cmdab:linten:sity:(}[{cmd:*}]{it:#}{cmd:)}}轮廓的强度{p_end}

{p2col:{cmdab:medt:ype:(line}|{cmd:cline}|{cmd:marker)}}如何在箱体中指示中位数{p_end}
{p2col:{cmdab:medl:ine:(}{it:{help line_options_zh}}{cmd:)}}如果 {cmd:medtype(cline)} 的线条外观{p_end}
{p2col:{cmdab:medm:arker:(}{it:{help marker_options_zh}}{cmd:)}}如果 {cmd:medtype(marker)} 的标记外观{p_end}

{p2col:{cmdab:cwhi:skers}}使用自定义的胡须{p_end}
{p2col:{cmdab:line:s:(}{it:{help line_options_zh}}{cmd:)}}自定义胡须的外观{p_end}
{p2col:{cmdab:al:size(}{it:#}{cmd:)}}相邻线的宽度；默认值为 67{p_end}
{p2col:{cmdab:cap:size:(}{it:#}{cmd:)}}相邻线的高度；默认值为 0{p_end}

{p2col:{cmdab:m:arker:(}{it:#}, {it:{help marker_options_zh}}}第 {it:#} 个标记和标签的外观{p_end}
{p2col 13 39 39 2:{it:{help marker_label_options_zh}}{cmd:)}}外部值{p_end}

{p2col:{cmd:outergap(}[{cmd:*}]{it:#}{cmd:)}}边缘与第一个箱体之间的间隙以及最后一个箱体与边缘之间的间隙{p_end}
{p2col:{cmd:boxgap(}{it:#}{cmd:)}}箱体之间的间隙；默认值为 33{p_end}
{p2line}


{marker legending_options}{...}
{p2col:{it:legending_options}}描述{p_end}
{p2line}
{p2col:{it:{help legend_options_zh}}}控制 {it:yvar} 图例{p_end}
{p2col:{cmdab:nolab:el}}在图例中使用 {it:yvar} 名称，而不是标签{p_end}
{p2col:{cmdab:yvar:options:(}{help graph box##over_subopts:{it:over_subopts}}{cmd:)}}{it:over_subopts} 针对 {it:yvars}；很少指定{p_end}
{p2col:{cmd:showyvars}}在 {it:x} 坐标轴上标记 {it:yvars}；很少指定{p_end}
{p2line}


{marker axis_options}{...}
{p2col:{it:axis_options}}描述{p_end}
{p2line}
{p2col:{cmdab:yalt:ernate}}将数值 {it:y} 轴放在右侧（顶部）{p_end}
{p2col:{cmdab:xalt:ernate}}将分类 {it:x} 轴放在顶部（右侧）{p_end}
{p2col:{cmdab:yrev:erse}}反转 {it:y} 轴{p_end}
{p2col:{it:{help axis_scale_options_zh}}}{it:y} 轴缩放和外观{p_end}
{p2col:{it:{help axis_label_options_zh}}}{it:y} 轴标签{p_end}
{it:{help axis_title_options_zh:{bf:ytitle(...)}}}{it:y} 轴标题{p_end}
{p2line}


{marker title_and_other_options}{...}
{p2col:{it:title_and_other_options}}描述{p_end}
{p2line}
{p2col:{help added_text_option:{bf:text(...)}}}在图形上添加文本；{it:x} 范围 [0,100]{p_end}
{p2col:{help added_line_options_zh:{bf:yline(...)}}}在图形上添加 {it:y} 线{p_end}
{p2col:{it:{help aspect_option_zh}}}约束绘图区域的纵横比{p_end}
{p2col:{it:{help std_options_zh}}}标题、图形大小、保存到磁盘{p_end}

{p2col:{help by_option_zh:{bf:by(}{it:varlist}{bf:, ...)}}}针对子组重复{p_end}
{p2line}

{pstd}{marker over_subopts}
{it:over_subopts} -- 用于
{cmd:over(}{varname}{cmd:,} {it:over_subopts}{cmd:)}
并且在少数情况下，在
{cmd:yvaroptions(}{it:over_subopts}{cmd:)} 中使用 -- 是

{p2col:{it:over_subopts}}描述{p_end}
{p2line}
{p2col:{cmdab:tot:al}}添加总组{p_end}
{p2col:{cmdab:re:label:(}{it:#} {cmd:"}{it:text}{cmd:"} ...{cmd:)}}更改轴标签{p_end}
{p2col:{cmdab:lab:el:(}{it:{help cat_axis_label_options_zh}}{cmd:)}}标签的展现{p_end}
{p2col:{cmdab:ax:is:(}{it:{help cat_axis_line_options_zh}}{cmd:)}}轴线的展现{p_end}

{p2col:{cmd:gap(}[{cmd:*}]{it:#}{cmd:)}}在 {cmd:over()} 类别之间的间隙{p_end}
{p2col:{cmd:sort(}{varname}{cmd:)}}按预先指定的顺序放置箱体{p_end}
{p2col:{cmd:sort(}{it:#}{cmd:)}}按中位数顺序放置箱体{p_end}
{p2col:{cmdab:des:cending}}反转默认或指定的箱体顺序{p_end}
{p2line}

{marker weight}{...}
{pstd}
允许使用 {cmd:aweight}s、{cmd:fweight}s 和 {cmd:pweight}s；
见 {help weight_zh} 并查看关于权重的说明
在 {manhelp collapse D}中。


{marker menu}{...}
{title:菜单}

{phang}
{bf:图形 > 箱线图}


{marker description}{...}
{title:描述}

{pstd}
{cmd:graph} {cmd:box} 绘制垂直箱线图。在垂直箱线图中，{it:y} 轴是数值型的，而 {it:x} 轴是分类的。

	{cmd:. graph box} {it:y1 y2}{cmd:, over(}{it:cat_var}{cmd:)}

		  {it:y}
		8 {c RT}
		  {c |}          {c TT}            o
		  {c |}    o     {c |}            {c TT}         {it:y1}, {it:y2} 必须为数值型；
		6 {c RT}         {c TLC}{c BT}{c TRC}     {c TT}     {c |}         统计数据显示在
		  {c |}    {c TT}    {c |} {c |}    {c TLC}{c BT}{c TRC}   {c TLC}{c BT}{c TRC}        {it:y } 轴
		  {c |}   {c TLC}{c BT}{c TRC}   {c |}-{c |}    {c |}-{c |}   {c |} {c |}
		4 {c RT}   {c |}-{c |}   {c BLC}{c TT}{c BRC}    {c BLC}{c TT}{c BRC}   {c |}-{c |}        {it:cat_var} 可以是数值型
		  {c |}   {c BLC}{c TT}{c BRC}    {c |}      {c BT}    {c BLC}{c TT}{c BRC}        或字符串；它会在
		  {c |}    {c BT}     {c BT}            {c |}         分类 {it:x} 轴上显示
		2 {c RT}                 o     {c BT}
		  {c BLC}{hline 27} {it:x}
			第一组      第二组

{pstd}
编码和描述编码所使用的词语为


				  o     <- 外部值
				  o

	   {it:邻接线}  {c -}{c -}{c TRC}     {c TT}     <- 上邻接值
			    {c |}     {c |}
		  {it:胡须}   {c |}     {c |}
			   {c -}{c RT}   {c TLC}{c -}{c BT}{c -}{c TRC}   <- 75th 百分位数（上铰链）
			    {c |}   {c |}   {c |}
		     {it:箱体}    {c |}   {c LT}{hline 3}{c RT}   <- 中位数
			    {c |}   {c |}   {c |}
			   {c -}{c RT}   {c BLC}{c -}{c TT}{c -}{c BRC}   <- 25th 百分位数（下铰链）
		  {it:胡须}   {c |}     {c |}
			    {c |}     {c |}
	   {it:邻接线}  {c -}{c -}{c BRC}     {c BT}     <- 下邻接值

				  o     <- 外部值

{pstd}
{cmd:graph} {cmd:hbox}绘制水平箱线图。在水平箱线图中，数值轴仍称为 {it:y} 轴，分类轴仍称为 {it:x} 轴，但 {it:y} 水平呈现，而 {it:x} 垂直呈现。

	{cmd:. graph hbox} {it:y1 y2}{cmd:, over(}{it:cat_var}{cmd:)}

		       {it:x}
		       {c |}     {c TLC}{hline 3}{c TRC}
		       {c |}  {c LT}{hline 2}{c RT} | {c LT}{hline 2}{c RT}  o
		第一组  {c |}     {c BLC}{hline 3}{c BRC}
		{c |}
		       {c |}        {c TLC}{hline 6}{c TRC}
		       {c |}  {c LT}{hline 5}{c RT} |    {c LT}{hline 5}{c RT}   概念布局与 {cmd:graph box} 相同：
		       {c |}        {c BLC}{hline 6}{c BRC}             
		       {c |}
		       {c |}                             {it:y1}, {it:y2} 显示在 {it:y} 轴上
		       {c |}       {c TLC}{hline 3}{c TRC}
		       {c |} o  {c LT}{hline 2}{c RT} | {c LT}{hline 2}{c RT}              {it:cat_var} 显示在 {it:x} 轴上
		第二组 {c |}       {c BLC}{hline 3}{c BRC}
		{c |}
		       {c |}       {c TLC}{hline 6}{c TRC}
		       {c |} {c LT}{hline 5}{c RT} |    {c LT}{hline 5}{c RT}o
		       {c |}       {c BLC}{hline 6}{c BRC}
		       {c |}
		       {c BLC}{c TT}{hline 6}{c TT}{hline 6}{c TT}{hline 6}{c TT}{hline 4} {it:y}
			2      4      6      8


{marker linkspdf}{...}
{title:PDF 文档链接}

        {mansection G-2 graphboxQuickstart:快速入门}

        {mansection G-2 graphboxRemarksandexamples:备注和示例}

        {mansection G-2 graphboxMethodsandformulas:方法和公式}

{pstd}
以上部分未包含在此帮助文件中。


{marker group_options_desc}{...}
{title:group_options}

{phang}
{cmd:over(}{varname}[{cmd:,} {it:over_subopts}]{cmd:)}
    指定一个分类变量，{it:yvars} 将根据该变量重复。{it:varname}可以是字符串或数值。当指定多个 {it:yvars} 时，可以指定至多两个 {cmd:over()} 选项；而当指定一个 {it:yvar} 时，可以指定至多三个 {cmd:over()}；请参考下面的 {it:{help graph box##remarks2:语法示例}} 中的 {it:备注}。

{phang}
{cmd:nofill}
    指定省略缺失的子类别。有关 {helpb graph bar##nofill:nofill} 选项的描述，请参见 {manhelp graph_bar G-2:graph bar}。

{phang}
{cmd:missing}
    指定保留缺失的 {cmd:over()} 变量为其自己的类别，一个为 {cmd:.}，另一个为 {cmd:.a}，依此类推。默认情况下会忽略这些观测值。{cmd:over()} 变量被视为缺失，如果它是数值并且包含缺失值，或者如果它是字符串并且包含 ""。

{phang}
{cmd:allcategories}
    指定保留数据集中 {cmd:over()} 变量的所有类别。当未使用 {cmd:allcategories} 指定 {cmd:if} 或 {cmd:in} 时，图形将绘制，完全排除未在指定子样本中出现的 {cmd:over()} 变量的任何类别。使用 {cmd:allcategories} 选项时，未在子样本中出现的类别仍会出现在图例中，并在这些类别出现的地方绘制零高度的条形。这种行为在比较不包含完全相同类别的所有 {cmd:over()} 变量的子样本的图形时是便捷的。只有在使用 {cmd:if} 或 {cmd:in} 时，或者如果变量中缺少值时，该选项才有效。{cmd:allcategories} 不能与 {cmd:by()} 一起使用。


{marker yvar_options_desc}{...}
{title:yvar_options}

{phang}
{cmd:ascategory}
    指定将 {it:yvars} 视为第一组 {cmd:over()}。这项的主要影响是将变量的标题从图例移到分类的 {it:x} 轴。有关的描述请见 {helpb graph bar##ascategory:ascategory} 在 {manhelp graph_bar G-2:graph bar} 中。

{phang}
{cmd:asyvars}
    指定将第一组 {cmd:over()} 视为 {it:yvars}。这项的主要影响是将第一组的标题从分类的 {it:x} 轴移到图例。有关的描述请见 {helpb graph bar##asyvars:asyvars} 在 {manhelp graph_bar G-2:graph bar} 中。

{phang}
{cmd:cw}
    指定逐个案例删除。如果指定了 {cmd:cw}，缺失的 {it:yvars} 观测值将被忽略。默认情况下，对于每个箱体根据可用数据计算统计量。


{marker boxlook_options_desc}{...}
{title:boxlook_options}

{phang}
{cmd:nooutsides}
    指定不绘制外部值或在设定数值 {it:y} 轴的尺度时使用。

{phang}
{cmd:box(}{it:#}{cmd:,} {it:barlook_options}{cmd:)}
    指定 {it:yvar} 箱体的外观。
    {cmd:box(1,} ...{cmd:)} 指的是与第一个 {it:yvar} 相关的箱体，{cmd:box(2,} ...{cmd:)} 指的是与第二个相关的箱体，以此类推。

{pmore}
    指定 {it:barlook_options}。这些选项借用自 {cmd:graph} {cmd:bar} 以用于箱体。
    最有用的 {it:barlook_options} 是 {cmd:color(}{it:colorstyle}{cmd:)}, 该选项设定箱体的颜色和不透明度。例如，你可能指定 {cmd:box(1, color(green))} 使第一个 {it:yvar} 相关的箱子为绿色。详见 {manhelpi colorstyle G-4} 中的颜色选择列表，并查看 {manhelpi barlook_options G-3} 中其他 {it:barlook_options} 的相关信息。

{phang}
{cmd:pcycle(}{it:#}{cmd:)}
    指定在下一个变量的箱体的 {help pstyle_zh} 开始重新采用第一个变量的 pstyle 时绘制多少变量。换句话说，{it:#} 指定当指定多个 {it:#} 变量时，箱体的外观会多快循环。大多数 {help schemes_zh} 的默认值是 {cmd:pcycle(15)}。

{phang}
{cmd:intensity(}{it:#}{cmd:)}
和
{cmd:intensity(*}{it:#}{cmd:)}
    指定用于填充箱体内部的颜色的强度。{cmd:intensity(}{it:#}{cmd:)} 指定强度，而 {cmd:intensity(*}{it:#}{cmd:)} 相对默认指定强度。

{pmore}
    默认情况下，箱体填充其边界的颜色，并减弱其强度。
    指定 {cmd:intensity(*}{it:#}{cmd:)}, {it:#}<1 以进一步减弱强度，指定 {cmd:intensity(*}{it:#}{cmd:)}, {it:#}>1 以增强它。

{pmore}
    指定 {cmd:intensity(0)} 如果你不想填充箱体。
    如果你使用的方案在背景颜色中绘制中位数线（例如 {cmd:s2mono}），还应指定选项 {cmd:medtype(line)} 使中位数线呈箱体轮廓的颜色。

{phang}
{cmd:lintensity(}{it:#}{cmd:)}
和
{cmd:lintensity(*}{it:#}{cmd:)}
    指定用于轮廓箱体的线条强度。{cmd:lintensity(}{it:#}{cmd:)} 指定强度，而 {cmd:lintensity(*}{it:#}{cmd:)} 相对默认指定强度。

{pmore}
    默认情况下，箱体的轮廓由填充的强度或更高的强度轮廓构成，这取决于所选的方案；详见 {manhelp schemes G-4:方案介绍}。如果你希望箱体的轮廓以可能最暗的方式绘制，请指定 {cmd:intensity(255)}。如果你要增强轮廓，可以指定 {cmd:intensity(*}{it:#}{cmd:)}, {it:#}>1，如果你想减弱轮廓，请指定 {cmd:intensity(*}{it:#}{cmd:)}, {it:#}<1。

{phang}
{cmd:medtype()},
{cmd:medline()} 和
{cmd:medmarker()}
    指定如何在箱体中指示中位数。

{pmore}
    {cmd:medtype(line)} 是默认值。在线中绘制一条穿过中位数的线。此时，选项 {cmd:medline()} 和 {cmd:medmarker()} 是不相关的。

{pmore}
    {cmd:medtype(cline)} 指定在中位数处绘制一条自定义线。默认情况下，自定义线通常是另一种颜色。但你可以指定选项 {cmd:medline(}{it:line_options}{cmd:)} 以精确控制线的外观；
    见 {manhelpi line_options G-3}。

{pmore}
    {cmd:medtype(marker)} 指定在中位数处放置标记。此时，你还可以指定选项
     {cmd:medmarker(}{it:marker_options}{cmd:)} 以指定标记的外观；见 {manhelpi marker_options G-3}。

{phang}
{cmd:cwhiskers},
{cmd:lines(}{it:line_options}{cmd:)},
{cmd:alsize(}{it:#}{cmd:)}, 和
{cmd:capsize(}{it:#}{cmd:)}
    指定胡须的外观。

{pmore}
    {cmd:cwhiskers} 指定需要自定义的胡须。默认的自定义胡须通常更暗淡，但你可以指定选项 {cmd:lines(}{it:line_options}{cmd:)} 以指定自定义胡须的外观；见 {manhelpi line_options G-3}。

{pmore}
    {cmd:alsize(}{it:#}{cmd:)} 和 {cmd:capsize(}{it:#}{cmd:)} 指定相邻线的宽度和相邻线顶端的高度。无论你是否指定 {cmd:cwhiskers} 都可以指定这些选项。{cmd:alsize()} 和 {cmd:capsize()} 是以箱体宽度的百分比单位指定的；默认值为 {cmd:alsize(67)} 和 {cmd:capsize(0)}。因此，相邻线的延伸长度为箱体宽度的三分之二，并且默认情况下没有柱面。柱面指的是胡须的外观。实际上是

		这样                 或这样

		 {c TT}                     {c TLC}{c TT}{c TRC}
		 {c |}                      {c |}
		{c TLC}{c BT}{c TRC}                    {c TLC}{c BT}{c TRC}
		{c |}-{c |}                    {c |}-{c |}
		{c BLC}{c TT}{c BRC}                    {c BLC}{c TT}{c BRC}
		 {c |}                      {c |}
		 {c BT}                     {c BLC}{c BT}{c BRC}

{pmore}
    如果你想要柱面，请尝试 {cmd:capsize(5)}。

{phang}
{cmd:marker(}{it:#}, {it:marker_options} {it:marker_label_options}{cmd:)}
    指定用于显示外部值的标记和标签。请参见 {manhelpi marker_options G-3} 和 {manhelpi marker_label_options G-3}。

{phang}
{cmd:outergap(*}{it:#}{cmd:)} 和
{cmd:outergap(}{it:#}{cmd:)}
    指定图形边缘与第一个箱体之间的间距，以及最后一个箱体与图形边缘之间的间距。

{pmore}
    {cmd:outergap(*}{it:#}{cmd:)} 指定默认值的修改。指定 {cmd:outergap(*1.2)} 使间距增加 20%，而指定 {cmd:outergap(*.8)} 则减小 20%。

{pmore}
    {cmd:outergap(}{it:#}{cmd:)} 将间隙指定为一个以箱体宽度为单位的百分比单位。{cmd:outergap(50)} 指定间隙为箱体宽度的一半。

{phang}
{cmd:boxgap(}{it:#}{cmd:)}
    指定在 {it:yvar} 箱体之间留下的间隙数，以箱体宽度的百分比为单位。默认值为 {cmd:boxgap(33)}。

{pmore}
    {cmd:boxgap()} 仅影响 {it:yvar} 箱体。如果你想要更改第一个、第二个或第三个 {cmd:over()} 组的间隔，请在 {cmd:over()} 本身内部指定 {it:over_subopt} {cmd:gap()}；见
    {it:{help graph box##subopts_over:与 over() 和 yvaroptions() 相关的子选项}} 下文。


{marker legending_options_desc}{...}
{title:legending_options}

{phang}
{it:legend_options}
    允许你控制图例。如果指定了多个 {it:yvar}，则将生成一个图例。否则，不需要图例，因为 {cmd:over()} 组在分类的 {it:x} 轴上进行了标记。
    参见 {manhelpi legend_options G-3}，并查看 {it:{help graph box##remarks3:多个 yvars 与 over() 组的处理}} 下的 {it:备注}。

{phang}
{cmd:nolabel}
    指定在自动构建图例时，优先使用 {it:yvars} 的变量名称，而不是它们的标签。

{phang}
{cmd:yvaroptions(}{it:over_subopts}{cmd:)}
    允许你为 {it:yvars} 指定 {it:over_subopts}。这很少指定。

{phang}
{cmd:showyvars}
    指定除了生成一个图例外，还在分类的 {it:x} 轴上显示 {it:yvars} 的身份。如果指定了 {cmd:showyvars}，通常也会指定 {cmd:legend(off)}。


{marker axis_options_desc}{...}
{title:axis_options}

{phang}
{cmd:yalternate} 和 {cmd:xalternate}
    切换轴出现的侧面。

{pmore}
    与 {cmd:graph} {cmd:box} 一起使用时， {cmd:yalternate} 将数值 {it:y} 轴从左侧移动到右侧； {cmd:xalternate} 将分类 {it:x} 轴从底部移动到顶部。

{pmore}
    与 {cmd:graph} {cmd:hbox} 一起使用时， {cmd:yalternate} 将数值 {it:y} 轴从底部移动到顶部； {cmd:xalternate} 将分类 {it:x} 轴从左侧移动到右侧。

{pmore}
    如果你的方案默认将轴放置在相反的侧面，则 {cmd:yalternate} 和 {cmd:xalternate} 将逆转它们的作用。

{phang}
{cmd:yreverse}
    指定数值 {it:y} 轴反转以使其从最大值到最小值。

{phang}
{it:axis_scale_options}
    指定数值 {it:y} 轴如何缩放以及其外观；见 {manhelpi axis_scale_options G-3}。在那里你还会看到选项 {cmd:xscale()} 除了 {cmd:yscale()}。
    忽略 {cmd:xscale()}，它对于箱线图无关紧要。

{phang}
{it:axis_label_options}
    指定数值 {it:y} 轴如何标记。{it:axis_label_options} 还允许你添加和抑制网格线；
    见 {manhelpi axis_label_options G-3}。
    在那里你还会看到，除了选项 {cmd:ylabel()}，{cmd:ytick()}...，{cmd:ymtick()}外，还允许选项 {cmd:xlabel()}，...，{cmd:xmtick()}。
    忽略 {cmd:x*()} 选项，它对箱线图无关紧要。

{phang}
{cmd:ytitle()}
    覆盖数值 {it:y} 轴的默认标题；见 {manhelpi axis_title_options G-3}。在那里你还会找到选项 {cmd:xtitle()} 的文档，它对箱线图无关紧要。


{marker title_and_other_options_desc}{...}
{title:title_and_other_options}

{phang}
{cmd:text()}
    在图中的指定位置添加文本；见 {manhelpi added_text_option G-3}。{cmd:text()} 的基本语法为

	    {cmd:text(}{it:#_y} {it:#_x} {cmd:"}{it:text}{cmd:")}

{pmore}
    {cmd:text()} 在两类图中进行了文档说明。与箱线图一起使用时，“数值型” {it:x} 轴被缩放为从 0 到 100。

{phang}
{cmd:yline()}
    在指定的 {it:y} 值处添加水平（{cmd:box}）或垂直（{cmd:hbox}）线；见 {manhelpi added_line_options G-3}。选项 {cmd:xline()} 在那里也被文档说明，与箱线图无关。如果你对添加网格线感兴趣，见 {manhelpi axis_label_options G-3}。

{phang}
{it:aspect_option}
    允许你控制图形绘图区域的高度和宽度之间的关系；见 {manhelpi aspect_option G-3}。

{phang}
{it:std_options}
    允许你添加标题、控制图形大小、将图形保存到磁盘等；见 {manhelpi std_options G-3}。

{phang}
{cmd:by(}{varlist}{cmd:, ...)}
    在一个图形内绘制独立图；见 {manhelpi by_option G-3}
    并查看 {it:{help graph box##remarks8:与 by() 一起使用}} 下的 {it:备注}。


{marker suboptions_desc}{...}
{marker subopts_over}{...}
{title:与 over() 和 yvaroptions() 相关的子选项}

{phang}
{cmd:total}
    指定除 {cmd:over(}{varname}{cmd:)} 的唯一值外，添加一个反映所有观测的组。当指定多个 {cmd:over()} 时，仅能在其中一个中指定 {cmd:total}。

{phang}
{cmd:relabel(}{it:#} {cmd:"}{it:text}{cmd:"} ...{cmd:)}
    指定文本以覆盖默认类别标签。有关此有用选项的更多信息，请参见 {cmd:relabel()} 选项的描述
    在 {manhelp graph_bar G-2:graph bar} 中。

{phang}
{cmd:label(}{it:cat_axis_label_options}{cmd:)}
    决定 {it:x} 轴上类别标签外观的其他方面。除了 {cmd:label(labcolor())} 和 {cmd:label(labsize())} 之外，这些选项很少指定；见 {manhelpi cat_axis_label_options G-3}。

{phang}
{cmd:axis(}{it:cat_axis_line_options}{cmd:)}
    指定轴线的呈现。这是一个很少指定的选项。见 {manhelpi cat_axis_line_options G-3}。

{phang}
{cmd:gap(}{it:#}{cmd:)} 和
{cmd:gap(*}{it:#}{cmd:)}
    指定该 {cmd:over()} 组内箱体之间的间隙。{cmd:gap(}{it:#}{cmd:)} 以箱宽的百分比单位指定，因此 {cmd:gap(67)} 意味着两-thirds 箱体的宽度。
    {cmd:gap(*}{it:#}{cmd:)} 允许修改默认的间隔。
    {cmd:gap(*1.2)} 将间隔增加 20%，而 {cmd:gap(*.8)} 将间隔减少 20%。

{pmore}
    要理解 {cmd:over(}...{cmd:,} {cmd:gap())} 和选项 {cmd:boxgap()} 之间的区别，请考虑

{phang3}
	    {cmd:. graph box before after, boxgap(}...{cmd:) over(sex, gap(}...{cmd:))}

{pmore}
    {cmd:boxgap()} 设置 before 和 after 箱体之间的距离。
    {cmd:over(,gap())} 设置男女箱体之间的距离。类似地在

	    {cmd:. graph box before after, boxgap(}...{cmd:)}
				      {cmd:over(sex,    gap(}...{cmd:))}
				      {cmd:over(agegrp, gap(}...{cmd:))}

{pmore}
    {cmd:over(sex, gap())} 设置男女之间的间隔，而 {cmd:over(agegrp, gap())} 设置年龄组之间的间隔。

{phang}
{cmd:sort(}{varname}{cmd:)} 和
{cmd:sort(}{it:#}{cmd:)}
    控制箱体的排列方式。见
    {it:{help graph box##remarks4:如何排列箱体}}
    和 {it:{help graph box##remarks5:重新排列箱体}} 下的 {it:备注}。

{pmore}
    {cmd:sort(}{it:varname}{cmd:)} 将箱体按 {it:varname} 的顺序放置；
    见 {it:{help graph box##remarks6:以预定顺序排列箱体}} 下的 {it:备注}。

{pmore}
    {cmd:sort(}{it:#}{cmd:)} 将箱体按其中位数排序。
    {it:#} 指的是应执行排序的 {it:yvar} 编号；
    见 {it:{help graph box##remarks7:按中位数顺序排列箱体}} 下的 {it:备注}。

{phang}
{cmd:descending}
    指定箱体的顺序 -- 默认或由 {cmd:sort()} 指定 -- 反转。


{marker remarks}{...}
{title:备注}

{pstd}
备注以以下标题呈现：

	{help graph box##remarks1:介绍}
	{help graph box##remarks2:语法示例}
	{help graph box##remarks3:多个 yvars 与 over() 组的处理}
	{help graph box##remarks4:如何排列箱体}
	{help graph box##remarks5:重新排列箱体}
	{help graph box##remarks6:以预定顺序排列箱体}
	{help graph box##remarks7:按中位数顺序排列箱体}
	{help graph box##remarks8:与 by() 一起使用}
	{help graph box##video:视频示例}
	{help graph box##remarks9:历史}

{pstd}
另见 {manhelp graph_bar G-2:graph bar}。大部分内容同样适用于箱线图。


{marker remarks1}{...}
{title:介绍}

{pstd}
{cmd:graph} {cmd:box} 绘制垂直箱线图：

	{cmd}. sysuse bplong

	. graph box bp, over(when) over(sex)
		ytitle("收缩期血压")
		title("按性别治疗响应")
		subtitle("(120名术前患者)" " ")
		note("来源：虚构药物试验，StataCorp，2003"){txt}
	  {it:({stata "gr_example2 grbox1":点击运行})}
{* graph grbox1}{...}

{pstd}
{cmd:graph} {cmd:hbox} 绘制水平箱线图：

	{cmd}. sysuse nlsw88, clear

	. graph hbox wage, over(ind, sort(1)) nooutside
		ytitle("")
		title("1988年34-46岁女性的时薪", span)
		subtitle(" ")
		note("来源：1988年来自NLS的数据，美国劳工部，劳动统计局", span){txt}
	  {it:({stata "gr_example2 grbox2":点击运行})}
{* graph grbox2}{...}


{marker remarks2}{...}
{title:语法示例}

{pstd}
以下是一些 {cmd:graph} {cmd:box} 命令及其功能描述：

{p 4 8 8}
{cmd:graph box bp}{break}
    一大箱显示血压统计信息。

{p 4 8 8}
{cmd:graph box bp_before bp_after}{break}
    两个箱子，一个显示平均血压前的情况，另一个显示后的情况。

{p 4 8 8}
{cmd:graph box bp, over(agegrp)}{break}
    {it:#_of_agegrp} 个箱子显示各年龄组的血压。

{p 4 8 8}
{cmd:graph box bp_before bp_after, over(agegrp)}{break}
    2*{it:#_of_agegrp} 个箱子显示每个年龄组的血压，分别在之前和之后。
    组别示例如下（假设有三个年龄组）：

	    {c |}
	    {c |}
	    {c |}   {c TT}           {c TT}           {c TT}
	    {c |}  {c TLC}{c BT}{c TRC}   {c TT}     {c TLC}{c BT}{c TRC}   {c TT}     {c TLC}{c BT}{c TRC}   {c TT}
	    {c |}  {c |}-{c |}  {c TLC}{c BT}{c TRC}    {c |}-{c |}  {c TLC}{c BT}{c TRC}    {c |}-{c |}  {c TLC}{c BT}{c TRC}
	    {c |}  {c BLC}{c TT}{c BRC}  {c |}-{c |}    {c BLC}{c TT}{c BRC}  {c |}-{c |}    {c BLC}{c TT}{c BRC}  {c |}-{c |}
	    {c |}   {c BT}   {c BLC}{c TT}{c BRC}     {c BT}   {c BLC}{c TT}{c BRC}     {c BT}   {c BLC}{c TT}{c BRC}
	    {c |}        {c BT}           {c BT}           {c BT}
	    {c BLC}{hline 36}
	       agegrp 1    agegrp 2    agegrp 3

{p 4 8 8}
{cmd:graph box bp, over(agegrp) over(sex)}{break}
    {it:#_of_agegrps}*{it:#_of_sexes} 个箱子显示按每个年龄组的血压，分别对每种性别重复。组别示例如下：

	    {c |}
	    {c |}   {c TT}             {c TT}        {c TT}             {c TT}
	    {c |}  {c TLC}{c BT}{c TRC}     {c TT}     {c TLC}{c BT}{c TRC}      {c TLC}{c BT}{c TRC}     {c TT}     {c TLC}{c BT}{c TRC}
	    {c |}  {c |}-{c |}    {c TLC}{c BT}{c TRC}    {c |}-{c |}      {c |}-{c |}    {c TLC}{c BT}{c TRC}    {c |}-{c |}
	    {c |}  {c BLC}{c TT}{c BRC}    {c |}-{c |}    {c BLC}{c TT}{c BRC}      {c BLC}{c TT}{c BRC}    {c |}_{c |}    {c BLC}{c TT}{c BRC}
	    {c |}   {c BT}     {c BLC}{c TT}{c BRC}     {c BT}        {c BT}     {c BLC}{c TT}{c BRC}     {c BT}
	    {c |}          {c BT}                      {c BT}
	    {c BLC}{hline 43}
	      age_1  age_2  age_3    age_1  age_2  age_3
		     男性                 女性

{p 4 8 8}
{cmd:graph box bp, over(sex) over(agegrp)}{break}
    与上面相同，但排列顺序不同。在前面的例子中，我们输入了 {cmd:over(agegrp)} {cmd:over(sex)}。这次，反过来：

	    {c |}
	    {c |}   {c TT}    {c TT}                        {c TT}    {c TT}
	    {c |}  {c TLC}{c BT}{c TRC}  {c TLC}{c BT}{c TRC}        {c TT}    {c TT}        {c TLC}{c BT}{c TRC}  {c TLC}{c BT}{c TRC}
	    {c |}  {c |}-{c |}  {c |}-{c |}       {c TLC}{c BT}{c TRC}  {c TLC}{c BT}{c TRC}       {c |}-{c |}  {c |}-{c |}
	    {c |}  {c BLC}{c TT}{c BRC}  {c BLC}{c TT}{c BRC}       {c |}-{c |}  {c |}-{c |}       {c BLC}{c TT}{c BRC}  {c BLC}{c TT}{c BRC}
	    {c |}   {c BT}    {c BT}        {c BLC}{c TT}{c BRC}  {c BLC}{c TT}{c BLC}        {c BT}    {c BT}
	    {c |}                  {c BT}    {c BT}
	    {c BLC}{hline 46}
	      男 性   女 性    男 性  女 性   男 性  女 性
		 age_1          age_2          age_3

{p 4 8 8}
{cmd:graph box bp_before bp_after, over(agegrp) over(sex)}{break}
    2*{it:#_of_agegrps}*{it:#_of_sexes} 个箱子显示每个年龄组的血压，分别在之前和之后，按性别重复。组别示例如下：

	    {c |}
	    {c |}   {c TT}                   {c TT}          {c TT}                   {c TT}
	    {c |}  {c TLC}{c BT}{c TRC}  {c TT}     {c TT}   {c TT}    {c TLC}{c BT}{c TRC}  {c TT}     {c TLC}{c BT}{c TRC}  {c TT}     {c TT}   {c TT}    {c TLC}{c BT}{c TRC}  {c TT}
	    {c |}  {c |}-{c |} {c TLC}{c BT}{c TRC}   {c TLC}{c BT}{c TRC} {c TLC}{c BT}{c TRC}   {c |}-{c |} {c TLC}{c BT}{c TRC}    {c |}-{c |} {c TLC}{c BT}{c TRC}   {c TLC}{c BT}{c TRC} {c TLC}{c BT}{c TRC}   {c |}-{c |} {c TLC}{c BT}{c TRC}
	    {c |}  {c BLC}{c TT}{c BRC} {c |}-{c |}   {c |}-{c |} {c |}-{c |}   {c BLC}{c TT}{c BRC} {c |}-{c |}    {c BLC}{c TT}{c BRC} {c |}-{c |}   {c |}-{c |} {c |}-{c |}   {c BLC}{c TT}{c BRC} {c |}-{c |}
	    {c |}   {c BT}  {c BLC}{c TT}{c BRC}   {c BLC}{c TT}{c BRC} {c BLC}{c TT}{c BRC}    {c BT}  {c BLC}{c TT}{c BRC}     {c BT}  {c BLC}{c TT}{c BRC}   {c BLC}{c TT}{c BRC} {c BLC}{c TT}{c BRC}    {c BT}  {c BLC}{c TT}{c BRC}
	    {c |}       {c BT}     {c BT}   {c BT}         {c BT}          {c BT}     {c BT}   {c BT}         {c BT}
	    {c BLC}{hline 62}
		age_1     age_2     age_3      age_1     age_2     age_3
			  男性                         女性


{marker remarks3}{...}
{title:多个 yvars 与 over() 组的处理}

{pstd}
考虑两个包含相同数据但组织方式不同的数据集。
数据集中包含干预前后的血压数据。
在第一个数据集中，数据以宽格式组织；每位患者为一条观测。示例数据如下：

	{txt}{c TLC}{hline 9}{c -}{hline 6}{c -}{hline 8}{c -}{hline 11}{c -}{hline 10}{c TRC}
	{c |} {res}患者    性别   年龄组   干预前血压   干预后血压 {txt}{c |}
	{c LT}{hline 9}{c -}{hline 6}{c -}{hline 8}{c -}{hline 11}{c -}{hline 10}{c RT}
	{c |} {res}      1   男性    30-45         143        153 {txt}{c |}
	{c |} {res}      2   男性    30-45         163        170 {txt}{c |}
	{c |} {res}      3   男性    30-45         153        168 {txt}{c |}
	{c BLC}{hline 9}{c -}{hline 6}{c -}{hline 8}{c -}{hline 11}{c -}{hline 10}{c BRC}{txt}

{pstd}
在第二个数据集中，数据以长格式组织；每位患者为一对观测。第二个数据集中对应的观测为：

	{txt}{c TLC}{hline 9}{c -}{hline 6}{c -}{hline 8}{c -}{hline 8}{c -}{hline 5}{c TRC}
	{c |} {res}患者    性别   年龄组     时机    血压 {txt}{c |}
	{c LT}{hline 9}{c -}{hline 6}{c -}{hline 8}{c -}{hline 8}{c -}{hline 5}{c RT}
	{c |} {res}      1   男性    30-45   干预前   143 {txt}{c |}
	{c |} {res}      1   男性    30-45    干预后   153 {txt}{c |}
	{c LT}{hline 9}{c -}{hline 6}{c -}{hline 8}{c -}{hline 8}{c -}{hline 5}{c RT}
	{c |} {res}      2   男性    30-45   干预前   163 {txt}{c |}
	{c |} {res}      2   男性    30-45    干预后   170 {txt}{c |}
	{c LT}{hline 9}{c -}{hline 6}{c -}{hline 8}{c -}{hline 8}{c -}{hline 5}{c RT}
	{c |} {res}      3   男性    30-45   干预前   153 {txt}{c |}
	{c |} {res}      3   男性    30-45    干预后   168 {txt}{c |}
	{c BLC}{hline 9}{c -}{hline 6}{c -}{hline 8}{c -}{hline 8}{c -}{hline 5}{c BRC}{txt}

{pstd}
使用第一个数据集，我们可能会输入：

	{cmd:. sysuse bpwide, clear}

	{cmd:. graph box bp_before bp_after, over(sex)}
	  {it:({stata "gr_example bpwide: graph box bp_before bp_after, over(sex)":点击运行})}
{* graph boxwide}{...}

{pstd}
使用第二个数据集，我们可以输入：

	{cmd:. sysuse bplong, clear}

	{cmd:. graph box bp, over(when) over(sex)}
	  {it:({stata "gr_example bplong: graph box bp, over(when) over(sex)":点击运行})}
{* graph boxlong}{...}

{pstd}
这两个图形几乎是相同的。它们的不同之处在于

			       多个 {it:yvars}           {cmd:over()} 组
	{hline 61}
	箱体不同颜色      是                        否
	通过 ... 标记箱体   图例                  轴标签
	{hline 61}

{pstd}
选项 {cmd:ascategory} 将导致多个 {it:yvars} 表现得像第一组 {cmd:over()} 变量，而选项 {cmd:asyvars} 将导致第一组 {cmd:over()} 变量表现得像多个 {it:yvars}。因此

	{cmd:. graph box bp, over(when) over(sex) asyvars}

{pstd}
将产生第一张图，而

{phang2}
	{cmd:. graph box bp_before bp_after, over(sex) ascategory}

{pstd}
将产生第二张图。


{marker remarks4}{...}
{title:如何排列箱体}

{pstd}
默认情况下，箱体按 {it:yvars} 的顺序放置，每组 {cmd:over(}{it:varname}{cmd:)} 的顺序根据 {it:varname} 的值进行排序。让我们考虑一些示例：

{phang}
{cmd:graph box bp_before bp_after}{break}
    箱体按指定顺序出现，{cmd:bp_before} 和 {cmd:bp_after}。

{phang}
{cmd:graph box bp, over(when)}{break}
    箱体按变量 {cmd:when} 的值进行排序。

{pmore}
    如果变量 {cmd:when} 是数值型，则最低的 {cmd:when} 数字首先出现，然后是下一个最低的，依此类推。这即便在变量 {cmd:when} 有值标签的情况下也成立。假设 {cmd:when}=1 的标记为“干预前”，而 {cmd:when}=2 的标记为“干预后”。因此，箱体的顺序为“干预前”接着“干预后”。

{pmore}
    如果变量 {cmd:when} 是字符串型，则箱体将按变量值的排序顺序进行排序（即字母顺序，但大写字母优先于小写字母）。如果变量 {cmd:when} 包含“干预前”和“干预后”，则箱体的顺序为“干预后”接着“干预前”。

{phang}
{cmd:graph box bp_before bp_after, over(sex)}{break}
    箱体按指定顺序出现，{cmd:bp_before} 和 {cmd:bp_after}，并为每个 {cmd:sex} 重复，按照上述说明排序。

{phang}
{cmd:graph box bp_before bp_after, over(sex) over(agegrp)}{break}
    箱体按指定顺序出现，即 {cmd:bp_before} 和 {cmd:bp_after}，为 {cmd:sex} 按 {cmd:sex} 的值进行排序并重复，进一步对 {cmd:agegrp} 按 {cmd:agegrp} 的值进行排序并重复。


{marker remarks5}{...}
{title:重新排列箱体}

{pstd}
你可能想通过以下两种方式重新排列箱体：

{phang2}
1.  你想控制每个 {cmd:over()} 组的元素显示顺序。字符串变量 {cmd:when} 可能包含“干预后”和“干预前”，但你想按顺序显示箱体：即“干预前”与“干预后”。

{phang2}
2.  你想根据中位数的值对箱体进行排序。你希望绘制以下图形

{col 16}{cmd:. graph box wage, over(industry)}

{pmore2}
    并希望按 {cmd:wage} 对行业进行排序。

{pstd}
我们将分别考虑这两种需求。


{marker remarks6}{...}
{title:以预定顺序排列箱体}

{pstd}
你绘制的图形如下：

	{cmd:. graph box bp, over(when) over(sex)}

{pstd}
变量 {cmd:when} 是一个字符串，包含“干预前”和“干预后”。你希望箱体按这个顺序排列。

{pstd}
为此，你创建一个新的数值变量，以按照希望的顺序安排组：

	{cmd:. generate order = 1 if when=="干预前"}
	{cmd:. replace  order = 2 if when=="干预后"}

{pstd}
你可以随意命名变量并创建它，但确保新变量与 {cmd:over()} 组值一一对应。然后你就可以指定 {cmd:over()}'s {cmd:sort(}{it:varname}{cmd:)} 选项：

{phang2}
	{cmd:. graph box bp, over(when, sort(order)) over(sex)}


{pstd}
如果你希望反转顺序，可以指定 {cmd:descending} 子选项：

{phang2}
	{cmd:. graph box bp, over(when, sort(order) descending) over(sex)}


{marker remarks7}{...}
{title:按中位数顺序排列箱体}

{pstd}
你绘制的图形如下：

	{cmd:. graph hbox wage, over(industry)}

{pstd}
现在希望将箱体按中位数顺序排列，从最低到最高。你输入：

{phang2}
	{cmd:. graph hbox wage, over(industry, sort(1))}

{pstd}
如果你希望排列为最高到最低，只需输入：

{phang2}
	{cmd:. graph hbox wage, over(industry, sort(1) descending)}

{pstd}
{cmd:1} 在 {cmd:sort(1)} 中指的是第一个（且恰好只有一个） {it:yvar}。如果你有多个 {it:yvars}，你可以输入：

{phang2}
	{cmd:. graph hbox wage benefits, over(industry, sort(1))}

{pstd}
你将得到一张图显示 {cmd:wage} 和 {cmd:benefits}，根据 {cmd:wage} 排序。如果你输入：

{phang2}
	{cmd:. graph hbox wage benefits, over(industry, sort(2))}

{pstd}
则图形将根据 {cmd:benefits} 排序。


{marker remarks8}{...}
{title:与 by() 一起使用}

{pstd}
{cmd:graph} {cmd:box} 和 {cmd:graph} {cmd:hbox} 可以与 {cmd:by()} 一起使用，但通常情况下，你会倾向于使用 {cmd:over()}，而不是 {cmd:by()}。
箱线图是显式的分类图形，并且很好地呈现多个组的总结统计信息。

{pstd}
然而，{cmd:by()} 的一个好用法是，当图形会变得很长。考虑图形

	{cmd:. sysuse nlsw88, clear}

	{cmd:. graph hbox wage, over(ind) over(union)}

{pstd}
在上面的图中，有12个行业类别和两个工会类别，总共形成24个独立的箱子。以正常大小呈现的图形几乎是不可阅读的。解决这个问题的一种方式是使图形比平常更长，

{phang2}
	{cmd:. graph hbox wage, over(ind) over(union) ysize(7)}

{pstd}
有关该解决方案的更多信息，请见 {it:{help graph bar##remarks9:具有许多类别的图表}} 在 {manhelp graph_bar G-2:graph bar}中。另一种解决方案则是将工会作为 {cmd:by()} 类别引入，而不是 {cmd:over()} 类别：

	{cmd:. graph hbox wage, over(ind) by(union)}

{pstd}
下面我们正是这样做的，添加一些额外的选项以生成一个美观的图形：

	{cmd}. graph hbox wage, over(ind, sort(1)) nooutside
		ytitle("")
		by(
			union,
			title("1988年34-46岁女性的时薪", span)
			subtitle(" ")
			note("来源：1988年数据来自NLS，美国劳工部
			      劳动统计局", span)
		){txt}
	  {it:({stata "gr_example2 grboxby":点击运行})}
{* graph grboxby}{...}

{pstd}
标题选项在 {cmd:by()} 内指定，以便它们不会应用于每个图形；详见 {manhelpi by_option G-3}。


{marker video}{...}
{title:视频示例}

{phang}
{browse "http://www.youtube.com/watch?v=y6dngL80xuo":Stata中的箱线图}


{* index histories}{...}
{* index Crowe}{...}
{marker remarks9}{...}
{title:历史}

{pstd}
箱线图已经在地理和气候学中使用，称为“离散图”，至少从1933年起；见 {help graph box##C1933:Crowe (1933)}。他的图1展示了1868-1917年间格拉斯哥月降雨量的所有数据点、中位数、四分位数和八分位数，按月计算。图2是一个欧洲地图，显示多个气候站，提供每月的中位数、四分位数和八分位数。


{marker reference}{...}
{title:参考文献}

{marker C1933}{...}
{phang}
Crowe, P. R. 1933. The analysis of rainfall probability. A graphical method
and its application to European data. {it:Scottish Geographical Magazine}
49: 73-91.
{p_end}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <graph_box.sthlp>}