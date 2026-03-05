{smcl}
{* *! version 1.1.8  15may2018}{...}
{vieweralsosee "[M-5] invsym()" "mansection M-5 invsym()"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[M-5] cholinv()" "help mf_cholinv_zh"}{...}
{vieweralsosee "[M-5] diag0cnt()" "help mf_diag0cnt_zh"}{...}
{vieweralsosee "[M-5] luinv()" "help mf_luinv_zh"}{...}
{vieweralsosee "[M-5] pinv()" "help mf_pinv_zh"}{...}
{vieweralsosee "[M-5] qrinv()" "help mf_qrinv_zh"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[M-4] Matrix" "help m4_matrix_zh"}{...}
{vieweralsosee "[M-4] Solvers" "help m4_solvers_zh"}{...}
{viewerjumpto "语法" "mf_invsym_zh##syntax"}{...}
{viewerjumpto "描述" "mf_invsym_zh##description"}{...}
{viewerjumpto "PDF 文档链接" "mf_invsym_zh##linkspdf"}{...}
{viewerjumpto "备注" "mf_invsym_zh##remarks"}{...}
{viewerjumpto "符合性" "mf_invsym_zh##conformability"}{...}
{viewerjumpto "诊断" "mf_invsym_zh##diagnostics"}{...}
{viewerjumpto "源代码" "mf_invsym_zh##source"}
{help mf_invsym:English Version}
{hline}{...}
{p2colset 1 19 21 2}{...}
{p2col:{bf:[M-5] invsym()} {hline 2}}对称实矩阵求逆
{p_end}
{p2col:}({mansection M-5 invsym():查看完整的PDF手册条目}){p_end}
{p2colreset}{...}


{marker syntax}{...}
{title:语法}

{col 9}{it:实矩阵} {cmd:invsym(}{it:实矩阵 A}{cmd:)}

{col 9}{...}
{it:实矩阵} {cmd:invsym(}{...}
{it:实矩阵 A}{...}
{cmd:,} {...}
{it:实向量 order}{...}
{cmd:)}


{col 9}{it:无效}       {cmd:_invsym(}{it:实矩阵 A}{cmd:)}

{col 9}{it:无效}       {cmd:_invsym(}{...}
{it:实矩阵 A}{...}
{cmd:,} {...}
{it:实向量 order}{...}
{cmd:)}


{marker description}{...}
{title:描述}

{p 4 4 2}
{cmd:invsym(}{it:A}{cmd:)} 返回实对称正半定矩阵 {it:A} 的广义逆。

{p 4 4 2}
{cmd:invsym(}{it:A}{cmd:,} {it:order}{cmd:)} 功能相同，但允许您指定要优先清除的列。

{p 4 4 2}
{cmd:_invsym(}{it:A}{cmd:)} 
和
{cmd:_invsym(}{it:A}{cmd:,} {it:order}{cmd:)} 
与 
{cmd:invsym(}{it:A}{cmd:)} 
和
{cmd:invsym(}{it:A}{cmd:,} {it:order}{cmd:)} 
的功能相同，只是 {it:A} 将被广义逆结果替换，而不是返回结果。
{cmd:_invsym()} 用更少的内存。

{p 4 4 2}
{cmd:invsym()} 和 {cmd:_invsym()} 是 Stata 用于计算对称矩阵逆的例程。

{p 4 4 2}
另见 
{bf:{help mf_luinv_zh:[M-5] luinv()}}, 
{bf:{help mf_qrinv_zh:[M-5] qrinv()}}, 
以及
{bf:{help mf_pinv_zh:[M-5] pinv()}}
以获取一般矩阵求逆的信息。


{marker linkspdf}{...}
{title:PDF 文档链接}

        {mansection M-5 invsym()备注和示例:备注和示例}

{pstd}
上述部分未包含在此帮助文件中。


{marker remarks}{...}
{title:备注}

{p 4 4 2}
备注如下列出：

	{help mf_invsym##remarks1:广义逆的定义}
	{help mf_invsym##remarks2:指定清除列的顺序}
	{help mf_invsym##remarks3:确定秩或计数清除列的数量}
	{help mf_invsym##remarks4:提取线性依赖性}


{marker remarks1}{...}
{title:广义逆的定义}

{p 4 4 2}
当矩阵满秩且正半定时，矩阵 {it:A} 变为正定，广义逆等于逆，即假设 {it:A} 为 {it:n x n},

		{cmd:invsym(}{it:A}{cmd:)*}{it:A} {cmd:=} {it:A}*{cmd:invsym(}{it:A}{cmd:) = I(}{it:n}{cmd:)}

{p 4 4 2}
或者，上述限制在取整误差下是正确的。当 {it:A} 不是满秩时，广义逆 {cmd:invsym()} 满足（忽略取整误差）

	                {it:A}{cmd:*invsym(}{it:A}{cmd:)*}{it:A} {cmd:=} {it:A}

	        {cmd:invsym(}{it:A}{cmd:)*}{it:A}{cmd:*invsym(}{it:A}{cmd:) = invsym(}{it:A}{cmd:)}

{p 4 4 2}
在广义情况下，有无限多的逆矩阵可以满足上述限制。{cmd:invsym()} 选择的逆矩阵是将整个列（因此行）设为 0，从而将 {it:A} 视为降维。选择清除哪些列（行）是基于最小化取整误差的基础。

{p 4 4 2}
在上述讨论中，似乎确定矩阵是否为满秩是一个简单的计算。其实并非如此。由于在制造和记录 {it:A} 本身时出现的取整误差，本应完美共线的列将不再共线，但您仍希望 {cmd:invsym()} 行为像它们是共线的那样。{cmd:invsym()} 在判断是否完美共线时允许少量偏离。


{marker remarks2}{...}
{title:指定清除列的顺序}

{p 4 4 2}
若让 {cmd:invsym()} 自行决定，它将选择清除哪些列（设为 0）以最小化广义逆计算的整体取整误差。如果列 1 和列 3 共线，则 {cmd:invsym()} 将选择清除列 1 或列 3。

{p 4 4 2}
然而，有时您希望确保特定列或列集不会被清除。也许列 1 对应于回归模型的截距，如果必须清除列 1 和列 3 中的一列，您更希望清除列 3。

{p 4 4 2}
Order 允许您指定您希望在广义逆计算中不被清除的矩阵列。在以上示例中，为了防止列 1 被清除，您可以编写 

	{cmd:invsym(}{it:A}{cmd:, 1)}

{p 4 4 2}
如果您希望保留列 1、5 和 10 不被清除，您可以编写 

	{cmd:invsym(}{it:A}{cmd:, (1,5,10))}

{p 4 4 2}
指定不被清除的列并不保证它们不会被清除，因为它们可能彼此共线或等于常数。然而，如果有任何其他列可以被清除以满足您的需要，它们将被清除。


{marker remarks3}{...}
{title:确定秩或计数清除列的数量}

{p 4 4 2}
如果一道列被清除，相应的对角元素将显示为 0。因此，原始矩阵的秩可以在反演后通过 {cmd:invsym()} 提取：

	: {cmd:Ainv = invsym(A)}
	: {cmd:rank = rows(Ainv)-diag0cnt(Ainv)}

{p 4 4 2}
见 {bf:{help mf_diag0cnt_zh:[M-5] diag0cnt()}}.


{marker remarks4}{...}
{title:提取线性依赖性}

{p 4 4 2}
线性依赖性可以从
{it:A}{cmd:*}{cmd:invsym(}{it:A}{cmd:)} 的行中读取：

	: {cmd:A*invsym(A)}
	{res}       {txt}           1              2              3
	    {c TLC}{hline 46}{c TRC}
	  1 {c |}  {res}           0             -1              1{txt}  {c |}
	  2 {c |}  {res}           0              1   -2.22045e-16{txt}  {c |}
	  3 {c |}  {res}           0              0              1{txt}  {c |}
	    {c BLC}{hline 46}{c BRC}

{p 4 4 2}
上述意味着

		{it:x1} = -{it:x2} + {it:x3}
		{it:x2} = {it:x2} 
		{it:x3} = {it:x3}

{p 4 4 2}
忽略取整误差。


{marker conformability}{...}
{title:符合性}

{p 4 4 2}
{cmd:invsym(}{it:A}{cmd:)}, 
{cmd:invsym(}{it:A}{cmd:,} {it:order}{cmd:)}:
{p_end}
		{it:A}:  {it:n x n}
	    {it:order}:  1 x {it:k}  或  {it:k} x 1, {it:k} <= {it:n}    （可选）
	   {it:result}:  {it:n} x {it:n}

{p 4 4 2}
{cmd:_invsym(}{it:A}{cmd:)}, 
{cmd:_invsym(}{it:A}{cmd:,} {it:order}{cmd:)}:
{p_end}
		{it:A}:  {it:n x n}
	    {it:order}:  1 x {it:k}  或  {it:k} x 1, {it:k} <= {it:n}    （可选）
	 {it:output}:
		{it:A}:  {it:n x n}


{marker diagnostics}{...}
{title:诊断}

{p 4 4 2}
{cmd:invsym(}{it:A}{cmd:)}, 
{cmd:invsym(}{it:A}{cmd:,} {it:order}{cmd:)}, 
{cmd:_invsym(}{it:A}{cmd:)}, 和 
{cmd:_invsym(}{it:A}{cmd:,} {it:order}{cmd:)}
假设
{it:A} 是对称的；它们不检查。
如果 {it:A} 不是对称的，它们将其视为对称并等于其上三角。

{p 4 4 2}
{cmd:invsym()} 和 {cmd:_invsym()}
如果 {it:A} 包含缺失值，则返回结果中包含缺失值。  

{p 4 4 2}
如果 {it:A} 是视图，{cmd:_invsym()} 将中止并返回错误。
如果指定 {it:order} 并包含小于 1、大于 {cmd:rows(}{it:A}{cmd:)} 或相同值多次的值，两个函数将中止并返回参数范围错误。

{p 4 4 2}
如果 {it:A} 不是正半定的，{cmd:invsym()} 和 {cmd:_invsym()} 将返回零矩阵。


{marker source}{...}
{title:源代码}

{p 4 4 2}
函数是内置的。
{p_end}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <mf_invsym.sthlp>}