{smcl}
{* *! version 1.2.9  24apr2019}{...}
{vieweralsosee "[G-3] legend_options" "mansection G-3 legend_options"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[G-3] title_options" "help title_options_zh"}{...}
{viewerjumpto "Syntax" "legend_options_zh##syntax"}{...}
{viewerjumpto "Description" "legend_options_zh##description"}{...}
{viewerjumpto "Links to PDF documentation" "legend_options_zh##linkspdf"}{...}
{viewerjumpto "Options" "legend_options_zh##options"}{...}
{viewerjumpto "Content suboptions for use with legend() and plegend()" "legend_options_zh##content_subopts"}{...}
{viewerjumpto "Suboptions for use with legend(region())" "legend_options_zh##subopts"}{...}
{viewerjumpto "Location suboptions for use with legend()" "legend_options_zh##location_subopts"}{...}
{viewerjumpto "Remarks" "legend_options_zh##remarks"}
{help legend_options:English Version}
{hline}{...}
{p2colset 1 25 27 2}{...}
{p2col:{bf:[G-3]} {it:legend_options} {hline 2}}指定图例选项{p_end}
{p2col:}({mansection G-3 legend_options:查看完整的 PDF 手册条目}){p_end}
{p2colreset}{...}


{marker syntax}{...}
{title:语法}

{synoptset 30}{...}
{p2col:{it:legend_options}}描述{p_end}
{p2line}
{p2col:{cmdab:leg:end:(}[{it:{help legend_options##contents:内容}}] [{it:{help legend_options##location:位置}}]{cmd:)}}标准
	图例，内容和位置{p_end}
{p2col:{cmdab:pleg:end:(}[{it:{help legend_options##contents:内容}}] [{it:{help legend_options##location:位置}}]{cmd:)}}{helpb twoway contourline:contourline} 
	图例，内容和位置{p_end}
{p2col:{cmdab:cleg:end:(}[{it:suboptions}])}{helpb twoway contour:contour} 
	图形图例；见 {manhelpi clegend_option G-3}{p_end}
{p2line}
{p 4 6 2}
{cmd:legend()}, {cmd:plegend()}, 和 {cmd:clegend()} 是 {it:merged-implicit}；
详见 {help repeated options}。

{pstd}
其中 {it:contents} 和 {it:location} 指定图例的内容和位置。

{marker contents}{...}
{p2col:{it:contents}}描述{p_end}
{p2line}
{p2col:{cmd:order(}{it:{help legend_options##orderinfo:orderinfo}}{cmd:)}}哪些
     键显示及其顺序{p_end}
{p2col:{cmdab:lab:el:(}{it:{help legend_options##labelinfo:labelinfo}}{cmd:)}}覆盖键的文本{p_end}
{p2col:{cmdab:hol:es:(}{it:{help numlist_zh}}{cmd:)}}在图例中留空的
     位置{p_end}
{p2col:{cmd:all}}为所有符号生成键{p_end}

{p2col:{cmdab:sty:le:(}{it:{help legendstyle_zh}}{cmd:)}}图例的整体样式
     {p_end}
{p2col:{cmdab:c:ols:(}{it:#}{cmd:)}}每行{it:#}个键{p_end}
{p2col:{cmdab:r:ows:(}{it:#}{cmd:)}}或者 {it:#} 行{p_end}
{p2col:[{cmdab:no:}]{cmdab:colf:irst}}"1, 2, 3"在第 1 行还是第 1 列？{p_end}
{p2col:[{cmdab:no:}]{cmdab:textf:irst}}符号-文本或文本-符号？{p_end}
{p2col:{cmdab:stac:k}}符号/文本垂直叠加{p_end}
{p2col:{cmdab:rowg:ap:(}{it:{help size_zh}}{cmd:)}}行之间的间距{p_end}
{p2col:{cmdab:colg:ap:(}{it:{help size_zh}}{cmd:)}}列之间的间距
     {p_end}
{p2col:{cmdab:symp:lacement:(}{it:{help compassdirstyle_zh}}{cmd:)}}键符号的对齐/格式{p_end}
{p2col:{cmdab:keyg:ap:(}{it:{help size_zh}}{cmd:)}}符号文本之间的间距
     {p_end}
{p2col:{cmdab:symy:size:(}{it:{help size_zh}}{cmd:)}}键符号的高度{p_end}
{p2col:{cmdab:symx:size:(}{it:{help size_zh}}{cmd:)}}键符号的宽度{p_end}
{p2col:{cmdab:textw:idth:(}{it:{help size_zh}}{cmd:)}}键描述文本的宽度{p_end}
{p2col:{cmdab:forces:ize}}总是遵循 {cmd:symysize()}、{cmd:symxsize()}、
      和 {cmd:textwidth()}{p_end}
{p2col:{cmdab:bm:argin:(}{it:{help marginstyle_zh}}{cmd:)}}图例外边距{p_end}
{p2col:{it:{help textbox_options_zh}}}键描述文本的外观{p_end}
{p2col:{it:{help title_options_zh}}}标题、副标题、注释、说明{p_end}
{p2col:{cmdab:r:egion:(}{it:{help legend_options##roptions:roptions}}{cmd:)}}边框和背景阴影{p_end}
{p2line}
{p 4 6 2}{cmd:order()}, {cmd:labels()}, {cmd:holes()} 和 {cmd:all}
对 {cmd:plegend()} 没有任何影响。

{marker location}{...}
{p2col:{it:location}}描述{p_end}
{p2line}
{p2col:{cmd:off} 或 {cmd:on}}抑制或强制显示图例{p_end}
{p2col:{cmdab:pos:ition:(}{it:{help clockposstyle_zh}}{cmd:)}}图例出现的
      位置{p_end}
{p2col:{cmd:ring(}{it:{help ringposstyle_zh}}{cmd:)}}图例出现的位置
      （详细信息）{p_end}
{p2col:{cmdab:bplace:ment:(}{it:{help compassdirstyle_zh}}{cmd:)}}当图例定位在图形区域时的放置
{p_end}
{p2col:{cmd:span}}"居中"图例{p_end}
{p2col:{cmd:at(}{it:#}{cmd:)}}仅与 {cmd:by()} 一起使用{p_end}
{p2line}
{p 4 6 2}
请参阅
{it:{help legend_options##remarks3:图例出现的位置}}，以及请参阅 {help title_options##remarks3:标题的定位} 中对 {it:clockposstyle} 和 {it:ringposstyle} 的定义。

{marker orderinfo}{...}
{pstd}
{it:orderinfo}，由 {cmd:legend(order())} 允许的参数定义为

{phang2}
	{c -(}{it:#}|{cmd:-}{c )-} [{cmd:"}{it:text}{cmd:"} {...}
[{cmd:"}{it:text}{cmd:"} ...]

{marker labelinfo}{...}
{pstd}
{it:labelinfo}，由 {cmd:legend(label())} 允许的参数定义为

{phang2}
	{it:#} {cmd:"}{it:text}{cmd:"} [{cmd:"}{it:text}{cmd:"} ...]

{marker roptions}{...}
{pstd}
{it:roptions}，由 {cmd:legend(region())} 允许的参数，包含

{p2col:{it:roptions}}描述{p_end}
{p2line}
{p2col:{cmdab:sty:le:(}{it:{help areastyle_zh}}{cmd:)}}区域的整体样式{p_end}
{p2col:{cmdab:c:olor:(}{it:{help colorstyle_zh}}{cmd:)}}区域的线条 + 填充颜色和不透明度{p_end}
{p2col:{cmdab:fc:olor:(}{it:{help colorstyle_zh}}{cmd:)}}区域的填充颜色和不透明度{p_end}
{p2col:{cmdab:ls:tyle:(}{it:{help linestyle_zh}}{cmd:)}}边框的整体样式{p_end}
{p2col:{cmdab:lc:olor:(}{it:{help colorstyle_zh}}{cmd:)}}边框的颜色和不透明度{p_end}
{p2col:{cmdab:lw:idth:(}{it:{help linewidthstyle_zh}}{cmd:)}}边框的厚度{p_end}
{p2col:{cmdab:lp:attern:(}{it:{help linepatternstyle_zh}}{cmd:)}}边框图案（实线、虚线等）{p_end}
{p2col : {cmdab:la:lign:(}{it:{help linealignmentstyle_zh}}{cmd:)}}边框
	对齐（内部、外部、居中）{p_end}
{p2col:{cmdab:m:argin:(}{it:{help marginstyle_zh}}{cmd:)}}边框与图例内容之间的边距{p_end}
{p2line}
{p2colreset}{...}


{marker description}{...}
{title:描述}

{pstd}
{cmd:legend()} 选项允许您控制图例的外观、内容和位置。一个示例图例是

		{c TLC}{hline 21}{c TRC}
		{c |}  o   观察值       {c |}
		{c |} {hline 3}  线性拟合     {c |}
		{c |} ---  二次拟合  {c |}
		{c BLC}{hline 21}{c BRC}

{pstd}
上述图例有三个 {it:keys}。每个键由一个 {it:symbol} 和描述该符号的 {it:descriptive text} 组成（无论该符号是什么，可能是标记、一条线或一个颜色样本）。

{pstd}
{cmd:contourline} 和 {cmd:contour} 图形都有自己的图例，并且不在标准图例 {cmd:legend()} 中放置键；请参阅 {helpb twoway contourline:[G-2] graph twoway contourline} 和 {helpb twoway contour:[G-2] graph twoway contour}。{cmd:contourline} 图形将键放入 {cmd:plegend()} 中，而 {cmd:contour} 图形将键放入 {cmd:clegend()} 中。{cmd:plegend()} 类似于 {cmd:legend()}，在此处进行了文档说明。{cmd:clegend()} 在 {manhelpi clegend_option G-3} 中进行了说明。

{pstd}
图例选项（确切地说是子选项）通过 {cmd:legend()} 选项进行讨论，但大多数同样适用于 {cmd:plegend()} 选项。

{marker linkspdf}{...}
{title:PDF 文档链接}

        {mansection G-3 legend_optionsQuickstart:快速开始}

        {mansection G-3 legend_optionsRemarksandexamples:备注和示例}

{pstd}
上述部分不包含在此帮助文件中。


{marker options}{...}
{title:选项}

{phang}
{cmd:legend(}{it:{help legend_options##contents:内容}}{cmd:,}
    {it:{help legend_options##location:位置}}{cmd:)}
    定义标准图例的内容，以及图例的外观，和图例是否及何处显示。

{phang}
{cmd:plegend(}{it:{help legend_options##contents:内容}}{cmd:,}
    {it:{help legend_options##location:位置}}{cmd:)}
    定义 {cmd:contourline} 图形图例的内容，以及图例的外观，和图例是否及何处显示。

{marker content_subopts}{...}
{title:与 legend() 和 plegend() 一起使用的内容子选项}

{phang}
{cmd:order(}{it:orderinfo}{cmd:)}
    指定哪些键应出现在图例中及它们出现的顺序。

{pmore}
    {cmd:order(}{it:#} {it:#} ...{cmd:)} 是常用的语法。
    {cmd:order(1 2 3)} 将指定键 1 首先出现在图例中，随后是键 2，最后是键 3。如果有三个键，{cmd:order(1 2 3)} 为默认。如果有四个键，{cmd:order(1 2 3 4)} 将是默认，依此类推。如果有四个键并且您指定了 {cmd:order(1 2 3)}，则第四个键将不会出现在图例中。如果您指定了 {cmd:order(2 1 3)}，则键 2 将首先出现，其次是键 1，最后是键 3。

{pmore}
    破折号表示文本将被插入到图例中。
    例如，{cmd:order(1 2 - "}{it:text}{cmd:"} {cmd:3)} 指定键 1 首先出现，其次是键 2，
    然后是文本 {it:text}，最后是键 3。
    想象默认键是

		{c TLC}{hline 19}{c TRC}
		{c |}  o   观察值     {c |}
		{c |} {hline 3}  线性     {c |}
		{c |} ---  二次    {c |}
		{c BLC}{hline 19}{c BRC}

{pmore}
    指定 {cmd:order(1 - "Predicted:" 2 3)} 将产生

		{c TLC}{hline 19}{c TRC}
		{c |}  o   观察值     {c |}
		{c |}      预测：   {c |}
		{c |} {hline 3}  线性     {c |}
		{c |} ---  二次    {c |}
		{c BLC}{hline 19}{c BRC}

{pmore}
    并且指定 {cmd:order(1 - " " "Predicted:" 2 3)} 将产生

		{c TLC}{hline 19}{c TRC}
		{c |}  o   观察值      {c |}
		{c |}                   {c |}
		{c |}      预测：   {c |}
		{c |} {hline 3}  线性      {c |}
		{c |} ---  二次       {c |}
		{c BLC}{hline 19}{c BRC}

{pmore}
    请认真注意文本插入的第一行的空格规范；我们输入了 {cmd:" "} 而不是 {cmd:""}。
    输入 {cmd:""} 将什么都不插入。

{pmore}
    您还可以在 {it:#} 前指定引号文本以覆盖与符号相关的描述文本。指定
    {cmd:order(1 "Observed 1992" - " " "Predicted" 2 3)}
    将把上述的 "Observed" 更改为 "Observed 1992"。
    不过，考虑到风格，更好的做法是使用 {cmd:label()}
    子选项来重命名符号。

{pmore}
    {cmd:order()} 对 {cmd:plegend()} 没有任何影响。

{phang}
{cmd:label(}{it:#} {cmd:"}{it:text}{cmd:"} [{cmd:"}{it:text}{cmd:"} ...]{cmd:)}
    指定要在第 {it:#} 个键旁边显示的描述文本。允许多行文本。指定
    {cmd:label(1 "Observed 1992")} 将使第一个键的描述文本变为 "Observed 1992"。指定
    {cmd:label(1 "Observed" "1992-1993")} 将使描述文本包含两行，"Observed" 后跟 "1992-1993"。

{pmore}
    仅能通过一个 {cmd:label()} 子选项更改一个键的描述文本。要更改多个键的文本，请指定多个 {cmd:label()} 子选项。

{pmore}
    {cmd:label()} 对 {cmd:plegend()} 没有任何影响。

{phang}
{cmd:holes(}{it:{help numlist_zh}}{cmd:)}
    指定键的呈现中出现空隙的位置。仅当键以多行和多列的方式呈现时，{cmd:holes()} 才有效。

{pmore}
    考虑一个默认键的情况：

	    {c TLC}{hline 47}{c TRC}
	    {c |}  o   观察值               {hline 3}  线性拟合   {c |}
	    {c |} ---  二次拟合                            {c |}
	    {c BLC}{hline 47}{c BRC}

{pmore}
    指定 {cmd:holes(2)} 将产生

	    {c TLC}{hline 47}{c TRC}
	    {c |}  o   观察值                                 {c |}
	    {c |} {hline 3}  线性拟合           ---  二次拟合  {c |}
	    {c BLC}{hline 47}{c BRC}

{pmore}
    在这里，{cmd:holes(2)} 将具有与 {cmd:order(1 - " " 2 3)} 相同的效果，实际上，总有一个
    {cmd:order()} 命令可以实现与 {cmd:holes()} 相同的效果。{cmd:order()} 还具有在所有情况下工作的附加优势。

{pmore}
    {cmd:holes()} 对 {cmd:plegend()} 没有任何影响。

{phang}
{cmd:all}
    指定为所有图形的图例生成键，甚至当同一符号重复时。默认情况下，仅在符号不同的情况下生成键，这由整体样式决定。例如，

	    {cmd:. scatter ylow yhigh x, pstyle(p1 p1) || ...}

{pmore}
    将仅为变量 {cmd:ylow} 和 {cmd:yhigh} 生成一个键，因为它们共享样式 {cmd:p1}。该单一键的描述文本将指示该符号对应两个变量。如果相反您输入：

{phang3}
	    {cmd:. scatter ylow yhigh x, pstyle(p1 p1) legend(all) || ...}

{pmore}
    则将为 {cmd:ylow} 和 {cmd:yhigh} 分别生成独立的键。

{pmore}
    在上述示例中，不要混淆我们对 {cmd:scatter} 的选项 {helpb scatter##pstyle():pstyle()} 的使用与 {cmd:legend()} 的子选项 {cmd:legend(style())}。{cmd:pstyle()} 选项设置点的呈现的整体样式。{cmd:legend()} 的 {cmd:style()} 子选项在下面有直接文档。

{pmore}
    {cmd:all} 对 {cmd:plegend()} 没有任何影响。

{phang}
{cmd:style(}{it:legendstyle}{cmd:)}
     指定图例的整体外观——是否水平或垂直呈现，以及水平展示时图例中显示多少个键等。下面列出的选项允许您更改图例的每个属性，但 {cmd:style()} 是起点。

{pmore}
     您无需仅仅因为您想更改某些内容而指定 {cmd:style()}。您在存在完全符合您的需求的其他样式时指定 {cmd:style()}，或者当另一个样式允许您指定更少的更改以获得所需样式时。

{pmore}
     有关可用图例样式的列表，请参阅 {manhelpi legendstyle G-4}。

{phang}
{cmd:cols(}{it:#}{cmd:)} 和 {cmd:rows(}{it:#}{cmd:)}
     是可选项；它们指定键呈现的列数或行数（行）。通常默认是 {cmd:cols(2)}，这意味着图例占用两列：

	    {c TLC}{hline 47}{c TRC}
	    {c |}  o   观察值               {hline 3}  线性拟合   {c |}
	    {c |} ---  二次拟合                            {c |}
	    {c BLC}{hline 47}{c BRC}

{pmore}
     {cmd:cols(1)} 将强制呈现为垂直排列，

	    {c TLC}{hline 22}{c TRC}
	    {c |}  o    观察值       {c |}
	    {c |} {hline 3}   线性拟合     {c |}
	    {c |} ---   二次拟合  {c |}
	    {c BLC}{hline 22}{c BRC}

{pmore}
    而 {cmd:rows(1)} 将强制水平排列：

	    {c TLC}{hline 63}{c TRC}
	    {c |}  o   观察值       {hline 3}   线性拟合     ---    二次拟合 {c |}
	    {c BLC}{hline 63}{c BRC}

{phang}
{cmd:colfirst} 和 {cmd:nocolfirst}
    确定是否在多个列中呈现键时，键是向下阅读还是向横阅读，产生如下结果

	    {c TLC}{hline 50}{c TRC}
	    {c |}  o    观察值               ---   二次拟合 {c |}
	    {c |} {hline 3}   线性拟合                                 {c |}
	    {c BLC}{hline 50}{c BRC}

{pmore}
或如下

	    {c TLC}{hline 50}{c TRC}
	    {c |}  o    观察值               {hline 3}   线性拟合    {c |}
	    {c |} ---   二次拟合                              {c |}
	    {c BLC}{hline 50}{c BRC}

{pmore}
通常默认是 {cmd:nocolfirst}，所以 {cmd:colfirst} 是选项。

{phang}
{cmd:textfirst} 和 {cmd:notextfirst}
     指定键是作为描述性文本在前，还是符号在前。通常默认是 {cmd:notextfirst}，所以 {cmd:textfirst} 是选项。
     {cmd:textfirst} 生成的键如下所示

	    {c TLC}{hline 50}{c TRC}
	    {c |}              观察值   o      线性拟合  {hline 3}   {c |}
	    {c |}         二次拟合  ---                       {c |}
	    {c BLC}{hline 50}{c BRC}

{pmore}
而 {cmd:textfirst} {cmd:cols(1)} 生成的键为

	    {c TLC}{hline 21}{c TRC}
	    {c |}       观察值   o  {c |}
	    {c |}     线性拟合  {hline 3} {c |}
	    {c |}  二次拟合  --- {c |}
	    {c BLC}{hline 21}{c BRC}

{phang}
{cmd:stack}
    指定符号-文本垂直地呈现，符号在上方（如果同时指定了 {cmd:textfirst}，则描述性文本在上方）。
    {cmd:legend(stack)} 将生成

	    {c TLC}{hline 47}{c TRC}
	    {c |}        o                    {hline 16}  {c |}
	    {c |}  观察值                   线性拟合        {c |}
	    {c |}  -----------------                            {c |}
	    {c |}  二次拟合                                {c |}
	    {c BLC}{hline 47}{c BRC}

{pmore}
    {cmd:legend(stack} {cmd:symplacement(left)} {cmd:symxsize(13)}
    {cmd:forcesize} {cmd:rowgap(4))} 将生成

	    {c TLC}{hline 47}{c TRC}
	    {c |}  o                          {hline 3}{space 13}  {c |}
	    {c |}  观察值                   线性拟合        {c |}
	    {c |}                                               {c |}
	    {c |}  ---                                          {c |}
	    {c |}  二次拟合                                {c |}
	    {c BLC}{hline 47}{c BRC}

{pmore}
    {cmd:stack} 通常用来生成单列图例。
    {cmd:legend(cols(1)} {cmd:stack} {cmd:symplacement(left)} {cmd:symxsize(13)}
    {cmd:forcesize} {cmd:rowgap(4))}
    产生

	    {c TLC}{hline 17}{c TRC}
	    {c |}  o{space 14}{c |}
	    {c |}  观察值       {c |}
	    {c |}{space 17}{c |}
	    {c |}  {hline 3}{space 12}{c |}
	    {c |}  线性拟合     {c |}
	    {c |}{space 17}{c |}
	    {c |}  ---{space 12}{c |}
	    {c |}  二次拟合  {c |}
	    {c BLC}{hline 17}{c BRC}

{pmore}
    这就是 {cmd:stack} 的真实用途：生成狭窄、垂直的键。

{phang}
{cmd:rowgap(}{it:size}{cmd:)} 和 {cmd:colgap(}{it:size}{cmd:)}
    指定行之间的距离和列之间的距离。默认值为 {cmd:rowgap(1.4)} 和 {cmd:colgap(4.9)}。
    请参见 {manhelpi size G-4}。

{phang}
{cmd:symplacement(}{it:compassdirstyle}{cmd:)}
    指定符号在键中的对齐方式。默认是 {cmd:symplacement(center)}，意味着它们是垂直和水平居中的。两种最常指定的替代选择是 {cmd:symplacement(right)}（右对齐）和 {cmd:symplacement(left)}（左对齐）。有关其他对齐选择，请参见 {manhelpi compassdirstyle G-4}。

{phang}
{cmd:keygap(}{it:size}{cmd:)},
{cmd:symysize(}{it:size}{cmd:)},
{cmd:symxsize(}{it:size}{cmd:)},
和
{cmd:textwidth(}{it:size}{cmd:)}
    指定为键以及键的符号和描述文本分配的高度和宽度：

		      {cmd:keygap()}
		       {c LT}{hline 3}{c RT}

	    {c TLC}{hline 10}{c TT}{hline 3}{c TT}{hline 20}{c TRC}   {c -}{c TT}{c -}
	    {c |}  {it:symbol}  {c |}   {c |}  {it:descriptive text}  {c |}    {c |}   {cmd:symysize()}
	    {c BLC}{hline 10}{c BT}{hline 3}{c BT}{hline 20}{c BRC}   {c -}{c BT}{c -}

	    {c LT}{hline 10}{c RT}   {c LT}{hline 20}{c RT}
	     {cmd:symxsize()}          {cmd:textwidth()}

{pmore}
    默认值为

	    {hline 58}
	    {cmd:symxsize()}     13
	    {cmd:keygap()}        2
	    {cmd:textwidth()}    根据最长描述文本行
	    {cmd:symysize()}     根据字体高度 (*)
	    {hline 58}
	    (*) 字体大小由 {it:textbox_option}
		{cmd:size(}{it:size}{cmd:)} 设置；请参见 {it:{help legend_options##textbox_options:textbox_options}}。

{pmore}
    标记放置在符号区域中，按照 {cmd:symplacement()} 居中。

{pmore}
    线条在符号区域内垂直放置，并水平绘制至长度 {cmd:symxsize()}。

{pmore}
    颜色样本填充 {cmd:symysize()} {it:x} {cmd:symxsize()} 区域。

{pmore}
    有关指定尺寸的信息，请参见 {manhelpi size G-4}。

{phang}
{cmd:forcesize}
    使 {cmd:symysize()} 和 {cmd:symxsize()} 指定的尺寸得以实现。如果未指定 {cmd:forcesize}，则在为所有键放置所有符号后，符号区域压缩（或扩展）至不大于必要的大小以容纳符号。

{phang}
{cmd:bmargin(}{it:marginstyle}{cmd:)}
     指定图例周围的外边距。也就是说，指定其他靠近图例的内容可接近的程度。请参见下面 {cmd:margin()} 子选项以指定边框与内容之间的内部边距。请参见 {manhelpi marginstyle G-4} 获取边距选择列表。

{marker textbox_options}{...}
{phang}
{it:textbox_options}
     影响与键相关的描述文本的呈现。这些在 {manhelpi textbox_options G-3} 中描述。最常指定的 {it:textbox_options} 之一是
     {cmd:size(}{it:size}{cmd:)}, 指定用于描述文本的字体大小。

{phang}
{it:title_options}
     允许在图例上放置标题、副标题、注释和说明。例如，{cmd:legend(col(1) subtitle("图例"))} 产生

	    {c TLC}{hline 21}{c TRC}
	    {c |}        {bf:图例}       {c |}
	    {c |}                     {c |}
	    {c |}  o   观察值       {c |}
	    {c |} {hline 3}  线性拟合     {c |}
	    {c |} ---  二次拟合  {c |}
	    {c BLC}{hline 21}{c BRC}

{pmore}
     请注意我们使用 {cmd:subtitle()} 而不是 {cmd:title()}；{cmd:title()} 通常太大。
     请参见 {manhelpi title_options G-3}。

{phang}
{cmd:region(}{it:roptions}{cmd:)}
     指定图例的边框和阴影。您可以通过指定
     {cmd:legend(region(lstyle(none)))} （从而去掉线条）或
     {cmd:legend(region(lcolor(none)))} （使线条不可见）从图例中删除边框。
     您还可以通过指定
     {cmd:legend(region(fcolor(gs5)))} 给图例添加灰色背景色。
     请参见下面 {it:{help legend_options##subopts:与 legend(region()) 一起使用的子选项}}。

{marker subopts}{...}
{title:与 legend(region()) 一起使用的子选项}

{phang}
{cmd:style(}{it:areastyle}{cmd:)}
     指定图例出现的区域的整体样式。其他子选项允许您单独更改区域的属性，但 {cmd:style()} 提供了起点。请参见 
     {manhelpi areastyle G-4} 获取选择列表。

{phang}
{cmd:color(}{it:colorstyle}{cmd:)}
    指定图例的背景和边框线的颜色和不透明度。请参见 {manhelpi colorstyle G-4} 获取颜色选择列表。

{phang}
{cmd:fcolor(}{it:colorstyle}{cmd:)}
    指定图例的背景（填充）颜色和不透明度。请参见 {manhelpi colorstyle G-4} 获取颜色选择列表。

{phang}
{cmd:lstyle(}{it:linestyle}{cmd:)}
    指定用于描述图例的边框的整体样式，包括其图案（实线、虚线等）、厚度和颜色。下面列出的其他子选项允许您单独更改线条的属性，但 {cmd:lstyle()} 是起点。请参见 {manhelpi linestyle G-4} 获取选择列表。

{phang}
{cmd:lcolor(}{it:colorstyle}{cmd:)}
    指定用于描述图例的边框的颜色和不透明度。请参见 {manhelpi colorstyle G-4} 获取颜色选择列表。

{phang}
{cmd:lwidth(}{it:linewidthstyle}{cmd:)}
    指定用于描述图例的边框的厚度。请参见 {manhelpi linewidthstyle G-4} 获取选择列表。

{phang}
{cmd:lpattern(}{it:linepatternstyle}{cmd:)}
    指定用于描述图例的边框是实线、虚线，还是其他样式。
    请参见 {manhelpi linepatternstyle G-4} 获取选择列表。

{phang}
{cmd:lalign(}{it:linealignmentstyle}{cmd:)}
    指定包围区域的线条是内部、外部还是居中。
    请参见 {manhelpi linealignmentstyle G-4} 获取对齐选择列表。

{phang}
{cmd:margin(}{it:marginstyle}{cmd:)}
    指定图例的边框和内容之间的内部边距。有关指定图例周围的外边距，请参见上面的 {cmd:bmargin()} 下的 {it:{help legend_options##content_subopts:与 legend() 和 plegend() 一起使用的内容子选项}}。
    请参见 {manhelpi marginstyle G-4} 获取边距选择列表。

{marker location_subopts}{...}
{title:与 legend() 一起使用的位置子选项}

{phang}
{cmd:off} 和 {cmd:on}
    决定图例是否出现。
    默认是在有多个符号（即标记、线条样式或颜色样本）时为 {cmd:on}。在这些情况下，{cmd:legend(off)} 将抑制图例的显示。

{phang}
{cmd:position(}{it:clockposstyle}{cmd:)},
{cmd:ring(}{it:ringposstyle}{cmd:)}, 和
{cmd:bplacement(}{it:compassdirstyle}{cmd:)}
    覆盖图例的默认位置，通常在绘图区域下方居中。{cmd:position()} 指定图例出现的方向 [{it:sic}]，按时钟面表的小时计算，而 {cmd:ring()} 指定图例与绘图区域的距离。

{pmore}
    {cmd:ring(0)} 定义为在绘图区域内部，允许您将图例放置在绘图内部。{cmd:ring(}{it:k}{cmd:)}, {it:k}>0，指定绘图区域外部位置；{cmd:ring()} 值越大，图例距离绘图区域越远。{cmd:ring()} 值可以是整数或非整数，并被视为序列。

{pmore}
    当指定 {cmd:ring(0)} 时，{cmd:bplacement()} 进一步指定图例放置在绘图区域中的位置。{cmd:bplacement(seast)} 会将图例置于绘图区域的东南（右下）角。

{pmore}
    {cmd:position(12)} 会将图例直接放置在绘图区域上方（假设 {cmd:ring()}>0），{cmd:position(3)} 则直接位于绘图区域的右侧，依此类推。

{pmore}
    请参阅
    {it:{help legend_options##remarks3:图例出现的位置}} 下的 {it:备注}，以及
    {it:{help title_options##remarks3:标题的定位}} 在 {manhelpi title_options G-3} 中对 {cmd:position()} 和 {cmd:ring()} 子选项的更多信息。

{phang}
{cmd:span} 指定图例放置在覆盖整个图形宽度（或高度）的区域，而不是覆盖绘图区域的区域。
    这会影响图例是否相对于绘图区域或整个图形居中。
    请参阅 {it:{help title_options##remarks5:跨越}} 在 {manhelpi title_options G-3} 中关于 {cmd:span} 的更多信息。

{phang}
{cmd:at(}{it:#}{cmd:)}
    仅在同时指定 {it:twoway_option} {cmd:by()} 时使用。它指定图例出现在 {it:#} 第几个位置
    的 {it:RxC} 图形数组中，使用与 {cmd:by(}...{cmd:,} {cmd:holes())} 相同的编码。请参阅
    {it:{help legend_options##remarks5:与 by() 一起使用的图例}} 下的 {it:备注} 和
    {manhelpi by_option G-3}。

{marker remarks}{...}
{title:备注}

{pstd}
备注按以下标题提供：

	{help legend_options##remarks1:图例出现的时间}
	{help legend_options##remarks2:图例的内容}
	{help legend_options##remarks3:图例出现的位置}
	{help legend_options##remarks4:在图例中放置标题}
	{help legend_options##remarks5:与 by() 一起使用的图例}
	{help legend_options##remarks6:与图例相关的问题}


{marker remarks1}{...}
{title:图例出现的时间}

{pstd}
当使用多个符号时，标准图例会出现在图形上，其中符号被广泛定义为包括标记、线和颜色样本（用于填充条）。当您绘制一个只有一个符号的图形时，例如

	{cmd:. sysuse uslifeexp}

	{cmd:. line le year}
	  {it:({stata "gr_example uslifeexp: line le year":click to run})}
{* graph legend1}{...}

{pstd}
图例不会出现。当有多个符号时，会添加图例：

	{cmd:. line le_m le_f year}
	  {it:({stata "gr_example uslifeexp: line le_male le_female year":click to run})}
{* graph legend2}{...}

{pstd}
即使只有一个符号，图例也会构建。只是没有显示。指定 {cmd:legend(on)} 强制显示图例：

	{cmd:. line le year, legend(on)}
	  {it:({stata "gr_example uslifeexp: line le year, legend(on)":click to run})}
{* graph legend3}{...}

{pstd}
类似地，当存在多个符号但不想要图例时，您可以指定 {cmd:legend(off)} 以抑制它：

	{cmd:. line le_m le_f year, legend(off)}
	  {it:({stata "gr_example uslifeexp: line le_male le_female year, legend(off)":click to run})}

{pstd}
任何包含 {helpb twoway contourline:contourline} 图的图形上也会出现 {cmd:plegend()}。


{marker remarks2}{...}
{title:图例的内容}

{pstd}
默认情况下，图例的描述文本来自变量的变量标签；请参见 {manhelp label D}。如果变量没有变量标签，则使用变量名称。在

	{cmd:. line le_m le_f year}

{pstd}
变量 le_m 之前已被标记为 "男性寿命预期"，而变量 le_f 被标记为 "女性寿命预期"。在该图形的图例中，重复 "寿命预期" 是不必要的。如果更改变量的标签，将改进该图形：

	{cmd:. label var le_m "男性"}

	{cmd:. label var le_f "女性"}

	{cmd:. line le_m le_f year}

{pstd}
我们还可以指定 {cmd:label()} 子选项以更改描述文本。我们在不重新命名变量的情况下获得相同的视觉效果：

{phang2}
	{cmd:. line le_m le_f year, legend(label(1 "男性") label(2 "女性"))}
{p_end}
	  {it:({stata `"gr_example uslifeexp: line le_male le_female year, legend(label(1 "男性") label(2 "女性"))"':click to run})}
{* graph legend5}{...}

{pstd}
{cmd:contourline} 图例的描述文本是 {it:z} 变量的等高线值。

{marker remarks3}{...}
{title:图例出现的位置}

{pstd}
默认情况下，标准图例出现在绘图下方居中，技术上称为 {cmd:position(6)} {cmd:ring(3)}。默认情况下，{cmd:plegends()} 出现在绘图区域右侧，位于 {cmd:position(3)} {cmd:ring(4)}。子选项 {cmd:position()} 和 {cmd:ring()} 指定图例的位置。{cmd:position()} 指定图例出现在绘图区域的哪一侧—— {cmd:position(6)} 表示 6 点钟方向——而 {cmd:ring()} 指定与绘图区域的距离—— {cmd:ring(3)} 表示距离 {it:title_option} {cmd:b2title()} 更远，但仍在 {it:title_option} {cmd:note()} 内；请参见 {manhelpi title_options G-3}。

{pstd}
如果我们指定 {cmd:legend(position(3))}，则图例移动到 3 点钟位置：

	{cmd:. line le_m le_f year, legend(pos(3))}
	  {it:({stata "gr_example uslifeexp: line le_male le_female year, legend(pos(3))":click to run})}
{* graph legend6}{...}

{pstd}
这可能并不是我们想要的，但这是我们所请求的。图例被移到图形的右侧，由于图例的大小，图形变得压缩以适应。当您将图例移动到侧面时，您通常还希望指定 {cmd:col(1)} 选项：

	{cmd:. line le_m le_f year, legend(pos(3) col(1))}
	  {it:({stata "gr_example uslifeexp: line le_male le_female year, legend(pos(3) col(1))":click to run})}
{* graph legend7}{...}

{pstd}
从语法上讲，我们可以用两个 {cmd:legend()} 选项输入上述命令

{phang2}
	{cmd:. line le_m le_f year, legend(pos(3)) legend(col(1))}

{pstd}
而不是一个组合命令：{cmd:legend(pos(3) col(1))}。
无论哪种方式，我们都会得到相同的结果。

{pstd}
如果我们忽略语法，以上图形的外观会更好一些，文字描述少一点，

	{cmd:. line le_m le_f year, legend(pos(3) col(1)}
				       {cmd:lab(1 "男性") lab(2 "女性"))}
	  {it:({stata `"gr_example uslifeexp: line le_m le_f year, legend(pos(3) col(1) lab(1 "男性") lab(2 "女性"))"':click to run})}
{* graph legend8}{...}

{pstd}
我们还可以通过指定 {cmd:stack} 子选项进一步减少图例所需的宽度：

	{cmd:. line le_m le_f year, legend(pos(3) col(1)}
				       {cmd:lab(1 "男性") lab(2 "女性") stack)}
	  {it:({stata `"gr_example uslifeexp: line le_m le_f year, legend(pos(3) col(1) lab(1 "男性") lab(2 "女性") stack)"':click to run})}
{* graph legend9}{...}

{pstd}
我们可以通过在第一和第二个键之间放置一个空行使其看起来更好：

	{cmd:. line le_m le_f year, legend(pos(3) col(1)}
				       {cmd:lab(1 "男性") lab(2 "女性") stack}
				       {cmd:order(1 - " " 2))}
	  {it:({stata `"gr_example uslifeexp: line le_m le_f year, legend(pos(3) col(1) lab(1 "男性") lab(2 "女性") stack order(1 - " " 2))"':click to run})}
{* graph legend10}{...}

{pstd}
{cmd:ring()}——指定与绘图区域的距离的子选项——很少指定，但当它被指定时，{cmd:ring(0)} 是最有用的。{cmd:ring(0)} 指定将图例移动到绘图区域内部：

	{cmd:. line le_m le_f year, legend(pos(5) ring(0) col(1)}
				       {cmd:lab(1 "男性") lab(2 "女性"))}
	  {it:({stata `"gr_example uslifeexp: line le_m le_f year, legend(pos(5) ring(0) col(1) lab(1 "男性") lab(2 "女性"))"':click to run})}
{* graph legend11}{...}

{pstd}
我们对 {cmd:position(5) ring(0)} 的使用将图例放置在绘图区域内部，在 5 点钟，意味着在右下角。如果我们指定了 {cmd:position(2) ring(0)}，图例将在左上角出现。

{pstd}
现在，我们可以为图例添加一些背景色：

	{cmd:. line le_m le_f year, legend(pos(5) ring(0) col(1)}
				       {cmd:lab(1 "男性") lab(2 "女性")}
				       {cmd:region(fcolor(gs15)))}
	  {it:({stata `"gr_example uslifeexp: line le_m le_f year, legend(pos(5) ring(0) col(1) lab(1 "男性") lab(2 "女性") region(fcolor(gs15)))"':click to run})}
{* graph legend12}{...}


{marker remarks4}{...}
{title:在图例上放置标题}

{pstd}
图例可以包括标题：

	{cmd:. line le_m le_f year, legend(pos(5) ring(0) col(1)}
				       {cmd:lab(1 "男性") lab(2 "女性")}
				       {cmd:region(fcolor(gs15)))}
			       {cmd:legend(subtitle("图例"))}
	  {it:({stata `"gr_example uslifeexp: line le_m le_f year, legend(pos(5) ring(0) col(1) lab(1 "男性") lab(2 "女性") region(fcolor(gs15))) legend(subtitle("图例"))"':click to run})}
{* graph legend13}{...}


{pstd}
在这里我们指定了 {cmd:subtitle()} 而不是 {cmd:title()}，因为当我们尝试 {cmd:title()} 时，它似乎太大。

{pstd}
图例也可以包含 {cmd:notes()} 和 {cmd:captions()}；请参见 
{manhelpi title_options G-3}。


{* legends, use with by() tt}{...}
{* index by() tt, use of legends with}{...}
{marker use_of_legends_with_by}{...}
{marker remarks5}{...}
{title:与 by() 一起使用图例}

{pstd}
如果您希望图例位于默认位置，则在使用 {cmd:by()} 时无需采取特殊操作：

	{cmd:. sysuse auto, clear}

{phang2}
	{cmd:. scatter mpg weight || lfit mpg weight ||, by(foreign, total row(1))}
{p_end}
	  {it:({stata "gr_example auto: scatter mpg weight || lfit mpg weight ||, by(foreign, total row(1))":click to run})}
{* graph legend14}{...}

{pstd}
但是，如果您希望移动图例，则必须区分 {cmd:legend(}{it:contents}{cmd:)} 和 {cmd:legend(}{it:location}{cmd:)}。
前者必须在 {cmd:by()} 之外。后者出现在 {cmd:by()} 内：

	{cmd:. scatter mpg weight || lfit mpg weight ||,}
		  {cmd:legend(cols(1))}
		  {cmd:by(foreign, total legend(pos(4)))}
	  {it:({stata "gr_example auto: scatter mpg weight || lfit mpg weight ||, legend(cols(1)) by(foreign, total legend(pos(4)))":click to run})}
{* graph legend15}{...}

{pstd}
{cmd:legend(col(1))} 被置于我们通常放置它的位置，即未指定 {cmd:by()} 的地方，但 {cmd:legend(pos(4))} 被移入 {cmd:by()} 选项内。
我们这样做是因为 {cmd:cols()} 子选项在语法图中记录在 {it:contents} 下，而 {cmd:position()} 在 {it:location} 下记录。逻辑是，在构造单个图形时，它们必须知道生成的键的样式。然而，键的放置是在整体图形组装时发生的，因此您必须告知 {cmd:by()} 键应放置的位置。假如我们忘记了这一区别，仅输入

	{cmd:. scatter mpg weight || lfit mpg weight ||,}
		  {cmd:legend(cols(1) pos(4))}
		  {cmd:by(foreign, total)}

{pstd}
则 {cmd:cols(1)} 子选项会被忽略。

{pstd}
另一个 {it:location} 子选项用于 {cmd:by()}：{cmd:at(}{it:#}{cmd:)}。您指定此选项以告知 {cmd:by()} 在其创建的 {it:RxC} 数组内部放置图例：

	{cmd:. scatter mpg weight || lfit mpg weight ||,}
		  {cmd:legend(cols(1))}
		  {cmd:by(foreign, total legend(at(4) pos(0)))}
	  {it:({stata "gr_example auto: scatter mpg weight || lfit mpg weight ||, legend(cols(1)) by(foreign, total legend(at(4) pos(0)))":click to run})}
{* graph legend16}{...}

{pstd}
在上面，我们指定了 {cmd:at(4)} ，表示键将出现在 2{it:x}2 数组的第四个位置，并且我们指定了 {cmd:pos(0)}，将键移动到单元内的中间（0 点钟）位置。

{pstd}
如果您希望抑制图例，则必须在 {cmd:by()} 选项中指定 {cmd:legend(off)}：

	{cmd:. scatter mpg weight || lfit mpg weight ||,}
		  {cmd:by(foreign, total legend(off))}


{* index legends, problems}{...}
{marker remarks6}{...}
{title:由于图例引起的问题}

{pstd}
与图例相关的两个潜在问题是：

{phang2}
    1.  文本可能流出图例框的边界。

{phang2}
    2.  图例的存在可能导致 {it:y} 轴的标题与轴上标记的值重叠。

{pstd}
第一个问题的出现是因为 Stata 使用近似值来获取文本行的宽度。解决方案之一是指定
{cmd:region(margin())} 以在图例周围添加边距空间：

{phang2}
	{cmd:. graph} ...{cmd:,} ... {cmd:legend(region(margin(}{it:marginstyle}{cmd:)))}

{pstd}
还有其他解决方案可用，如 {cmd:rows()} 和 {cmd:cols()}；请参见 {help legend_options##syntax:{it:语法}}。

{pstd}
第二个问题的出现是当图例位于其默认 {cmd:position(6)}（6 点钟）位置，并且一个或多个键的描述文本较长时。在 {cmd:position(6)} 中，键的边界预计与绘图区域的边界对齐。通常，绘图区域的宽度大于键，因此键会扩展以适应其下方。然而，当键的宽度大于绘图区域时，是绘图区域变宽。随着绘图区域的扩展，它将侵占其两侧的任何内容，即 y 轴标签和标题。边距将消失。在极端情况下，标题将打印在标签上方，而标签本身可能最终会在轴上方！

{pstd}
解决此问题的方法是缩短描述文本，方法是使用更少的单词或将较长的描述拆分为多行。使用
{cmd:legend(label(}{it:#} {cmd:"}{it:text}{cmd:"))} 选项来修改描述文本中最长的行。
{p_end}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <legend_options.sthlp>}