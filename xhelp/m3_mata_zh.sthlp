{smcl}
{* *! version 1.1.6  15may2018}{...}
{vieweralsosee "[M-3] mata" "mansection M-3 mata"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[M-3] Intro" "help m3_intro_zh"}{...}
{viewerjumpto "Syntax" "m3_mata_zh##syntax"}{...}
{viewerjumpto "Description" "m3_mata_zh##description"}{...}
{viewerjumpto "Links to PDF documentation" "m3_mata_zh##linkspdf"}{...}
{viewerjumpto "Remarks" "m3_mata_zh##remarks"}
{help m3_mata:English Version}
{hline}{...}
{p2colset 1 15 17 2}{...}
{p2col:{bf:[M-3] mata} {hline 2}}Mata 调用命令
{p_end}
{p2col:}({mansection M-3 mata:查看完整 PDF 手册条目}){p_end}
{p2colreset}{...}


{marker syntax}{...}
{title:语法}

{p 4 4 2}
这里记录的 {cmd:mata} 命令用于从 Stata 中调用。它是您进入 Mata 的方式。您在 Stata 点提示符下输入 {cmd:mata}，而不是在 Mata 冒号提示符下。

{marker syntax1}{...}
	语法 1{col 41}注释
	{hline 70}
	{cmd:mata}{col 41}后面没有冒号
		{it:istmt}
		{it:istmt}{col 41}如果发生错误，您仍然处于 
		..{col 41}{cmd:mata} 模式
		{it:istmt}
	{cmd:end}{col 41}当您输入 {cmd:end} 时退出
	{hline 70}
	语法 1 是交互式使用 Mata 的最佳方式。

{marker syntax2}{...}
	语法 2{col 41}注释
	{hline 70}
	{cmd:mata:}{col 41}后面有冒号
		{it:istmt}
		{it:istmt}{col 41}如果发生错误，您将 
		..{col 41}被退出 Mata
		{it:istmt}
	{cmd:end}{col 41}否则，当您输入 {cmd:end} 时退出
	{hline 70}
	语法 2 通常被程序员使用于 ado 文件中。
	程序员希望错误能停止一切。

{marker syntax3}{...}
	语法 3{col 41}注释
	{hline 70}
	{cmd:mata}  {it:istmt}{col 41}很少使用
	{hline 70}
	语法 3 是语法 1 的单行变体，但不实用。

{marker syntax4}{...}
	语法 4{col 41}注释
	{hline 70}
	{cmd:mata:} {it:istmt}{col 41}供程序员使用
	{hline 70}
	语法 4 是语法 2 的单行变体，存在的原因和语法 2 一样：供程序员在 ado 文件中使用。

{marker description}{...}
{title:描述}

{p 4 4 2}
{cmd:mata} 命令调用 Mata。一个 {it:istmt} 是 Mata 所理解的内容；{it:istmt} 代表 Mata 的交互式语句。

{marker linkspdf}{...}
{title:PDF 文档链接}

        {mansection M-3 mataRemarksandexamples:备注和示例}

{pstd}
上述各节不包括在此帮助文件中。

{marker remarks}{...}
{title:备注}

{pstd}备注分为以下标题：

        {help m3_mata##remarks1:介绍}
	{help m3_mata##remarks2:语法 3 和 4 之间的细微区别}
	{help m3_mata##remarks3:语法 1 和 2 之间的细微区别}

{marker remarks1}{...}
{title:介绍}

{p 4 4 2}
对于交互使用，使用 {help m3_mata##syntax1:语法 1}。输入 {cmd:mata}（没有冒号），按 {hi:Enter}，然后自由使用 Mata。输入 {cmd:end} 返回 Stata。（当您从 Mata 退出回到 Stata 时，Mata 不会清空自己；因此如果您稍后再次输入 {cmd:mata} 并按 Enter，您将回到您所在的位置。）

{p 4 4 2}
对于编程使用，使用 {help m3_mata##syntax2:语法 2} 或 {help m3_mata##syntax4:语法 4}。在程序或 ado 文件中，您可以直接调用一个 Mata 函数

	{cmd}program myprog
		{txt:...}
		mata: utility("`varlist'")
		{txt:...}
	end{txt}

{p 4 4 2}
您甚至可以在 ado 文件中包含该 Mata 函数

	{hline 43} begin myprog.ado {hline 6}
	{cmd}program myprog
		{txt:...}
		mata: utility("`varlist'")
		{txt:...}
	end

	mata:
	function utility(string scalar varlist)
	{
		{txt:...}
	}
	end{txt}
	{hline 43} end myprog.ado {hline 8}
		
{p 4 4 2}
或者您可以单独编译 {cmd:utility()}，并将其放在一个 {cmd:.mo} 文件或 Mata 库中。

{marker remarks2}{...}
{title:语法 3 和 4 之间的细微区别}

{p 4 4 2}
语法 {help m3_mata##syntax3:3} 和 {help m3_mata##syntax4:4} 都是单行语法。您输入 {cmd:mata}，可能后面跟着冒号，然后跟上 Mata {it:istmt}。

{p 4 4 2}
这两种语法的区别在于它们是否允许继续行。带冒号的情况下，不允许继续行。没有冒号，您可以有继续行。

{p 4 4 2}
例如，让我们考虑 

	{cmd}function renorm(scalar a, scalar b)
	{c -(}
		...
	{c )-}{txt}

{p 4 4 2}
无论函数多长，它都是一个 {it:istmt}。
使用 {cmd:mata:}，如果您试图输入该 {it:istmt}，结果会是这样的：

	. {cmd:mata: function renorm(scalar a, scalar b)}
	{err:<istmt> 不完整}
	r(197);

{p 4 4 2}
当您到达第一行的末尾并按下 {hi:Enter} 时，您会收到错误信息。使用 {cmd:mata:} 命令，{it:istmt} 必须都在一行内。

{p 4 4 2}
现在试试不带冒号的 {cmd:mata}：

	. {cmd:mata function renorm(scalar a, scalar b)}
	> {cmd:{c -(}}
	>     ...
	> {cmd:{c )-}}

	. 

{p 4 4 2}
这成功了！单行 {cmd:mata} 不带冒号允许继续行，在这一点上至少似乎优于单行带冒号的 {cmd:mata}。然而，在编程上下文中，这个特性可能会造成麻烦。
考虑以下程序片段：

	{cmd}program example
		{txt:...}
		mata utility("`varlist'"
		replace `x' = ...
		{txt:...}
	end{txt}

{p 4 4 2}
我们使用了不带冒号的 {cmd:mata}，并且出错了：我们忘记了关闭括号。没有冒号的 {cmd:mata} 将查找该关闭括号，并将吃掉下一行——一行不是打算给 Mata 的。在这里，我们将收到错误信息，因为 "{cmd:replace `x' = }..." 对 Mata 没有意义，但该错误会与我们应该收到的错误有所不同。在不太可能的最坏情况下，下一行对 Mata 将是有意义的。

{p 4 4 2}
因此，程序员希望包含冒号。这将使您的程序更容易调试。

{p 4 4 2}
然而，单行不带冒号的 {cmd:mata} 的确有程序员使用的情况。在我们上面的样本 ado 文件中，当我们包括例程 {cmd:utility()} 时，我们将其包含在 {cmd:mata:} 和 {cmd:end} 中。如果我们改为编码

	{hline 43} begin myprog.ado {hline 6}
	{cmd}program myprog
		{txt:...}
		mata: utility("`varlist'")
		{txt:...}
	end

	mata function utility(string scalar varlist)
	{
		{txt:...}
	{c )-}{txt}
	{hline 43} end myprog.ado {hline 8}

{p 4 4 2}
使用不带冒号的 {cmd:mata}，我们可以省略 {cmd:end}。
我们承认我们有时会这样做。

{marker remarks3}{...}
{title:语法 1 和 2 之间的细微区别}

{p 4 4 2}
上面关于继续行的内容并不适用于语法 {help m3_mata##syntax1:1} 和 {help m3_mata##syntax2:2}。
多行 {cmd:mata}，无论是否带冒号，总是允许继续行，因为 Mata 会话结束的位置是非常清楚的： {cmd:end}。

{p 4 4 2}
这两种多行语法之间的区别在于 Mata 是否容忍错误，或者将您抛回到 Stata。
交互式用户欣赏容忍。程序员希望严格。
程序员可以考虑以下内容（使用不带冒号的 {cmd:mata}）：

	{cmd:program example2}
		...
		{cmd:mata}
			{cmd:result = myfunc("`varlist'")}
			{cmd:st_local("n" result)}           /* <- 此处出错 */
			{cmd:result = J(0,0,"")}
		{cmd:end}
		...
	{cmd:end}

{p 4 4 2}
在上述示例中，我们省略了 {cmd:"n"} 和 {cmd:result} 之间的逗号。我们也使用了不带冒号的多行 {cmd:mata}。因此，该错误行将会被 Mata 容忍，Mata 会欢快地继续执行我们的程序，直到 {cmd:end} 语句，此时 Mata 将把控制权返回给 Stata，而不会告诉 Stata 发生任何错误！这可能会有严重后果，所有这些都可以通过用带冒号的多行 {cmd:mata} 来避免。
{p_end}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <m3_mata.sthlp>}