{smcl}
{* *! version 1.2.6  09dec2014}{...}
{findalias asfrvarlists}{...}
{vieweralsosee "" "--"}{...}
{findalias asfrsyntax}{...}
{findalias asfrvarabbrev}{...}
{vieweralsosee "[U] 11 语言语法" "help language_zh"}{...}
{vieweralsosee "[U] 11.1.8 数字列表" "help numlist_zh"}{...}
{vieweralsosee "[U] 11.4.2 新变量列表" "help newvarlist_zh"}{...}
{vieweralsosee "[U] 11.4.3 因子变量" "help fvvarlist_zh"}{...}
{vieweralsosee "[U] 11.4.4 时间序列变量列表" "help tsvarlist_zh"}{...}
{vieweralsosee "[U] 13.7 显式下标" "help subscripting_zh"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[TS] tsset" "help tsset_zh"}{...}
{viewerjumpto "描述" "varlist_zh##description"}{...}
{viewerjumpto "示例" "varlist_zh##examples"}
{help varlist:English Version}
{hline}{...}
{title:标题}

    {findalias frvarlists}


{marker description}{...}
{title:描述}

{pstd}
{it:varlist} 是变量名称的列表。{it:varlist}中的 {mansection U 11.3命名约定:变量名} 所指的是新（尚未创建）变量或现有变量。{it:{help newvarlist_zh}} 始终仅指新（尚未创建）变量。类似地，{it:varname} 指一个变量，不论是现有的还是尚未创建的。{it:newvar} 始终指一个新变量。

{pstd}
有时一个命令会以另一种方式引用变量名称，例如 "{it:groupvar}"。这仍然是一个变量名称。使用不同的名称是为了给你提供关于该变量用途的额外提示。例如，{it:groupvar} 是定义数据中组的变量的名称。Stata 中对 {it:varname} 或 {it:varlist} 的其他常见引用方式包括

{phang2}
    {it:depvar}，表示估计命令的因变量；

{phang2}
    {it:indepvars}，表示包含估计命令的自变量的 {it:varlist}；

{phang2}
    {it:xvar}，表示连续实变量，通常在图形的 x 轴上绘制；

{phang2}
    {it:yvar}，表示是 {it:xvar} 的函数的变量，通常在图形的 y 轴上绘制；

{phang2}
    {it:clustvar}，表示识别观察值所属于的簇或组的数字变量；

{phang2}
    {it:panelvar}，表示在面板数据中识别面板的数字变量，也称为横截面时间序列数据；以及

{phang2}
    {it:timevar}，表示具有 {cmd:%td}、{cmd:%tc} 或 {cmd:%tC} 格式的数字变量。

{pstd}
示例包括

{p 8 34 2}{cmd:myvar} {space 17} 仅一个变量{p_end}
{p 8 34 2}{cmd:myvar thisvar thatvar} {space 1} 三个变量{p_end}
{p 8 34 2}{cmd:myvar*} {space 16} 以 {cmd:myvar} 开头的变量{p_end}
{p 8 34 2}{cmd:*var} {space 18} 以 {cmd:var} 结尾的变量{p_end}
{p 8 34 2}{cmd:my*var} {space 16} 以 {cmd:my} 开头并以 {cmd:var} 结尾的变量，中间可以有任意数量的其他字符{p_end}
{p 8 34 2}{cmd:my~var} {space 16} 仅一个以 {cmd:my} 开头并以 {cmd:var} 结尾的变量，中间可以有任意数量的其他字符{p_end}
{p 8 34 2}{cmd:my?var} {space 16} 以 {cmd:my} 开头并以 {cmd:var} 结尾，且中间有一个其他字符的变量{p_end}
{p 8 34 2}{cmd:myvar1-myvar6} {space 9} {cmd:myvar1}、{cmd:myvar2}、...、{cmd:myvar6} (可能){p_end}
{p 8 34 2}{cmd:this-that} {space 13} 变量 {cmd:this} 到 {cmd:that}，包含两者{p_end}

{pstd}
{cmd:*} 字符表示匹配一个或多个字符。所有符合模式的变量都会被返回。

{pstd}
{cmd:~} 字符也表示匹配一个或多个字符，但与 {cmd:*} 不同，只允许一个变量匹配。如果匹配多个变量，会出现错误信息。

{pstd}
{cmd:?} 字符匹配一个字符。所有符合模式的变量都会被返回。

{pstd}
{cmd:-} 字符表示从左侧的变量开始，到右侧的变量结束，返回所有这些变量。

{pstd}
许多命令理解关键字 {cmd:_all} 表示所有变量。如果没有指定变量，一些命令默认使用所有变量。

{pstd}
因子变量是现有变量的变量列表的扩展。当命令允许因子变量时，除了输入数据中的变量名称外，还可以使用因子变量运算符输入因子变量。

{pstd}
因子变量从分类变量创建指示变量、分类变量指示的交互作用、分类和连续变量的交互作用，以及连续变量的交互作用（多项式）。

{pstd}
共有五个因子变量运算符：

{p2colset 10 19 21 2}{...}
{p2col:运算符} 描述{p_end}
{p2line}
{p2col:{cmd:i.}} 一元运算符，用于指定指示器{p_end}
{p2col:{cmd:c.}} 一元运算符，用于将其视为连续{p_end}
{p2col:{cmd:o.}} 一元运算符，用于省略变量或指示器{p_end}
{p2col:{cmd:#}}  二元运算符，用于指定交互作用{p_end}
{p2col:{cmd:##}} 二元运算符，用于指定因子交互作用{p_end}
{p2line}
{p2colreset}{...}

{pstd}
有关因子变量的完整语法和用法，请参见 {help fvvarlist_zh}。

{pstd}
时间序列 {it:varlists} 是现有变量 {it:varlists} 的一种变体。当命令允许时间序列 {it:varlist} 时，您可以包含时间序列运算符。例如，{cmd:L.gnp} 指的是变量 {cmd:gnp} 的滞后值。时间序列运算符包括

	运算符{col 19}含义
	{hline 57}
	{cmd:L.}{col 19}滞后 (x_t-1)
	{cmd:L2.}{col 19}2期滞后 (x_t-2)
	...
	{cmd:F.}{col 19}领先 (x_t+1)
	{cmd:F2.}{col 19}2期领先 (x_t+2)
	...
	{cmd:D.}{col 19}差异 (x_t - x_t-1)
	{cmd:D2.}{col 19}差异的差异 (x_t - 2x_t-1 + x_t-2)
	...
	{cmd:S.}{col 19}"季节性"差异 (x_t - x_t-1)
	{cmd:S2.}{col 19}滞后2 (季节性)差异 (x_t - x_t-2)
	...
	{hline 57}

{pstd}
时间序列运算符可以重复和组合，理解大小写字母均可。有关更多详细信息，请参见帮助 {help tsvarlist_zh}。

{marker examples}{...}
{title:示例}

{phang}{cmd:. webuse census4}{p_end}
{phang}{cmd:. describe}

{pstd}这四个 {cmd:regress} 命令是等价的。{p_end}
{phang}{cmd:. regress brate medage medagesq reg2 reg3 reg4}{p_end}
{phang}{cmd:. regress brate medage medagesq reg2-reg4}{p_end}
{phang}{cmd:. regress brate med* reg2-reg4}{p_end}
{phang}{cmd:. regress brate medage c.medage#c.medage i.region}{p_end}

{phang}{cmd:. summarize _all}

{phang}{cmd:. sysuse citytemp}{p_end}
{phang}{cmd:. describe}

{phang}{cmd:. summarize *dd}{p_end}
{phang}{cmd:. summarize temp*}{p_end}
{phang}{cmd:. summarize temp???}{p_end}
{phang}{cmd:. summarize t*n}

{phang}{cmd:. webuse fvex}{p_end}
{phang}{cmd:. describe}

{phang}{cmd:. regress y distance i.group}{p_end}
{phang}{cmd:. regress y i.sex sex#c.distance}{p_end}

{pstd}这两个命令是等价的。{p_end}
{phang}{cmd:. regress y distance i.sex i.group sex#group}{p_end}
{phang}{cmd:. regress y distance sex##group}{p_end}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <varlist.sthlp>}