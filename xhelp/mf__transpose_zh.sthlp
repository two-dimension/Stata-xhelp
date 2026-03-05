{smcl}
{* *! version 1.1.5  15may2018}{...}
{vieweralsosee "[M-5] _transpose()" "mansection M-5 _transpose()"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[M-2] op_transpose" "help m2_op_transpose_zh"}{...}
{vieweralsosee "[M-5] conj()" "help mf_conj_zh"}{...}
{vieweralsosee "[M-5] transposeonly()" "help mf_transposeonly_zh"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[M-4] Manipulation" "help m4_manipulation_zh"}{...}
{viewerjumpto "Syntax" "mf__transpose_zh##syntax"}{...}
{viewerjumpto "Description" "mf__transpose_zh##description"}{...}
{viewerjumpto "Links to PDF documentation" "mf__transpose_zh##linkspdf"}{...}
{viewerjumpto "Remarks" "mf__transpose_zh##remarks"}{...}
{viewerjumpto "Conformability" "mf__transpose_zh##conformability"}{...}
{viewerjumpto "Diagnostics" "mf__transpose_zh##diagnostics"}{...}
{viewerjumpto "Source code" "mf__transpose_zh##source"}
{help mf__transpose:English Version}
{hline}{...}
{p2colset 1 23 25 2}{...}
{p2col:{bf:[M-5] _transpose()} {hline 2}}就地转置
{p_end}
{p2col:}({mansection M-5 _transpose():查看完整的 PDF 手册条目}){p_end}
{p2colreset}{...}


{marker syntax}{...}
{title:语法}

{p 8 8 2}
{it:void}
{cmd:_transpose(}{it:数值矩阵} {it:A}{cmd:)}


{marker description}{...}
{title:描述}

{p 4 4 2}
{cmd:_transpose(}{it:A}{cmd:)} 用 {it:A}{bf:'} 替换 {it:A} 。编码
{cmd:_transpose(}{it:A}{cmd:)} 相当于编码 
{bind:{it:A} {cmd:=} {it:A}{cmd:'}}，只是执行可能需要更长时间并且使用的内存更少。
当 {it:A} 为复数时，{it:A} 被替换为其共轭转置；
如果希望进行不带共轭的转置，请参见 {bf:{help mf_transposeonly_zh:[M-5] transposeonly()}}。


{marker linkspdf}{...}
{title:PDF 文档链接}

        {mansection M-5 _transpose()Remarksandexamples:备注与示例}

{pstd}
上述部分不包括在此帮助文件中。


{marker remarks}{...}
{title:备注}

{p 4 4 2}
在某些计算中，您需要 {it:A}{bf:'} 

		{it:X} = ... {it:使用 A 的计算}{bf:'} ...

{p 4 4 2}
如果 {it:A} 很大，您可以通过编码 

		{cmd:_transpose(}{it:A}{cmd:)}
		{it:X} = ... {it:使用 A 的计算} ...
		{cmd:_transpose(}{it:A}{cmd:)} 
节省大量内存。


{marker conformability}{...}
{title:相容性}

    {cmd:_transpose(}{it:A}{cmd:)}:
	{it:输入:}
		{it:A}:  {it:r x c}
	{it:输出:}
		{it:A}:  {it:c x r}


{marker diagnostics}{...}
{title:诊断}

{p 4 4 2}
{cmd:_transpose(}{it:A}{cmd:)}
如果 {it:A} 是一个视图则会中止并报错。


{marker source}{...}
{title:源代码}

{pstd}
函数是内置的。
{p_end}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <mf__transpose.sthlp>}