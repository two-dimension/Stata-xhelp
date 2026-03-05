{smcl}
{* *! version 1.1.4  15may2018}{...}
{vieweralsosee "[M-5] transposeonly()" "mansection M-5 transposeonly()"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[M-2] op_transpose" "help m2_op_transpose_zh"}{...}
{vieweralsosee "[M-5] _transpose()" "help mf__transpose_zh"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[M-4] Manipulation" "help m4_manipulation_zh"}{...}
{viewerjumpto "Syntax" "mf_transposeonly_zh##syntax"}{...}
{viewerjumpto "Description" "mf_transposeonly_zh##description"}{...}
{viewerjumpto "Links to PDF documentation" "mf_transposeonly_zh##linkspdf"}{...}
{viewerjumpto "Remarks" "mf_transposeonly_zh##remarks"}{...}
{viewerjumpto "Conformability" "mf_transposeonly_zh##conformability"}{...}
{viewerjumpto "Diagnostics" "mf_transposeonly_zh##diagnostics"}{...}
{viewerjumpto "Source code" "mf_transposeonly_zh##source"}
{help mf_transposeonly:English Version}
{hline}{...}
{p2colset 1 26 28 2}{...}
{p2col:{bf:[M-5] transposeonly()} {hline 2}}不共轭的转置
{p_end}
{p2col:}({mansection M-5 transposeonly():查看完整PDF手册条目}){p_end}
{p2colreset}{...}


{marker syntax}{...}
{title:语法}

{p 8 8 2}
{it:数字矩阵}
{cmd:transposeonly(}{it:数字矩阵 A}{cmd:)}

{p 8 8 2}
{it:无返回值}{bind:         }
{cmd:_transposeonly(}{it:数字矩阵} {it:A}{cmd:)}



{marker description}{...}
{title:描述}

{p 4 4 2}
{cmd:transposeonly(}{it:A}{cmd:)} 
返回{it:A}的行和列互换。
当{it:A}为实数时，{cmd:transposeonly(}{it:A}{cmd:)}的操作
与编写{it:A}{cmd:'}是无法区分的；见 
{bf:{help m2_op_transpose_zh:[M-2] op_transpose}}。 返回的结果相同，
执行时间也相同。
然而，当{it:A}为复数时，
{cmd:transposeonly(}{it:A}{cmd:)}相当于编码 
{cmd:conj(}{it:A}{cmd:')}, 但是{cmd:transposeonly()}能更快地获得结果。

{p 4 4 2}
{cmd:_transposeonly(}{it:A}{cmd:)} 
就地互换{it:A}的行和列——不使用额外内存——并返回转置（但不共轭）的 
结果在{it:A}中。


{marker linkspdf}{...}
{title:PDF文档链接}

        {mansection M-5 transposeonly()Remarksandexamples:备注和示例}

{pstd}
上述部分未包含在此帮助文件中。


{marker remarks}{...}
{title:备注}

{p 4 4 2}
{cmd:transposeonly()}在编程而非数学的语境中很有用。假设你有两个行向量，
{cmd:a} 和 {cmd:b}，你想将这两个向量放在一个矩阵 {cmd:R} 中，并希望将它们转变为列向量。如果 {cmd:a}
和 {cmd:b} 确定为实数，你可以直接编码

		{cmd:R = (a', b')}

{p 4 4 2}
然而，上述代码将在{cmd:a}或{cmd:b}为复数时，导致{cmd:R}中的组织方式以及记录的值都发生变化。解决方案是编码

		{cmd:R = (transposeonly(a), transposeonly(b))}

{p 4 4 2}
上述代码对于实数或复数的{cmd:a}和{cmd:b}都是有效的。
如果你关心内存消耗，也可以编码

		{cmd:R = (a \ b)}
		{cmd:_transposeonly(R)}
	

{marker conformability}{...}
{title:相容性}

    {cmd:transposeonly(}{it:A}{cmd:)}:
		{it:A}:  {it:r x c}
	   {it:结果}:  {it:c x r}

    {cmd:_transposeonly(}{it:A}{cmd:)}:
	{it:输入:}
		{it:A}:  {it:r x c}
	{it:输出:}
		{it:A}:  {it:c x r}


{marker diagnostics}{...}
{title:诊断}

{p 4 4 2}
{cmd:_transposeonly(}{it:A}{cmd:)}
如果{it:A}是视图，则会中止并报错。


{marker source}{...}
{title:源代码}

{p 4 4 2}
{view transposeonly.mata, adopath asis:transposeonly.mata};
{cmd:_transposeonly()}是内建的。
{p_end}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <mf_transposeonly.sthlp>}