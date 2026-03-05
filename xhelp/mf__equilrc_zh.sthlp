{smcl}
{* *! version 1.1.5  15may2018}{...}
{vieweralsosee "[M-5] _equilrc()" "mansection M-5 _equilrc()"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[M-4] 矩阵" "help m4_matrix_zh"}{...}
{viewerjumpto "语法" "mf__equilrc_zh##syntax"}{...}
{viewerjumpto "描述" "mf__equilrc_zh##description"}{...}
{viewerjumpto "链接到 PDF 文档" "mf__equilrc_zh##linkspdf"}{...}
{viewerjumpto "备注" "mf__equilrc_zh##remarks"}{...}
{viewerjumpto "适配性" "mf__equilrc_zh##conformability"}{...}
{viewerjumpto "诊断" "mf__equilrc_zh##diagnostics"}{...}
{viewerjumpto "源代码" "mf__equilrc_zh##source"}
{help mf__equilrc:English Version}
{hline}{...}
{p2colset 1 21 23 2}{...}
{p2col:{bf:[M-5] _equilrc()} {hline 2}}行和列的均衡化
{p_end}
{p2col:}({mansection M-5 _equilrc():查看完整 PDF 手册条目}){p_end}
{p2colreset}{...}


{marker syntax}{...}
{title:语法}

{p 8 12 2}
{it:void}{bind:         }
{cmd:_equilrc(}{it:数值矩阵 A}{cmd:,}
{it:r}{cmd:,}
{it:c}{cmd:)}

{p 8 12 2}
{it:void}{bind:         }
{cmd:_equilr(}{it:数值矩阵 A}{cmd:,}
{it:r}{cmd:)}

{p 8 12 2}
{it:void}{bind:         }
{cmd:_equilc(}{it:数值矩阵 A}{cmd:,}
{it:c}{cmd:)}


{p 8 12 2}
{it:实标量}{bind:  }
{cmd:_perhapsequilrc(}{it:数值矩阵 A}{cmd:,}
{it:r}{cmd:,}
{it:c}{cmd:)}

{p 8 12 2}
{it:实标量}{bind:  }
{cmd:_perhapsequilr(}{it:数值矩阵 A}{cmd:,}
{it:r}{cmd:)}

{p 8 12 2}
{it:实标量}{bind:  }
{cmd:_perhapsequilc(}{it:数值矩阵 A}{cmd:,}
{it:c}{cmd:)}


{p 8 12 2}
{it:实列向量}
{cmd:rowscalefactors(}{it:数值矩阵 A}{cmd:)}

{p 8 12 2}
{it:实行向量}
{cmd:colscalefactors(}{it:数值矩阵 A}{cmd:)}


{p 4 4 2}
{it:r} 和 {it:c} 的类型无关紧要，因为它们会被重写。


{marker description}{...}
{title:描述}

{p 4 4 2}
{cmd:_equilrc(}{it:A}{cmd:,} {it:r}{cmd:,} {it:c}{cmd:)}
对矩阵 {it:A} 执行行和列的均衡化（平衡），
将均衡化后的矩阵返回到 {it:A}，并将行缩放因子返回到
{it:r}，列缩放因子返回到 {it:c}。

{p 4 4 2}
{cmd:_equilr(}{it:A}{cmd:,} {it:r}{cmd:)}
对矩阵 {it:A} 执行行均衡化，
将行均衡化后的矩阵返回到 {it:A} 和行缩放因子返回到
{it:r}。

{p 4 4 2}
{cmd:_equilc(}{it:A}{cmd:,} {it:c}{cmd:)}
对矩阵 {it:A} 执行列均衡化，
将列均衡化后的矩阵返回到 {it:A} 和列缩放因子返回到 {it:c}。

{p 4 4 2}
{cmd:_perhapsequilrc(}{it:A}{cmd:,} {it:r}{cmd:,} {it:c}{cmd:)}
对矩阵 {it:A} 执行行和/或列均衡化——如有必要，具体由 {cmd:_perhapsequilrc()} 
决定——将均衡化后的矩阵返回到 {it:A}，行缩放因子返回到 {it:r}，
列缩放因子返回到 {it:c}，并返回 0（未执行均衡化）、1（执行了行均衡化）、2（执行了列均衡化），或 3（执行了行和列均衡化）。

{p 4 4 2}
{cmd:_perhapsequilr(}{it:A}{cmd:,} {it:r}{cmd:)}
对矩阵 {it:A} 执行行均衡化——如有必要，具体由 {cmd:_perhapsequilr()} 
决定——将均衡化后的矩阵返回到 {it:A}，行缩放因子返回到 {it:r}，
并返回 0（未执行均衡化）或 1（执行了行均衡化）。

{p 4 4 2}
{cmd:_perhapsequilc(}{it:A}{cmd:,} {it:c}{cmd:)}
对矩阵 {it:A} 执行列均衡化——如有必要，具体由 {cmd:_perhapsequilc()} 
决定——将均衡化后的矩阵返回到 {it:A}，列缩放因子返回到 {it:c}，
并返回 0（未执行均衡化）或 1（执行了列均衡化）。

{p 4 4 2}
{cmd:rowscalefactors(}{it:A}{cmd:)} 
返回 {it:A} 的行缩放因子。

{p 4 4 2}
{cmd:colscalefactors(}{it:A}{cmd:)} 
返回 {it:A} 的列缩放因子。


{marker linkspdf}{...}
{title:链接到 PDF 文档}

        {mansection M-5 _equilrc()备注和示例:备注和示例}

{pstd}
以上部分未包含在此帮助文件中。


{marker remarks}{...}
{title:备注}

{p 4 4 2}
备注分为以下几个主题：

	{help mf__equilrc##remarks1:介绍}
	{help mf__equilrc##remarks2:均衡化是必要的吗？}
	{help mf__equilrc##remarks3:_equil*() 函数系列}
	{help mf__equilrc##remarks4:_perhapsequil*() 函数系列}
	{help mf__equilrc##remarks5:rowscalefactors() 和 colscalefactors()}


{marker remarks1}{...}
{title:介绍}

{p 4 4 2}
均衡化（也称为平衡）对具有规模不佳的行和列的矩阵进行处理，例如 

	                 1             2
	    {c TLC}{hline 29}{c TRC}
	  1 {c |}  1.00000e+10   5.00000e+10  {c |}
	  2 {c |}  2.00000e-10   8.00000e-10  {c |}
	    {c BLC}{hline 29}{c BRC}

{p 4 4 2} 
并生成一个相关矩阵，例如 

	         1     2
	    {c TLC}{hline 13}{c TRC}
	  1 {c |}   .2     1  {c |}
	  2 {c |}  .25     1  {c |}
	    {c BLC}{hline 13}{c BRC}

{p 4 4 2} 
这将提高在求解线性系统时的精度。  上面的改进矩阵已经进行了行均衡化。  我们所做的只是找到原矩阵每行的最大值，然后用其最大值除以该行。如果我们对结果重复这个过程在列上——用列的最大值除以每一列——我们将得到

	        1    2
	    {c TLC}{hline 11}{c TRC}
	  1 {c |}  .8    1  {c |}
	  2 {c |}   1    1  {c |}
	    {c BLC}{hline 11}{c BRC}

{p 4 4 2}
这就是原矩阵的行和列均衡化形式。

{p 4 4 2}
就矩阵符号而言，均衡化可以通过与对角矩阵相乘来考虑。
矩阵 {it:A} 的行均衡化形式为 {it:R}{it:A}，其中 {it:R} 的对角线上包含行最大值的倒数。 列均衡化形式为 {it:A}{it:C}，其中 {it:C} 的对角线上包含列最大值的倒数。 矩阵 {it:A} 的行和列均衡化形式为 {it:RAC}，其中 {it:R} 的对角线上包含 {it:A} 行最大值的倒数，而 {it:C} 的对角线上包含 {it:RA} 列最大值的倒数。

{p 4 4 2}
假设我们希望找到线性系统的解 {it:x} 

		{it:Ax} = {it:b}

{p 4 4 2}
我们可以通过在均衡系统中求解 {it:y} 

		({it:RAC}){it:y} = {it:Rb}

{p 4 4 2}
然后设置 

		{it:x} = {it:Cy}

{p 4 4 2}
因此，执行均衡化的例程需要以某种方式将 {it:R} 和 {it:C} 返回给你。  这里的例程通过返回 
{it:r} 和 {it:c}，这两个是最大值的倒数以向量形式返回。
你可以通过编码 

		{it:R} = {cmd:diag(}{it:r}{cmd:)}
		{it:C} = {cmd:diag(}{it:c}{cmd:)}

{p 4 4 2}
但这通常不是必需的，并且会浪费内存。在代码中，
你将需要乘以 {it:R} 和 {it:C}，你可以使用 {cmd::*} 运算符与 {it:r} 和 {it:c} 进行操作：

		{it:RA}      <->     {it:r}{cmd::*}{it:A}
		{it:AC}      <->     {it:A}{cmd::*}{it:c}
		{it:RAC}     <->     {it:r}{cmd::*}{it:A}{cmd::*}{it:c}


{marker remarks2}{...}
{title:均衡化是必要的吗？}

{p 4 4 2}
均衡化并不是灵丹妙药。均衡化可以降低某些矩阵的条件数，从而提高线性系统解的精度，但均衡化并不能保证降低条件数，并且存在反例表明均衡化实际上降低了解的精度。  也就是说，你必须仔细寻找才能找到这样的例子。

{p 4 4 2}
均衡化并不是特别耗费计算资源，但也不便宜，尤其是当你考虑使用均衡矩阵的额外计算成本时。在统计上下文中，均衡化可能带来的好处有限，因为矩阵已经接近均衡。数据分析师知道变量应该在大致相同的尺度上，观察值被假定为来自一个潜在分布。在均衡化的计算成本上，可能在其他地方花费更好。例如，考虑从 {it:X}{bf:'}{it:X} 和 {it:X}{bf:'}{it:y} 中获得回归估计。均衡 {it:X}{bf:'}{it:X} 和 {it:X}{bf:'}{it:y} 的收益远不及在形成 {it:X}{bf:'}{it:X} 和 {it:X}{bf:'}{it:y} 之前去掉均值的收益。

{p 4 4 2}
在上一节的例子中，我们向你展示了 一个毫无疑问从均衡化中受益的矩阵。即便如此，
在行均衡化后，列均衡化是多余的。
通常情况下，仅行或列的均衡化就足够，而在这些情况下，尽管额外的均衡化不会对数值产生伤害，但它会消耗计算周期。而且，正如我们已经论证的，有些矩阵根本不需要均衡化。

{p 4 4 2}
因此，想要利用均衡化并获得最佳速度的程序员会检查矩阵并根据实际情况执行 (1) 不均衡化，(2) 行均衡化，(3) 列均衡化，或 (4) 两者均衡化。然后，他们会在后续代码中编写四个分支，以有效处理每种情况。

{p 4 4 2}
在确定均衡化是否必要时，可以通过 
{cmd:min(}{it:r}{cmd:)}/{cmd:max(}{it:r}{cmd:)} 和
{cmd:min(}{it:c}{cmd:)}/{cmd:max(}{it:c}{cmd:)}, 其中 {it:r} 和 {it:c} 是缩放因子（行和列最大值的倒数向量）来获得行和列条件。如果这些测量接近 1 (LAPACK 使用 >= .1)，那么可以跳过均衡化。

{p 4 4 2}
还有矩阵的整体规模问题。理论上，整体规模不应该重要，但许多软件包的容限是以绝对而不是相对术语来设定的，因此总体规模确实重要。在 Mata 的大多数其他函数中，使用相对尺度，但是规定你可以以相对或绝对术语来指定容差。在任何情况下，LAPACK 使用的规则是，如果矩阵太小（其最大值小于 {cmd:epsilon(}100{cmd:)}, 约为 2.22045e-14）或太大（大于 1/{cmd:epsilon(}100{cmd:)}, 约 为 4.504e+13），则均衡化是必要的。

{p 4 4 2}
总结来说，

{p 8 12 2}
    1. 在统计应用中，我们认为均衡化消耗了过多的计算时间，并且因其提供的额外精度而增加了代码复杂性。这是一个判断，若计算没有成本，我们可能会推荐使用均衡化。

{p 8 12 2}
    2. 如果你打算使用均衡化，那么在所有情况下均衡化矩阵都没有数值上的错误，包括那些不需要均衡化的情况。这样做的好处在于你将获得均衡化带来的精度，同时保持代码的相对简单。

{p 8 12 2}
    3. 如果你希望最小化执行时间，那么你需要尽可能执行最少的均衡化，并编写代码来有效地处理每种情况： (1) 不均衡化， (2) 行均衡化， (3) 列均衡化，以及 (4) 行和列均衡化。 LAPACK 和 Mata 的 {cmd:_perhapsequil*()} 例程使用的默认值是：

{p 12 16 2}
	    a. 如果 
                 {cmd:min(}{it:r}{cmd:)}/{cmd:max(}{it:r}{cmd:)}<.1，
		 或者如果 
                 {cmd:min(abs(}{it:A}{cmd:))}<{cmd:epsilon(}100{cmd:)},
                 或者如果 
                 {cmd:min(abs(}{it:A}{cmd:))}>1/{cmd:epsilon(}100{cmd:)}，则执行行均衡化。

{p 12 16 2}
            b. 在执行行均衡化后，如果 
                 {cmd:min(}{it:c}{cmd:)}/{cmd:max(}{it:c}{cmd:)}<.1，
                 其中 {it:c} 是在行均衡化过的 {it:A} 上计算的，若已执行行均衡化，则执行列均衡化。


{marker remarks3}{...}
{title:_equil*() 函数系列}

{p 4 4 2}
{cmd:_equil*()} 函数系列执行均衡化，具体如下：

{p 8 27 2}
{cmd:_equilrc(}{it:A}{cmd:,} {it:r}{cmd:,} {it:c}{cmd:)}{bind:  }首先执行行均衡化，然后执行列均衡化；它返回行和列缩放因子，修改 {it:A} 使其成为完全均衡化的矩阵 {it:r}{cmd::*}{it:A}{cmd::*}{it:c}。

{p 8 27 2}
{cmd:_equilr(}{it:A}{cmd:,} {it:r}{cmd:)}{bind:      }只执行行均衡化；它返回行缩放因子，修改 {it:A} 使其成为行均衡化的矩阵 
    {it:r}{cmd::*}{it:A}。

{p 8 27 2}
{cmd:_equilc(}{it:A}{cmd:,} {it:c}{cmd:)}{bind:      }只执行列均衡化；它返回列缩放因子，修改 {it:A} 使其成为列均衡化的矩阵 
    {it:A}{cmd::*}{it:c}。

{p 4 4 2}
以下是使用完全均衡化形式求解 {it:Ax} = {it:b} 的代码，
在此过程中损坏 {it:A}：

		{cmd:_equilrc(A, r, c)}
		{cmd:x = c:*lusolve(A, r:*b)}


{marker remarks4}{...}
{title:_perhapsequil*() 函数系列}

{p 4 4 2}
{cmd:_perhapsequil*()} 函数系列与 {cmd:_equil*()} 相似，
只是这些函数根据上述均衡化是否必要的规则进行操作。

{p 4 4 2}
以下是求解 {it:Ax} = {it:b} 的代码，这可能在
过程中损坏 {it:A}：

		{cmd}result = _perhapsequilrc(A, r, c)
		if (result==0)          x = lusolve(A, b)
		else if (result==1)     x = lusolve(A, r:*b)
		else if (result==2)     x = c:*lusolve(A, b)
		else if (result==3)     x = c:*lusolve(A, r:*b){txt}

{p 4 4 2}
实际上，如果不执行均衡化，{cmd:_perhapsequil*()} 系列返回一个 1 的向量，所以你可以编码 

		{cmd}(void) _perhapsequilrc(A, r, c)
		x = c:*lusolve(A, r:*b){txt}

{p 4 4 2}
但这会不高效。


{marker remarks5}{...}
{title:rowscalefactors() 和 colscalefactors()}

{p 4 4 2}
{cmd:rowscalefactors(}{it:A}{cmd:)} 和 
{cmd:colscalefactors(}{it:A}{cmd:)}
返回行和列均衡化的缩放因子（行和列最大值的倒数）。
这些函数由上述其他函数使用，并提供给希望编写自己均衡化例程的人。  


{marker conformability}{...}
{title:适配性}

    {cmd:_equilrc(}{it:A}{cmd:,} {it:r}{cmd:,} {it:c}{cmd:)}:
	{it:输入:}
		{it:A}:  {it:m x n}
	{it:输出:}
		{it:A}:  {it:m x n}
		{it:r}:  {it:m x} 1
		{it:c}:  1 {it:x n}

    {cmd:_equilr(}{it:A}{cmd:,} {it:r}{cmd:)}:
	{it:输入:}
		{it:A}:  {it:m x n}
	{it:输出:}
		{it:A}:  {it:m x n}
		{it:r}:  {it:m x} 1

    {cmd:_equilc(}{it:A}{cmd:,} {it:c}{cmd:)}:
	{it:输入:}
		{it:A}:  {it:m x n}
	{it:输出:}
		{it:A}:  {it:m x n}
		{it:c}:  1 {it:x n}

    {cmd:_perhapsequilrc(}{it:A}{cmd:,} {it:r}{cmd:,} {it:c}{cmd:)}:
	{it:输入:}
		{it:A}:  {it:m x n}
	{it:输出:}
		{it:A}:  {it:m x n}  （如果 {it:result} = 0，则未修改）
		{it:r}:  {it:m x} 1
		{it:c}:  1 {it:x n}
	   {it:result}:  1 {it:x} 1

    {cmd:_perhapsequilr(}{it:A}{cmd:,} {it:r}{cmd:)}:
	{it:输入:}
		{it:A}:  {it:m x n}
	{it:输出:}
		{it:A}:  {it:m x n}  （如果 {it:result} = 0，则未修改）
		{it:r}:  {it:m x} 1
	   {it:result}:  1 {it:x} 1

    {cmd:_perhapsequilc(}{it:A}{cmd:,} {it:c}{cmd:)}:
	{it:输入:}
		{it:A}:  {it:m x n}
	{it:输出:}
		{it:A}:  {it:m x n}  （如果 {it:result} = 0，则未修改）
		{it:c}:  1 {it:x n}
	   {it:result}:  1 {it:x} 1

    {cmd:rowscalefactors(}{it:A}{cmd:)}:
		{it:A}:  {it:m x n}
	   {it:result}:  {it:m x} 1

    {cmd:colscalefactors(}{it:A}{cmd:)}:
		{it:A}:  {it:m x n}
	   {it:result}:  1 {it:x n}


{marker diagnostics}{...}
{title:诊断}


{p 4 4 2}
所有函数中使用和返回的缩放因子由 
{cmd:rowscalefactors(}{it:A}{cmd:)} 和
{cmd:colscalefactors(}{it:A}{cmd:)} 计算得出。
这些函数被定义为
{cmd:1:/rowmaxabs(}{it:A}{cmd:)}
和 
{cmd:1:/colmaxabs(}{it:A}{cmd:)}, 对于缺失值将其更改为 1。
因此，包含缺失值或完全为零的行或列被定义为具有缩放因子 1。

{p 4 4 2}
均衡化函数不会均衡化包含缺失值或全为零的行或列。

{p 4 4 2}
{cmd:_equil*()} 函数如果 {it:A} 是视图，则将 {it:A} 转换为数组。Stata 数据集不会发生变化。

{p 4 4 2}
{cmd:_perhapsequil*()} 函数如果 {it:A} 是视图且返回值非零，则将 {it:A} 转换为数组。Stata 数据集不会发生变化。


{marker source}{...}
{title:源代码}

{p 4 4 2}
{view _equilrc.mata, adopath asis:_equilrc.mata},
{view _equilr.mata, adopath asis:_equilr.mata},
{view _equilc.mata, adopath asis:_equilc.mata},
{view _perhapsequilrc.mata, adopath asis:_perhapsequilrc.mata},
{view _perhapsequilr.mata, adopath asis:_perhapsequilr.mata},
{view _perhapsequilc.mata, adopath asis:_perhapsequilc.mata},
{view rowscalefactors.mata, adopath asis:rowscalefactors.mata},
{view colscalefactors.mata, adopath asis:colscalefactors.mata}
{p_end}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <mf__equilrc.sthlp>}