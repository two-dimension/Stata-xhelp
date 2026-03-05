{smcl}
{* *! version 1.1.4  15may2018}{...}
{vieweralsosee "[M-5] comb()" "mansection M-5 comb()"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[M-4] Statistical" "help m4_statistical_zh"}{...}
{viewerjumpto "Syntax" "mf_comb_zh##syntax"}{...}
{viewerjumpto "Description" "mf_comb_zh##description"}{...}
{viewerjumpto "Conformability" "mf_comb_zh##conformability"}{...}
{viewerjumpto "Diagnostics" "mf_comb_zh##diagnostics"}{...}
{viewerjumpto "Source code" "mf_comb_zh##source"}
{help mf_comb:English Version}
{hline}{...}
{p2colset 1 17 19 2}{...}
{p2col:{bf:[M-5] comb()} {hline 2}}组合函数
{p_end}
{p2col:}({mansection M-5 comb():查看完整的 PDF 手册条目}){p_end}
{p2colreset}{...}


{marker syntax}{...}
{title:语法}

{p 8 12 2}
{it:实数矩阵}
{cmd:comb(}{it:实数矩阵 n}{cmd:,} {it:实数矩阵 k}{cmd:)}


{marker description}{...}
{title:描述}

{p 4 4 2}
{cmd:comb(}{it:n}{cmd:,} {it:k}{cmd:)} 返回元素级组合函数 {it:n} 选择 {it:k}，即从 {it:n} 项中选择 {it:k} 项的方式数量，与顺序无关。


{marker conformability}{...}
{title:兼容性}

    {cmd:comb(}{it:n}{cmd:,} {it:k}{cmd:)}:
		{it:n}:  {it:r1 x c1}
		{it:k}:  {it:r2 x c2}，{it:n} 和 {it:k} r 兼容
	   {it:result}:  max({it:r1},{it:r2}) {it:x} max({it:c1},{it:c2})


{marker diagnostics}{...}
{title:诊断}

{p 4 4 2}
{cmd:comb(}{it:n}{cmd:,} {it:k}{cmd:)} 在任一参数缺失或结果大于 10^300 时返回缺失值。


{marker source}{...}
{title:源代码}

{p 4 4 2}
函数为内置。
{p_end}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <mf_comb.sthlp>}