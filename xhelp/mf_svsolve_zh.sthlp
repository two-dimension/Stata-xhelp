{smcl}
{* *! version 1.1.6  15may2018}{...}
{vieweralsosee "[M-5] svsolve()" "mansection M-5 svsolve()"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[M-5] cholsolve()" "help mf_cholsolve_zh"}{...}
{vieweralsosee "[M-5] lusolve()" "help mf_lusolve_zh"}{...}
{vieweralsosee "[M-5] qrsolve()" "help mf_qrsolve_zh"}{...}
{vieweralsosee "[M-5] solvelower()" "help mf_solvelower_zh"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[M-4] Matrix" "help m4_matrix_zh"}{...}
{vieweralsosee "[M-4] Solvers" "help m4_solvers_zh"}{...}
{viewerjumpto "Syntax" "mf_svsolve_zh##syntax"}{...}
{viewerjumpto "Description" "mf_svsolve_zh##description"}{...}
{viewerjumpto "Links to PDF documentation" "mf_svsolve_zh##linkspdf"}{...}
{viewerjumpto "Remarks" "mf_svsolve_zh##remarks"}{...}
{viewerjumpto "Conformability" "mf_svsolve_zh##conformability"}{...}
{viewerjumpto "Diagnostics" "mf_svsolve_zh##diagnostics"}{...}
{viewerjumpto "Source code" "mf_svsolve_zh##source"}
{help mf_svsolve:English Version}
{hline}{...}
{p2colset 1 20 22 2}{...}
{p2col:{bf:[M-5] svsolve()} {hline 2}}使用奇异值分解求解 AX=B 的 X
{p_end}
{p2col:}({mansection M-5 svsolve():查看完整的 PDF 手册条目}){p_end}
{p2colreset}{...}


{marker syntax}{...}
{title:语法}

{p 8 12 2}
{it:numeric matrix}
{cmd:svsolve(}{it:A}{cmd:,}
{it:B}{cmd:)}

{p 8 12 2}
{it:numeric matrix}
{cmd:svsolve(}{it:A}{cmd:,}
{it:B}{cmd:,} {it:rank}{cmd:)}

{p 8 12 2}
{it:numeric matrix}
{cmd:svsolve(}{it:A}{cmd:,}
{it:B}{cmd:,} {it:rank}{cmd:,} {it:tol}{cmd:)}


{p 8 12 2}
{it:real scalar}{bind:  }
{cmd:_svsolve(}{it:A}{cmd:,}
{it:B}{cmd:)}

{p 8 12 2}
{it:real scalar}{bind:  }
{cmd:_svsolve(}{it:A}{cmd:,}
{it:B}{cmd:,} {it:tol}{cmd:)}


{p 4 4 2}
其中

{p 24 24 2}
		{it:A}:  {it:numeric matrix}

{p 24 24 2}
		{it:B}:  {it:numeric matrix}

{p 21 24 2}
	     {it:rank}:  无关紧要；返回 {it:real scalar}

{p 22 24 2}
	      {it:tol}:  {it:real scalar}


{marker description}{...}
{title:描述}

{p 4 4 2}
{cmd:svsolve(}{it:A}{cmd:,} {it:B}{cmd:,} ...{cmd:)},
使用奇异值分解求解 {it:A}{it:X}={it:B} 并返回
{it:X}。当 {it:A} 为奇异时，{cmd:svsolve()} 计算最小范数
的最小二乘广义解。当指定了 {it:rank} 时，{it:A} 的秩将被放入该参数中。

{p 4 4 2}
{cmd:_svsolve(}{it:A}{cmd:,} {it:B}{cmd:,} ...{cmd:)}
做同样的事情，但会破坏 {it:A} 的内容并 
用解覆盖 {it:B}。返回的是 {it:A} 的秩。

{p 4 4 2}
在这两种情况下，{it:tol} 指定用于判断
{it:A} 是否是满秩的容忍度。{it:tol} 按照标准方式解释——
如果指定了 {it:tol}>0，则用该值乘以默认值；如果指定了 {it:tol}<=0，则用该值替代默认值。


{marker linkspdf}{...}
{title:PDF 文档链接}

        {mansection M-5 svsolve()Remarksandexamples:备注和示例}

{pstd}
以上部分未包含在此帮助文件中。


{marker remarks}{...}
{title:备注}

{p 4 4 2}
{cmd:svsolve(}{it:A}{cmd:,} {it:B}{cmd:,} ...{cmd:)} 适用于方阵或非方阵、满秩或秩缺失的矩阵 {it:A}。
当 {it:A} 为满秩时，
{cmd:svsolve()} 返回与 
{cmd:lusolve()} （参见 {bf:{help mf_lusolve_zh:[M-5] lusolve()}}）相同的解，
忽略舍入误差。当 {it:A} 为奇异时，{cmd:svsolve()} 返回 
最小范数的最小二乘广义解。  
{cmd:qrsolve()} （参见 {bf:{help mf_qrsolve_zh:[M-5] qrsolve()}}），一个替代方法，
返回一个广义最小二乘解，相当于删除 {it:A} 的一些行。

{p 4 4 2}
备注分为以下几部分：

	{help mf_svsolve##remarks1:推导}
	{help mf_svsolve##remarks2:与反演的关系}
	{help mf_svsolve##remarks3:容忍度}


{marker remarks1}{...}
{title:推导}

{p 4 4 2}
我们希望求解 {it:X}

		{it:A}{it:X} = {it:B}{right:(1)    }

{p 4 4 2}
对 {it:A} 执行奇异值分解，使得 
{it:A} = {it:USV}{bf:'}。然后 (1) 可以重写为

		{it:USV}{bf:'}{it:X} = {it:B}

{p 4 4 2}
在两侧乘以 {it:U}{bf:'}，并记得 {it:U}{bf:'}{it:U}={it:I}，
我们有 

		{it:SV}{bf:'}{it:X} = {it:U}{bf:'}{it:B}

{p 4 4 2}
矩阵 {it:S} 是对角矩阵，因此其逆可以很容易地计算，我们得到

		{it:V}{bf:'}{it:X} = {it:S}^(-1){it:U}{bf:'}{it:B}

{p 4 4 2}
当我们乘以 {it:V} 时，记得 {it:V}{it:V}{bf:'}={it:I}， 
解为 

		{it:X} = {it:V}{it:S}^(-1){it:U}{bf:'}{it:B}{right:(2)    }

{p 4 4 2}
有关 SVD 的更多信息，请参见 {bf:{help mf_svd_zh:[M-5] svd()}}。


{marker remarks2}{...}
{title:与反演的关系}

{p 4 4 2}
有关一般讨论，
请参见 {it:{help mf_lusolve##remarks2:与反演的关系}} 
在 {bf:{help mf_lusolve_zh:[M-5] lusolve()}}中。
                                                                                
{p 4 4 2}
有关基于 SVD 的逆，请参见
{bf:{help mf_pinv_zh:[M-5] pinv()}}。 {cmd:pinv(}{it:A}{cmd:)} 相当于 
{cmd:svsolve(}{it:A}{cmd:,} {cmd:I(rows(}{it:A}{cmd:)))}, 尽管 
{cmd:pinv()} 有单独的代码，使用较少的内存。


{marker remarks3}{...}
{title:容忍度}

{p 4 4 2}
在上面的 (2) 中，我们需要计算对角矩阵 {it:S} 的逆。
广义解通过对 {it:S}^(-1) 的第 {it:i} 个对角元素用零替代而获得，其中 {it:S} 的第 {it:i} 个对角元素的绝对值小于或等于 {it:eta}。
默认值为 {it:eta} 为

		{it:eta} = epsilon(1)*rows({it:A})*max({it:S})

{p 4 4 2}
如果你指定 {it:tol}>0，则所指定的值将用于乘以 {it:eta}。
你也可以指定 {it:tol}<=0，然后你所指定的值的负数将替代 {it:eta}；请参见 
{bf:{help m1_tolerance_zh:[M-1] 容忍度}}。


{marker conformability}{...}
{title:适应性}

    {cmd:svsolve(}{it:A}{cmd:,} {it:B}{cmd:,} {it:rank}{cmd:,} {it:tol}{cmd:)}:
	{it:输入:}
		{it:A}:  {it:m x n}
		{it:B}:  {it:m x k}
	      {it:tol}:  1 {it:x} 1    （可选）
	{it:输出:}
	     {it:rank}:  1 {it:x} 1    （可选）
	   {it:结果}:  {it:n x k}

    {cmd:_svsolve(}{it:A}{cmd:,} {it:B}{cmd:,} {it:tol}{cmd:)}:
	{it:输入:}
		{it:A}:  {it:m x n}
		{it:B}:  {it:m x k}
	      {it:tol}:  1 {it:x} 1    （可选）
	{it:输出:}
		{it:A}:  0 {it:x} 0
		{it:B}:  {it:m x k}
	   {it:结果}:  1 {it:x} 1


{marker diagnostics}{...}
{title:诊断}

{p 4 4 2}
{cmd:svsolve(}{it:A}{cmd:,} {it:B}{cmd:,} ...{cmd:)}
和 
{cmd:_svsolve(}{it:A}{cmd:,} {it:B}{cmd:,} ...{cmd:)}
如果 {it:A} 或 {it:B} 包含缺失值，则返回缺失结果。

{p 4 4 2}
{cmd:_svsolve(}{it:A}{cmd:,} {it:B}{cmd:,} ...{cmd:)}
如果 {it:A}（而不是 {it:B}）是视图，则会中止并出现错误。


{marker source}{...}
{title:源代码}

{p 4 4 2}
{view svsolve.mata, adopath asis:svsolve.mata},
{view _svsolve.mata, adopath asis:_svsolve.mata}
{p_end}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <mf_svsolve.sthlp>}