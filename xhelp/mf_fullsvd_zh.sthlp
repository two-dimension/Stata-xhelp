{smcl}
{* *! version 1.1.6  15may2018}{...}
{vieweralsosee "[M-5] fullsvd()" "mansection M-5 fullsvd()"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[M-5] norm()" "help mf_norm_zh"}{...}
{vieweralsosee "[M-5] pinv()" "help mf_pinv_zh"}{...}
{vieweralsosee "[M-5] rank()" "help mf_rank_zh"}{...}
{vieweralsosee "[M-5] svd()" "help mf_svd_zh"}{...}
{vieweralsosee "[M-5] svsolve()" "help mf_svsolve_zh"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[M-4] 矩阵" "help m4_matrix_zh"}{...}
{viewerjumpto "语法" "mf_fullsvd_zh##syntax"}{...}
{viewerjumpto "描述" "mf_fullsvd_zh##description"}{...}
{viewerjumpto "PDF 文档链接" "mf_fullsvd_zh##linkspdf"}{...}
{viewerjumpto "备注" "mf_fullsvd_zh##remarks"}{...}
{viewerjumpto "符合性" "mf_fullsvd_zh##conformability"}{...}
{viewerjumpto "诊断" "mf_fullsvd_zh##diagnostics"}{...}
{viewerjumpto "源代码" "mf_fullsvd_zh##source"}
{help mf_fullsvd:English Version}
{hline}{...}
{p2colset 1 20 22 2}{...}
{p2col:{bf:[M-5] fullsvd()} {hline 2}}完整奇异值分解
{p_end}
{p2col:}({mansection M-5 fullsvd():查看完整的 PDF 手册条目}){p_end}
{p2colreset}{...}


{marker syntax}{...}
{title:语法}

{p 8 8 2}
{it:void}{bind:             }
{cmd:fullsvd(}{it:数字矩阵 A}{cmd:,} {it:U}{cmd:,} {it:s}{cmd:,} {it:Vt}{cmd:)}

{p 8 8 2}
{it:数字矩阵} {bind:  }
{cmd:fullsdiag(}{it:数字列向量 s}{cmd:,} {it:实标量 k}{cmd:)}


{p 8 8 2}
{it:void}{bind:            }
{cmd:_fullsvd(}{it:数字矩阵 A}{cmd:,} {it:U}{cmd:,} {it:s}{cmd:,} {it:Vt}{cmd:)}


{p 8 8 2}
{it:实标量} {bind:    }
{cmd:_svd_la(}{it:数字矩阵 A}{cmd:,} {it:U}{cmd:,} {it:s}{cmd:,} {it:Vt}{cmd:)}


{marker description}{...}
{title:描述}

{p 4 4 2}
{cmd:fullsvd(}{it:A}, {it:U}, {it:s}, {it:Vt}{cmd:)}
计算 {it:m x n} 矩阵 {it:A} 的奇异值分解，将结果返回在 {it:U}、{it:s} 和 {it:Vt} 中。
{it:s} 中的奇异值按从大到小排序。

{p 4 4 2}
{cmd:fullsdiag(}{it:s, k}{cmd:)} 
将由 {cmd:fullsvd()} 返回的列向量 {it:s} 转换为矩阵 {it:S}。在所有情况下，此函数的适当调用为

		{it:S} = {cmd:fullsdiag(}{it:s}{cmd:,} {cmd:rows(}{it:A}{cmd:)-cols(}{it:A}{cmd:))}

{p 4 4 2}
{cmd:_fullsvd(}{it:A}, {it:U}, {it:s}, {it:Vt}{cmd:)}
的功能与 {cmd:fullsvd()} 相同，只是在此过程中会破坏 {it:A}。使用 {cmd:_fullsvd()} 代替 {cmd:fullsvd()} 可以节省内存。

{p 4 4 2}
{cmd:_svd_la()} 
是调用 
{bf:{help m1_lapack_zh:[M-1] LAPACK}} SVD 例程的接口，并用于实现前面的函数。没有理由你需要使用它。
{cmd:_svd_la()}
与 {cmd:_fullsvd()} 类似。不同之处在于，如果数值例程未能收敛，它返回等于 1 的实标量；否则返回 0。在这种不太可能的情况下，之前的 SVD 例程将 {it:s} 设置为包含缺失值。


{marker linkspdf}{...}
{title:PDF 文档链接}

        {mansection M-5 fullsvd()备注和示例:备注和示例}

{pstd}
上述部分未包含在此帮助文件中。


{marker remarks}{...}
{title:备注}

{p 4 4 2}
备注在以下标题下提供：

	{help mf_fullsvd##remarks1:介绍}
	{help mf_fullsvd##remarks2:完整和瘦子 SVD 之间的关系}
	{help mf_fullsvd##remarks3:s 的内容}
	{help mf_fullsvd##remarks4:收敛问题的可能性}

{p 4 4 2}
此处记录的是完整 SVD，适用于所有情况，但主要在 {it:A}: {it:m x n}, {it:m}<{it:n} 时有兴趣。
在 {it:m}>={it:n} 时，有一个节省内存的瘦子 SVD；请参见 {bf:{help mf_svd_zh:[M-5] svd()}}。 两者之间的关系在下面的 
{it:{help mf_fullsvd##remarks2:完整和瘦子 SVD 之间的关系}} 中讨论。


{marker remarks1}{...}
{title:介绍}

{p 4 4 2}
SVD 用于计算线性系统和最小二乘问题的精确解，计算 2-范数，并确定矩阵的数值秩。

{p 4 4 2}
矩阵 {it:A}: {it:m x n} 的奇异值分解 (SVD) 表达式为

		{it:A} = {it:U} * {it:S} * {it:V}{cmd:'}

{p 4 4 2}
   其中 

		{it:U}:  {it:m x m}  且正交 (单位)
   		{it:S}:  {it:m x n}  且对角
		{it:V}:  {it:n x n}  且正交 (单位)

{p 4 4 2}
当 {it:A} 为复数时，转置运算符 {cmd:'} 理解为共轭转置运算符。

{p 4 4 2}
对角矩阵 {it:S} 包含奇异值，即使 {it:A} 为复数时这些奇异值也是实数。通常（但不是强制的）{it:S} 按从大到小排列奇异值。此处记录的 SVD 例程执行此操作。

{p 4 4 2}
完整 SVD
例程返回 {it:U} 和 {it:Vt}={it:V}{cmd:'}。{it:S} 作为列向量 {it:s} 返回，并且可以通过 

		{it:S} = {cmd:fullsdiag(}{it:s}{cmd:,} {cmd:rows(}{it:A}{cmd:)-cols(}{it:A}{cmd:))}

{p 4 4 2}
获取 SVD 表达为

		{it:A} = {it:U} * {cmd:fullsdiag(}{it:s}{cmd:,} {cmd:rows(}{it:A}{cmd:)-cols(}{it:A}{cmd:))} * {it:Vt}

{p 4 4 2}
函数 {cmd:fullsvd(}{it:A}{cmd:,} {it:U}{cmd:,} {it:s}{cmd:,} {it:Vt}{cmd:)}
返回与 {it:A} 对应的 {it:U}、{it:s} 和 {it:Vt}。


{marker remarks2}{...}
{title:完整和瘦子 SVD 之间的关系}

{p 4 4 2}
SVD 的一个流行变体被称为瘦子 SVD，适用于 {it:m} >= {it:n} 的情况。 两种 SVD 有相同的公式，

		{it:A} = {it:U} * {it:S} * {it:V}{cmd:'}

{p 4 4 2}
但在瘦子版本中，{it:U} 和 {it:S} 的维度被减少：

                矩阵   完整 SVD      瘦子 SVD
		{hline 31}
		{it:U}:        {it:m x m}         {it:m x n}
   		{it:S}:        {it:m x n}         {it:n x n}
		{it:V}:        {it:n x n}         {it:n x n}
		{hline 31}

{p 4 4 2}
当 {it:m} = {it:n} 时，两者是相同的。

{p 4 4 2}
瘦子 SVD 在 {it:m}>{it:n} 时有用，因为在这种情况下，只有 {it:S} 的前 {it:n} 对角元素非零，因此只有 {it:U} 的前 {it:n} 列在 
{bind:{it:A} = {it:U}{it:S}{it:V}{cmd:'}} 中相关。
计算瘦子 SVD 时，当 {it:m} >> {it:n} 时可以节省大量内存。

{p 4 4 2}
因此，许多人称瘦子 SVD 为 SVD，而忽略完整 SVD。如果你处理的矩阵具有 {it:m} >= {it:n}，你也会想要这样做。
要获取瘦子 SVD，请参见 
{bf:{help mf_svd_zh:[M-5] svd()}}。

{p 4 4 2}
无论矩阵的维度如何，你可能希望仅获取奇异值。在这种情况下，请参见 {cmd:svdsv()}，在 
{bf:{help mf_svd_zh:[M-5] svd()}} 中记录。该函数在所有情况下均适用。


{marker remarks3}{...}
{title:s 的内容}

{p 4 4 2}
给定 {it:A}: {it:m x n}，奇异值在 {it:s} 中返回：min({it:m},{it:n}} {it:x} 1。

{p 4 4 2}
首先考虑 {it:m} = {it:n} 的情况。{it:A} 为 {it:m x m}，并且 {it:m} 积分值返回在 {it:s} 中，这是一个 {it:m} {it:x} 1 列向量。如果 {it:A} 是 3 {it:x} 3，也许我们会得到 

	: {cmd:s}
	{res}       {txt}    1
	    {c TLC}{hline 9}{c TRC}
	  1 {c |}  {res}13.47{txt}  {c |}
	  2 {c |}  {res}  5.8{txt}  {c |}
	  3 {c |}  {res} 2.63{txt}  {c |}
	    {c BLC}{hline 9}{c BRC}

{p 4 4 2}
如果需要，我们可以从 {it:s} 中简单地通过创建一个对角矩阵来获得 {it:S}

	: {it:S} {cmd:= diag(}{it:s}{cmd:)}
	: {it:S}
	{res}       {txt}    1       2       3
	    {c TLC}{hline 25}{c TRC}
	  1 {c |}  {res}13.47       0       0{txt}  {c |}
	  2 {c |}  {res}    0     5.8       0{txt}  {c |}
	  3 {c |}  {res}    0       0    2.63{txt}  {c |}
	    {c BLC}{hline 25}{c BRC}

{p 4 4 2}
尽管我们应该遵循的官方方式是 

	: {it:S} {cmd:= fullsdiag(}{it:s}{cmd:, rows(}{it:A}{cmd:)-cols(}{it:A}{cmd:))}

{p 4 4 2}
这将返回相同的结果。

{p 4 4 2}
现在考虑 {it:m} < {it:n} 的情况。假设 {it:A} 是 3 {it:x} 4。
奇异值将在 3 {it:x} 1 向量 {it:s} 中返回。
例如，{it:s} 可能仍包含

	: {cmd:s}
	{res}       {txt}    1
	    {c TLC}{hline 9}{c TRC}
	  1 {c |}  {res}13.47{txt}  {c |}
	  2 {c |}  {res}  5.8{txt}  {c |}
	  3 {c |}  {res} 2.63{txt}  {c |}
	    {c BLC}{hline 9}{c BRC}

{p 4 4 2}
在这里，{it:S} 矩阵需要是 3 {it:x} 4，并且 
{cmd:fullsdiag()} 将形成它：

	: {cmd:fullsdiag(s, rows(A)-cols(A))}
	{res}       {txt}    1       2       3       4
	    {c TLC}{hline 33}{c TRC}
	  1 {c |}  {res}13.47       0       0       0{txt}  {c |}
	  2 {c |}  {res}    0     5.8       0       0{txt}  {c |}
	  3 {c |}  {res}    0       0    2.63       0{txt}  {c |}
	    {c BLC}{hline 33}{c BRC}

{p 4 4 2}
最后一种情况是 {it:m} > {it:n}。假设 {it:A} 是 4 {it:x} 3。
我们得到的 {it:s} 向量看起来一样

	: {cmd:s}
	{res}       {txt}    1
	    {c TLC}{hline 9}{c TRC}
	  1 {c |}  {res}13.47{txt}  {c |}
	  2 {c |}  {res}  5.8{txt}  {c |}
	  3 {c |}  {res} 2.63{txt}  {c |}
	    {c BLC}{hline 9}{c BRC}

{p 4 4 2}
但这次，我们需要一个 4 {it:x} 3 的矩阵，而不是一个 3 {it:x} 4 的矩阵。

	: {cmd:fullsdiag(s, rows(A)-cols(A))}
	{res}       {txt}    1       2       3
	    {c TLC}{hline 25}{c TRC}
	  1 {c |}  {res}13.47       0       0{txt}  {c |}
	  2 {c |}  {res}    0     5.8       0{txt}  {c |}
	  3 {c |}  {res}    0       0    2.63{txt}  {c |}
	  4 {c |}  {res}    0       0       0{txt}  {c |}
	    {c BLC}{hline 25}{c BRC}


{marker remarks4}{...}
{title:收敛问题的可能性}

{p 4 4 2}
请参见 
{it:{help mf_svd##remarks2:收敛问题的可能性}} 
在 
{bf:{help mf_svd_zh:[M-5] svd()}} 中；那里所述的内容同样适用此处。


{marker conformability}{...}
{title:符合性}

    {cmd:fullsvd(}{it:A}, {it:U}, {it:s}, {it:Vt}{cmd:)}:
	{it:输入:}
		{it:A}:  {it:m x n}
       {it:输出:}
	        {it:U}:  {it:m x m}
	        {it:s}:  min({it:m},{it:n}) {it:x} 1
	       {it:Vt}:  {it:n x n}
	   {it:结果}:  {it:void}
		 
    {cmd:fullsdiag(}{it:s, k}{cmd:)}:
	{it:输入:}
		{it:s}:  {it:r x} 1
		{it:k}:  1 {it:x} 1
	   {it:结果}:  {it:r}+{it:k} {it:x r}, 如果 k>=0
		    {it:r x} {it:r}-{it:k}, 否则

    {cmd:_fullsvd(}{it:A}, {it:U}, {it:s}, {it:Vt}{cmd:)}:
	{it:输入:}
		{it:A}:  {it:m x n}
       {it:输出:}
		{it:A}:  0 {it:x} 0
	        {it:U}:  {it:m x m}
	        {it:s}:  min({it:m},{it:n}) {it:x} 1
	       {it:Vt}:  {it:n x n}
	   {it:结果}:  {it:void}

    {cmd:_svd_la(}{it:A}, {it:U}, {it:s}, {it:Vt}{cmd:)}:
	{it:输入:}
		{it:A}:  {it:m x n}
       {it:输出:}
		{it:A}:  {it:m x n}，但内容会改变
	        {it:U}:  {it:m x m}
	        {it:s}:  min({it:m},{it:n}) {it:x} 1
	       {it:Vt}:  {it:n x n}
	   {it:结果}:  1 {it:x} 1


{marker diagnostics}{...}
{title:诊断}

{p 4 4 2}
{cmd:fullsvd(}{it:A}, {it:U}, {it:s}, {it:Vt}{cmd:)}
和 
{cmd:_fullsvd(}{it:A}, {it:s}, {it:Vt}{cmd:)}
如果 {it:A} 包含缺失值，则返回缺失结果。
在所有其他情况下，例程应正常工作，但有不太可能的收敛问题。在这种情况下，缺失结果也将返回；有关详细信息，请参见 
{it:{help mf_svd##remarks2:收敛问题的可能性}} 
在 {bf:{help mf_svd_zh:[M-5] svd()}} 中。

{p 4 4 2}
如果 {it:A} 是视图，则 {cmd:_fullsvd()} 会中止并报错。

{p 4 4 2}
不建议直接使用 {cmd:_svd_la()}。


{marker source}{...}
{title:源代码}

{p 4 4 2}
{view fullsvd.mata, adopath asis:fullsvd.mata},
{view fullsdiag.mata, adopath asis:fullsdiag.mata},
{view _fullsvd.mata, adopath asis:_fullsvd.mata},
{cmd:_svd_la()} 是内置函数。
{p_end}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <mf_fullsvd.sthlp>}