{smcl}
{* *! version 1.1.8  15may2018}{...}
{vieweralsosee "[M-5] _usubstr()" "mansection M-5 _usubstr()"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[M-5] subinstr()" "help mf_subinstr_zh"}{...}
{vieweralsosee "[M-5] substr()" "help mf_substr_zh"}{...}
{vieweralsosee "[M-5] _substr()" "help mf__substr_zh"}{...}
{vieweralsosee "[M-5] usubinstr()" "help mf_usubinstr_zh"}{...}
{vieweralsosee "[M-5] usubstr()" "help mf_usubstr_zh"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[M-4] String" "help m4_string_zh"}{...}
{vieweralsosee "" "--"}{...}
{findalias asfrunicode}{...}
{viewerjumpto "Syntax" "mf__usubstr_zh##syntax"}{...}
{viewerjumpto "Description" "mf__usubstr_zh##description"}{...}
{viewerjumpto "Links to PDF documentation" "mf__usubstr_zh##linkspdf"}{...}
{viewerjumpto "Remarks" "mf__usubstr_zh##remarks"}{...}
{viewerjumpto "Conformability" "mf__usubstr_zh##conformability"}{...}
{viewerjumpto "Diagnostics" "mf__usubstr_zh##diagnostics"}{...}
{viewerjumpto "Source code" "mf__usubstr_zh##source"}
{help mf__usubstr:English Version}
{hline}{...}
{p2colset 1 21 23 2}{...}
{p2col:{bf:[M-5] _usubstr()} {hline 2}}替换 Unicode 字符串
{p_end}
{p2col:}({mansection M-5 _usubstr():查看完整 PDF 手册条目}){p_end}
{p2colreset}{...}


{marker syntax}{...}
{title:语法}

{p 8 12 2}
{it:void}
{cmd:_usubstr(}{it:string scalar s}{cmd:,}
{it:string scalar tosub}{cmd:,}
{it:real scalar pos}{cmd:)}


{marker description}{...}
{title:描述}

{p 4 4 2}
{cmd:_usubstr(}{it:s}{cmd:,} {it:tosub}{cmd:,} {it:pos}{cmd:)} 
将在 Unicode 字符位置 {it:pos} 处将 {it:tosub} 替换到 {it:s} 中。
{it:s} 的第一个 Unicode 字符位置为 {it:pos}=1。
{cmd:_usubstr()} 可以与文本或二进制字符串一起使用。

{p 4 4 2}
不要将 {cmd:_usubstr()} 与 {cmd:usubstr()} 混淆，后者用于提取 
Unicode 子字符串；请参见 {bf:{help mf_substr_zh:[M-5] usubstr()}}。


{marker linkspdf}{...}
{title:PDF 文档链接}

        {mansection M-5 _usubstr()Remarksandexamples:备注和示例}

{pstd}
上述部分未包含在此帮助文件中。


{marker remarks}{...}
{title:备注}

{p 4 4 2}
如果 {it:s} 包含 "café"，则 
{cmd:_usubstr(}{it:s}{cmd:,} {cmd:"fe",} {cmd:3)} 将 {it:s} 修改为 
包含 "{cmd:cafe}"。

{p 4 4 2}
在替换之前，{it:s} 和 {it:tosub} 中的无效 UTF-8 序列将被替换为
Unicode 替代字符 {bf:\ufffd}。


{marker conformability}{...}
{title:符合性}

    {cmd:_usubstr(}{it:s}{cmd:,} {it:tosub}{cmd:,} {it:pos}{cmd:)}:
	{it:输入:}
		{it:s}:  1 {it:x} 1
	    {it:tosub}:  1 {it:x} 1
	      {it:pos}:  1 {it:x} 1
	{it:输出:}
		{it:s}:  1 {it:x} 1


{marker diagnostics}{...}
{title:诊断}

{p 4 4 2}
{cmd:_usubstr(}{it:s}{cmd:,} {it:tosub}{cmd:,} {it:pos}{cmd:)}
在 {it:tosub}{cmd:==""} 的情况下不执行任何操作。

{p 4 4 2}
如果将 {it:tosub} 替换到 {it:s} 会导致生成的字符串长于原始 
{it:s} 中的 Unicode 字符，{cmd:_usubstr()} 将以错误信息终止。 
如果 {it:pos}<=0 或 {it:pos}>={cmd:.}，除非 {it:tosub}{cmd:==""}，否则 {cmd:_usubstr()} 也会以错误信息终止。

{p 4 4 2}
{cmd:_usubstr(}{it:s}{cmd:,} {it:tosub}{cmd:,} {it:pos}{cmd:)}
如果 {it:s} 或 {it:tosub} 是视图则会中止并返回错误。


{marker source}{...}
{title:源代码}

{p 4 4 2}
函数是内置的。
{p_end}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <mf__usubstr.sthlp>}