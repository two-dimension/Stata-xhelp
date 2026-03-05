{smcl}
{* *! version 1.0.0  06feb2017}{...}
{vieweralsosee undocumented "help undocumented"}{...}
{viewerjumpto "Syntax" "mf__factorsym_zh##syntax"}{...}
{viewerjumpto "Description" "mf__factorsym_zh##description"}{...}
{viewerjumpto "Remarks" "mf__factorsym_zh##remarks"}{...}
{viewerjumpto "Conformability" "mf__factorsym_zh##conformability"}{...}
{viewerjumpto "Diagnostics" "mf__factorsym_zh##diagnostics"}{...}
{viewerjumpto "Source code" "mf__factorsym_zh##source"}
{help mf__factorsym:English Version}
{hline}{...}
{title:标题}

{p 4 8 2}
{bf:[M-5] _factorsym()} {hline 2} 对称非负定矩阵进行分解


{marker syntax}{...}
{title:语法}

{p 8 12 2}
{it:实数标量}
{cmd:_factorsym(}{it:实数矩阵 A}[{cmd:,} {it:实数标量 tol}]{cmd:)}


{marker description}{...}
{title:描述}

{p 4 4 2}
{cmd:_factorsym(}{it:A}{cmd:)} 将对称非负定矩阵
{it:A} 分解为下三角矩阵，并用解覆盖 {it:A}。
返回的是 {it:A} 的秩。对于维度为 {it:n} 且秩为
{it:r} < {it:n} 的矩阵，得到的矩阵将有 {it:n} - {it:r} 行全为零。
可选参数 {it:tol} 是用来确定矩阵是否为非负定的容差。默认值为
{it:tol}{cmd: = }{cmd:sum(abs(diagonal(}{it:A}{cmd:)))*epsilon(16)}。


{marker remarks}{...}
{title:备注}

{p 4 4 2}
对称非负定矩阵 {it:A} 的分解 {it:G} 为 

		{it:A} = {it:G}{it:G}{bf:'}

{p 4 4 2}
其中 {it:G} 是下三角矩阵。

{p 4 4 2}
可以通过输入分解矩阵 {it:G} 来计算广义逆（G-逆），方法如下：

{p 8 8 2}
{cmd:: G = A}

{p 8 8 2}
{cmd:: rank = _factorsym(G)}

{p 8 8 2}
{cmd:: Ai = I(n)}

{p 8 8 2}
{cmd:: rank = _solvelower(G,Ai)}

{p 8 8 2}
{cmd:: Ai = Ai'Ai}

{p 8 8 2}
{cmd:: mreldif(A,A*Ai*A)}

{p 4 4 2}
您可以将此 G-逆 {cmd:Ai} 与通过
{help mf_invsym_zh:invsym()} 计算的进行比较。


{marker conformability}{...}
{title:符合性}

    {cmd:_factorsym(}{it:A}{cmd:)}
	 {it:输入:}
		{it:A}:  {it:n x n} 
	      {it:tol}:  {it:1 x 1}  （可选）
	{it:输出:}
		{it:A}:  {it:n x n} 
	   {it:结果}:  {it:1 x 1} 


{marker diagnostics}{...}
{title:诊断}

{p 4 4 2}
{cmd:_factorsym({it:A})} 使用矩阵
{it:A} 的下三角部分的元素，而不检查 {it:A} 是否对称。  


{marker source}{...}
{title:源代码}

{p 4 4 2}
{cmd:_factorsym()} 是内置函数。
{p_end}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <mf__factorsym.sthlp>}