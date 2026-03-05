{smcl}
{* *! version 1.1.5  15may2018}{...}
{vieweralsosee "[M-2] break" "mansection M-2 break"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[M-2] continue" "help m2_continue_zh"}{...}
{vieweralsosee "[M-2] do" "help m2_do_zh"}{...}
{vieweralsosee "[M-2] for" "help m2_for_zh"}{...}
{vieweralsosee "[M-2] while" "help m2_while_zh"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[M-2] Intro" "help m2_intro_zh"}{...}
{viewerjumpto "Syntax" "m2_break_zh##syntax"}{...}
{viewerjumpto "Description" "m2_break_zh##description"}{...}
{viewerjumpto "Links to PDF documentation" "m2_break_zh##linkspdf"}{...}
{viewerjumpto "Remarks" "m2_break_zh##remarks"}
{help m2_break:English Version}
{hline}{...}
{p2colset 1 16 18 2}{...}
{p2col:{bf:[M-2] break} {hline 2}}从 for、while 或 do 循环中跳出
{p_end}
{p2col:}({mansection M-2 break:查看完整的 PDF 手册条目}){p_end}
{p2colreset}{...}


{marker syntax}{...}
{title:语法}

	{cmd:for}, {cmd:while}, {it:或} {cmd:do {c -(}}
		...
		{cmd:if (}...{cmd:) {c -(}}
			...
			{cmd:break}
		{cmd:{c )-}}
	{cmd:{c )-}}
	{it:stmt}                        <- {cmd:break} {it:跳转这里}
	...


{marker description}{...}
{title:描述}

{p 4 4 2}
{cmd:break} 退出最内层的 {cmd:for}、{cmd:while} 或 {cmd:do} 循环。
执行在循环结束后的语句上继续，就好像循环正常终止一样。

{p 4 4 2}
{cmd:break} 通常在 {cmd:if} 之后使用。


{marker linkspdf}{...}
{title:PDF 文档链接}

        {mansection M-2 breakRemarksandexamples:备注和示例}

{pstd}
以上部分不包含在本帮助文件中。


{marker remarks}{...}
{title:备注}

{p 4 4 2}
在以下代码中， 

	{cmd}for (i=1; i<=rows(A); i++) {
		for (j=1; j<=cols(A); j++) {
			{txt}...{cmd}
			if (A[i,j]==0) break
		}
		printf("j = %g\n", j)
	}{txt}

{p 4 4 2}
如果 {cmd:A[i,j]} 的任何元素为零，将执行 {cmd:break} 语句。假设在 {cmd:i}=2 和 {cmd:j}=3 时执行了该语句。
执行将继续进行到 {cmd:printf()} 语句，也就是说，{cmd:j} 循环将被取消，但 {cmd:i} 循环将继续。
退出循环时 {it:j} 的值将为 3；当你跳出循环时，{cmd:j++} 并不会执行。
{p_end}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <m2_break.sthlp>}