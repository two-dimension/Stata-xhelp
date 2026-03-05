{smcl}
{* *! version 1.1.4  15may2018}{...}
{vieweralsosee "[M-5] direxists()" "mansection M-5 direxists()"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[M-4] IO" "help m4_io_zh"}{...}
{viewerjumpto "Syntax" "mf_direxists_zh##syntax"}{...}
{viewerjumpto "Description" "mf_direxists_zh##description"}{...}
{viewerjumpto "Conformability" "mf_direxists_zh##conformability"}{...}
{viewerjumpto "Diagnostics" "mf_direxists_zh##diagnostics"}{...}
{viewerjumpto "Source code" "mf_direxists_zh##source"}
{help mf_direxists:English Version}
{hline}{...}
{p2colset 1 22 24 2}{...}
{p2col:{bf:[M-5] direxists()} {hline 2}}目录是否存在
{p_end}
{p2col:}({mansection M-5 direxists():查看完整的 PDF 手册条目}){p_end}
{p2colreset}{...}


{marker syntax}{...}
{title:语法}

{p 8 8 2}
{it:实数标量}
{cmd:direxists(}{it:字符串标量 dirname}{cmd:)}


{marker description}{...}
{title:描述}

{p 4 4 2}
{cmd:direxists(}{it:dirname}{cmd:)} 如果 {it:dirname} 包含有效的目录路径，则返回 1， 否则返回 0。


{marker conformability}{...}
{title:适配性}

    {cmd:direxists(}{it:dirname}{cmd:)}:
	  {it:dirname}:  1 {it:x} 1
	   {it:result}:  1 {it:x} 1


{marker diagnostics}{...}
{title:诊断}

{p 4 4 2}
无。


{marker source}{...}
{title:源代码}

{p 4 4 2}
函数内置。
{p_end}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <mf_direxists.sthlp>}