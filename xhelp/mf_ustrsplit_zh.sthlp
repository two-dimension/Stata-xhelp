{smcl}
{* *! version 1.0.1  23feb2019}{...}
{vieweralsosee "[M-5] ustrsplit()" "mansection M-5 ustrsplit()"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[P] tokenize" "help tokenize_zh"}{...}
{vieweralsosee "[M-5] ustrword()" "help mf_ustrword_zh"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[M-4] String" "help m4_string_zh"}{...}
{viewerjumpto "Syntax" "mf_ustrsplit_zh##syntax"}{...}
{viewerjumpto "Description" "mf_ustrsplit_zh##description"}{...}
{viewerjumpto "Remarks" "mf_ustrsplit_zh##remarks"}{...}
{viewerjumpto "Conformability" "mf_ustrsplit_zh##conformability"}{...}
{viewerjumpto "Source code" "mf_ustrsplit_zh##source"}
{help mf_ustrsplit:English Version}
{hline}{...}
{p2colset 1 22 24 2}{...}
{p2col:{bf:[M-5] ustrsplit()} {hline 2}}根据 Unicode 正则表达式将字符串拆分为多个部分{p_end}
{p2col:}({mansection M-5 ustrsplit():查看完整的 PDF 手册条目}){p_end}
{p2colreset}{...}


{marker syntax}{...}
{title:语法}

{p 8 12 2}
{it:string rowvector}
{cmd:ustrsplit(}{it:string scalar s}{cmd:,}
{it:string scalar ustrregexp}{cmd:)}


{marker description}{...}
{title:描述}

{p 4 4 2}
{cmd:ustrsplit(}{it:s}{cmd:,} {it:ustrregexp}{cmd:)} 返回将 {it:s} 根据 {it:ustrregexp} 拆分后的内容。


{marker remarks}{...}
{title:备注}

{p 4 4 2}
{cmd:ustrsplit()} 根据 Unicode 正则表达式将字符串拆分为多个部分。

{pstd}
例如，

	{cmd:ustrsplit("$12.31 €6.75", "[$€]") = ("", "12.31 ", "6.75")}
	
{p 4 4 2}
请注意，结果的第一个元素是一个空字符串。 这是因为 {cmd:ustrsplit()} 在被拆分的字符串中遇到了第一个 "$" 符号，而在这个 "$" 的左侧是一个空字符串（也就是没有内容）。假设您将上述结果放入一个名为 "{cmd:result}" 的字符串标量，您可以输入以下内容以去除那个前导空字符串及其他所有空白部分：

	{cmd:select(result, ustrlen(ustrtrim(result)):!=0)}

{p 4 4 2}
上述示例在任何美元符号或欧元符号处分割。 如果要在任何被认为是货币符号的 Unicode 字符处分割，我们可以使用正则表达式 {cmd:[\p{Sc}]},

	{cmd:ustrsplit("$12.31 €6.75 ¥100.50 ₩25.45", "[\p{Sc}]")} 

{p 4 4 2}
返回结果为
	
	{cmd:("", "12.31 ", "6.75 ","100.50 ","25.45")}


{marker conformability}{...}
{title:符合性}

    {cmd:ustrsplit(}{it:s}{cmd:,} {it:ustrregexp}{cmd:)}
		 {it:s}:  1 {it:x} 1
	{it:ustrregexp}:  1 {it:x} 1 
	    {it:result}:  1 {it:x w}, {it:w} = {it:s} 中部分的数量


{marker source}{...}
{title:源代码}

{p 4 4 2}
函数是内置的。
{p_end}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <mf_ustrsplit.sthlp>}