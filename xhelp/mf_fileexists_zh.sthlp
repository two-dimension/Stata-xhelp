{smcl}
{* *! version 1.1.4  15may2018}{...}
{vieweralsosee "[M-5] fileexists()" "mansection M-5 fileexists()"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[M-4] IO" "help m4_io_zh"}{...}
{viewerjumpto "Syntax" "mf_fileexists_zh##syntax"}{...}
{viewerjumpto "Description" "mf_fileexists_zh##description"}{...}
{viewerjumpto "Conformability" "mf_fileexists_zh##conformability"}{...}
{viewerjumpto "Diagnostics" "mf_fileexists_zh##diagnostics"}{...}
{viewerjumpto "Source code" "mf_fileexists_zh##source"}
{help mf_fileexists:English Version}
{hline}{...}
{p2colset 1 23 25 2}{...}
{p2col:{bf:[M-5] fileexists()} {hline 2}}查询文件是否存在
{p_end}
{p2col:}({mansection M-5 fileexists():查看完整的PDF手册条目}){p_end}
{p2colreset}{...}


{marker syntax}{...}
{title:语法}

{p 8 12 2}
{it:real scalar}
{cmd:fileexists(}{it:string scalar fn}{cmd:)}


{marker description}{...}
{title:描述}

{p 4 4 2}
{cmd:fileexists(}{it:fn}{cmd:)}返回1，如果文件{it:fn}存在且可读，否则返回0。


{marker conformability}{...}
{title:符合性}

    {cmd:fileexists(}{it:fn}{cmd:)}:
	      {it:fn}:  1 {it:x} 1
	   {it:result}: 1 {it:x} 1


{marker diagnostics}{...}
{title:诊断}

{p 4 4 2}
无。


{marker source}{...}
{title:源代码}

{p 4 4 2}
{view fileexists.mata, adopath asis:fileexists.mata}
{p_end}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <mf_fileexists.sthlp>}