{smcl}
{* *! version 1.1.5  15may2018}{...}
{vieweralsosee "[M-2] goto" "mansection M-2 goto"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[M-2] break" "help m2_break_zh"}{...}
{vieweralsosee "[M-2] continue" "help m2_continue_zh"}{...}
{vieweralsosee "[M-2] do" "help m2_do_zh"}{...}
{vieweralsosee "[M-2] for" "help m2_for_zh"}{...}
{vieweralsosee "[M-2] while" "help m2_while_zh"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[M-2] Intro" "help m2_intro_zh"}{...}
{viewerjumpto "Syntax" "m2_goto_zh##syntax"}{...}
{viewerjumpto "Description" "m2_goto_zh##description"}{...}
{viewerjumpto "Links to PDF documentation" "m2_goto_zh##linkspdf"}{...}
{viewerjumpto "Remarks" "m2_goto_zh##remarks"}{...}
{viewerjumpto "Reference" "m2_goto_zh##reference"}
{help m2_goto:English Version}
{hline}{...}
{p2colset 1 15 17 2}{...}
{p2col:{bf:[M-2] goto} {hline 2}}转到标签
{p_end}
{p2col:}({mansection M-2 goto:查看完整的 PDF 手册条目}){p_end}
{p2colreset}{...}


{marker syntax}{...}
{title:语法}

	{it:label}{cmd::}  ...
		...
		{cmd:goto} {it:label}
		 

{p 4 4 2}
其中 {it:label}{cmd::} 可以在 {cmd:goto} 前后出现。


{marker description}{...}
{title:描述}

{p 4 4 2}
{cmd:goto} {it:label} 使控制权转移到紧随 {it:label}{cmd::} 之后的语句。{it:label} 可以是任何最多八个字符长的名称。


{marker linkspdf}{...}
{title:链接到 PDF 文档}

        {mansection M-2 gotoRemarksandexamples:备注与示例}

{pstd}
上述部分未包含在此帮助文件中。


{marker remarks}{...}
{title:备注}

{p 4 4 2}
如今，良好的风格是避免使用 {cmd:goto}。

{p 4 4 2}
{cmd:goto} 在翻译 FORTRAN 程序时非常有用，例如：

		{cmd}A = 4.0e0/3.0e0
	     10 B = A - 1.0e0
		C = B + B + B
		EPS = DABS(C - 1.0e0)
		if (EPS.EQ.0.0e0) GOTO 10{txt}

{p 4 4 2}
Mata 的翻译是：

		{cmd}a = 4/3
	s10:    b = a - 1
		c = b + b + b
		eps = abs(c-1)
		if (eps==0) goto s10{txt}

{p 4 4 2}
尽管

		{cmd}a = 4/3
		do {
			b = a - 1
			c = b + b + b
			eps = abs(c - 1)
		} while (eps==0){txt}

{p 4 4 2}
更易读。
{p_end}


{marker reference}{...}
{title:参考文献}

{phang}
Gould, W. W. 2005.
{browse "http://www.stata-journal.com/sjpdf.html?articlenum=pr0017":Mata 事项：翻译 Fortran}.
{it:Stata Journal} 5: 421-441.
{p_end}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <m2_goto.sthlp>}