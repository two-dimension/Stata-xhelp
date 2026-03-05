{smcl}
{* *! version 1.0.2  11may2011}{...}
{vieweralsosee undocumented "help undocumented"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[M-5] toeplitzsolve()" "help mf_toeplitzsolve_zh"}{...}
{vieweralsosee "" "--"}{...}
{viewerjumpto "Syntax" "mf_arfimaacf_zh##syntax"}{...}
{viewerjumpto "Description" "mf_arfimaacf_zh##description"}{...}
{viewerjumpto "Remarks" "mf_arfimaacf_zh##remarks"}{...}
{viewerjumpto "Conformability" "mf_arfimaacf_zh##conformability"}{...}
{viewerjumpto "Diagnostics" "mf_arfimaacf_zh##diagnostics"}{...}
{viewerjumpto "Source code" "mf_arfimaacf_zh##source"}
{help mf_arfimaacf:English Version}
{hline}{...}
{title:标题}

{p 4 25 2}
{bf:[M-5] arfimaacf()} {hline 2} 自协方差函数


{marker syntax}{...}
{title:语法}

{p 8 12 2}
{it:实数 列向量} 
{cmd:arfimaacf(}{it:实数 标量 n}{cmd:,} {it:实数 列向量 phi}{cmd:,}
	{it:实数 列向量 theta}{cmd:,} {it:实数 标量 d}{cmd:,} 
	{it:实数 标量 v}{cmd:)}


{marker description}{...}
{title:描述}

{p 4 4 2}
{cmd:arfimaacf(}{it:n}{cmd:,} {it:phi}{cmd:,} {it:theta}{cmd:,} 
	{it:d}{cmd:,} {it:v}{cmd:)}计算由自回归参数 {it:phi}、移动平均参数 {it:theta}、分数整合参数 {it:d} 和特有误差方差 {it:v} 定义的自回归分数积分移动平均（ARFIMA）过程的自协方差函数（ACF）。


{marker remarks}{...}
{title:备注}

{p 4 4 2}
{cmd:arfimaacf()} 返回一个长度为 {it:n}+1 的向量，其中第一个元素是 ARFIMA 或 ARMA 过程的方差，而元素 k = 2, ..., {it:n}+1 是时间序列过程在 k-1 个时间单位之间的自协方差。当 {it:d} = 0 时得到 ARMA 过程的 ACF。


{marker conformability}{...}
{title:符合性}

    {cmd:arfimaacf(}{it:n}{cmd:,} {it:phi}{cmd:,} {it:theta}{cmd:,} {it:d}{cmd:,} {it:v}{cmd:)}:
	       {it:n}:  1 {it:x} 1
	     {it:phi}:  {it:p x} 1
	   {it:theta}:  {it:q x} 1
	       {it:d}:  1 {it:x} 1
	       {it:v}:  1 {it:x} 1
	  {it:result}:  {it:n}+1 {it:x} 1


{marker diagnostics}{...}
{title:诊断}

{p 4 4 2}
由 {it:phi} 和 {it:theta} 定义的 AR({it:p}) 和 MA({it:q}) 多项式必须在单位圈外有根，并且这两个多项式不得有共同的根。分数整合参数必须在 (-1,1/2) 范围内。方差参数 {it:v} 必须大于零。


{marker source}{...}
{title:源代码}

{p 4 4 2}
{view arfimaacf.mata, adopath asis:arfimaacf.mata}
{p_end}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <mf_arfimaacf.sthlp>}