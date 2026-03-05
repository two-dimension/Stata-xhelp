{smcl}
{* *! version 1.2.5  15may2018}{...}
{vieweralsosee "[M-5] Toeplitz()" "mansection M-5 Toeplitz()"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[M-4] Standard" "help m4_standard_zh"}{...}
{viewerjumpto "Syntax" "mf_toeplitz_zh##syntax"}{...}
{viewerjumpto "Description" "mf_toeplitz_zh##description"}{...}
{viewerjumpto "Links to PDF documentation" "mf_toeplitz_zh##linkspdf"}{...}
{viewerjumpto "Remarks" "mf_toeplitz_zh##remarks"}{...}
{viewerjumpto "Conformability" "mf_toeplitz_zh##conformability"}{...}
{viewerjumpto "Diagnostics" "mf_toeplitz_zh##diagnostics"}{...}
{viewerjumpto "Source code" "mf_toeplitz_zh##source"}
{help mf_toeplitz:English Version}
{hline}{...}
{p2colset 1 21 23 2}{...}
{p2col:{bf:[M-5] Toeplitz()} {hline 2}}Toeplitz 矩阵
{p_end}
{p2col:}({mansection M-5 Toeplitz():查看完整的 PDF 手册条目}){p_end}
{p2colreset}{...}


{marker syntax}{...}
{title:语法}

{p 8 12 2}
{it:数值矩阵} 
{cmd:Toeplitz(}{it:数值列向量 c1}{cmd:,}
{it:数值行向量 r1}{cmd:)}


{marker description}{...}
{title:描述}

{p 4 4 2}
{cmd:Toeplitz(}{it:c1}{cmd:,} {it:r1}{cmd:)}
返回通过 {it:c1} 定义的 Toeplitz 矩阵，其第一列为 {it:c1}，第一行为 {it:r1}。一个 Toeplitz 矩阵 {it:T} 的特征是 {it:T}[{it:i},{it:j}] = {it:T}[{it:i}-1,{it:j}-1]，{it:i, j} > 1。
在 Toeplitz 矩阵中，每个对角线的值都是恒定的。

{p 4 4 2}
向量 {it:c1} 和 {it:r1} 分别指定 {it:T} 的第一列和第一行。


{marker linkspdf}{...}
{title:PDF 文档链接}

        {mansection M-5 Toeplitz()Remarksandexamples:备注和示例}

{pstd}
上述部分未包含在此帮助文件中。


{marker remarks}{...}
{title:备注}

{p 4 4 2}
{it:c1}[1] 用于填充 {it:T}[1,1]，而 {it:r1}[1] 不被使用。

{p 4 4 2}
要获得对称（厄米）Toeplitz 矩阵，代码为
{cmd:Toeplitz(}{it:v}{cmd:,} {it:v}{cmd:')} 
(如果 {it:v} 是列向量)，或
{cmd:Toeplitz(}{it:v}{cmd:',} {it:v}{cmd:)} 如果 {it:v} 是行向量。


{marker conformability}{...}
{title:兼容性}

    {cmd:Toeplitz(}{it:c1}{cmd:,} {it:r1}{cmd:)}:
	       {it:c1}:  {it:r x} 1
	       {it:r1}:  1 {it:x c}
	   {it:result}:  {it:r x c}


{marker diagnostics}{...}
{title:诊断}

{p 4 4 2}
无。


{marker source}{...}
{title:源代码}

{p 4 4 2}
{view toeplitz.mata, adopath asis:toeplitz.mata}
{p_end}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <mf_toeplitz.sthlp>}