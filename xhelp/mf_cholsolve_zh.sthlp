{smcl}
{* *! version 1.1.6  15may2018}{...}
{vieweralsosee "[M-5] cholsolve()" "mansection M-5 cholsolve()"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[M-5] cholesky()" "help mf_cholesky_zh"}{...}
{vieweralsosee "[M-5] cholinv()" "help mf_cholinv_zh"}{...}
{vieweralsosee "[M-5] lusolve()" "help mf_lusolve_zh"}{...}
{vieweralsosee "[M-5] qrsolve()" "help mf_qrsolve_zh"}{...}
{vieweralsosee "[M-5] solvelower()" "help mf_solvelower_zh"}{...}
{vieweralsosee "[M-5] svsolve()" "help mf_svsolve_zh"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[M-5] solve_tol()" "help mf_solve_tol_zh"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[M-4] Matrix" "help m4_matrix_zh"}{...}
{vieweralsosee "[M-4] Solvers" "help m4_solvers_zh"}{...}
{viewerjumpto "语法" "mf_cholsolve_zh##syntax"}{...}
{viewerjumpto "描述" "mf_cholsolve_zh##description"}{...}
{viewerjumpto "PDF 文档链接" "mf_cholsolve_zh##linkspdf"}{...}
{viewerjumpto "备注" "mf_cholsolve_zh##remarks"}{...}
{viewerjumpto "兼容性" "mf_cholsolve_zh##conformability"}{...}
{viewerjumpto "诊断" "mf_cholsolve_zh##diagnostics"}{...}
{viewerjumpto "源代码" "mf_cholsolve_zh##source"}
{help mf_cholsolve:English Version}
{hline}{...}
{p2colset 1 22 24 2}{...}
{p2col:{bf:[M-5] cholsolve()} {hline 2}}使用 Cholesky 分解求解 AX=B 的 X
{p_end}
{p2col:}({mansection M-5 cholsolve():查看完整的 PDF 手动条目}){p_end}
{p2colreset}{...}


{marker syntax}{...}
{title:语法}

{p 8 12 2}
{it:数值矩阵}
{cmd:cholsolve(}{it:数值矩阵 A}{cmd:,}
{it:数值矩阵 B}{cmd:)}

{p 8 63 2}
{it:数值矩阵}
{cmd:cholsolve(}{it:数值矩阵 A}{cmd:,}
{it:数值矩阵 B}{cmd:,}{break}
{it:实标量 tol}{cmd:)}


{p 8 12 2}
{it:无效}{bind:         }
{cmd:_cholsolve(}{it:数值矩阵 A}{cmd:,}
{it:数值矩阵 B}{cmd:)}

{p 8 63 2}
{it:无效}{bind:         }
{cmd:_cholsolve(}{it:数值矩阵 A}{cmd:,}
{it:数值矩阵 B}{cmd:,}{break}
{it:实标量 tol}{cmd:)}


{marker description}{...}
{title:描述}

{p 4 4 2}
{cmd:cholsolve(}{it:A}{cmd:,} {it:B}{cmd:)} 
求解 {it:A}{it:X}={it:B} 并返回对于对称
({help m6_glossary##hermitianmtx:厄米矩阵}),
正定的 {it:A} 的解 {it:X}。如果 {it:A} 不是正定的或 {it:A} 是奇异的，{cmd:cholsolve()} 将返回一个缺失值矩阵。

{p 4 4 2}
{cmd:cholsolve(}{it:A}{cmd:,} {it:B}{cmd:,} {it:tol}{cmd:)}
执行相同的操作；允许您指定声明 {it:A} 为奇异的容忍度；请参阅下面{it:{help mf_cholsolve##remarks3:容忍度}}中的 {it:备注}。

{p 4 4 2}
{cmd:_cholsolve(}{it:A}{cmd:,} {it:B}{cmd:)} 
和 
{cmd:_cholsolve(}{it:A}{cmd:,} {it:B}{cmd:,} {it:tol}{cmd:)} 
执行相同的操作，但不是返回解 {it:X}，而是用解覆盖 {it:B}，在计算过程中，它们会破坏 {it:A} 的内容。


{marker linkspdf}{...}
{title:PDF 文档链接}

        {mansection M-5 cholsolve()备注和示例:备注和示例}

{pstd}
上述部分未包含在此帮助文件中。


{marker remarks}{...}
{title:备注}

{p 4 4 2}
上述函数通过 Cholesky 分解求解 {it:AX}={it:B}，并且是准确的。当 {it:A} 不是对称且正定时， 
{bf:{help mf_lusolve_zh:[M-5] lusolve()}},
{bf:{help mf_qrsolve_zh:[M-5] qrsolve()}}, 和 
{bf:{help mf_svsolve_zh:[M-5] svsolve()}}
是基于 LU 分解、QR 分解和奇异值分解（SVD）的替代方案。
这些替代方案在处理奇异的 {it:A} 时有所不同。然后 LU 基础的程序返回缺失值，而基于 QR 和 SVD 的程序返回广义最小二乘解。

{p 4 4 2}
备注按以下标题呈现：

	{help mf_cholsolve##remarks1:推导}
	{help mf_cholsolve##remarks2:与逆的关系}
	{help mf_cholsolve##remarks3:容忍度}


{marker remarks1}{...}
{title:推导}

{p 4 4 2}
我们希望求解 {it:X}

		{it:A}{it:X} = {it:B}{right:(1)    }

{p 4 4 2}
当 {it:A} 是对称且正定时。		
对 {it:A} 执行 Cholesky 分解，使得我们有 {it:A} =
{it:G}{it:G}{bf:'}。然后 (1) 可以写成

		{it:G}{it:G}{bf:'}{it:X} = {it:B}{right:(2)    }

{p 4 4 2}
定义 

		{it:Z} = {it:G}{bf:'}{it:X}{right:(3)    }

{p 4 4 2}
然后 (2) 可以重写为

		{it:G}{it:Z} = {it:B}{right:(4)    }

{p 4 4 2}
解决 (4) 对 {it:Z} 是容易的，因为 {it:G} 是下三角矩阵。一旦知道 {it:Z}，解决 (3) 对 {it:X} 也很简单，因为 {it:G}{bf:'} 是上三角的。


{marker remarks2}{...}
{title:与逆的关系}

{p 4 4 2}
有关求解线性系统与矩阵逆之间关系的讨论，请见 {it:{help mf_lusolve##remarks2:与逆的关系}} 
在 {bf:{help mf_lusolve_zh:[M-5] lusolve()}} 中。


{marker remarks3}{...}
{title:容忍度}

{p 4 4 2}
使用的默认容忍度是 

		{it:eta} = (1e-13)*trace(abs({it:G}))/{it:n}

{p 4 4 2}
其中 {it:G} 是 {it:A} 的下三角 Cholesky 因子： {it:n} {it:x} {it:n}。如果 
{cmd:cholesky()}（见 {bf:{help mf_cholesky_zh:[M-5] cholesky()}}）发现 {it:A} 不是正定的，或者如果 {it:A} 被发现是正定的，则如果 {it:G} 的任何对角元素小于或等于 {it:eta}，则 {it:A} 被声明为奇异。
在数学上，正定意味着矩阵不是奇异的。在使用的数值方法中，进行两次检查： {cmd:cholesky()} 进行一次检查，然后应用 {it:eta} 规则以确保结果 {cmd:cholesky()} 返回的数值稳定性。

{p 4 4 2}
如果您指定 {it:tol}>0，您指定的值用于乘以 
{it:eta}。您也可以指定 {it:tol}<=0，然后您指定值的负值将用于代替 {it:eta}；见 
{bf:{help m1_tolerance_zh:[M-1] 容忍度}}。

{p 4 4 2}
有关解决接近奇异系统问题的详细讨论，请参见 {bf:{help mf_lusolve_zh:[M-5] lusolve()}}。需要牢记的主要观点是，如果 {it:A} 条件不佳，则 {it:A} 或 {it:B} 中的微小变化可能导致 {it:X} 解决方案的显著不同。


{marker conformability}{...}
{title:兼容性}

    {cmd:cholsolve(}{it:A}{cmd:,} {it:B}{cmd:,} {it:tol}{cmd:)}:
	{it:输入:}
		{it:A}:  {it:n x n}
		{it:B}:  {it:n x k}
	      {it:tol}:  1 {it:x} 1    (可选)
	   {it:结果}:  {it:n x k}

    {cmd:_cholsolve(}{it:A}{cmd:,} {it:B}{cmd:,} {it:tol}{cmd:)}:
	{it:输入:}
		{it:A}:  {it:n x n}
		{it:B}:  {it:n x k}
	      {it:tol}:  1 {it:x} 1    (可选)
	{it:输出:}
		{it:A}:  0 {it:x} 0
		{it:B}:  {it:n x k}


{marker diagnostics}{...}
{title:诊断}

{p 4 4 2}
{cmd:cholsolve(}{it:A}{cmd:,} {it:B}{cmd:,} ...{cmd:)},
和
{cmd:_cholsolve(}{it:A}{cmd:,} {it:B}{cmd:,} ...{cmd:)}
如果 {it:A} 不是正定的或 {it:A} 包含缺失值，则返回所有缺失值的结果。

{p 4 4 2}
如果 {it:A} 或 {it:B} 是视图，则 {cmd:_cholsolve(}{it:A}{cmd:,} {it:B}{cmd:,} ...{cmd:)} 也会中止并报错。

{p 4 4 2}
所有函数都使用 {it:A} 的下三角元素，而不检查 {it:A} 是否对称，或者在复数情况下是否为厄米矩阵。


{marker source}{...}
{title:源代码}

{p 4 4 2}
{view cholsolve.mata, adopath asis:cholsolve.mata},
{view _cholsolve.mata, adopath asis:_cholsolve.mata}
{p_end}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <mf_cholsolve.sthlp>}