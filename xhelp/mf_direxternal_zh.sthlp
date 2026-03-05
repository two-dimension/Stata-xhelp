{smcl}
{* *! version 1.1.4  15may2018}{...}
{vieweralsosee "[M-5] direxternal()" "mansection M-5 direxternal()"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[M-5] findexternal()" "help mf_findexternal_zh"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[M-4] Programming" "help m4_programming_zh"}{...}
{viewerjumpto "Syntax" "mf_direxternal_zh##syntax"}{...}
{viewerjumpto "Description" "mf_direxternal_zh##description"}{...}
{viewerjumpto "Links to PDF documentation" "mf_direxternal_zh##linkspdf"}{...}
{viewerjumpto "Remarks" "mf_direxternal_zh##remarks"}{...}
{viewerjumpto "Conformability" "mf_direxternal_zh##conformability"}{...}
{viewerjumpto "Diagnostics" "mf_direxternal_zh##diagnostics"}{...}
{viewerjumpto "Source code" "mf_direxternal_zh##source"}
{help mf_direxternal:English Version}
{hline}{...}
{p2colset 1 24 26 2}{...}
{p2col:{bf:[M-5] direxternal()} {hline 2}}获取现有的外部全局变量列表
{p_end}
{p2col:}({mansection M-5 direxternal():查看完整的 PDF 手册条目}){p_end}
{p2colreset}{...}


{marker syntax}{...}
{title:语法}

{p 8 12 2}
{it:string}
{it:colvector}
{cmd:direxternal(}{it:string scalar pattern}{cmd:)}


{marker description}{...}
{title:描述}

{p 4 4 2}
{cmd:direxternal(}{it:pattern}{cmd:)} 返回一个列向量，包含与 {it:pattern} 匹配的现有外部全局变量的名字。 
{cmd:direxternal()} 若没有此类全局变量，则返回 {cmd:J(0,1,"")}。

{p 4 4 2}
{it:pattern} 由 {bf:{help mf_strmatch_zh:[M-5] strmatch()}} 进行解释。


{marker linkspdf}{...}
{title:PDF文档链接}

        {mansection M-5 direxternal()Remarksandexamples:备注和示例}

{pstd}
上述章节不包含在此帮助文件中。


{marker remarks}{...}
{title:备注}

{p 4 4 2}
请参见 {bf:{help mf_findexternal_zh:[M-5] findexternal()}} 以获取全局变量的定义。  

{p 4 4 2}
可以通过 {cmd:direxternal("*")} 获取所有全局变量的列表。


{marker conformability}{...}
{title:兼容性}

    {cmd:direxternal(}{it:pattern}{cmd:)}:
	  {it:pattern}:  1 {it:x} 1
	   {it:result}:  {it:n} {it:x} 1


{marker diagnostics}{...}
{title:诊断}

{p 4 4 2}
{cmd:direxternal(}{it:pattern}{cmd:)} 当没有与 {it:pattern} 匹配的全局变量时，将返回 {cmd:J(0,1,"")}。


{marker source}{...}
{title:源代码}

{p 4 4 2}
函数是内置的。
{p_end}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <mf_direxternal.sthlp>}