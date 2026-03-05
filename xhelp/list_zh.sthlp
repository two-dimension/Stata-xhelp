{smcl}
{* *! version 1.1.15  17may2019}{...}
{viewerdialog list "dialog list"}{...}
{vieweralsosee "[D] list" "mansection D list"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[P] display" "help display_zh"}{...}
{vieweralsosee "[D] edit" "help edit_zh"}{...}
{vieweralsosee "[P] tabdisp" "help tabdisp_zh"}{...}
{vieweralsosee "[R] table" "help table_zh"}{...}
{viewerjumpto "语法" "list_zh##syntax"}{...}
{viewerjumpto "菜单" "list_zh##menu"}{...}
{viewerjumpto "描述" "list_zh##description"}{...}
{viewerjumpto "PDF文档链接" "list_zh##linkspdf"}{...}
{viewerjumpto "选项" "list_zh##options"}{...}
{viewerjumpto "备注" "list_zh##remarks"}{...}
{viewerjumpto "示例" "list_zh##examples"}
{help list:English Version}
{hline}{...}
{p2colset 1 13 15 2}{...}
{p2col:{bf:[D] list} {hline 2}}列出变量的值{p_end}
{p2col:}({mansection D list:查看完整PDF手册条目}){p_end}
{p2colreset}{...}


{marker syntax}{...}
{title:语法}

{p 8 14 2}
{opt l:ist} [{it:{help varlist_zh}}] {ifin} [{cmd:,} {it:options}]

{p 8 14 2}
{opt fl:ist} 相当于带有 {opt fast} 选项的 {cmd:list}。

{synoptset 21 tabbed}{...}
{synopthdr}
{synoptline}
{syntab :主要}
{synopt :{opt c:ompress}}压缩表格和显示格式中的列宽{p_end}
{synopt :{opt noc:ompress}}使用每个变量的显示格式{p_end}
{synopt :{opt fast}}同义词 {opt nocompress}；不延迟在大型数据集的输出{p_end}
{synopt :{opt ab:breviate(#)}}将变量名缩写为 {it:#} 
{help u_glossary##disambig:显示列};
默认值为 {cmd:ab(8)}{p_end}
{synopt :{opt str:ing(#)}}将字符串变量截断为 {it:#} 
{help u_glossary##disambig:显示列}{p_end}
{synopt :{opt noo:bs}}不列出观测数字{p_end}
{synopt :{opt fvall}}显示因子变量的所有水平{p_end}

{syntab :选项}
{synopt :{opt t:able}}强制使用表格格式{p_end}
{synopt :{opt d:isplay}}强制使用显示格式{p_end}
{synopt :{opt h:eader}}只显示一次变量标题；默认是表格模式{p_end}
{synopt :{opt noh:eader}}抑制变量标题{p_end}
{synopt :{opt h:eader(#)}}每 {it:#} 行显示一次变量标题{p_end}
{synopt :{opt clean}}强制表格格式，不使用分隔符或分隔线{p_end}
{synopt :{opt div:ider}}在列之间绘制分隔线{p_end}
{synopt :{opt sep:arator(#)}}每 {it:#} 行绘制一条分隔线；默认值为 
{cmd:separator(5)}{p_end}
{synopt :{opth sepby:(varlist:varlist2)}}在 {it:varlist2} 值改变时绘制分隔线{p_end}
{synopt :{opt nol:abel}}显示数字代码，而不是标签值{p_end}

{syntab :总结}
{synopt :{opt mean}[{cmd:(}{it:{help varlist_zh:varlist2}}{cmd:)}]}添加一行报告
    指定变量的平均值{p_end}
{synopt :{opt sum}[{cmd:(}{it:{help varlist_zh:varlist2}}{cmd:)}]}添加一行报告
           指定变量的总和{p_end}
{synopt :{opt N}[{cmd:(}{it:{help varlist_zh:varlist2}}{cmd:)}]}添加一行报告
            指定变量的非缺失值数量{p_end}
{synopt :{opth labv:ar(varname)}}在表格最后一行用 {opt Mean}、{opt Sum} 或 
{opt N} 替换 {it:varname} 的值{p_end}

{syntab :高级}
{synopt :{opt con:stant}[{cmd:(}{it:{help varlist_zh:varlist2}}{cmd:)}]}将仅变化一次的常量变量分开列出{p_end}
{synopt :{opt notr:im}}抑制字符串修剪{p_end}
{synopt :{opt abs:olute}}在使用 
{help by_zh:{bf:by} {it:varlist}{bf::}} 时显示总体观测数字{p_end}
{synopt :{opt nodotz}}将等于 {cmd:.z} 的数值显示为空白字段{p_end}
{synopt :{opt subvar:name}}在标题中替换变量名的特征{p_end}
{synopt :{opt line:size(#)}}每行的列数；默认值为 
{cmd:linesize(79)}{p_end}
{synoptline}
{p2colreset}{...}
{p 4 6 2}{it:varlist} 可能包含因子变量；请参见 {help fvvarlist_zh}。{p_end}
{p 4 6 2}{it:varlist} 可能包含时间序列运算符；请参见 {help tsvarlist_zh}。{p_end}
{p 4 6 2}{opt by} 与 {cmd:list} 一起使用是允许的；请参见 {manhelp by D}。

{marker menu}{...}
{title:菜单}

{phang}
{bf:数据 > 描述数据 > 列出数据}

{marker description}{...}
{title:描述}

{pstd}
{cmd:list} 显示变量的值。如果未指定 {varlist}，则显示所有变量的值。另请参见 {cmd:browse} 在 {manhelp edit D} 中。

{marker linkspdf}{...}
{title:PDF文档链接}

        {mansection D listQuickstart:快速开始}

        {mansection D listRemarksandexamples:备注和示例}

{pstd}
上述各节不包括在此帮助文件中。


{marker options}{...}
{title:选项}

{dlgtab:主要}

{phang}
{opt compress} 和 {opt nocompress} 改变表格和显示格式中列的宽度。默认情况下，{cmd:list} 检查数据并为每个变量分配所需的宽度。例如，一个变量可能是带有 %18s 格式的字符串，而最长字符串仅为 12 个字符。或者一个数值变量可能有 %9.0g 格式，但鉴于实际存在的值，最宽的数字只需四列。

{pmore}
{opt nocompress} 阻止 {cmd:list} 检查数据。宽度将根据每个变量的 {help format_zh:显示格式} 设置。当未指定 {opt nocompress} 时，输出通常看起来更好，但对于非常大的数据集（比如 1,000,000 个观测值或更多），{opt nocompress} 可以加速 {cmd:list} 的执行。

{pmore}
{opt compress} 允许 {cmd:list} 进行比一般情况下更多的压缩，告诉 {cmd:list} 将变量名缩写为少于八个字符。

{phang}
{opt fast} 是 {opt nocompress} 的同义词。{opt fast} 对于那些希望在没有延迟的情况下查看输出的大型数据集使用者来说可能很有吸引力。

{phang}
{opt abbreviate(#)} 是 {opt compress} 的一种替代方式，允许你指定要考虑的变量名称的最小缩写。例如，如果你希望变量名不小于 16 个字符，可以指定 {cmd:abbreviate(16)} 
{help u_glossary##disambig:显示列}。
对于大多数用户，显示列的数量等于字符的数量。但是，一些语言，如中文、日文和韩文（CJK），每个字符需要两个显示列。

{phang}
{opt string(#)} 指定当列出字符串变量时将其截断为 {it:#}
{help u_glossary##disambig:显示列} 在输出中。任何被截断的值将附加 "{cmd:..}" 来指示截断。{opt string()} 便于展示长字符串的一部分。

{phang}
{opt noobs} 抑制观测数字的列出。

{phang}
{opt fvall} 指定在确定任何在 {varlist} 中指定的因子变量的水平时使用整个数据集。默认是通过仅使用 {cmd:if} 和 {cmd:in} 限定符中的观测值来确定水平数量。

{dlgtab:选项}

{phang}
{opt table} 和 {opt display} 决定输出的样式。默认情况下，{cmd:list} 根据你的屏幕宽度和如果你指定了 {opt linesize()} 选项来决定使用 {opt table} 还是 {opt display}。

{pmore}
{opt table} 强制使用表格格式。当 {cmd:list} 本来会选择其他格式时，强制使用表格格式通常会产生难以阅读的输出，因为有换行。然而，如果你正在 {help log_zh:记录输出} 为 SMCL 格式，并打算稍后在宽纸上打印输出，指定 {opt table} 可能是合理的选择。

{pmore}
{opt display} 强制使用显示格式。

{phang}
{opt header}、{opt noheader} 和 {opt header(#)} 指定变量标题的显示方式。

{pmore}
{opt header} 是表格模式下的默认设置，并一次性显示变量标题，在表格顶部。

{pmore}
{opt noheader} 完全抑制标题。

{pmore}
{opt header(#)} 每 {it:#} 个观测值重新显示变量标题。例如，{cmd:header(10)} 将每 10 个观测值显示一次新标题。

{pmore}
显示模式下的默认设置是与数据交织显示变量名称：

	     {txt}{c TLC}{hline 13}{c TT}{hline 7}{c TT}{hline 5}{c TT}{hline 8}{c TT}{hline 11}{c TT}{hline 8}{c TRC}
	  1. {c |} make        {c |} price {c |} mpg {c |} rep78  {c |} headroom  {c |} trunk  {c |}
	     {c |} {res}AMC Concord {txt}{c |} {res}4,099 {txt}{c |} {res} 22 {txt}{c |} {res}    3  {txt}{c |} {res}     2.5  {txt}{c |} {res}   11  {txt}{c |}
	     {c LT}{hline 8}{c TT}{hline 4}{c BT}{hline 3}{c TT}{hline 3}{c BT}{hline 2}{c TT}{hline 2}{c BT}{hline 7}{c TT}{c BT}{hline 9}{c TT}{hline 1}{c BT}{hline 8}{c RT}
	     {c |} weight {c |} length {c |} turn {c |} displa~t {c |} gear_r~o {c |}  foreign {c |}
	     {c |} {res} 2,930 {txt}{c |} {res}   186 {txt}{c |} {res}  40 {txt}{c |} {res}     121 {txt}{c |} {res}    3.58 {txt}{c |} {res}Domestic {txt}{c |}
	     {c BLC}{hline 8}{c BT}{hline 8}{c BT}{hline 6}{c BT}{hline 10}{c BT}{hline 10}{c BT}{hline 10}{c BRC}

{pmore}
但是，如果你指定 {opt header}，标题将在表格顶部一次性显示：

	     {txt}{c TLC}{hline 13}{c TT}{hline 7}{c TT}{hline 5}{c TT}{hline 8}{c TT}{hline 11}{c TT}{hline 8}{c TRC}
	     {c |} make        {c |} price {c |} mpg {c |} rep78  {c |} headroom  {c |} trunk  {c |}
	     {c LT}{hline 8}{c TT}{hline 4}{c BT}{hline 3}{c TT}{hline 3}{c BT}{hline 2}{c TT}{hline 2}{c BT}{hline 7}{c TT}{c BT}{hline 9}{c TT}{hline 1}{c BT}{hline 8}{c RT}
	     {c |} weight {c |} length {c |} turn {c |} displa~t {c |} gear_r~o {c |}  foreign {c |}
	     {c BLC}{hline 8}{c BT}{hline 8}{c BT}{hline 6}{c BT}{hline 10}{c BT}{hline 10}{c BT}{hline 10}{c BRC}

{phang}
{opt clean} 是强制表格格式且希望在屏幕上生成更可读输出的更好选择。
{opt clean} 意味着 {opt table}，并且去除所有分隔和分割线，这使得换行的表格输出几乎难以阅读。

{phang}
{opt divider}、{opt separator(#)} 和 {opth sepby:(varlist:varlist2)} 指定分隔符和分隔线的显示方式。 这三个选项仅影响表格格式。

{pmore}
{opt divider} 指定在列之间绘制分隔线。 默认设置为 {opt nodivider}。

{pmore}
{opt separator(#)} 和 {opt sepby(varlist2)} 指示何时应在行之间绘制分隔线。

{pmore}
{opt separator(#)} 指定在行之间应该多频繁绘制分隔线。 默认设置为 {cmd:separator(5)}，即每 5 个观测值。你可以指定 {cmd:separator(0)} 完全抑制分隔线。

{pmore}
{opt sepby(varlist2)} 指定每当 {opt sepby(varlist2)} 中的任何变量值改变时应绘制一条分隔线；可以指定最多 10 个变量。 你不需要确保在发出 {cmd:list} 命令之前数据已按 {opt sepby(varlist2)} 排序。 {opt sepby(varlist2)} 中的变量也不必在正在列出的变量中。

{phang}
{opt nolabel} 指定显示数字代码，而不是标签值。

{dlgtab:总结}

{phang}
{opt mean}、{opt sum}、{opt N}、{opth mean:(varlist:varlist2)}、{opt sum(varlist2)} 和 {opt N(varlist2)} 均指定
要添加行到输出报告平均值、总和或指定变量的非缺失值数量。如果不指定变量，则在 {cmd:list} 后跟随的 {it:varlist} 中的所有数值变量将被使用。

{phang}
{opth labvar(varname)} 用于与 {opt mean}[{cmd:()}]、{opt sum}[{cmd:()}] 和 {opt N}[{cmd:()}] 一同使用。{cmd:list} 在通常会显示观测数值的地方显示 {opt Mean}、{opt Sum} 或 {opt N} 以指示表的结束处——在这里一行代表计算的平均值、总和或观测数。

{pmore}
{opt labvar(varname)} 更改这一点。相反， {opt Mean}、{opt Sum} 或 
{opt N} 在 {it:varname} 的值应当显示的地方显示。例如，你可能输入

  	    {cmd}. list group costs profits, sum(costs profits) labvar(group)
	{txt}
	         {c TLC}{hline 7}{c -}{hline 7}{c -}{hline 9}{c TRC}
	         {c |} {res}group   costs   profits {txt}{c |}
    	         {c LT}{hline 7}{c -}{hline 7}{c -}{hline 9}{c RT}
	      1. {c |} {res}    1      47         5 {txt}{c |}
	      2. {c |} {res}    2     123        10 {txt}{c |}
	      3. {c |} {res}    3      22         2 {txt}{c |}
	         {c LT}{hline 7}{c -}{hline 7}{c -}{hline 9}{c RT}
	         {c |}   Sum   {res}  192        17 {txt}{c |}
	         {c BLC}{hline 7}{c -}{hline 7}{c -}{hline 9}{c BRC}

{pmore}
然后还可以指定 {opt noobs} 选项以抑制观测数字。

{dlgtab:高级}

{phang}
{opt constant} 和 {opth constant:(varlist:varlist2)} 指定不逐观测变化的变量被分开并仅列出一次。

{pmore}
{opt constant} 指定 {cmd:list} 自行决定哪些变量是常量。

{pmore}
{opt constant(varlist2)} 允许你指定希望单独列出哪些常量变量。 {cmd:list} 验证所指定的变量是否确实是常量，并且如果不是则发出错误消息。

{pmore}
{opt constant} 和 {opt constant()} 尊重 {help if_zh:{bf:if} {it:exp}} 和 {help in_zh:{bf:in} {it:range}}。如果你输入

{pmore2}
{cmd:. list if group==3}

{pmore}
变量 {opt x} 可能在所选观测中是常量，尽管该变量在整个数据集中变化。

{phang}
{opt notrim} 影响字符串变量的列出方式。 默认情况下，字符串在屏幕宽度（或 {opt linesize()}，如果你指定了）所暗示的最宽列的宽度处被修剪。 {opt notrim} 指定字符串不被修剪。 {opt notrim} 意味着 {opt clean}（见上文）并且实际上等同于 {opt clean} 选项，因此指定任何一个都没有区别。

{phang}
{opt absolute} 仅在 {cmd:list} 以 {help by_zh:{bf:by} {it:varlist}{bf::}} 前缀时影响输出。 观测号码被显示，但是使用的是总体观测数字，而不是每个by组内的观测数字。例如，如果第一组有4个观测值，第二组有2个，则默认情况下，观测值编号为 1、2、3、4 和 1、2。如果指定了 {opt absolute}，观测值将编号为 1、2、3、4 和 5、6。

{phang}
{opt nodotz} 是一个程序员选项，指定等于 {cmd:.z} 的数字值被列为一段空白，而不是 {cmd:.z}。

{phang}
{opt subvarname} 是一个程序员选项。如果一个变量拥有特征 {it:var}{cmd:[varname]} 设置，则该特征的内容将在标题中用作变量名称。

{phang}{marker linesize()}
{opt linesize(#)} 指定用于确定应使用表格格式还是显示格式的页面宽度，以及格式化结果表格的宽度。 指定一个比屏幕宽度更宽的 {opt linesize()} 值可能会在屏幕上产生极其丑陋的输出，但这些输出在你记录日志并计划稍后在宽打印机上打印日志时可能会非常有用。

{marker remarks}{...}
{title:备注}

{pstd}
单独输入 {cmd:list} 会列出数据集中的所有观测和变量。如果指定 {it:varlist}，则只列出那些变量。指定 {help in_zh:{bf:in} {it:range}} 和 {help if_zh:{bf:if} {it:exp}} 之一或两者可以限制列出的观测。

{pstd}
{cmd:list} 尊重行大小。也就是说，如果你在运行 {cmd:list} 之前调整了结果窗口的大小（在 Stata 的窗口版本中），它将利用可用的水平空间。 Stata for Unix(console) 用户可以使用 {helpb linesize:set linesize} 命令利用此功能。

{pstd}
{cmd:list} 可能不会显示所有大型字符串。你有两个选择：
1）你可以指定 {cmd:clean} 选项，这将生成不同的、不太吸引人的列表，或者 2）你可以增加行大小，正如上文所讨论的 {help list##linesize:}。

{pstd}
{cmd:list} 具有两种输出格式，称为表格和显示。 表格格式适合列出少量变量，而显示格式适合列出无限数量的变量。 Stata 自动选择这两种格式，或者你可以指定 {opt table} 或 {opt display} 选项。 表格格式看起来是这样的：

	{cmd}. list make-rep78 in 1/4, table
	{txt}
	     {c TLC}{hline 15}{c -}{hline 7}{c -}{hline 5}{c -}{hline 7}{c TRC}
	     {c |} {res}make            price   mpg   rep78 {txt}{c |}
	     {c LT}{hline 15}{c -}{hline 7}{c -}{hline 5}{c -}{hline 7}{c RT}
	  1. {c |} {res}AMC Concord     4,099    22       3 {txt}{c |}
	  2. {c |} {res}AMC Pacer       4,749    17       3 {txt}{c |}
	  3. {c |} {res}AMC Spirit      3,799    22       . {txt}{c |}
	  4. {c |} {res}Buick Century   4,816    20       3 {txt}{c |}
	     {c BLC}{hline 15}{c -}{hline 7}{c -}{hline 5}{c -}{hline 7}{c BRC}

{pstd}
显示格式看起来是这样的：

	{cmd}. list in 1/2, display

	     {txt}{c TLC}{hline 13}{c TT}{hline 7}{c TT}{hline 5}{c TT}{hline 8}{c TT}{hline 11}{c TT}{hline 8}{c TRC}
	  1. {c |} make        {c |} price {c |} mpg {c |} rep78  {c |} headroom  {c |} trunk  {c |}
	     {c |} {res}AMC Concord {txt}{c |} {res}4,099 {txt}{c |} {res} 22 {txt}{c |} {res}    3  {txt}{c |} {res}     2.5  {txt}{c |} {res}   11  {txt}{c |}
	     {c LT}{hline 8}{c TT}{hline 4}{c BT}{hline 3}{c TT}{hline 3}{c BT}{hline 2}{c TT}{hline 2}{c BT}{hline 7}{c TT}{c BT}{hline 9}{c TT}{hline 1}{c BT}{hline 8}{c RT}
	     {c |} weight {c |} length {c |} turn {c |} displa~t {c |} gear_r~o {c |}  foreign {c |}
	     {c |} {res} 2,930 {txt}{c |} {res}   186 {txt}{c |} {res}  40 {txt}{c |} {res}     121 {txt}{c |} {res}    3.58 {txt}{c |} {res}Domestic {txt}{c |}
	     {c BLC}{hline 8}{c BT}{hline 8}{c BT}{hline 6}{c BT}{hline 10}{c BT}{hline 10}{c BT}{hline 10}{c BRC}

	     {c TLC}{hline 13}{c TT}{hline 7}{c TT}{hline 5}{c TT}{hline 8}{c TT}{hline 11}{c TT}{hline 8}{c TRC}
	  2. {c |} make        {c |} price {c |} mpg {c |} rep78  {c |} headroom  {c |} trunk  {c |}
	     {c |} {res}AMC Pacer   {txt}{c |} {res}4,749 {txt}{c |} {res} 17 {txt}{c |} {res}    3  {txt}{c |} {res}     3.0  {txt}{c |} {res}   11  {txt}{c |}
	     {c LT}{hline 8}{c TT}{hline 4}{c BT}{hline 3}{c TT}{hline 3}{c BT}{hline 2}{c TT}{hline 2}{c BT}{hline 7}{c TT}{c BT}{hline 9}{c TT}{hline 1}{c BT}{hline 8}{c RT}
	     {c |} weight {c |} length {c |} turn {c |} displa~t {c |} gear_r~o {c |}  foreign {c |}
	     {c |} {res} 3,350 {txt}{c |} {res}   173 {txt}{c |} {res}  40 {txt}{c |} {res}     258 {txt}{c |} {res}    2.53 {txt}{c |} {res}Domestic {txt}{c |}
	     {c BLC}{hline 8}{c BT}{hline 8}{c BT}{hline 6}{c BT}{hline 10}{c BT}{hline 10}{c BT}{hline 10}{c BRC}


{marker examples}{...}
{title:示例}

{phang}{cmd:. sysuse auto}{p_end}
{phang}{cmd:. list}{p_end}
{phang}{cmd:. list in 1/10}{p_end}
{phang}{cmd:. list mpg weight}{p_end}
{phang}{cmd:. list mpg weight in 1/20}{p_end}
{phang}{cmd:. list if mpg>20}{p_end}
{phang}{cmd:. list mpg weight if mpg>20}{p_end}
{phang}{cmd:. list mpg weight if mpg>20 in 1/10}

{phang}{cmd:. by rep78, sort: list, constant}{p_end}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <list.sthlp>}