{smcl}
{* *! version 1.1.6  25sep2018}{...}
{vieweralsosee "[M-5] cholinv()" "mansection M-5 cholinv()"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[M-5] invsym()" "help mf_invsym_zh"}{...}
{vieweralsosee "[M-5] luinv()" "help mf_luinv_zh"}{...}
{vieweralsosee "[M-5] pinv()" "help mf_pinv_zh"}{...}
{vieweralsosee "[M-5] qrinv()" "help mf_qrinv_zh"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[M-5] cholsolve()" "help mf_cholsolve_zh"}{...}
{vieweralsosee "[M-5] solv_tol()" "help mf_solve_tol_zh"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[M-4] Matrix" "help m4_matrix_zh"}{...}
{vieweralsosee "[M-4] Solvers" "help m4_solvers_zh"}{...}
{viewerjumpto "Syntax" "mf_cholinv_zh##syntax"}{...}
{viewerjumpto "Description" "mf_cholinv_zh##description"}{...}
{viewerjumpto "Links to PDF documentation" "mf_cholinv_zh##linkspdf"}{...}
{viewerjumpto "Remarks" "mf_cholinv_zh##remarks"}{...}
{viewerjumpto "Conformability" "mf_cholinv_zh##conformability"}{...}
{viewerjumpto "Diagnostics" "mf_cholinv_zh##diagnostics"}{...}
{viewerjumpto "Source code" "mf_cholinv_zh##source"}
{help mf_cholinv:English Version}
{hline}{...}
{p2colset 1 20 22 2}{...}
{p2col:{bf:[M-5] cholinv()} {hline 2}}对称正定矩阵求逆
{p_end}
{p2col:}({mansection M-5 cholinv():查看完整的PDF手册条目}){p_end}
{p2colreset}{...}


{marker syntax}{...}
{title:语法}

{p 8 12 2}
{it:数值 矩阵}
{cmd:cholinv(}{it:数值} {it:矩阵} {it:A}{cmd:)}

{p 8 12 2}
{it:数值 矩阵}
{cmd:cholinv(}{it:数值} {it:矩阵} {it:A}{cmd:,}
{it:实数 标量 tol}{cmd:)}


{p 8 12 2}
{it:空}{bind:         }
{cmd:_cholinv(}{it:数值} {it:矩阵} {it:A}{cmd:)}

{p 8 12 2}
{it:空}{bind:         }
{cmd:_cholinv(}{it:数值} {it:矩阵} {it:A}{cmd:,}
{it:实数 标量 tol}{cmd:)}


{marker description}{...}
{title:描述}

{p 4 4 2}
{cmd:cholinv(}{it:A}{cmd:)} 
和 
{cmd:cholinv(}{it:A}{cmd:,} {it:tol}{cmd:)}
返回实数或复数的对称（{help m6_glossary##hermitianmtx:厄米矩阵}），
正定的方阵 {it:A} 的逆。

{p 4 4 2}
{cmd:_cholinv(}{it:A}{cmd:)} 
和
{cmd:_cholinv(}{it:A}{cmd:,} {it:tol}{cmd:)}
执行相同的操作，但并不返回逆矩阵，而是用逆替换原矩阵 {it:A}。

{p 4 4 2}
在所有情况下，可选参数 {it:tol} 指定确定奇异性的容差；请参阅下方的 {it:备注}。


{marker linkspdf}{...}
{title:PDF文档链接}

        {mansection M-5 cholinv()备注及示例:备注和示例}

{pstd}
上述章节未包含在此帮助文件中。


{marker remarks}{...}
{title:备注}

{p 4 4 2}
这些函数计算对称正定方阵 {it:A} 的逆。有关一般方阵的逆，请参见 {bf:{help mf_luinv_zh:[M-5] luinv()}}。

{p 4 4 2}
{it:A} 必须为方阵且正定。
请参阅 
{bf:{help mf_qrinv_zh:[M-5] qrinv()}}
和
{bf:{help mf_pinv_zh:[M-5] pinv()}}，用于非方阵或秩不足矩阵的广义逆。
有关实数对称矩阵的广义逆，请参阅 {bf:{help mf_invsym_zh:[M-5] invsym()}}。

{p 4 4 2}
{cmd:cholinv(}{it:A}{cmd:)} 在逻辑上等同于 
{cmd:cholsolve(}{it:A}{cmd:, I(rows(}{it:A}{cmd:)))};
有关详细信息和可选参数 {it:tol} 的使用，请参见 {bf:{help mf_cholsolve_zh:[M-5] cholsolve()}}。


{marker conformability}{...}
{title:兼容性}

    {cmd:cholinv(}{it:A}{cmd:,} {it:tol}{cmd:)}:
		{it:A}:  {it:n x n}
	      {it:tol}:  1 {it:x} 1    （可选）
	   {it:result}:  {it:n x n}
		
    {cmd:_cholinv(}{it:A}{cmd:,} {it:tol}{cmd:)}:
	{it:输入:}
		{it:A}:  {it:n x n}
	      {it:tol}:  1 {it:x} 1    （可选）
	{it:输出:}
		{it:A}:  {it:n x n}


{marker diagnostics}{...}
{title:诊断}

{p 4 4 2}
这些函数返回的逆矩阵如果 {it:A} 是实数，则为实数，如果 {it:A} 是复数，则为复数。
如果使用这些函数时矩阵为非正定，或矩阵太接近奇异，那么返回的将是一个缺失值矩阵。
奇异性的判断是相对于 {it:tol} 进行的。详细信息请参见 {it:{help mf_cholsolve##remarks3:容差}} 下的 {it:备注} 在 {bf:{help mf_cholsolve_zh:[M-5] cholsolve()}} 中。

{p 4 4 2}
如果 {it:A} 不是正定或如果 {it:A} 包含缺失值，{cmd:cholinv(}{it:A}{cmd:)} 和 {cmd:_cholinv(}{it:A}{cmd:)} 返回的结果将包含所有缺失值。

{p 4 4 2}
如果 {it:A} 是一个视图，则 {cmd:_cholinv(}{it:A}{cmd:)} 会中止并报错。

{p 4 4 2}
有关可选参数 {it:tol} 的信息，请参见
{bf:{help mf_cholsolve_zh:[M-5] cholsolve()}}
和
{bf:{help m1_tolerance_zh:[M-1] 容差}}。

{p 4 4 2}
这两个函数都使用 {it:A} 的下三角元素而不检查 {it:A} 是否对称，或者在复数情况下是否为厄米矩阵。


{marker source}{...}
{title:源代码}

{p 4 4 2}
{view cholinv.mata, adopath asis:cholinv.mata},
{view _cholinv.mata, adopath asis:_cholinv.mata}
{p_end}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <mf_cholinv.sthlp>}