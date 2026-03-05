{smcl}
{* *! version 1.1.7  15may2018}{...}
{vieweralsosee "[M-5] _substr()" "mansection M-5 _substr()"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[M-5] subinstr()" "help mf_subinstr_zh"}{...}
{vieweralsosee "[M-5] substr()" "help mf_substr_zh"}{...}
{vieweralsosee "[M-5] usubinstr()" "help mf_usubinstr_zh"}{...}
{vieweralsosee "[M-5] usubstr()" "help mf_usubstr_zh"}{...}
{vieweralsosee "[M-5] _usubstr()" "help mf__usubstr_zh"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[M-4] String" "help m4_string_zh"}{...}
{vieweralsosee "" "--"}{...}
{findalias asfrunicode}{...}
{viewerjumpto "Syntax" "mf__substr_zh##syntax"}{...}
{viewerjumpto "Description" "mf__substr_zh##description"}{...}
{viewerjumpto "Links to PDF documentation" "mf__substr_zh##linkspdf"}{...}
{viewerjumpto "Remarks" "mf__substr_zh##remarks"}{...}
{viewerjumpto "Conformability" "mf__substr_zh##conformability"}{...}
{viewerjumpto "Diagnostics" "mf__substr_zh##diagnostics"}{...}
{viewerjumpto "Source code" "mf__substr_zh##source"}
{help mf__substr:English Version}
{hline}{...}
{p2colset 1 20 22 2}{...}
{p2col:{bf:[M-5] _substr()} {hline 2}}替换字符串
{p_end}
{p2col:}({mansection M-5 _substr():查看完整 PDF 手册条目}){p_end}
{p2colreset}{...}


{marker syntax}{...}
{title:语法}

{p 8 12 2}
{it:void}
{cmd:_substr(}{it:string scalar s}{cmd:,}
{it:string scalar tosub}{cmd:,}
{it:real scalar pos}{cmd:)}


{marker description}{...}
{title:描述}

{p 4 4 2}
{cmd:_substr(}{it:s}{cmd:,} {it:tosub}{cmd:,} {it:pos}{cmd:)} 
在字节位置 {it:pos} 替换 {it:s} 中的 {it:tosub}。 
{it:s} 的第一个字节位置为 {it:pos}=1。 
{cmd:_substr()} 可以与文本或二进制字符串一起使用。

{p 4 4 2}
不要将 {cmd:_substr()} 与 {cmd:substr()} 混淆，后者是用于提取子字符串的；参见 {bf:{help mf_substr_zh:[M-5] substr()}}。


{marker linkspdf}{...}
{title:链接到 PDF 文档}

        {mansection M-5 _substr()Remarksandexamples:备注和示例}

{pstd}
上面的部分不包括在此帮助文件中。


{marker remarks}{...}
{title:备注}

{p 4 4 2}
如果 {it:s} 包含 "abcdef"，那么 
{cmd:_substr(}{it:s}{cmd:,} {cmd:"XY",} {cmd:2)} 将 {it:s} 更改为 
包含 "{cmd:aXYdef}"。


{marker conformability}{...}
{title:兼容性}

    {cmd:_substr(}{it:s}{cmd:,} {it:tosub}{cmd:,} {it:pos}{cmd:)}:
	{it:输入:}
		{it:s}:  1 {it:x} 1
	    {it:tosub}:  1 {it:x} 1
	      {it:pos}:  1 {it:x} 1
	{it:输出:}
		{it:s}:  1 {it:x} 1


{marker diagnostics}{...}
{title:诊断}

{p 4 4 2}
{cmd:_substr(}{it:s}{cmd:,} {it:tosub}{cmd:,} {it:pos}{cmd:)} 
如果 {it:tosub}{cmd:==""}，则不执行任何操作。

{p 4 4 2}
{cmd:_substr(}{it:s}{cmd:,} {it:tosub}{cmd:,} {it:pos}{cmd:)} 
不能用于扩展 {it:s}： 
如果将 {it:tosub} 替换到 {it:s} 中会导致生成的字符串超过原始 {it:s} 的长度，{cmd:_substr()} 将中止并报错。 
如果 {it:pos}<=0 或 {it:pos}>={cmd:.}，除非 {it:tosub} 是 {cmd:""}，否则 {cmd:_substr()} 也会中止并报错。

{p 4 4 2}
{cmd:_substr(}{it:s}{cmd:,} {it:tosub}{cmd:,} {it:pos}{cmd:)} 
如果 {it:s} 或 {it:tosub} 是视图，将中止并报错。


{marker source}{...}
{title:源代码}

{p 4 4 2}
函数是内置的。
{p_end}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <mf__substr.sthlp>}