{smcl}
{* *! version 1.1.8  15may2018}{...}
{vieweralsosee "[M-5] Dmatrix()" "mansection M-5 Dmatrix()"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[M-5] Kmatrix()" "help mf_kmatrix_zh"}{...}
{vieweralsosee "[M-5] Lmatrix()" "help mf_lmatrix_zh"}{...}
{vieweralsosee "[M-5] vec()" "help mf_vec_zh"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[M-4] Standard" "help m4_standard_zh"}{...}
{viewerjumpto "Syntax" "mf_dmatrix_zh##syntax"}{...}
{viewerjumpto "Description" "mf_dmatrix_zh##description"}{...}
{viewerjumpto "Links to PDF documentation" "mf_dmatrix_zh##linkspdf"}{...}
{viewerjumpto "Remarks" "mf_dmatrix_zh##remarks"}{...}
{viewerjumpto "Conformability" "mf_dmatrix_zh##conformability"}{...}
{viewerjumpto "Diagnostics" "mf_dmatrix_zh##diagnostics"}{...}
{viewerjumpto "Source code" "mf_dmatrix_zh##source"}{...}
{viewerjumpto "Reference" "mf_dmatrix_zh##reference"}
{help mf_dmatrix:English Version}
{hline}{...}
{p2colset 1 20 22 2}{...}
{p2col:{bf:[M-5] Dmatrix()} {hline 2}}重复矩阵
{p_end}
{p2col:}({mansection M-5 Dmatrix():查看完整PDF手册条目}){p_end}
{p2colreset}{...}


{marker syntax}{...}
{title:语法}

{p 8 12 2}
{it:real matrix}
{cmd:Dmatrix(}{it:real scalar n}{cmd:)}


{marker description}{...}
{title:描述}

{p 4 4 2}
{cmd:Dmatrix(}{it:n}{cmd:)} 
返回 {it:n}^2 {it:x} {it:n}({it:n}+1)/2 的重复矩阵 {cmd:D}，满足 {cmd:D}*{cmd:vech(}{it:X}{cmd:)} {cmd:=}
{cmd:vec(}{it:X}{cmd:)}, 其中 {it:X} 是一个任意的 {it:n x n} 对称矩阵。


{marker linkspdf}{...}
{title:PDF文档链接}

        {mansection M-5 Dmatrix()Remarksandexamples:备注和示例}

{pstd}
以上部分未包含在此帮助文件中。


{marker remarks}{...}
{title:备注}

{p 4 4 2}
重复矩阵经常用于计算对称矩阵函数的导数。{help mf_dmatrix##L1996:L{c u:}tkepohl (1996)} 第9.5节列出了许多重复矩阵的有用特性。


{marker conformability}{...}
{title:兼容性}

    {cmd:Dmatrix(}{it:n}{cmd:)}:
		{it:n}:    1 {it:x} 1
	   {it:result}:  {it:n}^2 {it:x n}({it:n} + 1)/2


{marker diagnostics}{...}
{title:诊断}

{p 4 4 2}
{cmd:Dmatrix(}{it:n}{cmd:)} 如果 {it:n} 小于0或缺失则会中止并报错。{it:n} 被解释为 {help mf_trunc_zh:trunc({it:n})}。


{marker source}{...}
{title:源代码}

{p 4 4 2}
{view dmatrix.mata, adopath asis:dmatrix.mata}
{p_end}


{marker reference}{...}
{title:参考文献}

{marker L1996}{...}
{p 4 4 2}
L{c u:}tkepohl, H. 1996.  {it:Handbook of Matrices}. 纽约: Wiley.
{p_end}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <mf_dmatrix.sthlp>}