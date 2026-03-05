{smcl}
{* *! version 1.0.8  04nov2014}{...}
{vieweralsosee undocumented "help undocumented"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[G-2] graph twoway function" "help twoway_function_zh"}{...}
{viewerjumpto "Syntax" "twoway__function_gen_zh##syntax"}{...}
{viewerjumpto "Description" "twoway__function_gen_zh##description"}{...}
{viewerjumpto "Options" "twoway__function_gen_zh##options"}{...}
{viewerjumpto "Examples" "twoway__function_gen_zh##examples"}{...}
{viewerjumpto "Stored results" "twoway__function_gen_zh##results"}
{help twoway__function_gen:English Version}
{hline}{...}
{title:标题}

{p 4 34 2}
{hi:[G-2] twoway__function_gen} {hline 2} twoway 函数子程序


{marker syntax}{...}
{title:语法}

{p 8 12 2}
{cmd:twoway__function_gen}
	[[{it:y}] =]
	{it:f}({it:x})
	[{cmd:if} {it:exp}]
	{cmd:,}{break}
	{cmdab:r:ange:(}{it:range}{cmd:)}{break}
	{cmdab:x:is:(}{it:name}{cmd:)}{break}
	[
	{cmd:n(}{it:#}{cmd:)}
	{cmdab:gen:erate:(}{it:yvar} {it:xvar} [, {cmd:replace} ]{cmd:)}
	{cmdab:drop:lines:(}{it:numlist}{cmd:)}
	]

{pstd}
其中 {it:f}({it:x}) 是一个“数学”表达式，只有一个在 {cmd:xis()} 中识别的“数学”变量。


{marker description}{...}
{title:描述}

{pstd}
假设您想绘制 {it:y} = {it:f}({it:x})，其中 {it:f}({it:x}) 意指某个 {it:x} 的函数。{it:x} 并不是真正的 Stata 变量（{it:y} 也是如此），但是 {cmd:twoway__function_gen} 可用于生成 Stata 变量（通常是 {cmd:tempvar}），代表 {it:x} 和 {it:y} 在规定范围内均匀分布的值。

{pstd}
{cmd:twoway__function_gen} 是为了解析和生成变量以用于 {cmd:graph} {cmd:twoway} {cmd:function} 而编写的；参见 {manhelp twoway_function G-2:graph twoway function}。仅当至少指定了 {cmd:generate()} 或 {cmd:droplines()} 选项时，{it:f}({it:x}) 的表达式才会被求值。


{marker options}{...}
{title:选项}

{phang}
{cmd:range(}{it:range}{cmd:)} 指定 {it:x} 的值范围。这里 {it:range} 可以是一对数字，识别最小值和最大值，或者 {it:range} 可以是一个变量。如果 {it:range} 是一个变量，则范围由以下内容确定：

{pmore}
{cmd}. summarize {it:range} if {it:exp}, meanonly{text}

{phang}
{cmd:xis(}{it:name}{cmd:)} 指定 {it:f}({it:x}) 中 {it:x} 的有效 Stata 名称。

{phang}
{cmd:n(}{it:#}{cmd:)} 指定评估点的数量。默认值为 {cmd:n(1)}。

{phang}
{cmd:generate(}{it:yvar} {it:xvar} [{cmd:,} {cmd:replace}]{cmd:)} 指定要生成的变量名称。值的网格放置在 {it:xvar} 中，{it:f}({it:xvar}) 的值放置在 {it:yvar} 中。{cmd:replace} 选项表示这些变量如果已经存在，可以被替换。

{phang}
{cmd:droplines(}{it:numlist}{cmd:)} 在函数 {it:f}({it:x}) 上构建 {it:x y} 对的列表，其中每个 {it:x} 是 {it:numlist} 的一个元素，{it:y} 是 {it:f}({it:x}) 的值。{cmd:r(dropxy)} 中返回 {it:x y} 对的列表。此选项便于 {cmd:twoway} {cmd:graph} {cmd:function} 的 {cmd:droplines()} 选项；参见 {manhelp twoway_function G-2:graph twoway function}。


{marker examples}{...}
{title:示例}

    {cmd}. clear
    {txt}
    {cmd}. set obs 10
    {txt} 观察数量 (_N) 从 0 变为 10

{phang}
    {cmd}. twoway__function_gen y = sin(c(pi)*x), r(-2 2) x(x) gen(y x, replace) n(`c(N)')

    {cmd}. list y x
    {txt}
	 {c TLC}{hline 12}{c -}{hline 12}{c TRC}
	 {c |} {res}         y            x {txt}{c |}
	 {c LT}{hline 12}{c -}{hline 12}{c RT}
      1. {c |} {res} 2.449e-16           -2 {txt}{c |}
      2. {c |} {res} .98480775   -1.5555556 {txt}{c |}
      3. {c |} {res} .34202014   -1.1111111 {txt}{c |}
      4. {c |} {res} -.8660254   -.66666667 {txt}{c |}
      5. {c |} {res}-.64278761   -.22222222 {txt}{c |}
	 {c LT}{hline 12}{c -}{hline 12}{c RT}
      6. {c |} {res} .64278761    .22222222 {txt}{c |}
      7. {c |} {res}  .8660254    .66666667 {txt}{c |}
      8. {c |} {res}-.34202014    1.1111111 {txt}{c |}
      9. {c |} {res}-.98480775    1.5555556 {txt}{c |}
     10. {c |} {res}-1.133e-15            2 {txt}{c |}
	 {c BLC}{hline 12}{c -}{hline 12}{c BRC}

    {cmd}. sysuse auto, clear
    {txt}(1978 汽车数据)

    {cmd}. sum mpg if for

    {txt}    变量 {c |}       Obs        均值    标准差       最小值        最大值
    {hline 13}{c +}{hline 56}
	     mpg {c |}{res}        22    24.77273    6.611187         14         41
    {txt}
    {cmd}. return list
    
    {txt}标量:
		     r(N) =  {res}22
		 {txt}r(sum_w) =  {res}22
		  {txt}r(mean) =  {res}24.77272727272727
		   {txt}r(Var) =  {res}43.70779220779221
		    {txt}r(sd) =  {res}6.611186898567625
		   {txt}r(min) =  {res}14
		   {txt}r(max) =  {res}41
		   {txt}r(sum) =  {res}545

{phang}
    {cmd}. twoway__function_gen y = normden(x,`r(mean)',`r(sd)') if for, r(mpg) x(x) gen(y x, replace) n(5)

    {cmd}. list y x in 1/5
    {txt}
	 {c TLC}{hline 11}{c -}{hline 7}{c TRC}
	 {c |} {res}        y       x {txt}{c |}
	 {c LT}{hline 11}{c -}{hline 7}{c RT}
      1. {c |} {res}.01599807      14 {txt}{c |}
      2. {c |} {res}.05014576   20.75 {txt}{c |}
      3. {c |} {res}.05542139    27.5 {txt}{c |}
      4. {c |} {res}.02159718   34.25 {txt}{c |}
      5. {c |} {res}.00296752      41 {txt}{c |}
	 {c BLC}{hline 11}{c -}{hline 7}{c BRC}


{marker results}{...}
{title:存储结果}

{pstd}
{cmd:twoway__function_gen} 将以下内容存储在 {cmd:r()} 中：

{pstd}
标量:

	 {cmd:r(n)}        评估点的数量
	 {cmd:r(min)}      {cmd:range()} 的最小值
	 {cmd:r(max)}      {cmd:range()} 的最大值
	 {cmd:r(delta)}    网格点之间的距离

{pstd}
宏:

	 {cmd:r(yis)}      {it:y} 或 "y" 如果未指定
	 {cmd:r(xis)}      {it:x} 来自 {cmd:xis(}{it:x}{cmd:)} 选项
	 {cmd:r(exp)}      表达式 {it:f}({it:x})
	 {cmd:r(range)}    {it:range} 来自 {cmd:range(}{it:range}{cmd:)} 选项
	 {cmd:r(yformat)}  来自 {cmd:yformat()} 选项
	 {cmd:r(xformat)}  来自 {cmd:xformat()} 选项
	 {cmd:r(dropxy)}   {it:x y} 对来自 {cmd:droplines()} 选项

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <twoway__function_gen.sthlp>}