{smcl}
{* *! version 1.1.5  15may2018}{...}
{vieweralsosee "[M-5] matpowersym()" "mansection M-5 matpowersym()"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[M-5] eigensystem()" "help mf_eigensystem_zh"}{...}
{vieweralsosee "[M-5] matexpsym()" "help mf_matexpsym_zh"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[M-4] Matrix" "help m4_matrix_zh"}{...}
{viewerjumpto "语法" "mf_matpowersym_zh##syntax"}{...}
{viewerjumpto "描述" "mf_matpowersym_zh##description"}{...}
{viewerjumpto "PDF文档链接" "mf_matpowersym_zh##linkspdf"}{...}
{viewerjumpto "备注" "mf_matpowersym_zh##remarks"}{...}
{viewerjumpto "相容性" "mf_matpowersym_zh##conformability"}{...}
{viewerjumpto "诊断" "mf_matpowersym_zh##diagnostics"}{...}
{viewerjumpto "源代码" "mf_matpowersym_zh##source"}
{help mf_matpowersym:English Version}
{hline}{...}
{p2colset 1 24 26 2}{...}
{p2col:{bf:[M-5] matpowersym()} {hline 2}}对称矩阵的幂
{p_end}
{p2col:}({mansection M-5 matpowersym():查看完整的PDF手册条目}){p_end}
{p2colreset}{...}


{marker syntax}{...}
{title:语法}

{p 8 35 2}
{it:数值矩阵}
{cmd:matpowersym(}{it:数值矩阵 A}{cmd:,}
{it:实数标量 p}{cmd:)}

{p 8 35 2}
{it:无返回值}{bind:         }
{cmd:_matpowersym(}{it:数值矩阵 A}{cmd:,}
{it:实数标量 p}{cmd:)}


{marker description}{...}
{title:描述}

{p 4 4 2}
{cmd:matpowersym(}{it:A}{cmd:,} {it:p}{cmd:)} 
返回对称矩阵或厄米矩阵 {it:A} 的 {it:A^p}。
若 {it:A} 为实数，则返回的矩阵为实数；若 {it:A} 为复数，则返回的矩阵为复数。

{p 4 4 2}
{cmd:_matpowersym(}{it:A}{cmd:,} {it:p}{cmd:)} 
实现相同功能，但不返回结果，而是将结果存储在 {it:A} 中。


{marker linkspdf}{...}
{title:PDF文档链接}

        {mansection M-5 matpowersym()备注和示例:备注和示例}

{pstd}
以上部分未包含在此帮助文件中。


{marker remarks}{...}
{title:备注}

{p 4 4 2}
不要将 
{cmd:matpowersym(}{it:A}{cmd:,} {it:p}{cmd:)} 
与 
{it:A}{cmd::^}{it:p} 混淆。如果 {it:p}==2，前者返回 {it:A}{cmd:*}{it:A}，而后者返回每个元素平方后的 {it:A}。

{p 4 4 2}
幂可以是正数、负数、整数或非整数。因此
{cmd:matpowersym(}{it:A}{cmd:, .5)} 是找到平方根矩阵 {it:R} 的方法，使得 {it:R}{cmd:*}{it:R}=={it:A}，而
{cmd:matpowersym(}{it:A}{cmd:, -1)} 是找到逆矩阵的方法。
对于求逆，您可以使用其他例程更快速地获得结果。

{p 4 4 2}
幂是通过提取 {it:A} 的特征向量和特征值，提升特征值到指定的幂，然后重建矩阵来获得的。也就是说，首先找到 {it:X} 和 {it:L}，使得 

			{it:A}{it:X} = {it:X}*diag({it:L}){right:(1)   }

{p 4 4 2}
对于对称（厄米）矩阵 {it:A}，{it:X} 是正交的，意味着 
{it:X}'{it:X} = {it:X}{it:X}' = {it:I}。因此，

			{it:A} = {it:X}*diag({it:L})*{it:X}'{right:(2)   }

{p 4 4 2}
{it:A}^{it:p} 定义为 

			{it:A} = {it:X}*diag({it:L}:^{it:p})*{it:X}'{right:(3)   }

{p 4 4 2}
(1) 是通过 {cmd:symeigensystem()} 获得的；请参见 
{bf:{help mf_eigensystem_zh:[M-5] eigensystem()}}。


{marker conformability}{...}
{title:相容性}

    {cmd:matpowersym(}{it:A}{cmd:,} {it:p}{cmd:)}:
		{it:A}:  {it:n x n}
		{it:p}:  1 {it:x} 1
	   {it:result}:  {it:n x n}

    {cmd:_matpowersym(}{it:A}{cmd:,} {it:p}{cmd:)}:
	{it:输入:}
		{it:A}:  {it:n x n}
		{it:p}:  1 {it:x} 1
	{it:输出:}
		{it:A}:  {it:n x n}

		
{marker diagnostics}{...}
{title:诊断}

{p 4 4 2}
{cmd:matpowersym(}{it:A}{cmd:,} {it:p}{cmd:)}
和 
{cmd:_matpowersym(}{it:A}{cmd:,} {it:p}{cmd:)}
如果 {it:A} 包含缺失值将返回缺失结果。

{p 4 4 2}
另外：

{p 8 12 2}
1.
这些函数并不检查 {it:A} 是否为对称或厄米矩阵。如果 {it:A}
是实数矩阵，则仅使用下三角，包括对角线。如果 {it:A} 是复数矩阵，则仅使用下三角和对角元素的实部。

{p 8 12 2}
2.  
这些函数返回与 {it:A} 相同存储类型的矩阵。
这意味着，如果 {it:A} 为实数而且 {it:A}^{it:p} 不能被表示为实数，则返回缺失值矩阵。如果您想要广义解，可以编写 {cmd:matpowersym(C(}{it:A}{cmd:),} {it:p}{cmd:)}。
这与标量的规则相同：  (-1){cmd:^}.5 是缺失值，但 
{cmd:C(}-1{cmd:)^}.5 是 1i。

{p 8 12 2}
3.  
这些函数保证返回的矩阵在数值上是对称的、厄米的，或
{help m6_glossary##symmetriconly:仅对称的}，前提是理论说明该矩阵应当是对称的、厄米的或仅对称的。

{p 12 12 2}
关于理论，返回的结果不一定是对称（厄米）的。对称（厄米）矩阵的特征值 {it:L} 是实数。如果 {it:L}{cmd::^}{it:p} 是实数，则返回的矩阵将是对称（厄米）的，否则则不会。想象一下负特征值和 {it:p}=.5：这会导致 {it:A}^{it:p} 的特征值为复数。如果原矩阵是实数（特征向量是实数），则结果矩阵将是仅对称的。如果原矩阵是复数（特征向量是复数），则结果矩阵将没有特殊结构。


{marker source}{...}
{title:源代码}

{p 4 4 2}
{view matpowersym.mata, adopath asis:matpowersym.mata},
{view _matpowersym.mata, adopath asis:_matpowersym.mata},
{view _symmatfunc_work.mata, adopath asis:_symmatfunc_work.mata}
{p_end}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <mf_matpowersym.sthlp>}