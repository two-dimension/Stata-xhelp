{smcl}
{* *! version 1.1.4  15may2018}{...}
{vieweralsosee "[M-5] solvelower()" "mansection M-5 solvelower()"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[M-5] cholsolve()" "help mf_cholsolve_zh"}{...}
{vieweralsosee "[M-5] lusolve()" "help mf_lusolve_zh"}{...}
{vieweralsosee "[M-5] qrsolve()" "help mf_qrsolve_zh"}{...}
{vieweralsosee "[M-5] solve_tol()" "help mf_solve_tol_zh"}{...}
{vieweralsosee "[M-5] svsolve()" "help mf_svsolve_zh"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[M-4] Matrix" "help m4_matrix_zh"}{...}
{viewerjumpto "Syntax" "mf_solvelower_zh##syntax"}{...}
{viewerjumpto "Description" "mf_solvelower_zh##description"}{...}
{viewerjumpto "Links to PDF documentation" "mf_solvelower_zh##linkspdf"}{...}
{viewerjumpto "Remarks" "mf_solvelower_zh##remarks"}{...}
{viewerjumpto "Conformability" "mf_solvelower_zh##conformability"}{...}
{viewerjumpto "Diagnostics" "mf_solvelower_zh##diagnostics"}{...}
{viewerjumpto "Source code" "mf_solvelower_zh##source"}
{help mf_solvelower:English Version}
{hline}{...}
{p2colset 1 23 25 2}{...}
{p2col:{bf:[M-5] solvelower()} {hline 2}}求解 \(AX=B\)  其中 \(A\) 为三角矩阵
{p_end}
{p2col:}({mansection M-5 solvelower():查看完整的PDF手册条目}){p_end}
{p2colreset}{...}


{marker syntax}{...}
{title:语法}

{p 8 12 2}
{it:数值矩阵}
{cmd:solvelower(}{it:A}{cmd:,}
{it:B} 
[{cmd:,} {it:rank}
[{cmd:,} {it:tol}
[{cmd:,} {it:d}
]]]{cmd:)}

{p 8 12 2}
{it:数值矩阵}
{cmd:solveupper(}{it:A}{cmd:,}
{it:B} 
[{cmd:,} {it:rank}
[{cmd:,} {it:tol}
[{cmd:,} {it:d}
]]]{cmd:)}


{p 8 12 2}
{it:实标量}{bind:  }
{cmd:_solvelower(}{it:A}{cmd:,}
{it:B}
[{cmd:,} {it:tol}
[{cmd:,} {it:d}]]{cmd:)}

{p 8 12 2}
{it:实标量}{bind:  }
{cmd:_solveupper(}{it:A}{cmd:,}
{it:B}
[{cmd:,} {it:tol}
[{cmd:,} {it:d}]]{cmd:)}


{p 4 4 2}
其中

{p 24 24 2}
		{it:A}:  {it:数值矩阵}

{p 24 24 2}
		{it:B}:  {it:数值矩阵}

{p 21 24 2}
	     {it:rank}:  无关紧要；返回 {it:实标量}

{p 22 24 2}
	      {it:tol}:  {it:实标量}

{p 24 24 2}
		{it:d}:  {it:数值标量}


{marker description}{...}
{title:描述}

{p 4 4 2}
这些函数用于其他求解函数的实现；请参见 
{bf:{help mf_lusolve_zh:[M-5] lusolve()}},
{bf:{help mf_qrsolve_zh:[M-5] qrsolve()}}, 和
{bf:{help mf_svsolve_zh:[M-5] svsolve()}}。

{p 4 4 2}
{cmd:solvelower(}{it:A}{cmd:,} {it:B}{cmd:,} ...{cmd:)} 和 
{cmd:_solvelower(}{it:A}{cmd:,} {it:B}{cmd:,} ...{cmd:)} 
解决下三角系统。

{p 4 4 2}
{cmd:solveupper(}{it:A}{cmd:,} {it:B}{cmd:,} ...{cmd:)} 和 
{cmd:_solveupper(}{it:A}{cmd:,} {it:B}{cmd:,} ...{cmd:)} 
解决上三角系统。

{p 4 4 2}
没有前置下划线的函数——{cmd:solvelower()} 和
{cmd:solveupper()}——返回解；{it:A} 和 {it:B} 保持不变。

{p 4 4 2}
带有前置下划线的函数——{cmd:_solvelower()} 和
{cmd:_solveupper()}——返回的解存放在 {it:B} 中。

{p 4 4 2}
如果 {it:A} 是奇异的，所有四个函数都会生成广义解。
没有下划线的函数会将 {it:A} 的秩放入指定的 {it:rank} 中。
带下划线的函数返回秩。

{p 4 4 2}
奇异性的判断通过 {it:tol} 进行。{it:tol} 以标准方式解释——如果指定了 {it:tol}>0，则作为默认值的乘数；如果指定了 {it:tol}<=0，则作为绝对量替代默认值使用。

{p 4 4 2}
所有四个函数都允许自定义指定 {it:d}。
指定 {it:d}=. 相当于不指定 {it:d}。

{p 4 4 2}
如果指定了 {it:d}!=.，该值会被用作 {it:A} 的对角线元素。
四个函数实际上并不要求 {it:A} 为三角形；它们只是查看下三角或上三角，并假装对角的另一侧为零。这个特性在分解工具将下三角和上三角存储在一个矩阵时非常有用，因为你不需要拆分合并的矩阵。
在这种情况下，通常发生的情况是矩阵的对角线对应于一个矩阵而不是另一个矩阵，并且对于另一个矩阵，你只知道对角元素是，例如，1。这样你可以指定 {it:d}=1。


{marker linkspdf}{...}
{title:PDF文档链接}

        {mansection M-5 solvelower()Remarksandexamples:备注和示例}

{pstd}
上述部分不包含在此帮助文件中。


{marker remarks}{...}
{title:备注}

{p 4 4 2}
这里文档中的三角求解函数利用了 {it:A} 的三角结构，通过递归替代求解 {it:X}。

{p 4 4 2}
当 {it:A} 的秩为满秩时，这些函数提供与其他求解函数（例如 
{bf:{help mf_lusolve_zh:[M-5] lusolve()}},
{bf:{help mf_qrsolve_zh:[M-5] qrsolve()}}, 和
{bf:{help mf_svsolve_zh:[M-5] svsolve()}}）相同的解。
然而，{cmd:solvelower()} 和 {cmd:solveupper()} 函数会由于计算节省而更快地得出答案。

{p 4 4 2}
然而，当 {it:A} 是奇异的时候，你可能需要考虑是否使用这些三角求解函数。这里文档中描述的三角求解函数通过将 {it:B}[{it:i},{it:j}]=0，为所有 {it:j} 产生一个广义解，当 {it:A}[{it:i},{it:i}] 为零或太小（由 {it:tol} 确定）时。该方法生成一个广义逆，但是存在许多广义逆，这个可能没有你想要的其他属性。

{p 4 4 2}
备注以以下标题呈现：

	{help mf_solvelower##remarks1:推导}
	{help mf_solvelower##remarks2:容差}


{marker remarks1}{...}
{title:推导}

{p 4 4 2}
我们希望求解 

		{it:A}{it:X} = {it:B}{right:(1)    }

{p 4 4 2}
当 {it:A} 为三角形时。我们先考虑下三角形情况。
{cmd:solvelower()} 处理 {it:B} 和 {it:X} 的完整矩阵，但假设
{it:X}: {it:n} {it:x} 1 和  
{it:B}: {it:m} {it:x} 1:

	      {c TLC}                             {c TRC}  {c TLC}     {c TRC}       {c TLC}     {c TRC}
	      {c |} {it:a_11}     0     0   ...    0 {c |}  {c |} {it:x_1} {c |}       {c |} {it:b_1} {c |}
	      {c |} {it:a_21  a_22}     0   ...    0 {c |}  {c |} {it:x_2} {c |}       {c |} {it:b_2} {c |}
	      {c |}  .      .      .   .      . {c |}  {c |}  .  {c |}   =   {c |}  .  {c |}
	      {c |}  .      .      .      .   . {c |}  {c |}  .  {c |}       {c |}  .  {c |}
	      {c |} {it:a_m1  a_r2  a_r3}   ... {it:a_mn} {c |}  {c |} {it:x_n} {c |}       {c |} {it:b_m} {c |}
	      {c BLC}                             {c BRC}  {c BLC}     {c BRC}       {c BLC}     {c BRC}

{p 4 4 2}
要解决的第一个方程是 

		{it:a_11}*{it:x_1} = {it:b_1}

{p 4 4 2}
解为 

{marker eq2}{...}
		{it:x_1} = {it:b_1}/{it:a_11}{right:(2)    }

{p 4 4 2}
要解决的第二个方程是

		{it:a_21}*{it:x_1}  + {it:a_22}*{it:x_2} = {it:b_2}

{p 4 4 2}
因为我们已经解出了 {it:x_1}，所以解为

{marker eq3}{...}
		{it:x_2} = ({it:b_2} - {it:a_21}*{it:x_1})/{it:a_22}{right:(3)    }

{p 4 4 2}
我们对 {it:A} 的其余行以同样的方式进行。
如果 {it:B} 和 {it:X} 中有额外的列，那么我们可以像上面处理第一列一样处理每剩余的列。

{p 4 4 2}
在上三角形情况下，公式类似，只是从 {it:A} 的最后一行开始。

{marker remarks2}{...}
{title:容差}

{p 4 4 2}
在 {help mf_solvelower##eq2:(2)} 和 {help mf_solvelower##eq3:(3)} 中，我们通过 {it:A} 的对角元素进行除法。
如果元素 {it:a}_{it:ii} 的绝对值小于 {it:eta}，相应的 {it:x}_{it:i} 被设为零。
{it:eta} 的值为 

		{it:eta} = 1e-13 * trace(abs({it:A}))/rows({it:A})

{p 4 4 2}
如果您指定 {it:tol}>0，您指定的值将被用来乘以 {it:eta}。
您也可以指定 {it:tol}<=0，然后您指定的值的相反数将作为 {it:eta}； 
请参见 {bf:{help m1_tolerance_zh:[M-1] 容差}}。


{marker conformability}{...}
{title:相容性}

{p 4 4 2}
{cmd:solvelower(}{it:A}{cmd:,} {it:B}{cmd:,} {it:rank}{cmd:,} {it:tol}{cmd:,} 
{it:d}{cmd:)},
{cmd:solveupper(}{it:A}{cmd:,} {it:B}{cmd:,} {it:rank}{cmd:,} {it:tol}{cmd:,} 
{it:d}{cmd:)}:
{p_end}
	{it:输入:}
		{it:A}:  {it:n x n}
		{it:B}:  {it:n x k}
	      {it:tol}:  1 {it:x} 1    （可选）
	        {it:d}:  1 {it:x} 1    （可选）
	{it:输出:}
             {it:rank}:  1 {it:x} 1    （可选）
	   {it:result}:  {it:n x k}

{p 4 4 2}
{cmd:_solvelower(}{it:A}{cmd:,} {it:B}{cmd:,} {it:tol}{cmd:,} {it:d}{cmd:)},
{cmd:_solveupper(}{it:A}{cmd:,} {it:B}{cmd:,} {it:tol}{cmd:,} {it:d}{cmd:)}:
{p_end}
	{it:输入:}
		{it:A}:  {it:n x n}
		{it:B}:  {it:n x k}
	      {it:tol}:  1 {it:x} 1    （可选）
	        {it:d}:  1 {it:x} 1    （可选）
	{it:输出:}
		{it:B}:  {it:n x k}
	   {it:result}:  1 {it:x} 1    （包含秩）


{marker diagnostics}{...}
{title:诊断}

{p 4 4 2}
{cmd:solvelower(}{it:A}{cmd:,} {it:B}{cmd:,} ...{cmd:)}, 
{cmd:_solvelower(}{it:A}{cmd:,} {it:B}{cmd:,} ...{cmd:)}, 
{cmd:solveupper(}{it:A}{cmd:,} {it:B}{cmd:,} ...{cmd:)}, 和
{cmd:_solveupper(}{it:A}{cmd:,} {it:B}{cmd:,} ...{cmd:)}
并没有验证 {it:A} 的上（下）三角是否包含零；它们只是使用 {it:A} 的下（上）三角。

{p 4 4 2}
{cmd:_solvelower(}{it:A}{cmd:,} {it:B}{cmd:,} ...{cmd:)} 和 
{cmd:_solveupper(}{it:A}{cmd:,} {it:B}{cmd:,} ...{cmd:)}
不会因为 {it:B} 是一个视图而中止，但可能会产生相当大的舍入误差结果。


{marker source}{...}
{title:源代码}

{p 4 4 2}
{view solvelower.mata, adopath asis:solvelower.mata},
{view solveupper.mata, adopath asis:solveupper.mata},
{view _solvelower.mata, adopath asis:_solvelower.mata},
{view _solveupper.mata, adopath asis:_solveupper.mata}
{p_end}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <mf_solvelower.sthlp>}