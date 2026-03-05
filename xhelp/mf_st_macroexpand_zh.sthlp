{smcl}
{* *! version 1.1.4  19oct2017}{...}
{vieweralsosee "[M-5] st_macroexpand()" "mansection M-5 st_macroexpand()"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[M-5] stata" "help m4_stata_zh"}{...}
{viewerjumpto "Syntax" "mf_st_macroexpand_zh##syntax"}{...}
{viewerjumpto "Description" "mf_st_macroexpand_zh##description"}{...}
{viewerjumpto "Links to PDF documentation" "mf_st_macroexpand_zh##linkspdf"}{...}
{viewerjumpto "Remarks" "mf_st_macroexpand_zh##remarks"}{...}
{viewerjumpto "Conformability" "mf_st_macroexpand_zh##conformability"}{...}
{viewerjumpto "Diagnostics" "mf_st_macroexpand_zh##diagnostics"}{...}
{viewerjumpto "Source code" "mf_st_macroexpand_zh##source"}
{help mf_st_macroexpand:English Version}
{hline}{...}
{p2colset 1 27 29 2}{...}
{p2col:{bf:[M-5] st_macroexpand()} {hline 2}}扩展字符串中的 Stata 宏
{p_end}
{p2col:}({mansection M-5 st_macroexpand():查看完整 PDF 手册条目}){p_end}
{p2colreset}{...}


{marker syntax}{...}
{title:语法}

{p 8 12 2}
{it:string scalar}
{cmd:st_macroexpand(}{it:string scalar s}{cmd:)}

{p 8 12 2}
{it:real scalar}{bind: }
{cmd:_st_macroexpand(}{it:S}{cmd:,} 
{it:string scalar s}{cmd:)}


{p 4 11 2}
注意：{it:S} 的类型无关紧要；它会被替换并变成一个字符串标量。


{marker description}{...}
{title:描述}

{p 4 4 2}
{cmd:st_macroexpand(}{it:s}{cmd:)} 返回任何被引号或美元符号前缀的宏扩展后的 {it:s}。

{p 4 4 2}
{cmd:_st_macroexpand(}{it:S}{cmd:,} {it:s}{cmd:)} 将扩展后的内容放入 {it:S} 中，并返回 Stata 返回代码（如果一切正常，返回 0）。


{marker linkspdf}{...}
{title:PDF 文档链接}

        {mansection M-5 st_macroexpand()Remarksandexamples:备注和示例}

{pstd}
上述部分未包含在此帮助文件中。


{marker remarks}{...}
{title:备注}

{p 4 4 2}
在编码包含引用或前缀宏的字符串文字时要小心，因为宏也会在编译时扩展。例如，考虑 

	{cmd:s = st_macroexpand("regress `varlist'")}

{p 4 4 2}
{cmd:`varlist'} 会在编译时替换为其值。您可能想要的是

        {cmd:s = st_macroexpand("regress " + "`" + "varlist" + "'")}


{marker conformability}{...}
{title:兼容性}

    {cmd:st_macroexpand(}{it:s}{cmd:)}:
		{it:s}:  1 {it:x} 1
	   {it:result}:  1 {it:x} 1

    {cmd:_st_macroexpand(}{it:S}{cmd:,} {it:s}{cmd:)}:
	{it:input:}
		{it:s}:  1 {it:x} 1
	{it:output:}
		{it:S}:  1 {it:x} 1
	   {it:result}:  1 {it:x} 1


{marker diagnostics}{...}
{title:诊断}

{p 4 4 2}
{cmd:st_macroexpand(}{it:s}{cmd:)} 如果 {it:s} 太长（极不可能）或者宏扩展失败（同样不太可能），将中止并报错。

{p 4 4 2}
{cmd:_st_macroexpand(}{it:S}{cmd:,} {it:s}{cmd:)} 如果 {it:s} 太长，将中止并报错。


{marker source}{...}
{title:源代码}

{p 4 4 2}
函数是内置的。
{p_end}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <mf_st_macroexpand.sthlp>}