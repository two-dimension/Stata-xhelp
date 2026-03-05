{smcl}
{* *! version 1.1.3  15may2018}{...}
{vieweralsosee undocumented "help undocumented"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[M-5] trace()" "help mf_trace_zh"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[M-4] Matrix" "help m4_matrix_zh"}{...}
{viewerjumpto "Syntax" "mf_trace_avbv_zh##syntax"}{...}
{viewerjumpto "Description" "mf_trace_avbv_zh##description"}{...}
{viewerjumpto "Remarks" "mf_trace_avbv_zh##remarks"}{...}
{viewerjumpto "Conformability" "mf_trace_avbv_zh##conformability"}{...}
{viewerjumpto "Diagnostics" "mf_trace_avbv_zh##diagnostics"}{...}
{viewerjumpto "Source code" "mf_trace_avbv_zh##source"}
{help mf_trace_avbv:English Version}
{hline}{...}
{title:标题}

{p 4 8 2}
{bf:[M-5] trace_AVBV()} {hline 2} 获取特殊用途矩阵的迹


{marker syntax}{...}
{title:语法}

{p 8 12 2}
{it:实数标量}
{cmd:trace_AVBV(}{it:实数矩阵 A}, {it:实数矩阵 B}, 
{it:实数向量 v}{cmd:)}


{marker description}{...}
{title:描述}

{p 4 4 2}
{cmd:trace_AVBV(}{it:A}{cmd:,} {it:B}{cmd:,} {it:v}{cmd:)} 返回
{cmd:trace((}{it:A}{cmd:*diag(}{it:v}{cmd:))*(}{it:B}{cmd:*diag(}{it:v}{cmd:)))},
以高效的方式计算，其中 {it:A} 和 {it:B} 是对称矩阵，其对角线上为零。

{p 4 4 2}
{cmd:trace_AVBV()} 是一个 {help undocumented_zh} 函数。


{marker remarks}{...}
{title:备注}

{p 4 4 2}
此计算在某些空间统计计算中出现。


{marker conformability}{...}
{title:兼容性}

    {cmd:trace_AVBV(}{it:A}, {it:B}, {it:v}{cmd:)}:
		{it:A}:  {it:n x n} 
		{it:B}:  {it:n x n} 
		{it:v}:  {it:n x} 1


{marker diagnostics}{...}
{title:诊断}

{p 4 4 2}
{cmd:trace_AVBV(}{it:A}{cmd:,} {it:B}{cmd:,} {it:v}{cmd:)} 
假定，但不检查，{it:A} 和 {it:B} 是对称的，且对角线上为零。

{p 4 4 2}
{cmd:trace_AVBV(}{it:A}{cmd:,} {it:B}{cmd:,} {it:v}{cmd:)} 
如果 {it:A}、{it:B} 或 {it:v} 是一个视图，则会中止并产生错误。


{marker source}{...}
{title:源代码}

{p 4 4 2}
函数是内置的。
{p_end}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <mf_trace_avbv.sthlp>}