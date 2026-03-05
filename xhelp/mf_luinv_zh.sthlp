{smcl}
{* *! version 1.1.6  15may2018}{...}
{vieweralsosee "[M-5] luinv()" "mansection M-5 luinv()"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[M-5] cholinv()" "help mf_cholinv_zh"}{...}
{vieweralsosee "[M-5] invsym()" "help mf_invsym_zh"}{...}
{vieweralsosee "[M-5] lud()" "help mf_lud_zh"}{...}
{vieweralsosee "[M-5] lusolve()" "help mf_lusolve_zh"}{...}
{vieweralsosee "[M-5] pinv()" "help mf_pinv_zh"}{...}
{vieweralsosee "[M-5] qrinv()" "help mf_qrinv_zh"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[M-4] Matrix" "help m4_matrix_zh"}{...}
{vieweralsosee "[M-4] Solvers" "help m4_solvers_zh"}{...}
{viewerjumpto "Syntax" "mf_luinv_zh##syntax"}{...}
{viewerjumpto "Description" "mf_luinv_zh##description"}{...}
{viewerjumpto "Links to PDF documentation" "mf_luinv_zh##linkspdf"}{...}
{viewerjumpto "Remarks" "mf_luinv_zh##remarks"}{...}
{viewerjumpto "Conformability" "mf_luinv_zh##conformability"}{...}
{viewerjumpto "Diagnostics" "mf_luinv_zh##diagnostics"}{...}
{viewerjumpto "Source code" "mf_luinv_zh##source"}
{help mf_luinv:English Version}
{hline}{...}
{p2colset 1 18 20 2}{...}
{p2col:{bf:[M-5] luinv()} {hline 2}}方阵求逆
{p_end}
{p2col:}({mansection M-5 luinv():查看完整的PDF手册条目}){p_end}
{p2colreset}{...}


{marker syntax}{...}
{title:语法}

{p 8 12 2}
{it:数值矩阵}
{cmd:luinv(}{it:数值矩阵 A}{cmd:)}

{p 8 12 2}
{it:数值矩阵}
{cmd:luinv(}{it:数值矩阵 A}{cmd:,}
{it:实标量 tol}{cmd:)}


{p 8 12 2}
{it:无}{bind:         }
{cmd:_luinv(}{it:数值矩阵 A}{cmd:)}

{p 8 12 2}
{it:无}{bind:         }
{cmd:_luinv(}{it:数值矩阵 A}{cmd:,}
{it:实标量 tol}{cmd:)}


{p 8 12 2}
{it:实标量}{bind:  }
{cmd:_luinv_la(}{it:数值矩阵 A}{cmd:,}
{it:b}{cmd:)}


{marker description}{...}
{title:描述}

{p 4 4 2}
{cmd:luinv(}{it:A}{cmd:)} 
和 
{cmd:luinv(}{it:A}{cmd:,} {it:tol}{cmd:)}
返回实数或复数的方阵 {it:A} 的逆矩阵。

{p 4 4 2}
{cmd:_luinv(}{it:A}{cmd:)} 
和
{cmd:_luinv(}{it:A}{cmd:,} {it:tol}{cmd:)}
执行相同的操作，但不是返回逆矩阵，而是用逆矩阵覆盖原矩阵 {it:A}。

{p 4 4 2}
在所有情况下，可选参数 {it:tol} 指定确定奇异性的容忍度；见下文 {it:备注}。

{p 4 4 2}
{cmd:_luinv_la(}{it:A}{cmd:,} {it:b}{cmd:)}
是 
{bf:{help m1_lapack_zh:[M-1] LAPACK}} 例程的接口，它们执行实际操作。输出 {it:b} 为实标量，若 LAPACK 例程使用了分块算法则为 1，否则为 0。


{marker linkspdf}{...}
{title:PDF文档链接}

        {mansection M-5 luinv()备注和示例:备注和示例}

{pstd}
上述部分不包含在此帮助文件中。


{marker remarks}{...}
{title:备注}

{p 4 4 2}
这些例程计算 {it:A} 的逆。逆矩阵 {it:A}^(-1) 满足条件

		{it:A}{it:A}^(-1) = {it:I}

		{it:A}^(-1){it:A} = {it:I}

{p 4 4 2}
{it:A} 要求为方阵且具有满秩。
关于不规则或秩亏矩阵的广义逆，参见 
{bf:{help mf_qrinv_zh:[M-5] qrinv()}}
和
{bf:{help mf_pinv_zh:[M-5] pinv()}}。
关于实对称矩阵的求逆，请参见 {bf:{help mf_invsym_zh:[M-5] invsym()}}。

{p 4 4 2}
{cmd:luinv(}{it:A}{cmd:)} 从逻辑上等同于 
{cmd:lusolve(}{it:A}{cmd:, I(rows(}{it:A}{cmd:)))};
有关详情以及可选参数 {it:tol} 的使用，请参见 {bf:{help mf_lusolve_zh:[M-5] lusolve()}}。


{marker conformability}{...}
{title:兼容性}

    {cmd:luinv(}{it:A}{cmd:,} {it:tol}{cmd:)}:
		{it:A}:  {it:n x n}
	      {it:tol}:  1 {it:x} 1    (可选)
	   {it:结果}:  {it:n x n}
		
    {cmd:_luinv(}{it:A}{cmd:,} {it:tol}{cmd:)}:
	{it:输入:}
		{it:A}:  {it:n x n}
	      {it:tol}:  1 {it:x} 1    (可选)
	{it:输出:}
		{it:A}:  {it:n x n}

    {cmd:_luinv_la(}{it:A}{cmd:,} {it:b}{cmd:)}:
	{it:输入:}
		{it:A}:  {it:n x n}
	{it:输出:}
		{it:A}:  {it:n x n}
	        {it:b}:  1 {it:x} 1
	   {it:结果}:  1 {it:x} 1


{marker diagnostics}{...}
{title:诊断}

{p 4 4 2}
这些函数返回的逆矩阵为实数矩阵，当且仅当 {it:A} 为实数矩阵；如果 {it:A} 为复数矩阵，则返回的逆矩阵为复数。
如果使用这些函数的参数是奇异矩阵，将返回缺失值矩阵。奇异性的判断是相对于 {it:tol} 进行的。详细信息见 
{it:{help mf_lusolve##remarks3:容忍度}}
在 {it:备注} 中可查阅 {bf:{help mf_lusolve_zh:[M-5] lusolve()}}。

{p 4 4 2}
{cmd:luinv(}{it:A}{cmd:)}  和 {cmd:_luinv(}{it:A}{cmd:)} 
如果 {it:A} 包含缺失值，则返回的矩阵将包含缺失值。

{p 4 4 2}
当 {it:A} 是视图时，{cmd:_luinv(}{it:A}{cmd:)} 将中止并报错。

{p 4 4 2}
{cmd:_luinv_la(}{it:A}{cmd:,} {it:b}{cmd:)}
不应直接使用；请使用 {cmd:_luinv()}。

{p 4 4 2}
请参见
{bf:{help mf_lusolve_zh:[M-5] lusolve()}}
和
{bf:{help m1_tolerance_zh:[M-1] 容忍度}}
获取有关可选参数 {it:tol} 的信息。


{marker source}{...}
{title:源代码}

{p 4 4 2}
{view luinv.mata, adopath asis:luinv.mata},
{view _luinv.mata, adopath asis:_luinv.mata};
{cmd:_luinv_la()} 是内置的。
{p_end}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <mf_luinv.sthlp>}