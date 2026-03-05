{smcl}
{* *! version 1.1.10  24jan2019}{...}
{vieweralsosee "[M-5] ascii()" "mansection M-5 ascii()"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[M-5] isascii()" "help mf_isascii_zh"}{...}
{vieweralsosee "[M-5] uchar()" "help mf_uchar_zh"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[M-4] String" "help m4_string_zh"}{...}
{viewerjumpto "Syntax" "mf_ascii_zh##syntax"}{...}
{viewerjumpto "Description" "mf_ascii_zh##description"}{...}
{viewerjumpto "Conformability" "mf_ascii_zh##conformability"}{...}
{viewerjumpto "Diagnostics" "mf_ascii_zh##diagnostics"}{...}
{viewerjumpto "Source code" "mf_ascii_zh##source"}
{help mf_ascii:English Version}
{hline}{...}
{p2colset 1 18 20 2}{...}
{p2col:{bf:[M-5] ascii()} {hline 2}}操作 ASCII 和字节代码
{p_end}
{p2col:}({mansection M-5 ascii():查看完整 PDF 手册条目}){p_end}
{p2colreset}{...}


{marker syntax}{...}
{title:语法}

{p 8 12 2}
{it:real rowvector} {cmd:ascii(}{it:string scalar s}{cmd:)}

{p 8 12 2}
{it:string scalar}{bind:  }{cmd:char(}{it:real rowvector c}{cmd:)}


{marker description}{...}
{title:描述}

{p 4 4 2}
{cmd:ascii(}{it:s}{cmd:)} 返回一个包含对应于 {it:s} 的 ASCII 代码 (0-127) 和字节代码 (128-255) 的行向量。例如，{cmd:ascii("abc")} 返回 (97, 98, 99)；{cmd:ascii("café")} 返回 (99, 97, 102, 195, 169)。请注意，Unicode 字符 "é" 超出了 ASCII 范围。它的 UTF-8 编码需要 2 个字节，对应的字节值为 195 和 169。

{p 4 4 2}
{cmd:char(}{it:c}{cmd:)} 返回由指定的 ASCII 和字节代码组成的 UTF-8 编码字符串。例如，{cmd:char((97, 98, 99))} 返回 "abc"，而 {cmd:char((99, 97, 102, 195, 169))} 返回 "café"。


{marker conformability}{...}
{title:兼容性}

    {cmd:ascii(}{it:s}{cmd:)}:
	    {it:s}:  1 {it:x} 1
       {it:result}:  1 {it:x} {cmd:strlen(}{it:s}{cmd:)}

    {cmd:char(}{it:c}{cmd:)}
	    {it:c}:  1 {it:x} {it:n}, {it:n}>=0
       {it:result}:  1 {it:x} 1


{marker diagnostics}{...}
{title:诊断}

{p 4 4 2}
{cmd:ascii(}{it:s}{cmd:)} 如果 {cmd:strlen(}{it:s}{cmd:)==0}，则返回 {cmd:J(1,0,.)}。

{p 4 4 2}
在 {cmd:char(}{it:c}{cmd:)} 中，如果 {it:c} 的任何元素超出 0 到 255 的范围，则返回的字符串在该点终止。例如，{cmd:char((97,98,99,1000,97,98,99))=="abc"}。

{p 4 4 2}
{cmd:char(J(1,0,.))} 返回 ""。


{marker source}{...}
{title:源代码}

{p 4 4 2}
函数是内置的。
{p_end}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <mf_ascii.sthlp>}