{smcl}
{* *! version 1.1.8  15may2018}{...}
{vieweralsosee "[M-5] Kmatrix()" "mansection M-5 Kmatrix()"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[M-5] Dmatrix()" "help mf_dmatrix_zh"}{...}
{vieweralsosee "[M-5] Lmatrix()" "help mf_lmatrix_zh"}{...}
{vieweralsosee "[M-5] vec()" "help mf_vec_zh"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[M-4] Standard" "help m4_standard_zh"}{...}
{viewerjumpto "Syntax" "mf_kmatrix_zh##syntax"}{...}
{viewerjumpto "Description" "mf_kmatrix_zh##description"}{...}
{viewerjumpto "Links to PDF documentation" "mf_kmatrix_zh##linkspdf"}{...}
{viewerjumpto "Remarks" "mf_kmatrix_zh##remarks"}{...}
{viewerjumpto "Conformability" "mf_kmatrix_zh##conformability"}{...}
{viewerjumpto "Diagnostics" "mf_kmatrix_zh##diagnostics"}{...}
{viewerjumpto "Source code" "mf_kmatrix_zh##source"}{...}
{viewerjumpto "Reference" "mf_kmatrix_zh##reference"}
{help mf_kmatrix:English Version}
{hline}{...}
{p2colset 1 20 22 2}{...}
{p2col:{bf:[M-5] Kmatrix()} {hline 2}}置换矩阵
{p_end}
{p2col:}({mansection M-5 Kmatrix():查看完整的 PDF 手册条目}){p_end}
{p2colreset}{...}


{marker syntax}{...}
{title:语法}

{p 8 12 2}
{it:real matrix}
{cmd:Kmatrix(}{it:real scalar m}{cmd:,} {it:real scalar n}{cmd:)}


{marker description}{...}
{title:描述}

{p 4 4 2}
{cmd:Kmatrix(}{it:m}{cmd:,} {it:n}{cmd:)} 
返回 {it:mn} {it:x} {it:mn} 置换矩阵 {cmd:K}
使得 {cmd:K}*{cmd:vec(}{it:X}{cmd:)} {cmd:=} {cmd:vec(}{it:X}{cmd:')},
其中 {it:X} 是一个 {it:m x n} 矩阵。


{marker linkspdf}{...}
{title:PDF 文档链接}

        {mansection M-5 Kmatrix()Remarksandexamples:备注和示例}

{pstd}
上述章节未包含在此帮助文档中。


{marker remarks}{...}
{title:备注}

{p 4 4 2}
置换矩阵常用于计算矩阵函数的导数。 
{help mf_kmatrix##L1996:L{c u:}tkepohl (1996)} 第9.2节列出了置换矩阵的许多
有用属性。


{marker conformability}{...}
{title:兼容性}

    {cmd:Kmatrix(}{it:m}{cmd:,} {it:n}{cmd:)}:
		{it:m}:   1 {it:x} 1
		{it:n}:   1 {it:x} 1
	   {it:result}:  {it:mn} {it:x mn}


{marker diagnostics}{...}
{title:诊断}

{p 4 4 2}
如果 {it:m} 或 {it:n} 小于 0 或缺失，{cmd:Kmatrix(}{it:m}{cmd:,} {it:n}{cmd:)} 将终止并报错。 
{it:m} 和 {it:n} 被解释为 {cmd:trunc(}{it:m}{cmd:)} 和 {cmd:trunc(}{it:n}{cmd:)}。


{marker source}{...}
{title:源代码}

{p 4 4 2}
{view kmatrix.mata, adopath asis:kmatrix.mata}
{p_end}


{marker reference}{...}
{title:参考文献}

{marker L1996}{...}
{p 4 4 2}
L{c u:}tkepohl, H. 1996.  {it:矩阵手册}. 纽约: Wiley.
{p_end}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <mf_kmatrix.sthlp>}