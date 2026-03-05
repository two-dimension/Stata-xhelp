{smcl}
{* *! version 1.1.9  25sep2018}{...}
{vieweralsosee "[M-5] Lmatrix()" "mansection M-5 Lmatrix()"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[M-5] Dmatrix()" "help mf_dmatrix_zh"}{...}
{vieweralsosee "[M-5] Kmatrix()" "help mf_kmatrix_zh"}{...}
{vieweralsosee "[M-5] vec()" "help mf_vec_zh"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[M-4] Standard" "help m4_standard_zh"}{...}
{viewerjumpto "Syntax" "mf_lmatrix_zh##syntax"}{...}
{viewerjumpto "Description" "mf_lmatrix_zh##description"}{...}
{viewerjumpto "Links to PDF documentation" "mf_lmatrix_zh##linkspdf"}{...}
{viewerjumpto "Remarks" "mf_lmatrix_zh##remarks"}{...}
{viewerjumpto "Conformability" "mf_lmatrix_zh##conformability"}{...}
{viewerjumpto "Diagnostics" "mf_lmatrix_zh##diagnostics"}{...}
{viewerjumpto "Source code" "mf_lmatrix_zh##source"}{...}
{viewerjumpto "Reference" "mf_lmatrix_zh##reference"}
{help mf_lmatrix:English Version}
{hline}{...}
{p2colset 1 20 22 2}{...}
{p2col:{bf:[M-5] Lmatrix()} {hline 2}}消元矩阵
{p_end}
{p2col:}({mansection M-5 Lmatrix():查看完整PDF手册条目}){p_end}
{p2colreset}{...}


{marker syntax}{...}
{title:语法}

{p 8 12 2}
{it:实数 矩阵}
{cmd:Lmatrix(}{it:实数 标量 n}{cmd:)}


{marker description}{...}
{title:描述}

{p 4 4 2}
{cmd:Lmatrix(}{it:n}{cmd:)} 返回
{it:n}({it:n}+1)/2 {it:x} {it:n}^2 消元矩阵 {cmd:L}
使得 {cmd:L}*{cmd:vec(}{it:X}{cmd:)} {cmd:=} {cmd:vech(}{it:X}{cmd:)},
其中 {it:X} 是一个 {it:n x n} 对称矩阵。


{marker linkspdf}{...}
{title:PDF 文档链接}

        {mansection M-5 Lmatrix()Remarksandexamples:备注和示例}

{pstd}
上述部分不包含在本帮助文件中。


{marker remarks}{...}
{title:备注}

{p 4 4 2}
消元矩阵通常用于计算对称矩阵函数的导数。
{help mf_lmatrix##L1996:L{c u:}tkepohl (1996)} 第9.6节列出了
消元矩阵的许多有用特性。


{marker conformability}{...}
{title:符合性}

    {cmd:Lmatrix(}{it:n}{cmd:)}:
		{it:n}:         1 {it:x} 1
	   {it:result}:  {it:n}({it:n}+1)/2 {it:x n}^2


{marker diagnostics}{...}
{title:诊断}

{p 4 4 2}
{cmd:Lmatrix(}{it:n}{cmd:)} 如果 
{it:n} 小于 0 或缺失，将中止并报错。{it:n} 被
解释为 {cmd:trunc(}{it:n}{cmd:)}。


{marker source}{...}
{title:源代码}

{p 4 4 2}
{view lmatrix.mata, adopath asis:lmatrix.mata}


{marker reference}{...}
{title:参考文献}

{marker L1996}{...}
{p 4 4 2}
L{c u:}tkepohl, H. 1996.  {it:Handbook of Matrices}. 纽约: Wiley.
{p_end}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <mf_lmatrix.sthlp>}