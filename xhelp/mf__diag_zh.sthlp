{smcl}
{* *! version 1.2.4  19oct2017}{...}
{vieweralsosee "[M-5] _diag()" "mansection M-5 _diag()"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[M-5] diag()" "help mf_diag_zh"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[M-4] manipulation" "help m4_manipulation_zh"}{...}
{viewerjumpto "Syntax" "mf__diag_zh##syntax"}{...}
{viewerjumpto "Description" "mf__diag_zh##description"}{...}
{viewerjumpto "Conformability" "mf__diag_zh##conformability"}{...}
{viewerjumpto "Diagnostics" "mf__diag_zh##diagnostics"}{...}
{viewerjumpto "Source code" "mf__diag_zh##source"}
{help mf__diag:English Version}
{hline}{...}
{p2colset 1 18 20 2}{...}
{p2col:{bf:[M-5] _diag()} {hline 2}}替换矩阵的对角线
{p_end}
{p2col:}({mansection M-5 _diag():查看完整的PDF手册条目}){p_end}
{p2colreset}{...}


{marker syntax}{...}
{title:语法}

{p 8 12 2}
{it:void}
{cmd:_diag(}{it:数值矩阵 Z}, {it:数值向量 v}{cmd:)}


{marker description}{...}
{title:描述}

{p 4 4 2}
{cmd:_diag(}{it:Z}{cmd:,} {it:v}{cmd:)} 用 {it:v} 替换矩阵 {it:Z} 的对角线。{it:Z} 不必是方阵。

{p 8 12 2}
1.
如果 {it:v} 是一个向量，则该向量替换主对角线。

{p 8 12 2}
2.
如果 {it:v} 是 1 {it:x} 1，则主对角线的每个元素都被 {it:v} 替换。

{p 8 12 2}
3.
如果 {it:v} 是空向量（1 {it:x} 0 或 0 {it:x} 1），
则 {it:Z} 保持不变。


{marker conformability}{...}
{title:兼容性}

    {cmd:_diag(}{it:Z}, {it:v}{cmd:)}:
	{it:输入:}
		{it:Z}:  {it:n x m}, {it:n}<={it:m}
		{it:v}:  1 {it:x} 1,  1 {it:x n}, 或  {it:n x} 1
	{it:或}
		{it:Z}:  {it:n x m}, {it:n}>{it:m}
		{it:v}:  1 {it:x} 1,  1 {it:x m}, 或  {it:m x} 1
	{it:输出:}
		{it:Z}:  {it:n x m}


{marker diagnostics}{...}
{title:诊断}

{p 4 4 2}
{cmd:_diag(}{it:Z}{cmd:,} {it:v}{cmd:)} 如果 {it:Z} 或 {it:v} 是视图，则会中止并报错。


{marker source}{...}
{title:源代码}

{p 4 4 2}
函数是内置的。
{p_end}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <mf__diag.sthlp>}