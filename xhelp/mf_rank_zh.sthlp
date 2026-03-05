{smcl}
{* *! version 1.1.4  15may2018}{...}
{vieweralsosee "[M-5] rank()" "mansection M-5 rank()"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[M-5] fullsvd()" "help mf_fullsvd_zh"}{...}
{vieweralsosee "[M-5] pinv()" "help mf_pinv_zh"}{...}
{vieweralsosee "[M-5] svd()" "help mf_svd_zh"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[M-4] Matrix" "help m4_matrix_zh"}{...}
{viewerjumpto "Syntax" "mf_rank_zh##syntax"}{...}
{viewerjumpto "Description" "mf_rank_zh##description"}{...}
{viewerjumpto "Links to PDF documentation" "mf_rank_zh##linkspdf"}{...}
{viewerjumpto "Remarks" "mf_rank_zh##remarks"}{...}
{viewerjumpto "Conformability" "mf_rank_zh##conformability"}{...}
{viewerjumpto "Diagnostics" "mf_rank_zh##diagnostics"}{...}
{viewerjumpto "Source code" "mf_rank_zh##source"}
{help mf_rank:English Version}
{hline}{...}
{p2colset 1 17 19 2}{...}
{p2col:{bf:[M-5] rank()} {hline 2}}矩阵的秩
{p_end}
{p2col:}({mansection M-5 rank():查看完整的PDF手册条目}){p_end}
{p2colreset}{...}


{marker syntax}{...}
{title:语法}

{p 8 12 2}
{it:实数标量}
{cmd:rank(}{it:数字矩阵} {it:A}{cmd:)}

{p 8 12 2}
{it:实数标量}
{cmd:rank(}{it:数字矩阵} {it:A}{cmd:,}
{it:实数标量 tol}{cmd:)}


{marker description}{...}
{title:描述}

{p 4 4 2}
{cmd:rank(}{it:A}{cmd:)}
和 
{cmd:rank(}{it:A}{cmd:,} {it:tol}{cmd:)}
返回矩阵 {it:A}: {it:m x n} 的秩。


{marker linkspdf}{...}
{title:PDF文档链接}

        {mansection M-5 rank()Remarksandexamples:备注和示例}

{pstd}
以上部分不包含在此帮助文件中。


{marker remarks}{...}
{title:备注}

{p 4 4 2}
矩阵 {it:A}: {it:m x n} 的行秩是 {it:A} 中线性无关的行数。列秩是线性无关的列数。然而，行秩和列秩的术语仅用于强调。两者相等，结果被称为 {it:A} 的秩。

{p 4 4 2}
{cmd:rank()} 通过计算 {it:A} 的 SVD 的非零奇异值的数量来计算秩，其中非零是相对于一个容忍度来解释的。  
{cmd:rank()} 使用与 {cmd:pinv()} 相同的容忍度（参见 
{bf:{help mf_pinv_zh:[M-5] pinv()}}）以及 {cmd:svsolve()}（参见 
{bf:{help mf_svsolve_zh:[M-5] svsolve()}}），可选参数 {it:tol} 
以与这些函数相同的方式指定。

{p 4 4 2}
因此，如果您打算在使用 {cmd:pinv()} 计算逆之前使用 {cmd:rank()}，那么最好直接跳过 {cmd:rank()}，继续进行 {cmd:pinv()} 步骤，因为 {cmd:pinv()} 将返回秩，作为计算逆的副产品。如果提前使用 {cmd:rank()}，则 SVD 将计算两次。

{p 4 4 2}
一般来说，{cmd:rank()} 重复了计算；而且，更糟的是，如果您不打算使用 {cmd:pinv()} 或 {cmd:svsolve()}，而是计划使用其他某个函数， 
{cmd:rank()} 返回的秩可能与您随后使用的任何数值方法的隐含秩不一致，因为每个 
数值方法有其自己的精度和容忍度。

{p 4 4 2}
尽管如此，{cmd:rank()} 在交互和教学场合中是有用的。


{marker conformability}{...}
{title:兼容性}

    {cmd:rank(}{it:A}{cmd:,} {it:tol}{cmd:)}:
		{it:A}:  {it:m x n}
	      {it:tol}:  1 {it:x} 1  (可选)
	   {it:result}:  1 {it:x} 1


{marker diagnostics}{...}
{title:诊断}

{p 4 4 2}
{cmd:rank(}{it:A}{cmd:)} 如果 {it:A} 包含缺失值，则返回缺失值。


{marker source}{...}
{title:源代码}

{p 4 4 2}
{view rank.mata, adopath asis:rank.mata},
{view rank_from_singular_values.mata, adopath asis:rank_from_singular_values.mata}
{p_end}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <mf_rank.sthlp>}