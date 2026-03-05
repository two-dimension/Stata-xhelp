{smcl}
{* *! version 1.1.4  15may2018}{...}
{vieweralsosee "[M-2] do" "mansection M-2 do"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[M-2] break" "help m2_break_zh"}{...}
{vieweralsosee "[M-2] continue" "help m2_continue_zh"}{...}
{vieweralsosee "[M-2] for" "help m2_for_zh"}{...}
{vieweralsosee "[M-2] while" "help m2_while_zh"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[M-2] Intro" "help m2_intro_zh"}{...}
{viewerjumpto "Syntax" "m2_do_zh##syntax"}{...}
{viewerjumpto "Description" "m2_do_zh##description"}
{help m2_do:English Version}
{hline}{...}
{viewer jumpto "Links to PDF documentation" "m2_do##linkspdf"}{...}
{viewer jumpto "Remarks" "m2_do##remarks"}{...}
{p2colset 1 13 15 2}{...}
{p2col:{bf:[M-2] do} {hline 2}}do ... while (exp)
{p_end}
{p2col:}({mansection M-2 do:查看完整的PDF手册条目}){p_end}
{p2colreset}{...}


{marker syntax}{...}
{title:语法}

	{cmd:do} {it:stmt} {cmd:while (}{it:exp}{cmd:)}


	{cmd:do} {cmd:{c -(}}
		{it:stmts}
	{cmd:{c )-} while (}{it:exp}{cmd:)}


{p 4 4 2}
其中 {it:exp} 必须计算为一个真实标量。


{marker description}{...}
{title:描述}

{p 4 4 2}
{cmd:do} 执行 {it:stmt} 或 {it:stmts} 一次或多次，直到 {it:exp} 为零。


{marker linkspdf}{...}
{title:PDF文档链接}

        {mansection M-2 doRemarksandexamples:备注和示例}

{pstd}
上述部分不包含在此帮助文件中。


{marker remarks}{...}
{title:备注}

{p 4 4 2}
{cmd:do} 的一个常见用法是循环直到收敛：


	{cmd}do {
		lasta = a
		a = get_new_a(lasta)
	} while (mreldif(a, lasta)>1e-10){txt}

{p 4 4 2}
该循环至少执行一次，条件表达式在循环主体执行之前不会被执行。
{p_end}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <m2_do.sthlp>}