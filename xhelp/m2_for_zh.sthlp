{smcl}
{* *! version 1.1.4  15may2018}{...}
{vieweralsosee "[M-2] for" "mansection M-2 for"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[M-2] break" "help m2_break_zh"}{...}
{vieweralsosee "[M-2] continue" "help m2_continue_zh"}{...}
{vieweralsosee "[M-2] do" "help m2_do_zh"}{...}
{vieweralsosee "[M-2] Semicolons" "help m2_semicolons_zh"}{...}
{vieweralsosee "[M-2] while" "help m2_while_zh"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[M-2] Intro" "help m2_intro_zh"}{...}
{viewerjumpto "Syntax" "m2_for_zh##syntax"}{...}
{viewerjumpto "Description" "m2_for_zh##description"}{...}
{viewerjumpto "Links to PDF documentation" "m2_for_zh##linkspdf"}{...}
{viewerjumpto "Remarks" "m2_for_zh##remarks"}
{help m2_for:English Version}
{hline}{...}
{p2colset 1 14 16 2}{...}
{p2col:{bf:[M-2] for} {hline 2}}循环 (exp1; exp2; exp3) stmt
{p_end}
{p2col:}({mansection M-2 for:查看完整的PDF手册条目}){p_end}
{p2colreset}{...}


{marker syntax}{...}
{title:语法}

	{cmd:for (}{it:exp1}{cmd:;} {it:exp2}{cmd:;} {it:exp3}{cmd:)} {it:stmt}


	{cmd:for (}{it:exp1}{cmd:;} {it:exp2}{cmd:;} {it:exp3}{cmd:) {c -(}}
		{it:stmts}
	{cmd:{c )-}}


{p 4 4 2}
其中 {it:exp1} 和 {it:exp3} 是可选的，
而 {it:exp2} 必须计算为一个实数标量。


{marker description}{...}
{title:描述}

{p 4 4 2}
{cmd:for} 等价于

	{it:exp1}
	{cmd:while (}{it:exp2}{cmd:)} {cmd:{c -(}}
		{it:stmt(s)}
		{it:exp3}
	{cmd:{c )-}}

{p 4 4 2}
{it:stmt(s)} 可以执行零次或多次。只要 {it:exp2} 不等于零，循环就会继续。


{marker linkspdf}{...}
{title:PDF文档链接}

        {mansection M-2 forRemarksandexamples:备注和示例}

{pstd}
以上部分不包含在此帮助文件中。


{marker remarks}{...}
{title:备注}


{p 4 4 2}
要理解 {cmd:for}，请输入以下程序

	{cmd}function example(n)
	{
		for (i=1; i<=n; i++) {
			printf("i=%g\n", i)
		}
		printf("done\n")
	}{txt}

{p 4 4 2}
并运行 {cmd:example(3)}, {cmd:example(2)}, {cmd:example(1)},
{cmd:example(0)} 和 {cmd:example(-1)}。

{p 4 4 2}
{cmd:for} 的常见用法包括

	{cmd:for (i=1; i<=rows(A); i++) {c -(}}
		{cmd:for (j=1; j<=cols(A); j++) {c -(}}
			...
		{cmd:{c )-}}
	{cmd:{c )-}}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <m2_for.sthlp>}