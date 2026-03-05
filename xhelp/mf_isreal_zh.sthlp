{smcl}
{* *! version 1.1.4  15may2018}{...}
{vieweralsosee "[M-5] isreal()" "mansection M-5 isreal()"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[M-5] eltype()" "help mf_eltype_zh"}{...}
{vieweralsosee "[M-5] isrealvalues()" "help mf_isrealvalues_zh"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[M-4] Utility" "help m4_utility_zh"}{...}
{viewerjumpto "Syntax" "mf_isreal_zh##syntax"}{...}
{viewerjumpto "Description" "mf_isreal_zh##description"}{...}
{viewerjumpto "Links to PDF documentation" "mf_isreal_zh##linkspdf"}{...}
{viewerjumpto "Remarks" "mf_isreal_zh##remarks"}{...}
{viewerjumpto "Conformability" "mf_isreal_zh##conformability"}{...}
{viewerjumpto "Diagnostics" "mf_isreal_zh##diagnostics"}{...}
{viewerjumpto "Source code" "mf_isreal_zh##source"}
{help mf_isreal:English Version}
{hline}{...}
{p2colset 1 19 21 2}{...}
{p2col:{bf:[M-5] isreal()} {hline 2}}存储类型的矩阵
{p_end}
{p2col:}({mansection M-5 isreal():查看完整的PDF手册条目}){p_end}
{p2colreset}{...}


{marker syntax}{...}
{title:语法}

{p 8 8 2}
{it:实数标量}
{cmd:isreal(}{it:变形矩阵 X}{cmd:)}

{p 8 8 2}
{it:实数标量}
{cmd:iscomplex(}{it:变形矩阵 X}{cmd:)}

{p 8 8 2}
{it:实数标量}
{cmd:isstring(}{it:变形矩阵 X}{cmd:)}

{p 8 8 2}
{it:实数标量}
{cmd:ispointer(}{it:变形矩阵 X}{cmd:)}


{marker description}{...}
{title:描述}

{p 4 4 2}
{cmd:isreal(}{it:X}{cmd:)}
如果 {it:X} 是一个 {cmd:实数}，则返回 1，否则返回 0。

{p 4 4 2}
{cmd:iscomplex(}{it:X}{cmd:)}
如果 {it:X} 是一个 {cmd:复数}，则返回 1，否则返回 0。

{p 4 4 2}
{cmd:isstring(}{it:X}{cmd:)}
如果 {it:X} 是一个 {cmd:字符串}，则返回 1，否则返回 0。

{p 4 4 2}
{cmd:ispointer(}{it:X}{cmd:)}
如果 {it:X} 是一个 {cmd:指针}，则返回 1，否则返回 0。


{marker linkspdf}{...}
{title:PDF文档链接}

        {mansection M-5 isreal()备注和示例:备注和示例}

{pstd}
上述部分未包含在此帮助文件中。


{marker remarks}{...}
{title:备注}

{p 4 4 2}
这些函数的结果基于存储类型。
{cmd:isreal()} 不是检查数字是否为实数的方式，因为它可能被存储为复数，但仍然是实数，例如 2+0i。要确定 {it:x} 是否为实数，您需要使用 {cmd:isrealvalues(}{it:X}{cmd:)}; 参见
{bf:{help mf_isrealvalues_zh:[M-5] isrealvalues()}}。


{marker conformability}{...}
{title:相容性}

{p 4 4 2}
{cmd:isreal(}{it:X}{cmd:)},
{cmd:iscomplex(}{it:X}{cmd:)},
{cmd:isstring(}{it:X}{cmd:)},
{cmd:ispointer(}{it:X}{cmd:)}:
{p_end}
		{it:X}:  {it:r x c}
	   {it:结果}:  1 {it:x} 1


{marker diagnostics}{...}
{title:诊断}

{p 4 4 2}
这些函数返回 1 或 0；它们不会失败。


{marker source}{...}
{title:源代码}

{p 4 4 2}
函数是内置的。
{p_end}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <mf_isreal.sthlp>}