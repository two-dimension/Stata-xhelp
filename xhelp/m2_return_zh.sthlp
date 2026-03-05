{smcl}
{* *! version 1.1.4  15may2018}{...}
{vieweralsosee "[M-2] return" "mansection M-2 return"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[M-5] exit()" "help mf_exit_zh"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[M-2] Intro" "help m2_intro_zh"}{...}
{viewerjumpto "Syntax" "m2_return_zh##syntax"}{...}
{viewerjumpto "Description" "m2_return_zh##description"}{...}
{viewerjumpto "Links to PDF documentation" "m2_return_zh##linkspdf"}{...}
{viewerjumpto "Remarks" "m2_return_zh##remarks"}
{help m2_return:English Version}
{hline}{...}
{p2colset 1 17 19 2}{...}
{p2col:{bf:[M-2] return} {hline 2}}返回和返回(exp){p_end}
{p2col:}({mansection M-2 return:查看完整的PDF手册条目}){p_end}
{p2colreset}{...}


{marker syntax}{...}
{title:语法}

	{cmd:return}

	{cmd:return(}{it:exp}{cmd:)}


{marker description}{...}
{title:描述}

{p 4 4 2}
{cmd:return} 使函数停止执行并返回给调用者，不返回任何内容。

{p 4 4 2}
{cmd:return(}{it:exp}{cmd:)} 使函数停止执行并返回给调用者，返回 {it:exp} 的计算结果。


{marker linkspdf}{...}
{title:PDF文档链接}

        {mansection M-2 returnRemarksandexamples:备注和示例}

{pstd}
以上章节未包含在此帮助文件中。


{marker remarks}{...}
{title:备注}

{p 4 4 2}
备注在以下标题下呈现：

	{help m2_return##remarks1:返回结果的函数}
	{help m2_return##remarks2:不返回任何内容的函数（空函数）}


{marker remarks1}{...}
{title:返回结果的函数}

{p 4 4 2}
{cmd:return(}{it:exp}{cmd:)} 指定要返回的值。
例如，您编写了一个程序来返回两个数字的和：

	{cmd}function mysum(a, b)
	{
		return(a+b)
	}{txt}

{p 4 4 2}
{cmd:return(}{it:exp}{cmd:)} 可以在程序中多次出现。
以下程序计算 {it:x} 的阶乘；假设 {it:x} 是一个大于 0 的整数：

	{cmd}real scalar myfactorial(real scalar x)
	{
		if (x<=0) return(1)
		return(x*factorial(x-1))
	}{txt}

{p 4 4 2}
如果 {it:x}<=0，函数将返回 1；执行不再继续到下一行。

{p 4 4 2}
返回结果的函数总是包含一个或多个 {cmd:return(}{it:exp}{cmd:)} 语句。


{marker remarks2}{...}
{title:不返回任何内容的函数（空函数）}

{p 4 4 2}
如果一个函数不返回任何内容，则称其为空函数。
以下程序将矩阵的对角线更改为 1：

	{cmd}function fixdiag(matrix A)
	{
		real scalar     i

		for (i=1; i<=rows(A); i++) A[i,i] = 1
	}{txt}

{p 4 4 2}
此函数甚至没有包括 {cmd:return} 语句；执行直接结束。这是可以的，尽管该函数同样可以写为：

	{cmd}function fixdiag(matrix A)
	{
		real scalar     i

		for (i=1; i<=rows(A); i++) A[i,i] = 1
		return
	}{txt}

{p 4 4 2}
使用 {cmd:return} 是当函数有理由提前结束时：

	{cmd}void fixmatrix(matrix A, scalar how)
	{
		real scalar     i, j

		for (i=1; i<=rows(A); i++) A[i,i] = 1
		if (how==0) return
		for (i=1; i<=rows(A); i++) {
			for (j=1; j<i; j++) A[i,j] = 0
		}
	}{txt}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <m2_return.sthlp>}