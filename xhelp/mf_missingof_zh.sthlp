{smcl}
{* *! version 1.1.5  15may2018}{...}
{vieweralsosee "[M-5] missingof()" "mansection M-5 missingof()"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[M-4] Utility" "help m4_utility_zh"}{...}
{viewerjumpto "Syntax" "mf_missingof_zh##syntax"}{...}
{viewerjumpto "Description" "mf_missingof_zh##description"}{...}
{viewerjumpto "Links to PDF documentation" "mf_missingof_zh##linkspdf"}{...}
{viewerjumpto "Remarks" "mf_missingof_zh##remarks"}{...}
{viewerjumpto "Conformability" "mf_missingof_zh##conformability"}{...}
{viewerjumpto "Diagnostics" "mf_missingof_zh##diagnostics"}{...}
{viewerjumpto "Source code" "mf_missingof_zh##source"}
{help mf_missingof:English Version}
{hline}{...}
{p2colset 1 22 24 2}{...}
{p2col:{bf:[M-5] missingof()} {hline 2}}适当的缺失值
{p_end}
{p2col:}({mansection M-5 missingof():查看完整PDF手册条目}){p_end}
{p2colreset}{...}


{marker syntax}{...}
{title:语法}

{p 8 8 2}
{it:变形标量}
{cmd:missingof(}{it:变形矩阵 A}{cmd:)}


{marker description}{...}
{title:描述}

{p 4 4 2}
{cmd:missingof(}{it:A}{cmd:)} 返回与 {it:A} 相同元素类型的缺失值：

{p 8 12 2}
o{bind:  }如果 {it:A} 是实数，则返回实数缺失值；

{p 8 12 2}
o{bind:  }如果 {it:A} 是复数，则返回复数缺失值；

{p 8 12 2}
o{bind:  }如果 {it:A} 是指针，则返回 {cmd:NULL}；

{p 8 12 2}
o{bind:  }如果 {it:A} 是字符串，则返回 ""。


{marker linkspdf}{...}
{title:链接到PDF文档}

        {mansection M-5 missingof()Remarksandexamples:备注和示例}

{pstd}
上述部分不包括在此帮助文件中。


{marker remarks}{...}
{title:备注}

{p 4 4 2}
{cmd:missingof()} 在创建与另一个矩阵相同类型的空矩阵时非常有用；例如，

		{cmd:newmat = J(rows(x), cols(x), missingof(x))}


{marker conformability}{...}
{title:适应性}

    {cmd:missingof(}{it:A}{it:)}
		{it:A}:  {it:r x c}
	   {it:result}:  1 {it:x 1}


{marker diagnostics}{...}
{title:诊断}

{p 4 4 2}
无。


{marker source}{...}
{title:源代码}

{p 4 4 2}
函数内置。
{p_end}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <mf_missingof.sthlp>}