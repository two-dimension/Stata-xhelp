{smcl}
{* *! version 1.1.11  15may2018}{...}
{vieweralsosee "[M-2] struct" "mansection M-2 struct"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[M-2] Declarations" "help m2_declarations_zh"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[M-2] Intro" "help m2_intro_zh"}{...}
{viewerjumpto "Syntax" "m2_struct_zh##syntax"}{...}
{viewerjumpto "Description" "m2_struct_zh##description"}{...}
{viewerjumpto "Links to PDF documentation" "m2_struct_zh##linkspdf"}{...}
{viewerjumpto "Remarks" "m2_struct_zh##remarks"}{...}
{viewerjumpto "References" "m2_struct_zh##references"}
{help m2_struct:English Version}
{hline}{...}
{p2colset 1 17 19 2}{...}
{p2col:{bf:[M-2] struct} {hline 2}}结构
{p_end}
{p2col:}({mansection M-2 struct:查看完整的PDF手册条目}){p_end}
{p2colreset}{...}


{marker syntax}{...}
{title:语法}

	{cmd:struct} {it:结构名称} {cmd:{c -(}}
		{it:声明(们)}
	{cmd:{c )-}}

{p 4 4 2}
例如 

	{cmd:struct mystruct {c -(}}
		{cmd:real scalar    n1, n2}
		{cmd:real matrix    X}
	{cmd:{c )-}}


{marker description}{...}
{title:描述}

{p 4 4 2}
一个结构包含一组在一个名称下绑定在一起的变量。
有关结构及其使用的更详细描述，请参见
{help m2_struct##gould2018sp:Gould (2018)}。


{marker linkspdf}{...}
{title:PDF文档链接}

        {mansection M-2 structRemarksandexamples:备注和示例}

{pstd}
上述部分未包含在此帮助文件中。


{marker remarks}{...}
{title:备注}

{p 4 4 2}
备注按以下标题列出：

	{help m2_struct##tagintro:简介}
	{help m2_struct##tagdifnames:结构和函数必须有不同的名称}
	{help m2_struct##tagexplicit:结构变量必须明确声明}
	{help m2_struct##tagscalar:尽可能将结构变量声明为标量}

	{help m2_struct##tagmatrices:结构的向量和矩阵}
	{help m2_struct##tagstructstruct:结构的结构}
	{help m2_struct##tagpointer:指向结构的指针}

	{help m2_struct##tagoper1:用于结构成员的运算符和函数}
	{help m2_struct##tagoper2:用于整个结构的运算符和函数}

	{help m2_struct##taglisting:列出结构}

	{help m2_struct##tagpassthru:作为透传使用的变形体}
	{help m2_struct##tagsavdef:保存编译后的结构定义}
	{help m2_struct##tagsavvar:保存结构变量}


{marker tagintro}{...}
{title:简介}

{p 4 4 2}
以下是结构使用的概述：

	{cmd}struct mystruct {c -(}
		real scalar    n1, n2
		real matrix    X
	{c )-}

	function myfunc()
	{
		struct mystruct scalar	e

		{txt:...}
		e.n1 = {txt:...}
		e.n2 = {txt:...}
		e.X  = {txt:...}
		{txt:...}
		{txt:...} mysubroutine(e, {txt:...})
		{txt:...}
	}

	function mysubroutine(struct mystruct scalar x, {txt:...})
	{
		struct mystruct scalar   y
		{txt:...}
		{txt:...} x.n1 {txt:...} x.n2 {txt:...} x.X {txt:...}
		{txt:...}
                y = mysubfcn(x)
		{txt:...}
		{txt:...} y.n1 {txt:...} y.n2 {txt:...} y.X {txt:...}
		{txt:...} x.n1 {txt:...} x.n2 {txt:...} x.X {txt:...}
		{txt:...}
	}

	{cmd}struct mystruct scalar mysubfcn(struct mystruct scalar x)
	{
		struct mystruct scalar   result

		result = x
		{txt:...} result.n1 {txt:...} result.n2 {txt:...} result.X {txt:...}
		return(result)
	}{txt}

{p 4 4 2}
请注意以下几点：

{p 8 12 2}
    1.  我们首先定义了结构。定义并不会创建变量；定义是指当我们在将来提到
        {cmd:struct} {cmd:mystruct}时的意义。此定义是在使用它的函数定义的
        之外和单独完成的。结构在函数之前定义。

{p 8 12 2}
    2.  在 {cmd:myfunc()} 中，我们声明变量 {cmd:e} 为 
        {cmd:struct} {cmd:mystruct} {cmd:scalar}。
        我们然后使用变量 {cmd:e.n1}、{cmd:e.n2} 和 {cmd:e.X} 来
        使用任何其他变量。在调用 
        {cmd:mysubroutine()} 时，我们传递了整个 {cmd:e}
        结构。

{p 8 12 2}
     3.  在 {cmd:mysubroutine()} 中，我们声明第一个接收的参数为 
         {cmd:struct} {cmd:mystruct} {cmd:scalar}。我们
         选择将其命名为 {cmd:x} 而不是 {cmd:e}，以
         强调名称并不重要。{cmd:y}
         也是一个 {cmd:struct} {cmd:mystruct} {cmd:scalar}。

{p 8 12 2}
     4.  {cmd:mysubfcn()} 不仅接受一个 {cmd:struct} {cmd:mystruct}
         作为参数，还返回一个 {cmd:struct} {cmd:mystruct}。
         结构的最佳使用之一是作为返回多个相关值的方式。

{p 12 12 2}
         行 {cmd:result=x} 复制了结构中的所有值；
         我们无须编码 
         {cmd:result.n1=x.n1}, 
         {cmd:result.n2=x.n2}, 
         和
         {cmd:result.X=x.X}。 


{marker tagdifnames}{...}
{title:结构和函数必须有不同的名称}

{p 4 4 2}
您可以按照定义函数的方式定义结构，
在冒号提示符下，将定义包含在大括号中：

	: {cmd:struct twopart {c -(}}
	>         {cmd:real scalar    n1, n2}
	> {cmd:{c )-}}

	: {cmd:function setuphistory()}
	> {cmd:{c -(}}
	>         ...
	> {cmd:{c )-}}

{p 4 4 2}
结构和函数不能同名。如果您调用一个结构
{cmd:twopart}，则不能有一个名为 {cmd:twopart()} 的函数，反之亦然。


{marker tagexplicit}{...}
{title:结构变量必须明确声明}

{p 4 4 2}
声明通常在Mata中是可选的。您可以编写 

	{cmd}real matrix swaprows(real matrix A, real scalar i1, real scalar i2)
	{c -(}
		real matrix     B
		real rowvector  v

		B = A
		v = B[i1, .]
		B[i1, .] = B[i2, .]
		B[i2, .] = v
		return(B)
	{c )-}{txt}

{p 4 4 2}
或您可以编写 

	{cmd}function swaprows(A, i1, i2)
	{c -(}
		B = A
		v = B[i1, .]
		B[i1, .] = B[i2, .]
		B[i2, .] = v
		return(B)
	{c )-}{txt}

{p 4 4 2}
然而，当变量、参数或返回值是结构时，您必须
明确声明它：

	{cmd}function makecalc()
	{
		struct twopart scalar   t

		t.n1 = t.n2 = 0 
		{txt:...}
	}

	function clear_twopart(struct twopart scalar t)
	{
		t.n1 = t.n2 = 0
	}

	struct twopart scalar new_twopart()
	{
		struct twopart scalar   t

		t.n1 = t.n2 = 0
		return(t)
	}{txt}

{p 4 4 2}
在上述函数中，我们提到变量 {cmd:t.n1} 和 {cmd:t.n2}。
Mata编译器无法解释这些名称，除非它知道
结构的定义。

{p 4 4 2}
此外：  
所有结构引用在编译时解析，而不是在运行时。也就是说，
像 {cmd:t.n1} 这样的术语不是存储在编译代码中并在执行时解析的。
相反，Mata编译器在编译您的代码时访问结构定义。编译器知道 {cmd:t.n1} 是指结构的第一个
元素，并生成有效代码以访问它。


{marker tagscalar}{...}
{title:尽可能将结构变量声明为标量}

{p 4 4 2}
在我们的声明中，我们编码如下：

		{cmd:struct twopart scalar   t}

{p 4 4 2}
而不是简单地编码 

		{cmd:struct twopart          t}

{p 4 4 2}
尽管简化的语句是有效的。

{p 4 4 2}
结构变量可以是标量、向量或矩阵；当您
不说明哪种类型，默认为矩阵。

{p 4 4 2}
结构的绝大多数用途是标量，如果您告诉编译器结构是标量，则会生成更高效的代码。
此外，当您使用结构向量或矩阵时，您需要填写一个额外的步骤，如下一节所述。


{marker tagmatrices}{...}
{title:结构的向量和矩阵}

{p 4 4 2}
就像您可以有 {cmd:real} 标量、向量或矩阵一样，您可以有
结构标量、向量或矩阵。以下都是有效的：

		{cmd}struct twopart scalar     t
		struct twopart vector     t
		struct twopart rowvector  t
		struct twopart colvector  t
		struct twopart matrix     t{txt}

{p 4 4 2}
在 {cmd:struct} {cmd:twopart} {cmd:matrix} 中，
矩阵的每个元素都是一个单独的结构。
假设这个矩阵是2 {it:x} 3。然后您可以引用以下任何变量，

		{cmd}t[1,1].n1
		t[1,2].n1
		t[1,3].n1
		t[2,1].n1
		t[2,2].n1
		t[2,3].n1{txt}

{p 4 4 2}
同样适用于 {cmd:t[}{it:i}{cmd:,}{it:j}{cmd:].n2}。

{p 4 4 2}
如果 {cmd:struct} {cmd:twopart} 还包含一个矩阵 {cmd:X}，那么

		{cmd:t[}{it:i}{cmd:,}{it:j}{cmd:].X}

{p 4 4 2}
将指向第 ({it:i},{it:j}) 的矩阵。

		{cmd:t[}{it:i}{cmd:,}{it:j}{cmd:].X[}{it:k}{cmd:,}{it:l}{cmd:]}

{p 4 4 2} 将指向第 ({it:k},{it:l}) 的元素
({it:i},{it:j}) 的矩阵。


{p 4 4 2}
如果 {cmd:t} 要是一个 2 {it:x} 3 的矩阵，
您必须安排将其设置为 2 {it:x} 3。经过声明 

		{cmd:struct} {cmd:twopart} {cmd:matrix}   {cmd:t}

{p 4 4 2}
{cmd:t} 将是 0 {it:x} 0。这个结果与 {cmd:t} 是一个
{cmd:real} {cmd:matrix} 的情况相同，在声明后，{cmd:t} 是 0 {it:x} 0。

{p 4 4 2}
无论 {cmd:t} 是一个 {cmd:real} {cmd:matrix} 还是一个 {cmd:struct} {cmd:twopart}
{cmd:matrix}，您都通过赋值对 {cmd:t} 进行分配。
假设 {cmd:t} 是一个 {cmd:real} {cmd:matrix}。分配问题有三种解决方案：

		(1)  {cmd:t = x}

		(2)  {cmd:t = somefunction(}...{cmd:)}

		(3)  {cmd:t = J(}{it:r}{cmd:,} {it:c}{cmd:,} {it:v}{cmd:)}

{p 4 4 2}
这三种方法都是如此自然，以至于您根本不会将它们视为分配；您
认为它们是定义。

{p 4 4 2}
与结构的情况相同。

{p 4 4 2}
让我们逐一处理每一种情况。

{p 8 12 2}
    1.  {cmd:x} 包含一个 2 {it:x} 3 {cmd:struct} {cmd:twopart}。您编码 

		     {cmd:t = x}

{p 12 12 2}
        现在 {cmd:t} 包含 {cmd:x} 的复制。{cmd:t} 是 2 {it:x} 3。

{p 8 12 2}
    2.  {cmd:somefunction(}...{cmd:)} 返回一个 2 {it:x} 3 {cmd:struct} 
        {cmd:twopart}。您编码 

		     {cmd:t = somefunction(}...{cmd:)}

{p 12 12 2}
        现在 {cmd:t} 包含这个 2 {it:x} 3 的结果。

{p 8 12 2}
    3. Mata 函数 {cmd:J(}{it:r}{cmd:,} {it:c}{cmd:,} {it:v}{cmd:)}
        返回一个 {it:r} {it:x} {it:c} 的矩阵，
        每个元素都设置为 {it:v}。假设变量 
        {cmd:tpc} 包含一个 {cmd:struct} {cmd:twopart} {cmd:scalar}。
        您编码 

		     {cmd:t = J(2, 3, tpc)}

{p 12 12 2}
        现在 {cmd:t} 是 2 {it:x} 3，每个元素都是 
        {cmd:tpc} 的副本。
        这里是您可能如何做到的：

		     {cmd:function} ...{cmd:(}...{cmd:)}
		     {cmd}{
		             struct twopart scalar   tpc
			     struct twopart matrix   t

			     {txt:...}
			     t = J(2, 3, tpc)
			     {txt:...}
		     }{txt}

{p 4 4 2}
最后，还有第四种创建结构向量和矩阵的方法。
当您定义 
				
		{cmd:struct twopart {c -(}}
			{cmd:real scalar    n1, n2}
		{cmd:{c )-}}

{p 4 4 2}
Mata 不仅记录了结构定义，还创建了一个名为 {cmd:twopart()} 的函数，
该函数返回一个 {cmd:struct} {cmd:twopart}。因此，与其经历从预分配的
标量创建矩阵的繁琐过程，您可以简单地编码

		{cmd:t = J(2, 3, twopart())}

{p 4 4 2}
实际上，Mata 为您创建的函数 {cmd:twopart()} 允许
零、一个或两个参数：

		{cmd:twopart()}{col 35}{...}
返回一个 1 {it:x} 1 {cmd:struct twopart}

		{cmd:twopart(}{it:r}{cmd:)}{col 35}{...}
返回一个 {it:r x} 1 {cmd:struct twopart}

		{cmd:twopart(}{it:r}{cmd:,} {it:c}{cmd:)}{col 35}{...}
返回一个 {it:r x c} {cmd:struct twopart}

{p 4 4 2}
因此您可以编码 

		{cmd:t = twopart(2, 3)}

{p 4 4 2}
或者您可以编码 

		{cmd:t = J(2, 3, twopart())}

{p 4 4 2}
无论您编码哪种方式都没有区别。

{p 4 4 2}
无论哪种方式， 
{cmd:t} 中的内容是什么？每个元素包含一个单独的 {cmd:struct}
{cmd:twopart}。在每个 {cmd:struct} {cmd:twopart} 中，标量被设置
为缺失值 ({cmd:.}、{cmd:""}，或 {cmd:NULL}，视情况而定)，向量和
行向量被设置为 1 {it:x} 0，列向量为 0 {it:x} 1，矩阵为 0 {it:x} 0。


{marker tagstructstruct}{...}
{title:结构的结构}

{p 4 4 2}
结构可以包含其他结构：

		{cmd:struct twopart {c -(}}
			{cmd:real scalar    n1, n2}
		{cmd:{c )-}}

		{cmd:struct pair_of_twoparts {c -(}}
			{cmd:struct twopart scalar  t1, t2}
		{cmd:{c )-}}

{p 4 4 2}
如果 {cmd:t} 是一个 {cmd:struct} {cmd:pair_of_twoparts} {cmd:scalar}，那么
{cmd:t} 的成员将是

		{cmd:t.t1}{col 35}一个 {cmd:struct twopart scalar}
		{cmd:t.t2}{col 35}一个 {cmd:struct twopart scalar}

		{cmd:t.t1.n1}{col 35}一个 {cmd:real scalar}
		{cmd:t.t1.n2}{col 35}一个 {cmd:real scalar}
		{cmd:t.t2.n1}{col 35}一个 {cmd:real scalar}
		{cmd:t.t2.n2}{col 35}一个 {cmd:real scalar}

{p 4 4 2}
您也可以创建结构的结构的结构、结构的结构的结构的结构，等等。
但是，您不能在自己内部包含结构：

		{cmd:struct recursive {c -(}}
			...
			{cmd:struct recursive scalar  r}
			...
		{cmd:{c )-}}

{p 4 4 2}
您看到吗，即使在标量情况下，{cmd:struct} {cmd:recursive} 也将
需要无限的内存来存储？


{marker tagpointer}{...}
{title:指向结构的指针}

{p 4 4 2}
您可以这样做：

		{cmd:struct recursive {c -(}}
			...
			{cmd:pointer(struct recursive scalar) scalar  r}
			...
		{cmd:{c )-}}

{p 4 4 2}
因此，如果 {cmd:r} 是一个 {cmd:struct} {cmd:recursive} {cmd:scalar}，则
{cmd:*r.r} 将是下一个结构，如果没有下一个结构，则 {cmd:r.r} 将为
{cmd:NULL}。在分配后立即，{cmd:r.r} 将等于 {cmd:NULL}。

{p 4 4 2}
通过这种方式，您可以创建链表。

{p 4 4 2}
Mata提供了运算符 {cmd:->} 用于访问
指向结构的成员。

{p 4 4 2}
让 {cmd:rec} 为 {cmd:struct} {cmd:recursive}，并假设 
{cmd:struct} {cmd:recursive} 还包含成员 {cmd:real} {cmd:scalar} {cmd:n}， 
因此 {cmd:rec.n} 将是 {cmd:rec} 的 {cmd:n} 值。下一个结构的 
{cmd:n} 值将是 {cmd:rec.r->n}（假设 {cmd:rec.r!=NULL}）。

{p 4 4 2}
{cmd:->} 的语法为 

		{it:exp1}->{it:exp2}

{p 4 4 2}
其中 {it:exp1} 计算为结构指针，{it:exp2} 索引结构。


{marker tagoper1}{...}
{title:用于结构成员的运算符和函数}

{p 4 4 2}
所有运算符、所有函数和 Mata 的所有特性都可以与
结构的成员一起使用。也就是说，给定

	{cmd}struct example {
		real scalar	n
		real matrix	X
	}{txt}

	{cmd:function} ...{cmd:(}...{cmd:)}
	{cmd}{
		real scalar		rs
		real matrix		rm
		struct example scalar	ex

		{txt:...}
	}{txt}

{p 4 4 2}
那么就可以在任何{cmd:rs} 和 {cmd:rm} 有效的地方使用 {cmd:ex.n} 和 {cmd:ex.X}。


{marker tagoper2}{...}
{title:用于整个结构的运算符和函数}

{p 4 4 2}
某些运算符和函数可以用于整个结构，而不仅仅是结构的元素。给定

		{cmd:struct mystruct scalar    ex1, ex2, ex3, ex4}
		{cmd:struct mystruct matrix    E, F, G}

{p 8 12 2}
1.
您可以使用 {cmd:==} 和 {cmd:!=} 来测试相等性：

		{cmd:if (ex1==ex2)} ...

		{cmd:if (ex1!=ex2)} ...

{p 12 12 2}
两个结构相等当且仅当它们的成员相等。

{p 12 12 2}
在示例中，{cmd:struct} {cmd:mystruct} 本身没有包含子结构。如果有，它的
相等性定义将包括检查子结构、子子结构等的相等性。

{p 12 12 2}
在示例中， {cmd:ex1} 和 {cmd:ex2} 是标量。如果它们
是矩阵，则将比较每个元素，并且如果相应元素相等，则两个矩阵相等。

{p 8 12 2}
2.  
您可以使用 
{help m2_op_colon_zh:{bf::==} 和 {bf:!=}}来形成
相等和不相等的模式矩阵。

{p 8 12 2}
3.
您可以使用 {help m2_op_join_zh:逗号和反斜杠}
运算符来形成结构的向量和矩阵：

		{cmd:ex = ex1, ex2 \ ex3, ex4}

{p 8 12 2}
4.
您可以使用 {cmd:&} 来获得指向结构的指针：

		{cmd:ptr_to_ex1 = &ex1}

{p 8 12 2}
5.
您可以使用 {help m2_subscripts_zh:下标} 来访问和复制结构
成员：

		{cmd:ex1 = E[1,2]}

		{cmd:E[1,2] = ex1}

		{cmd:F = E[2,.]}

		{cmd:E[2,.] = F}

		{cmd:G = E[|1,1\2,2|]}

		{cmd:E[|1,1\2,2|] = G}

{p 8 12 2}
6.
您可以使用 {help mf_rows_zh:{bf:rows()} 和 {bf:cols()}} 函数来
获取结构矩阵的行和列数。

{p 8 12 2}
7.
您可以使用 {help mf_eltype_zh:{bf:eltype()} 和 {bf:orgtype()}} 与
结构一起使用。{cmd:eltype()} 返回 {cmd:struct}；{cmd:orgtype()} 返回
通常的结果。

{p 8 12 2}
8.
您可以使用大多数以 {it:is} 开头的函数，例如 
{help mf_isreal_zh:{bf:isreal()}、 {bf:iscomplex()}、 {bf:isstring()} 等等。
这些函数返回1（如果为真）和0（如果为假），通常在结构上返回0。  

{p 8 12 2}
9.
您可以使用 {help mf_swap_zh:swap()} 操作结构。


{marker taglisting}{...}
{title:列出结构}

{p 4 4 2}
要列出结构变量的内容，
作为调试目的请使用 
函数 {cmd:liststruct()}; 参见 
{bf:{help mf_liststruct_zh:[M-5] liststruct()}}。

{p 4 4 2}
使用默认的，未分配表达式方法来列出结构
是不推荐的，
因为所显示的仅是指针值而不是结构本身。


{marker tagpassthru}{...}
{title:使用变形体作为透传}

{p 4 4 2}
变形体 {cmd:transmorphic} {cmd:matrix} 理论上可以容纳任何东西，因此
当我们告诉您结构必须明确声明时，这并不完全正确。假设函数 {cmd:twopart()} 返回一个 
{cmd:struct} {cmd:twopart} {cmd:scalar}。您可以编码 

		{cmd:x = twopart()}

{p 4 4 2}
而不必声明 {cmd:x}（或声明为 {cmd:transmorphic}），这将不会是错误。您不能做到的是
然后引用 {cmd:x.n1} 或 {cmd:x.n2}，因为编译器不会知道 {cmd:x} 包含一个 {cmd:struct} {cmd:twopart}，因此无法解释
变量引用。

{p 4 4 2}
这个特性可以很好地用于实现句柄和透传。

{p 4 4 2}
假设您正在实现一个复杂的系统。为了方便起见，我们假设
该系统找到用户指定的函数的最大值，并且该
系统具有许多附加功能。为了跟踪给定问题，假设
您的系统需要许多变量。一个变量记录要使用的方法。另一个记录是否使用数值导数。
另一个记录当前的梯度向量。还有一个记录迭代次数，等等。可能有数百个这些变量。

{p 4 4 2}
您将所有这些变量绑定在一个结构中：

	{cmd}struct maxvariables {
		real scalar  method
		real scalar  use_numeric_d
		real vector  gradient
		real scalar  iteration
		{txt:...}
	}{txt}

{p 4 4 2}
您设计一个包含许多函数的系统，一些函数调用其他函数，
但因为所有状态变量绑定在一个结构中，
因此很容易将值从一个函数传递到另一个函数。

{p 4 4 2}
您还设计了一个易于使用的系统。它开始时
用户“打开”一个问题，

	{cmd:handle = maximize_open()}

{p 4 4 2}
从那时起，用户将句柄传递给其他 
maximize 例程：

	{cmd:maximize_set_use_numeric_d(handle, 1)}
	{cmd:maximize_set_function_to_max(handle, &myfunc())}
	...
	{cmd:maximize_maximize_my_function(handle)}

{p 4 4 2}
通过这种方式，您作为系统的程序员，可以在一次调用中保留值，并且您也可以修改值。

{p 4 4 2}
然而，您绝不告诉用户句柄是一个 
{cmd:struct} {cmd:maxvariables}。您只需告诉用户输入问题类型 

	{cmd:handle = maximize_open()}

{p 4 4 2}
然后将返回的句柄传递给其他 {cmd:maximize_*()} 
例程。如果用户觉得必须明确声明
句柄，则您告诉他声明为：

	{cmd:transmorphic scalar handle}

{p 4 4 2}
这种保密的好处是什么？您可以确保
用户永远不会更改您 {cmd:struct} 
{cmd:maxvariables} 中的任何值，因为编译器甚至不知道它们是什么。

{p 4 4 2}
因此，您使系统对用户错误的影响更小。


{marker tagsavdef}{...}
{title:保存编译的结构定义}

{p 4 4 2}
您保存编译的结构定义与保存编译的 
函数定义的方法相同；请参见 {bf:{help mata_mosave_zh:[M-3] mata mosave}}
和 {bf:{help mata_mlib_zh:[M-3] mata mlib}}。

{p 4 4 2}
当您定义一个结构，如 {cmd:twopart}， 

		{cmd:struct twopart {c -(}}
			{cmd:real scalar    n1, n2}
		{cmd:{c )-}}

{p 4 4 2}
这也创建了一个函数 {cmd:twopart()}，该函数创建结构的实例。  

{p 4 4 2}
将 {cmd:twopart()} 保存到一个 {cmd:.mo} 文件或一个 {cmd:.mlib} 库中，
同时也保存了编译的定义。一旦 {cmd:twopart()} 被保存，您可以编写未来的程序而不必
重新定义 {cmd:struct} {cmd:twopart}。该定义将自动被找到。


{marker tagsavvar}{...}
{title:保存结构变量}

{p 4 4 2}
包含结构的变量可以像您保存任何其他变量一样保存到磁盘。
不需要特殊操作。
请参见 {bf:{help mata_matsave_zh:[M-3] mata matsave}}
和在 {bf:{help mf_fopen_zh:[M-5] fopen()}} 中的函数 {cmd:fputmatrix()}。
{cmd:mata matsave} 和 {cmd:fputmatrix()} 都可以与结构变量一起使用，
尽管它们的条目并没有提到它们。
{p_end}


{marker references}{...}
{title:参考文献}

{marker gould2018sp}{...}
{phang}
Gould, W. W. 2018.
{browse "http://www.stata-press.com/books/mata-book/":{it:The Mata Book: A Book for Serious Programmers and Those Who Want to Be}}.
College Station, TX: Stata Press.

{phang}
------. 2007.
{browse "http://www.stata-journal.com/sjpdf.html?articlenum=pr0035":Mata Matters: Structures}.
{it:Stata Journal} 7: 556-570.
{p_end}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <m2_struct.sthlp>}