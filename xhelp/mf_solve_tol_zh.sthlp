{smcl}
{* *! version 1.1.4  15may2018}{...}
{vieweralsosee "[M-5] solve_tol()" "mansection M-5 solve_tol()"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[M-4] Utility" "help m4_utility_zh"}{...}
{viewerjumpto "语法" "mf_solve_tol_zh##syntax"}{...}
{viewerjumpto "描述" "mf_solve_tol_zh##description"}{...}
{viewerjumpto "PDF 文档链接" "mf_solve_tol_zh##linkspdf"}{...}
{viewerjumpto "备注" "mf_solve_tol_zh##remarks"}{...}
{viewerjumpto "适应性" "mf_solve_tol_zh##conformability"}{...}
{viewerjumpto "诊断" "mf_solve_tol_zh##diagnostics"}{...}
{viewerjumpto "源代码" "mf_solve_tol_zh##source"}
{help mf_solve_tol:English Version}
{hline}{...}
{p2colset 1 22 24 2}{...}
{p2col:{bf:[M-5] solve_tol()} {hline 2}}求解器和反演器使用的容忍度
{p_end}
{p2col:}({mansection M-5 solve_tol():查看完整PDF手册条目}){p_end}
{p2colreset}{...}


{marker syntax}{...}
{title:语法}

{p 8 12 2}
{it:实数标量}
{cmd:solve_tol(}{it:数值矩阵 Z}{cmd:,}
{it:实数标量 usertol}{cmd:)}


{marker description}{...}
{title:描述}

{p 4 4 2}
{cmd:solve_tol(}{it:Z}{cmd:,} {it:usertol}{cmd:)} 
返回许多 Mata 求解器用于求解 {it:AX}={it:B} 和许多 Mata 反演器用于获得 {it:A}^(-1) 所使用的容忍度。
{it:usertol}是用户指定的容忍度，若用户未指定容忍度，则为缺失值。


{marker linkspdf}{...}
{title:PDF 文档链接}

        {mansection M-5 solve_tol()备注和示例:备注和示例}

{pstd}
上述部分未包含在此帮助文件中。


{marker remarks}{...}
{title:备注}

{p 4 4 2}
许多 Mata 求解器用于求解 {it:AX}={it:B} 和许多 Mata 反演器用于获得 {it:A}^(-1) 的容忍度为

		{it:eta} = {it:s} * {cmd:trace(abs(}{it:Z}{cmd:))}/{it:n}{right:(1)    }

{p 4 4 2}
其中 {it:s}=1e-13 或用户指定的值，{it:n} 是
{cmd:min(rows(}{it:Z}{cmd:), cols(}{it:Z}{cmd:))}，而 {it:Z} 是与 {it:A} 相关的矩阵，通常通过某种形式的分解，但也可以是 {it:A} 
本身（例如，如果 {it:A} 是三角形的）。
参见，例如， 
{bf:{help mf_solvelower_zh:[M-5] solvelower()}} 和 
{bf:{help mf_cholsolve_zh:[M-5] cholsolve()}}.


{p 4 4 2}
当 {it:usertol}>0 且 {it:usertol}<{cmd:.} 被指定时， 
{cmd:solvetol()} 返回使用 {it:s}={it:usertol} 计算的 {it:eta}。

{p 4 4 2}
当 {it:usertol}<=0 被指定时， 
{cmd:solvetol()} 返回 -{it:usertol}。  

{p 4 4 2}
当 {it:usertol}>={cmd:.} 被指定时， 
{cmd:solvetol()} 返回默认结果，计算方式如下：

{p 8 12 2}
1. 如果外部实数标量 {cmd:_solvetolerance} 不存在， 
    这通常是情况，返回的 {it:eta} 使用 
    {it:s}=1e-13。

{p 8 12 2}
2. 如果外部实数标量 {cmd:_solvetolerance} 存在， 

{p 12 16 2}
a. 如果 {cmd:_solvetolerance}>0，返回的 {it:eta} 使用 
    {it:s}={cmd:solvetolerance}。

{p 12 16 2}
b. 如果 {cmd:_solvetolerance}<=0，则返回 -{cmd:_solvetolerance}。


{marker conformability}{...}
{title:适应性}

    {cmd:solve_tol(}{it:Z}{cmd:,} {it:usertol}{cmd:)}:
		{it:Z}:  {it:r x c}
	  {it:usertol}:  1 {it:x} 1
	   {it:result}:  1 {it:x} 1


{marker diagnostics}{...}
{title:诊断}

{p 4 4 2}
{cmd:solve_tol(}{it:Z}{cmd:,} {it:usertol}{cmd:)} 
在计算 (1) 时跳过 {it:Z} 中的缺失值； {it:n} 被定义为对角线上的非缺失元素的数量。


{marker source}{...}
{title:源代码}

{p 4 4 2}
{view solve_tol.mata, adopath asis:solve_tol.mata}
{p_end}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <mf_solve_tol.sthlp>}