{smcl}
{* *! version 1.1.3  11feb2011}{...}
{findalias asfrlocal}{...}
{findalias asfrdoubleq}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[P] macro" "help macro_zh"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[U] 11 Language syntax" "help language_zh"}{...}
{vieweralsosee "[U] 13 Functions and expressions" "help exp_zh"}{...}
{viewerjumpto "Description" "quotes_zh##description"}{...}
{viewerjumpto "Remarks" "quotes_zh##remarks"}{...}
{viewerjumpto "Examples" "quotes_zh##examples"}
{help quotes:English Version}
{hline}{...}
{title:标题}

{pstd}
{findalias frlocal} 和
{findalias frdoubleq} 


{marker description}{...}
{title:描述}

{pstd}
本帮助文件记录了在宏中使用左单引号和右单引号以及使用双引号来括起字符串的方法，这些在 Stata 命令和宏中都适用。


{marker remarks}{...}
{title:备注}

{pstd}
备注按照以下标题呈现：

	{help quotes##single:单引号}
	{help quotes##double:双引号}


{marker single}{...}
{title:单引号}

{pstd}
一个重要的说明是我们在 Stata 中如何使用左单引号和右单引号，特别是在处理宏时（请参见 {findalias frmacros}）。单引号（以及双引号）在你的键盘、显示器和我们的印刷文档上可能看起来不同，这使得很难确定在键盘上按哪个键以复制我们所展示的内容。

{pstd}
对于左单引号，我们使用的是重音符，在大多数计算机键盘上占据一个独立的键。在美国键盘上，重音符位于左上方，紧挨着数字1。在某些非美国键盘上，重音符是通过一个死键产生的。例如，按下重音符死键后再按字母a会产生 {c a'g}；要单独获取重音符，需要按下重音符死键后再按空格。这个重音符在我们的帮助文件中表示为 {cmd:`}。

{pstd}
对于右单引号，我们使用的是标准单引号，或称撇号。在美国键盘上，单引号位于与双引号相同的键上，位于键盘右侧靠近回车键的位置。


{marker double}{...}
{title:双引号}

{pstd}
双引号用于括起字符串： {cmd:"yes"}, {cmd:"no"},
{cmd:"my dir\my file"}, {cmd:"`answ'"} （意味着局部宏 {cmd:answ} 的内容，被视为一个字符串），等等。许多 Stata 命令使用双引号，

	    . {cmd:regress lnwage age ed if sex=="female"}

	    . {cmd:gen outa = outcome if drug=="A"}

	    . {cmd:use "person file"}

{pstd}
双引号也用于宏，

	    {cmd:local a "example"}

	    {cmd:if "`answ'" == "yes" {c -(}}
		    ...
	    {cmd:{c )-}}

{pstd}
实际上，Stata 有两组双引号字符，其中 {cmd:""} 是其中之一。另一组是 {cmd:`""'}，它们的用法与 {cmd:""} 相同：

	    . {cmd:regress lnwage age ed if sex==`"female"'}

	    . {cmd:gen outa = outcome if drug==`"A"'}

	    . {cmd:use `"person file"'}

{pstd}
没有理智的用户会使用 {cmd:`""'} （称为复合双引号）而不是 {cmd:""} （称为简单双引号），但聪明的程序员确实使用它们：

	    {cmd:local a `"example"'}

	    {cmd:if `"`answ'"' == `"yes"' {c -(}}
		    ...
	    {cmd:{c )-}}

{pstd}
为什么 {cmd:`"example"'} 比 {cmd:"example"} 更好，{cmd:`"`answ'"'} 比 {cmd:"`answ'"'} 更好，{cmd:`"yes"'} 比 {cmd:"yes"} 更好？ 
只有 {cmd:`"`answ'"'} 比 {cmd:"`answ'"} 更好； {cmd:`"example"'} 和 {cmd:`"yes"'} 与 {cmd:"example"} 和 {cmd:"yes"} 没有什么优劣之分。

{pstd}
{cmd:`"`answ'"'} 比 {cmd:"`answ'"} 更好，因为宏 {cmd:answ} 可能本身包含（简单或复合）双引号。复合双引号的真正优点在于它们可以嵌套。假设 {cmd:`answ'} 包含字符串 ``{cmd:I "think" so}''。那么，

    Stata 会觉得{col 45}{cmd:if "`answ'"=="yes"}
    令人困惑，因为它会扩展为{col 45}{cmd:if "I "think" so"=="yes"}

    Stata 不会觉得{col 45}{cmd:if `"`answ'"'==`"yes"'}
    令人困惑，因为它会扩展为{col 45}{cmd:if `"I "think" so"'==`"yes"'}

{pstd}
简单形式的开闭双引号看起来是一样的；开引号是 {cmd:"}，闭引号也是 {cmd:"}。复合形式的开闭双引号是可区分的；开引号是 {cmd:`"}，闭引号是 {cmd:"'}，因此 Stata 可以将闭引号与对应的开双引号配对。{cmd:`"I "think" so"'} 对 Stata 来说很容易理解，而 {cmd:"I "think" so"} 则是个无解的混杂物。（如果你不同意，请考虑 {cmd:"A"B"C"} 可能代表什么。这个引用字符串是 {cmd:A"B"C} 还是引用字符串 {cmd:A} 后跟 {cmd:B} 然后是引用字符串 {cmd:C}？）

{pstd}
因为 Stata 可以区分开引号和闭引号，即使是嵌套的复合双引号也可以理解： {cmd:`"I `"think"' so"'}.（{cmd:"A"B"C"} 意思是什么？ 它要么表示 {cmd:`"A`"B"'C"'}，要么表示 {cmd:`"A"'B`"C"'}.）

{pstd}
是的，复合双引号让你觉得视线在颤动，尤其是与宏替换 {cmd:`'} 字符结合时。正因如此，我们很少使用它们，即使在写程序时。你不必单独使用其中一种引号风格。在代码中结合使用

	    {cmd:local a "example"}

	    {cmd:if `"`answ'"' == "yes" {c -(}}
		    ...
	    {cmd:{c )-}}

{pstd}
在需要的地方使用复合双引号（如 {cmd:`"`answ'"'}），在其他地方使用简单双引号（如 {cmd:"yes"}）是完全可以接受的。如果你确信宏本身不包含双引号，或者你不在乎它们是否包含双引号，也可以在宏周围使用简单双引号（如 {cmd:"`answ'"})。

{pstd}
然而，有时谨慎的程序员应该使用复合双引号。Stata 的 {help syntax_zh} 命令解释标准 Stata 语法，因此方便编写能够理解如下内容的程序：

	    . {cmd:myprog mpg weight if strpos(make,"VW")!=0}

{pstd}
{cmd:syntax} 通过将用户输入的 {cmd:if} {it:exp} 放入局部宏 {cmd:if} 来工作。因此，{cmd:`if'} 将包含
``{cmd:if strpos(make,"VW")!=0}'' 在这里。现在，假设你在程序中的某个地方想知道用户是否指定了 {cmd:if} {it:exp}。那自然的做法是编写如下代码：

	    {cmd:if `"`if'"' != "" {c -(}}
		    {cmd://} {it:if exp 已被指定}
		    ...
	    {cmd:{c )-}}
	    {cmd:else {c -(}}
		    {cmd://} {it:没有指定}
		    ...
	    {cmd:{c )-}}

{pstd}
我们在宏 {cmd:`if'} 周围使用了复合双引号。
局部宏 {cmd:`if'} 可能包含双引号，因此我们在其周围放置了复合双引号。


{marker examples}{...}
{title:示例}

{phang}{cmd:. webuse hbp2}{p_end}
{phang}{cmd:. count if sex=="male"}{p_end}
{phang}{cmd:. label variable age_grp "age groups in 5-year increments"}

{phang}{cmd:. sysuse auto}{p_end}
{phang}{cmd:. char mpg[one] "this"}{p_end}
{phang}{cmd:. local x: char mpg[one]}{p_end}
{phang}{cmd:. display "`x'"}{p_end}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <quotes.sthlp>}