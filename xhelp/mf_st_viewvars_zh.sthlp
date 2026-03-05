{smcl}
{* *! version 1.1.5  15may2018}{...}
{vieweralsosee "[M-5] st_viewvars()" "mansection M-5 st_viewvars()"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[M-5] st_view()" "help mf_st_view_zh"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[M-4] Stata" "help m4_stata_zh"}{...}
{viewerjumpto "Syntax" "mf_st_viewvars_zh##syntax"}{...}
{viewerjumpto "Description" "mf_st_viewvars_zh##description"}{...}
{viewerjumpto "Links to PDF documentation" "mf_st_viewvars_zh##linkspdf"}{...}
{viewerjumpto "Remarks" "mf_st_viewvars_zh##remarks"}{...}
{viewerjumpto "Conformability" "mf_st_viewvars_zh##conformability"}{...}
{viewerjumpto "Diagnostics" "mf_st_viewvars_zh##diagnostics"}{...}
{viewerjumpto "Source code" "mf_st_viewvars_zh##source"}
{help mf_st_viewvars:English Version}
{hline}{...}
{p2colset 1 24 26 2}{...}
{p2col:{bf:[M-5] st_viewvars()} {hline 2}}查看的变量和观察值
{p_end}
{p2col:}({mansection M-5 st_viewvars():查看完整的 PDF 手册条目}){p_end}
{p2colreset}{...}


{marker syntax}{...}
{title:语法}

{p 8 12 2}
{it:real rowvector} 
{cmd:st_viewvars(}{it:matrix V}{cmd:)}

{p 8 12 2}
{it:real vector}{bind:   }
{cmd:st_viewobs(}{it:matrix V}{cmd:)}


{p 4 8 2}
其中 {it:V} 必须是一个视图。


{marker description}{...}
{title:描述}

{p 4 4 2}
{cmd:st_viewvars(}{it:V}{cmd:)} 
返回与 {it:V} 的列相对应的 Stata 变量的索引。

{p 4 4 2}
{cmd:st_viewobs(}{it:V}{cmd:)} 
返回与 {it:V} 的行相对应的 Stata 观察值编号。返回的是一个 1 {it:x} 2 行向量，记录观察范围，或一个 {it:N x} 1 列向量，记录个别观察值编号。


{marker linkspdf}{...}
{title:链接到 PDF 文档}

        {mansection M-5 st_viewvars()Remarksandexamples:备注和示例}

{pstd}
以上部分未包含在此帮助文件中。


{marker remarks}{...}
{title:备注}

{p 4 4 2}
这两个函数返回的结果适合用作后续调用 {cmd:st_view()} 和 {cmd:st_sview()} 的参数；详见
{bf:{help mf_st_view_zh:[M-5] st_view()}}。


{marker conformability}{...}
{title:兼容性}

    {cmd:st_viewvars(}{it:V}{cmd:)}
		{it:V}:  {it:N x k}
	   {it:result}:  1 {it:x k}

    {cmd:st_viewobs(}{it:V}{cmd:)}
		{it:V}:  {it:N x k}
	   {it:result}:  1 {it:x} 2  或  {it:N x} 1


{marker diagnostics}{...}
{title:诊断}

{p 4 4 2}
{cmd:st_viewvars(}{it:V}{cmd:)} 
和
{cmd:st_viewobs(}{it:V}{cmd:)} 
如果 {cmd:V} 不是一个视图则会中止并报错。


{marker source}{...}
{title:源代码}

{p 4 4 2}
函数是内置的。
{p_end}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <mf_st_viewvars.sthlp>}