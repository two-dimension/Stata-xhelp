{smcl}
{* *! version 1.1.4  15may2018}{...}
{vieweralsosee "[M-5] matexpsym()" "mansection M-5 matexpsym()"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[M-5] eigensystem()" "help mf_eigensystem_zh"}{...}
{vieweralsosee "[M-5] matpowersym()" "help mf_matpowersym_zh"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[M-4] Matrix" "help m4_matrix_zh"}{...}
{viewerjumpto "Syntax" "mf_matexpsym_zh##syntax"}{...}
{viewerjumpto "Description" "mf_matexpsym_zh##description"}{...}
{viewerjumpto "Links to PDF documentation" "mf_matexpsym_zh##linkspdf"}{...}
{viewerjumpto "Remarks" "mf_matexpsym_zh##remarks"}{...}
{viewerjumpto "Conformability" "mf_matexpsym_zh##conformability"}{...}
{viewerjumpto "Diagnostics" "mf_matexpsym_zh##diagnostics"}{...}
{viewerjumpto "Source code" "mf_matexpsym_zh##source"}
{help mf_matexpsym:English Version}
{hline}{...}
{p2colset 1 22 24 2}{...}
{p2col:{bf:[M-5] matexpsym()} {hline 2}}对称矩阵的指数和对数
{p_end}
{p2col:}({mansection M-5 matexpsym():查看完整的 PDF 手册条目}){p_end}
{p2colreset}{...}


{marker syntax}{...}
{title:语法}

{p 8 12 2}
{it:数值矩阵}
{cmd:matexpsym(}{it:数值矩阵 A}{cmd:)}

{p 8 12 2}
{it:数值矩阵}
{cmd:matlogsym(}{it:数值矩阵 A}{cmd:)}


{p 8 12 2}
{it:无返回值}{bind:         }
{cmd:_matexpsym(}{it:数值矩阵 A}{cmd:)}

{p 8 12 2}
{it:无返回值}{bind:         }
{cmd:_matlogsym(}{it:数值矩阵 A}{cmd:)}


{marker description}{...}
{title:描述}

{p 4 4 2}
{cmd:matexpsym(}{it:A}{cmd:)} 返回对称（厄米）矩阵 {it:A} 的矩阵指数。

{p 4 4 2}
{cmd:matlogsym(}{it:A}{cmd:)} 返回对称（厄米）矩阵 {it:A} 的矩阵自然对数。

{p 4 4 2}
{cmd:_matexpsym(}{it:A}{cmd:)} 和 {cmd:_matlogsym(}{it:A}{cmd:)} 执行与 {cmd:matexpsym()} 和 {cmd:matlogsym()} 相同的操作，但不是返回结果，而是将结果存储在 {it:A} 中。


{marker linkspdf}{...}
{title:PDF 文档链接}

        {mansection M-5 matexpsym()备注和示例:备注和示例}

{pstd}
上述部分没有包含在此帮助文件中。


{marker remarks}{...}
{title:备注}

{p 4 4 2}
不要将 {cmd:matexpsym(}{it:A}{cmd:)} 与 {help mf_exp_zh:exp({it:A})} 混淆，
也不要将 {cmd:matlogsym(}{it:A}{cmd:)} 与 {helpb mf_log:log({it:A})} 混淆。 
{cmd:matexpsym(2*matlogsym(}{it:A}{cmd:))} 的结果与 {it:A}{cmd:*}{it:A} 相同。
{cmd:exp()} 和 {cmd:log()} 返回的是元素级结果。

{p 4 4 2}
通过提取 {it:A} 的特征值和特征向量获得指数和对数结果，对特征值进行操作，然后重建矩阵。也就是说，首先找到 {it:X} 和 {it:L}，使得

			{it:A}{it:X} = {it:X}*diag({it:L}){right:(1)   }

{p 4 4 2}
对于对称（厄米）矩阵 {it:A}，{it:X} 是正交的，这意味着 {it:X}'{it:X} = {it:X}{it:X}' = {it:I}。因此

			{it:A} = {it:X}*diag({it:L})*{it:X}'{right:(2)   }

{p 4 4 2}
然后定义 {cmd:matexpsym(}{it:A}{cmd:)} 为

			{it:A} = {it:X}*diag(exp({it:L}))*{it:X}'{right:(3)   }

{p 4 4 2}
而 {cmd:matlogsym(}{it:A}{cmd:)} 的定义为 

			{it:A} = {it:X}*diag(log({it:L}))*{it:X}'{right:(4)   }

{p 4 4 2}
(1) 是通过 {cmd:symeigensystem()} 获得的；请参见 {bf:{help mf_eigensystem_zh:[M-5] eigensystem()}}。


{marker conformability}{...}
{title:相容性}

    {cmd:matexpsym(}{it:A}{cmd:)}, {cmd:matlogsym(}{it:A}{cmd:)}:
		{it:A}:  {it:n x n}
	   {it:result}:  {it:n x n}

    {cmd:_matexpsym(}{it:A}{cmd:)}, {cmd:_matlogsym(}{it:A}{cmd:)}:
	{it:输入:}
		{it:A}:  {it:n x n}
	{it:输出:}
		{it:A}:  {it:n x n}


{marker diagnostics}{...}
{title:诊断}

{p 4 4 2}
{cmd:matexpsym(}{it:A}{cmd:)},
{cmd:matlogsym(}{it:A}{cmd:)},
{cmd:_matexpsym(}{it:A}{cmd:)},
和
{cmd:_matlogsym(}{it:A}{cmd:)}
如果 {it:A} 包含缺失值，则返回缺失结果。

{p 4 4 2}
此外：

{p 8 12 2}
1.
这些函数不会检查 {it:A} 是否是对称或厄米。如果 {it:A} 是实矩阵，仅使用下三角，包括对角线。如果 {it:A} 是复矩阵，仅使用下三角和对角线元素的实部。

{p 8 12 2}
2.  
这些函数返回与 {it:A} 相同存储类型的矩阵。  

{p 12 12 2}
对于 {cmd:matlogsym(}{it:A}{cmd:)}, 这意味着如果 {it:A} 是实数且结果无法表示为实数，则返回缺失值矩阵。如果您想要广义解，请编码 {cmd:matlogsym(C(}{it:A}{cmd:))}。这与标量的规则相同：
{cmd:log(}-1{cmd:)} 评估为缺失，但 {cmd:log(C(}-1{cmd:))} 为 3.14159265i。

{p 8 12 2}
3.  
这些函数保证返回的矩阵在数值上是对称的、厄米的，或 {help m6_glossary##symmetriconly:对称的}，如果理论表明矩阵应当是对称的、厄米的或对称的。请参见 {bf:{help mf_matpowersym_zh:[M-5] matpowersym()}} 讨论该问题。  

{p 12 12 2}
对于这里的函数，实函数 {cmd:exp(}{it:x}{cmd:)} 对所有实值 x（忽略溢出）定义，因此 {cmd:matexpsym()} 返回的矩阵将是对称（厄米）。

{p 12 12 2}
{cmd:matlogsym()} 不适用。{cmd:log(}{it:x}{cmd:)} 在 {it:x}=0 时未定义，因此如果 {it:A} 的特征值为 0 或非常小，则结果将是缺失值矩阵。
此外，{cmd:log(}{it:x}{cmd:)} 对于 {it:x}<0 是复数，因此如果任何特征值为负，则结果矩阵将是 (1) 如果 {it:A} 为实数且存储为实数，则为缺失，(2) 如果 {it:A} 包含以复数存储的实数，则为对称，(3) 如果 {it:A} 为复数，则为广义。


{marker source}{...}
{title:源代码}

{p 4 4 2}
{view matexpsym.mata, adopath asis:matexpsym.mata},
{view matlogsym.mata, adopath asis:matlogsym.mata},
{view _matexpsym.mata, adopath asis:_matexpsym.mata},
{view _matlogsym.mata, adopath asis:_matlogsym.mata},
{view _symmatfunc_work.mata, adopath asis:_symmatfunc_work.mata}
{p_end}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <mf_matexpsym.sthlp>}