{smcl}
{* *! version 1.1.11  16apr2019}{...}
{vieweralsosee "[G-3] title_options" "mansection G-3 title_options"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[G-3] legend_options" "help legend_options_zh"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[G-3] textbox_options" "help textbox_options_zh"}{...}
{vieweralsosee "[G-4] Schemes intro" "help schemes_zh"}{...}
{vieweralsosee "[G-4] text" "help text"}{...}
{viewerjumpto "Syntax" "title_options_zh##syntax"}{...}
{viewerjumpto "Description" "title_options_zh##description"}{...}
{viewerjumpto "Links to PDF documentation" "title_options_zh##linkspdf"}{...}
{viewerjumpto "Options" "title_options_zh##options"}{...}
{viewerjumpto "Suboptions" "title_options_zh##suboptions"}{...}
{viewerjumpto "Remarks" "title_options_zh##remarks"}
{help title_options:English Version}
{hline}{...}
{p2colset 1 24 26 2}{...}
{p2col:{bf:[G-3]} {it:title_options} {hline 2}}指定标题的选项{p_end}
{p2col:}({mansection G-3 title_options:查看完整的 PDF 手册条目}){p_end}
{p2colreset}{...}


{marker syntax}{...}
{title:语法}

{synoptset 35}{...}
{p2col:{it:title_options}}描述{p_end}
{p2line}
{p2col:{cmdab:ti:tle:(}{it:tinfo}{cmd:)}}整体标题{p_end}
{p2col:{cmdab:sub:title:(}{it:tinfo}{cmd:)}}标题的副标题{p_end}
{p2col:{cmd:note(}{it:tinfo}{cmd:)}}关于图形的说明{p_end}
{p2col:{cmdab:cap:tion:(}{it:tinfo}{cmd:)}}图形的解释{p_end}

{p2col:{cmdab:t1:title:(}{it:tinfo}{cmd:)}{space 2}{cmdab:t2:title:(}{it:tinfo}{cmd:)}}很少使用{p_end}
{p2col:{cmdab:b1:title:(}{it:tinfo}{cmd:)}{space 2}{cmdab:b2:title:(}{it:tinfo}{cmd:)}}很少使用{p_end}
{p2col:{cmdab:l1:title:(}{it:tinfo}{cmd:)}{space 2}{cmdab:l2:title:(}{it:tinfo}{cmd:)}}竖直文本{p_end}
{p2col:{cmdab:r1:title:(}{it:tinfo}{cmd:)}{space 2}{cmdab:r2:title:(}{it:tinfo}{cmd:)}}竖直文本{p_end}
{p2line}
{p 4 6 2}
上面的选项是 {it:merged-explicit}；请参见 {help repeated options}。
{break}
{c -(}{cmd:t}|{cmd:b}|{cmd:l}|{cmd:r}{c )-}{c -(}{cmd:1}|{cmd:2}{c )-}{cmd:title()} 仅在 {cmd:graph} {cmd:twoway} 中允许使用。

{marker tinfo}{...}
{pstd}
其中 {it:tinfo} 是

{p 8 16 2}
{cmd:"}{it:string}{cmd:"}
[{cmd:"}{it:string}{cmd:"} [...]]
[{cmd:,}
{it:suboptions}]

{pmore}
{it:string} 可以包含 Unicode 字符和 SMCL 标签以呈现数学符号、斜体等；请参见 {manhelpi graph_text G-4:text}。

{p2col:{it:suboptions}}描述{p_end}
{p2line}
{p2col:{cmd:prefix} 和 {cmd:suffix}}添加到标题文本{p_end}
{p2col:{cmdab:pos:ition:(}{it:{help clockposstyle_zh}}{cmd:)}}标题的位置 -- 边{p_end}
{p2col:{cmd:ring(}{it:{help ringposstyle_zh}}{cmd:)}}标题的位置 -- 距离{p_end}
{p2col:{cmd:span}}"中心"标题{p_end}
{p2col:{it:{help textbox_options_zh}}}标题的呈现{p_end}
{p2line}
{p2colreset}{...}
{p 4 6 2}
选项 {cmd:position()} 不允许与 {c -(}{cmd:t}|{cmd:b}|{cmd:l}|{cmd:r}{c )-}{c -(}{cmd:1}|{cmd:2}{c )-}{cmd:title()} 一起使用。

{pstd}
示例包括

	{cmd:title("我的图")}
	{cmd:note(`"包括 "高" 和 "低" 定价项目"')}

	{cmd:title("第一行" "第二行")}
	{cmd:title("第三行", suffix)}
	{cmd:title("第四行" "第五行", suffix)}

{pstd}
{it:ringposstyle} 的定义和
标题的默认位置是

	  l2  l1                          r1  r2     {c |}
	   1  2  0 0 0 0 0 0 0 0 0 0 0 0   1  2      {c |}  {it:ringposstyle}
	{hline 45}{c +}{hline 20}
	{c TLC}{hline 39}{c TRC}    {c |}
	{c |}                标题                  {c |}    {c |}    7     标题
	{c |}               副标题                {c |}    {c |}    6     副标题
	{c |}               t2标题                 {c |}    {c |}    2     t2
	{c |}               t1标题                 {c |}    {c |}    1     t1
	{c |}       {c TLC}{hline 23}{c TRC}       {c |}    {c |}
	{c |}  l  l {c |}                       {c |} r  r  {c |}    {c |}    0
	{c |}  2  1 {c |}                       {c |} 1  2  {c |}    {c |}    0
	{c |}  t  t {c |}                       {c |} t  t  {c |}    {c |}    0
	{c |}  i  i {c |}      {it:绘图区域}      {c |} i  i  {c |}    {c |}    0
	{c |}  t  t {c |}                       {c |} t  t  {c |}    {c |}    0
	{c |}  l  l {c |}                       {c |} l  l  {c |}    {c |}    0
	{c |}  e  e {c |}                       {c |} e  e  {c |}    {c |}    0
	{c |}       {c BLC}{hline 23}{c BRC}       {c |}    {c |}
	{c |}               b1标题                 {c |}    {c |}    1     b1
	{c |}               b2标题                 {c |}    {c |}    2     b2
	{c |}               图例                  {c |}    {c |}    3     图例
	{c |}       说明                            {c |}    {c |}    4     说明
	{c |}       标题                           {c |}    {c |}    5     标题
	{c BLC}{hline 39}{c BRC}
	   标题的位置由 {help schemes_zh:scheme} 控制


{marker description}{...}
{title:描述}

{pstd}
标题是图形周围的装饰，用于解释图形的目的。


{marker linkspdf}{...}
{title:PDF 文档链接}

        {mansection G-3 title_optionsQuickstart:快速开始}

        {mansection G-3 title_optionsRemarksandexamples:备注和示例}

{pstd}
上述部分不包含在此帮助文件中。


{marker options}{...}
{title:选项}

{phang}
{cmd:title(}{it:{help title_options##tinfo:tinfo}}{cmd:)}
    指定图形的整体标题。
    标题通常出现在图形的顶部居中位置。
    在指定标题时，通常希望使用 {cmd:span} 子选项，如：

{phang2}
	{cmd:. graph} ...{cmd:,} ...{cmd:title("预期寿命", span)}

{pmore}
    请参见 {it:{help title_options##remarks5:跨越}} 下的 {it:备注}。

{phang}
{cmd:subtitle(}{it:{help title_options##tinfo:tinfo}}{cmd:)}
    指定图形的副标题。副标题出现在标题附近（通常就在其下方），并以稍小的字体显示。
    {cmd:subtitle()} 与 {cmd:title()} 一起使用，当 {cmd:title()} 看起来太大时，{cmd:subtitle()} 单独使用。
    例如，您可以输入：

{phang2}
	    {cmd:. graph} ...{cmd:,} ... {cmd:title("预期寿命") subtitle("1900-1999")}
{p_end}
	或
{phang2}
	    {cmd:. graph} ...{cmd:,} ... {cmd:subtitle("预期寿命" "1900-1999")}

{pmore}
    如果 {cmd:subtitle()} 与 {cmd:title()} 一起使用，并且您在 {cmd:title()} 中指定了子选项 {cmd:span}，请记得在 {cmd:subtitle()} 中也指定 {cmd:span}。

{phang}
{cmd:note(}{it:{help title_options##tinfo:tinfo}}{cmd:)}
    指定与图形一起显示的说明。说明通常以小字体显示，位于图形的左下角。
    默认情况下，说明的左边缘将与绘图区域的左边缘对齐。如果您希望说明完全左移，请指定子选项 {cmd:span}；请参见 {it:{help title_options##remarks5:跨越}} 下的 {it:备注}。

{phang}
{cmd:caption(}{it:{help title_options##tinfo:tinfo}}{cmd:)}
    指定伴随图形的解释。标题通常在图形底部显示，位于 {cmd:note()} 之下，
    字体比 {cmd:note()} 使用的字体略大。
    默认情况下，标题的左边缘将与绘图区域的左边缘对齐。如果您希望说明完全左移，请指定子选项 {cmd:span}；请参见 {it:{help title_options##remarks5:跨越}} 下的 {it:备注}。

{phang}
{c -(}{cmd:t}|{cmd:b}|{cmd:l}|{cmd:r}{c )-}{c -(}{cmd:1}|{cmd:2}{c )-}{cmd:title()}
     很少指定。一般来说，更好地指定 {it:axis_title_options} {cmd:ytitle()} 或 {cmd:xtitle()}；
     请参见 {manhelpi axis_title_options G-3}。
     {c -(}{cmd:t}|{cmd:b}|{cmd:l}|{cmd:r}{c )-}{c -(}{cmd:1}|{cmd:2}{c )-}{cmd:title()}
     选项是为了与以前版本的 Stata 保持向后兼容性。


{marker suboptions}{...}
{title:子选项}

{phang}
{cmd:prefix} 和 {cmd:suffix} 指定指定文本作为单独的行添加到任何现有标题的指定类型之前或之后。请参见
{it:{help title_options##remarks2:重复选项的解释}}
下面。

{phang}
{cmd:position(}{it:clockposstyle}{cmd:)}
和
{cmd:ring(}{it:ringposstyle}{cmd:)}
    覆盖标题的默认位置；请参见 
    {manhelpi clockposstyle G-4} 和 {manhelpi ringposstyle G-4}。
    {cmd:position()} 指定方向 {it:[sic]}，根据12小时制时钟上的小时，
    而 {cmd:ring()} 指定标题要出现离绘图区域的距离。

{pmore}
    {cmd:ring(0)} 被定义为位于绘图区域内部，适用于您直接将标题放置在绘图顶部的特殊情况。
    {cmd:ring(}{it:k}{cmd:)}, {it:k}>0, 指定绘图区域之外的位置；{cmd:ring()}值越大，离绘图区域越远。{cmd:ring()}值可以是整数或非整数，并
    被视为序数。

{pmore}
    {cmd:position(12)} 使标题直接位于绘图区域正上方（假设 {cmd:ring()}>0），{cmd:position(3)} 使标题直接位于绘图区域右侧，依此类推。

{phang}
{cmd:span} 指定标题位于跨越图形的整个宽度（或高度）的区域，而不是跨越绘图区域的区域。
    请参见 {it:{help title_options##remarks5:跨越}} 下的 {it:备注}。

{phang}
{it:textbox_options} 是允许与文本框一起使用的任何选项。
    重要选项包括

{pmore}
    {cmd:justification(}{cmd:left}|{cmd:center}|{cmd:right)}:
    决定文本如何居中；

{pmore}
    {cmd:orientation(horizontal}|{cmd:vertical)}:  决定文本框内的文字是从左到右读还是从下到上（还有其他选择）；

{pmore}
    {cmd:color()}:  决定文本的颜色和不透明度；

{pmore}
    {cmd:box}:  决定文本周围是否绘制一个框；

{pmore}
{cmd:width(}{it:size}{cmd:)}:
    覆盖文本框计算出的宽度，适用于文本流出框外或文本与框右边界之间的间距过大的情况；请参见
    {it:{help textbox_options##remarks6:宽度和高度}} 下的 
    {manhelpi textbox_options G-3}。

{pmore}
    请参见 {manhelpi textbox_options G-3} 以了解上述每个选项的描述。


{marker remarks}{...}
{title:备注}

{pstd}
标题是我们将用于标题、副标题、键等的通用术语，
标题选项是我们将用于 {cmd:title()}、 {cmd:subtitle()}、 {cmd:note()}、 {cmd:caption()} 和 
{c -(}{cmd:t}|{cmd:b}|{cmd:l}|{cmd:r}{c )-}{c -(}{cmd:1}|{cmd:2}{c )-}{cmd:title()} 的通用术语。
标题和标题选项的工作方式都是相同的。
在我们的示例中，我们通常会使用 {cmd:title()} 选项，但我们也可以同样使用任何其他标题选项。

{pstd}
备注如下列标题呈现：

	{help title_options##remarks1:多行标题}
	{help title_options##remarks2:重复选项的解释}
	{help title_options##remarks3:标题的位置}
	{help title_options##remarks4:标题的对齐}
	{help title_options##remarks5:跨越}
	{help title_options##remarks6:使用文本框选项 box 和 bexpand}


{marker remarks1}{...}
{title:多行标题}

{pstd}
标题可以有多行：

	{cmd:. graph} ...{cmd:, title("我的标题")} ...

{pstd}
指定一行标题，

{phang2}
	{cmd:. graph} ...{cmd:, title("我的标题" "第二行")} ...

{pstd}
指定双行标题，和

{phang2}
	{cmd:. graph} ...{cmd:, title("我的标题" "第二行" "第三行")} ...

{pstd}
指定三行标题。您可以在标题中有任意多行。

{marker remarks2}{...}
{title:重复选项的解释}

{pstd}
每个标题选项都可以在相同的命令中指定超过一次。
例如，

{phang2}
	{cmd:. graph} ...{cmd:, title("第一")} ... {cmd:title("第二")} ...

{pstd}
这不会生成双行标题。而是当您指定多个标题选项时，最右侧的选项是有效的，早期的选项被忽略。上面命令中的标题将是 "第二"。

{pstd}
也就是说，早期的选项将被忽略，除非您指定 {cmd:prefix} 或 {cmd:suffix}。在

{phang2}
	. {cmd:graph} ...{cmd:, title("第一")} ... {cmd:title("第二", suffix)} ...

{pstd}
标题将由两行组成，第一行为 "第一"，第二行为 "第二"。在

{phang2}
	. {cmd:graph} ...{cmd:, title("第一")} ... {cmd:title("第二", prefix)} ...

{pstd}
第一行将是 "第二"，第二行将是 "第一"。

{pstd}
反复指定标题选项可能看起来很愚蠢，但实际上比您想象的要容易。考虑命令

{phang2}
{cmd}. twoway
(sc y1 x1, title("x1 vs. y1"))
(sc y2 x2, title("x2 vs. y2")){txt}

{pstd}
{cmd:title()} 是 {cmd:twoway} 的一个选项，而不是 {cmd:scatter}，图形只有一个 {cmd:title()}（尽管它可能由多行组成）。因此，上述可能不是用户的意图。如果用户输入

{phang2}
{cmd}. twoway
(sc y1 x1)
(sc y2 x2),
title("x1 vs. y1") title("x2 vs. y2"){txt}

{pstd}
他会看到自己的错误。不过，在 {cmd:scatter} 中放置 {cmd:title()} 选项是可以的； {cmd:twoway} 知道如何将它们提取出来。
尽管如此，仅最后一个会被尊重（因为既没有指定 {cmd:prefix} 也没有 {cmd:suffix}），因此该图形的标题将是 "x2 vs. y2"。

{pstd}
当您使用以 {cmd:graph} 为基础的绘图命令时，多标题选项会很有用。
例如，命令 {cmd:sts} {cmd:graph} （请参见 {manhelp sts ST}）将绘制 Kaplan-Meier 生存函数。当您输入

	{cmd:. sts graph}

{pstd}
使用内存中适当的数据，将出现一个图形，而该图形将具有 {cmd:title()}。然而，如果您输入

{phang2}
	{cmd:. sts graph, title("治疗 1 的生存函数")}

{pstd}
您的标题将覆盖 {cmd:sts} {cmd:graph} 的默认标题。在 {cmd:sts} {cmd:graph} 的代码中，两个 {cmd:title()} 选项都出现在 {cmd:graph} 命令上。第一个是默认的，第二个是您指定的。理解这一编程细节是很重要的，因为根据这种暗示，如果您输入

{phang2}
	{cmd:. sts graph, title("治疗 1", suffix)}

{pstd}
您的标题将附加到默认标题。大多数命令都是这样工作的，因此如果您使用某个命令并生成不喜欢的标题，请指定 {cmd:title()}（或 {cmd:subtitle()}，...）来覆盖，或者指定 {cmd:title(}...{cmd:,} {cmd:suffix)}（或 {cmd:subtitle(}...{cmd:,} {cmd:suffix)}，...）来附加到它。

	{hline}
{pmore}
{it:技术说明：}
在最右侧选项之前的标题选项未被完全忽略。它们的选项被合并并得到尊重，因此如果标题被移动或颜色被早期更改，标题将继续被移动或颜色被更改。您可以随时指定选项以将其更改回来。
{p_end}
	{hline}


{marker remarks3}{...}
{title:标题的位置}

{pstd}
标题出现位置由您选择的方案决定；请参见 
{manhelp schemes G-4:方案简介}。选项
{cmd:position(}{it:clockposstyle}{cmd:)} 和 {cmd:ring(}{it:ringposstyle}{cmd:)} 会覆盖该位置，并允许您将标题放在您想要的位置。

{pstd}
{cmd:position()} 指定方向 {it:(sic)}，根据12小时制时钟的小时数，而 {cmd:ring()} 指定标题要出现离绘图区域的距离。

		时钟 {cmd:position()} 的解释
		    {cmd:ring(}{it:k}{cmd:)}, {it:k}>0, 和 {cmd:ring(0)}
	    {c TLC}{hline 39}{c TRC}
	    {c |}        11         12        1         {c |}
	    {c |}                                       {c |}
	    {c |}       {c TLC}{hline 23}{c TRC}       {c |}
	    {c |}10     {c |}10 或 11   12   1 或 2 {c |}     2 {c |}
	    {c |}       {c |}                       {c |}       {c |}
	    {c |}       {c |}                       {c |}       {c |}
	    {c |} 9     {c |} 9          0        3 {c |}     3 {c |}
	    {c |}       {c |}                       {c |}       {c |}
	    {c |}       {c |}                       {c |}       {c |}
	    {c |} 8     {c |} 7 或 8     6   4 或 5 {c |}     4 {c |}
	    {c |}       {c BLC}{hline 23}{c BRC}       {c |}
	    {c |}                                       {c |}
	    {c |}         7         6         5         {c |}
	    {c BLC}{hline 39}{c BRC}

	    {cmd:ring()} 的解释
	    {hline 25}{c TT}{hline 25}
	    绘图区域        0     {c |} {cmd:ring(0)} = 绘图区域
	    {c -(}{cmd:t}|{cmd:b}|{cmd:l}|{cmd:r}{c )-}{cmd:1标题()}  1     {c |}
	    {c -(}{cmd:t}|{cmd:b}|{cmd:l}|{cmd:r}{c )-}{cmd:2标题()}  2     {c |} {cmd:ring(}{it:k}{cmd:)}, {it:k}>0, 在绘图区域之外
	    {cmd:legend()}           3     {c |}
	    {cmd:note()}             4     {c |}
	    {cmd:caption()}          5     {c |} {cmd:ring()} 数值越大，离
	    {cmd:subtitle()}         6     {c |} 绘图区域越远
	    {cmd:title()}            7     {c |}
	    {hline 25}{c BT}{hline 25}

{pstd}
    {cmd:position()} 有两个解释，一个是 {cmd:ring(0)}，另一个是 {cmd:ring(}{it:k}{cmd:)}, {it:k}>0。{cmd:ring(0)} 适用于直接在绘图顶部放置标题的特殊情况。
    把那个情况放在一边；标题通常出现在绘图区域之外。

{pstd}
    标题直接位于绘图区域上方是在 {cmd:position(12)}，位于右侧是在 {cmd:position(3)}，依此类推。如果您将标题放在 {cmd:position(1)}，它将位于绘图区域的右上方。

{pstd}
    现在考虑两个标题 -- 即 {cmd:title()} 和
    {cmd:subtitle()} -- 都位于 {cmd:position(12)}。哪个应该先出现？这由它们各自的 {cmd:ring()} 值决定。{cmd:ring()}
    指定标题距离绘图区域的距离。具有较大 {cmd:ring()} 值的标题被放置得更远。{cmd:ring()} 值可以是整数或非整数。

{pstd}
    例如，{cmd:legend()}（请参见 {manhelpi legend_options G-3}）
    离绘图区域比 {cmd:caption()} 更近，因为默认情况下，{cmd:legend()} 的 {cmd:ring()}
    值为 4，而 {cmd:caption()} 的 {cmd:ring()} 值为 5。因为两者都出现在 {cmd:position(7)}，所以都出现在绘图区域下方，并且因为 4<5，{cmd:legend()} 在 {cmd:caption()} 之上。
    这些默认假设您正在使用默认方案。

{pstd}
    如果您希望将图例放在标题之下，您可以指定：

{phang3}
	    {cmd:. graph} ...{cmd:, legend(}... {cmd:ring(5.5)) caption("我的标题")}

{pstd}
或

{phang3}
	    {cmd:. graph} ...{cmd:, legend(}...{cmd:) caption("我的标题", ring(3.5))}

{pstd}
    绘图区域本身定义为 {cmd:ring(0)}，如果您指定这个，标题将出现在绘图区域内部，正好在所绘制的内容上！您可以使用 {cmd:position()}
    指定在绘图区域内部希望标题的位置，而标题将位于绘图区域的相应边缘。在 {cmd:ring(0)} 中，
    时钟位置 1 和 2，4 和 5，7 和 8，以及 10 和 11 被视为相同。此外，{cmd:position(0)} 表示绘图区域的中心。

{pstd}
    在绘图区域内 -- 在 {cmd:ring(0)} 内 -- 给定 {cmd:position()}，您还可以通过指定标题的 {cmd:margin()} {it:textbox_option} 来进一步上下或左右移动标题。例如，您可以指定

{phang2}
	{cmd:. graph} ...{cmd:, caption(}...{cmd:, ring(0) pos(7))} ...

{pstd}
    然后发现说明需要稍微移动到上方和右侧，因此更改 {cmd:caption()} 选项为

{phang2}
	{cmd:. graph} ...{cmd:, caption(}...{cmd:, ring(0) pos(7) margin(medium))} ...

{pstd}
    有关 {cmd:margin()} 选项的更多信息，请参见 {manhelpi textbox_options G-3} 和
    {manhelpi marginstyle G-4}。


{marker remarks4}{...}
{title:标题的对齐}

{pstd}
文本在文本框中的位置应如何放置：左对齐、居中还是右对齐？已设置的默认值根据标题类型而异：

	标题类型              默认对齐
	{hline 45}
	{cmd:title()}                 居中
	{cmd:subtitle()}              居中
	{c -(}{cmd:t}|{cmd:b}|{cmd:l}|{cmd:r}{c )-}{c -(}{cmd:1}|{cmd:2}{c )-}{cmd:title()}   居中
	{cmd:note()}                  左对齐
	{cmd:caption()}               左对齐
	{hline 45}

{pstd}
实际上，标题的对齐方式默认由方案决定，在上面的例子中，我们假设您正在使用默认方案。

{pstd}
您可以使用 {it:textbox_option} {cmd:justification(}{cmd:left}|{cmd:center}|{cmd:right)} 来更改该对齐方式。
例如，

{phang2}
	{cmd:. graph} ...{cmd:, title("我的标题", justification(left))} ...

{pstd}
有关更多信息，请参见 {manhelpi textbox_options G-3}。


{marker remarks5}{...}
{title:跨越}

{pstd}
选项 {cmd:span} 指定标题应放置在跨越图形的整个宽度（或高度）的区域中，而不是跨越绘图区域的区域。也就是，

	    {c TLC}{hline 39}{c TRC}             {c -}
	    {c |}                                       {c |}             {c |}
	    {c |}<--------------- 跨越 ---------------->{c |}             {c |}
	    {c |}                                       {c |}             {c |}
	    {c |}       |<------ 默认 ------>|       {c |}             {c |}
	    {c |}       {c TLC}{hline 23}{c TRC}       {c |}    {c -}        {c |}
	    {c |}       {c |}                       {c |}       {c |}    {c |}
	    {c |}       {c |}                       {c |}       {c |}      跨越
	    {c |}       {c |}      {it:绘图}             {c |}       {c |} 默认     {c |}
	    {c |}       {c |}          {it:区域}       {c |}       {c |}    {c |}        {c |}
	    {c |}       {c |}                       {c |}       {c |}    {c |}        {c |}
	    {c |}       {c |}                       {c |}       {c |}        {c |}
	    {c |}       {c BLC}{hline 23}{c BRC}       {c |}    {c -}        {c |}
	    {c |}                                       {c |}             {c |}
	    {c BLC}{hline 39}{c BRC}             {c -}

{pstd}
例如，{cmd:title()} 通常位于图形的顶部居中。它应该位于绘图区域上方（默认）还是位于整个可用区域的边界之间（指定 {cmd:title(}...{cmd:,} {cmd:span)}）？ {cmd:note()} 通常呈现为左对齐，位于绘图区域下方。它是左对齐与绘图区域边界对齐（默认），还是左对齐与整个可用区域对齐（指定 {cmd:note(}...{cmd:,} {cmd:span)}）？

{pstd}
不要将 {cmd:span} 与 {it:textbox} 选项 {cmd:justification(}{cmd:left}|{cmd:center}|{cmd:right)} 混淆，后者将在跨越的任何区域内将文本左对齐、居中或右对齐；请参见上述 {hi:标题的对齐}。


{marker remarks6}{...}
{title:使用文本框选项 box 和 bexpand}

{pstd}
{it:textbox_options} {cmd:box} 和 {cmd:bexpand} -- 参见 
{manhelpi textbox_options G-3} -- 可以与标题有效结合使用。看看三个图形：

{phang2}
	{cmd:. scatter mpg weight, title("里程与重量")}
{p_end}
	  {it:({stata `"gr_example auto: scatter mpg weight, title("里程与重量")"':click to run})}
{* graph ttlops1}{...}

{phang2}
	{cmd:. scatter mpg weight, title("里程与重量", box)}
{p_end}
	  {it:({stata `"gr_example auto: scatter mpg weight, title("里程与重量", box)"':click to run})}
{* graph ttlops2}{...}

{phang2}
	{cmd:. scatter mpg weight, title("里程与重量", box bexpand)}
{p_end}
	  {it:({stata `"gr_example auto: scatter mpg weight, title("里程与重量", box bexpand)"':click to run})}
{* graph ttlops3}{...}

{pstd}
我们希望引起您对标题处理的关注，其将是

			里程与重量

		      {c TLC}{hline 20}{c TRC}
		      {c |} 里程与重量 {c |}
		      {c BLC}{hline 20}{c BRC}

	{c TLC}{hline 48}{c TRC}
	{c |}               里程与重量              {c |}
	{c BLC}{hline 48}{c BRC}

{pstd}
如果没有选项，标题出现如常。

{pstd}
文本框选项 {cmd:box} 在标题周围绘制了一个框。

{pstd}
文本框选项 {cmd:bexpand} 将框扩展到与绘图区域对齐，并在扩展的标题周围绘制了一个框。

{pstd}
在第二和第三个示例中，您还会注意到图形中文本框的背景被阴影处理。这是因为大多数方案设置了文本框选项 {cmd:bfcolor()}，但是仅当文本框被 {cmd:box} 包围时，{cmd:bfcolor()} 才会生效。
{p_end}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <title_options.sthlp>}