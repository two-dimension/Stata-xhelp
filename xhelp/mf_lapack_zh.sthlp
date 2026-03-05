{smcl}
{* *! version 1.0.11  18sep2018}{...}
{vieweralsosee "[M-5] lapack()" "mansection M-5 lapack()"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[M-1] LAPACK" "help m1_lapack_zh"}{...}
{vieweralsosee "[M-4] Matrix" "help m4_matrix_zh"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[R] Copyright LAPACK" "help copyright lapack"}{...}
{viewerjumpto "Syntax" "mf_lapack_zh##syntax"}{...}
{viewerjumpto "Description" "mf_lapack_zh##description"}{...}
{viewerjumpto "Links to PDF documentation" "mf_lapack_zh##linkspdf"}{...}
{viewerjumpto "Remarks" "mf_lapack_zh##remarks"}{...}
{viewerjumpto "Source code" "mf_lapack_zh##source"}
{help mf_lapack:English Version}
{hline}{...}
{p2colset 1 19 21 2}{...}
{p2col:{bf:[M-5] lapack()} {hline 2}}LAPACK 线性代数函数
{p_end}
{p2col:}({mansection M-5 lapack():查看完整 PDF 手册条目}){p_end}
{p2colreset}{...}


{marker syntax}{...}
{title:语法}

{p 8 12 2}
{it:void}{bind:    }
{cmd:_flopin(}{it:numeric matrix A}{cmd:)}

{p 8 12 2}
{it:void}{bind:     }
{it:lapack_function}{cmd:(}...{cmd:)}

{p 8 12 2}
{it:void}{bind:    }
{cmd:_flopout(}{it:numeric matrix A}{cmd:)}


{p 4 4 2}
其中 {it:lapack_function} 可以是 

		{cmd:LA_DGBMV()}
		{cmd:LA_DGEBAK()}	{cmd:LA_ZGEBAK()} 
		{cmd:LA_DGEBAL()}	{cmd:LA_ZGEBAL()} 
		{cmd:LA_DGEES()}	{cmd:LA_ZGEES()}  
		{cmd:LA_DGEEV()}	{cmd:LA_ZGEEV()}
		{cmd:LA_DGEHRD()}	{cmd:LA_ZGEHRD()}
		{cmd:LA_DGGBAK()}	{cmd:LA_ZGGBAK()}
		{cmd:LA_DGGBAL()}	{cmd:LA_ZGGBAL()} 
		{cmd:LA_DGGHRD()}	{cmd:LA_ZGGHRD()} 
		{cmd:LA_DHGEQZ()}	{cmd:LA_ZHGEQZ()}
		{cmd:LA_DHSEIN()}	{cmd:LA_ZHSEIN()}  
		{cmd:LA_DHSEQR()}	{cmd:LA_ZHSEQR()}

		{cmd:LA_DLAMCH()}
		{cmd:LA_DORGHR()}  
		{cmd:LA_DSYEVX()}

		{cmd:LA_DTGSEN()}	{cmd:LA_ZTGSEN()}
		{cmd:LA_DTGEVC()}	{cmd:LA_ZTGEVC()} 
		{cmd:LA_DTREVC()}	{cmd:LA_ZTREVC()}
		{cmd:LA_DTRSEN()}	{cmd:LA_ZTRSEN()}

				  {cmd:LA_ZUNGHR()}


{marker description}{...}
{title:描述}

{p 4 4 2}
{cmd:LA_DGBMV()}、{cmd:LA_DGEBAK()}、{cmd:LA_ZGEBAK()}、{cmd:LA_DGEBAL()},
{cmd:LA_ZGEBAL()}等都是 LAPACK 函数的原始形式；详见
{bf:{help m1_lapack_zh:[M-1] LAPACK}}。这些函数是 Mata 大多数线性代数功能的基础。像
{bf:{help mf_cholesky_zh:cholesky()}}, {bf:{help mf_svd_zh:svd()}}, 和
{bf:{help mf_eigensystem_zh:eigensystem()}} 这样的 Mata 函数是基于这些函数实现的；详见 {bf:{help m4_matrix_zh:[M-4] Matrix}}。这些函数更易于使用。
{cmd:LA_}{it:*}{cmd:()} 函数提供更多能力。

{p 4 4 2}
{cmd:_flopin()} 和 {cmd:_flopout()} 将矩阵转换为和从 LAPACK 函数所需的形式进行转换。


{marker linkspdf}{...}
{title:PDF 文档链接}

        {mansection M-5 lapack()备注和示例:备注和示例}

{pstd}
以上部分不包括在此帮助文件中。


{marker remarks}{...}
{title:备注}

{p 4 4 2}
LAPACK 代表线性代数软件包（Linear Algebra PACKage），是一个可自由使用的 Fortran 77 程序集，用于求解代数方程组、
特征值问题和奇异值问题。 
原始 Fortran 例程的名称为六个字母，如 DGEHRD、DORGHR 等。 Mata 函数 {cmd:LA_DGEHRD()}、{cmd:LA_DORGHR()} 等是 LAPACK 双精度实数和复数例程的一个子集。
所有 LAPACK 双精度函数最终都会提供。

{p 4 4 2}
有关 LAPACK 例程的文档可以在 
{browse "http://www.netlib.org/lapack/":http://www.netlib.org/lapack/} 找到， 
尽管我们建议获取 {it:LAPACK Users' Guide} 由 
{help mf_lapack##Aetal1999:Anderson et al. (1999)} 编写。

{p 4 4 2}
备注分为以下几个主题：

	{help mf_lapack##callseq:从 Fortran 到 Mata 的调用顺序映射}
	{help mf_lapack##flopping: 转换：为 LAPACK 准备矩阵}
	{help mf_lapack##warning1: 关于在 _flopin() 后使用 rows() 和 cols() 的警告}
	{help mf_lapack##warning2: 警告：检查信息是你的责任}
	{help mf_lapack##example:示例}


{marker callseq}{...}
{title:从 Fortran 到 Mata 的调用顺序映射}

{p 4 4 2}
LAPACK 函数的命名以 S、D、C 或 Z 开头。 S 代表单精度实数，D 代表双精度实数，C 代表单精度
复数，Z 代表双精度复数。 Mata 提供 D* 和 Z* 函数。 LAPACK 文档中的术语是 S* 和 C*。
因此，要查找 LA_DGEHRD 的文档，您必须在原始文档中查找 SGEHRD。

{* 在以下内容中，我们不使用 monospace 字体表示 Fortran 函数}{...}
{* 和变量。 monospace 保留给 Mata.}{...}
{p 4 4 2}
原始文档 
({help mf_lapack##Aetal1999:Anderson et al. 1999, 227}) 中部分内容如下： 

	SUBROUTINE SGEHRD(N, ILO, IHI, A, LDA, TAU, WORK, LWORK, INFO)
	INTEGER    IHI, ILO, INFO, LDA, LWORK, N
	REAL       A(LDA, *), TAU(*), WORK(LWORK)

{p 4 4 2}
文档中指出 SGEHDR 使用正交相似变换将实值一般矩阵 A 减少为上 Hessenberg 形式 H：
Q'*A*Q = H。

{p 4 4 2}
对应的 Mata 函数 {cmd:LA_DGEHRD()} 具有相同的参数。
在 Mata 中，参数 {cmd:ihi}、{cmd:ilo}、{cmd:info}、{cmd:lda}、{cmd:lwork} 和 {cmd:n} 是 {it:real} {it:scalars}。参数 {cmd:A} 是一个 {it:real} {it:matrix}，参数 {cmd:tau} 和 {cmd:work} 是 {it:real} {it:vectors}。

{p 4 4 2}
您可以阅读原始文档的其余部分，了解在每个参数中应该放置（或返回）什么。结果表明 A 被假设为维数由 LDA {it:x} {it:something} 确定，且例程作用于 A(1,1)（使用 Fortran 记法）到 A(N,N)。例程还需要您提供的工作空间，该空间存储在向量 WORK 中。按照标准的 LAPACK 方式，LAPACK 为您提供选择：您可以预分配 WORK，在这种情况下必须为其选择一个相当大的维度，或进行查询来找出该特定问题所需的维度。
如果您进行预分配，文档表明 WORK 的大小必须为 N，您将 LWORK 设置为 N。如果您希望查询，则将 WORK 的大小设置为 1，并将 LWORK 设置为 -1。LAPACK 例程将在 WORK 的第一个元素中返回最佳大小。然后您再次调用该函数，分配的 WORK 为最佳大小，LWORK 设置为最佳大小。

{p 4 4 2}
关于 Mata，上面的内容适用。您可以完全遵循 LAPACK 文档。使用 {bf:{help mf_j_zh:J()}} 来分配矩阵或向量。
另外，您可以将所有大小指定为缺失值 ({cmd:.})，Mata 将根据假设您使用整个矩阵来填充适当的值。因此，在 {cmd:LA_DGEHRD()} 中，您可以将 {cmd:lda} 指定为缺失，函数将如同您指定了 {cmd:lda} 等于 {cmd:cols(A)} 一样运行。您可以将 {cmd:n} 指定为缺失，函数将如同您指定了 {cmd:n} 等于 {cmd:rows(A)} 一样运行。

{p 4 4 2}
然而，工作区域的处理有所不同。您可以遵循上述标准的 LAPACK 约定；或者可以指定工作区域的大小 ({cmd:lwork}) 
并将工作区域本身 ({cmd:work}) 指定为缺失值，Mata 将为您分配工作区域。
分配将与您指定的相符。

{p 4 4 2}
某些 LAPACK 函数提供的特性在 Mata 实现中不受支持。如果函数允许函数指针，您将无法利用该选项。


{marker flopping}{...}
{title:转换：为 LAPACK 准备矩阵}

{p 4 4 2}
在 Mata 中提供的 LAPACK 函数为原始的 LAPACK 函数。
Mata 基于 C，按行存储矩阵。 LAPACK 基于 Fortran，按列存储矩阵。 Mata 和 Fortran 之间还存在对如何组织复数矩阵的分歧。

{p 4 4 2}
函数 {cmd:_flopin()} 和 {cmd:_flopout()} 处理这些问题。编码 {cmd:_flopin(}{it:A}{cmd:)} 将矩阵 {it:A} 从 Mata 约定改为 LAPACK 约定。编码 {cmd:_flopout(}{it:A}{cmd:)} 将 {it:A} 从 LAPACK 约定改为 Mata 约定。

{p 4 4 2}
{cmd:LA_}{it:*}{cmd:()} 函数不会为您执行此操作，因为 LAPACK 通常需要两个或三个 LAPACK 函数按顺序运行以实现所需结果，在调用之间切换约定将浪费计算机时间。


{marker warning1}{...}
{title:关于在 _flopin() 后使用 rows() 和 cols() 的警告}

{p 4 4 2}
使用 {cmd:rows()} 和 {cmd:cols()} 函数时要小心。
{cmd:rows()} 处理转置矩阵时返回逻辑列数，{cmd:cols()} 处理转置矩阵时返回逻辑行数！

{p 4 4 2}
在使用 {help mf_j_zh:J()} 分配工作区域时，混淆的危险尤其大。如果 LAPACK 函数需要大小为 {it:r} {it:x} {it:c} 的工作区域，您编码为：

	{cmd:_LA_}{it:function}{cmd:(}...{cmd:, J(}{it:c}{cmd:,} {it:r}{cmd:, .),} ...{cmd:)}


{marker warning2}{...}
{title:警告：检查信息是你的责任}

{p 4 4 2}
LAPACK 函数在失败时不会中止并返回错误。
如果成功，它们会在 {cmd:info}（通常是最后一个参数）中存储 0，如果不成功则存储一个错误代码。错误代码通常是负数，指示存在问题的参数。


{marker example}{...}
{title:示例}	

{p 4 4 2}    
以下示例使用 LAPACK 函数 DGEHRD 获取矩阵 {cmd:A} 的 Hessenberg 形式。我们将从以下开始：

	   {txt}  1    2    3    4
	  {c TLC}{hline 21}{c TRC}
	1 {c |}   1    2    3    4  {c |}
	2 {c |}   4    5    6    7  {c |}
	3 {c |}   7    8    9   10  {c |}
	4 {c |}   8    9   10   11  {c |}
	  {c BLC}{hline 21}{c BRC}
    
{p 4 4 2}    
第一步是使用 {cmd:_flopin()} 将 {cmd:A} 转换为 LAPACK 顺序：
    
	{cmd:: _flopin(A)}

{p 4 4 2}    
接下来，我们进行工作空间查询以获取工作区的最佳大小。

	{cmd:: LA_DGEHRD(., 1, 4, A, ., tau=., work=., lwork=-1, info=0)}

	{cmd:: lwork = work[1,1]}

	{cmd:: lwork}
	  128

{p 4 4 2}    
将工作空间大小放入 {cmd:lwork} 后，我们再次调用 {cmd:LA_DGEHRD()} 执行 Hessenberg 分解：

	{cmd:: LA_DGEHRD(., 1, 4, A, ., tau=., work=., lwork, info=0)}

{p 4 4 2}    
LAPACK 函数 DGEHRD 在矩阵 {cmd:A} 的上三角部分和第一副对角线中保存结果。我们必须使用 {cmd:_flopout()} 将其转换回 Mata 顺序，并最终提取结果：

        {cmd:: _flopout(A)}

	{cmd:: A = A-sublowertriangle(A, 2)}

	{cmd:: A}
	 {txt}             1            2             3            4
	  {c TLC}{hline 56}{c TRC}
	1 {c |}            1  -5.370750529  .0345341258   .3922322703  {c |}
	2 {c |} -11.35781669  25.18604651   -4.40577178  -.6561483899  {c |}
	3 {c |}            0  -1.660145888  -.1860465116  .1760901813  {c |}
	4 {c |}            0   0            -8.32667e-16 -5.27356e-16  {c |}
	  {c BLC}{hline 56}{c BRC}


{marker source}{...}
{title:源代码}

{p 4 4 2}
    {cmd:LA_}{it:*}{cmd:()} 函数仅仅是原始 LAPACK Fortran 代码的接口。  
    请参阅 {bf:{help copyright_lapack_zh:[R] Copyright LAPACK}}。
{p_end}


{marker reference}{...}
{title:参考文献}

{marker Aetal1999}{...}
{p 4 8 2}
Anderson, E., Z. Bai, C. Bischof, S. Blackford, J. Demmel, J. Dongarra, 
    J. Du Croz, A. Greenbaum, S. Hammarling, A. McKenney, 和 D. Sorensen.
    1999.  {it:LAPACK Users' Guide}. 第 3 版。费城：工业与应用数学会。
{p_end}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <mf_lapack.sthlp>}