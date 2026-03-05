{smcl}
{* *! version 1.1.6  15may2018}{...}
{vieweralsosee "[M-5] qrsolve()" "mansection M-5 qrsolve()"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[M-5] cholsolve()" "help mf_cholsolve_zh"}{...}
{vieweralsosee "[M-5] lusolve()" "help mf_lusolve_zh"}{...}
{vieweralsosee "[M-5] qrd()" "help mf_qrd_zh"}{...}
{vieweralsosee "[M-5] qrinv()" "help mf_qrinv_zh"}{...}
{vieweralsosee "[M-5] solvelower()" "help mf_solvelower_zh"}{...}
{vieweralsosee "[M-5] solve_tol()" "help mf_solve_tol_zh"}{...}
{vieweralsosee "[M-5] svsolve()" "help mf_svsolve_zh"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[M-4] Matrix" "help m4_matrix_zh"}{...}
{vieweralsosee "[M-4] Solvers" "help m4_solvers_zh"}{...}
{viewerjumpto "Syntax" "mf_qrsolve_zh##syntax"}{...}
{viewerjumpto "Description" "mf_qrsolve_zh##description"}{...}
{viewerjumpto "Links to PDF documentation" "mf_qrsolve_zh##linkspdf"}{...}
{viewerjumpto "Remarks" "mf_qrsolve_zh##remarks"}{...}
{viewerjumpto "Conformability" "mf_qrsolve_zh##conformability"}{...}
{viewerjumpto "Diagnostics" "mf_qrsolve_zh##diagnostics"}{...}
{viewerjumpto "Source code" "mf_qrsolve_zh##source"}
{help mf_qrsolve:English Version}
{hline}{...}
{p2colset 1 20 22 2}{...}
{p2col:{bf:[M-5] qrsolve()} {hline 2}}通过 QR 分解求解 AX=B 中的 X
{p_end}
{p2col:}({mansection M-5 qrsolve():查看完整的 PDF 手册条目}){p_end}
{p2colreset}{...}


{marker syntax}{...}
{title:语法}

{p 8 12 2}
{it:数值矩阵}
{cmd:qrsolve(}{it:A}{cmd:,}
{it:B}{cmd:)}

{p 8 12 2}
{it:数值矩阵}
{cmd:qrsolve(}{it:A}{cmd:,}
{it:B}{cmd:,} {it:rank}{cmd:)}

{p 8 12 2}
{it:数值矩阵}
{cmd:qrsolve(}{it:A}{cmd:,}
{it:B}{cmd:,} {it:rank}{cmd:,} {it:tol}{cmd:)}


{p 8 12 2}
{it:实标量}{bind:  }
{cmd:_qrsolve(}{it:A}{cmd:,}
{it:B}{cmd:)}

{p 8 12 2}
{it:实标量}{bind:  }
{cmd:_qrsolve(}{it:A}{cmd:,}
{it:B}{cmd:,} {it:tol}{cmd:)}


{p 4 8 2}
其中

{p 24 24 2}
		{it:A}:  {it:数值矩阵}

{p 24 24 2}
		{it:B}:  {it:数值矩阵}

{p 21 24 2}
	     {it:rank}:  无关；返回 {it:实标量}

{p 22 24 2}
	      {it:tol}:  {it:实标量}


{marker description}{...}
{title:描述}

{p 4 4 2}
{cmd:qrsolve(}{it:A}{cmd:,} {it:B}{cmd:,} ...{cmd:)} 
使用 QR 分解来求解 {it:A}{it:X}={it:B} 并返回 {it:X}。当 {it:A} 是奇异或非方形时，{cmd:qrsolve()} 计算一个最小二乘广义解。当指定 {it:rank} 时，{it:A} 的秩会被放在其中。

{p 4 4 2}
{cmd:_qrsolve(}{it:A}{cmd:,} {it:B}{cmd:,} ...{cmd:)} 
执行相同的操作，除了破坏 {it:A} 的内容并用解覆盖 {it:B}。返回的是 {it:A} 的秩。

{p 4 4 2}
在这两种情况下，{it:tol} 指定确定 {it:A} 是否满秩的容差。 {it:tol} 以标准方式解释 —— 如果指定的 {it:tol}>0，则作为默认值的乘数；如果指定的 {it:tol}<=0，则作为替代默认值的绝对量；详见 {bf:{help m1_tolerance_zh:[M-1] 容差}}。


{marker linkspdf}{...}
{title:链接到 PDF 文档}

        {mansection M-5 qrsolve()备注和示例:备注和示例}

{pstd}
上述部分不包含在此帮助文件中。


{marker remarks}{...}
{title:备注}

{p 4 4 2}
{cmd:qrsolve(}{it:A}{cmd:,} {it:B}{cmd:,} ...{cmd:)} 适用于方形且可能秩不足的矩阵 {it:A}，或当 {it:A} 行数多于列数时。当 {it:A} 是方形且满秩时，{cmd:qrsolve()} 返回与 {cmd:lusolve()} 相同的解（见 {bf:{help mf_lusolve_zh:[M-5] lusolve()}}），误差仅限于舍入误差。当 {it:A} 为奇异时，{cmd:qrsolve()} 返回广义（最小二乘）解。

{p 4 4 2}
备注在以下标题下呈现：

	{help mf_qrsolve##remarks1:推导}
	{help mf_qrsolve##remarks2:与求逆的关系}
	{help mf_qrsolve##remarks3:容差}


{marker remarks1}{...}
{title:推导}

{p 4 4 2}
我们希望解出 {it:X}

		{it:A}{it:X} = {it:B}{right:(1)    }

{p 4 4 2}
对 {it:A} 进行 QR 分解，使得我们有 {it:A} = {it:Q}{it:R}{it:P}{bf:'}。然后 (1) 可以重写为

		{it:QRP}{bf:'}{it:X} = {it:B}

{p 4 4 2}
在 (2) 中左乘 {it:Q}{bf:'} 并记住 {it:Q}{bf:'}{it:Q} = {it:Q}{it:Q}{bf:'} = {it:I}，我们有

		{it:RP}{bf:'}{it:X} = {it:Q}{bf:'}{it:B}{right:(2)    }

{p 4 4 2}
定义

		{it:Z} = {it:P}{bf:'}{it:X}{right:(3)    }

{p 4 4 2}
然后 (2) 可以重写为

		{it:RZ} = {it:Q}{bf:'}{it:B}{right:(4)    }

{p 4 4 2}
很容易解出 (4) 中的 {it:Z}，因为 {it:R} 是上三角矩阵。得到 {it:Z} 后，我们可以通过 (3) 得到 {it:X}，因为 {it:Z} = {it:P}{bf:'}{it:X}，由 {it:P} 左乘（并且如果我们记得 {it:P}{it:P}{bf:'}={it:I}），得出

		{it:X} = {it:P}{it:Z}

{p 4 4 2}
有关 QR 分解的更多信息，请参见 {bf:{help mf_qrd_zh:[M-5] qrd()}}。


{marker remarks2}{...}
{title:与求逆的关系}

{p 4 4 2}
有关一般讨论，请参见 {it:{help mf_lusolve##remarks2:与求逆的关系}} 位于 {bf:{help mf_lusolve_zh:[M-5] lusolve()}} 中。

{p 4 4 2}
有关基于 QR 分解的逆，请见 {bf:{help mf_qrinv_zh:[M-5] qrinv()}}。{cmd:qrinv(}{it:A}{cmd:)}等同于 {cmd:qrsolve(}{it:A}{cmd:,} {cmd:I(rows(}{it:A}{cmd:)))}, 尽管实际上不是以这种方式实现的。


{marker remarks3}{...}
{title:容差}

{p 4 4 2}
使用的默认容差是

		{it:eta} = 1e-13 * trace(abs({it:R}))/rows({it:R})

{p 4 4 2}
其中 {it:R} 是 QR 分解的上三角矩阵；见上面的 {it:推导}。当 {it:A} 的满秩程度低于满秩，假设为 {it:d} 自由度时，{it:R} 也是以 {it:d} 自由度秩不足，且 {it:R} 的底部 {it:d} 行基本为零。如果 {it:R} 的第 {it:i} 个对角元素小于或等于 {it:eta}，则 {it:Z} 的第 {it:i} 行被设为零。因此如果矩阵是奇异的，{cmd:qrsolve()} 提供了一个广义解。

{p 4 4 2}
如果您指定 {it:tol}>0，您指定的值将用于乘以 {it:eta}。您可以选择指定 {it:tol}<=0，然后使用您指定值的负数替代 {it:eta}; 见 {bf:{help m1_tolerance_zh:[M-1] 容差}}。


{marker conformability}{...}
{title:兼容性}

    {cmd:qrsolve(}{it:A}{cmd:,} {it:B}{cmd:,} {it:rank}{cmd:,} {it:tol}{cmd:)}:
	{it:输入:}
		{it:A}:  {it:m x n}, {it:m}>={it:n}
		{it:B}:  {it:m x k}
	      {it:tol}:  1 {it:x} 1    (可选)
	{it:输出:}
             {it:rank}:  1 {it:x} 1    (可选)
	   {it:结果}:  {it:n x k}

    {cmd:_qrsolve(}{it:A}{cmd:,} {it:B}{cmd:,} {it:tol}{cmd:)}:
	{it:输入:}
		{it:A}:  {it:m x n}, {it:m}>={it:n}
		{it:B}:  {it:m x k}
	      {it:tol}:  1 {it:x} 1    (可选)
	{it:输出:}
		{it:A}:  0 {it:x} 0
		{it:B}:  {it:n x k}
	   {it:结果}:  1 {it:x} 1


{marker diagnostics}{...}
{title:诊断}

{p 4 4 2}
{cmd:qrsolve(}{it:A}{cmd:,} {it:B}{cmd:,} ...{cmd:)} 
和
{cmd:_qrsolve(}{it:A}{cmd:,} {it:B}{cmd:,} ...{cmd:)} 
返回一个结果，如果 {it:A} 或 {it:B} 含有缺失值，则结果将包含缺失。

{p 4 4 2}
如果 {it:A} 或 {it:B} 是视图，{cmd:_qrsolve(}{it:A}{cmd:,} {it:B}{cmd:,} ...{cmd:)} 将中止并抛出错误。


{marker source}{...}
{title:源代码}

{p 4 4 2}
{view qrsolve.mata, adopath asis:qrsolve.mata},
{view _qrsolve.mata, adopath asis:_qrsolve.mata}
{p_end}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <mf_qrsolve.sthlp>}