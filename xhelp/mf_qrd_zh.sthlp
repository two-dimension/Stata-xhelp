{smcl}
{* *! version 1.1.9  15may2018}{...}
{vieweralsosee "[M-5] qrd()" "mansection M-5 qrd()"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[M-5] qrinv()" "help mf_qrinv_zh"}{...}
{vieweralsosee "[M-5] qrsolve()" "help mf_qrsolve_zh"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[M-4] 矩阵" "help m4_matrix_zh"}{...}
{viewerjumpto "语法" "mf_qrd_zh##syntax"}{...}
{viewerjumpto "描述" "mf_qrd_zh##description"}{...}
{viewerjumpto "PDF 文档链接" "mf_qrd_zh##linkspdf"}{...}
{viewerjumpto "备注" "mf_qrd_zh##remarks"}{...}
{viewerjumpto "适用性" "mf_qrd_zh##conformability"}{...}
{viewerjumpto "诊断" "mf_qrd_zh##diagnostics"}{...}
{viewerjumpto "源代码" "mf_qrd_zh##source"}
{help mf_qrd:English Version}
{hline}{...}
{p2colset 1 16 18 2}{...}
{p2col:{bf:[M-5] qrd()} {hline 2}}QR 分解
{p_end}
{p2col:}({mansection M-5 qrd():查看完整的 PDF 手册条目}){p_end}
{p2colreset}{...}


{marker syntax}{...}
{title:语法}

{p 8 12 2}
{it:void}{bind:           }
{cmd:qrd(}{it:数值矩阵 A}{cmd:,} {it:Q}{cmd:,} {it:R}{cmd:)}


{p 8 12 2}
{it:void} {bind:          }
{cmd:hqrd(}{it:数值矩阵 A}{cmd:,} {it:H}{cmd:,} {it:tau}{cmd:,} {it:R1}{cmd:)}

{p 8 12 2}
{it:void}{bind:          }
{cmd:_hqrd(}{it:数值矩阵 A}{cmd:,} {it:tau}{cmd:,} {it:R1}{cmd:)}



{p 8 34 2}
{it:数值矩阵}{bind: }
{cmd:hqrdmultq(}{it:数值矩阵 H}{cmd:,} {it:行向量 tau}{cmd:,}
	{it:数值矩阵 X}{cmd:,}  {it:实数标量 transpose}{cmd:)}

{p 8 36 2}
{it:数值矩阵}{bind: }
{cmd:hqrdmultq1t(}{it:数值矩阵 H}{cmd:,} {it:行向量 tau}{cmd:,}
	{it:数值矩阵 X}{cmd:)}

{p 8 36 2}
{it:数值矩阵}{bind: }
{cmd:hqrdq(}{it:数值矩阵 H}{cmd:,} {it:数值矩阵 tau}{cmd:)}

{p 8 12 2}
{it:数值矩阵}{bind: }
{cmd:hqrdq1(}{it:数值矩阵 H}{cmd:,} {it:数值矩阵 tau}{cmd:)}

{p 8 12 2}
{it:数值矩阵}{bind: }
{cmd:hqrdr(}{it:数值矩阵 H}{cmd:)}

{p 8 12 2}
{it:数值矩阵}{bind: }
{cmd:hqrdr1(}{it:数值矩阵 H}{cmd:)}



{p 8 12 2}
{it:void}{bind:           }
{cmd:qrdp(}{it:数值矩阵 A}{cmd:,} {it:Q}{cmd:,} {it:R}{cmd:,} 
	{it:实数行向量 p}{cmd:)}

{p 8 12 2}
{it:void}{bind:           }
{cmd:hqrdp(}{it:数值矩阵 A}{cmd:,} {it:H}{cmd:,} {it:tau}{cmd:,} {it:R1}{cmd:,}
	{it:实数行向量 p}{cmd:)}

{p 8 12 2}
{it:void}{bind:          }
{cmd:_hqrdp(}{it:数值矩阵 A}{cmd:,} {it:tau}{cmd:,} {it:R1}{cmd:,}
	{it:实数行向量 p}{cmd:)}


{p 8 12 2}
{it:void}{bind:          }
{cmd:_hqrdp_la(}{it:数值矩阵 A}{cmd:,} {it:tau}{cmd:,} {it:实数行向量 p}{cmd:)}


{marker description}{...}
{title:描述}

{p 4 4 2}
{cmd:qrd(}{it:A}{cmd:,} {it:Q}{cmd:,} {it:R}{cmd:)} 
计算 {it:A} 的 QR 分解： {it:m} {it:x} {it:n},
{it:m}>={it:n}，并将结果返回到 {it:Q} 和 {it:R} 中。

{p 4 4 2}
{cmd:hqrd(}{it:A}{cmd:,} {it:H}{cmd:,} {it:tau}{cmd:,} {it:R1}{cmd:)}
计算 {it:A} 的 QR 分解： {it:m} {it:x} {it:n},
{it:m}>={it:n}，但不返回 {it:Q} 和 {it:R}，而是返回 
Householder 向量到 {it:H} 和缩放因子 {it:tau} -- 可从中形成 {it:Q} -- 并返回上三角矩阵到 {it:R1}，这是 {it:R} 的子矩阵；详见 
{it:{help mf_qrd##remarks:备注}}下方的定义。这样可以节省计算和内存，其他例程允许您操作这些矩阵：

{p 8 12 2}
1.
    {cmd:hqrdmultq(}{it:H}{cmd:,} {it:tau}{cmd:,} {it:X}{cmd:,} {it:transpose}{cmd:)}
    返回 {it:Q}{it:X} 或 {it:Q}{bf:'}{it:X}
    基于 {it:H} 和 {it:tau} 所暗示的 {it:Q}。
    如果 {it:transpose}=0，则返回 {it:Q}{it:X}，否则返回 {it:Q}{bf:'}{it:X}。

{p 8 12 2}
2.
    {cmd:hqrdmultq1t(}{it:H}{cmd:,} {it:tau}{cmd:,} {it:X}{cmd:)}
    返回基于 {it:H} 和 {it:tau} 所暗示的 {it:Q1}{bf:'}{it:X}。

{p 8 12 2}
3.
    {cmd:hqrdq(}{it:H}{cmd:,} {it:tau}{cmd:)} 
    返回由 {it:H} 和 {it:tau} 所暗示的 {it:Q} 矩阵。此函数很少使用。

{p 8 12 2}
4.
    {cmd:hqrdq1(}{it:H}{cmd:,} {it:tau}{cmd:)} 
    返回由 {it:H} 和 {it:tau} 所暗示的 {it:Q1} 矩阵。此函数很少使用。

{p 8 12 2}
5.
    {cmd:hqrdr(}{it:H}{cmd:)} 
    返回完整的 {it:R} 矩阵。此函数很少使用。
    (您可能会惊讶于 {cmd:hqrdr()} 是 {it:H} 的函数而不是 {it:R1}。 {it:R1} 也恰好存储在 {it:H} 中，还有其他有用的信息。)

{p 8 12 2}
6.
    {cmd:hqrdr1(}{it:H}{cmd:)} 
    返回 {it:R1} 矩阵。此函数很少使用。

{p 4 4 2}
{cmd:_hqrd(}{it:A}{cmd:,} {it:tau}{cmd:,} {it:R1}{cmd:)} 
与 
{cmd:hqrd(}{it:A}{cmd:,} {it:H}{cmd:,} {it:tau}{cmd:,} {it:R1}{cmd:)相同，
只是在内存中覆盖 {it:H} 到 {it:A}，从而节省更多内存。

{p 4 4 2}
{cmd:qrdp(}{it:A}{cmd:,} {it:Q}{cmd:,} {it:R}{cmd:,} {it:p}{cmd:)} 
与 
{cmd:qrd(}{it:A}{cmd:,} {it:Q}{cmd:,} {it:R}{cmd:)} 类似：
它返回 {it:A} 的 QR 分解到 {it:Q} 和 {it:R}。不同之处在于此例程允许使用主元。新的参数 {it:p} 指定列是否可用于主元，同时在输出时， {it:p} 被覆盖为记录实际执行的主元的排列向量。输入时， {it:p} 可以指定为 {cmd:.} （缺失）-- 意味着所有列均可用于主元 -- 或者 {it:p} 可以指定为一个 {it:n} {it:x} 1 列向量，包含 0 和 1，其中 1 表示该列是固定的，因此不能被主元。

{p 4 4 2}
{cmd:hqrdp(}{it:A}{cmd:,} {it:H}{cmd:,} {it:tau}{cmd:,} {it:R1}{cmd:,} {it:p}{cmd:)} 
是 
{cmd:hqrd(}{it:A}{cmd:,} {it:H}{cmd:,} {it:tau}{cmd:,} {it:R1}{cmd:)} 的推广，正如 {cmd:qrdp()} 是 {cmd:qrd()} 的推广。

{p 4 4 2}
{cmd:_hqrdp(}{it:A}{cmd:,} {it:tau}{cmd:,} {it:R1}{cmd:,} {it: p}{cmd:)} 
与 
{cmd:hqrdp(}{it:A}{cmd:,} {it:H}{cmd:,} {it:tau}{cmd:,} {it:R1}{cmd:,} {it:p}{cmd:)} 相同，
只不过 {cmd:_hqrdp()} 会将 {it:H} 覆盖到 {it:A} 中。

{p 4 4 2}
{cmd:_hqrdp_la()} 是进入 
{bf:{help m1_lapack_zh:[M-1] LAPACK}} 例程的接口，执行 QR 计算；
上面所有例程都在使用。直接使用 {cmd:_hqrdp_la()} 不推荐。


{marker linkspdf}{...}
{title:PDF 文档链接}

        {mansection M-5 qrd()备注和示例:备注和示例}

{pstd}
以上部分未包含在此帮助文件中。


{marker remarks}{...}
{title:备注}

{p 4 4 2}
备注在以下标题下呈现：

	{help mf_qrd##remarks1:QR 分解}
	{help mf_qrd##remarks2:避免计算 Q}
	{help mf_qrd##remarks3:主元}
	{help mf_qrd##remarks4:有被丢弃列的最小二乘解}


{marker remarks1}{...}
{title:QR 分解}

{p 4 4 2}
方阵或不方阵矩阵 {it:A} 的分解可写为

			{it:A} = {it:QR}{right:(1)   }

{p 4 4 2}
其中 {it:Q} 是正交矩阵 ({it:Q}{cmd:'}{it:Q} = {it:I})，而 
{it:R} 是上三角的。
{cmd:qrd(}{it:A}{cmd:,} {it:Q}{cmd:,} {it:R}{cmd:)} 
将进行以下计算：

	: {cmd:A}
	{res}       {txt}1   2
	    {c TLC}{hline 9}{c TRC}
	  1 {c |}  {res}4   4{txt}  {c |}
	  2 {c |}  {res}4   6{txt}  {c |}
	  3 {c |}  {res}1   0{txt}  {c |}
	  4 {c |}  {res}2   4{txt}  {c |}
	  5 {c |}  {res}2   1{txt}  {c |}
	    {c BLC}{hline 9}{c BRC}

	: {cmd:Q = R = .}

	: {cmd:qrd(A, Q, R)}

	: {cmd:Ahat = Q*R}

	: {cmd:mreldif(Ahat, A)}
	  4.44089e-16


{marker remarks2}{...}
{title:避免计算 Q}

{p 4 4 2}
实际上，您可能不想使用 {cmd:qrd()}.  计算 {it:Q} 的必要组成部分并不太困难，但从这些组成部分构造 {it:Q} 是一件棘手的事情。
所需的组成部分通常是您所需要的，分别是 Householder 向量和它们的缩放因子，称为 {it:H} 和 {it:tau}。例如，可以写下一个数学函数 
{it:f}({it:H}, {it:tau}, {it:X})，它将计算 {it:Q}{it:X} 或 
{it:Q}{cmd:'}{it:X} 对于某个矩阵 {it:X}。

{p 4 4 2}
同样，QR 分解通常是在严重不方阵的矩阵 {it:A}: {it:m} {it:x} {it:n} 上进行的， {it:m} >> {it:n}。我们可以写成

					       {c TLC}    {c TRC}
		           {c TLC}               {c TRC}   {c |} {it:R1} {c |}
		A       =  {c |}  {it:Q1}      {it:Q2}   {c |}   {c |}    {c |}  =  {it:Q1}*{it:R1}  + {it:Q2}*{it:R2}
	                   {c BLC}               {c BRC}   {c |} {it:R2} {c |}      
					       {c BLC}    {c BRC}
	      {it:m x n         m x n   m x m-n     n x n     m x n    m x n}
                                              {it:m-n x n}


{p 4 4 2}
{it:R2} 为零，因此 

					       {c TLC}    {c TRC}
		           {c TLC}               {c TRC}   {c |} {it:R1} {c |}
		A       =  {c |}  {it:Q1}      {it:Q2}   {c |}   {c |}    {c |}  =  {it:Q1}*{it:R1}
	                   {c BLC}               {c BRC}   {c |}  0 {c |}      
					       {c BLC}    {c BRC}
	      {it:m x n         m x n   m x m-n     n x n     m x n}
                                              {it:m-n x n}


{p 4 4 2}
因此只需知道 {it:Q1} 和 {it:R1}。 不必将 QR 分解定义为

			{it:A} = {it:QR},            {it:Q}: {it:m x m},          {it:R}: {it:m x n}{right:(1)   }

{p 4 4 2}
更好的定义是

			{it:A} = {it:Q1}*{it:R1}         {it:Q1}: {it:m x n}          {it:R1}: {it:n x n}{right:(1')  }

{p 4 4 2}
为了欣赏这种节省空间的效果，考虑合理的情况， {it:m}=4,000 和 {it:n}=3:

			{it:A} = {it:QR},            {it:Q}: 4,000 {it:x} 4,000,    {it:R}: 4,000 {it:x} 3
    与 
			{it:A} = {it:Q1}*{it:R1}         {it:Q1}: 4,000 {it:x} 3        {it:R1}:    3 {it:x} 3

{p 4 4 2}
内存消耗从 125,094 千字节减少到 94 千字节，节省了 99.92%！

{p 4 4 2}
结合这些论点，
我们不需要保存 {it:Q}，因为 {it:Q1} 足够，
我们不需要计算 {it:Q1}，因为 {it:H} 和 {it:tau} 足够，并且
我们不需要存储 {it:R}，因为 {it:R1} 足够。

{p 4 4 2}
这就是 
{cmd:hqrd(}{it:A}{cmd:,} {it:H}{cmd:,} {it:tau}{cmd:,} {it:R1}{cmd:)} 
的作用。 在使用了 {cmd:hqrd()} 之后，如果您需要将完整的 {it:Q} 乘以某个矩阵 {it:X}，可以使用 {cmd:hqrdmultq()}。 
在使用了 {cmd:hqrd()} 之后，如果您需要完整的 {it:Q}，可以使用 {cmd:hqrdq()} 来获取，但到那时您将进行您试图避免的棘手计算，因此不如一开始就使用 {cmd:qrd()}。 
如果您需要 {it:Q1}，可以使用 {cmd:hqrdq1()}。 最后，使用了 {cmd:hqrd()} 之后，如果您需要 {it:R} 或 {it:R1}，可以使用 {cmd:hqrdr()} 和 {cmd:hqrdr1()}：

	: {cmd:A}
	{res}       {txt}1   2
	    {c TLC}{hline 9}{c TRC}
	  1 {c |}  {res}4   8{txt}  {c |}
	  2 {c |}  {res}4   6{txt}  {c |}
	  3 {c |}  {res}1   0{txt}  {c |}
	  4 {c |}  {res}2   4{txt}  {c |}
	  5 {c |}  {res}2   1{txt}  {c |}
	    {c BLC}{hline 9}{c BRC}

	: {cmd:H = tau = R1 = .}

	: {cmd:hqrd(A, H, tau, R1)}

	: {cmd:Ahat = hqrdq1(H, tau) * R1}{...}
{col 55}// 即 {it:Q1}*{it:R1}

	: {cmd:mreldif(Ahat, A)}
	  4.44089e-16


{marker remarks3}{...}
{title:主元}

{p 4 4 2}
带有列主元的 QR 分解可以求解 

			{it:AP} = {it:QR}{right:(2)   }

{p 4 4 2}
或者，如果您愿意的话，

			{it:AP} = {it:Q1}*{it:R1}{right:(2')  }

{p 4 4 2}
其中 {it:P} 是一个置换矩阵；见 
{bf:{help m1_permutation_zh:[M-1] 置换}}。我们可以将其重写为 

			{it:A} = {it:QRP}{bf:'}{right:(3)   }

{p 4 4 2}
以及 

			{it:A} = {it:Q1}*{it:R1}*{it:P}{bf:'}{right:(3')  }

{p 4 4 2}
列主元可以提高数值精度。
函数 
{cmd:qrdp(}{it:A}{cmd:,} {it:Q}{cmd:,} {it:R}{cmd:,} {it:p}{cmd:)} 
和
{cmd:hqrdp(}{it:A}{cmd:,} {it:H}{cmd:,} {it:tau}{cmd:,} {it:R1}{cmd:,} {it:p}{cmd:)} 
进行主元操作并返回置换矩阵 {it:P} 的排列向量形式：

	: {cmd:A}
	{res}       {txt}1   2
	    {c TLC}{hline 9}{c TRC}
	  1 {c |}  {res}4   8{txt}  {c |}
	  2 {c |}  {res}4   6{txt}  {c |}
	  3 {c |}  {res}1   0{txt}  {c |}
	  4 {c |}  {res}2   4{txt}  {c |}
	  5 {c |}  {res}2   1{txt}  {c |}
	    {c BLC}{hline 9}{c BRC}

	: {cmd:Q = R = p = .}

	: {cmd:qrdp(A, Q, R, p)}

	: {cmd:Ahat = (Q*R)[., invorder(p)]}{...}
{col 57}// 即 {it:QRP}'

	: {cmd:mreldif(Ahat, A)}
	  1.97373e-16


	: {cmd:H = tau = R1 = p = .}

	: {cmd:hqrdp(A, H, tau, R1, p)}

	: {cmd:Ahat = (hqrdq1(H, tau)*R1)[., invorder(p)]}{...}
{col 57}// 即 {it:Q1}*{it:R1}*{it:P}'

	: {cmd:mreldif(Ahat, A)}
	  1.97373e-16

{p 4 4 2}
在调用 {cmd:qrdp()} 或 {cmd:hqrdp()} 之前，我们将 {it:p} 设置为缺失，指明所有列都可以主元。
我们同样可以将 {it:p} 设置为 (0, 0)，这将说明两列均可主元。

{p 4 4 2}
当不允许主元，并且当 {it:A} 不是满列秩时，列出现的顺序会影响生成的广义解类型；后来的列实际上被丢弃。 当允许主元时，列会根据数值精度考虑进行重排。
在缺乏秩的情况下，您无法提前知道哪些列将被丢弃，因为不知道列将以何种顺序出现。
通常，这无关紧要，但在某些情况下则是重要的。

{p 4 4 2}
在这种情况下，您可以指定哪些列可以主元，哪些列不可以 -- 您将 {it:p} 指定为一个向量，如果 {it:p}[{it:i}]=1，则第 {it:i} 列不可主元。  {it:p}[{it:i}]=1 的列 
（在概念上）会被移到矩阵的前面，其余列在此之后按最佳顺序排列。 返回的排列向量 {it:p} 使所有这些都考虑在内。


{marker remarks4}{...}
{title:有被丢弃列的最小二乘解}

{p 4 4 2}
最小二乘解是 QR 分解的一种常见用途。
我们希望求解 {it:x}

			{it:Ax} = {it:b}             ({it:A}:  {it:m x n}, {it:m} >= {it:n}){right:(4)   }

{p 4 4 2}
问题是当 {it:m} > {it:n} 时 (4) 没有解，因为我们有比未知数更多的方程。然后我们想找到 {it:x} 
使得 ({it:Ax}-{it:b}){bf:'}({it:Ax}-{it:b}) 达到最小。

{p 4 4 2}
如果 {it:A} 是满列秩的，那么众所周知 {it:x} 的最小二乘解由 
{cmd:solveupper(}{it:R1}{cmd:,} {it:Q1}{bf:'}{it:b}{cmd:)} 
给出，其中 {cmd:solveupper()} 是上三角求解器； 
见 {bf:{help mf_solvelower_zh:[M-5] solvelower()}}。

{p 4 4 2}
如果 {it:A} 的列秩小于满秩，且我们不关心丢弃哪些列，则可以使用相同的解：  
{cmd:solveupper(}{it:R1}{cmd:,} {it:Q1}{bf:'}{it:b}{cmd:)}。

{p 4 4 2}
将主元添加到上述公式几乎没有复杂化问题；解变为 
{cmd:solveupper(}{it:R1}{cmd:,} {it:Q1}{bf:'}{it:b}{cmd:)[invorder(}{it:p}{cmd:)]}。

{p 4 4 2}
对于这两种情况，完整的细节是

	: {cmd:A}
	{res}       {txt}1   2   3
	    {c TLC}{hline 13}{c TRC}
	  1 {c |}  {res}3   9   1{txt}  {c |}
	  2 {c |}  {res}3   8   1{txt}  {c |}
	  3 {c |}  {res}3   7   1{txt}  {c |}
	  4 {c |}  {res}3   6   1{txt}  {c |}
	    {c BLC}{hline 13}{c BRC}

	: {cmd:b}
	{res}       {txt} 1
	    {c TLC}{hline 6}{c TRC}
	  1 {c |}  {res} 7{txt}  {c |}
	  2 {c |}  {res} 3{txt}  {c |}
	  3 {c |}  {res}12{txt}  {c |}
	  4 {c |}  {res} 0{txt}  {c |}
	    {c BLC}{hline 6}{c BRC}

	: {cmd:H = tau = R1 = p = .}

	: {cmd:hqrdp(A, H, tau, R1, p)}

	: {cmd:q1b = hqrdmultq1t(H, tau, b)}{...}
{col 50}// 即 {it:Q1}{bf:'}{it:b}

	: {cmd:xhat = solveupper(R1, q1b)[invorder(p)]}

	: {cmd:xhat}
	{res}       {txt}           1
	    {c TLC}{hline 16}{c TRC}
	  1 {c |}  {res}-1.166666667{txt}  {c |}
	  2 {c |}  {res}         1.2{txt}  {c |}
	  3 {c |}  {res}           0{txt}  {c |}
	    {c BLC}{hline 16}{c BRC}

{p 4 4 2}
上述例子中的 {it:A} 矩阵的列秩小于满秩；第一列包含没有变化的变量，第三列包含截距的数据。上述解决方案是正确的，但我们可能更倾向于包含截距的解。 为此，我们需要指定第三列不可主元：

	: {cmd:p = (0, 0, 1)}

	: {cmd:H = tau = R1 = .}

	: {cmd:hqrdp(A, H, tau, R1, p)}

	: {cmd:q1b = hqrdmultq1t(H, tau, b)}

	: {cmd:xhat = solveupper(R1, q1b)[invorder(p)]}

	: {cmd:xhat}
	{res}       {txt}  1
	    {c TLC}{hline 8}{c TRC}
	  1 {c |}  {res}   0{txt}  {c |}
	  2 {c |}  {res} 1.2{txt}  {c |}
	  3 {c |}  {res}-3.5{txt}  {c |}
	    {c BLC}{hline 8}{c BRC}


{marker conformability}{...}
{title:适用性}

    {cmd:qrd(}{it:A}{cmd:,} {it:Q}{cmd:,} {it:R}{cmd:)}:
	{it:输入:}
		{it:A}:  {it:m x n},  {it:m}>={it:n}
	{it:输出:}
		{it:Q}:  {it:m x m}
		{it:R}:  {it:m x n}

    {cmd:hqrd(}{it:A}{cmd:,} {it:H}{cmd:,} {it:tau}{cmd:,} {it:R1}{cmd:)}:
	{it:输入:}
		{it:A}:  {it:m x n},  {it:m}>={it:n}
	{it:输出:}
		{it:H}:  {it:m x n}
	      {it:tau}:  1 {it:x n}
	       {it:R1}:  {it:n x n}

    {cmd:_hqrd(}{it:A}{cmd:,} {it:tau}{cmd:,} {it:R1}{cmd:)}:
	{it:输入:}
		{it:A}:  {it:m x n},  {it:m}>={it:n}
	{it:输出:}
		{it:A}:  {it:m x n}   (包含 {it:H})
	      {it:tau}:  1 {it:x n}
	       {it:R1}:  {it:n x n}

    {cmd:hqrdmultq(}{it:H}{cmd:,} {it:tau}{cmd:,} {it:X}{cmd:,} {it:transpose}{cmd:)}:
		{it:H}:  {it:m x n}
	      {it:tau}:  1 {it:x n}
		{it:X}:  {it:m x c}
	{it:transpose}:  1 {it:x} 1
	   {it:结果}:  {it:m x c}

    {cmd:hqrdmultq1t(}{it:H}{cmd:,} {it:tau}{cmd:,} {it:X}{cmd:)}:
		{it:H}:  {it:m x n}
	      {it:tau}:  1 {it:x n}
		{it:X}:  {it:m x c}
	   {it:结果}:  {it:n x c}

    {cmd:hqrdq(}{it:H}{cmd:,} {it:tau}{cmd:)}:
		{it:H}:  {it:m x n}
	      {it:tau}:  1 {it:x n}
	   {it:结果}:  {it:m x m}

    {cmd:hqrdq1(}{it:H}{cmd:,} {it:tau}{cmd:)}:
		{it:H}:  {it:m x n}
	      {it:tau}:  1 {it:x n}
	   {it:结果}:  {it:m x n}

    {cmd:hqrdr(}{it:H}{cmd:)}:
		{it:H}:  {it:m x n}
	   {it:结果}:  {it:m x n}

    {cmd:hqrdr1(}{it:H}{cmd:)}:
		{it:H}:  {it:m x n}
	   {it:结果}:  {it:n x n}

   {cmd:qrdp(}{it:A}{cmd:,} {it:Q}{cmd:,} {it:R}{cmd:,} {it:p}{cmd:)}:
	{it:输入:}
		{it:A}:  {it:m x n},  {it:m}>={it:n}
		{it:p}:  1 {it:x} 1  或  1 {it:x n}
	{it:输出:}
		{it:Q}:  {it:m x m}
		{it:R}:  {it:m x n}
		{it:p}:  1 {it:x n}

   {cmd:hqrdp(}{it:A}{cmd:,} {it:H}{cmd:,} {it:tau}{cmd:,} {it:R1}{cmd:,} {it:p}{cmd:)} 
	{it:输入:}
		{it:A}:  {it:m x n},  {it:m}>={it:n}
		{it:p}:  1 {it:x} 1  或  1 {it:x n}
	{it:输出:}
		{it:H}:  {it:m x n}
	      {it:tau}:  1 {it:x n}
	       {it:R1}:  {it:n x n}
		{it:p}:  1 {it:x n}

    {cmd:_hqrdp(}{it:A}{cmd:,} {it:tau}{cmd:,}  {it:R1}{cmd:,} {it: p}{cmd:)}:
	{it:输入:}
		{it:A}:  {it:m x n},  {it:m}>={it:n}
		{it:p}:  1 {it:x} 1  或  1 {it:x n}
	{it:输出:}
		{it:A}:  {it:m x n}  (包含 {it:H})
	      {it:tau}:  1 {it:x n}
	       {it:R1}:  {it:n x n}
		{it:p}:  1 {it:x n}

    {cmd:_hqrdp_la(}{it:A}{cmd:,} {it:tau}{cmd:,} {it:p}{cmd:)}:
	{it:输入:}
		{it:A}:  {it:m x n},  {it:m}>={it:n}
		{it:p}:  1 {it:x} 1  或  1 {it:x n}
	{it:输出:}
		{it:A}:  {it:m x n}   (包含 {it:H})
	      {it:tau}:  1 {it:x n}
		{it:p}:  1 {it:x n}


{marker diagnostics}{...}
{title:诊断}

{p 4 4 2}
{cmd:qrd(}{it:A}, ...{cmd:)},
{cmd:hqrd(}{it:A}, ...{cmd:)},
{cmd:_hqrd(}{it:A}, ...{cmd:)},
{cmd:qrdp(}{it:A}, ...{cmd:)},
{cmd:hqrdp(}{it:A}, ...{cmd:)},
和
{cmd:_hqrdp(}{it:A}, ...{cmd:)}
如果 {it:A} 包含缺失值，则返回缺失结果。
也就是说， {it:Q} 将包含所有缺失值。 {it:R} 将在对角线及以上包含缺失值。 {it:p} 将包含整数 1、2、...

{p 4 4 2}
{cmd:_hqrd(}{it:A}, ...{cmd:)}
和
{cmd:_hqrdp(}{it:A}, ...{cmd:)}
如果 {it:A} 是视图，则中止并报错。

{p 4 4 2}
{cmd:hqrdmultq(}{it:H}{cmd:,} {it:tau}{cmd:,} {it:X}, {it:transpose}{cmd:)}
和 
{cmd:hqrdmultq1t(}{it:H}{cmd:,} {it:tau}{cmd:,} {it:X}{cmd:)}
如果 {it:X} 包含缺失值，则返回缺失结果。
  

{marker source}{...}
{title:源代码}

{p 4 4 2}
{view qrd.mata, adopath asis:qrd.mata},
{view hqrd.mata, adopath asis:hqrd.mata},
{view _hqrd.mata, adopath asis:_hqrd.mata},
{view hqrdmultq.mata, adopath asis:hqrdmultq.mata},
{view hqrdmultq1t.mata, adopath asis:hqrdmultq1t.mata},
{view hqrdq.mata, adopath asis:hqrdq.mata},
{view hqrdq1.mata, adopath asis:hqrdq1.mata},
{view hqrdr.mata, adopath asis:hqrdr.mata},
{view hqrdr1.mata, adopath asis:hqrdr1.mata},
{view qrdp.mata, adopath asis:qrdp.mata},
{view hqrdp.mata, adopath asis:hqrdp.mata},
{view _hqrdp.mata, adopath asis:_hqrdp.mata}


{p 4 4 2}
{cmd:_hqrdp_la()} 是内置的。
{p_end}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <mf_qrd.sthlp>}