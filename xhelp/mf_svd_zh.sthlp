{smcl}
{* *! version 1.1.6  15may2018}{...}
{vieweralsosee "[M-5] svd()" "mansection M-5 svd()"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[M-5] fullsvd()" "help mf_fullsvd_zh"}{...}
{vieweralsosee "[M-5] norm()" "help mf_norm_zh"}{...}
{vieweralsosee "[M-5] pinv()" "help mf_pinv_zh"}{...}
{vieweralsosee "[M-5] rank()" "help mf_rank_zh"}{...}
{vieweralsosee "[M-5] svsolve()" "help mf_svsolve_zh"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[M-4] Matrix" "help m4_matrix_zh"}{...}
{viewerjumpto "Syntax" "mf_svd_zh##syntax"}{...}
{viewerjumpto "Description" "mf_svd_zh##description"}{...}
{viewerjumpto "Links to PDF documentation" "mf_svd_zh##linkspdf"}{...}
{viewerjumpto "Remarks" "mf_svd_zh##remarks"}{...}
{viewerjumpto "Conformability" "mf_svd_zh##conformability"}{...}
{viewerjumpto "Diagnostics" "mf_svd_zh##diagnostics"}{...}
{viewerjumpto "Source code" "mf_svd_zh##source"}
{help mf_svd:English Version}
{hline}{...}
{p2colset 1 16 18 2}{...}
{p2col:{bf:[M-5] svd()} {hline 2}}奇异值分解
{p_end}
{p2col:}({mansection M-5 svd():查看完整的 PDF 手册条目}){p_end}
{p2colreset}{...}


{marker syntax}{...}
{title:语法}

{p 8 8 2}
{it:void}{bind:             }
{cmd:svd(}{it:数字矩阵 A}, {it:U}, {it:s}, {it:Vt}{cmd:)}

{p 8 8 2}
{it:实数列向量} {bind:  }
{cmd:svdsv(}{it:数字矩阵 A}{cmd:)}


{p 8 8 2}
{it:void}{bind:            }
{cmd:_svd(}{it:数字矩阵 A}, {it:s}, {it:Vt}{cmd:)}

{p 8 8 2}
{it:实数列向量}{bind:  }
{cmd:_svdsv(}{it:数字矩阵 A}{cmd:)}


{p 8 8 2}
{it:实数标量} {bind:    }
{cmd:_svd_la(}{it:数字矩阵 A}, {it:s}, {it:Vt}{cmd:)}


{marker description}{...}
{title:描述}

{p 4 4 2}
{cmd:svd(}{it:A}, {it:U}, {it:s}, {it:Vt}{cmd:)}
计算矩阵 {it:A}: {it:m x n}, 
{it:m}>={it:n} 的奇异值分解，
将结果返回到 {it:U}, {it:s}, 和 {it:Vt} 中。
返回的奇异值 {it:s} 按从大到小排序。

{p 4 4 2}
{cmd:svdsv(}{it:A}{cmd:)}
返回矩阵 {it:A}: {it:m x n}, {it:m}>={it:n} 或 
{it:m}<{it:n}（即，无限制）中的奇异值，
以长度为 min({it:m}{cmd:,}{it:n}) 的列向量形式给出。
{it:U} 和 {it:Vt} 不被计算。

{p 4 4 2}
{cmd:_svd(}{it:A}, {it:s}, {it:Vt}{cmd:)}
的功能与 {cmd:svd()} 相同，唯一的区别在于它将 {it:U} 返回到 {it:A} 中。
使用 {cmd:_svd()} 可以节省内存。

{p 4 4 2}
{cmd:_svdsv(}{it:A}{cmd:)}
的功能与 {cmd:svdsv()} 相同，但在此过程中会销毁 
{it:A}。使用 {cmd:_svdsv()} 可以节省内存。

{p 4 4 2}
{cmd:_svd_la()} 
是进入 
{bf:{help m1_lapack_zh:[M-1] LAPACK}} SVD 例程的接口， 
并用于上面函数的实现。您不需要直接使用它。


{marker linkspdf}{...}
{title:PDF 文档链接}

        {mansection M-5 svd()备注和示例:备注和示例}

{pstd}
上述部分不包含在此帮助文件中。


{marker remarks}{...}
{title:备注}

{p 4 4 2}
备注按以下标题呈现：

	{help mf_svd##remarks1:介绍}
	{help mf_svd##remarks2:收敛问题的可能性}

{p 4 4 2}
这里记录的是适用于 {it:A}: {it:m x n}, {it:m}>={it:n} 的薄 SVD。
有关适用于所有情况的完整 SVD，请参见 {bf:{help mf_fullsvd_zh:[M-5] fullsvd()}}。
这两者之间的关系在 
{it:{help mf_fullsvd##remarks2:薄 SVD 和完整 SVD 之间的关系}} 中讨论，在 
{bf:{help mf_fullsvd_zh:[M-5] fullsvd()}} 中可查阅。

{p 4 4 2}
当 {it:m}>={it:n} 时，建议使用薄 SVD -- 本文档记录的函数。

{marker remarks1}{...}
{title:介绍}

{p 4 4 2}
奇异值分解 (SVD) 用于计算线性系统和最小二乘问题的准确解，计算 2-范数，并确定矩阵的数值秩。

{p 4 4 2}
矩阵 {it:A}: {it:m x n}, {it:m}>={it:n} 的奇异值分解（SVD）公式为

		{it:A} = {it:U} * diag({it:s}) * {it:V}{cmd:'}

{p 4 4 2}
   其中 

		{it:U}:  {it:m x n}  且  {it:U}{bf:'}{it:U} = I({it:n})
   		{it:s}:  {it:n x} 1
		{it:V}:  {it:n x n}  且  正交（单位）

{p 4 4 2}
当 {it:A} 为复数时，转置运算符 {cmd:'} 被理解为
{help m6_glossary##transpose:共轭转置} 运算符。

{p 4 4 2}
向量 {it:s} 包含奇异值，即使 {it:A} 为复数时，这些值也是实数。
{it:s} 按照从大到小的顺序排列，首先是最大的奇异值，然后是下一个最大的，以此类推。

{p 4 4 2}
函数 {cmd:svd(}{it:A}{cmd:,} {it:U}{cmd:,} {it:s}{cmd:,} {it:Vt}{cmd:)}
返回 {it:U}, {it:s}, 和 {it:Vt}={it:V}{cmd:'}。

{p 4 4 2}
函数 {cmd:svdsv(}{it:A}{cmd:)} 返回 {it:s}， 
省略了 {it:U} 和 {it:Vt} 的计算。
此外，{cmd:svd()} 仅适用于 {it:m}>={it:n} 的情况，而 {cmd:svdsv()} 可以在所有情况下使用。


{marker remarks2}{...}
{title:收敛问题的可能性}

{p 4 4 2}
奇异值分解 (SVD) 例程可能会失败而不收敛，尽管这种情况极不可能。
{cmd:svd()}, {cmd:svdsv()}, {cmd:_svd()} 和 {cmd:_svdsv()} 会在 {it:s} 中返回缺失的奇异值。

{p 4 4 2}
在编码中，完全可以忽略这种可能性，因为 
(1) 它极不可能发生，并且 (2) 即使发生不太可能的事件，缺失值也会正确反映情况。如果您希望进行检查，除了检查 {cmd:missing(}{it:s}{cmd:)}>0 
（参见 {help mf_missing_zh:[M-5] missing()}）， 
您还必须检查 {cmd:missing(}{it:A}{cmd:)==0}  
因为这可能是 {it:s} 中包含缺失值的另一个原因。
如果 {cmd:missing(}{it:s}{cmd:)>0} {cmd:&}
{cmd:missing(}{it:A}{cmd:)==0}，则未达到收敛。
如果您调用其中一个毁坏 {it:A} 的 SVD 版本，请务必在提取奇异值之前检查 
{cmd:missing(}{it:A}{cmd:)==0}。


{marker conformability}{...}
{title:适应性}

    {cmd:svd(}{it:A}, {it:U}, {it:s}, {it:Vt}{cmd:):}
	{it:输入:}
		{it:A}:  {it:m x n}, {it:m}>={it:n}
       {it:输出:}
	        {it:U}:  {it:m x n}
	        {it:s}:  {it:n x} 1
	       {it:Vt}:  {it:n x n}
		 
    {cmd:svdsv(}{it:A}{cmd:)}:
		{it:A}:  {it:m x n}, {it:m}>={it:n} 或 {it:m}<{it:n}
	   {it:结果}:  min({it:m},{it:n}) {it:x} 1

    {cmd:_svd(}{it:A}, {it:s}, {it:Vt}{cmd:)}
	{it:输入:}
		{it:A}:  {it:m x n}, {it:m}>={it:n}
       {it:输出:}
	        {it:A}:  {it:m x n}, 包含 {it:U}
	        {it:s}:  {it:n x} 1
	       {it:Vt}:  {it:n x n}

    {cmd:_svdsv(}{it:A}{cmd:)}
	{it:输入:}
		{it:A}:  {it:m x n}, {it:m}>={it:n} 或 {it:m}<{it:n}
	{it:输出:}
		{it:A}:  0 {it:x} 0
	   {it:结果}:  min({it:m},{it:n}) {it:x} 1

    {cmd:_svd_la(}{it:A}, {it:s}, {it:Vt}{cmd:)}
	{it:输入:}
		{it:A}:  {it:m x n}, {it:m}>={it:n}
       {it:输出:}
	        {it:A}:  {it:m x n}, 包含 {it:U}
	        {it:s}:  {it:n x} 1
	       {it:Vt}:  {it:n x n}
	   {it:结果}:  1 {it:x} 1


{marker diagnostics}{...}
{title:诊断}

{p 4 4 2}
{cmd:svd(}{it:A}, {it:U}, {it:s}, {it:Vt}{cmd:)}
和 
{cmd:_svd(}{it:A}, {it:s}, {it:Vt}{cmd:)}
如果 {it:A} 包含缺失值，则返回缺失结果。
在所有其他情况下，例程应该正常工作，但收敛问题的不太可能性会导致缺失结果；参见 
{it:{help mf_svd##remarks2:收敛问题的可能性}} 上述部分。

{p 4 4 2}
{cmd:svdsv(}{it:A}{cmd:)} 
和 
{cmd:_svdsv(}{it:A}{cmd:)} 
如果 {it:A} 包含缺失值或存在收敛问题，则返回缺失结果。

{p 4 4 2}
如果 {it:A} 是视图，{cmd:_svd()} 和 {cmd:_svdsv()} 则会中止并返回错误。

{p 4 4 2}
不推荐直接使用 {cmd:_svd_la()}。


{marker source}{...}
{title:源代码}

{p 4 4 2}
{view svd.mata, adopath asis:svd.mata},
{view svdsv.mata, adopath asis:svdsv.mata},
{view _svd.mata, adopath asis:_svd.mata},
{view _svdsv.mata, adopath asis:_svdsv.mata};
{cmd:_svd_la()} 是内置函数。
{p_end}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <mf_svd.sthlp>}