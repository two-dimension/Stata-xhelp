{smcl}
{* *! version 1.1.6  15may2018}{...}
{vieweralsosee "[M-5] indexnot()" "mansection M-5 indexnot()"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[M-4] String" "help m4_string_zh"}{...}
{viewerjumpto "Syntax" "mf_indexnot_zh##syntax"}{...}
{viewerjumpto "Description" "mf_indexnot_zh##description"}{...}
{viewerjumpto "Conformability" "mf_indexnot_zh##conformability"}{...}
{viewerjumpto "Diagnostics" "mf_indexnot_zh##diagnostics"}{...}
{viewerjumpto "Source code" "mf_indexnot_zh##source"}
{help mf_indexnot:English Version}
{hline}{...}
{p2colset 1 21 23 2}{...}
{p2col:{bf:[M-5] indexnot()} {hline 2}}查找列表中不存在的字节
{p_end}
{p2col:}({mansection M-5 indexnot():查看完整 PDF 手册条目}){p_end}
{p2colreset}{...}


{marker syntax}{...}
{title:语法}

{p 8 12 2}
{it:real matrix}
{cmd:indexnot(}{it:string matrix s1}{cmd:,}
{it:string matrix s2}{cmd:)}


{marker description}{...}
{title:描述}

{p 4 4 2}
{cmd:indexnot(}{it:s1}{cmd:,} {it:s2}{cmd:)} 返回 {it:s1} 中第一个未在 {it:s2} 中找到的字节的位置，如果 {it:s1} 的所有字节都在 {it:s2} 中找到，则返回 0。请注意，一个 Unicode 字符可能包含多个字节。使用 {help mf_strlen_zh:strlen()} 或 {help mf_ustrlen_zh:ustrlen()} 检查 {it:s1} 或 {it:s2} 是否有比其 Unicode 字符数更多的字节。


{marker conformability}{...}
{title:兼容性}

    {cmd:indexnot(}{it:s1}{cmd:,} {it:s2}{cmd:)}:
	       {it:s1}:  {it:r1 x c1}
	       {it:s2}:  {it:r2 x c2}, {it:s1} 和 {it:s2} r-兼容
	   {it:result}:  max({it:r1},{it:r2}) {it:x} max({it:c1},{it:c2})


{marker diagnostics}{...}
{title:诊断}

{p 4 4 2}
{cmd:indexnot(}{it:s1}{cmd:,} {it:s2}{cmd:)} 如果 {it:s1} 的所有字节都在 {it:s2} 中找到，则返回 0。


{marker source}{...}
{title:源代码}

{p 4 4 2}
函数已内置。
{p_end}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <mf_indexnot.sthlp>}