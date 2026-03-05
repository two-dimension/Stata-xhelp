{smcl}
{* *! version 1.1.4  15may2018}{...}
{vieweralsosee "[M-2] continue" "mansection M-2 continue"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[M-2] break" "help m2_break_zh"}{...}
{vieweralsosee "[M-2] do" "help m2_do_zh"}{...}
{vieweralsosee "[M-2] for" "help m2_for_zh"}{...}
{vieweralsosee "[M-2] while" "help m2_while_zh"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[M-2] Intro" "help m2_intro_zh"}{...}
{viewerjumpto "Syntax" "m2_continue_zh##syntax"}{...}
{viewerjumpto "Description" "m2_continue_zh##description"}{...}
{viewerjumpto "Links to PDF documentation" "m2_continue_zh##linkspdf"}{...}
{viewerjumpto "Remarks" "m2_continue_zh##remarks"}
{help m2_continue:English Version}
{hline}{...}
{p2colset 1 19 21 2}{...}
{p2col:{bf:[M-2] continue} {hline 2}}继续下一个 for、while 或 do 循环的迭代
{p_end}
{p2col:}({mansection M-2 continue:查看完整 PDF 手册条目}){p_end}
{p2colreset}{...}


{marker syntax}{...}
{title:语法}

	{cmd:for}, {cmd:while}, {it:或} {cmd:do {c -(}}
		...
		{cmd:if (}...{cmd:) {c -(}}
			...
			{cmd:continue}
		{cmd:{c )-}}
		...
	{cmd:{c )-}}
	...


{marker description}{...}
{title:描述}

{p 4 4 2}
{cmd:continue} 重新开始最内层的 {cmd:for}、{cmd:while} 或 {cmd:do} 循环。执行将继续，就好像循环达到了其逻辑结束。

{p 4 4 2}
{cmd:continue} 通常是在一个 {cmd:if} 后面出现的。


{marker linkspdf}{...}
{title:PDF 文档链接}

        {mansection M-2 continueRemarksandexamples:备注和示例}

{pstd}
以上部分不包含在此帮助文件中。


{marker remarks}{...}
{title:备注}

{p 4 4 2}
以下两个代码片段是等价的：

	{cmd}for (i=1; i<=rows(A); i++) {
		for (j=1; j<=cols(A); j++) {
			if (i==j) continue
			{txt}... 对 A[i,j] 执行的操作 ...{cmd}
		}
	}{txt}

{p 4 4 2}
和

	{cmd}for (i=1; i<=rows(A); i++) {
		for (j=1; j<=cols(A); j++) {
			if (i!=j) {
				{txt}... 对 A[i,j] 执行的操作 ...{cmd}
			}
		}
	}{txt}

{p 4 4 2}
{cmd:continue} 在最内层的 {cmd:for} 或 {cmd:while} 循环中操作，即使采取了 {cmd:continue} 动作，标准的循环结束处理也会发生（在这里是 {cmd:j++}）。
{p_end}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <m2_continue.sthlp>}