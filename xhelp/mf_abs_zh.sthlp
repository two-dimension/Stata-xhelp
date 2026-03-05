{smcl}
{* *! version 1.1.4  15may2018}{...}
{vieweralsosee "[M-5] abs()" "mansection M-5 abs()"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[M-4] Scalar" "help m4_scalar_zh"}{...}
{viewerjumpto "语法" "mf_abs_zh##syntax"}{...}
{viewerjumpto "描述" "mf_abs_zh##description"}{...}
{viewerjumpto "兼容性" "mf_abs_zh##conformability"}{...}
{viewerjumpto "诊断" "mf_abs_zh##diagnostics"}{...}
{viewerjumpto "源代码" "mf_abs_zh##source"}
{help mf_abs:English Version}
{hline}{...}
{p2colset 1 16 18 2}{...}
{p2col:{bf:[M-5] abs()} {hline 2}}绝对值（长度）
{p_end}
{p2col:}({mansection M-5 abs():查看完整的 PDF 手册条目}){p_end}
{p2colreset}{...}


{marker syntax}{...}
{title:语法}

{p 8 12 2}
{it:实数矩阵} {cmd:abs(}{it:数值矩阵 Z}{cmd:)}


{marker description}{...}
{title:描述}

{p 4 4 2}
对于 {it:Z} 为实数时，{cmd:abs(}{it:Z}{cmd:)} 返回 {it:Z} 的逐元素绝对值。

{p 4 4 2}
对于 {it:Z} 为复数时，{cmd:abs(}{it:Z}{cmd:)} 返回每个元素的逐元素长度。如果 {it:Z}={it:a}+{it:b}i，返回的是 
{cmd:sqrt(}{it:a}^2+{it:b}^2{cmd:)），尽管计算并不是以那种方式进行的。实际使用的方法可以防止溢出。


{marker conformability}{...}
{title:兼容性}

    {cmd:abs(}{it:Z}{cmd:)}:
		{it:Z}:  {it:r x c}
	   {it:result}:  {it:r x c}


{marker diagnostics}{...}
{title:诊断}

{p 4 4 2}
{cmd:abs(.)} 返回 {cmd:.}（缺失值）。


{marker source}{...}
{title:源代码}

{p 4 4 2}
函数是内置的。
{p_end}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <mf_abs.sthlp>}