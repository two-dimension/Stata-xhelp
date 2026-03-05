{smcl}
{* *! version 1.1.24  03may2019}{...}
{vieweralsosee "[M-6] 词汇表" "mansection M-6 Glossary"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[M-0] 简介" "help mata_zh"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[M-1] 简介" "help m1_intro_zh"}{...}
{viewerjumpto "描述" "m6_glossary_zh##description"}{...}
{viewerjumpto "Mata 词汇表" "m6_glossary_zh##glossary"}
{help m6_glossary:English Version}
{hline}{...}
{p2colset 1 19 21 2}{...}
{p2col:{bf:[M-6] 词汇表} {hline 2}}Mata 常用术语词汇表
{p_end}
{p2col:}({mansection M-6 Glossary:查看完整 PDF 手册条目}){p_end}
{p2colreset}{...}


{marker description}{...}
{title:描述}

{p 4 4 2}
此处定义了常用术语。


{marker glossary}{...}
{title:Mata 词汇表}

{* index arguments, program}{...}
{p 4 8 2}
{bf:arguments}{break}
    函数接收的值称为函数的参数。例如，在 {cmd:lud(}{it:A}{cmd:,} {it:L}{cmd:,} {it:U}{cmd:)},
    {it:A}、{it:L} 和 {it:U} 是参数。

{p 4 8 2}
{bf:array}{break}
    数组是任何索引对象，它将其他对象作为元素存储。向量是 1 维数组的例子。向量 {bf:v} 是一个
    数组，而 {bf:v}[1] 是它的第一个元素。矩阵是 2 维数组。矩阵 {bf:X} 是一个数组，且 {bf:X}[1,1] 是它的第一个元素。
    理论上，可以拥有 3 维、4 维及更高的数组，尽管 Mata 并不直接提供。有关数组的更多信息，请参见 
    {help m2_subscripts_zh:[M-2] 下标}。

{p 8 8 2}
    数组通常通过连续整数进行索引，但在关联数组中，索引是没有自然顺序的字符串。
    关联数组可以是 1 维、2 维或更高。如果 {it:A} 是关联数组，则 {it:A}["first"] 可能是它的一个元素。
    有关 Mata 中关联数组的信息，请参见 {help mf_asarray_zh:[M-5] asarray()}。

{marker binary_operator}{...}
{p 4 8 2}
{bf:binary operator}{break}
    二元操作符是应用于两个参数的操作符。在 {cmd:2-3} 中，减号是一个二元操作符，而在
    {cmd:-9} 中的减号是一个 {help m6_glossary##unary_operator:一元操作符}。

{* index type, broad}{...}
{* index broad type}{...}
{p 4 8 2}
{bf:broad type}{break}
    如果两个矩阵的元素都是数字、字符串或指针，则称这两个矩阵具有相同的宽泛类型。
    Mata 提供两种数字类型，实数和复数。术语 {it:broad type} 用于掩盖数字类型之间的区别，通常在讨论操作符或函数时使用。
    一般说 "逗号操作符可以用于连接两个相同宽泛类型的矩阵的行"，暗示的是可以将实数连接到复数，结果将是复数。另见
    {it:{help m6_glossary##type:type, eltype, and orgtype}}。

{* index c-conformability}{...}
{marker c-conformability}{...}
{p 4 8 2}
{bf:c-conformability}{break}
    矩阵、向量或标量 {it:A} 与矩阵、向量或标量 {it:B} 是 c-兼容的，如果它们具有相同的行数和列数（它们是
    {help m6_glossary##p-conformability:{it:p-兼容}}），或者如果它们具有相同的行数且其中一个是向量，
    或者如果它们具有相同的列数且其中一个是向量，或者如果其中一个是标量。c 代表冒号；c-兼容矩阵适合与 Mata 的 {cmd::}{it:op} 操作符一起使用。
    {it:A} 和 {it:B} 仅当以下条件成立时才是 c-兼容：

			A                B
                      {hline 22}
                      {it:r x c}            {it:r x c}

                      {it:r x} 1            {it:r x c}
                      1 {it:x c}            {it:r x c}
                      1 {it:x} 1            {it:r x c}

                      {it:r x c}            {it:r x} 1
                      {it:r x c}            1 {it:x c}
                      {it:r x c}            1 {it:x} 1
                      {hline 22}

{p 8 8 2}
    c-兼容性的理念是广义的逐元素操作。考虑 {it:C}={it:A}:*{it:B}。如果 {it:A} 和 {it:B}
    行数和列数相同，则 ||{it:C}_{it:ij}|| = ||{it:A}_{it:ij}*{it:B}_{it:ij}||。现在假设 {it:A} 是列向量，{it:B} 是矩阵。那么
    ||{it:C}_{it:ij}|| = ||{it:A}_{it:i}*{it:B}_{it:ij}||：{it:A} 的每个元素都应用于 {it:B} 的整行。如果 {it:A}
    是行向量，则 {it:A} 的每列都应用于 {it:B} 的整列。如果 {it:A} 是标量，则 {it:A} 应用于 {it:B} 的每个元素。
    然后所有规则重演，{it:A} 和 {it:B} 的角色互换。有关完整定义，请参阅 {bf:{help m2_op_colon_zh:[M-2] op_colon}}。

{p 4 8 2}
{bf:class programming}{break}
    见 {help m6_glossary##orprog:面向对象编程}。

{p 4 8 2}
{bf:colon operators}{break}
    冒号操作符是前面有冒号的操作符，冒号表示该操作符将逐元素执行。
    {it:A}{cmd::*}{it:B} 表示逐元素乘法，而 {it:A}{cmd:*}{it:B} 表示矩阵乘法。冒号可以放置在任何操作符前面。通常，人们认为逐元素表示
    c_ij = a_ij <{it:op}> b_ij，但在 Mata 中，逐元素也被广义地包含 c-兼容性。

{p 4 8 2}
{bf:column stripes}{break}
    见 {it:{help m6_glossary##stripes:行和列的条纹}}。

{p 4 8 2}
{marker column-major}{...}
{bf:column-major order}{break}
    矩阵作为向量存储。列主序指定矩阵的向量形式是通过堆叠列创建的。例如，

	: A
	       1   2
	    {c TLC}{hline 9}{c TRC}
	  1 {c |}  1   4  {c |}
	  2 {c |}  2   5  {c |}
	  3 {c |}  3   6  {c |}
	    {c BLC}{hline 9}{c BRC}

{p 8 8 2}
    存储为 

	       1   2   3   4   5   6
	    {c TLC}{hline 25}{c TRC}
	  1 {c |}  1   2   3   4   5   6  {c |}
	    {c BLC}{hline 25}{c BRC}

{p 8 8 2}
    以列主序存储。LAPACK 函数使用列主序。Mata 使用行主序。见 
    {it:{help m6_glossary##row-major:行主序}}。

{p 4 8 2}
{bf:colvector}{break}
    见 {it:{help m6_glossary##vector:vector, colvector, and rowvector}}。

{* index complex tt}{...}
{p 4 8 2}
{bf:complex}{break}
    如果一个矩阵的元素是复数，则称其为复数矩阵。复数是 Stata 中的两种数字类型之一，另一种是实数。
    复数通常用于描述矩阵的存储方式，而不是表示其中的数字类型：
    复数矩阵 {it:Z} 可能包含实数。另见 {it:{help m6_glossary##type:type, eltype, and orgtype}}。

{* index condition number}{...}
{p 4 8 2}
{bf:condition number}{break}
    与某一数值问题相关的条件数是该数量在数字计算中的适用程度的度量。条件数低的问题被称为良好条件，而条件数高的问题被称为不良条件。

{p 8 8 2}
    有时报告条件数的倒数，但作者仍然称之为条件数。条件数的倒数通常在 0 和 1 之间缩放，接近 epsilon(1) 的值表示问题。

{* index conformability}{...}
{* index conformability, also see c-conformability}{...}
{* index conformability, also see r-conformability}{...}
{* index conformability, also see p-conformability}{...}
{p 4 8 2}
{bf:conformability}{break}
    兼容性是指两个或多个矩阵之间的行列匹配。例如，乘法 A*B，A 必须具有与 B 的行数相同的列数。如果不成立，则称这些矩阵不兼容（进行乘法时）。

{p 8 8 2}
    Mata 文档中常提及三种兼容性： {it:p-兼容性}、{it:c-兼容性} 和 
    {it:r-兼容性}。

{* index conjugate}{...}
{p 4 8 2}
{bf:conjugate}{break}
    如果 {it:z} = {it:a} + {it:b}i，则 {it:z} 的共轭为 conj(z) = 
    {it:a} - {it:b}i。共轭是通过反转虚部的符号获得的。实数的共轭是
    该数字本身。

{* index conjugate transpose}{...}
{* index transpose, also see conjugate transpose}{...}
{p 4 8 2}
{bf:conjugate transpose}{break}
    见 {it:{help m6_glossary##transpose:转置}}。

{* index data matrix}{...}
{marker datamtx}{...}
{p 4 8 2}
{bf:data matrix}{break}
    包含 {it:n} 个观测值和 {it:k} 个变量的数据集通常存储在一个 {it:n x k} 矩阵中。观测值是指该矩阵的行；变量是指列。
    当行是观测值且列是变量时，矩阵称为数据矩阵。

{* index declarations}{...}
{p 4 8 2}
{bf:declarations}{break}
    声明说明函数、参数和变量的 {it:eltype} 和 {it:orgtype}。如

		{cmd}real matrix myfunc(real vector A, complex scalar B)
		{
			real scalar i

			{txt}...{cmd}
		}{txt}

{p 8 8 2}
    其中 {cmd:real matrix} 是函数声明，{cmd:real vector} 
    和 {cmd:complex scalar} 是参数声明，而 
    {cmd:real scalar i} 是变量声明。{cmd:real matrix} 
    说明函数返回一个实数矩阵。{cmd:real vector} 
    和 {cmd:complex scalar} 说明 {cmd:myfunc()} 
    期望和要求的参数类型。{cmd:real scalar i} 帮助 Mata 更高效地生成编译代码。

{p 8 8 2}
    声明是可选的，因此上述内容也可以这样写：

		{cmd}function myfunc(A, B)
		{
			{txt}...{cmd}
		}{txt}

{p 8 8 2}
    当你省略函数声明时，必须用 {cmd:function} 这个词替代。

{p 8 8 2}
    省略其他声明时，默认为 {cmd:transmorphic matrix}，这是一个可以容纳任何内容的矩阵的花哨术语。
    显式声明的优点在于减少开发中出错的机会，同时帮助 Mata 生成更高效的代码。大多数人在互动使用时会省略声明。

{p 8 8 2}
    有关更多信息，请见 {bf:{help m2_declarations_zh:[M-2] 声明}}。

{* index defective matrix}{...}
{p 4 8 2}
{bf:defective matrix}{break}
    一个 {it:n x n} 矩阵被称为失效矩阵，如果它没有 {it:n} 个线性独立的特征向量。

{p 4 8 2}
{bf:dereference}{break}
    解引用是对指针执行的操作。指针包含内存地址，例如 0x2a1228。假设某些感兴趣的内容存储在 0x2a1228，
    比如一个实数标量等于 2。当通过指针访问该 2 时，代码 {cmd:*}{it:p}，则称为解引用该指针。一元 {cmd:*} 是解引用运算符。

{* index diagonal matrix}{...}
{p 4 8 2}
{bf:diagonal matrix}{break}
    如果一个矩阵的非对角元素为零，则该矩阵是对角矩阵；如果 {it:A} 是对角矩阵，且 {it:A}[{it:i},{it:j}]==0， 
    当 {it:i}!={it:j} 时。通常，对角矩阵也是 {it:square}。一些定义要求对角矩阵还必须是方阵。

{* index diagonal}{...}
{p 4 8 2}
{bf:diagonal of a matrix}{break}
    矩阵的对角线是元素集 {it:A}[{it:i},{it:j}]。

{p 4 8 2}
{bf:dyadic operator}{break}
    二元操作符的同义词 {help m6_glossary##binary_operator:二元操作符}。

{* index eigenvalues}{...}
{marker eigenvalues}{...}
{p 4 8 2}
{bf:eigenvalues} 和 {bf:eigenvectors}{break}
    标量 {it:l}（通常用 {it:lambda} 表示）被称为方阵 {bf:A}:{it:n x n} 的特征值，当且仅当存在一个非零列向量 {bf:x}:{it:n x} 1（称为特征向量），使得

			{bf:A}{bf:x} = {it:l}{bf:x}{right:(1)   }

{p 8 8 2}
方程（1）也可以写成

			({bf:A} - {it:l}{bf:I}){bf:x} = 0

{p 8 8 2}
其中 {bf:I} 是 {it:n x n} 的单位矩阵。当且仅当 

			det({bf:A} - {it:l}{bf:I}) = 0{right:(2)   }

{p 8 8 2}
此 {it:n} 次多项式在 {it:l} 中被称为特征多项式或特征方程，特征值 {it:l} 是其根，亦称为特征根。

{p 8 8 2}
由（1）定义的特征向量也称为右特征向量，因为矩阵 {bf:A} 被特征向量 {bf:x} 右乘。有关更多信息，请参见 {bf:{help mf_eigensystem_zh:[M-5] eigensystem()}} 和
{it:{help m6_glossary##lefteigen:左特征向量}}。

{p 4 8 2}
{bf:eltype}{break}
    见 {it:{help m6_glossary##type:type, eltype, and orgtype}}。

{* index machine precision}{...}
{* index epsilon}{...}
{marker epsilon}{...}
{p 4 8 2}
{bf:epsilon(1)}, 等等。{break}
epsilon(1) 指的是与计算机相关的单位舍入误差，非正式称为机器精度。它是一个数字与 1 之间可以差异的最小值。对于 IEEE 双精度变量，
epsilon(1) 约为 2.22045e-16。  

{p 8 8 2}
epsilon({it:x}{cmd:)} 是一个实数与 {it:x} 或其近似值之间可以差异的最小值；见 
{bf:{help mf_epsilon_zh:[M-5] epsilon()}}。

{* index exp it}{...}
{p 4 8 2}
{bf:exp}{break}
    {it:exp} 在语法图中用于表示"任何有效表达式可以出现在这里"；见 {bf:{help m2_exp_zh:[M-2] exp}}。

{* index externals}{...}
{p 4 8 2}
{bf:external variable}{break}
    见 {it:{help m6_glossary##globalvar:全局变量}}。

包含 help glossary_frames

{* index function}{...}
{p 4 8 2}
{bf:function}{break}
    在程序中，存储值的实体（{it:a}、{it:b}、{it:c}、...、{it:x}、{it:y}、{it:z}）称为变量。变量的名称长度为 1 到 32 个字符。要正式一些：变量是一个容器；它包含一个矩阵、向量或标量，并通过变量名或另一个包含该变量的 {it:pointer} 的变量来引用它。

{p 8 8 2}
    此外，有时 {it:variable} 用于引用数据矩阵的列；见 {it:{help m6_glossary##datamtx:数据矩阵}}。

{* index generalized eigenvalues}{...}
{marker geigenvalues}{...}
{p 4 8 2}
{bf:generalized eigenvalues}{break}

{p 8 8 2}
标量 {it:l}（通常用 {it:lambda} 表示）被称为一对 {it:n x n} 方形、数值矩阵 {bf:A}、{bf:B} 的广义特征值，当且仅当存在一个非零列向量 {bf:x}:{it:n x} 1（称为广义特征向量），使得

		{bf:A}{bf:x} = {it:l}{bf:B}{bf:x}{right:(1)}

{p 8 8 2}
方程（1）也可以写为

		({bf:A} - {it:l}{bf:B}){bf:x} = 0

{p 8 8 2}
当且仅当存在此 {it:n} 个线性齐次方程组的非平凡解

		det({bf:A} - {it:l}{bf:B}) = 0 {right:    (2)}

{p 8 8 2}
在实际中，对于矩阵对 ({bf:A}，{bf:B}）的广义特征值问题通常表述为寻找一对标量 ({it:w}，{it:b}) 和一个非零列向量 {bf:x}，使得

                {it:w}{bf:A}{bf:x} = {it:b}{bf:B}{bf:x}

{p 8 8 2}
如果 {it:b} 不为零，则标量 {it:w}/{it:b} 为广义特征值。

{p 8 8 2}
如果 {it:b} 为零或数值接近零，则广义特征值为无穷大。这种情况可能发生在 {bf:B} 为奇异时。

{p 8 8 2}
计算广义特征值的 Mata 函数将其以两个复数向量 {bf:w} 和 {bf:b} 的形式返回，长度为 {it:n}。如果
{bf:b}[{it:i}]=0，则第 {it:i} 个广义特征值为无穷大，否则第 {it:i} 个广义特征值为   
{bf:w}[{it:i}]/{bf:b}[{it:i}]。

{* index global variable}{...}
{marker globalvar}{...}
{p 4 8 2}
{bf:global variable}{break}
    全局变量，也称为外部变量以及全局外部变量，指的是在所有程序中通用的变量，程序可以在不将变量作为参数传递的情况下访问它们。

{p 8 8 2}
    你交互创建的变量是全局变量。不过，程序不能直接访问这些变量，而必须经过其他步骤，并且可以在不需要你交互创建变量的情况下创建全局变量。

{p 8 8 2}
    要访问（并在必要时创建）全局外部变量，你需要在程序的主体中声明变量：

		{cmd:function myfunction(}...{cmd})
		{
			external real scalar globalvar
		
			{txt}...{cmd}
		}{txt}

{p 8 8 2}
    请参见 {bf:链接外部全局变量} 在 {bf:{help m2_declarations_zh:[M-2] 声明}} 中。

{p 8 8 2}
    创建和访问全局变量的其他方法，但建议使用声明方法。替代方法包括 {cmd:crexternal()}、{cmd:findexternal()} 和 {cmd:rmexternal()} 
    在 {bf:{help mf_findexternal_zh:[M-5] findexternal()}} 中文档化以及 {cmd:valofexternal()} 在 
    {bf:{help mf_valofexternal_zh:[M-5] valofexternal()}} 中文档化。

{p 4 8 2}
{bf:hashing}, {bf:hash functions}, 和 {bf:hash tables}{break}
    哈希指的是一种快速查找与标识符对应的信息的技术。标识符可以是名称、社会保障号码、指纹或其他被索引的信息。哈希函数返回标识符到整数稠密子范围的一种多对一映射。这些整数称为哈希，然后用于索引哈希表。哈希表的选定元素指定一个包含标识符和信息的列表。然后在该列表中搜索特定标识符。优势在于，可以搜索 {it:K} 个较小的列表，而不是搜索一个大的列表。为了实现快速，哈希函数必须快速计算并在可能观察到的标识符范围内产生大致相等的哈希频率。

{* index Hermitian matrices}{...}
{marker hermitianmtx}{...}
{p 4 8 2}
{bf:Hermitian matrix}{break}
    矩阵 {it:A} 是 Hermitian，如果它等于其共轭转置；即 {it:A}={it:A}{cmd:'}；见 
    {it:{help m6_glossary##transpose:转置}}。
    这意味着每个非对角元素 {it:a_ij} 必须等于 {it:a_ji} 的共轭，同时对角元素必须是实数。以下矩阵是 Hermitian：

			{c TLC}            {c TRC}
			{c |}  2    4+5i {c |}
			{c |} 4-5i   6   {c |}
			{c BLC}            {c BRC}

{p 8 8 2}
    定义 {it:A}={it:A}{cmd:'} 与对称矩阵的定义相同，尽管通常将对称一词留给实数矩阵，而 Hermitian 留给复数矩阵。在本手册中，我们使用对称一词来同时指代
    实数对称矩阵和复数 Hermitian 矩阵。

{* index Hessenberg decomposition}{...}
{p 4 8 2}
{bf:Hessenberg decomposition}{break}
    矩阵 {bf:A} 的 Hessenberg 分解可以写为

                {bf:Q}'{bf:A}{bf:Q} = {bf:H}

{p 8 8 2}
其中 {bf:H} 是上 Hessenberg 形式 {help m6_glossary##hessform:Hessenberg form}，当 {bf:A} 是实数时，{bf:Q} 是正交的，或者当 {bf:A} 是复数时，{bf:Q} 是单位的。有关更多信息，请参见 {bf:{help mf_hessenbergd_zh:[M-5] hessenbergd()}}。 

{* index Hessenberg decomposition}{...}
{marker hessform}
{p 4 8 2}
{bf:Hessenberg form}{break}
    一个矩阵 {bf:A} 当所有条目在第一个次对角线下为零时，称为上 Hessenberg 形式： {it:A_ij} = 0 对所有 {it:i} > {it:j}+1。

{p 8 8 2}
一个矩阵 {bf:A} 当所有条目在第一个超对角线上的条目为零时，称为下 Hessenberg 形式： {it:A_ij} = 0 对所有 {it:j} > {it:i}+1。

{marker instance}{...}
{p 4 8 2}
{bf:instance} 和 {bf:realization}{break}
    实例和实现是变量的同义词，如在 {help m6_glossary##variable:Mata 变量} 中。
    例如，考虑一个实数标量变量 {it:X}。可以说 {it:X} 是一个实数标量的实例或一个实数标量的实现。作者如此表述变量时，通常强调 {it:X} 仅是众多实数标量中的一个，而不是所有的实数标量的代表。实例通常与结构和类一起使用，作家希望强调变量中包含的值与结构或类的定义之间的区别。说 {it:V} 是类 {it:C} 会引起混淆，因为读者可能会将 {it:C} 的定义与 {it:V} 中包含的特定值混淆。谨慎的作者说 {it:V} 是类 {it:C} 的一个实例。

{* index istmt it}{...}
{p 4 8 2}
{bf:istmt}{break}
    {it:istmt} 是一个交互声明，在 Mata 的冒号提示符下进行输入的声明。  

{* index J()}{...}
{p 4 8 2}
{bf:J(r, c, value)}{break}
    {cmd:J()} 是返回一个 {it:r} {it:x} {it:c} 矩阵的函数，所有元素设置为 {it:value}；见 
    {bf:{help mf_j_zh:[M-5] J()}}。此外，{cmd:J()}
    通常在文档中用来描述各种类型的 {it:void} 矩阵；见 
    {it:{help m6_glossary##voidmatrix:空矩阵}}。因此，文档中可能会说，在某些条件下返回 {cmd:J(0, 0, .)}。这言下之意是说，在这些条件下返回一个 0
    {it:x} 0 实数矩阵。

{p 8 8 2}
    当 {it:r}或 {it:c} 为 0 时，没有元素可用 {it:value} 填充，但即便如此，{it:value} 用于确定矩阵的类型。因此 {cmd:J(0, 0, 1i)} 引用一个 0 {it:x} 0 复数
    矩阵，{cmd:J(0, 0, "")} 引用一个 0 {it:x} 0 字符串矩阵，而 {cmd:J(0, 0, NULL)} 引用一个 0 x 0 {it:pointer} 矩阵。

{p 8 8 2}
    在文档中，{cmd:J()} 用于描述 0 {it:x} 0 矩阵以外的情况。有时，被描述的矩阵是 {it:r} {it:x} 0，或是 0 {it:x} {it:c}。假设一个函数 {cmd:example(}{it:X}{cmd:)} 
    应该返回一个列向量；也许它返回 {it:X} 的最后一列。假设 {it:X} 是 0 {it:x} 0。函数 {cmd:example()} 仍然应该返回一个列向量，因此它返回一个 0 {it:x} 1 矩阵。可以通过注意到在 {it:X} 是 0 {it:x} 0 时，{cmd:example()} 返回 {cmd:J(0, 1, .)} 来记录这一点。

{* index LAPACK}{...}
{p 4 8 2}
{bf:LAPACK}{break}
    LAPACK 是线性代数软件包，并且构成了许多 Mata 的线性代数能力的基础；见 {bf:{help m1_lapack_zh:[M-1] LAPACK}}。

{* index left eigenvector}{...}
{marker lefteigen}{...}
{p 4 8 2}
{bf:left eigenvectors}{break}
    向量 {bf:x}: {it:n x} 1 被称为方阵 {bf:A}: {it:n x n} 的左特征向量，如果存在非零标量 {it:l} 
    （通常用 {it:lambda} 表示），使得

			{bf:x}{bf:A} = {it:l}{bf:x}

{p 8 8 2}
见 {it:{help m6_glossary##eigenvalues:特征值和特征向量}}。

{* index lval it}{...}
{p 4 8 2}
{bf:lval}{break}
    {it:lval} 代表左值，定义为能够出现在等号赋值运算符左侧的属性。矩阵是 Mata 中的 {it:lvals}，因此

		{cmd:X =} ...

{p 8 8 2}
    是有效的。函数不是 {it:lvals}；因此，您不能 
    编写 

		{cmd:substr(mystr,1,3) = "abc"}

{p 8 8 2}
    {it:lvals} 阶实事上是容易描述的，但 {it:pointers} 也可以是左值。很少有人使用指针。有关完整定义，请参见 
    {bf:{help m2_op_assignment_zh:[M-2] op_assignment}}。

{* index machine precision}{...}
{p 4 8 2}
{bf:machine precision}{break}
    见 {it:{help m6_glossary##epsilon:epsilon(1), 等等}}。

{* index .mata file}{...}
{p 4 8 2}
{bf:.mata 源代码文件}{break}
    按约定，我们将函数 {it:function()} 的 Mata 源代码存储在文件 {it:function}{cmd:.mata} 中；见 
    {bf:{help m1_source_zh:[M-1] 源}}。

{* index matrix}{...}
{p 4 8 2}
{bf:matrix}{break}
    数据的最一般组织形式，包含 {it:r} 行和 {it:c} 列。向量、列向量、行向量和标量是矩阵的特殊情况。

{* index .mlib library files}{...}
{p 4 8 2}
{bf:.mlib 库}{break}
    函数的目标代码可以收集并存储在一个库中。实际上，大多数 Mata 函数都位于 Stata 提供的官方库中。您可以创建自己的库。
    见 {bf:{help m1_how_zh:[M-1] 如何}} 和 {bf:{help mata_mlib_zh:[M-3] mata mlib}}。

{* index .mo file}{...}
{p 4 8 2}
{bf:.mo file}{break}
    函数的目标代码可以存储在一个 {cmd:.mo} 文件中，以便后续重用。见 {bf:{help m1_how_zh:[M-1] 如何}} 和 
    {bf:{help mata_mosave_zh:[M-3] mata mosave}}。

{p 4 8 2}
{bf:monadic operator}{break}
    一元操作符的同义词 {help m6_glossary##unary_operator:一元操作符}。

{p 4 8 2}
{bf:NaN}{break}
    NaN 表示不是数字，是用于无法计算的结果的特殊计算机浮点代码。Mata（和 Stata）不使用 NaNs。当出现 NaNs 时，它们会被转换为 {cmd:.}（缺失值）。

{* index norm}{...}
{marker norm}{...}
{p 4 8 2}
{bf:norm}{break}
范数是满足以下条件的实值函数 f({it:x})：

			f(0)   =  0 

			f({it:x})   >  0         对所有 {it:x} != 0

			f({it:c}{it:x})  =  |{it:c}|*f({it:x})

			f({it:x}+{it:y}) <= f({it:x}) + f({it:y})

{p 8 8 2}
“范数”一词应用于向量 {it:x} 通常指的是它的欧几里得范数，{it:p}=2 范数，或长度：元素平方和的平方根。其他范数也可以，也有一些常用的，如 {it:p}=1（元素绝对值之和）和 {it:p}=infinity（最大元素）。范数也可以广义化，以处理矩阵。
见 {bf:{help mf_norm_zh:[M-5] norm()}}。

{* index NULL tt}{...}
{p 4 8 2} 
{bf:NULL}{break}
一个指针的特殊值，表示“指向不存在”。如果您列出包含 NULL 的指针变量的内容，地址将显示为 0x0。见 {it:{help m6_glossary##pointer:指针}}。

{* index numeric tt}{...}
{p 4 8 2}
{bf:numeric}{break}
一个矩阵被称为数值矩阵，如果其元素是实数或复数；见 {it:{help m6_glossary##type:type, eltype, and orgtype}}。

{* index object code}{...}
{p 4 8 2}
{bf:object code}{break}
目标代码是指 Mata 根据您输入的源代码生成的二进制代码。见 {bf:{help m1_how_zh:[M-1] 如何}}。

{p 4 8 2}
{marker orprog}{...}
{bf:object-oriented programming}{break}
面向对象编程是一种编程概念，将编程元素视为对象，并集中在影响这些对象的动作上，而不仅仅是指令列表。面向对象编程使用类描述对象。类与结构类似，主要区别是类可以包含函数（称为方法）以及变量。然而，与结构不同，类可以继承其他类的变量和函数，这在理论上使得面向对象程序比非面向对象程序更容易扩展和修改。

{p 4 8 2}
{bf:observations and variables}{break}
一个包含 {it:n} 个观测值和 {it:k} 个变量的数据集通常存储在一个 {it:n x k} 矩阵中。观测值是矩阵的行；变量是列。

{p 4 8 2}
{bf:operator}{break}
操作符是 {cmd:+}、{cmd:-} 等等。大多数操作符是二元的（或双义的），例如在 {it:A}{cmd:+}{it:B} 中的 {cmd:+} 和 
{cmd:*} 在 {it:C}{cmd:*}{it:D} 中的 {cmd:*}。二元操作符还包括逻辑运算符，如 {cmd:&} 和 {cmd:|}（在 {it:E}{cmd:&}{it:F} 和 
{it:G}{cmd:|}{it:H} 中的“与”和“或”）。其他操作符是单元的（或一元的），例如在 {cmd:!} 的 {cmd:!}{it:J} 中，或既是单元的又是二元的，例如 {cmd:-} 在 {cmd:-}{it:K} 及 
{it:L}{cmd:-}{it:M} 中。当我们说“操作符”而不指定时，意指二元操作符。因此，冒号操作符实际上是冒号二元操作符。

{* index optimization}{...}
{p 4 8 2}
{bf:optimization}{break}
Mata 编译您编写的代码。在编译之后，Mata 执行一个 {it:optimization} 步骤，其目的是使编译后的代码执行得更快。您可以关闭此优化步骤——见 {bf:{help mata_set_zh:[M-3] mata set}}——但不推荐这样做。

{p 4 8 2}
{bf:orgtype}{break}
    见 {it:{help m6_glossary##type:type, eltype, and orgtype}}。

{* index orthogonal matrix}{...}
{* index unitary matrix}{...}
{marker orthomtx}{...}
{p 4 8 2}
{bf:orthogonal matrix} 和 {bf:unitary matrix}{break}
{it:A} 是正交的，当且仅当 {it:A} 是 {it:square}，且 {it:A}{bf:'}{it:A}=={it:I}。
通常将正交这个词保留给实矩阵；如果矩阵是复数，则称其为单元矩阵（此时转置意味着共轭转置）。我们同时使用正交一词用于实数和复数矩阵。

{p 8 8 2}
如果 {it:A} 是正交的，则 det({it:A}) == +/- 1。

{* index p-conformability}{...}
{marker p-conformability}{...}
{p 4 8 2}
{bf:p-conformability}{break}
矩阵、向量或标量 {it:A} 与矩阵、向量或标量 {it:B} 是 p-兼容的，如果 rows({it:A})==rows({it:B}) 且 
cols({it:A})==cols({it:B})。p 代表加号；p-兼容性是能够将矩阵相加所需的属性之一。
p-兼容性并不意味着矩阵是相同类型的。因此 (1,2,3) 和（4,5,6） 是 p-兼容的，同时与 
("this","that","what") 也是 p-兼容的，但与（4\5\6）不是。

{* index permutation vector}{...}
{* index permutation matrix}{...}
{marker permutation_matrix}{...}
{marker permutation_vector}{...}
{p 4 8 2}
{bf:permutation matrix} 和 {bf:permutation vector}{break}
一个 {it:permutation matrix} 是一个 {it:n x n} 矩阵，它是单位矩阵的行（或列）排列。如果 {it:P} 是排列矩阵，
则 {it:P}{cmd:*}{it:A} 对 {it:A} 的行进行排列，而 {it:A}{cmd:*}{it:P} 对 {it:A} 的列进行排列。排列矩阵还具有特性 {it:P}^(-1) = {it:P}{bf:'}。
    
{p 8 8 2}
一个 {it:permutation vector} 是一个 1 {it:x} {it:n} 或 {it:n} {it:x} 1 的向量，包含整数 1、2、...、{it:n} 的排列。
排列向量可以与下标结合使用，以重新排序矩阵的行或列。排列向量是存储排列矩阵的方法，有助于节省内存；见 
{bf:{help m1_permutation_zh:[M-1] Permutation}}。

{* index pointers}{...}
{marker pointer}{...}
{p 4 8 2}
{bf:pointer}{break}
矩阵被称为指针矩阵，如果其元素是指针。

{p 8 8 2}
指针是一个 {it:variable} 的地址。假设变量 {it:X} 包含一个矩阵。另一个变量 {it:p} 可能包含 137,799,016，如果 137,799,016 是 
{it:X} 存储的地址，则 {it:p} 被称为指向 {it:X}。地址很少以十进制写，因此与说 {it:p} 包含 137,799,016 比较，我们更可能说 
{it:p} 包含 0x836a568，这是我们以十六进制写数字的方式。无论我们如何书写地址，{it:p} 包含一个数字，而该数字对应于另一个变量的地址。

{p 8 8 2}
在我们的程序中，若我们引用 {it:p}，我们是在引用 {it:p} 的内容，即数字 0x836a568。单元操作符 {it:*} 
定义为“引用地址”或“解引用”：{cmd:*}{it:p} 表示 {it:X}。我们可以编码 {cmd:Y = *p} 或 
{cmd:Y = X}，以任一方式都能得到相同的结果。在我们的程序中，我们可以引用 {it:X}{cmd:[}{it:i}{cmd:,}{it:j}{cmd:]} 或者 
{cmd:(*}{it:p}{cmd:)[}{it:i}{cmd:,}{it:j}{cmd:]}, 以任一方式，我们都能获得 {it:X} 的 {it:i}，{it:j} 元素。

{p 8 8 2}
单元操作符 {it:&} 是我们将地址放入 {it:p} 的方式。
为了将 {it:X} 的地址加载到 {it:p} 中，我们编码 {it:p} {cmd:=} 
{cmd:&}{it:X}。

{p 8 8 2}
特殊地址 0（零，以十六进制表示为 0x0），也称为 NULL，是我们记录指针变量指向不存在的方法。指针变量包含 NULL 或有效地址的另一个变量。

{p 8 8 2}
见 {bf:{help m2_pointers_zh:[M-2] 指针}} 以获取有关指针及其使用的完整描述。

{* index pragma tt}{...}
{p 4 8 2}
{bf:pragma}{break}
   "(务实的信息) 当有意义的标准化注释形式。它可能会使用特殊语法或标准评论语法中的特定形式。 pragma 通常传达非必需的信息，通常旨在帮助编译器优化程序。" – 
   {it:自由在线计算机词典}，
   {browse "http://foldoc.org"}, 编辑者 Denis Howe。
   对于 Mata，请见 {bf:{help m2_pragma_zh:[M-2] pragma}}。

{* index rank}{...}
{p 4 8 2}
{bf:rank}{break}
    常用术语是 rank、row rank 和 column rank。矩阵 {it:A} 的行秩 {it:m} {it:x} {it:n} 是 {it:A} 中线性独立的行的数量。列秩定义类似，即线性独立的列的数量。然而，行秩和列秩这两个术语只是强调；它们是相等的，结果只称为 A 的秩。

{p 8 8 2}
对于方阵 {it:A}（其中 {it:m}=={it:n}），当且仅当 rank({it:A})=={it:n} 时，矩阵是可逆的。在这种情况下，通常会听到 A 是满秩的，而在其他情况下是秩缺失的。见 {bf:{help mf_rank_zh:[M-5] rank()}}。

{* index r-conformability}{...}
{marker r-conformability}{...}
{p 4 8 2}
{bf:r-conformability}{break}
    一组两个或更多的矩阵、向量或标量 {it:A}、{it:B} ... 被称为 r-兼容的，如果它们各自与 
    行数为 max(rows({it:A}), rows({it:B}), ...) 和 
    列数为 max(cols({it:A}), cols({it:B}), ...) 的矩阵是 {it:c-兼容} 的。

{p 8 8 2}
    r-兼容性是一种更宽松的 {it:c-兼容性} 形式，若两个矩阵是 c-兼容的，则它们是 r-兼容的，但反之则不成立。例如, {it:A}: 1 {it:x} 3 和 
    {it:B}: 3 {it:x} 1 是 r-兼容的，但不是 c-兼容的。
    此外，{help m6_glossary##c-conformability:c-兼容性} 定义仅适用于一对 
    矩阵；r-兼容性可以应用于一组矩阵。

{p 8 8 2}
    r-兼容性常常是要求针对函数的参数，通常自然期望函数需要标量。
    有关示例，请见 {bf:r-兼容性} 在 {bf:{help mf_normal_zh:[M-5] normal()}} 中。

{* index real tt}{...}
{p 4 8 2}
{bf:real}{break}
一个矩阵被称为实数矩阵，如果所有元素都是实数，并且存储在 {cmd:real} 矩阵中。
实数是 Mata 中的两种数字类型之一，另一种是复数。另见 {it:{help m6_glossary##type:type, eltype, and orgtype}}。

{p 4 8 2}
{marker stripes}{...}
{bf:行和列的条纹}{break}
条纹指与 Stata 矩阵的行和列相关的标签；见
{it:{help m6_glossary##Stata_matrix:Stata 矩阵}}。

{p 4 8 2}
{marker row-major}{...}
{bf:row-major order}{break}
矩阵作为向量存储。行主序指定通过堆叠行创建矩阵的向量形式。例如，

	: A
	       1   2   3
	    {c TLC}{hline 13}{c TRC}
	  1 {c |}  1   2   3  {c |}
	  2 {c |}  4   5   6  {c |}
	    {c BLC}{hline 13}{c BRC}

{p 8 8 2}
    存储为 

	       1   2   3   4   5   6
	    {c TLC}{hline 25}{c TRC}
	  1 {c |}  1   2   3   4   5   6  {c |}
	    {c BLC}{hline 25}{c BRC}

{p 8 8 2}
    以行主序存储。 Mata 使用行主序。
    LAPACK 函数使用列主序。见 
    {it:{help m6_glossary##column-major:列主序}}。

{p 4 8 2}
{bf:rowvector}{break}
    见 {it:{help m6_glossary##vector:vector, colvector, and rowvector}}。

{* index scalar tt}{...}
{p 4 8 2}
{bf:scalar}{break}
    一个特殊矩阵，只有一行和一列。 
    在需要矩阵、向量、列向量或行向量的地方，可以替换为标量，但反之不成立。

{* index schur decomposition tt}{...}
{marker schurdecomp}{...}
{p 4 8 2}
{bf:Schur decomposition}{break}
    矩阵 {bf:A} 的 Schur 分解可以写为

                {bf:Q}'{bf:A}{bf:Q} = {bf:T}

{p 8 8 2}
其中 {bf:T} 在 {help m6_glossary##schurform:Schur form} 中，{bf:Q} 是 Schur 向量矩阵，如果 {bf:A} 是实数，则是正交的，如果 {bf:A} 是复数，则是单位的。见 {bf:{help mf_schurd_zh:[M-5] schurd()}}。

{* index schur form tt}{...}
{marker schurform}{...}
{p 4 8 2}
{bf:Schur form}{break}

{p 8 8 2}
有两种 Schur 形式：实数 Schur 形式和复数 Schur 形式。

{p 8 8 2}
如果实数矩阵是 Schur 形式，如果它是块上三角矩阵并且有 1 {it:x} 1 和 2 {it:x} 2 对角块。每个 2 {it:x} 2 对角块具有相等的对角元素和相反符号的非对角元素。实数特征值位于对角线，复数特征值可以从 2 {it:x} 2 对角块获得。

{p 8 8 2}
如果复数方阵是 Schur 形式，则它是上三角矩阵，特征值位于对角线上。

{* index source code}{...}
{p 4 8 2}
{bf:source code}{break}
源代码指的是您输入 Mata 定义函数的可读代码。源代码被编译为目标代码，目标代码是二进制的。见 {bf:{help m1_how_zh:[M-1] 如何}}。

{* index square matrix}{...}
{p 4 8 2}
{bf:square matrix}{break}
一个矩阵如果行数和列数相同，则称为方阵。
一个 3 {it:x} 3 矩阵是方阵；一个 3 {it:x} 4 矩阵不是。

{marker Stata_matrix}{...}
{p 4 8 2}
{bf:Stata matrix}{break}
Stata 本身，与 Mata 分开，具有矩阵功能。
Stata 矩阵与 Mata 矩阵是分开的，尽管可以从 Mata 矩阵获取并放置 Stata 矩阵；
见 {help mf_st_matrix_zh:[M-5] st_matrix()}。 Stata 矩阵在 {manhelp matrix P} 和 {findalias frmatexp} 中进行了描述。

{p 8 8 2}
Stata 矩阵完全是数值的，只包含实数元素。Stata 矩阵还与 Mata 矩阵不同，因为除了矩阵本身外，Stata 矩阵在行和列上具有文本标签。 这些标签称为行条纹和列条纹。
可以把行和列看成有名字。这里名字的目的将在 {findalias frmatrow} 中讨论。Mata 矩阵没有这样的标签。因此，获取或放置 Stata 矩阵中记录的所有信息需要三个步骤：1）获取或放置矩阵本身；2）获取或放置行条纹到或从字符串矩阵中；3）获取或放置列条纹到或从字符串矩阵中。这些步骤在 {help mf_st_matrix_zh:[M-5] st_matrix()} 中进行了讨论。

{* index string}{...}
{p 4 8 2}
{bf:string}{break}
一个矩阵被称为字符串矩阵，如果其元素是字符串（文本）；见 {it:{help m6_glossary##type:type, eltype, and orgtype}}。
在 Mata 中，字符串可以是文本或二进制，长度可以长达 2,147,483,647 个字符（字节）。

{* index structure}{...}
{p 4 8 2}
{bf:structure}{break}
一个结构是一个 {it:eltype}，指表示一组通过一个名称结合在一起的变量。
{cmd:struct} {cmd:mystruct} 可以是 

		{cmd}struct mystruct {c -(}
			real scalar     n1, n2
			real matrix     X
		{c )-}{txt}

{pmore}
如果变量 {cmd:a} 声明为 {cmd:struct} {cmd:mystruct}
{cmd:scalar}，则标量 {cmd:a} 将包含三部分：
两个实数标量和一个实数矩阵。这些部分称为 {cmd:a.n1}、{cmd:a.n2} 和 {cmd:a.X}。如果变量 {cmd:b} 
也声明为 {cmd:struct} {cmd:mystruct} {cmd:scalar}，它也将包含三部分，{cmd:b.n1}、{cmd:b.n2} 和 {cmd:b.X}。
结构的优点是可以整体引用。您可以编码 {cmd:a.n1=b.n1} 复制一个部分，或编码 
{cmd:a=b} 复制所有三个部分。在所有情况下，{cmd:a} 和 {cmd:b} 都是变量。例如，您可以将 {cmd:a} 传递给子程序，这相当于传递所有三个值。

{pmore}
结构变量通常是标量，但不限于此。如果 {cmd:A} 是 {cmd:struct} {cmd:mystruct} {cmd:matrix}，则 {cmd:A} 的每个元素将包含三部分，您可以引用例如 
{cmd:A[2,3].n1}、{cmd:A[2,3].n2} 和 {cmd:A[2,3].X}，甚至引用 {cmd:A[2,3].X[3,2]}。

{pmore}
见 {bf:{help m2_struct_zh:[M-2] struct}}。

{* index subscripts}{...}
{* index range subscripts, see subscripts}{...}
{* index list subscripts, see subscripts}{...}
{p 4 8 2}
{bf:subscripts}{break}
下标是引用矩阵的元素或子矩阵的方式。

{p 8 8 2}
Mata 提供两种类型的下标，称为列表下标和范围下标。

{p 8 8 2}
在列表下标中，{it:A}{cmd:[2,3]} 引用 {it:A} 的 (2,3) 元素。{it:A}{cmd:[(2\3), (4,6)]} 引用 {it:A} 的第二和第三行、第四和第六列构成的子矩阵。

{p 8 8 2}
在范围下标中，{it:A}{cmd:[|2,3|]} 同样引用 {it:A} 的 (2,3) 元素。{it:A}{cmd:[|2,3\4,6|]} 引用从 (2,3) 元素到 (4,6) 元素的子矩阵。

{p 8 8 2}
有关更多信息，请见 {bf:{help m2_subscripts_zh:[M-2] 下标}}。

{* index symmetric matrices}{...}
{marker symmetricmatrices}
{p 4 8 2}
{bf:symmetric matrices}{break}
如果 {it:A}={it:A}{bf:'}，则矩阵 {it:A} 是对称的。对称一词通常保留给实数矩阵，在这种情况下，对称矩阵是具有 
{it:a_ij}=={it:a_ji} 的方矩阵。

{p 8 8 2}
如果矩阵 {it:A}={it:A}{bf:'}，并且转置操作符的理解为共轭转置操作符；见 {it:{help m6_glossary##hermitianmtx:Hermitian 矩阵}}。
在 Mata 中，{bf:'} 操作符是共轭转置操作符，因此在本手册中，我们将使用对称一词来同时指代实数对称矩阵和复数 Hermitian 矩阵。

{p 8 8 2}
有时，您会看到我们在对称一词后加上括号中的 Hermitian，例如，“结果矩阵是对称的（Hermitian）”。 这样做只是为了强调。

{p 8 8 2}
对称（Hermitian）矩阵的逆是对称（Hermitian）。

{* index symmetriconly}{...}
{marker symmetriconly}{...}
{p 4 8 2}
{bf:symmetriconly}{break}
symmetriconly 是我们创造的术语，指的是一个方阵，其对应的非对角元素彼此相等，无论矩阵是实数还是复数。symmetriconly 矩阵在数学上没有意义，但有时在数据处理和内存管理例程中，能够区分此类矩阵是很有用的。

{* index stata time-series--operated variable}{...}
{* index stata op.varname, see time-series--operated variable}{...}
{p 4 8 2}
{bf:time-series-operated variable}{break}
时间序列操作变量是 Stata 的概念。该术语指的是 {it:op}{cmd:.}{it:varname} 的组合，例如 {cmd:L.gnp} 表示变量 {cmd:gnp} 的滞后值。Mata 的 
{bf:{help mf_st_data_zh:[M-5] st_data()}} 函数与时间序列操作变量的工作方式与与其他变量的相同，但许多其他 Stata 接口函数不允许 {it:op}{cmd:.}{it:varname}
的组合。在这些情况下，您必须使用 
{bf:{help mf_st_tsrevar_zh:[M-5] st_tsrevar()}}。

{p 4 8 2}
{bf:titlecase}{break}
    Titlecasing 是一个 Unicode 概念，在 Mata 中由 {help mf_ustrupper_zh:ustrtitle()} 函数实现。"Titlecase" 短语意味着将每个 Unicode 单词的第一个字母转换为 Unicode titlecase。
    这与将每个 Unicode 单词的第一个字母大写几乎相同，但并不完全相同。类似于大写，标题大小写字母依赖于区域性，这意味着在不同的区域，字母的标题大小写形式可能会不同。在某些区域，字母单词开头的大写形式不应带重音，尽管该大写字母单独会带重音。
    
{* index traceback log}{...}
{p 4 8 2}
{bf:traceback log}{break}
    当函数失败时——无论是因为编程错误还是使用不当——将生成追溯日志：

		: {cmd:myfunction(2,3)}
			     {err}solve(): 3200 兼容性错误
		             mysub():     - 函数返回错误
		        myfunction():     - 函数返回错误
		             <istmt>:     - 函数返回错误{txt}
		r(3200);

{p 8 8 2}
日志显示 {cmd:solve()} 检测到了问题——参数不兼容——并且 {cmd:solve()} 被 {cmd:mysub()} 调用，而 
{cmd:mysub()} 被 {cmd:myfunction()} 调用，最终被你在键盘上输入的内容调用。有关更多信息，请参见 {bf:{help m2_errors_zh:[M-2] 错误}}。

{* index transmorphic}{...}
{marker transmorphic}{...}
{p 4 8 2}
{bf:transmorphic}{break}
    Transmorphic 是一个 {it:eltype}。标量、向量或矩阵可以是变形的，这表明它的元素可以是实数、复数、字符串、指针，甚至结构。元素都是同一类型；您只是没有说明它们是什么。未声明的变量被视为变形变量，或变量可以明确声明为 {cmd:transmorphic}。变形只是花哨的行话，意思是标量、向量或矩阵的元素可以是任何类型，并且在一瞬之间，标量、向量或矩阵可能会从持有一种类型的元素变化为另一种类型的元素。

{pmore}
    有关更多信息，请见 {bf:{help m2_declarations_zh:[M-2] 声明}}。

{p 4 8 2}
{marker transpose}{...}
{bf:transpose}{break}
转置操作符在不同的书籍中采用不同的写法，包括 {bf:'}、上标 {it:*}、上标 {it:T} 和 
上标 {it:H}。在这里，我们使用 {bf:'} 符号：
{it:A}{bf:'} 意味着 {it:A} 的转置，即将 {it:A} 的行和列互换。

{p 8 8 2}
在复分析中，转置操作符，无论其写入方式如何，通常定义为共轭转置；也就是说，先互换矩阵的行和列，然后对每个元素取共轭，或以相反的顺序进行——没有区别。共轭仅意味着反转复数的虚部的符号：1+2i 的共轭是 1-2i。实数的共轭是该数字本身；2 的共轭是 2。

{p 8 8 2}
在 Mata 中，{cmd:'} 被定义为共轭转置。
由于实数的共轭是该数字本身，因此当 {it:A} 为实数时，{it:A}{cmd:'} 是常规的转置。同样，我们定义了 {it:'} 使其对字符串和指针矩阵执行常规转置。然而，对于复数矩阵，{cmd:'} 还执行共轭。

{p 8 8 2}
如果您有一个复数矩阵，并且只想对其进行转置而不对其元素取共轭，请参见 
{bf:{help mf_transposeonly_zh:[M-5] transposeonly()}}。
或者编码 {cmd:conj(}{it:A}{cmd:')'}. 额外的 {cmd:conj()} 将撤销转置操作符执行的不必要的共轭。

{p 8 8 2}
通常，您希望转置和共轭相辅相成。大多数数学公式的广义化到复数值时都是如此。

{* index triangular matrix}{...}
{* index lower triangular matrix, see triangular matrix}{...}
{* index upper triangular matrix, see triangular matrix}{...}
{p 4 8 2}
{bf:triangular matrix}{break}
三角矩阵是指所有在对角线以上的元素均等于零的矩阵或所有在对角线以下的元素均等于零的矩阵。

{p 8 8 2}
如果矩阵 {it:A} 在对角线以上的所有元素均为零，则称其为 {it:lower triangular} 矩阵，即 {it:A}[{it:i},{it:j}]==0， {it:j}>{it:i}。

{p 8 8 2}
如果矩阵 {it:A} 在对角线以下的所有元素均为零，则称其为 {it:upper triangular} 矩阵，即 {it:A}[{it:i},{it:j}]==0， {it:j}<{it:i}。

{p 8 8 2}
对角矩阵同时是下三角和上三角矩阵。值得一提的是，任何适合与三角矩阵一起使用的函数也适合与对角矩阵一起使用。

{p 8 8 2}
三角矩阵通常是 {it:square} 矩阵。

{p 8 8 2}
三角矩阵的逆也是三角矩阵。三角矩阵的行列式是对角元素的乘积。三角矩阵的特征值是对角元素。

{* index eltype it}{...}
{* index orgtype it}{...}
{* index type it}{...}
{marker type}{...}
{p 4 8 2}
{bf:type}, {bf:eltype}, 和 {bf:orgtype}{break}
矩阵（或向量或标量）的 {it:type} 正式定义为矩阵的 {it:eltype} 和 {it:orgtype}，依次列出——类似于 {cmd:real} {cmd:vector}——但它也可以仅意味着其中之一——例如 
{it:eltype} {cmd:real} 或 {it:orgtype} {cmd:vector}。

{p 8 8 2}
{it:eltype} 指元素的类型。 {it:eltypes} 包含：

	    {cmd:real}            数字，例 1、2、3.4
	    {cmd:complex}         数字，例如 1+2i、3+0i
	    {cmd:string}          字符串，例如 "bill"
	    {cmd:pointer}         指针，例如 {cmd:&}{it:varname}
	    {cmd:struct}          结构 

        {cmd:numeric}         意为 {cmd:real} 或 {cmd:complex}
        {cmd:transmorphic}    意为上述任意类型
	
{p 8 8 2}
{it:orgtype} 指组织类型。
{it:orgtype} 指定元素的组织方式。 {it:orgtypes} 包含：

	    {cmd:matrix}        二维数组
	    {cmd:vector}        一维数组
	    {cmd:colvector}     一维列数组
	    {cmd:rowvector}     一维行数组
	    {cmd:scalar}        单个项目

{p 8 8 2}
完全指定的类型是元素类型和组织类型的组合，例如 {cmd:real} {cmd:vector}。

{marker unary_operator}{...}
{p 4 8 2}
{bf:unary operator}{break}
一元操作符是应用于一个参数的操作符。在 {cmd:-2} 中，减号是一个一元操作符。在
{cmd:!(}{it:a}{cmd:==}{it:b} {cmd:|} {it:a}{cmd:==}{it:c}{cmd:)},
{cmd:!} 是一元操作符。

{* index underscore functions}{...}
{* index functions, underscore}{...}
{marker underscorefcns}{...}
{p 4 8 2}
{bf:underscore functions}{break}
    {it:Functions} 名称以下划线开头的称为下划线函数，当存在一个下划线函数时，通常也会存在一个没有下划线前缀的函数。在这些情况下，该函数通常是基于下划线函数实现的，而下划线函数使用起来更困难，但执行速度更快或提供更大的控制权。通常，区别在于错误处理。

{p 8 8 2}
    例如，函数 {cmd:fopen()} 打开一个文件。如果文件不存在，则该程序的执行将中止。函数 {cmd:_fopen()} 做相同的事情，但如果无法打开文件，它将返回一个特殊值，指示失败，程序需检查指示器并采取适当措施。当文件可能不存在时，这可能很有用。如果文件不存在，您希望采取不同的操作。通常，如果文件不存在，您希望中止并且使用 {cmd:fopen()} 将允许您编写更少的代码。

{p 4 8 2}
{bf:unitary matrix}{break}
    见 {it:{help m6_glossary##orthomtx:正交矩阵}}。 

{marker utf8}{...}
{phang}
{bf:UTF-8}{break}
    UTF-8 是 Stata 所选择的编码 Unicode 字符的方式。它与 ASCII 编码向后兼容，这意味着普通 ASCII 字符在 UTF-8 中的编码与 ASCII 中的编码相同，并且字符串仍然以空值终止。超出普通 ASCII 的字符使用每个字符 2 到 4 个字节进行编码。与其他 Unicode 编码方式一样，所有可能的 Unicode 字符（代码点）都可以用 UTF-8 表示。

{* index variable}{...}
{marker variable}{...}
{p 4 8 2}
{bf:variable}{break}
    在程序中，存储值的实体（{it:a}、{it:b}、{it:c}、...、{it:x}、{it:y}、{it:z}）称为变量。变量的名称长度为 1 到 32 个字符。要正式一些：变量是一个容器；它包含一个矩阵、向量或标量，并通过变量名称或另一个包含指向它的 {it:pointer} 的变量来引用它。

{p 8 8 2}
    此外，{it:variable} 有时也用于指代数据矩阵的列；见 {it:{help m6_glossary##datamtx:数据矩阵}}。

{* index vector tt}{...}
{* index rowvector tt}{...}
{* index colvector tt}{...}
{marker vector}{...}
{p 4 8 2}
{bf:vector}, {bf:colvector}, 和 {bf:rowvector}{break}
    一个只有一行或一列的矩阵的特殊情况。向量可以替代任何需要矩阵的地方。但是，无法用矩阵替代向量。

{p 8 8 2}
    {cmd:colvector} 是一个只有一列的向量。

{p 8 8 2}
    {cmd:rowvector} 是一个只有一行的向量。

{p 8 8 2}
    {cmd:vector} 可以是 {cmd:rowvector} 或 {cmd:colvector}，但没有说明哪种。

{* index view matrix}{...}
{marker view}{...}
{p 4 8 2}
{bf:view}{break}
    视图是一个特殊类型的矩阵，外观看起来像一个普通矩阵，但实际上矩阵中的值是当前内存中 Stata 数据集中的某些或所有变量和观测值的值。它的值不仅仅等于数据集的值；它们是数据集的值：如果矩阵的一个元素被更改，Stata 数据集中对应的变量和观测值也会发生变化。视图

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <m6_glossary.sthlp>}