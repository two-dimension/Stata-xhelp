{smcl}
{* *! version 1.1.9  15may2018}{...}
{vieweralsosee "[M-5] lusolve()" "mansection M-5 lusolve()"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[M-5] cholsolve()" "help mf_cholsolve_zh"}{...}
{vieweralsosee "[M-5] lud()" "help mf_lud_zh"}{...}
{vieweralsosee "[M-5] luinv()" "help mf_luinv_zh"}{...}
{vieweralsosee "[M-5] qrsolve()" "help mf_qrsolve_zh"}{...}
{vieweralsosee "[M-5] solvelower()" "help mf_solvelower_zh"}{...}
{vieweralsosee "[M-5] svsolve()" "help mf_svsolve_zh"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[M-4] Matrix" "help m4_matrix_zh"}{...}
{vieweralsosee "[M-4] Solvers" "help m4_solvers_zh"}{...}
{viewerjumpto "语法" "mf_lusolve_zh##syntax"}{...}
{viewerjumpto "描述" "mf_lusolve_zh##description"}{...}
{viewerjumpto "PDF文档链接" "mf_lusolve_zh##linkspdf"}{...}
{viewerjumpto "备注" "mf_lusolve_zh##remarks"}{...}
{viewerjumpto "相符性" "mf_lusolve_zh##conformability"}{...}
{viewerjumpto "诊断" "mf_lusolve_zh##diagnostics"}{...}
{viewerjumpto "源代码" "mf_lusolve_zh##source"}
{help mf_lusolve:English Version}
{hline}{...}
{p2colset 1 20 22 2}{...}
{p2col:{bf:[M-5] lusolve()} {hline 2}}使用LU分解解AX=B以求X
{p_end}
{p2col:}({mansection M-5 lusolve():查看完整PDF手册条目}){p_end}
{p2colreset}{...}


{marker syntax}{...}
{title:语法}

{p 8 12 2}
{it:数值矩阵}
{cmd:lusolve(}{it:数值矩阵 A}{cmd:,}
{it:数值矩阵 B}{cmd:)}

{p 8 27 2}
{it:数值矩阵}
{cmd:lusolve(}{it:数值矩阵 A}{cmd:,}
{it:数值矩阵 B}{cmd:,} {it:实数标量 tol}{cmd:)}


{p 8 12 2}
{it:void}{bind:         }
{cmd:_lusolve(}{it:数值矩阵 A}{cmd:,}
{it:数值矩阵 B}{cmd:)}

{p 8 27 2}
{it:void}{bind:         }
{cmd:_lusolve(}{it:数值矩阵 A}{cmd:,}
{it:数值矩阵 B}{cmd:,} {it:实数标量 tol}{cmd:)}


{p 8 12 2}
{it:实数标量}{bind:  }
{cmd:_lusolve_la(}{it:数值矩阵 A}{cmd:,}
{it:数值矩阵 B}{cmd:)}

{p 8 27 2}
{it:实数标量}{bind:  }
{cmd:_lusolve_la(}{it:数值矩阵 A}{cmd:,}
{it:数值矩阵 B}{cmd:,} {it:实数标量 tol}{cmd:)}



{marker description}{...}
{title:描述}

{p 4 4 2}
{cmd:lusolve(}{it:A}{cmd:,} {it:B}{cmd:)} 
解 {it:A}{it:X}={it:B} 并返回 {it:X}。如果 {it:A} 是奇异的，{cmd:lusolve()} 将返回一个缺失值矩阵。

{p 4 4 2}
{cmd:lusolve(}{it:A}{cmd:,} {it:B}{cmd:,} {it:tol}{cmd:)}
做相同的事情，但允许您指定声明 {it:A} 为奇异的容忍度；请参见
{it:{help mf_lusolve##remarks3:容忍度}}
下的 {it:备注}。

{p 4 4 2}
{cmd:_lusolve(}{it:A}{cmd:,} {it:B}{cmd:)} 
和 
{cmd:_lusolve(}{it:A}{cmd:,} {it:B}{cmd:,} {it:tol}{cmd:)}
做相同的事情，除了不返回解 {it:X}，它们将 {it:B} 覆盖为解，并在计算过程中破坏 {it:A} 的内容。

{p 4 4 2}
{cmd:_lusolve_la(}{it:A}{cmd:,} {it:B}{cmd:)}
和 
{cmd:_lusolve_la(}{it:A}{cmd:,} {it:B}{cmd:,} {it:tol}{cmd:)} 
是与 {bf:{help m1_lapack_zh:[M-1] LAPACK}} 例程进行工作的接口。它们解 {it:A}{it:X}=B 找到 {it:X}，并将解返回到 {it:B}，在此过程中使用并覆盖 {it:A}。该例程在 {it:A} 为奇异的时候返回1，其他情况下返回0。如果 {it:A} 为奇异，{it:B} 将被覆盖为缺失值矩阵。


{marker linkspdf}{...}
{title:PDF文档链接}

        {mansection M-5 lusolve()备注和示例:备注和示例}

{pstd}
上述部分未包含在此帮助文件中。


{marker remarks}{...}
{title:备注}

{p 4 4 2}
上述函数通过LU分解来解 {it:AX}={it:B} 并且精确。另一个选择是 {cmd:qrsolve()}（见
{bf:{help mf_qrsolve_zh:[M-5] qrsolve()}}），它使用QR分解。两种解之间的差异在实践中并不是精度。当 {it:A} 为满秩时，两种例程返回等效结果，且LU方法更快，操作次数大约为 {it:O}(2/3{it:n}^3)，而不是 {it:O}(4/3{it:n}^3)，其中 {it:A} 是 {it:n} {it:x} {it:n}。

{p 4 4 2}
当 {it:A} 为奇异时，差异便会出现。然后此处文档的基于LU的例程返回缺失值。基于QR的例程文档在 {bf:{help mf_qrsolve_zh:[M-5] qrsolve()}} 返回一个广义（最小二乘）解。

{p 4 4 2}
有关LU和QR分解的更多信息，请参见 
{bf:{help mf_lud_zh:[M-5] lud()}}
和 
{bf:{help mf_qrd_zh:[M-5] qrd()}}。

{p 4 4 2}
备注如以下标题所示：

	{help mf_lusolve##remarks1:推导}
	{help mf_lusolve##remarks2:与反演的关系}
	{help mf_lusolve##remarks3:容忍度}


{marker remarks1}{...}
{title:推导}

{p 4 4 2}
我们希望解 {it:X}

		{it:A}{it:X} = {it:B}{right:(1)    }

{p 4 4 2}
对 {it:A} 执行LU分解，以便我们有 {it:A} =
{it:P}{it:L}{it:U}。那么（1）可以写成

		{it:P}{it:L}{it:U}{it:X} = {it:B}

{p 4 4 2}
或者，左侧乘以 {it:P}{bf:'} 并记住 {it:P}{bf:'}{it:P}={it:I}，

		{it:L}{it:U}{it:X} = P'{it:B}{right:(2)    }

{p 4 4 2}
定义 

		{it:Z} = {it:U}{it:X}{right:(3)    }

{p 4 4 2}
然后（2）可以重写为

		{it:L}{it:Z} = {it:P}{bf:'}{it:B}{right:(4)    }

{p 4 4 2}
解（4）对于 {it:Z} 很容易，因为 {it:L} 是下三角矩阵。一旦知道 {it:Z}，解（3）对于 {it:X} 也很简单，因为 {it:U} 是上三角的。


{marker remarks2}{...}
{title:与反演的关系}

{p 4 4 2}
解

		{it:AX} = {it:B}

{p 4 4 2}
的另一种方法是获取 {it:A}^(-1) 然后计算

		{it:X} = {it:A}^(-1){it:B}

{p 4 4 2}
然而，更好的方法是直接求解 {it:AX}={it:B}，因为所需的数值操作更少，因此结果更加准确，并且计算所需时间更短。

{p 4 4 2}
实际上，与其考虑如何通过反演实施方程组的求解，不如考虑如何通过求解方程组来实现反演。获取 {it:A}^(-1) 相当于求解

		{it:A}{it:X} = {it:I}

{p 4 4 2}
因此 {cmd:lusolve()}（或任何其他求解例程）可用于获取逆。通过编码 

		: {cmd:Ainv = lusolve(}{it:A}{cmd:, I(rows(}{it:A}{cmd:)))}

{p 4 4 2}
事实上，我们提供了 {cmd:luinv()}（见 {bf:{help mf_luinv_zh:[M-5] luinv()}}）用于通过LU分解获取逆，但 {cmd:luinv()} 实际上是上述计算，尽管节省了一些内存，因为矩阵 {it:I} 从未构建。

{p 4 4 2}
因此，关于 {cmd:lusolve()} 的所有内容同样适用于 {cmd:luinv()}。


{marker remarks3}{...}
{title:容忍度}

{p 4 4 2}
使用的默认容忍度是 

		{it:eta} = (1e-13)*trace(abs({it:U}))/{it:n}

{p 4 4 2}
其中 {it:U} 是LU分解中 {it:A} 的上三角矩阵： {it:n} {it:x} {it:n}。如果 {it:A} 的任何对角元素小于或等于 {it:eta}，则声明 {it:A} 为奇异。

{p 4 4 2}
如果您指定 {it:tol}>0，则指定的值将用于乘以 {it:eta}。您也可以指定 {it:tol}<=0，此时指定值的负值将替代 {it:eta}；请参见 
{bf:{help m1_tolerance_zh:[M-1] 容忍度}}。

{p 4 4 2}
那么为什么不指定 {it:tol}=0？  
您不想这样做，因为当矩阵接近奇异时，结果可能变得不准确。以下是一个示例：

	: {cmd:rseed(12345)}

	: {cmd:A = lowertriangle(runiform(4,4))}

	: {cmd:A[3,3] = 1e-15}

	: {cmd:trux = runiform(4,1)}

	: {cmd:b = A*trux}

	: {cmd:/*} {it:以上创建了一个Ax=b问题，我们已将真实}
	:    {it:值放置在trux中。我们现在通过lusolve()}
	:    {it:获得解并比较trux与获得的值：}
	: {cmd:*/}

	: {cmd:x = lusolve(A, b, 0)}

	: {cmd:trux, x}
	{res}       {txt}          1             2
	    {c TLC}{hline 29}{c TRC}
	  1 {c |}  {res} .260768733    .260768733{txt}  {c |}{...}
   <- {it:讨论的数值}
	  2 {c |}  {res}.0267289389   .0267289389{txt}  {c |}{...}
      {it:不稳定性可能导致这个}
	  3 {c |}  {res}.1079423963   .0989119749{txt}  {c |}{...}
      {it:输出略有差异}
	  4 {c |}  {res}.3666839808   .3863636364{txt}  {c |}{...}
      {it:在不同计算机上}
	    {c BLC}{hline 29}{c BRC}

{p 4 4 2}
我们希望看到第二列与第一列几乎相等——估计的 {it:x} 几乎等于真实的 {it:x}——但存在明显差异。

{p 4 4 2}
即使 {cmd:x} 和 {cmd:trux} 之间的差异显著，但它们之间的差异在预测空间中是微小的：

	: {cmd:A*trux-b, A*x-b}
	{res}       {txt}1  2
	    {c TLC}{hline 9}{c TRC}
	  1 {c |}  {res}0   0{txt}  {c |}
	  2 {c |}  {res}0   0{txt}  {c |}
	  3 {c |}  {res}0   0{txt}  {c |}
	  4 {c |}  {res}0   0{txt}  {c |}
	    {c BLC}{hline 9}{c BRC}

{p 4 4 2}
使这个问题如此困难的是那一行 {cmd:A[3,3] = 1e-15}。移除它后，您会发现 {cmd:x} 和 {cmd:trux} 之间的最大绝对差异将是 5.55112e-15。

{p 4 4 2}
残差 {bf:A*x-b} 在 {it:x} 准确性的可靠测量取决于矩阵的条件数，可以通过 {bf:{help mf_cond_zh:[M-5] cond()}} 获得， 对于 {cmd:A}，结果为 4.81288e+15。如果矩阵条件良好，小残差意味着 {it:x} 是准确的。如果矩阵条件差，小的残差并不是准确性的可靠指标。

{p 4 4 2}
检查 {cmd:x} 准确性的另一种方法是设置 {it:tol}=0，看看如果 {cmd:b}={cmd:A*x} 时 {it:x} 能够获得得多好：

	: {cmd:x  = lusolve(A, b, 0)}

	: {cmd:x2 = lusolve(A, A*x, 0)}

{p 4 4 2}
如果 {cmd:x} 和 {cmd:x2} 几乎相同，那么可以安全地假设 {cmd:x} 是经过数值准确计算的结果。
您可以比较 {cmd:x} 和 {cmd:x2} 以及 {cmd:mreldif(x2,x)}；参见 
{bf:{help mf_reldif_zh:[M-5] reldif()}}。  
在我们的示例中，{cmd:mreldif(x2,x)} 是 .03，差异很大。

{p 4 4 2}
如果 {it:A} 条件差，则 {it:A} 或 {it:B} 的微小变化可能导致 {it:X} 的解产生剧烈差异。


{marker conformability}{...}
{title:相符性}

    {cmd:lusolve(}{it:A}{cmd:,} {it:B}{cmd:,} {it:tol}{cmd:)}:
	{it:输入:}
		{it:A}:  {it:n x n}
		{it:B}:  {it:n x k}
	      {it:tol}:  1 {it:x} 1    （可选）
	{it:输出:}
	   {it:结果}:  {it:n x k}

    {cmd:_lusolve(}{it:A}{cmd:,} {it:B}{cmd:,} {it:tol}{cmd:)}:
	{it:输入:}
		{it:A}:  {it:n x n}
		{it:B}:  {it:n x k}
	      {it:tol}:  1 {it:x} 1    （可选）
	{it:输出:}
		{it:A}:  0 {it:x} 0
		{it:B}:  {it:n x k}

    {cmd:_lusolve_la(}{it:A}{cmd:,} {it:B}{cmd:,} {it:tol}{cmd:)}:
	{it:输入:}
		{it:A}:  {it:n x n}
		{it:B}:  {it:n x k}
	      {it:tol}:  1 {it:x} 1    （可选）
	{it:输出:}
		{it:A}:  0 {it:x} 0
		{it:B}:  {it:n x k}
	   {it:结果}:  1 {it:x} 1


{marker diagnostics}{...}
{title:诊断}

{p 4 4 2}
{cmd:lusolve(}{it:A}{cmd:,} {it:B}{cmd:,} ...{cmd:)},
{cmd:_lusolve(}{it:A}{cmd:,} {it:B}{cmd:,} ...{cmd:)},
和
{cmd:_lusolve_la(}{it:A}{cmd:,} {it:B}{cmd:,} ...{cmd:)}
返回一个结果，如果 {it:A} 或 {it:B} 包含缺失值，则返回缺失。
如果 {it:A} 是奇异的，函数返回一个包含所有缺失值的结果。

{p 4 4 2}
{cmd:_lusolve(}{it:A}{cmd:,} {it:B}{cmd:,} ...{cmd:)}
和 
{cmd:_lusolve_la(}{it:A}{cmd:,} {it:B}{cmd:,} ...{cmd:)}
如果 {it:A} 或 {it:B} 是视图，则报错并中止。

{p 4 4 2}
{cmd:_lusolve_la(}{it:A}{cmd:,} {it:B}{cmd:,} ...{cmd:)}
不应直接使用；使用 
{cmd:_lusolve()}。


{marker source}{...}
{title:源代码}

{p 4 4 2}
{view lusolve.mata, adopath asis:lusolve.mata},
{view _lusolve.mata, adopath asis:_lusolve.mata};
{cmd:_lusolve_la()} 是内置的。
{p_end}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <mf_lusolve.sthlp>}