{smcl}
{* *! version 1.0.0  23jan2019}{...}
{vieweralsosee "[M-5] isascii()" "mansection M-5 isascii()"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[M-5] ascii()" "help mf_ascii_zh"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[M-4] String" "help m4_string_zh"}{...}
{viewerjumpto "Syntax" "mf_isascii_zh##syntax"}{...}
{viewerjumpto "Description" "mf_isascii_zh##description"}{...}
{viewerjumpto "Conformability" "mf_isascii_zh##conformability"}{...}
{viewerjumpto "Source code" "mf_isascii_zh##source"}
{help mf_isascii:English Version}
{hline}{...}
{p2colset 1 20 22 2}{...}
{p2col:{bf:[M-5] isascii()} {hline 2}}判断字符串标量是否仅包含ASCII编码
{p_end}
{p2col:}({mansection M-5 isascii():查看完整PDF手册条目}){p_end}
{p2colreset}{...}


{marker syntax}{...}
{title:语法}

{p 8 12 2}
{it:real scalar}
{cmd:isascii(}{it:string scalar s}{cmd:)}


{marker description}{...}
{title:描述} 

{p 4 4 2}
{cmd:isascii(}{it:s}{cmd:)} 如果字符串标量 {it:s} 仅包含ASCII编码（0-127），则返回1，否则返回0。


{marker conformability}{...}
{title:兼容性}

{p 4 4 2}
{cmd:isascii(}{it:s}{cmd:)}:
{p_end}
		{it:s}:  1 {it:x} 1
	   {it:result}:  1 {it:x} 1


{marker source}{...}
{title:源代码}

{p 4 4 2}
函数是内置的。
{p_end}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <mf_isascii.sthlp>}