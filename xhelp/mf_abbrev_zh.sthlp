{smcl}
{* *! version 1.1.13  15may2018}{...}
{vieweralsosee "[M-5] abbrev()" "mansection M-5 abbrev()"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[M-4] String" "help m4_string_zh"}{...}
{viewerjumpto "Syntax" "mf_abbrev_zh##syntax"}{...}
{viewerjumpto "Description" "mf_abbrev_zh##description"}{...}
{viewerjumpto "Conformability" "mf_abbrev_zh##conformability"}{...}
{viewerjumpto "Diagnostics" "mf_abbrev_zh##diagnostics"}{...}
{viewerjumpto "Source code" "mf_abbrev_zh##source"}
{help mf_abbrev:English Version}
{hline}{...}
{p2colset 1 19 21 2}{...}
{p2col:{bf:[M-5] abbrev()} {hline 2}}压缩字符串
{p_end}
{p2col:}({mansection M-5 abbrev():查看完整 PDF 手册条目}){p_end}
{p2colreset}{...}


{marker syntax}{...}
{title:语法}

{phang2}
{it:string matrix}
{cmd:abbrev(}{it:string matrix s}{cmd:,}
{it:real matrix n}{cmd:)}


{marker description}{...}
{title:描述}

{pstd}
{cmd:abbrev(}{it:s}{cmd:,} {it:n}{cmd:)} 将 {it:s} 压缩为 {it:n}{mansection U 12.4.2.2DisplayingUnicodecharacters:显示列}。
通常，这意味着它将被压缩为 {it:n} 个字符，但是如果 {it:s} 包含需要多个显示列的字符，例如中文、日文和韩文 (CJK)，则 {it:s} 将被压缩，使其不超过 {it:n} 个显示列。

{phang2}
1.  {it:n} 是压缩长度，假定包含整数值，范围为 5, 6, ..., {ccl namelenchar}。

{phang2}
2.  如果 {it:s} 包含句点 {cmd:.} 并且 {it:n} < 8，则值 {it:n} 默认为 8。否则，如果 {it:n} < 5，则 {it:n} 默认为 5。

{phang2}
3.  如果 {it:n} 缺失，则返回整个字符串（直至第一个二进制 0）。

{pstd}
如果 {it:s} 中有一个二进制 0，则压缩结果来自字符串的开头，直到但不包括二进制 0。

{pstd}
当参数不是标量时，{cmd:abbrev()} 返回逐元素的结果。


{marker conformability}{...}
{title:兼容性}

    {cmd:abbrev(}{it:s}{cmd:,} {it:n}{cmd:)}:
            {it:s}:  {it:r1 x c1}
            {it:n}:  {it:r2 x c2}; {it:s} 和 {it:n} r 兼容
       {it:result}:  max({it:r1},{it:r2}) {it:x} max({it:c1},{it:c2})


{marker diagnostics}{...}
{title:诊断}

{pstd}
{cmd:abbrev()} 如果 {it:s} 是 {cmd:""} 则返回 {cmd:""}。
{cmd:abbrev()} 如果 {it:s} 不是字符串则中止并报错。


{marker source}{...}
{title:源代码}

{pstd}
函数是内置的。
{p_end}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <mf_abbrev.sthlp>}