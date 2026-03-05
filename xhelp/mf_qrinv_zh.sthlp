{smcl}
{* *! version 1.1.4  15may2018}{...}
{vieweralsosee "[M-5] qrinv()" "mansection M-5 qrinv()"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[M-5] cholinv()" "help mf_cholinv_zh"}{...}
{vieweralsosee "[M-5] invsym()" "help mf_invsym_zh"}{...}
{vieweralsosee "[M-5] luinv()" "help mf_luinv_zh"}{...}
{vieweralsosee "[M-5] pinv()" "help mf_pinv_zh"}{...}
{vieweralsosee "[M-5] qrsolve()" "help mf_qrsolve_zh"}{...}
{vieweralsosee "[M-5] solve_tol()" "help mf_solve_tol_zh"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[M-4] Matrix" "help m4_matrix_zh"}{...}
{vieweralsosee "[M-4] Solvers" "help m4_solvers_zh"}{...}
{viewerjumpto "Syntax" "mf_qrinv_zh##syntax"}{...}
{viewerjumpto "Description" "mf_qrinv_zh##description"}{...}
{viewerjumpto "Links to PDF documentation" "mf_qrinv_zh##linkspdf"}{...}
{viewerjumpto "Remarks" "mf_qrinv_zh##remarks"}{...}
{viewerjumpto "Conformability" "mf_qrinv_zh##conformability"}{...}
{viewerjumpto "Diagnostics" "mf_qrinv_zh##diagnostics"}{...}
{viewerjumpto "Source code" "mf_qrinv_zh##source"}
{help mf_qrinv:English Version}
{hline}{...}
{p2colset 1 18 20 2}{...}
{p2col:{bf:[M-5] qrinv()} {hline 2}}通过 QR 分解计算矩阵的广义逆
{p_end}
{p2col:}({mansection M-5 qrinv():查看完整的 PDF 手册条目}){p_end}
{p2colreset}{...}


{marker syntax}{...}
{title:语法}

{p 8 12 2}
{it:数值矩阵}
{cmd:qrinv(}数值矩阵 {it:A}{cmd:)}

{p 8 12 2}
{it:数值矩阵}
{cmd:qrinv(}数值矩阵 {it:A}{cmd:,} {it:秩}{cmd:)}

{p 8 12 2}
{it:数值矩阵}
{cmd:qrinv(}数值矩阵 {it:A}{cmd:,} {it:秩}{cmd:,}
{it:实数标量 tol}{cmd:)}


{p 8 12 2}
{it:实数标量}{bind:  }
{cmd:_qrinv(}数值矩阵 {it:A}{cmd:)}

{p 8 12 2}
{it:实数标量}{bind:  }
{cmd:_qrinv(}数值矩阵 {it:A}{cmd:,}
{it:实数标量 tol}{cmd:)}


{p 4 4 2}
其中 {it:秩} 的类型无关紧要；矩阵 {it:A} 的秩被返回到那里。


{marker description}{...}
{title:描述}

{p 4 4 2}
{cmd:qrinv(}{it:A}{cmd:,} ...{cmd:)} 
返回真实或复数矩阵 {it:A} 的逆或广义逆： {it:m} {it:x} {it:n}, {it:m}>={it:n}。如果指定了可选参数 {it:秩}，则其值为矩阵 {it:A} 的秩。

{p 4 4 2}
{cmd:_qrinv(}{it:A}{cmd:,} ...{cmd:)} 
执行相同的操作，但不返回结果，而是用结果覆盖原矩阵 {it:A}。
{cmd:_qrinv()} 返回矩阵 {it:A} 的秩。

{p 4 4 2}
在这两种情况下，可选参数 {it:tol} 指定用于确定奇异性的容差；请参见下面的 {it:备注}。


{marker linkspdf}{...}
{title:PDF 文档链接}

        {mansection M-5 qrinv()备注与示例:备注与示例}

{pstd}
上述部分不包含在此帮助文件中。


{marker remarks}{...}
{title:备注}

{p 4 4 2}
{cmd:qrinv()} 和 {cmd:_qrinv()} 最常用于方形和可能秩不足的矩阵，但也可以用于行数多于列数的非方形矩阵。另请参见
{bf:{help mf_pinv_zh:[M-5] pinv()}} 
作为替代方案。请查看 
{bf:{help mf_luinv_zh:[M-5] luinv()}} 
以获得更高效的方法来获得满秩的方形矩阵的逆，并且参见
{bf:{help mf_invsym_zh:[M-5] invsym()}}
来逆转真实的对称矩阵。

{p 4 4 2}
当 {it:A} 为满秩时，{cmd:qrinv()} 计算的逆与通过更快的 {bf:luinv()} 计算的结果基本相同。当 {it:A}
是奇异矩阵时，{cmd:qrinv()} 和 {cmd:_qrinv()} 计算广义逆 {it:A*}，其满足

		{it:A}({it:A*}){it:A}    =  {it:A} 

		({it:A*}){it:A}({it:A*}) =  {it:A*}

{p 4 4 2}
这个广义逆在行数多于列数的非方形矩阵中也会计算，并返回最小二乘解。如果 {it:A} 是 {it:m} {it:x} {it:n}, {it:m}>={it:n}，并且 {it:A} 的秩等于 {it:n}，那么 ({it:A*}){it:A}={it:I}，忽略舍入误差。

{p 4 4 2}
{cmd:qrinv(}{it:A}{cmd:)} 实现为 
{cmd:qrsolve(}{it:A}{cmd:, I(rows(}{it:A}{cmd:)))};
请参阅 {bf:{help mf_qrsolve_zh:[M-5] qrsolve()}} 获取详细信息以及如何使用可选的 {it:tol} 参数。


{marker conformability}{...}
{title:适配性}

    {cmd:qrinv(}{it:A}{cmd:,} {it:秩}{cmd:,} {it:tol}{cmd:)}:
	{it:输入:}
		{it:A}:  {it:m x n},   {it:m} >= {it:n}
	      {it:tol}:  1 {it:x} 1    (可选)
	{it:输出:}
	     {it:秩}:  1 {it:x} 1    (可选)
	   {it:结果}:  {it:n x m}
		
    {cmd:_qrinv(}{it:A}{cmd:,} {it:tol}{cmd:)}:
	{it:输入:}
		{it:A}:  {it:m x n},   {it:m} >= {it:n}
	      {it:tol}:  1 {it:x} 1    (可选)
	{it:输出:}
		{it:A}:  {it:n x m}
	   {it:结果}:  1 {it:x} 1    (包含秩)


{marker diagnostics}{...}
{title:诊断}

{p 4 4 2}
这些函数返回的逆是实数如果 {it:A} 是 
实数，如果 {it:A} 是复数则为复数。

{p 4 4 2}
{cmd:qrinv(}{it:A}{cmd:,} ...{cmd:)} 和 
{cmd:_qrinv(}{it:A}{cmd:,} ...{cmd:)} 
在 {it:A} 包含缺失值时返回包含缺失值的结果。

{p 4 4 2}
{cmd:_qrinv(}{it:A}{cmd:,} ...{cmd:)} 
在 {it:A} 是视图时会报错并中止。

{p 4 4 2}
请参阅
{bf:{help mf_qrsolve_zh:[M-5] qrsolve()}}
和
{bf:{help m1_tolerance_zh:[M-1] Tolerance}}
以获取有关可选 {it:tol} 参数的信息。


{marker source}{...}
{title:源代码}

{p 4 4 2}
{view qrinv.mata, adopath asis:qrinv.mata},
{view _qrinv.mata, adopath asis:_qrinv.mata}
{p_end}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <mf_qrinv.sthlp>}