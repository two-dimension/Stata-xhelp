{smcl}
{* *! version 1.1.5  15may2018}{...}
{vieweralsosee "[M-5] cholesky()" "mansection M-5 cholesky()"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[M-5] lud()" "help mf_lud_zh"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[M-4] Matrix" "help m4_matrix_zh"}{...}
{viewerjumpto "Syntax" "mf_cholesky_zh##syntax"}{...}
{viewerjumpto "Description" "mf_cholesky_zh##description"}{...}
{viewerjumpto "Links to PDF documentation" "mf_cholesky_zh##linkspdf"}{...}
{viewerjumpto "Remarks" "mf_cholesky_zh##remarks"}{...}
{viewerjumpto "Conformability" "mf_cholesky_zh##conformability"}{...}
{viewerjumpto "Diagnostics" "mf_cholesky_zh##diagnostics"}{...}
{viewerjumpto "Source code" "mf_cholesky_zh##source"}{...}
{viewerjumpto "Reference" "mf_cholesky_zh##reference"}
{help mf_cholesky:English Version}
{hline}{...}
{p2colset 1 21 23 2}{...}
{p2col:{bf:[M-5] cholesky()} {hline 2}}Cholesky 平方根分解
{p_end}
{p2col:}({mansection M-5 cholesky():查看完整的 PDF 手册条目}){p_end}
{p2colreset}{...}


{marker syntax}{...}
{title:语法}

{p 8 12 2}
{it:数值矩阵}
{cmd:cholesky(}{it:数值矩阵 A}{cmd:)}

{p 8 12 2}
{it:void}{bind:         }
{cmd:_cholesky(}{it:数值矩阵 A}{cmd:)}


{marker description}{...}
{title:描述}

{p 4 4 2}
{cmd:cholesky(}{it:A}{cmd:)} 返回对称
({help m6_glossary##hermitianmtx:厄米}),
正定矩阵 {it:A} 的 Cholesky 分解 {it:G}。 
如果 {it:A} 不是正定的，{cmd:cholesky()} 将返回一个全为缺失值的下三角矩阵。

{p 4 4 2}
{cmd:_cholesky(}{it:A}{cmd:)} 执行相同的操作，但它会用 Cholesky 结果覆盖
{it:A}。


{marker linkspdf}{...}
{title:PDF 文档链接}

        {mansection M-5 cholesky()Remarksandexamples:备注和示例}

{pstd}
上述部分未包含在此帮助文件中。


{marker remarks}{...}
{title:备注}

{p 4 4 2}
正定对称矩阵 {it:A} 的 Cholesky 分解 {it:G} 为 

		{it:A} = {it:G}{it:G}{bf:'}

{p 4 4 2}
其中 {it:G} 为下三角矩阵。
当 {it:A} 为复数时，{it:A} 必须是 Hermitian，当然 {it:G}{bf:'} 是 {it:G} 的共轭转置。

{p 4 4 2}
分解是通过 {bf:{help m1_lapack_zh:[M-1] LAPACK}} 进行的。


{marker conformability}{...}
{title:兼容性}

    {cmd:cholesky(}{it:A}{cmd:)}
		{it:A}:  {it:n x n} 
	   {it:result}:  {it:n x n} 

    {cmd:_cholesky(}{it:A}{cmd:)}
	{it:输入:}
		{it:A}:  {it:n x n} 
	{it:输出:}
		{it:A}:  {it:n x n} 


{marker diagnostics}{...}
{title:诊断}

{p 4 4 2}
如果 {it:A} 包含缺失值或 {it:A} 不是正定的，{cmd:cholesky(}{cmd:)} 将返回一个全为缺失值的下三角矩阵。

{p 4 4 2}
如果 {it:A} 包含缺失值或 {it:A} 不是正定的，{cmd:_cholesky(}{it:A}{cmd:)} 将用一个全为缺失值的下三角矩阵覆盖 {it:A}。

{p 4 4 2}
这两个函数都在不检查 {it:A} 是否对称或在复数情况下是否是 Hermitian 的情况下，使用 {it:A} 的下三角元素。  


{marker source}{...}
{title:源代码}

{p 4 4 2}
{view cholesky.mata, adopath asis:cholesky.mata};
{cmd:_cholesky()} 是内置的。
{p_end}


{marker reference}{...}
{title:参考文献}

{phang}
Chabert, J.-L., {c E'}. Barbin, J. Borowczyk, M. Guillemot, 和 A. Michel-Pajus.
1999.
{it:算法的历史：从卵石到微芯片。}
转译 C. Weeks.  柏林：施普林格.
{p_end}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <mf_cholesky.sthlp>}