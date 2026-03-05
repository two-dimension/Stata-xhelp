{smcl}
{* *! version 1.1.4  15may2018}{...}
{vieweralsosee "[M-5] st_nvar()" "mansection M-5 st_nvar()"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[M-4] Stata" "help m4_stata_zh"}{...}
{viewerjumpto "语法" "mf_st_nvar_zh##syntax"}{...}
{viewerjumpto "描述" "mf_st_nvar_zh##description"}{...}
{viewerjumpto "相容性" "mf_st_nvar_zh##conformability"}{...}
{viewerjumpto "诊断" "mf_st_nvar_zh##diagnostics"}{...}
{viewerjumpto "源代码" "mf_st_nvar_zh##source"}
{help mf_st_nvar:English Version}
{hline}{...}
{p2colset 1 20 22 2}{...}
{p2col:{bf:[M-5] st_nvar()} {hline 2}}变量和观测值的数量
{p_end}
{p2col:}({mansection M-5 st_nvar():查看完整 PDF 手册条目}){p_end}
{p2colreset}{...}


{marker syntax}{...}
{title:语法}

{p 8 12 2}
{it:real scalar} {cmd:st_nvar()}

{p 8 12 2}
{it:real scalar} {cmd:st_nobs()}


{marker description}{...}
{title:描述}

{p 4 4 2}
{cmd:st_nvar()} 返回当前在 Stata 中加载的数据集中定义的变量数量。

{p 4 4 2}
{cmd:st_nobs()} 返回当前在 Stata 中加载的数据集中定义的观测值数量。


{marker conformability}{...}
{title:相容性}

    {cmd:st_nvar()}, {cmd:st_nobs()}:
	   {it:result}:  1 {it:x} 1


{marker diagnostics}{...}
{title:诊断}

{p 4 4 2}
无。


{marker source}{...}
{title:源代码}

{p 4 4 2}
函数是内置的。
{p_end}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <mf_st_nvar.sthlp>}