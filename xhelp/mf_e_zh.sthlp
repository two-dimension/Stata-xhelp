{smcl}
{* *! version 1.1.4  15may2018}{...}
{vieweralsosee "[M-5] e()" "mansection M-5 e()"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[M-4] Standard" "help m4_standard_zh"}{...}
{viewerjumpto "Syntax" "mf_e_zh##syntax"}{...}
{viewerjumpto "Description" "mf_e_zh##description"}{...}
{viewerjumpto "Conformability" "mf_e_zh##conformability"}{...}
{viewerjumpto "Diagnostics" "mf_e_zh##diagnostics"}{...}
{viewerjumpto "Source code" "mf_e_zh##source"}
{help mf_e:English Version}
{hline}{...}
{p2colset 1 14 16 2}{...}
{p2col:{bf:[M-5] e()} {hline 2}}单位向量
{p_end}
{p2col:}({mansection M-5 e():查看完整 PDF 手册条目}){p_end}
{p2colreset}{...}


{marker syntax}{...}
{title:语法}

{p 8 12 2}
{it:real rowvector}
{cmd:e(}{it:real scalar i}{cmd:,}
{it:real scalar n}{cmd:)}


{marker description}{...}
{title:描述}

{p 4 4 2}
{cmd:e(}{it:i}{cmd:,} {it:n}{cmd:)} 返回一个 1 {it:x} {it:n} 单位向量，所有元素均为零，除了第 {it:i} 个元素，其值为一。


{marker conformability}{...}
{title:相容性}

    {cmd:e(}{it:i}{cmd:,} {it:n}{cmd:)}:
		{it:i}:  1 {it:x} {it:1}
		{it:n}:  1 {it:x} {it:1}
	   {it:result}:  1 {it:x} {it:n}


{marker diagnostics}{...}
{title:诊断}

{p 4 4 2}
{cmd:e(}{it:i}{cmd:,} {it:n}{cmd:)} 如果 {it:n}<1 或 {it:i}<1 或 {it:i}>{it:n}，则会中止并报错。参数 {it:i} 和 {it:n} 被解释为 
{cmd:trunc(}{it:i}{cmd:)} 和 
{cmd:trunc(}{it:n}{cmd:)}。


{marker source}{...}
{title:源代码}

{p 4 4 2}
{view e.mata, adopath asis:e.mata}
{p_end}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <mf_e.sthlp>}