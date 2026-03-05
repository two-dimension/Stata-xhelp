{smcl}
{* *! version 2.2.20  16apr2019}{...}
{viewerdialog "sts graph" "dialog sts_graph"}{...}
{vieweralsosee "[ST] sts graph" "mansection ST stsgraph"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[ST] sts" "help sts_zh"}{...}
{vieweralsosee "[ST] sts generate" "help sts_generate_zh"}{...}
{vieweralsosee "[ST] sts list" "help sts_list_zh"}{...}
{vieweralsosee "[ST] sts test" "help sts_test_zh"}{...}
{vieweralsosee "[ST] stset" "help stset_zh"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[R] kdensity" "help kdensity_zh"}{...}
{viewerjumpto "Syntax" "sts_graph_zh##syntax"}{...}
{viewerjumpto "Menu" "sts_graph_zh##menu"}{...}
{viewerjumpto "Description" "sts_graph_zh##description"}{...}
{viewerjumpto "Links to PDF documentation" "sts_graph_zh##linkspdf"}{...}
{viewerjumpto "Options" "sts_graph_zh##options"}{...}
{viewerjumpto "Examples" "sts_graph_zh##examples"}{...}
{viewerjumpto "Video example" "sts_graph_zh##video"}
{help sts_graph:English Version}
{hline}{...}
{p2colset 1 19 21 2}{...}
{p2col:{bf:[ST] sts graph} {hline 2}}绘制生存率、危害率或累积危害函数的图{p_end}
{p2col:}({mansection ST stsgraph:查看完整的 PDF 手册条目}){p_end}
{p2colreset}{...}


{marker syntax}{...}
{title:语法}

{p 8 21 2}{cmd:sts} {opt g:raph} {ifin} [{cmd:,} {it:选项}]

{synoptset 35 tabbed}{...}
{synopthdr}
{synoptline}
{syntab:主要}
{synopt :{opt sur:vival}}绘制 Kaplan-Meier 生存函数；默认选项{p_end}
{synopt :{opt fail:ure}}绘制 Kaplan-Meier 失败函数{p_end}
{synopt :{opt cumh:az}}绘制 Nelson-Aalen 累积危害函数{p_end}
{synopt :{opt haz:ard}}绘制平滑的危害估计{p_end}
{synopt :{opth by(varlist)}}为由 {it:varlist} 形成的每个组估计并绘制单独的函数{p_end}
{synopt :{opth ad:justfor(varlist)}}将估计调整为 {it:varlist} 的零值{p_end}
{synopt :{opth st:rata(varlist)}}对不同的 {it:varlist} 组进行分层{p_end}
{synopt :{opt sep:arate}}在单独的图上显示曲线；默认是在同一图上重叠显示曲线{p_end}
{synopt :{opt ci}}显示逐点置信区间{p_end}

{syntab:风险表}
{synopt :{cmdab:riskt:able}}在图下显示风险人数表{p_end}
{synopt :{opth riskt:able(sts_graph##risk_spec:risk_spec)}}在图下显示自定义的风险人数表{p_end}

{syntab:选项}
{synopt :{opt l:evel(#)}}设置置信水平；默认值为 {cmd:level(95)}{p_end}
{synopt :{opt per(#)}}用于报告比率的单位{p_end}
{synopt :{opt nosh:ow}}不显示 st 设置信息{p_end}
{synopt :{opt tma:x(#)}}显示 t <= {it:#} 的图{p_end}
{synopt :{opt tmi:n(#)}}显示 t >= {it:#} 的图{p_end}
{synopt :{opt noori:gin}}在第一个退出时间开始生存（失败）曲线；默认情况下从 t = 0 开始{p_end}
{synopt :{cmd:width(}{it:#}[{it:#}...]{cmd:)}}覆盖默认带宽{p_end}
{synopt :{opth k:ernel(kdensity##kernel:kernel)}}内核函数；与 {opt hazard} 一起使用{p_end}
{synopt :{opt nob:oundary}}无边界校正；与 {opt hazard} 一起使用{p_end}
{synopt :{opt lost}}显示丢失人数{p_end}
{synopt :{opt e:nter}}显示进入人数和丢失人数{p_end}
{synopt :{opt atr:isk}}显示每个区间开始时的风险人数{p_end}
{synopt :{cmdab:cen:sored(}{opt s:ingle)}}在每个审查时间显示一个哈希标记，无论被审查的数量如何{p_end}
{synopt :{cmdab:cen:sored(}{opt n:umber)}}在每个审查时间显示一个哈希标记，并在哈希标记上方显示被审查的数量{p_end}
{synopt :{cmdab:cen:sored(}{opt m:ultiple)}}对同一时间的多重审查显示多个哈希标记{p_end}
{synopt :{opth censo:pts(sts_graph##hash_options:hash_options)}}影响哈希标记的呈现{p_end}
{synopt :{opth lostop:ts(marker_label_options)}}影响丢失人数的呈现{p_end}
{synopt :{opth atriskop:ts(marker_label_options)}}影响风险人数的呈现{p_end}

{syntab:绘图}
{synopt :{opth ploto:pts(cline_options)}}影响绘制线条的呈现{p_end}
{synopt :{cmdab:plot:}{ul:{it:#}}{cmd:opts(}{it:{help cline_options_zh}}{cmd:)}}影响第 {it:#} 条绘制线的呈现；可能与 {opt separate} 同时使用{p_end}

{syntab:CI 图}
{synopt :{opth ciop:ts(area_options)}}影响置信区间的呈现{p_end}
{synopt :{cmdab:ci:}{ul:{it:#}}{cmd:opts(}{it:{help area_options_zh}}{cmd:)}}影响第 {it:#} 置信区间的呈现；可能与 {opt separate} 同时使用{p_end}

{syntab:添加绘图}
{synopt :{opth "addplot(addplot_option:plot)"}}向生成的图形添加其他图形{p_end}

{syntab:Y 轴，X 轴，标题，图例，总体}
{synopt :{it:twoway_options}}在 {manhelpi twoway_options G-3} 中记录的所有选项{p_end}
{synopt :{opth byop:ts(by_option:byopts)}}如何组合、标记等子图{p_end}
{synoptline}

{marker risk_spec}{...}
{phang}
其中 {it:risk_spec} 是 

{pmore2}
[{it:{help numlist_zh}}][{cmd:,} {it:table_options}
       {opth group:(sts_graph##group:group)}]

{pmore}
{it:numlist} 指定要评估风险人数的点，{it:table_options} 自定义风险人数表，{opt group(group)} 指定要应用 {it:table_options} 的特定组/行。

{marker table_options}{...}
{synoptset 35 tabbed}{...}
{synopthdr:table_options}
{synoptline}
{syntab:主要}
{synopt:{it:{help axis_label_options_zh}}}通过使用轴标签选项控制表；不常用{p_end}
{synopt:{opt order}{hi:(}{it:{help sts_graph##order_spec:order_spec}}{hi:)}}选择哪些行出现以及它们的顺序{p_end}
{synopt:{opt rightt:itles}}在表的右侧放置标题{p_end}
{synopt:{opt fail:events}}在风险表中显示失败的数量{p_end}
{synopt:{it:{help sts_graph##text_options:text_options}}}影响表元素和标题的呈现{p_end}

{syntab:行标题}
{synopt:{opt rowt:itle}{cmd:(}[{it:text}][{cmd:,} {it:{help sts_graph##rtext_options:rtext_options}}]{cmd:)}}更改行的标题{p_end}

{syntab:标题}
{synopt:{opt title}{cmd:(}[{it:text}][{cmd:,} {it:{help sts_graph##ttext_options:ttext_options}}]{cmd:)}}更改风险表的整体标题{p_end}
{synoptline}

{marker order_spec}{...}
{phang}
其中 {it:order_spec} 是{p_end}

{pmore}
{it:#} [{hi:"}{it:text}{hi:"} [{hi:"}{it:text}{hi:"} ...]] [...]

{marker text_options}{...}
{synoptset 35}{...}
{synopthdr:text_options}
{synoptline}
{synopt:{opth size(textsizestyle)}}文本大小{p_end}
{synopt:{opth color(colorstyle)}}文本颜色{p_end}
{synopt:{opth justification(justificationstyle)}}文本左对齐、居中、右对齐{p_end}
{synopt:{opth format(%fmt)}}按照 {bf:%}{it:fmt} 格式化值{p_end}
{synopt:{opth topg:ap(size)}}行上方的边距{p_end}
{synopt:{opth bottomg:ap(size)}}行下方的边距{p_end}

{synopt:{opth style(textstyle)}}文本的整体样式{p_end}
{synoptline}
{p 4 6 2}{cmd:style()} 不出现在对话框中。{p_end}

{marker rtext_options}{...}
{synoptset 35}{...}
{synopthdr:rtext_options}
{synoptline}
{synopt:{opth size(textsizestyle)}}文本大小{p_end}
{synopt:{opth color(colorstyle)}}文本颜色{p_end}
{synopt:{opth justification(justificationstyle)}}文本左对齐、居中、右对齐{p_end}
{synopt:{opt at(#)}}覆盖标题的 x 位置{p_end}
{synopt:{opth topg:ap(size)}}行上方的边距{p_end}

{synopt:{opth style(textstyle)}}文本的整体样式{p_end}
{synoptline}
{p 4 6 2}{cmd:style()} 不出现在对话框中。{p_end}

{marker ttext_options}{...}
{synoptset 35}{...}
{synopthdr:ttext_options}
{synoptline}
{synopt:{opth size(textsizestyle)}}文本大小{p_end}
{synopt:{opth color(colorstyle)}}文本颜色{p_end}
{synopt:{opth justification(justificationstyle)}}文本左对齐、居中、右对齐{p_end}
{synopt:{opt at(#)}}覆盖标题的 x 位置{p_end}
{synopt:{opth topg:ap(size)}}行上方的边距{p_end}
{synopt:{opth bottomg:ap(size)}}行下方的边距{p_end}

{synopt:{opth style(textstyle)}}文本的整体样式{p_end}
{synoptline}
{p 4 6 2}{cmd:style()} 不出现在对话框中。{p_end}

{marker group}{...}
{synoptset 35}{...}
{synopthdr:group}
{synoptline}
{synopt:{it:#rownum}}通过表中的行号指定组{p_end}
{synopt:{it:value}}通过组的值指定组{p_end}
{synopt:{it:label}}通过与组相关的值标签的文本指定组{p_end}
{synoptline}

{marker hash_options}{...}
{synoptset 35}{...}
{synopthdr:hash_options}
{synoptline}
{synopt:{it:{help line_options_zh}}}更改丢失线的外观{p_end}
{synopt:{it:{help marker_label_options_zh}}}添加标记标签；任何在 {manhelpi marker_label_options G-3} 中记录的选项，除了 {cmd:mlabel()}{p_end}
{synoptline}

{p2colreset}{...}
{p 4 6 2}
{opt risktable()} 可以重复使用，并且是 {it:merged-explicit}；请参阅 {help repeated options}.{p_end}
{p 4 6 2}
您必须在使用 {cmd:sts graph} 之前 {cmd:stset} 您的数据；请参阅 {manhelp stset ST}.{p_end}
{p 4 6 2}
可以使用 {cmd:stset} 指定 {opt fweight}s， {opt iweight}s 和 {opt pweight}s；请参阅 {manhelp stset ST}。


{marker menu}{...}
{title:菜单}

{phang}
{bf:统计 > 生存分析 > 图形 >}
      {bf:生存和累积危害函数}


{marker description}{...}
{title:描述}

{pstd}
{cmd:sts graph} 绘制估计的生存（失败）函数、 Nelson-Aalen 估计的累积（积分）危害函数或估计的危害函数。

{pstd}
{cmd:sts graph} 可用于单记录或多记录，或单失败或多失败的生存时间数据。


{marker linkspdf}{...}
{title:PDF 文档链接}

        {mansection ST stsgraphQuickstart:快速入门}

        {mansection ST stsgraphRemarksandexamples:说明和示例}

        {mansection ST stsgraphMethodsandformulas:方法和公式}

{pstd}
上述部分不包括在此帮助文件中。


{marker options}{...}
{title:选项}

{dlgtab:主要}

{phang}
{opt survival}、{opt failure}、{opt cumhaz} 和 {opt hazard} 指定要绘制的函数。

{phang2}
{opt survival} 指定绘制 Kaplan-Meier 生存函数。 如果未指定函数，则此选项为默认值。

{phang2}
{opt failure} 指定绘制 Kaplan-Meier 失败函数，即 1 - S(t+0)。

{phang2}
{opt cumhaz} 指定绘制 Nelson-Aalen 的累积危害函数估计。

{phang2}
{opt hazard} 指定绘制危害函数的估计。 此估计被计算为一个加权的核密度估计，使用估计的危害贡献。 这些危害贡献与 {cmd:sts generate} {newvar} {cmd:= h} 获得的相同。

{phang}
{opth by(varlist)}
对每个 by 组估计单独的函数并将所有函数绘制在一张图上。 by 组通过 {it:varlist} 中变量的相等值来识别。 {opt by()} 不能与 {opt strata()} 结合使用。

{phang}
{opth adjustfor(varlist)} 将生存或危害函数的估计调整为 {it:varlist} 的 0 值。 如果您想将函数调整为 0 以外的值，则在发出命令之前需要围绕这些值对变量进行中心化。 假设您想绘制调整到患者年龄的生存函数，而您的样本中的年龄为 40 到 60 岁。 然后

{phang3}{cmd:. sts graph, adjustfor(age)}

{pmore}
将绘制调整为年龄 0 的生存函数。 如果您想将函数调整为年龄 40，请输入

{phang3}{cmd:. gen age40 = age - 40}{p_end}
{phang3}{cmd:. sts graph, adjustfor(age40)}

{pmore}
{opt adjustfor()} 在 {opt cumhaz} 或 {opt ci} 下不可用。

{pmore}
如果您使用 {cmd:adjustfor()} 与 {cmd:by()}，则 {cmd:sts} 将为每个组拟合单独的 Cox 回归模型，使用 {cmd:adjustfor()} 变量作为协变量。 然后检索单独计算的基线生存函数。

{pmore}
如果您将 {cmd:adjustfor()} 与 {cmd:strata()} 结合使用，{cmd:sts} 将使用 {cmd:adjustfor()} 变量作为协变量拟合分层组的 Cox 回归模型。 然后检索分层的基线生存函数。

{phang}
{opth strata(varlist)} 生成基于 {it:varlist} 中变量的生存（失败）或危害函数的估计，并将所有组绘制在一张图上。 必须指定 {cmd:adjustfor()}，且不能与 {cmd:by()} 结合使用。

{pmore}
如果您有多个 {cmd:strata()} 变量但只需要一个，请使用 {cmd:egen} 来创建它；请参阅 {manhelp egen D}。

{phang}
{opt separate} 仅对 {opt by()} 或 {opt strata()} 有意义；它请求每个组在其自己的图上，而不是一个图叠加在另一个图上。 有时候曲线必须放置在单独的图上 -- 例如，当您指定 {opt ci} 时 -- 否则会太混乱。

{phang}
{opt ci} 包含逐点置信区间。 默认情况下不生成这些区间。 {opt ci} 不允许与 {opt adjustfor()} 或 {helpb pweight}s 结合使用。

{dlgtab:风险表}

{phang}
{cmd:risktable}[{cmd:(}[{it:{help numlist_zh}}][{cmd:,}
	{it:{help sts_graph##table_opts_long:table_options}}]{cmd:)}]
	显示在图下方显示风险人数的表。 
        {opt risktable} 不能与 {opt separate} 或 
	{opt adjustfor()} 一起使用。

{phang2}
{opt risktable} 以默认格式显示表格，显示在 {it:x} 轴上每个时间点的风险人数。

{phang2}
{opt risktable}{cmd:(}[{it:{help numlist_zh}}][{cmd:,} 
	{it:{help sts_graph##table_opts_long:table_options}}]{cmd:)} 指定在 {it:numlist} 中指定的点评估风险人数，或者通过 {it:table_options} 更改表的呈现。

{pmore}
有两种方法可以更改评估风险人数的点。

{phang3}
	1. 可以更改图的 {it:x} 轴。例如：

{p 15 19 2}
	{cmd:. sts graph, xlabel(0(5)40) risktable}

{p 12 15 2}
	2. 可以直接在 {cmd:risktable()} 选项中指定 {it:numlist}，该选项仅影响风险表。 例如：

{p 15 19 2}
	{cmd:. sts graph, risktable(0(5)40)}

{pmore}
这两个示例生成相同的风险表，但第一个还更改了图的 {it:x} 轴上的时间标签。

{marker table_opts_long}{...}
{phang2}
{it:table_options} 影响风险表的呈现，并且可能是以下任一项：

{phang3}
{cmd:group(}{bf:#}{it:rownum}|{it:value}|{it:label}{cmd:)} 指定所有在 {cmd:risktable()} 中指定的子选项仅适用于指定的组。由于 {cmd:risktable()} 选项可以重复使用，因此此选项允许在风险表的不同行中以不同的颜色、字体大小等显示。

{pmore3}
	当值和值标签都匹配时，值标签优先。

{pmore3}
{opt risktable()} 可以与或不带 {opt group()} 子选项一起指定。
当不带 {opt group()} 指定时，所有可用组或行应用每个子选项。
不带 {opt group()} 指定的 {opt risktable()} 被视为全局选项，并且本身是 
	合并显式的。有关如何合并重复选项的更多信息，请参阅 {help repeated options}。

{pmore3}
考虑以下示例：

{p 20 24 2}
{cmd:. sts graph, by(drug) risktable(, color(red) size(small)) risktable(, color(navy))}

{pmore3}
上述示例将生成行颜色为海军蓝且文本较小的表格。

{pmore3}
将全局 {opt risktable()} 选项与特定组的 {opt risktable()} 选项结合使用可能会很有用。当全局选项与组特定选项结合使用时，组特定选项总是优先。

{pmore3}
考虑以下示例：

{p 20 24 2}
{cmd:. sts graph, by(drug) risktable(, color(navy)) risktable(, color(red) group(#1))}

{pmore3}
上述示例将生成第一行颜色为红色，所有剩余行颜色为海军蓝的表格。

        {dlgtab:主要}
{phang3}
{it:axis_label_options} 通过使用轴标签选项控制表。这些选项不常用。请参阅 {manhelpi axis_label_options G-3}。

{phang3}
{opt order()} 指定要在风险表中出现的行以及其顺序。可选地，{opt order()}
可以用来覆盖默认文本。

{pmore3}
{opt order(# # # ...)} 是标识要显示哪些行及其顺序的语法。 {cmd:order(1 2 3)} 将指定第一行在表中首先出现，其次是第二行，最后是第三行。如果有三组，则 {cmd:order(1 2 3)} 为默认值。
如果有四组，则 {cmd:order(1 2 3 4)} 为默认值，依此类推。如果有四组并且您指定了 {cmd:order(1 2 3)}，则第四行将不会出现在风险表中。如果您指定了 {cmd:order(2 1 3)}，第二行将排在第一位，接着是第一行，最后是第三行。

{pmore3}
{cmd:order(}{it:#} {hi:"}{it:text}{hi:"} {it:#} {hi:"}{it:text}{hi:"} ...{hi:)}
是用于指定行顺序和备用行标题的语法。

{pmore3}
考虑以下风险表：

                     {c TLC}{hline 36}{c TRC}
                     {c |}  drug = 1   20    8     2          {c |}
                     {c |}  drug = 2   14    10    4     1    {c |}
                     {c |}  drug = 3   14    13    10    5    {c |}
                     {c BLC}{hline 36}{c BRC}

{pmore3}
指定 {cmd:order(1 "Placebo" 3 2)} 将生成：

                     {c TLC}{hline 36}{c TRC}
                     {c |}  Placebo    20    8     2          {c |}
                     {c |}  drug = 3   14    13    10    5    {c |}
                     {c |}  drug = 2   14    10    4     1    {c |}
                     {c BLC}{hline 36}{c BRC}

{pmore3}	
并且指定 {cmd:order(1 "Placebo" 3 "Drug 2" 2 "Drug 1")} 将生成：

                     {c TLC}{hline 36}{c TRC}
                     {c |}  Placebo    20    8     2          {c |}
                     {c |}  Drug 2     14    13    10    5    {c |}
                     {c |}  Drug 1     14    10    4     1    {c |}
                     {c BLC}{hline 36}{c BRC}

{phang3}
{opt righttitles} 指定行标题放置在风险值的右侧。 默认是在风险值左侧放置行标题。

{phang3}
{opt failevents} 指定失败事件的数量在风险值计算的时间后显示在括号中。

{phang3}
{marker text_opts_long}{...}
{it:text_options} 影响行标题和风险人数的呈现，可能是以下任一项：

{p 16 20 2}
{opth size(textsizestyle)} 指定文本的大小。

{p 16 20 2}
{opth color(colorstyle)} 指定文本的颜色。

{p 16 20 2}
{opth justification(justificationstyle)} 指定文本元素的对齐方式。

{p 16 20 2}
{opth format(%fmt)} 指定如何格式化数值。

{p 16 20 2}
{opth topgap(size)} 指定每行上方的空白。

{p 16 20 2}
{opth bottomgap(size)} 指定每行下方的空白。

{p 16 20 2}
{opth style(textstyle)} 指定文本的样式。该选项未出现在对话框中。

        {dlgtab:行标题}

{phang3}
{cmd:rowtitle(}[{it:text}] [{cmd:,} {it:rtext_options}]{cmd:)} 更改行标题的默认文本或呈现。 指定 
	{cmd:rowtitle(, color(navy))} 将所有行标题的颜色更改为海军蓝。

{pmore3}
	{cmd:rowtitle()} 常与 {cmd:group()} 结合使用以更改标题的文本或呈现。
	指定 {bind:{cmd:rowtitle(Placebo)} {cmd:group(#2)}} 将第二行的标题更改为 {cmd:Placebo}。
	指定 {bind:{cmd:rowtitle(, color(red))} {cmd:group(#3)}} 
	将第三行的行标题的颜色更改为红色。
	
{pmore3}
	行标题可以包含多于一行。 行的指定是一个接一个地进行，每行用双引号括起来。
	指定 {cmd:rowtitle("Experimental drug") group(#1)} 将生成单行行标题，而指定 
	{cmd:rowtitle("Experimental" "Drug") group(#1)} 将生成多行行标题。
	
{pmore3}
       {it:rtext_options} 影响行标题和风险人数的呈现，可能是以下任一项：

{p 20 24 2}
{opth size(textsizestyle)} 指定文本的大小。

{p 20 24 2}
{opth color(colorstyle)} 指定文本的颜色。

{p 20 24 2}
{opth justification(justificationstyle)} 指定文本元素的对齐方式。

{p 20 24 2}
{opt at(#)} 允许您重新定位行标题或整体表标题，以便与 {it:x} 轴上的特定位置对齐。

{p 20 24 2}
{opth topgap(size)} 指定每行上方的空白。

{p 20 24 2}
{opth style(textstyle)} 指定文本的样式。该选项未出现在对话框中。

        {dlgtab:标题}

{phang3}
{cmd:title(}[{it:title}] [{cmd:,} {it:ttext_options}]{cmd:)} 
	可用于覆盖风险表的默认标题并影响其文本的呈现。

{pmore3}
	标题可以包含一行文本或多行文本。
	{cmd:title("At-risk table")} 将生成一行标题，
	而  {cmd:title("At-risk" "table")} 将生成多行标题。

{pmore3}
       {it:ttext_options} 影响行标题和风险人数的呈现，可能是以下任一项：

{p 20 24 2}
{opth size(textsizestyle)} 指定文本的大小。

{p 20 24 2}
{opth color(colorstyle)} 指定文本的颜色。

{p 20 24 2}
{opth justification(justificationstyle)} 指定文本元素的对齐方式。

{p 20 24 2}
{opt at(#)} 允许您重新定位行标题或整体表标题，以便与 {it:x} 轴上的特定位置对齐。

{p 24 24 2}
{cmd:at(rowtitles)} 将整体表标题放置在为行标题计算的默认位置。这在未使用默认对齐时对对齐有时会很有用。

{p 20 24 2}
{opth topgap(size)} 指定每行上方的空白。

{p 20 24 2}
{opth bottomgap(size)} 指定每行下方的空白。

{p 20 24 2}
{opth style(textstyle)} 指定文本的样式。该选项未出现在对话框中。

{dlgtab:选项}

{phang}
{opt level(#)} 指定置信水平，以百分比表示，用于生存、失败或累积危害函数周围的逐点置信区间；请参见 {manhelp level R}。

{phang}
{opt per(#)} 指定用于报告生存或失败率的单位。 例如，如果分析时间以年为单位，指定 {cmd:per(100)} 将导致以每 100 人年为单位报告率。

{phang}
{opt noshow} 防止 {cmd:sts graph} 显示关键的 st 变量。 该选项不常用，因为大多数人输入 {cmd:stset, show} 或 
{cmd:stset, noshow} 来设置是否希望在输出的每个 st 命令顶部提到这些变量；请参见 {manhelp stset ST}。

{phang}
{opt tmax(#)} 指定绘制的曲线仅在 t <= {it:#} 时进行绘制。 该选项不影响函数的计算，而是影响显示的部分。

{phang}
{opt tmin(#)} 指定绘制的曲线仅在 t >= {it:#} 时进行绘制。 该选项不影响函数的计算，而是影响显示的部分。

{phang}
{opt noorigin} 请求生存（失败）曲线的图从第一个退出时间开始，而不是从 t=0（默认）开始。 当指定了 {opt cumhaz} 或 {opt hazard} 时，将忽略此选项。

{phang}
{cmd:width(}{it:#} [{it:#} ...]{cmd:)} 用于 {opt hazard} ，并指定用于绘制估计危害函数的核平滑的带宽。 如果未指定 {opt width()}，则使用默认带宽，如 {manhelp kdensity R} 所述。 如果与 {opt by()} 一起使用，则可以指定多个带宽，为每个组指定一个。 如果组数超过指定的 {it:k} 带宽，则剩余的组使用默认带宽。如果任何带宽被指定为 {cmd:.}（点），则该组使用默认带宽。

{phang}
{opt kernel(kernel)} 用于 {opt hazard} ，并指定在计算所需的加权核密度估计时使用的内核函数，以生成平滑的危害函数估计器。 默认内核是 Epanechnikov，但 {it:kernel} 可以是 {cmd:kdensity} 支持的任何内核；请参见 {manhelp kdensity R}。

{phang}
{opt noboundary} 用于 {opt hazard} 。 它指定在计算平滑危害函数估计时不进行边界偏差调整。 默认情况下，平滑的危害在边界附近进行调整。 如果使用了 {opt epan2}、{opt biweight} 或 {opt rectangular} 内核，则在边界附近使用边界内核来执行偏差修正。 对于其他内核，绘图范围限制在每个端点的一个带宽之内。 对于这些其他内核，指定 {opt noboundary} 仅仅去除了此范围限制。

{phang}
{opt lost} 指定在图中显示丢失人数。 此数显示在绘制函数的每个平坦部分上方的小尺寸。

{pmore}
如果未指定 {opt enter}，则显示的数量为被审查的数量减去进入人数。如果指定 {opt enter}，则显示的数量为纯粹的被审查人数。 背后的逻辑在 {bf:[ST] sts} 中描述。

{pmore}
{opt lost} 不能与 {opt hazard} 一起使用。

{phang}
{opt enter} 指定在图中显示进入人数，以及丢失人数。 进入人数以小型显示在绘制函数的每个平坦部分下方。

{pmore}
{opt enter} 不能与 {opt hazard} 一起使用。

{phang}
{opt atrisk} 指定在图中显示每个区间开始时的风险人数。 该数字以小型显示在绘制函数的每个平坦部分下方。

{pmore}
{opt atrisk} 不能与 {opt hazard} 一起使用。

{phang}
{cmd:censored(single} | {cmd:number} | {cmd:multiple)} 指定在图上放置哈希标记以指示被审查的观察值。

{phang2}
{cmd:censored(single)} 在每个审查时间放置一个哈希标记，无论该时间有多少个审查。

{phang2}
{cmd:censored(number)} 在每个审查时间放置一个哈希标记，并在哈希标记上显示审查的数量。

{phang2}
{cmd:censored(multiple)} 对同一时间的多个审查放置多个哈希标记。 例如，如果在时间 5 时有 3 个观察值被审查，则在时间 5 放置三个哈希标记。 {cmd:censored(multiple)} 用于在少数审查观察值的情况下；如果审查观察值过多，图形效果不佳。在这种情况下，建议使用 {cmd:censored(number)}。

{pmore}
{opt censored()} 不能与 {opt hazard} 一起使用。

{phang}
{opt censopts(hash_options)} 指定影响被审查观察值的哈希标记的呈现的选项；请参阅 {manhelpi line_options G-3}。 与 {cmd:censored(number)} 结合使用时，{cmd:censopts()} 还指定审查的计数如何呈现；请参阅 {manhelpi marker_label_options G-3}，但不允许使用 {cmd:mlabel()}。

{phang}
{opt lostopts(marker_label_options)} 指定影响丢失人数的呈现的选项；请参阅 {manhelpi marker_label_options G-3}。 该选项暗示有 {opt lost} 选项。

{phang}
{opt atriskopts(marker_label_options)} 指定影响风险人数的呈现的选项；请参阅 {manhelpi marker_label_options G-3}。 该选项暗示有 {opt atrisk} 选项。

{dlgtab:绘图}

{phang}
{opt plotopts(cline_options)} 影响绘制线条的呈现；请参阅 {manhelpi cline_options G-3}。 该选项不能与 {opth by(varlist)} 或 {opt strata(varlist)} 结合使用，除非还指定了 {opt separate}。

{phang}
{cmd:plot}{it:#}{cmd:opts(}{it:cline_options}{cmd:)} 影响第 {it:#} 条绘制线的呈现；请参阅 {manhelpi cline_options G-3}。 该选项不能与 {opt separate} 结合使用。

{dlgtab:CI 图}

{phang}
{opt ciopts(area_options)} 影响置信区间的呈现；请参阅 {manhelpi area_options G-3}。 该选项不能与 {opth by(varlist)} 或 {opt strata(varlist)} 结合使用，除非还指定了 {opt separate}。

{phang}
{cmd:ci}{it:#}{cmd:opts(}{it:area_options}{cmd:)} 影响第 {it:#} 置信区间的呈现；请参阅 {manhelpi area_options G-3}。 该选项不能与 {opt separate} 结合使用。

{dlgtab:添加绘图}

{phang}
{opt addplot(plot)} 提供将其他图形添加到生成的图上的方法；请参阅 {manhelpi addplot_option G-3}。

{dlgtab:Y 轴，X 轴，标题，图例，总体}

{phang}
{it:twoway_options} 是在 {manhelpi twoway_options G-3} 中记录的任何选项。这些选项包括图形标题选项（见 {manhelpi title_options G-3}）和将图形保存到磁盘的选项（见 {manhelpi saving_option G-3}）。

{phang}
{opt byopts(byopts)} 影响在指定了 {cmd:by()} 或 {cmd:adjustfor()} 时组合图的外观，包括整体图标题和子图的组织。
{cmd:byopts()} 不能与 {opt separate} 一起指定。
请参见 {manhelpi by_option G-3}。


{marker examples}{...}
{title:示例：在图中包含丢失人数}

{pstd}设置{p_end}
{phang2}{cmd:. webuse drug2b}

{pstd}绘制两个 {cmd:drug} 类别的生存函数，并在图上包含由于审查而丢失的人数{p_end}
{phang2}{cmd:. sts graph, by(drug) lost}

{pstd}与上述相同，但显示进入人数和丢失人数{p_end}
{phang2}{cmd:. sts graph, by(drug) enter}


{title:示例：绘制 Nelson-Aalen 累积危害函数}

{pstd}设置{p_end}
{phang2}{cmd:. webuse drug2}

{pstd}绘制两个 {cmd:drug} 类别的累积危害函数{p_end}
{phang2}{cmd:. sts graph, cumhaz by(drug)}

{pstd}与上述相同，但图中包含由于审查而丢失的人数{p_end}
{phang2}{cmd:. sts graph, cumhaz by(drug) lost}


{title:示例：绘制危害函数}

{pstd}绘制两个 {cmd:drug} 类别的危害函数{p_end}
{phang2}{cmd:. sts graph, hazard by(drug)}

{pstd}与上述相同，但对 {cmd:drug} = 0 使用带宽为 5 的高斯内核，对 {cmd:drug} = 1 使用带宽为 7{p_end}
{phang2}{cmd:. sts graph, hazard by(drug) kernel(gauss) width(5 7)}


{title:示例：添加风险表}

{pstd}在一个图中绘制两个 {cmd:drug} 类别的生存函数，包括图下方的风险表{p_end}
{phang2}{cmd:. sts graph, by(drug) risktable}

{pstd}与上述相同，但将图例放在绘图内部而不是下面{p_end}
{phang2}{cmd:. sts graph, by(drug) risktable}
                   {cmd:legend(ring(0) position(2) rows(2))}

{pstd}在一个图中绘制两个 {cmd:drug} 类别的生存函数，包括图下方的风险表，并使用指定的行标题和风险表行的顺序{p_end}
{phang2}{cmd:. sts graph, by(drug)}
                    {cmd:risktable(, order(1 "Placebo" 2 "Test drug"))}

{pstd}与上述相同，但在风险表中将行标题左对齐{p_end}
{phang2}{cmd:. sts graph, by(drug)}
                     {cmd:risktable(, order(1 "Placebo" 2 "Test drug")}
                     {cmd:rowtitle(, justification(left)))}

{pstd}与上述相同，但使表标题与行标题对齐{p_end}
{phang2}{cmd:. sts graph, by(drug)}
                     {cmd:risktable(, order(1 "Placebo" 2 "Test drug")}
                     {cmd:rowtitle(, justification(left))}
		     {cmd:title(, at(rowtitle)))}{p_end}


{marker video}{...}
{title:视频示例}

{phang}
{browse "https://www.youtube.com/watch?v=3MoWoZQCrUI&list=UUVk4G4nEtBS4tLOyHqustDA":如何绘制生存曲线}
{p_end}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <sts_graph.sthlp>}