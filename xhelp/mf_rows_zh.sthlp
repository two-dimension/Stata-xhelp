{smcl}
{* *! version 1.1.4  15may2018}{...}
{vieweralsosee "[M-5] rows()" "mansection M-5 rows()"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[M-4] Utility" "help m4_utility_zh"}{...}
{viewerjumpto "Syntax" "mf_rows_zh##syntax"}{...}
{viewerjumpto "Description" "mf_rows_zh##description"}{...}
{viewerjumpto "Links to PDF documentation" "mf_rows_zh##linkspdf"}{...}
{viewerjumpto "Remarks" "mf_rows_zh##remarks"}{...}
{viewerjumpto "Conformability" "mf_rows_zh##conformability"}{...}
{viewerjumpto "Diagnostics" "mf_rows_zh##diagnostics"}{...}
{viewerjumpto "Source code" "mf_rows_zh##source"}
{help mf_rows:English Version}
{hline}{...}
{p2colset 1 17 19 2}{...}
{p2col:{bf:[M-5] rows()} {hline 2}}行数和列数
{p_end}
{p2col:}({mansection M-5 rows():查看完整的 PDF 手册条目}){p_end}
{p2colreset}{...}


{marker syntax}{...}
{title:语法}

{p 8 8 2}
{it:real scalar}
{cmd:rows(}{it:transmorphic matrix P}{cmd:)}

{p 8 8 2}
{it:real scalar}
{cmd:cols(}{it:transmorphic matrix P}{cmd:)}

{p 8 8 2}
{it:real scalar}
{cmd:length(}{it:transmorphic matrix P}{cmd:)}


{marker description}{...}
{title:描述}

{p 4 4 2}
{cmd:rows(}{it:P}{cmd:)} 返回 {it:P} 的行数。

{p 4 4 2}
{cmd:cols(}{it:P}{cmd:)} 返回 {it:P} 的列数。

{p 4 4 2}
{cmd:length(}{it:P}{cmd:)} 返回 
{cmd:rows(}{it:P}{cmd:)}*{cmd:cols(}{it:P}{cmd:)}。


{marker linkspdf}{...}
{title:PDF 文档链接}

        {mansection M-5 rows()Remarksandexamples:备注和示例}

{pstd}
上述部分未包含在此帮助文件中。


{marker remarks}{...}
{title:备注}

{p 4 4 2}
{cmd:length(}{it:P}{cmd:)}
通常与向量一起使用，如 

	{cmd:for (i=1; i<=length(x); i++) {c -(}}
		... {cmd:x[i]} ...
	{cmd:{c )-}}


{marker conformability}{...}
{title:符合性}

    {cmd:rows(}{it:P}{cmd:)}, {cmd:cols(}{it:P}{cmd:)}, {cmd:length(}{it:P}{cmd:)}:
		{it:P}:  {it:r} {it:x} {it:c}
	   {it:result}:  1 {it:x} 1


{marker diagnostics}{...}
{title:诊断}

{p 4 4 2}
{cmd:rows(}{it:P}{cmd:)}, {cmd:cols(}{it:P}{cmd:)}, 和 
{cmd:length(}{it:P}{cmd:)} 返回的结果大于或等于零。


{marker source}{...}
{title:源代码}

{p 4 4 2}
函数是内置的。
{p_end}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <mf_rows.sthlp>}