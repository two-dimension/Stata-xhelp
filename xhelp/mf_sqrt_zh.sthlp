{smcl}
{* *! version 1.1.5  15may2018}{...}
{vieweralsosee "[M-5] sqrt()" "mansection M-5 sqrt()"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[M-5] cholesky()" "help mf_cholesky_zh"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[M-4] Scalar" "help m4_scalar_zh"}{...}
{viewerjumpto "Syntax" "mf_sqrt_zh##syntax"}{...}
{viewerjumpto "Description" "mf_sqrt_zh##description"}{...}
{viewerjumpto "Conformability" "mf_sqrt_zh##conformability"}{...}
{viewerjumpto "Diagnostics" "mf_sqrt_zh##diagnostics"}{...}
{viewerjumpto "Source code" "mf_sqrt_zh##source"}
{help mf_sqrt:English Version}
{hline}{...}
{p2colset 1 17 19 2}{...}
{p2col:{bf:[M-5] sqrt()} {hline 2}}平方根
{p_end}
{p2col:}({mansection M-5 sqrt():查看完整的PDF手册条目}){p_end}
{p2colreset}{...}


{marker syntax}{...}
{title:语法}

{p 8 12 2}
{it:数值矩阵} 
{cmd:sqrt(}{it:数值矩阵 Z}{cmd:)}


{marker description}{...}
{title:描述}

{p 4 4 2}
{cmd:sqrt(}{it:Z}{cmd:)} 返回 {it:Z} 的逐元素平方根。


{marker conformability}{...}
{title:相容性}

    {cmd:sqrt(}{it:Z}{cmd:)}
	     {it:Z}:  {it:r x c}
	{it:结果}:  {it:r x c}


{marker diagnostics}{...}
{title:诊断}

{p 4 4 2}
{cmd:sqrt(}{it:Z}{cmd:)} 当 {it:Z} 为实数且 {it:Z}<0 时返回缺失值；即， 
{cmd:sqrt(}-4{cmd:)} = {cmd:.} 但 {cmd:sqrt(}-4+0i{cmd:)} = 2i。


{marker source}{...}
{title:源代码}

{p 4 4 2}
函数是内置的。
{p_end}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <mf_sqrt.sthlp>}