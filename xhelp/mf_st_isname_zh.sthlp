{smcl}
{* *! version 1.1.4  15may2018}{...}
{vieweralsosee "[M-5] st_isname()" "mansection M-5 st_isname()"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[M-4] Stata" "help m4_stata_zh"}{...}
{viewerjumpto "Syntax" "mf_st_isname_zh##syntax"}{...}
{viewerjumpto "Description" "mf_st_isname_zh##description"}{...}
{viewerjumpto "Conformability" "mf_st_isname_zh##conformability"}{...}
{viewerjumpto "Diagnostics" "mf_st_isname_zh##diagnostics"}{...}
{viewerjumpto "Source code" "mf_st_isname_zh##source"}
{help mf_st_isname:English Version}
{hline}{...}
{p2colset 1 22 24 2}{...}
{p2col:{bf:[M-5] st_isname()} {hline 2}}是否为有效的 Stata 名称
{p_end}
{p2col:}({mansection M-5 st_isname():查看完整的 PDF 手册条目}){p_end}
{p2colreset}{...}


{marker syntax}{...}
{title:语法}

{p 8 12 2}
{it:real scalar}
{cmd:st_isname(}{it:string scalar s}{cmd:)}

{p 8 12 2}
{it:real scalar}
{cmd:st_islmname(}{it:string scalar s}{cmd:)}


{marker description}{...}
{title:描述}

{p 4 4 2}
{cmd:st_isname(}{it:s}{cmd:)} 如果 {it:s} 包含一个有效的 Stata 名称则返回 1，否则返回 0。

{p 4 4 2}
{cmd:st_islmname(}{it:s}{cmd:)} 如果 {it:s} 包含一个有效的 Stata 本地宏名称则返回 1，否则返回 0。


{marker conformability}{...}
{title:兼容性}

    {cmd:st_isname(}{it:s}{cmd:)}, {cmd:st_islmname(}{it:s}{cmd:)}:
		{it:s}:  1 {it:x} 1
	   {it:result}:  1 {it:x} 1


{marker diagnostics}{...}
{title:诊断}

{p 4 4 2}
{cmd:st_isname(}{it:s}{cmd:)} 如果 {it:s} 是一个视图则会出错（但 {cmd:st_islmname()} 不会）。


{marker source}{...}
{title:源代码}

{p 4 4 2}
{view st_islmname.mata, adopath asis:st_islmname.mata};
{cmd:st_isname()} 是内置的。
{p_end}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <mf_st_isname.sthlp>}