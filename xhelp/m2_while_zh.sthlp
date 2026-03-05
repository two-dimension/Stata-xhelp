{smcl}
{* *! version 1.1.4  15may2018}{...}
{vieweralsosee "[M-2] while" "mansection M-2 while"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[M-2] break" "help m2_break_zh"}{...}
{vieweralsosee "[M-2] continue" "help m2_continue_zh"}{...}
{vieweralsosee "[M-2] do" "help m2_do_zh"}{...}
{vieweralsosee "[M-2] for" "help m2_for_zh"}{...}
{vieweralsosee "[M-2] Semicolons" "help m2_semicolons_zh"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[M-2] Intro" "help m2_intro_zh"}{...}
{viewerjumpto "Syntax" "m2_while_zh##syntax"}{...}
{viewerjumpto "Description" "m2_while_zh##description"}{...}
{viewerjumpto "Links to PDF documentation" "m2_while_zh##linkspdf"}{...}
{viewerjumpto "Remarks" "m2_while_zh##remarks"}
{help m2_while:English Version}
{hline}{...}
{p2colset 1 16 18 2}{...}
{p2col:{bf:[M-2] while} {hline 2}}当 (exp) stmt
{p_end}
{p2col:}({mansection M-2 while:查看完整的 PDF 手册条目}){p_end}
{p2colreset}{...}


{marker syntax}{...}
{title:语法}

	{cmd:while (}{it:exp}{cmd:)} {it:stmt}


	{cmd:while (}{it:exp}{cmd:) {c -(}}
		{it:stmts}
	{cmd:{c )-}}


{p 4 4 2}
其中 {it:exp} 必须计算为一个实数标量。


{marker description}{...}
{title:描述}

{p 4 4 2}
{cmd:while} 执行 {it:stmt} 或 {it:stmts} 零次或多次。只要 {it:exp} 不等于零，循环就会继续。


{marker linkspdf}{...}
{title:PDF 文档链接}

        {mansection M-2 whileRemarksandexamples:备注和示例}

{pstd}
以上部分不包含在此帮助文件中。


{marker remarks}{...}
{title:备注}

{p 4 4 2}
要理解 {cmd:while}，输入以下程序

	{cmd}function example(n)
	{
		i = 1
		while (i<=n) {
			printf("i=%g\n", i)
			i++
		}
		printf("done\n")
	}{txt}

{p 4 4 2}
并运行 {cmd:example(3)}, {cmd:example(2)}, {cmd:example(1)}, 
{cmd:example(0)}, 和 {cmd:example(-1)}。

{p 4 4 2}
{cmd:while} 的一个常见用法是循环直到收敛：

	{cmd}while (mreldif(a, lasta)>1e-10) {
			lasta = a 
			a = {txt}...
	{cmd:{c )-}}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <m2_while.sthlp>}