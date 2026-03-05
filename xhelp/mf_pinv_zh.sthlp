{smcl}
{* *! version 1.1.5  15may2018}{...}
{vieweralsosee "[M-5] pinv()" "mansection M-5 pinv()"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[M-5] cholinv()" "help mf_cholinv_zh"}{...}
{vieweralsosee "[M-5] fullsvd()" "help mf_fullsvd_zh"}{...}
{vieweralsosee "[M-5] invsym()" "help mf_invsym_zh"}{...}
{vieweralsosee "[M-5] luinv()" "help mf_luinv_zh"}{...}
{vieweralsosee "[M-5] qrinv()" "help mf_qrinv_zh"}{...}
{vieweralsosee "[M-5] svd()" "help mf_svd_zh"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[M-4] Matrix" "help m4_matrix_zh"}{...}
{vieweralsosee "[M-4] Solvers" "help m4_solvers_zh"}{...}
{viewerjumpto "语法" "mf_pinv_zh##syntax"}{...}
{viewerjumpto "描述" "mf_pinv_zh##description"}{...}
{viewerjumpto "PDF 文档链接" "mf_pinv_zh##linkspdf"}{...}
{viewerjumpto "备注" "mf_pinv_zh##remarks"}{...}
{viewerjumpto "相容性" "mf_pinv_zh##conformability"}{...}
{viewerjumpto "诊断" "mf_pinv_zh##diagnostics"}{...}
{viewerjumpto "源代码" "mf_pinv_zh##source"}
{help mf_pinv:English Version}
{hline}{...}
{p2colset 1 17 19 2}{...}
{p2col:{bf:[M-5] pinv()} {hline 2}}摩尔-彭罗斯伪逆
{p_end}
{p2col:}({mansection M-5 pinv():查看完整的 PDF 手册条目}){p_end}
{p2colreset}{...}


{marker syntax}{...}
{title:语法}

{p 8 12 2}
{it:数值矩阵}
{cmd:pinv(}{it:数值矩阵 A}{cmd:)}

{p 8 12 2}
{it:数值矩阵}
{cmd:pinv(}{it:数值矩阵 A}{cmd:,}
{it:秩}{cmd:)}

{p 8 12 2}
{it:数值矩阵}
{cmd:pinv(}{it:数值矩阵 A}{cmd:,}
{it:秩}{cmd:,}
{it:实标量 tol}{cmd:)}


{p 8 12 2}
{it:实标量}{bind:  }
{cmd:_pinv(}{it:数值矩阵 A}{cmd:)}

{p 8 12 2}
{it:实标量}{bind:  }
{cmd:_pinv(}{it:数值矩阵 A}{cmd:,}
{it:实标量 tol}{cmd:)}


{p 4 4 2}
其中 {it:秩} 的类型无关紧要；返回 {it:A} 的秩。
{p 4 4 2}
要获取具有不同归一化的对称矩阵的广义逆，请参见
{bf:{help mf_invsym_zh:[M-5] invsym()}}。


{marker description}{...}
{title:描述}

{p 4 4 2}
{cmd:pinv(}{it:A}{cmd:)}
返回实数或复数、对称或非对称、方形或非方形矩阵 {it:A} 的唯一摩尔-彭罗斯伪逆。

{p 4 4 2}
{cmd:pinv(}{it:A}{cmd:,} {it:秩}{cmd:)}
做相同的事情，并且在 {it:秩} 中返回 {it:A} 的秩。

{p 4 4 2}
{cmd:pinv(}{it:A}{cmd:,} {it:秩}{cmd:,} {it:tol}{cmd:)} 
做相同的事情，并允许您指定用于确定 {it:A} 的秩的容限，该容限也用于伪逆的计算。
有关可选参数 {it:tol} 的信息，请参见 
{bf:{help mf_svsolve_zh:[M-5] svsolve()}}
和 
{bf:{help m1_tolerance_zh:[M-1] 容差}}。

{p 4 4 2}
{cmd:_pinv(}{it:A}{cmd:)}
和 
{cmd:_pinv(}{it:A}{cmd:,} {it:tol}{cmd:)}
做与 {cmd:pinv()} 相同的事情，只不过 {it:A} 被替换为
其逆并返回秩。


{marker linkspdf}{...}
{title:PDF 文档链接}

        {mansection M-5 pinv()备注和示例:备注和示例}

{pstd}
上述部分未包含在此帮助文件中。


{marker remarks}{...}
{title:备注}

{p 4 4 2}
摩尔-彭罗斯伪逆也称为摩尔-彭罗斯逆和广义逆。无论您称之为何，伪逆
{it:A*} 满足四个条件，

		{it:A}({it:A*}){it:A}    =  {it:A} 

		({it:A*}){it:A}({it:A*}) =  {it:A*}

		({it:A}({it:A*}))'  =  {it:A}({it:A*})

		(({it:A*}){it:A})'  =  ({it:A*}){it:A}

{p 4 4 2}
其中转置算子 {bf:'} 被理解为共轭转置，当 {it:A} 为复数时。并且，如果 {it:A} 为满秩，则

		      {it:A*}  =   {it:A}^(-1)

{p 4 4 2}
{cmd:pinv(}{it:A}{cmd:)} 在逻辑上等同于 
{cmd:svsolve(}{it:A}{cmd:,} {cmd:I(rows(}{it:A}{cmd:)))};
有关详细信息以及可选参数 {it:tol} 的使用，请参见 {bf:{help mf_svsolve_zh:[M-5] svsolve()}}。


{marker conformability}{...}
{title:相容性}

    {cmd:pinv(}{it:A}{cmd:,} {it:秩}{cmd:,} {it:tol}{cmd:)}:
	{it:输入}:
		{it:A}:  {it:r x c}
	      {it:tol}:  1 {it:x} 1    (可选)
	{it:输出}:
	     {it:秩}:  1 {it:x} 1    (可选)
	   {it:结果}:  {it:c x r}

    {cmd:_pinv(}{it:A}{cmd:,} {it:tol}{cmd:)}:
	{it:输入}:
		{it:A}:  {it:r x c}
	      {it:tol}:  1 {it:x} 1    (可选)
	{it:输出}:
		{it:A}:  {it:c x r}
	   {it:结果}:  1 {it:x} 1    (包含秩)


{marker diagnostics}{...}
{title:诊断}

{p 4 4 2}
这些函数返回的逆矩阵在 {it:A} 为实数时为实数，在 {it:A} 为复数时为复数。

{p 4 4 2}
{cmd:pinv(}{it:A}{cmd:,} {it:秩}{cmd:,} {it:tol}{cmd:)}
和 
{cmd:_pinv(}{it:A}{cmd:,} {it:tol}{cmd:)}
如果 {it:A} 包含缺失值则返回缺失结果。

{p 4 4 2}
{cmd:pinv()} 和 {cmd:_pinv()} 也会返回缺失值，如果计算 SVD 的算法
{bf:{help mf_svd_zh:[M-5] svd()}}
未能收敛。这是一个近乎零概率事件。
在这里，{it:秩} 也会返回为缺失。

{p 4 4 2}
有关可选参数 {it:tol} 的信息，请参见 
{bf:{help mf_svsolve_zh:[M-5] svsolve()}}
和 
{bf:{help m1_tolerance_zh:[M-1] 容差}}。


{marker source}{...}
{title:源代码}

{p 4 4 2}
{view pinv.mata, adopath asis:pinv.mata},
{view _pinv.mata, adopath asis:_pinv.mata},
{view rank_from_singular_values.mata, adopath asis:rank_from_singular_values.mata}
{p_end}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <mf_pinv.sthlp>}