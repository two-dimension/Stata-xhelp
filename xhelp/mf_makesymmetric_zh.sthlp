{smcl}
{* *! version 1.1.4  15may2018}{...}
{vieweralsosee "[M-5] makesymmetric()" "mansection M-5 makesymmetric()"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[M-5] issymmetric()" "help mf_issymmetric_zh"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[M-4] Manipulation" "help m4_manipulation_zh"}{...}
{viewerjumpto "Syntax" "mf_makesymmetric_zh##syntax"}{...}
{viewerjumpto "Description" "mf_makesymmetric_zh##description"}{...}
{viewerjumpto "Links to PDF documentation" "mf_makesymmetric_zh##linkspdf"}{...}
{viewerjumpto "Remarks" "mf_makesymmetric_zh##remarks"}{...}
{viewerjumpto "Conformability" "mf_makesymmetric_zh##conformability"}{...}
{viewerjumpto "Diagnostics" "mf_makesymmetric_zh##diagnostics"}{...}
{viewerjumpto "Source code" "mf_makesymmetric_zh##source"}
{help mf_makesymmetric:English Version}
{hline}{...}
{p2colset 1 26 28 2}{...}
{p2col:{bf:[M-5] makesymmetric()} {hline 2}}使方阵对称（Hermitian）
{p_end}
{p2col:}({mansection M-5 makesymmetric():查看完整的 PDF 手册条目}){p_end}
{p2colreset}{...}


{marker syntax}{...}
{title:语法}

{p 8 12 2}
{it:数值矩阵}{bind: }
{cmd:makesymmetric(}{it:数值矩阵 A}{cmd:)}

{p 8 12 2}
{it:无返回值}{bind:          }
{cmd:_makesymmetric(}{it:数值矩阵 A}{cmd:)}


{marker description}{...}
{title:描述}

{p 4 4 2}
{cmd:makesymmetric(}{it:A}{cmd:)} 返回一个通过反射对角线下方的元素而使得 
{it:A} 变成对称（Hermitian）矩阵的结果。

{p 4 4 2}
{cmd:_makesymmetric(}{it:A}{cmd:)} 做相同的操作，但将结果存回 
{it:A} 中。


{marker linkspdf}{...}
{title:PDF 文档链接}

        {mansection M-5 makesymmetric()Remarksandexamples:备注和示例}

{pstd}
上述部分未包含在此帮助文件中。


{marker remarks}{...}
{title:备注}

{p 4 4 2}
如果 {it:A} 是实数，以下对角线的元素会被复制到其对应的
对角线上方位置。

{p 4 4 2}
如果 {it:A} 是复数，以下对角线的元素的共轭会被复制到其对应的对角线上方位置，且对角线的虚部会被设为零。

{p 4 4 2}
无论 {it:A} 是实数还是复数，
由于舍入误差，原本应该产生对称矩阵的矩阵计算可能会产生稍微偏离
对称性的矩阵，{cmd:makesymmetric()} 可以用来纠正这种情况。


{marker conformability}{...}
{title:兼容性}

    {cmd:makesymmetric(}{it:A}{cmd:)}:
		{it:A}:  {it:n x n}
	   {it:结果}:  {it:n x n}

    {cmd:_makesymmetric(}{it:A}{cmd:)}:
		{it:A}:  {it:n x n}


{marker diagnostics}{...}
{title:诊断信息}

{p 4 4 2}
如果 {it:A} 不是方阵，{cmd:makesymmetric(}{it:A}{cmd:)} 和 {cmd:_makesymmetric(}{it:A}{cmd:)} 会失败并报错。此外，如果 {it:A} 是视图，{cmd:_makesymmetric()} 也会失败并报错。


{marker source}{...}
{title:源代码}

{p 4 4 2}
{view makesymmetric.mata, adopath asis:makesymmetric.mata};
{cmd:_makesymmetric()} 是内置的。
{p_end}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <mf_makesymmetric.sthlp>}