{smcl}
{* *! version 1.1.8  15may2018}{...}
{vieweralsosee "[M-5] eigensystem()" "mansection M-5 eigensystem()"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[M-5] matexpsym()" "help mf_matexpsym_zh"}{...}
{vieweralsosee "[M-5] matpowersym()" "help mf_matpowersym_zh"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[M-4] 矩阵" "help m4_matrix_zh"}{...}
{viewerjumpto "语法" "mf_eigensystem_zh##syntax"}{...}
{viewerjumpto "描述" "mf_eigensystem_zh##description"}{...}
{viewerjumpto "PDF 文档链接" "mf_eigensystem_zh##linkspdf"}{...}
{viewerjumpto "备注" "mf_eigensystem_zh##remarks"}{...}
{viewerjumpto "相容性" "mf_eigensystem_zh##conformability"}{...}
{viewerjumpto "诊断" "mf_eigensystem_zh##diagnostics"}{...}
{viewerjumpto "源代码" "mf_eigensystem_zh##source"}
{help mf_eigensystem:English Version}
{hline}{...}
{p2colset 1 24 26 2}{...}
{p2col:{bf:[M-5] eigensystem()} {hline 2}}特征向量和特征值 
{p_end}
{p2col:}({mansection M-5 eigensystem():查看完整的 PDF 手册条目}){p_end}
{p2colreset}{...}


{marker syntax}{...}
{title:语法}

{p 8 40 2}
{it:void}{bind:                  }
{cmd:eigensystem(}{it:A}{cmd:,} 
{it:X}{cmd:,} 
{it:L} 
[{cmd:,} {it:rcond} 
[{cmd:,} {it:nobalance}]]{cmd:)}

{p 8 40 2}
{it:void}{bind:              }
{cmd:lefteigensystem(}{it:A}{cmd:,} {it:X}{cmd:,} 
{it:L}
[{cmd:,} {it:rcond}
[{cmd:,} {it:nobalance}]]{cmd:)}

{p 8 40 2}
{it:复数行向量}{bind:     }
{cmd:eigenvalues(}{it:A}{bind:      }
[{cmd:,} {it:rcond}
[{cmd:,} {it:nobalance}]]{cmd:)}


{p 8 40 2}
{it:void}{bind:               }
{cmd:symeigensystem(}{it:A}{cmd:,} {it:X}{cmd:,} {it:L}{cmd:)}

{p 8 40 2}
{it:实数行向量}{bind:     }
{cmd:symeigenvalues(}{it:A}{cmd:)}


{p 8 40 2}
{it:void}{bind:                 }
{cmd:_eigensystem(}{it:A}{cmd:,} 
{it:X}{cmd:,} 
{it:L} 
[{cmd:,} {it:rcond} 
[{cmd:,} {it:nobalance}]]{cmd:)}

{p 8 40 2}
{it:void}{bind:             }
{cmd:_lefteigensystem(}{it:A}{cmd:,} {it:X}{cmd:,} 
{it:L}
[{cmd:,} {it:rcond}
[{cmd:,} {it:nobalance}]]{cmd:)}

{p 8 40 2}
{it:复数行向量}{bind:    }
{cmd:_eigenvalues(}{it:A}{bind:      }
[{cmd:,} {it:rcond} 
[{cmd:,}
{it:nobalance}]]{cmd:)}

{p 8 40 2}
{it:void}{bind:              }
{cmd:_symeigensystem(}{it:A}{cmd:,} {it:X}{cmd:,} {it:L}{cmd:)}

{p 8 40 2}
{it:实数行向量}{bind:    }
{cmd:_symeigenvalues(}{it:A}{cmd:)}



{p 4 4 2}
其中输入为 

			{it:A}:  {it:数值矩阵}
		    {it:rcond}:  {it:实数标量} ({it:rcond} 是否需要)
		{it:nobalance}:  {it:实数标量} (是否抑制平衡)

{p 4 4 2}
输出为

			{it:X}:  {it:数值矩阵}，包含特征向量 
			{it:L}:  {it:数值向量}，包含特征值
		    {it:rcond}:  {it:实数向量}，包含倒数条件数

{p 4 4 2}
当使用 {cmd:_lefteigensystem()} 时，{it:X} 的行将包含特征向量，不然列将包含特征向量。


{p 4 4 2}
以下例程用于实现上述例程：

{p 8 30 2}
{it:实数标量}
{cmd:_eigen_la(}{it:实数标量 todo}{cmd:,}
{it:数值矩阵 A}{cmd:,}
{it:X}{cmd:,}
{it:L}{cmd:,}
{it:实数标量 rcond}{cmd:,}
{it:实数标量 nobalance}{cmd:)}

{p 8 33 2}
{it:实数标量}
{cmd:_symeigen_la(}{it:实数标量 todo}{cmd:,}
{it:数值矩阵 A}{cmd:,}
{it:X}{cmd:,}
{it:L}{cmd:)}

		
{marker description}{...}
{title:描述}

{p 4 4 2}
这些例程计算方阵 {it:A} 的特征向量和特征值。

{p 4 4 2}
{cmd:eigensystem(}{it:A}{cmd:,} {it:X}{cmd:,} {it:L}{cmd:,}
{it:rcond}{cmd:,} {it:nobalance}{cmd:)} 
计算一般的、实数或复数的方阵
{it:A} 的特征向量和特征值。特征向量返回到 {it:X}，特征值返回到 {it:L}。其余参数为可选：

{p 8 12 2}
    1.  如果未指定 {it:rcond}，则不会在 {it:rcond} 中返回倒数条件数。

{p 12 12 2}
        如果指定了 {it:rcond}，并且包含的值不是 0 或缺失 -- 推荐使用 {it:rcond}=1 -- 则在 {it:rcond} 中放置特征值的倒数条件数向量。新 {it:rcond} 的每个元素衡量相应特征值计算的精确度；大数值（接近 1 的数）更好，而小数值（接近 0 的数）则意味着不准确； 
        见下文 {it:{help mf_eigensystem##remarks5:特征值条件}}。

{p 8 12 2} 
    2.  如果未指定 {it:nobalance}，则会执行平衡以获得更准确的结果。

{p 12 12 2}
        如果指定 {it:nobalance} 且不为零或缺失，则不会使用平衡。使用的速度更快，但可能会稍微降低准确性；见下文 {it:{help mf_eigensystem##remarks6:平衡}}。

{p 4 4 2}
{cmd:lefteigensystem(}{it:A}{cmd:,} {it:X}{cmd:,} {it:L}{cmd:,}
{it:rcond}{cmd:,} {it:nobalance}{cmd:)} 的功能与 
{cmd:eigensystem()} 相似，区别在于 {cmd:lefteigensystem()} 计算左特征向量，解方程为 
{it:X}{it:A}=diag({it:L})*{it:X}，而不是右特征向量的方程 
{it:A}{it:X}={it:X}*diag({it:L}）。

{p 4 4 2}
{cmd:eigenvalues(}{it:A}{cmd:,} {it:rcond}{cmd:,} {it:nobalance}{cmd:)}
返回方阵 {it:A} 的特征值；不计算特征向量。参数 {it:rcond} 和 {it:nobalance} 为可选。

{p 4 4 2}
{cmd:symeigensystem(}{it:A}{cmd:,} {it:X}{cmd:,} {it:L}{cmd:)} 
和 
{cmd:symeigenvalues(}{it:A}{cmd:)} 的功能与 {cmd:eigensystem()} 和 {cmd:eigenvalues()} 相似，区别在于假定 {it:A} 是对称的（厄米的）。返回的特征值是实数的。（不允许参数 {it:rcond} 和 {it:nobalance}；因为对称矩阵本质上条件良好，所以不需要 {it:nobalance}。）

{p 4 4 2}
下划线例程的功能与相同名称的例程相似，区别是 {it:A} 在计算过程中会损坏，因此下划线例程使用更少的内存。

{p 4 4 2}
{cmd:_eigen_la()} 
和 
{cmd:_symeigen_la()} 
是调用 {bf:{help m1_lapack_zh:[M-1] LAPACK}} 
例程的接口，用于实现上述功能。不推荐直接使用它们。


{marker linkspdf}{...}
{title:PDF 文档链接}

        {mansection M-5 eigensystem()Remarksandexamples:备注和示例}

{pstd}
以上部分未包含在该帮助文件中。


{marker remarks}{...}
{title:备注}

{p 4 4 2}
备注分为以下几个主题：

	{help mf_eigensystem##remarks1:特征值和特征向量}
	{help mf_eigensystem##remarks2:左特征向量}
	{help mf_eigensystem##remarks3:对称特征系统}
	{help mf_eigensystem##remarks4:归一化和顺序}
	{help mf_eigensystem##remarks5:特征值条件}
	{help mf_eigensystem##remarks6:平衡}
	{help mf_eigensystem##remarks7:eigensystem() 和 eigenvalues()}
	{help mf_eigensystem##remarks8:lefteigensystem()}
	{help mf_eigensystem##remarks9:symeigensystem() 和 symeigenvalues()}


{marker remarks1}{...}
{title:特征值和特征向量}

{p 4 4 2}
标量 {it:l}（通常表示为 {it:lambda}）被称为方阵 {it:A}: {it:n x n} 的特征值，当且仅当存在非零列向量 {it:x}: {it:n x} 1（称为特征向量），使得

			{it:A}{it:x} = {it:l}{it:x}{right:(1)   }

{p 4 4 2}
(1) 也可写为

			({it:A} - {it:l}{it:I}){it:x} = 0

{p 4 4 2}
其中 {it:I} 是 {it:n x n} 的单位矩阵。
当且仅当存在非平凡解时，方程组的解是存在的：

			det({it:A} - {it:l}{it:I}) = 0{right:(2)   }

{p 4 4 2}
这个关于 {it:l} 的 {it:n} 次多项式称为 {it:A} 的特征多项式或特征方程，特征值 {it:l} 是其根，也称为特征根。

{p 4 4 2}
事实上，有 {it:n} 个解 ({it:l_i}, {it:x_i}) 满足 (1) -- 尽管某些可能重复 -- 并且我们可以将完整的解集紧凑地写为

			{it:A}{it:X} = {it:X}*diag({it:L}){right:(3)   }

{p 4 4 2}
其中 

			{it:X} = ({it:x}_1, {it:x}_2, ...){...}
{col 60}({it:X}: {it:n x n})

			{it:L} = ({it:l}_1, {it:l}_2, ...){...}
{col 60}({it:L}: 1 {it:x n})

{p 4 4 2}
例如， 

	{cmd:: A = (1, 2 \ 9, 4)}
	{cmd:: X = .}
	{cmd:: L = .}
	{cmd:: eigensystem(A, X, L)}

	{cmd:: X}
	                 1             2
	    {c TLC}{hline 29}{c TRC}
	  1 {c |}  -.316227766   -.554700196  {c |}
	  2 {c |}  -.948683298    .832050294  {c |}
	    {c BLC}{hline 29}{c BRC}

	{cmd:: L}
	        1    2
	    {c TLC}{hline 11}{c TRC}
	  1 {c |}   7   -2  {c |}
	    {c BLC}{hline 11}{c BRC}

{p 4 4 2}
第一个特征值为 7，对应的特征向量为 (-.316 \ -.949)。
第二个特征值为 -2，对应的特征向量为 (-.555 \ .832)。

{p 4 4 2}
一般来说，即使 {it:A} 是实数，特征值和特征向量也可能是复数。


{marker remarks2}{...}
{title:左特征向量}

{p 4 4 2}
上述定义的是右特征系统问题：

			{it:A}{it:x} = {it:l}{it:x}{right:(1)   }

{p 4 4 2}
在上述情况下，{it:x} 是列向量。左特征系统问题是找到满足

			{it:x}{it:A} = {it:l}{it:x}{right:(1')  }

{p 4 4 2}
的行向量 {it:x}。

{p 4 4 2}
特征值 {it:l} 在 (1) 和 (1') 中相同，但 {it:x} 可能不同。

{p 4 4 2}
满足 (1') 的 {it:n} 个解 ({it:l_i}, {it:x_i}) 可以紧凑地写为

			{it:X}{it:A} = diag({it:L})*{it:X}{right:(3')  }

{p 4 4 2}
其中 

                     {c TLC}     {c TRC}                 {c TLC}     {c TRC}
		     {c |} {it:x}_1 {c |}                 {c |} {it:l}_1 {c |}
		     {c |} {it:x}_2 {c |}                 {c |} {it:l}_2 {c |}
	       X  =  {c |}  .  {c |}           L  =  {c |}  .  {c |}
		     {c |}  .  {c |}                 {c |}  .  {c |}
		     {c |} {it:x}_{it:n} {c |}                 {c |} {it:l}_{it:n} {c |}
                     {c BLC}     {c BRC}                 {c BLC}     {c BRC}
                     ({it:n x n})                 ({it:n x} 1)

{p 4 4 2}
例如， 

	{cmd:: A = (1, 2 \ 9, 4)}
	{cmd:: X = .}
	{cmd:: L = .}
	{cmd:: lefteigensystem(A, X, L)}

	{cmd:: X}
	                 1             2
	    {c TLC}{hline 29}{c TRC}
	  1 {c |}  -.832050294   -.554700196  {c |}
	  2 {c |}  -.948683298    .316227766  {c |}
	    {c BLC}{hline 29}{c BRC}

	{cmd:: L}
	        1
	    {c TLC}{hline 6}{c TRC}
	  1 {c |}   7  {c |}
	  2 {c |}  -2  {c |}
	    {c BLC}{hline 6}{c BRC}

{p 4 4 2}
第一个特征值为 7，对应的特征向量为 
(-.832, -.555)。
第二个特征值为 -2，对应的特征向量为 
(-.949, .316)。

{p 4 4 2}
特征值与先前示例中的相同；特征向量则不同。


{marker remarks3}{...}
{title:对称特征系统}

{p 4 4 2}
在此，我们使用对称来涵盖 
{help m6_glossary##hermitianmtx:厄米矩阵}，即使我们没有强调这一点。

{p 4 4 2}
对称矩阵的特征系统在概念上与一般特征系统没有不同，但对称性引入了某些简化：

{p 8 12 2}
    1.  关联于对称矩阵的特征值是实数，而关联于一般矩阵的特征值可以是实数或复数。

{p 8 12 2}
    2.  关联于对称矩阵的特征向量 -- 可以是实数或复数 -- 是正交的。

{p 8 12 2}
    3.  对称矩阵的左特征向量和右特征向量是彼此的转置。  

{p 8 12 2}
    4.  对称矩阵的特征向量和特征值计算起来更简单、也更准确。

{p 4 4 2}
关于第 3 点，让我们从右特征系统问题开始：

			{it:A}{it:X} = {it:X}*diag({it:L})

{p 4 4 2}
对两边取转置可得

			{it:X}{bf:'}{it:A} = diag({it:L})*{it:X}{bf:'}

{p 4 4 2}
因为如果 {it:A} 是对称的（厄米的），则 {it:A}={it:A}{bf:'}。  

{p 4 4 2}
{cmd:symeigensystem(}{it:A}{cmd:,} {it:X}{cmd:,} {it:L}{cmd:)} 
计算右特征向量。要获得左特征向量，只需转置 {it:X} 即可。


{marker remarks4}{...}
{title:归一化和顺序}

{p 4 4 2}
如果 {it:x} 是以下方程的解：

			{it:A}{it:x} = {it:l}{it:x}

{p 4 4 2} 
则 {it:c}{it:x} 也是一解，其中 {it:c}: 1 {it:x} 1，且 {it:c}!=0。  

{p 4 4 2}
上述例程返回的特征向量缩放至长度（范数）为 1。

{p 4 4 2}
特征值以向量（{it:L}）的形式组合返回，特征向量则以矩阵（{it:X}）的形式返回。特征值按绝对值从大到小排序（或者，如果特征值是复数，则按模排序）。特征向量的排序与特征值相对应。


{marker remarks5}{...}
{title:特征值条件}

{p 4 4 2}
可选参数 {it:rcond} 可以指定为非 0 或缺失的值 -- 推荐使用 {it:rcond}=1 -- 然后 {it:rcond} 将填充为包含特征值的倒数条件数的向量。 {it:rcond} 的每个元素衡量相应特征值计算的精确度；大数值（接近 1 的数）更好，而小数值（接近 0 的数）则表明不准确。

{p 4 4 2}
倒数条件数的计算为 abs({it:y}*{it:x})，其中 {it:y}: 1 {it:x} {it:n} 是左特征向量，{it:x}: {it:n} {it:x} 1 是相应的右特征向量。由于 {it:y} 和 {it:x} 的范数均为 1，因此 abs({it:y}*{it:x})=abs(cos({it:theta}))，其中 {it:theta} 是两个向量形成的角度。因此 0<=abs({it:y}*{it:x})<=1。对于对称矩阵，{it:y}*{it:x} 将等于 1。可以证明，abs({it:y}*{it:x}) 是简单特征值的倒数条件数，因此特征值对微扰的灵敏度是矩阵在该比例上距离对称的函数。

{p 4 4 2}
请求计算 {it:rcond} 会显著增加计算量。


{marker remarks6}{...}
{title:平衡}

{p 4 4 2}
默认情况下，对于一般矩阵会进行平衡。可选参数 {it:nobalance} 允许您抑制平衡。

{p 4 4 2}
平衡与行列均衡相关；见 {bf:{help mf__equilrc_zh:[M-5] _equilrc()}}。在此情况下，找到一个对角矩阵 {it:D}，使得 {it:DAD}^(-1) 的平衡性更好，从 {it:DAD}^(-1) 中提取特征向量和特征值，然后通过 {it:D} 调整特征向量和特征值，以反映原始 {it:A} 矩阵的特征向量和特征值。

{p 4 4 2}
当 {it:A} 是对称时，这些操作没有好处，因此对称例程没有 {it:nobalance} 参数。


{marker remarks7}{...}
{title:eigensystem() 和 eigenvalues()}

{p 4 8 2}
1.  对于一般矩阵 {it:A}，使用 {it:L} = {cmd:eigenvalues(}{it:A}{cmd:)} 和 
    {cmd:eigensystem(}{it:A}{cmd:,} {it:X}{cmd:,} {it:L}{cmd:)}。

{p 4 8 2}
2.  当您不需要特征向量时，使用 {it:L} = {cmd:eigenvalues(}{it:A}{cmd:)}；这将节省时间和内存。

{p 4 8 2}
3.  {it:L} = {cmd:eigenvalues(}{it:A}{cmd:)} 和 {cmd:eigensystem(}{it:A}{cmd:,} {it:X}{cmd:,} {it:L}{cmd:)} 返回的特征值为复数存储类型，即使特征值为实数（即 {cmd:Im(}{it:L}{cmd:)==0）。如果已知特征值为实数，您可以通过后续代码

		{cmd:L = Re(L)}

{p 8 8 2}
    来节省计算机内存。

{p 4 8 2}
    如果您希望测试特征值是否为实数，请检查 
    {cmd:mreldifre(}{it:L}{cmd:)}； 
    请参见 {bf:{help mf_reldif_zh:[M-5] reldif()}}。

{p 4 8 2}
4.  {cmd:eigensystem(}{it:A}{cmd:,} {it:X}{cmd:,} {it:L}{cmd:)} 返回的特征向量为复数存储类型，即使特征向量为实数（即 {cmd:Im(}{it:X}{cmd:)==0）。如果已知特征向量为实数，您可以通过后续代码

		{cmd:X = Re(X)}

{p 8 8 2}
    来节省计算机内存。

{p 4 8 2}
    如果您希望测试特征向量是否为实数，请检查 
    {cmd:mreldifre(}{it:X}{cmd:)};
    请参见 {bf:{help mf_reldif_zh:[M-5] reldif()}}。

{p 4 8 2}
5.  如果您在交互式使用 
    {cmd:eigensystem(}{it:A}{cmd:,} {it:X}{cmd:,} {it:L}{cmd:)}
    （在程序外），则必须预先定义 {it:X} 和 {it:L}。
    输入：

		{cmd:: eigensystem(A, X=., L=.)}


{marker remarks8}{...}
{title:lefteigensystem()}

{p 4 4 2}
关于 {cmd:eigensystem()} 的讨论同样适用于 
{cmd:lefteigensystem()}。  

{p 4 4 2}
如果您只需要特征值，使用 
{it:L} = {cmd:eigenvalues(}{it:A}{cmd:)}。左系统和右系统的特征值相同。


{marker remarks9}{...}
{title:symeigensystem() 和 symeigenvalues()}

{p 4 8 2}
1.  对于对称或厄米矩阵 {it:A}，使用 {it:L} = {cmd:symeigenvalues(}{it:A}{cmd:)} 和 
    {cmd:symeigensystem(}{it:A}{cmd:,} {it:X}{cmd:,} {it:L}{cmd:)}。

{p 4 8 2}
2.  当您不需要特征向量时，使用 {it:L} = {cmd:symeigenvalues(}{it:A}{cmd:)}；这将节省时间和内存。

{p 4 8 2}
3.  {it:L} = {cmd:symeigenvalues(}{it:A}{cmd:)} 和 {cmd:symeigensystem(}{it:A}{cmd:,} {it:X}{cmd:,} {it:L}{cmd:)} 返回的特征值为实数存储类型。对称和厄米矩阵的特征值始终为实数。

{p 4 8 2}
4.  {cmd:symeigensystem(}{it:A}{cmd:,} {it:X}{cmd:,} {it:L}{cmd:)} 返回的特征向量在 {it:A} 为实数存储类型时为实数存储类型，而在 {it:A} 为复数存储类型时为复数存储类型。

{p 4 8 2}
5.  如果您在交互式使用 
    {cmd:symeigensystem(}{it:A}{cmd:,} {it:X}{cmd:,} {it:L}{cmd:)}
    （在程序外），则必须预先定义 {it:X} 和 {it:L}。
    输入：

		{cmd:: symeigensystem(A, X=., L=.)}


{marker conformability}{...}
{title:相容性}

{p 4 4 2}
{cmd:eigensystem(}{it:A}{cmd:,} 
{it:X}{cmd:,} 
{it:L}{cmd:,} 
{it:rcond}{cmd:,} 
{it:nobalance}{cmd:)}:
{p_end}
	{it:输入:}
		{it:A}:  {it:n x n}
	    {it:rcond}:  1 {it:x} 1  （可选，指定为 1 以获取 {it:rcond}）
	{it:nobalance}:  1 {it:x} 1  （可选，指定为 1 以防止平衡）
	{it:输出:}
		{it:X}:  {it:n x n}  （列包含特征向量）
		{it:L}:  1 {it:x n}
	    {it:rcond}:  1 {it:x n}  （可选）
	   {it:结果}:  {it:void}

{p 4 4 2}
{cmd:lefteigensystem(}{it:A}{cmd:,} {it:X}{cmd:,} {it:L}{cmd:,} 
{it:rcond}{cmd:,} 
{it:nobalance}{cmd:)}:
{p_end}
	{it:输入:}
		{it:A}:  {it:n x n}
	    {it:rcond}:  1 {it:x} 1  （可选，指定为 1 以获取 {it:rcond}）
	{it:nobalance}:  1 {it:x} 1  （可选，指定为 1 以防止平衡）
	{it:输出:}
		{it:X}:  {it:n x n}  （行包含特征向量）
		{it:L}:  {it:n x} 1
	    {it:rcond}:  {it:n x} 1  （可选）
	   {it:结果}:  {it:void}

{p 4 4 2}
{cmd:eigenvalues(}{it:A}{cmd:,} 
{it:rcond}{cmd:,} 
{it:nobalance}{cmd:)}:
{p_end}
	{it:输入:}
		{it:A}:  {it:n x n}
	    {it:rcond}:  1 {it:x} 1  （可选，指定为 1 以获取 {it:rcond}）
	{it:nobalance}:  1 {it:x} 1  （可选，指定为 1 以防止平衡）
	{it:输出:}
	    {it:rcond}:  1 {it:x n}  （可选）
	   {it:结果}:  1 {it:x n}  （包含特征值）


    {cmd:symeigensystem(}{it:A}{cmd:,} {it:X}{cmd:,} {it:L}{cmd:)}:
	{it:输入:}
		{it:A}:  {it:n x n}
	{it:输出:}
		{it:X}:  {it:n x n}  （列包含特征向量）
		{it:L}:  1 {it:x n}
	   {it:结果}:  {it:void}

    {cmd:symeigenvalues(}{it:A}{cmd:)}:
	{it:输入:}
		{it:A}:  {it:n x n}
	{it:输出:}
	   {it:结果}:  1 {it:x n}  （包含特征值）

{p 4 4 2}
{cmd:_eigensystem(}{it:A}{cmd:,} 
{it:X}{cmd:,} 
{it:L}{cmd:,} 
{it:rcond}{cmd:,} 
{it:nobalance}{cmd:)}:
{p_end}
	{it:输入:}
		{it:A}:  {it:n x n}
	    {it:rcond}:  1 {it:x} 1  （可选，指定为 1 以获取 {it:rcond}）
	{it:nobalance}:  1 {it:x} 1  （可选，指定为 1 以防止平衡）
	{it:输出:}
		{it:A}:  0 {it:x} 0
		{it:X}:  {it:n x n}  （列包含特征向量）
		{it:L}:  1 {it:x n}
	    {it:rcond}:  1 {it:x n}  （可选）
	   {it:结果}:  {it:void}

{p 4 4 2}
{cmd:_lefteigensystem(}{it:A}{cmd:,} {it:X}{cmd:,} 
{it:L}{cmd:,} {it:rcond}{cmd:,} {it:nobalance}{cmd:)}:
{p_end}
	{it:输入:}
		{it:A}:  {it:n x n}
	    {it:rcond}:  1 {it:x} 1  （可选，指定为 1 以获取 {it:rcond}）
	{it:nobalance}:  1 {it:x} 1  （可选，指定为 1 以防止平衡）
	{it:输出:}
		{it:A}:  0 {it:x} 0 
		{it:X}:  {it:n x n}  （行包含特征向量）
		{it:L}:  {it:n x} 1
	    {it:rcond}:  {it:n x} 1  （可选）
	   {it:结果}:  {it:void}

{p 4 4 2}
{cmd:_eigenvalues(}{it:A}{cmd:,} 
{it:rcond}{cmd:,} {it:nobalance}{cmd:)}:
{p_end}
	{it:输入:}
		{it:A}:  {it:n x n}
	    {it:rcond}:  1 {it:x} 1  （可选，指定为 1 以获取 {it:rcond}）
	{it:nobalance}:  1 {it:x} 1  （可选，指定为 1 以防止平衡）
	{it:输出:}
		{it:A}:  0 {it:x} 0
	    {it:rcond}:  1 {it:x n}  （可选）
	   {it:结果}:  1 {it:x n}  （包含特征值）

{p 4 4 2}
{cmd:_symeigensystem(}{it:A}{cmd:,} {it:X}{cmd:,} {it:L}{cmd:)}:
{p_end}
	{it:输入:}
		{it:A}:  {it:n x n}
	{it:输出:}
		{it:A}:  0 {it:x} 0
		{it:X}:  {it:n x n}  （列包含特征向量）
		{it:L}:  1 {it:x n}
	   {it:结果}:  {it:void}

    {cmd:_symeigenvalues(}{it:A}{cmd:)}:
	{it:输入:}
		{it:A}:  {it:n x n}
	{it:输出:}
		{it:A}:  0 {it:x} 0 
	   {it:结果}:  1 {it:x n}  （包含特征值）

{p 4 4 2}
{cmd:_eigen_la(}{it:todo}{cmd:,}
{it:A}{cmd:,}
{it:X}{cmd:,}
{it:L}{cmd:,}
{it:rcond}{cmd:,}
{it:nobalance}{cmd:)}:
{p_end}
	{it:输入:}
	     {it:todo}:  1 {it:x} 1
		{it:A}:  {it:n x n}
	    {it:rcond}:  1 {it:x} 1
	{it:nobalance}:  1 {it:x} 1
	{it:输出:}
		{it:A}:  0 {it:x} 0 
		{it:X}:  {it:n x n}
		{it:L}:  1 {it:x n}  或  {it:n x} 1
	    {it:rcond}:  1 {it:x n}  或  {it:n x} 1  （可选）
	   {it:结果}:  1 {it:x} 1  （返回代码）

{p 4 4 2}
{cmd:_symeigen_la(}{it:todo}{cmd:,}
{it:A}{cmd:,}
{it:X}{cmd:,}
{it:L}{cmd:)}:
{p_end}
	{it:输入:}
	     {it:todo}:  1 {it:x} 1
		{it:A}:  {it:n x n}
	{it:输出:}
		{it:A}:  0 {it:x} 0 
		{it:X}:  {it:n x n}
		{it:L}:  1 {it:x n}
	   {it:结果}:  1 {it:x} 1  （返回代码）


{marker diagnostics}{...}
{title:诊断}

{p 4 4 2}
如果 {it:A} 有缺失值，所有函数将返回缺失值结果。

{p 4 4 2}
{cmd:symeigensystem()},
{cmd:symeigenvalues()},
{cmd:_symeigensystem()}，以及
{cmd:_symeigenvalues()} 
在未检查对称性时使用 {it:A} 的下三角。
当 {it:A} 为复数时，仅使用对角线的实部。


{marker source}{...}
{title:源代码}

{p 4 4 2}
{view eigensystem.mata, adopath asis:eigensystem.mata},
{view lefteigensystem.mata, adopath asis:lefteigensystem.mata},
{view eigenvalues.mata, adopath asis:eigenvalues.mata},
{view symeigensystem.mata, adopath asis:symeigensystem.mata},
{view symeigenvalues.mata, adopath asis:symeigenvalues.mata},
{view _eigensystem.mata, adopath asis:_eigensystem.mata},
{view _lefteigensystem.mata, adopath asis:_lefteigensystem.mata},
{view _eigenvalues.mata, adopath asis:_eigenvalues.mata},
{view _symeigensystem.mata, adopath asis:_symeigensystem.mata},
{view _symeigenvalues.mata, adopath asis:_symeigenvalues.mata},
{view _eigen_work.mata, adopath asis:_eigen_work.mata},
{view _symeigen_work.mata, adopath asis:_symeigen_work.mata}

{p 4 4 2}
{cmd:_eigen_la()} 
和 
{cmd:_symeigen_la()} 
是内置函数。
{p_end}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <mf_eigensystem.sthlp>}