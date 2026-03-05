{smcl}
{* *! version 1.0.6  15may2018}{...}
{vieweralsosee "[M-5] ustrfix()" "mansection M-5 ustrfix()"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[M-5] ustrto()" "help mf_ustrto_zh"}{...}
{vieweralsosee "[M-5] ustrunescape()" "help mf_ustrunescape_zh"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[M-4] String" "help m4_string_zh"}{...}
{vieweralsosee "" "--"}{...}
{findalias asfrunicode}{...}
{viewerjumpto "Syntax" "mf_ustrfix_zh##syntax"}{...}
{viewerjumpto "Description" "mf_ustrfix_zh##description"}{...}
{viewerjumpto "Links to PDF documentation" "mf_ustrfix_zh##linkspdf"}{...}
{viewerjumpto "Remarks" "mf_ustrfix_zh##remarks"}{...}
{viewerjumpto "Conformability" "mf_ustrfix_zh##conformability"}{...}
{viewerjumpto "Diagnostics" "mf_ustrfix_zh##diagnostics"}{...}
{viewerjumpto "Source code" "mf_ustrfix_zh##source"}
{help mf_ustrfix:English Version}
{hline}{...}
{p2colset 1 20 22 2}{...}
{p2col:{bf:[M-5] ustrfix()} {hline 2}}替换 Unicode 字符串中的无效 UTF-8 序列
{p_end}
{p2col:}({mansection M-5 ustrfix():查看完整 PDF 手册条目}){p_end}
{p2colreset}{...}


{marker syntax}{...}
{title:语法}

{p 8 31 2}
{it:string matrix}
{cmd:ustrfix(}{it:string matrix s} [{cmd:,} {it:string scalar rep}]{cmd:)}


{marker description}{...}
{title:描述}

{p 4 4 2}
{cmd:ustrfix(}{it:s} [{cmd:,} {it:rep}]{cmd:)}
将每个无效的 UTF-8 序列替换为 Unicode 字符。如果指定了 {it:rep} 并且它以 Unicode 字符开头，则使用该 Unicode 字符。否则，使用 Unicode 替代字符 {bf:\ufffd}。  

{p 4 4 2}
当参数不是标量时，该函数返回逐元素结果。


{marker linkspdf}{...}
{title:PDF 文档链接}

        {mansection M-5 ustrfix()Remarksandexamples:备注和示例}

{pstd}
上述部分未包含在此帮助文件中。


{marker remarks}{...}
{title:备注}

{p 4 4 2}
无效的 UTF-8 序列可以包含一个字节或多个字节。


{marker conformability}{...}
{title:适应性}

{p 4 4 2}
{cmd:ustrfix(}{it:string matrix s} [{cmd:,} {it:string scalar r}]{cmd:)}
{p_end}
		{it:s}:  {it:r x c}
	      {it:rep}:  1 {it:x} 1
	   {it:result}:  {it:r x c}


{marker diagnostics}{...}
{title:诊断}

{p 4 4 2}
{cmd:ustrfix(}{it:matrix s} [{cmd:,} {it:r}]{cmd:)}
如果发生错误，则返回空字符串。 


{marker source}{...}
{title:源代码}

{p 4 4 2}
函数是内置的。
{p_end}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <mf_ustrfix.sthlp>}