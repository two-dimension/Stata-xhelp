{smcl}
{* *! version 1.1.4  15may2018}{...}
{vieweralsosee "[M-5] isrealvalues()" "mansection M-5 isrealvalues()"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[M-5] isreal()" "help mf_isreal_zh"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[M-4] Utility" "help m4_utility_zh"}{...}
{viewerjumpto "Syntax" "mf_isrealvalues_zh##syntax"}{...}
{viewerjumpto "Description" "mf_isrealvalues_zh##description"}{...}
{viewerjumpto "Links to PDF documentation" "mf_isrealvalues_zh##linkspdf"}{...}
{viewerjumpto "Remarks" "mf_isrealvalues_zh##remarks"}{...}
{viewerjumpto "Conformability" "mf_isrealvalues_zh##conformability"}{...}
{viewerjumpto "Diagnostics" "mf_isrealvalues_zh##diagnostics"}{...}
{viewerjumpto "Source code" "mf_isrealvalues_zh##source"}
{help mf_isrealvalues:English Version}
{hline}{...}
{p2colset 1 25 27 2}{...}
{p2col:{bf:[M-5] isrealvalues()} {hline 2}}是否只包含实数的矩阵
{p_end}
{p2col:}({mansection M-5 isrealvalues():查看完整的 PDF 手册条目}){p_end}
{p2colreset}{...}


{marker syntax}{...}
{title:语法}

{p 8 8 2}
{it:real scalar}
{cmd:isrealvalues(}{it:numeric matrix X}{cmd:)}


{marker description}{...}
{title:描述}

{p 4 4 2}
{cmd:isrealvalues(}{it:X}{cmd:)} 如果 {it:X} 是实数存储类型或者 {it:X} 是复数存储类型且所有元素都是实数或缺失，返回 1；否则返回 0。


{marker linkspdf}{...}
{title:链接到 PDF 文档}

        {mansection M-5 isrealvalues()Remarksandexamples:备注和示例}

{pstd}
上述部分不包含在此帮助文件中。


{marker remarks}{...}
{title:备注}

{p 4 4 2}
{cmd:isrealvalues(}{it:X}{cmd:)} 在逻辑上等价于 
{it:X}{cmd:==Re(}{it:X}{cmd:)}，但速度显著更快且所需内存更少。


{marker conformability}{...}
{title:适应性}

    {cmd:isrealvalues(}{it:X}{cmd:)}:
		{it:X}:  {it:r x c}
	   {it:result}:  1 {it:x} 1


{marker diagnostics}{...}
{title:诊断}

{p 4 4 2}
{cmd:isrealvalues(}{it:X}{cmd:)} 如果 {it:X} 是虚无且复杂，返回 1。


{marker source}{...}
{title:源代码}

{p 4 4 2}
函数是内置的。
{p_end}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <mf_isrealvalues.sthlp>}