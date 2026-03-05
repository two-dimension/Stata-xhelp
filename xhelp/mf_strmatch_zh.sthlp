{smcl}
{* *! version 1.1.7  15may2018}{...}
{vieweralsosee "[M-5] strmatch()" "mansection M-5 strmatch()"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[M-4] String" "help m4_string_zh"}{...}
{viewerjumpto "Syntax" "mf_strmatch_zh##syntax"}{...}
{viewerjumpto "Description" "mf_strmatch_zh##description"}{...}
{viewerjumpto "Links to PDF documentation" "mf_strmatch_zh##linkspdf"}{...}
{viewerjumpto "Remarks" "mf_strmatch_zh##remarks"}{...}
{viewerjumpto "Conformability" "mf_strmatch_zh##conformability"}{...}
{viewerjumpto "Diagnostics" "mf_strmatch_zh##diagnostics"}{...}
{viewerjumpto "Source code" "mf_strmatch_zh##source"}
{help mf_strmatch:English Version}
{hline}{...}
{p2colset 1 21 23 2}{...}
{p2col:{bf:[M-5] strmatch()} {hline 2}}确定字符串是否匹配模式{p_end}
{p2col:}({mansection M-5 strmatch():查看完整 PDF 手册条目}){p_end}
{p2colreset}{...}


{marker syntax}{...}
{title:语法}

{p 8 12 2}
{it:real matrix}
{cmd:strmatch(}{it:string matrix s}{cmd:,} 
{it:string matrix pattern}{cmd:)}


{marker description}{...}
{title:描述}

{p 4 4 2}
{cmd:strmatch(}{it:s}{cmd:,} {it:pattern}{cmd:)} 返回 1，如果 {it:s} 与
{it:pattern} 匹配，否则返回 0。

{p 4 4 2}
当参数不是标量时，{cmd:strmatch()} 返回逐元素的结果。


{marker linkspdf}{...}
{title:PDF 文档链接}

        {mansection M-5 strmatch()Remarksandexamples:备注和示例}

{pstd}
上述部分不包含在此帮助文件中。


{marker remarks}{...}
{title:备注}

{p 4 4 2}
在 {it:pattern} 中，{cmd:*} 表示此处可以有 0 个或多个字符，而 
{cmd:?} 表示此处必须有一个 Unicode 字符。
因此 {it:pattern}{cmd:="*"} 匹配任何内容，而
{it:pattern}{cmd:="?p*x"} 匹配所有第二个字符为 
{it:p} 且最后一个字符为 {it:x} 的字符串。


{marker conformability}{...}
{title:兼容性}

    {cmd:strmatch(}{it:s}{cmd:,} {it:pattern}{cmd:)}:
	    {it:s}:  {it:r1 x c1} 
      {it:pattern}:  {it:r2 x c2}, {it:s} 和 {it:pattern} 是 r-兼容的
       {it:result}:  max({it:r1},{it:r2}) {it:x} max({it:c1},{it:c2})


{marker diagnostics}{...}
{title:诊断}

{p 4 4 2}
在 {cmd:strmatch(}{it:s}{cmd:,} {it:pattern}{cmd:) 中，如果 {it:s} 或 
{it:pattern} 包含二进制 0（它们通常不会），则字符串被认定在该点结束。


{marker source}{...}
{title:源代码}

{p 4 4 2}
函数是内置的。
{p_end}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <mf_strmatch.sthlp>}