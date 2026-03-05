{smcl}
{* *! version 1.1.5  15may2018}{...}
{vieweralsosee "[M-5] Hilbert()" "mansection M-5 Hilbert()"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[M-4] Standard" "help m4_standard_zh"}{...}
{viewerjumpto "Syntax" "mf_hilbert_zh##syntax"}{...}
{viewerjumpto "Description" "mf_hilbert_zh##description"}{...}
{viewerjumpto "Links to PDF documentation" "mf_hilbert_zh##linkspdf"}{...}
{viewerjumpto "Remarks" "mf_hilbert_zh##remarks"}{...}
{viewerjumpto "Conformability" "mf_hilbert_zh##conformability"}{...}
{viewerjumpto "Diagnostics" "mf_hilbert_zh##diagnostics"}{...}
{viewerjumpto "Source code" "mf_hilbert_zh##source"}
{help mf_hilbert:English Version}
{hline}{...}
{p2colset 1 20 22 2}{...}
{p2col:{bf:[M-5] Hilbert()} {hline 2}}Hilbert 矩阵
{p_end}
{p2col:}({mansection M-5 Hilbert():查看完整 PDF 手册条目}){p_end}
{p2colreset}{...}


{marker syntax}{...}
{title:语法}

{p 8 12 2}
{it:real matrix} 
{cmd:Hilbert(}{it:real scalar n}{cmd:)}

{p 8 12 2}
{it:real matrix} 
{cmd:invHilbert(}{it:real scalar n}{cmd:)}


{marker description}{...}
{title:描述}

{p 4 4 2}
{cmd:Hilbert(}{it:n}{cmd:)}
返回一个 {it:n x n} 的 Hilbert 矩阵，定义为矩阵 {it:H}，其元素为 {it:H}[{it:i},{it:j}]=1/({it:i}+{it:j}-1)。

{p 4 4 2}
{cmd:invHilbert(}{it:n}{cmd:)}
返回 {it:n x n} 的 Hilbert 矩阵的逆，定义为具有以下元素的矩阵
(-1)^({it:i}+{it:j})*({it:i}+{it:j}-1)*comb({it:n}+{it:i}-1,
{it:n}-{it:j})*comb({it:n}+{it:j}-1,
{it:n}-{it:i})*comb({it:i}+{it:j}-2, {it:i}-1)^2。


{marker linkspdf}{...}
{title:PDF 文档链接}

        {mansection M-5 Hilbert()Remarksandexamples:备注及示例}

{pstd}
上述部分不包括在此帮助文件中。


{marker remarks}{...}
{title:备注}

{p 4 4 2}
{cmd:Hilbert(}{it:n}{cmd:)} 和 
{cmd:invHilbert(}{it:n}{cmd:)}
用于测试 Mata。
Hilbert 矩阵以极差的条件著称。
前五个 Hilbert 矩阵的行列式分别为
1, 1/12, 1/2, 160, 1/6,048,000, 和 1/266,716,800,000。


{marker conformability}{...}
{title:可兼容性}

    {cmd:Hilbert(}{it:n}{cmd:)}, {cmd:invHilbert(}{it:n}{cmd:)}:
		{it:n}:  1 {it:x} 1
	   {it:result}:  {it:n} {it:x} {it:n}


{marker diagnostics}{...}
{title:诊断}

{p 4 4 2}
如果 {it:n} 不是整数，则使用 trunc({it:n})。


{marker source}{...}
{title:源代码}

{p 4 4 2}
{view hilbert.mata, adopath asis:hilbert.mata},
{view invhilbert.mata, adopath asis:invhilbert.mata}
{p_end}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <mf_hilbert.sthlp>}