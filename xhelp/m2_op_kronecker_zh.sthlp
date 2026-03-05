{smcl}
{* *! version 1.1.5  15may2018}{...}
{vieweralsosee "[M-2] op_kronecker" "mansection M-2 op_kronecker"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[M-2] exp" "help m2_exp_zh"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[M-2] Intro" "help m2_intro_zh"}{...}
{viewerjumpto "Syntax" "m2_op_kronecker_zh##syntax"}{...}
{viewerjumpto "Description" "m2_op_kronecker_zh##description"}{...}
{viewerjumpto "Links to PDF documentation" "m2_op_kronecker_zh##linkspdf"}{...}
{viewerjumpto "Remarks" "m2_op_kronecker_zh##remarks"}{...}
{viewerjumpto "Conformability" "m2_op_kronecker_zh##conformability"}{...}
{viewerjumpto "Diagnostics" "m2_op_kronecker_zh##diagnostics"}{...}
{viewerjumpto "Reference" "m2_op_kronecker_zh##reference"}
{help m2_op_kronecker:English Version}
{hline}{...}
{p2colset 1 23 25 2}{...}
{p2col:{bf:[M-2] op_kronecker} {hline 2}}克罗内克直积运算符
{p_end}
{p2col:}({mansection M-2 op_kronecker:查看完整的 PDF 手册条目}){p_end}
{p2colreset}{...}


{marker syntax}{...}
{title:语法}

	{it:A} {cmd:#} {it:B}

{p 4 4 2}
其中 {it:A} 和 {it:B} 可以是实数或复数。


{marker description}{...}
{title:描述}

{p 4 4 2}
{it:A}{cmd:#}{it:B} 返回克罗内克直积。

{p 4 4 2}
{cmd:#} 紧密绑定：
{it:X}{cmd:*}{it:A}{cmd:#}{it:B}{cmd:*}{it:Y} 
被解释为 
{it:X}{cmd:*(}{it:A}{cmd:#}{it:B}{cmd:)*}{it:Y}。


{marker linkspdf}{...}
{title:PDF 文档链接}

        {mansection M-2 op_kroneckerRemarksandexamples:备注和示例}

{pstd}
上述部分不包含在此帮助文件中。


{marker remarks}{...}
{title:备注}

{p 4 4 2}
克罗内克直积也称为克罗内克乘积、直接乘积、张量乘积和外乘积。

{p 4 4 2}
克罗内克乘积 {it:A}{cmd:#}{it:B} 是矩阵 
||{it:a}_{it:ij}*{it:B}||。


{marker conformability}{...}
{title:适应性}

    {it:A}{cmd:#}{it:B}:
	{it:A}:  {it:r1 x c1}
	{it:B}:  {it:r2 x c2}
   {it:result}:  {it:r1}*{it:r2} {it:x} {it:c1}*{it:c2}


{marker diagnostics}{...}
{title:诊断}

{p 4 4 2}
无。
{p_end}


{marker reference}{...}
{title:参考文献}

{phang}
James, I. 2002.
{it:Remarkable Mathematicians: From Euler to von Neumann}.
剑桥：剑桥大学出版社。
{p_end}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <m2_op_kronecker.sthlp>}