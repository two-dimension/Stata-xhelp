{smcl}
{* *! version 1.1.4  15may2018}{...}
{vieweralsosee "[M-5] isfleeting()" "mansection M-5 isfleeting()"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[M-4] 编程" "help m4_programming_zh"}{...}
{viewerjumpto "语法" "mf_isfleeting_zh##syntax"}{...}
{viewerjumpto "描述" "mf_isfleeting_zh##description"}{...}
{viewerjumpto "PDF 文档链接" "mf_isfleeting_zh##linkspdf"}{...}
{viewerjumpto "备注" "mf_isfleeting_zh##remarks"}{...}
{viewerjumpto "相容性" "mf_isfleeting_zh##conformability"}{...}
{viewerjumpto "诊断" "mf_isfleeting_zh##diagnostics"}{...}
{viewerjumpto "源代码" "mf_isfleeting_zh##source"}
{help mf_isfleeting:English Version}
{hline}{...}
{p2colset 1 23 25 2}{...}
{p2col:{bf:[M-5] isfleeting()} {hline 2}}参数是否为临时
{p_end}
{p2col:}({mansection M-5 isfleeting():查看完整 PDF 手册条目}){p_end}
{p2colreset}{...}


{marker syntax}{...}
{title:语法}

{p 8 8 2}
{it:实数标量}
{cmd:isfleeting(}{it:多态矩阵 A}{cmd:)}


{p 4 4 2}
其中 {it:A} 是传递给您的函数的参数。


{marker description}{...}
{title:描述}

{p 4 4 2}
{cmd:isfleeting(}{it:A}{cmd:)} 如果 {it:A} 是为传递给您的函数而构造的，则返回 1，否则返回 0。
如果一个参数是临时的，那么您可以更改其内容，而不必担心调用者会在乎或知道。


{marker linkspdf}{...}
{title:PDF 文档链接}

        {mansection M-5 isfleeting()备注和示例:备注和示例}

{pstd}
上述部分不包含在此帮助文件中。


{marker remarks}{...}
{title:备注}

{p 4 4 2}
假设您编写了函数 {cmd:myfunc(}{it:A}{cmd:)}，该函数接受 {it:A}: {it:r x c} 并返回一个 {it:r x c} 矩阵。
为了固定想法，我们假设 {cmd:myfunc()} 的代码如下所示

	{cmd}real matrix myfunc(real matrix A)
	{c -(}
		real scalar	i
		real matrix	B

		B=A
		for (i=1; i<=rows(B); i++) B[i,i] = 1
		return(B)
	{c )-}{txt}

{p 4 4 2}
函数 {cmd:myfunc(}{it:A}{cmd:)} 返回一个与 {it:A} 相等的矩阵，但对角线上是 1。现在我们假设 {cmd:myfunc()} 正在使用中。
代码片段可能如下所示

		...
		{cmd:C = A*myfunc(D)*C}
		...

{p 4 4 2}
在这里，{cmd:D} 被传递给 {cmd:myfunc()}，参数 {cmd:D} 被认为不是临时的。现在考虑另一个代码片段：

		...
		{cmd:D = A*myfunc(D+E)*D}
		...

{p 4 4 2}
在此代码片段中，传递给 {cmd:myfunc()} 的参数是 {cmd:D+E}，而该参数是临时的。它是临时的，因为它是为了传递给 {cmd:myfunc()} 而构造的，一旦 {cmd:myfunc()} 完成，包含 {cmd:D+E} 的矩阵将被丢弃。

{p 4 4 2}
临时的参数可以重复使用以节省内存。

{p 4 4 2}
仔细查看 {cmd:myfunc()} 的代码。它会复制传递给它的矩阵。这样做是为了避免损坏传递给它的矩阵。但是，如果接收到的参数是临时的，复制的过程是多余的，因为损坏那些本来会被丢弃的东西并不重要。如果我们不做复制，我们不仅节省了计算时间，也节省了内存。
函数 {cmd:myfunc()} 可以重写为

	{cmd}real matrix myfunc(real matrix A)
	{c -(}
		real scalar	i
		real matrix	B

		if (isfleeting(A)) {c -(}
			for (i=1; i<=rows(A); i++) A[i,i] = 1
			return(A)
		}
		B=A
		for (i=1; i<=rows(B); i++) B[i,i] = 1
		return(B)
	{c )-}{txt}

{p 4 4 2}
在这里，我们为临时和非临时情况编写了单独的代码。这并不总是必要。我们可以在这里使用指针来合并这两个代码块：

	{cmd}real matrix myfunc(real matrix A)
	{c -(}
		real scalar	i
		real matrix	B
		pointer scalar	p

		if (isfleeting(A)) p = &A
		else {c -(}
			B = A
			p = &B
		{c )-}
		for (i=1; i<=rows(*p); i++) (*p)[i,i] = 1
		return(*p)
	{c )-}{txt}

{p 4 4 2}
许多官方库函数有两种变体：
{cmd:_foo(}{it:A}{cmd:,} ...{cmd:)}, 将 {it:A} 替换为计算结果，以及 {cmd:foo(}{it:A}{cmd:,} ...{cmd:)}, 返回结果而不修改 {it:A}。通常，{cmd:foo()} 的代码如下所示

	{cmd}function foo(A, {txt:...})
	{c -(}
		matrix B

		if (isfleeting(A)) {c -(}
			_foo(A, {txt:...})
			return(A)
		{c )-}
		_foo(B=A, ...)
		return(B)
	{c )-}{txt}

{p 4 4 2}
这使得函数 {cmd:foo()} 效率极高。如果 {cmd:foo()} 被调用时参数是临时的——一个可以在不让调用者知道的情况下被修改的参数——那么就不会再额外复制该矩阵。


{marker conformability}{...}
{title:相容性}

    {cmd:isfleeting(}{it:A}{cmd:)}:
		{it:A}:  {it:r x c}
	   {it:result}:  1 {it:x} 1


{marker diagnostics}{...}
{title:诊断}

{p 4 4 2}
{cmd:isfleeting(}{it:A}{cmd:)} 如果 {it:A} 是临时的并且不是视图，则返回 1。
如果 {it:A} 不是该函数的参数，则返回的值是未定义的，因此当在交互式使用时 {cmd:isfleeting()} 的值也是未定义的。


{marker source}{...}
{title:源代码}

{p 4 4 2}
函数是内置的。
{p_end}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <mf_isfleeting.sthlp>}