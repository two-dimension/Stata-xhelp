{smcl}
{* *! version 1.1.6  15may2018}{...}
{vieweralsosee "[M-5] conj()" "mansection M-5 conj()"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[M-5] _transpose()" "help mf__transpose_zh"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[M-4] Scalar" "help m4_scalar_zh"}{...}
{viewerjumpto "Syntax" "mf_conj_zh##syntax"}{...}
{viewerjumpto "Description" "mf_conj_zh##description"}{...}
{viewerjumpto "Links to PDF documentation" "mf_conj_zh##linkspdf"}{...}
{viewerjumpto "Remarks" "mf_conj_zh##remarks"}{...}
{viewerjumpto "Conformability" "mf_conj_zh##conformability"}{...}
{viewerjumpto "Diagnostics" "mf_conj_zh##diagnostics"}{...}
{viewerjumpto "Source code" "mf_conj_zh##source"}
{help mf_conj:English Version}
{hline}{...}
{p2colset 1 17 19 2}{...}
{p2col:{bf:[M-5] conj()} {hline 2}}复共轭
{p_end}
{p2col:}({mansection M-5 conj():查看完整的 PDF 手册条目}){p_end}
{p2colreset}{...}

{marker syntax}{...}
{title:语法}

{p 8 12 2}
{it:数值矩阵}
{cmd:conj(}{it:数值矩阵 Z}{cmd:)}

{p 8 8 2}
{it:空}{bind:         }
{cmd:_conj(}{it:数值矩阵} {it:A}{cmd:)}

{marker description}{...}
{title:描述}

{p 4 4 2}
{cmd:conj(}{it:Z}{cmd:)} 返回 {it:Z} 的元素级复共轭，即 {cmd:conj(}{it:a}+{it:b}i{cmd:)} = {it:a}-{it:b}i。
{cmd:conj()} 可用于实数或复数矩阵。如果 {it:Z} 是实数，则返回未修改的 {it:Z}。

{p 4 4 2}
{cmd:_conj(}{it:A}{cmd:)} 用 {cmd:conj(}{it:A}{cmd:)} 替换 {it:A}。
{cmd:_conj(}{it:A}{cmd:)} 的编码等同于编码 {bind:{it:A} {cmd:=} {cmd:conj(}{it:A}{cmd:)}}
，除了使用更少的内存。

{marker linkspdf}{...}
{title:PDF 文档链接}

        {mansection M-5 conj()备注和示例:备注和示例}

{pstd}
以上部分未包含在此帮助文件中。

{marker remarks}{...}
{title:备注}

{p 4 4 2}
给定 {it:m} {it:x} {it:n} 矩阵 {it:Z}，{cmd:conj(}{it:Z}{cmd:)} 返回一个 {it:m} {it:x} {it:n} 矩阵；它不返回转置。要获得共轭转置矩阵，也称为伴随矩阵、伴随矩阵、厄米伴随或厄米转置，请编码

		{it:Z}{cmd:'}

{p 4 4 2}
请参见 {bf:{help m2_op_transpose_zh:[M-2] op_transpose}}。

{p 4 4 2}
等于其共轭转置的矩阵称为厄米矩阵或自伴随矩阵，但在本手册中，我们通常使用对称这一术语。

{marker conformability}{...}
{title:符合性}

    {cmd:conj(}{it:Z}{cmd:)}:
		{it:Z}:  {it:r x c}
	   {it:result}:  {it:r x c}

    {cmd:_conj(}{it:A}{cmd:)}:
	{it:输入:}
		{it:A}:  {it:r x c}
	{it:输出:}
		{it:A}:  {it:r x c}

{marker diagnostics}{...}
{title:诊断}

{p 4 4 2}
{cmd:conj(}{it:Z}{cmd:)} 如果 {it:Z} 是实数，则返回一个实数矩阵；如果 {it:Z} 是复数，则返回一个复数矩阵。

{p 4 4 2}
{cmd:conj(}{it:Z}{cmd:)}，如果 {it:Z} 是实数，将返回 {it:Z} 本身而不是副本。这使得 {cmd:conj()} 应用于实数矩阵时执行迅速。

{p 4 4 2}
{cmd:_conj(}{it:A}{cmd:)} 
如果 {it:A} 是实数，则不执行任何操作（因此，如果 {it:A} 是视图，也不会中止）。

{marker source}{...}
{title:源代码}

{pstd}
函数是内置的。
{p_end}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <mf_conj.sthlp>}