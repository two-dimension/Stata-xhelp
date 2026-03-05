{smcl}
{* *! version 1.1.13  16apr2019}{...}
{vieweralsosee "[G-3] textbox_options" "mansection G-3 textbox_options"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[G-4] alignmentstyle" "help alignmentstyle_zh"}{...}
{vieweralsosee "[G-4] colorstyle" "help colorstyle_zh"}{...}
{vieweralsosee "[G-4] compassdirstyle" "help compassdirstyle_zh"}{...}
{vieweralsosee "[G-4] justificationstyle" "help justificationstyle_zh"}{...}
{vieweralsosee "[G-4] linealignmentstyle" "help linealignmentstyle_zh"}{...}
{vieweralsosee "[G-4] linepatternstyle" "help linepatternstyle_zh"}{...}
{vieweralsosee "[G-4] linewidthstyle" "help linewidthstyle_zh"}{...}
{vieweralsosee "[G-4] marginstyle" "help marginstyle_zh"}{...}
{vieweralsosee "[G-4] orientationstyle" "help orientationstyle_zh"}{...}
{vieweralsosee "[G-4] size" "help size_zh"}{...}
{vieweralsosee "[G-4] text" "help text"}{...}
{vieweralsosee "[G-4] textboxstyle" "help textboxstyle_zh"}{...}
{vieweralsosee "[G-4] textsizestyle" "help textsizestyle_zh"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[G-3] title_options" "help title_options_zh"}{...}
{viewerjumpto "Syntax" "textbox_options_zh##syntax"}{...}
{viewerjumpto "Description" "textbox_options_zh##description"}{...}
{viewerjumpto "Links to PDF documentation" "textbox_options_zh##linkspdf"}{...}
{viewerjumpto "Options" "textbox_options_zh##options"}{...}
{viewerjumpto "Remarks" "textbox_options_zh##remarks"}
{help textbox_options:English Version}
{hline}{...}
{p2colset 1 26 28 2}{...}
{p2col:{bf:[G-3]} {it:textbox_options} {hline 2}}文本框和概念定义的选项{p_end}
{p2col:}({mansection G-3 textbox_options:查看完整的PDF手册条目}){p_end}
{p2colreset}{...}


{marker syntax}{...}
{title:语法}

{pstd}
文本框包含一行或多行文本。
文本框的外观由以下选项控制：

{synoptset 35}{...}
{p2col:{it:textbox_options}}描述{p_end}
{p2line}
{p2col:{cmdab:tsty:le:(}{it:{help textboxstyle_zh}}{cmd:)}}整体样式{p_end}

{p2col:{cmdab:orient:ation:(}{it:{help orientationstyle_zh}}{cmd:)}}垂直或水平{p_end}
{p2col:{cmdab:si:ze:(}{it:{help textsizestyle_zh}}{cmd:)}}文本大小{p_end}
{p2col:{cmdab:c:olor:(}{it:{help colorstyle_zh}}{cmd:)}}文本的颜色和不透明度{p_end}
{p2col:{cmdab:j:ustification:(}{it:{help justificationstyle_zh}}{cmd:)}}文本左对齐、居中或右对齐{p_end}
{p2col:{cmdab:al:ignment:(}{it:{help alignmentstyle_zh}}{cmd:)}}文本顶部、中部、底部基线{p_end}
{p2col:{cmdab:m:argin:(}{it:{help marginstyle_zh}}{cmd:)}}文本到边框的边距{p_end}
{p2col:{cmd:linegap(}{it:{help size_zh}}{cmd:)}}行间距{p_end}
{p2col:{cmd:width(}{it:{help size_zh}}{cmd:)}}文本框的宽度覆盖{p_end}
{p2col:{cmd:height(}{it:{help size_zh}}{cmd:)}}文本框的高度覆盖{p_end}

{p2col:{cmd:box} 或 {cmd:nobox}}是否绘制边框{p_end}
{p2col:{cmdab:bc:olor:(}{it:{help colorstyle_zh}}{cmd:)}}背景和边框的颜色和不透明度{p_end}
{p2col:{cmdab:fc:olor:(}{it:{help colorstyle_zh}}{cmd:)}}背景的颜色和不透明度{p_end}
{p2col:{cmdab:ls:tyle:(}{it:{help linestyle_zh}}{cmd:)}}边框的整体样式{p_end}
{p2col:{cmdab:lp:attern:(}{it:{help linepatternstyle_zh}}{cmd:)}}边框的线条样式{p_end}
{p2col:{cmdab:lw:idth:(}{it:{help linewidthstyle_zh}}{cmd:)}}边框的厚度{p_end}
{p2col:{cmdab:lc:olor:(}{it:{help colorstyle_zh}}{cmd:)}}边框的颜色和不透明度{p_end}
{p2col : {cmdab:la:lign:(}{it:{help linealignmentstyle_zh}}{cmd:)}}边框对齐方式（内侧、外侧、中心）{p_end}

{p2col:{cmdab:bm:argin:(}{it:{help marginstyle_zh}}{cmd:)}}边框向外的边距{p_end}
{p2col:{cmdab:bex:pand}}文本的方向扩展边框{p_end}

{p2col:{cmdab:place:ment:(}{it:{help compassdirstyle_zh}}{cmd:)}}文本框的位置覆盖{p_end}
{p2line}
{p2colreset}{...}

{pstd}
上述选项总是出现在其他选项内部。例如，{cmd:title()} 的语法（参见 {manhelpi title_options G-3}）是

{phang2}
{cmd:title("}{it:string}{cmd:"}
[{cmd:"}{it:string}{cmd:"} [...]]
[{cmd:,}
{it:title_options}
{it:textbox_options}]{cmd:)}

{pstd}
因此，上述任何选项都可以出现在 {cmd:title()} 选项内部：

{phang2}
{cmd:. graph}
...
{cmd:,}
...
{cmd:title("我的标题", color(green) box)}
...


{marker description}{...}
{title:描述}

{pstd}
文本框包含一行或多行文本。上述文本框选项指定文本和文本框的外观。


{marker linkspdf}{...}
{title:链接到PDF文档}

        {mansection G-3 textbox_optionsRemarksandexamples:备注和示例}

{pstd}
上述章节未包含在此帮助文件中。


{marker options}{...}
{title:选项}

{phang}
{cmd:tstyle(}{it:textboxstyle}{cmd:)}
    指定文本框的整体样式。可以将文本框视为一组特性，除了文本，还包括字体大小、颜色、是否围绕框绘制线条等。
    选择的 {it:textboxstyle} 指定所有这些内容，而通过指定其他操作所做的更改就是从这里生效的。

{pmore}
    默认值取决于文本的整体上下文（例如，由 {cmd:title()}、{cmd:subtitle()} 等导致），而这些上下文则由主题指定（参见 {manhelp schemes G-4:主题介绍}）。
    也就是说，几乎无法确定上下文中的默认样式的名称。

{pmore}
    选项 {cmd:tstyle()} 很少被指定。通常，您只是让整体样式保持原样，并指定其他文本框选项来修改它。但是，请不要忽视寻找一个更好的整体样式的想法，以更好地符合您的愿望。

{pmore}
    请参见 {manhelpi textboxstyle G-4}。

{phang}
{cmd:orientation(}{it:orientationstyle}{cmd:)}
    指定文本和框的方向是水平还是垂直（文本从底部到顶部或从顶部到底部阅读）。参见 {manhelpi orientationstyle G-4}。

{phang}
{cmd:size(}{it:textsizestyle}{cmd:)}
    指定文本框内出现的文本的大小。参见 {manhelpi textsizestyle G-4}。

{phang}
{cmd:color(}{it:colorstyle}{cmd:)}
    指定文本框内出现的文本的颜色和不透明度。参见 {manhelpi colorstyle G-4}。

{phang}
{cmd:justification(}{it:justificationstyle}{cmd:)}
    指定文本在框内“水平”对齐的方式。选择包括 {cmd:left}、{cmd:right} 和 {cmd:center}。
    可以将文本框视为水平，即使在指定此选项时它是垂直的。参见 {manhelpi justificationstyle G-4}。

{phang}
{cmd:alignment(}{it:alignmentstyle}{cmd:)}
    指定文本在框内“垂直”对齐的方式。选择包括 {cmd:baseline}、{cmd:middle} 和 {cmd:top}。
    可以将文本框视为水平，即使在指定此选项时它是垂直的。参见 {manhelpi alignmentstyle G-4}。

{phang}
{cmd:margin(}{it:marginstyle}{cmd:)}
    指定文本周围的边距（文本到框边的距离）。出现在框中的文本，加上 {cmd:margin()}，决定了框的整体大小。
    请参见 {manhelpi marginstyle G-4}。

{pmore}
    在处理旋转文本框时，指定了 {cmd:orientation(vertical)} 或 {cmd:orientation(rvertical)} 的文本框——左右、上下的边距在旋转前被参照。

{phang}
{cmd:linegap(}{it:size}{cmd:)}
    指定行与行之间的距离。
    请参见 {manhelpi size G-4} 以获取参数选项。

{phang}
{cmd:width(}{it:size}{cmd:)}
和
{cmd:height(}{it:size}{cmd:)}
    覆盖Stata通常基于其内容确定文本框的宽度和高度。
    请参见 {it:{help textbox_options##remarks6:宽度和高度}} 下面的 {it:备注}。请参见 {manhelpi size G-4} 以获取参数选项。

{phang}
{cmd:box} 和 {cmd:nobox}
    指定是否要绘制文本框边框。默认值由 {cmd:tstyle()} 决定，而 {cmd:tstyle()} 又由上下文等决定。通常，默认值是不绘制框，因此指定 {cmd:box} 选项以绘制边框。如果默认情况下显示边框，则 {cmd:nobox} 是抑制边框描边的选项。不论默认如何，您都可以指定 {cmd:box} 或 {cmd:nobox}。

{phang}
{cmd:bcolor(}{it:colorstyle}{cmd:)}
    指定文本框背景和轮廓边框的颜色和不透明度。此选项通常不被指定，因为它会导致边框在文本框的背景中消失；请参见下面的选项 {cmd:fcolor()} 和 {cmd:lcolor()} 以获得替代方案。
    只有在指定 {cmd:box} 的情况下，颜色才重要；否则，{cmd:bcolor()} 会被忽略。
    请参见 {manhelpi colorstyle G-4} 以获取颜色选择的列表。

{phang}
{cmd:fcolor(}{it:colorstyle}{cmd:)}
    指定文本框背景的颜色和不透明度。
    只有在指定 {cmd:box} 的情况下，文本框的背景才会用 {cmd:fcolor()} 填充；否则，{cmd:fcolor()} 会被忽略。
    请参见 {manhelpi colorstyle G-4} 以获取颜色选择的列表。

{phang}
{cmd:lstyle(}{it:linestyle}{cmd:)}
    指定用于勾勒边框的线条的整体样式。样式包括线条的模式（实线、虚线等）、厚度和颜色。

{pmore}
    您不必仅仅因为要更改线条的外观而指定 {cmd:lstyle()}。选项 {cmd:lpattern}、{cmd:lwidth()}、{cmd:lcolor()} 和 {cmd:lalign()} 可以让您单独更改属性。当有一项样式完全符合您的要求或其他样式将使您减少更改时，您才指定 {cmd:lstyle()}。

{pmore}
    请参见 {manhelpi linestyle G-4} 以获取样式选择的列表，或查看 {help lines_zh} 以讨论线条的一般问题。

{phang}
{cmd:lpattern(}{it:linepatternstyle}{cmd:)}
    指定勾勒边框的线条样式。
    请参见 {manhelpi linepatternstyle G-4}。同时请参见 {help lines_zh} 以讨论线条的一般问题。

{phang}
{cmd:lwidth(}{it:linewidthstyle}{cmd:)}
    指定勾勒边框的线条厚度。
    请参见 {manhelpi linewidthstyle G-4}。同时请参见 {help lines_zh} 以讨论线条的一般问题。

{phang}
{cmd:lcolor(}{it:colorstyle}{cmd:)}
    指定文本框边框的颜色和不透明度。
    只有在指定 {cmd:box} 的情况下，边框颜色才重要；否则，{cmd:lcolor()} 将会被忽略。
    请参见 {manhelpi colorstyle G-4} 以获取颜色选择的列表。

{phang}
{cmd:lalign(}{it:linealignmentstyle}{cmd:)}
    指定勾勒边框的线条是画在内侧、外侧还是中心。
    请参见 {manhelpi linealignmentstyle G-4} 以获得对齐选择的列表。

{phang}
{cmd:bmargin(}{it:marginstyle}{cmd:)}
    指定边框与包含框之间的边距。请参见 {manhelpi marginstyle G-4}。

{phang}
{cmd:bexpand}
    指定文本框向文本的方向扩展；如果文本是水平，则变宽，如果文本是垂直，则变长。它会扩展到包含框的边界。
    请参见 {manhelpi title_options G-3} 以演示此选项。

{phang}
{cmd:placement(}{it:compassdirstyle}{cmd:)}
    覆盖默认位置；参考下文
    {it:{help textbox_options##remarks7:附录：覆盖默认或上下文指定的定位}}。
    请参见 {manhelpi compassdirstyle G-4} 以获得参数选项。


{marker remarks}{...}
{title:备注}

{pstd}
备注内容在以下标题下呈现：

	{help textbox_options##remarks1:文本框的定义}
	{help textbox_options##remarks2:位置}
	{help textbox_options##remarks3:对齐}
	{help textbox_options##remarks4:位置和对齐的结合}
	{help textbox_options##remarks5:边距}
	{help textbox_options##remarks6:宽度和高度}
	{help textbox_options##remarks7:附录：覆盖默认或上下文指定的定位}


{marker remarks1}{...}
{title:文本框的定义}

{pstd}
文本框是一个或多行文本

	{c TLC}{hline 19}{c TRC}        {c TLC}{hline 33}{c TRC}
	{c |}单行文本框{c |}        {c |}多行文本框的第一行{c |}
	{c BLC}{hline 19}{c BRC}        {c |}多行文本框的第二行{c |}
				     {c BLC}{hline 33}{c BRC}

{pstd}
其边框可能可见或不可见（由 {cmd:box}/{cmd:nobox} 选项控制）。
文本框可以是水平或垂直的

	{c TLC}{hline 10}{c TRC}              {c TLC}{c -}{c TRC}         {c TLC}{c -}{c TRC}
	{c |}水平{c |}              {c |}l{c |}         {c |}r{c |}
	{c BLC}{hline 10}{c BRC}              {c |}a{c |}         {c |}v{c |}
				  {c |}c{c |}         {c |}e{c |}
				  {c |}i{c |}         {c |}r{c |}
				  {c |}t{c |}         {c |}t{c |}
				  {c |}r{c |}         {c |}i{c |}
				  {c |}e{c |}         {c |}c{c |}
				  {c |}v{c |}         {c |}a{c |}
				  {c BLC}{c -}{c BRC}         {c |}l{c |}
					      {c BLC}{c -}{c BRC}

	{it:在} {cmd:orientation(vertical)}            {it:在} {cmd:orientation(rvertical)}
	{it:文本框，字母旋转}           {it:文本框，字母旋转}
	{it:90 度逆时针;}           {it:90 度顺时针;}
	{cmd:orientation(vertical)} {it:读取}            {cmd:orientation(rvertical)} {it:读取}
	{it:从底到顶}                          {it:从顶到底}

{pstd}
即使在垂直文本框中，选项也以水平左侧和右侧的术语表示。请横向思考，想象在最后进行旋转。


{marker remarks2}{...}
{title:位置}

{pstd}
文本框首先被创建，然后放置在图形上。{it:textbox_options} 影响文本框的构造，而不是其定位。
控制其位置的选项由文本框使用的上下文提供。例如，{cmd:title()} 选项的语法——参见 {manhelpi title_options G-3}——是

{p 8 31 2}
{cmd:title("}{it:string}{cmd:"} ...
[{cmd:,}
{cmd:position(}...{cmd:)}
{cmd:ring(}...{cmd:)}
{cmd:span(}...{cmd:)}
...
{it:textbox_options}]{cmd:)}

{pstd}
{cmd:title()}'s {cmd:position()}、{cmd:ring()} 和 {cmd:span()} 选项决定了标题（也就是文本框）的位置。
一旦文本框被创建，其内容不再重要；它仅仅是一个放置在图形上的框。

{pstd}
文本框被放置在其他框内。例如，文本框可能是：

	{c TLC}{hline 5}{c TRC}
	{c |}{it:title}{c |}
	{c BLC}{hline 5}{c BRC}

{pstd}
并且由于指定的 {cmd:position()}、{cmd:ring()} 和 {cmd:span()} 选项，{cmd:title()} 可能在某个“行”的顶部将该框放置到某个地方：

	{c TLC}{hline 50}{c TRC}
	{c |}{space 50}{c |}
	{c BLC}{hline 50}{c BRC}

{pstd}
小框如何适应大框有很多种方法，这是常见的情况，原谅我们将两种讨论混合在一起：框如何相互适应和控制放置。
如果您指定了 {cmd:title()}'s {cmd:position(11)} 选项，结果将是：

	{c TLC}{hline 5}{c TT}{hline 44}{c TRC}
	{c |}{it:title}{c |}{space 44}{c |}
	{c BLC}{hline 5}{c BT}{hline 44}{c BRC}

{pstd}
如果您指定了 {cmd:title()}'s {cmd:position(12)} 选项，结果将是：

	{c TLC}{hline 21}{c TT}{hline 5}{c TT}{hline 21}{c TRC}
	{c |}{space 21}{c |}{it:title}{c |}{space 21}{c |}
	{c BLC}{hline 21}{c BT}{hline 5}{c BT}{hline 21}{c BRC}

{pstd}
如果您指定了 {cmd:title()}'s {cmd:position(1)} 选项，结果将是：

	{c TLC}{hline 44}{c TT}{hline 5}{c TRC}
	{c |}{space 44}{c |}{it:title}{c |}
	{c BLC}{hline 44}{c BT}{hline 5}{c BRC}


{marker remarks3}{...}
{title:对齐}

{pstd}
上述内容的一个含义是，是否将标题居中并不是由文本框选项 {cmd:justification()} 决定的，而是由 {cmd:title()}'s {cmd:position()} 选项决定的。

{pstd}
请记住，文本框选项描述文本框的构建，而不是其使用。
{cmd:justification(left}|{cmd:right}|{cmd:center)} 决定了多行文本框中文本的放置方式：

	{c TLC}{hline 32}{c TRC}
	{c |}多行文本框示例{c |}
	{c |}{cmd:justification(left)}             {c |}
	{c BLC}{hline 32}{c BRC}

	{c TLC}{hline 32}{c TRC}
	{c |}多行文本框示例{c |}
	{c |}            {cmd:justification(right)}{c |}
	{c BLC}{hline 32}{c BRC}


	{c TLC}{hline 32}{c TRC}
	{c |}多行文本框示例{c |}
	{c |}     {cmd:justification(center)}      {c |}
	{c BLC}{hline 32}{c BRC}

{pstd}
文本框的宽度不得大于其最长行文本的宽度。
{cmd:justification()} 决定了比最长行短的行在框内的放置方式。在单行文本框中，

	{c TLC}{hline 19}{c TRC}
	{c |}{it:单行文本框}{c |}
	{c BLC}{hline 19}{c BRC}

{pstd}
无论文本如何对齐，它都无关紧要。


{marker remarks4}{...}
{title:位置和对齐的结合}

{pstd}
借助于上下文提供的定位选项和 {cmd:justification()} 选项，您可以在多行文本框的展示中创建许多不同的效果。例如，考虑 {cmd:title()}，您可以得到

	{c TLC}{hline 14}{c TT}{hline 19}{c TT}{hline 15}{c TRC}
	{c |}{space 14}{c |}标题的第一行{c |}{space 15}{c |}          (1)
	{c |}{space 14}{c |}第二行        {c |}{space 15}{c |}
	{c BLC}{hline 14}{c BT}{hline 19}{c BT}{hline 15}{c BRC}

{pstd}
或

	{c TLC}{hline 14}{c TT}{hline 19}{c TT}{hline 15}{c TRC}
	{c |}{space 14}{c |}标题的第一行{c |}{space 15}{c |}          (2)
	{c |}{space 14}{c |}    第二行    {c |}{space 15}{c |}
	{c BLC}{hline 14}{c BT}{hline 19}{c BT}{hline 15}{c BRC}

{pstd}
或

	{c TLC}{hline 14}{c TT}{hline 19}{c TT}{hline 15}{c TRC}
	{c |}{space 14}{c |}标题的第一行{c |}{space 15}{c |}          (3)
	{c |}{space 14}{c |}        第二行{c |}{space 15}{c |}
	{c BLC}{hline 14}{c BT}{hline 19}{c BT}{hline 15}{c BRC}

{pstd}
或

	{c TLC}{hline 30}{c TT}{hline 19}{c TRC}
	{c |}{space 30}{c |}标题的第一行{c |}          (4)
	{c |}{space 30}{c |}第二行        {c |}
	{c BLC}{hline 30}{c BT}{hline 19}{c BRC}

{pstd}
或

	{c TLC}{hline 30}{c TT}{hline 19}{c TRC}
	{c |}{space 30}{c |}标题的第一行{c |}          (5)
	{c |}{space 30}{c |}    第二行    {c |}
	{c BLC}{hline 30}{c BT}{hline 19}{c BRC}

{pstd}
或

	{c TLC}{hline 30}{c TT}{hline 19}{c TRC}
	{c |}{space 30}{c |}标题的第一行{c |}          (6)
	{c |}{space 30}{c |}        第二行{c |}{space 15}{c |}
	{c BLC}{hline 30}{c BT}{hline 19}{c BRC}

{pstd}
或许多其他的。对应的命令将是

	{cmd:. graph} ...{cmd:, title("标题的第一行" "第二行",}       (1)
				{cmd:position(12) justification(left))}

	{cmd:. graph} ...{cmd:, title("标题的第一行" "第二行",}       (2)
				{cmd:position(12) justification(center))}

	{cmd:. graph} ...{cmd:, title("标题的第一行" "第二行",}       (3)
				{cmd:position(12) justification(right))}

	{cmd:. graph} ...{cmd:, title("标题的第一行" "第二行",}       (4)
				{cmd:position(1) justification(left))}

	{cmd:. graph} ...{cmd:, title("标题的第一行" "第二行",}       (5)
				{cmd:position(1) justification(center))}

	{cmd:. graph} ...{cmd:, title("标题的第一行" "第二行",}       (6)
				{cmd:position(1) justification(right))}


{marker remarks5}{...}
{title:边距}

{pstd}
有两个边距：{cmd:margin()} 和 {cmd:bmargin()}。{cmd:margin()} 指定文本与边框之间的边距。{cmd:bmargin()} 指定边框与包含框之间的边距。

{pstd}
默认情况下，文本框是将文本正好包含下来的最小矩形。如果您指定了 {cmd:margin()}，则在文本和边界矩形之间添加了空间：

	{c TLC}{hline 20}{c TRC}
	{c |}{cmd:margin(zero)} 文本框{c |}
	{c BLC}{hline 20}{c BRC}

	{c TLC}{hline 51}{c TRC}
	{c |}                                                   {c |}
	{c |}   四周都有充足边距的文本框     {c |}
	{c |}                                                   {c |}
	{c BLC}{hline 51}{c BRC}

{pstd}
{cmd:margin(}{it:marginstyle}{cmd:)} 允许在文本上、下、左、右指定不同数量的填充；见 {manhelpi marginstyle G-4}。使用 {cmd:margin()} 边距可以使文本框在通过 {cmd:box} 选项围绕框线条轮廓和/或通过 {cmd:bcolor()} 或 {cmd:bfcolor()} 选项着色时看起来更好。

{pstd}
{cmd:bmargin()} 边距用于在可用的定位选项不足时稍微或大幅移动文本框。
考虑指定 {cmd:caption()} 选项（参见 {manhelpi title_options G-3），以便它位于绘图区域内：

{p 8 16 2}
{cmd:. graph} ...{cmd:,}
{cmd:caption("我的标题", ring(0) position(7))}

{pstd}
看到结果，您决定想稍微向上和向右移动框：

{p 8 30 2}
{cmd:. graph} ...{cmd:,}
{cmd:caption("我的标题", ring(0) position(7)}{break}
{cmd:bmargin("2 0 2 0"))}

{pstd}
{cmd:bmargin()} 数字（和 {cmd:margin()} 数字）是顶部、底部、左侧和右侧的量，数量以大小指定（见 {manhelpi size G-4}）。我们指定了 2% 的底部边距和 2% 的左边距，因此将标题框向上和向右推进。


{marker remarks6}{...}
{title:宽度和高度}

{pstd}
文本框的宽度和高度由其内容（文本宽度和行数）加上刚刚讨论的边距决定。
然而，宽度计算是基于近似，结果是文本框应该看起来像这样

	{c TLC}{hline 41}{c TRC}
	{c |}Stata 近似文本框的宽度{c |}
	{c BLC}{hline 41}{c BRC}

{pstd}
最后却可能看起来像这样

	{c TLC}{hline 43}{c TRC}
	{c |}Stata 近似文本框的宽度  {c |}
	{c BLC}{hline 43}{c BRC}

{pstd}
或像这样

	{c TLC}{hline 39}{c TRC}
	{c |}Stata 近似文本框的宽度{c |}es
	{c BLC}{hline 39}{c BRC}

{pstd}
您不会注意到这个问题，除非绘制边框（选项 {cmd:box}）因为不绘制边框，在这三种情况下，您会看到

	 Stata 近似文本框的宽度

{pstd}
有关此问题和解决方案的示例，请参见 {it:{help added_text_option##remarks3:使用文本框选项 width()}} 在 {manhelpi added_text_option G-3} 中。
如果出现问题，请使用 {cmd:width(}{it:size}{cmd:)} 进行变通。找出 {cmd:width()} 的正确值往往需要试错。
正确的宽度通常在 0 到 100 之间。

{pstd}
与 {cmd:width(}{it:size}{cmd:)} 对应的是 {cmd:height(}{it:size}{cmd:)}。此选项的使用价值较小，因为 Stata 从来没有计算高度错误。


{marker remarks7}{...}
{title:附录：覆盖默认或上下文指定的定位}

{pstd}
接下来的是一个脚注。我们之前说过，文本框的位置由其使用的上下文和该上下文提供的定位选项决定。有时，您希望覆盖该默认值，或者上下文可能不会提供这种控制。在这种情况下，选项 {cmd:placement()} 允许您掌控。

{pstd}
让我们首先纠正之前引入的一个误解。我们之前说过，文本框在放置时会被放在其他框内。这并不完全正确。例如，当文本框比其被放置的框大时会发生什么？假设我们有文本框

	{c TLC}{hline 20}{c TRC}
	{c |}{space 20}{c |}
	{c BLC}{hline 20}{c BRC}

{pstd}
我们需要将其 "放入" 框中

			{c TLC}{hline 6}{c TRC}
			{c |}{space 6}{c |}
			{c |}{space 6}{c |}
			{c |}{space 6}{c |}
			{c BLC}{hline 6}{c BRC}

{pstd}
事情的运行方式是，文本框并不会被放在其他框内；它只是被放置以与预先存在的框对齐。
这些对齐规则是，如果预先存在的框大于文本框，则结果就是通常所说的“内部”。
对齐规则要么是对齐其中一个四个角，要么是在四个边上对齐并居中。

{pstd}
在刚才给出的示例中，文本框可以被放置以其西北角与预先存在的框的西北角重合，

			{c TLC}{hline 6}{c TT}{hline 13}{c TRC}
			{c |}{space 6}{c |}{space 13}{c |}{...}
{col 60}{cmd:placement(nw)}
			{c LT}{hline 6}{c +}{hline 13}{c BRC}
			{c |}{space 6}{c |}
			{c BLC}{hline 6}{c BRC}

{pstd}
或使它们的东北角重合，

	  {c TLC}{hline 13}{c TT}{hline 6}{c TRC}
	  {c |}{space 13}{c |}{space 6}{c |}{...}
{col 60}{cmd:placement(ne)}
	  {c BLC}{hline 13}{c +}{hline 6}{c RT}
			{c |}{space 6}{c |}
			{c BLC}{hline 6}{c BRC}

{pstd}
或使它们的西南角重合，

			{c TLC}{hline 6}{c TRC}
			{c |}{space 6}{c |}{...}
{col 60}{cmd:placement(sw)}
			{c LT}{hline 6}{c +}{hline 13}{c TRC}
			{c |}{space 6}{c |}{space 13}{c |}
			{c BLC}{hline 6}{c BT}{hline 13}{c BRC}

{pstd}
或使它们的东南角重合，

			{c TLC}{hline 6}{c TRC}
			{c |}{space 6}{c |}{...}
{col 60}{cmd:placement(se)}
	  {c TLC}{hline 13}{c +}{hline 6}{c RT}
	  {c |}{space 13}{c |}{space 6}{c |}
	  {c BLC}{hline 13}{c BT}{hline 6}{c BRC}

{pstd}
或使顶部边的中点相同，

		 {c TLC}{hline 6}{c TT}{hline 6}{c TT}{hline 6}{c TRC}
		 {c |}{space 6}{c |}{space 6}{c |}{space 6}{c |}{...}
{col 60}{cmd:placement(n)}
		 {c BLC}{hline 6}{c +}{hline 6}{c +}{hline 6}{c BRC}
			{c |}{space 6}{c |}
			{c BLC}{hline 6}{c BRC}

{pstd}
或使左侧边的中点相同，

			{c TLC}{hline 6}{c TRC}
			{c LT}{hline 6}{c +}{hline 13}{c TRC}
			{c |}{space 6}{c |}{space 13}{c |}{...}
{col 60}{cmd:placement(w)}
			{c LT}{hline 6}{c +}{hline 13}{c BRC}
			{c BLC}{hline 6}{c BRC}

{pstd}
或使右侧边的中点相同，

			{c TLC}{hline 6}{c TRC}
	  {c TLC}{hline 13}{c +}{hline 6}{c RT}
	  {c |}{space 13}{c |}{space 6}{c |}{...}
{col 60}{cmd:placement(e)}
	  {c BLC}{hline 13}{c +}{hline 6}{c RT}
			{c BLC}{hline 6}{c BRC}

{pstd}
或使底部边的中点相同，

			{c TLC}{hline 6}{c TRC}
			{c |}{space 6}{c |}{...}
{col 60}{cmd:placement(s)}
		 {c TLC}{hline 6}{c +}{hline 6}{c +}{hline 6}{c TRC}
		 {c |}{space 6}{c |}{space 6}{c |}{space 6}{c |}
		 {c BLC}{hline 6}{c BT}{hline 6}{c BT}{hline 6}{c BRC}

{pstd}
或使两个框的中心点相同：

			{c TLC}{hline 6}{c TRC}
		 {c TLC}{hline 6}{c +}{hline 6}{c +}{hline 6}{c TRC}
		 {c |}{space 6}{c |}{space 6}{c |}{space 6}{c |}{...}
{col 60}{cmd:placement(c)}
		 {c BLC}{hline 6}{c +}{hline 6}{c +}{hline 6}{c BRC}
			{c BLC}{hline 6}{c BRC}

{pstd}
如果您对上述内容有任何疑问，请考虑如果预先存在的框大于文本框您将得到的结果。我们在下面展示预存在的框以及八个不同的文本框：

	{c TLC}{hline 13}{c TT}{hline 7}{c TT}{...}
{hline 12}{c TT}{hline 7}{c TT}{hline 13}{c TRC}
{...}
{...}
	{c |}{cmd:placement(nw)}{c |}{space 7}{...}
{c |}{cmd:placement(n)}{c |}{space 7}{...}
{c |}{cmd:placement(ne)}{c |}
{...}
{...}
	{c LT}{hline 13}{c BRC}{space 7}{...}
{c BLC}{hline 12}{c BRC}{space 7}{...}
{c BLC}{hline 13}{c RT}
{...}
{...}
{...}
	{c |}{space 56}{c |}
{...}
{...}
{...}
	{c LT}{hline 12}{c TRC}{...}
{space 8}{c TLC}{hline 12}{c TRC}{space 8}{...}
{c TLC}{hline 12}{c RT}
{...}
{...}
	{c |}{cmd:placement(w)}{c |}{...}
{space 8}{c |}{cmd:placement(c)}{c |}{space 8}{...}
{c |}{cmd:placement(e)}{c |}
{...}
{...}
	{c LT}{hline 12}{c BRC}{...}
{space 8}{c BLC}{hline 12}{c BRC}{space 8}{...}
{c BLC}{hline 12}{c RT}
{...}
{...}
{...}
	{c |}{space 56}{c |}
{...}
{...}
{...}
	{c LT}{hline 13}{c TRC}{space 7}{c TLC}{...}
{hline 12}{c TRC}{space 7}{c TLC}{hline 13}{c RT}
{...}
{...}
	{c |}{cmd:placement(sw)}{c |}{...}
{space 7}{c |}{cmd:placement(s)}{c |}{space 7}{...}
{c |}{cmd:placement(se)}{c |}
{...}
{...}
	{c BLC}{hline 13}{c BT}{hline 7}{c BT}{...}
{hline 12}{c BT}{hline 7}{c BT}{hline 13}{c BRC}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <textbox_options.sthlp>}