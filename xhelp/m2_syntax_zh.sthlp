{smcl}
{* *! version 1.1.10  15may2018}{...}
{vieweralsosee "[M-2] 语法" "mansection M-2 Syntax"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[M-2] 介绍" "help m2_intro_zh"}{...}
{viewerjumpto "语法" "m2_syntax_zh##syntax"}{...}
{viewerjumpto "描述" "m2_syntax_zh##description"}{...}
{viewerjumpto "PDF 文档链接" "m2_syntax_zh##linkspdf"}{...}
{viewerjumpto "备注" "m2_syntax_zh##remarks"}{...}
{viewerjumpto "参考" "m2_syntax_zh##reference"}
{help m2_syntax:English Version}
{hline}{...}
{p2colset 1 17 19 2}{...}
{p2col:{bf:[M-2] 语法} {hline 2}}Mata 语言的语法和语法结构
{p_end}
{p2col:}({mansection M-2 Syntax:查看完整的 PDF 手册条目}){p_end}
{p2colreset}{...}


{marker syntax}{...}
{title:语法}

{p 4 4 2}
基本语言语法为

	{it:istmt} 

{p 4 4 2} 其中

{col 9}{it:istmt} :={col 25}{it:stmt}
{col 25}{cmd:function} {it:name}{cmd:(}{it:farglist}{cmd:)} {it:fstmt}
{col 25}{it:ftype} {it:name}{cmd:(}{it:farglist}{cmd:)} {it:fstmt}
{col 25}{it:ftype} {cmd:function} {it:name}{cmd:(}{it:farglist}{cmd:)} {it:fstmt}

{col 9}{it:stmt} :={col 25}{it:nothing}
{col 25}{cmd:;}{col 55}(意味着 {it:nothing})
{col 25}{cmd:version} {it:number}
{col 25}{cmd:{c -(}} {it:stmt} ... {cmd:{c )-}}
{col 25}{it:exp}
{col 25}{cmd:pragma} {it:pstmt}
{col 25}{cmd:if (}{it:exp}{cmd:)} {it:stmt} 
{col 25}{cmd:if (}{it:exp}{cmd:)} {it:stmt} {cmd:else} {it:stmt}
{col 25}{cmd:for (}{it:exp}{cmd:;}{it:exp}{cmd:;}{it:exp}{cmd:)} {it:stmt}
{col 25}{cmd:while (}{it:exp}{cmd:)} {it:stmt} 
{col 25}{cmd:do} {it:stmt} {cmd:while (}{it:exp}{cmd:)}
{col 25}{cmd:break}
{col 25}{cmd:continue}
{col 25}{it:label}{cmd::}
{col 25}{cmd:goto} {it:label}
{col 25}{cmd:return} 
{col 25}{cmd:return(}{it:exp}{cmd:)}
			
{col 9}{it:fstmt} :={col 25}{it:stmt}
{col 25}{it:type} {it:arglist}
{col 25}{cmd:external} {it:type} {it:arglist}

{col 9}{it:arglist} :={col 25}{it:name}
{col 25}{it:name}{cmd:()}
{col 25}{it:name}{cmd:,} {it:arglist}
{col 25}{it:name}{cmd:(),} {it:arglist}

{col 9}{it:farglist} :={col 25}{it:nothing}
{col 25}{it:efarglist}
		
{col 9}{it:efarglist} :={col 25}{it:felement}
{col 25}{it:felement}{cmd:,} {it:efarglist}
{col 25}{cmd:|} {it:felement}
{col 25}{cmd:|} {it:felement}{cmd:,} {it:efarglist}

{col 9}{it:felement} :={col 25}{it:name}
{col 25}{it:type} {it:name}
{col 25}{it:name}{cmd:()}
{col 25}{it:type} {it:name}{cmd:()}

{col 9}{it:ftype} :={col 25}{it:type}
{col 25}{cmd:void}

{col 9}{it:type} :={col 25}{it:eltype}
{col 25}{it:orgtype}
{col 25}{it:eltype orgtype}

{col 9}{it:eltype} :={col 25}{cmd:transmorphic}
{col 25}{cmd:string}
{col 25}{cmd:numeric}
{col 25}{cmd:real}
{col 25}{cmd:complex}
{col 25}{cmd:pointer}
{col 25}{cmd:pointer(}{it:ptrtype}{cmd:)}

{col 9}{it:orgtype} :={col 25}{cmd:matrix}
{col 25}{cmd:vector}
{col 25}{cmd:rowvector}
{col 25}{cmd:colvector}
{col 25}{cmd:scalar}

{col 9}{it:ptrtype} :={col 25}{it:nothing}
{col 25}{it:type}
{col 25}{it:type} {cmd:function}
{col 25}{cmd:function}

{col 9}{it:pstmt} :={col 25}{cmd:unset} {it:name}
{col 25}{cmd:unused} {it:name}

{col 9}{it:name} :={col 25}标识符，长度最多 32 个字符

{col 9}{it:label} :={col 25}标识符，长度最多 8 个字符

{col 9}{it:exp} :={col 25}按照 {bf:{help m2_exp_zh:[M-2] exp}} 中定义的表达式


{marker description}{...}
{title:描述}

{p 4 4 2}
Mata 是一种类似 C 的编译成伪代码的语言，具有矩阵扩展和运行时链接功能。


{marker linkspdf}{...}
{title:PDF 文档链接}

        {mansection M-2 SyntaxRemarksandexamples:备注和示例}

{pstd}
以上部分不包括在此帮助文件中。


{marker remarks}{...}
{title:备注}

{p 4 4 2}
备注以以下标题呈现：

	{help m2_syntax##remarks1:分号的处理}
	{help m2_syntax##remarks2:类型和声明}
	{help m2_syntax##remarks3:空的矩阵}
	{help m2_syntax##remarks4:空的函数}
	{help m2_syntax##remarks5:运算符}
	{help m2_syntax##remarks6:下标}
	{help m2_syntax##remarks7:隐含输入符}
	{help m2_syntax##remarks8:函数参数传递约定}
	{help m2_syntax##remarks9:将函数传递给函数}
	{help m2_syntax##remarks10:可选参数}

{pstd}阅读完 {bf:{help m2_syntax_zh:[M-2] 语法}} 后，请参见 
{bf:{help m2_intro_zh:[M-2] 介绍}} 以获取更多解释的条目列表。

{marker remarks1}{...}
{title:分号的处理}

{p 4 4 2}
分号 ({cmd:;}) 被视为行分隔符。它不是必须的，但可以用来将两个语句放在同一物理行上：

{col 9}{cmd:x = 1 ; y = 2 ;}

{p 4 4 2}
在上述示例中，最后一个分号是多余的，但允许使用。

{p 4 4 2}
单个语句可以继续到多行，前提是续行是显而易见的。这里“显而易见”的意思是有悬挂的开放括号或悬挂的二元运算符；例如，

	{cmd:x = (}
	       {cmd:3)}

	{cmd:x = x +}
		{cmd: 2}

{p 4 4 2}
有关更多信息，请参见 {bf:{help m2_semicolons_zh:[M-2] 分号}}。
			

{marker remarks2}{...}
{title:类型和声明}

{p 4 4 2}
变量或函数的 {it:type} 是由以下内容描述的 

		{it:eltype} {it:orgtype} 

{p 4 4 2}
其中 {it:eltype} 和 {it:orgtype} 之一为

		{it:eltype              orgtype}
		{hline 12}        {hline 10}{cmd}
		transmorphic        matrix
		numeric             vector 
		real                rowvector
		complex             colvector
		string              scalar
		pointer{txt}             {hline 10}
		{hline 12}

{p 4 4 2}
例如，一个变量可能是 {cmd:real} {cmd:scalar}，或者 
{cmd:complex} {cmd:matrix}，或者 {cmd:string} {cmd:vector}。

{pstd}
Mata 也有结构体 -- {it:eltype} 是 {cmd:struct} {it:name} -- 但
在这里不讨论这些。有关结构体的讨论，请参见 {help m2_struct_zh:[M-2] struct}。

{pstd}
Mata 也有类 -- {it:eltype} 是 {cmd:class} {it:name} -- 但
在这里不讨论这些。有关类的讨论，请参见 {help m2_class_zh:[M-2] class}。

{p 4 4 2}
声明是可选的。当变量或函数的 {it:type} 没有声明时，默认假定为 {cmd:transmorphic matrix}。特别是：

{p 8 12 2}
1.  {it:eltype} 指定元素的类型。
    当 {it:eltype} 未指定时，假定为 {cmd:transmorphic}。  

{p 8 12 2}
2.  {it:orgtype} 指定元素的组织。
    当 {it:orgtype} 未指定时，假定为 {cmd:matrix}。  

{p 4 4 2}
所有 {it:types} 是 {cmd:transmorphic} {cmd:matrix} 的特例。

{p 4 4 2}
{it:eltypes} 的嵌套为

			           {cmd:transmorphic}
		                        {c |}
			{c TLC}{hline 15}{c +}{hline 13}{c TRC}
			{c |}               {c |}             {c |}
		     {cmd:numeric         string        pointer}
	                {c |}
		{c TLC}{hline 13}{c TRC}
		{c |}             {c |}
	      {cmd:real         complex}

{p 4 4 2}
{it:orgtypes} 仅仅是对矩阵行和列数量的约束：

		{it:orgtype}            约束
		{hline 49}
		{cmd:matrix}             {it:r}>=0 & {it:c}>=0
		{cmd:vector}             {it:r}=1  & {it:c}>=0  -或-  {it:r}>=0 & {it:c}=1
		{cmd:rowvector}          {it:r}=1  & {it:c}>=0 
		{cmd:colvector}          {it:r}>=0 & {it:c}=1
		{cmd:scalar}             {it:r}=1  & {it:c}=1
		{hline 49}

{p 4 4 2}
请参见 {bf:{help m2_declarations_zh:[M-2] 声明}}。


{marker remarks3}{...}
{title:空的矩阵}

{p 4 4 2}
一个 0 {it:x} 0，{it:r} {it:x} 0，或 0 {it:x} {it:c} 的矩阵（向量、行向量或列向量）称为空的；
见 {bf:{help m2_void_zh:[M-2] 空的}}。

{p 4 4 2}
函数 {cmd:J(}{it:r}{cmd:,} {it:c}{cmd:,} {it:val}{cmd:)} 
返回一个 {it:r} {it:x} {it:c} 的矩阵，每个元素包含 
{it:val}；见 {bf:{help mf_j_zh:[M-5] J()}}。

{p 4 4 2}
{cmd:J()} 可用于创建空矩阵。

{p 4 4 2}
请参见 {bf:{help m2_void_zh:[M-2] 空的}}。


{marker remarks4}{...}
{title:空的函数}

{p 4 4 2}
函数可以被声明为返回空值，而不是 {it:eltype} {it:orgtype}，通过将其声明为返回 {cmd:void}：

	{cmd}void function example(matrix A)
	{
		real scalar	i

		for (i=1; i<=rows(A); i++) A[i,i] = 1
	}{txt}

{p 4 4 2}
返回空值的函数（不包括 {cmd:return(}{it:exp}{cmd:)} 语句），实际上返回 {cmd:J(0, 0, .)}，上述函数同样可以编码为

	{cmd}void function example(matrix A)
	{
		real scalar	i

		for (i=1; i<=rows(A); i++) A[i,i] = 1
		return(J(0, 0, .))
	}{txt}

{p 4 4 2}
或者

	{cmd}void function example(matrix A)
	{
		real scalar	i

		for (i=1; i<=rows(A); i++) A[i,i] = 1
		return(J(0,0,.))
	}{txt}

{p 4 4 2}
因此，{cmd:void} 也是一种特殊的 {cmd:transmorphic} {cmd:matrix} 
（实际上是一个 {bind:0 {it:x} 0} {cmd:real} {cmd:matrix}）。因为
声明是可选的（但为了风格和效率建议使用），上述函数还可以编码为

	{cmd}function example(A)
	{
		for (i=1; i<=rows(A); i++) A[i,i] = 1
	}{txt}

{p 4 4 2}
请参见 {bf:{help m2_declarations_zh:[M-2] 声明}}。


{marker remarks5}{...}
{title:运算符}

{p 4 4 2}
Mata 提供了通常的运算符；见 
{bf:{help m2_exp_zh:[M-2] exp}}。

{p 4 4 2}
单目前缀运算符有

	{cmd:-    !    ++    --    &    *}

{p 4 4 2}
前缀运算符 {cmd:&} 和 {cmd:*} 与指针有关； 
见 {bf:{help m2_pointers_zh:[M-2] 指针}}。

{p 4 4 2}
单目后缀运算符有

	{cmd:'    ++   --}

{p 4 4 2}
注意单目后缀运算符 {cmd:'} 用于转置。
另外，对于 {it:Z} 复数，{it:Z}{cmd:'} 返回 
共轭转置。如果您想要没有共轭的转置，见 
{bf:{help mf_transposeonly_zh:[M-5] transposeonly()}}。

{p 4 4 2}
二元运算符有

	{cmd:= ?  \  ::  ,  ..  |  &  ==  >=  <=  <  >  !=  +  -  *  #  ^}

{p 4 8 2}
另外，{cmd:&&} 和 {cmd:||} 被包括在内，作为 {cmd:&} 和 {cmd:|} 的同义词。

{p 4 4 2}
运算符 {cmd:==} 和 {cmd:!=} 不要求相容性，也不要求矩阵具有相同的类型。在这种情况下，矩阵是不相等的（{cmd:==} 为假，{cmd:!=} 为真）。对于复数参数，{cmd:<}，{cmd:<=}，{cmd:>} 和 {cmd:>=} 涉及复数向量的长度。{cmd:==} 和 {cmd:!=}，然而，并不是关于长度，而是关于实际的组件。
见 {bf:{help m2_op_logical_zh:[M-2] op_logical}}。

{p 4 4 2}
运算符 {cmd:,} 和 {cmd:\} 是行连接和列连接运算符。
{cmd:(1,2,3)} 构造行向量 (1,2,3)。
{cmd:(1\2\3)} 构造列向量 (1,2,3){cmd:'}。
{cmd:(1,2\3,4)} 构造矩阵，第一行 (1,2)，第二行 (3,4)。
{it:a}{cmd:,}{it:b} 在行上连接两个标量、向量或矩阵。
{it:a}{cmd:\}{it:b} 在列上连接两个标量、向量或矩阵。
见 {bf:{help m2_op_join_zh:[M-2] op_join}}。

{p 4 4 2}
{cmd:..} 和 {cmd:::} 分别是行到运算符和列到运算符。
    {cmd:1..5} 为 (1,2,3,4,5)。
    {cmd:1::5} 为 (1\2\3\4\5)。
    {cmd:5..1} 为 (5,4,3,2,1)。
    {cmd:5::1} 为 (5\4\3\2,1)。
    见 {bf:{help m2_op_range_zh:[M-2] op_range}}。

{p 4 4 2}
对于 
{cmd:|}, 
{cmd:&}, 
{cmd:==}, 
{cmd:>=}, 
{cmd:<=}, 
{cmd:<}, 
{cmd:>}, 
{cmd:!=}, 
{cmd:+}, 
{cmd:-}, 
{cmd:*}, 
{cmd:/} 和
{cmd:^}, 
有 {cmd:}{it::op} 的优先级仅低于 {it:op}。 
这些运算符执行逐元素操作。例如， 
{it:A}{cmd:*}{it:B} 指的是矩阵乘法； 
{it:A}{cmd::*}{it:B} 指的是逐元素乘法。
此外，“逐元素”普遍应用于 {it:A} 和 {it:B} 
没有相同的行数和列数的情况。例如，如果 {it:A} 是一个 1 x {it:c} 的行向量，而 {it:B} 是一个 
{it:r} {it:x} {it:c} 的矩阵，则
{it:C}[{it:i},{it:j}] = A[{it:j}]*B[{it:i},{it:j}] 被返回。  
见 {bf:{help m2_op_colon_zh:[M-2] op_colon}}。


{marker remarks6}{...}
{title:下标}

{p 4 4 2}
{it:A}{cmd:[}{it:i}{cmd:,}{it:j}{cmd:]} 返回 {it:A} 的 {it:i},{it:j} 元素。

{p 4 4 2}
{it:A}{cmd:[}{it:k}{cmd:]} 返回 
{it:A}{cmd:[1,}{it:k}{cmd:]} 如果 {it:A} 是 1 {it:x} {it:c}，并且 
{it:A}{cmd:[}{it:k}{cmd:,1]} 如果 {it:A} 是 {it:r} {it:x} 1。
也就是说，除了声明的向量，任何 
1 {it:x} {it:c} 矩阵或
{it:r} {it:x} 1 矩阵可以用一个索引进行下标。
同样，任何向量可以用两个索引进行下标。

{p 4 4 2}
{it:i}、{it:j} 和 {it:k} 可以是向量，也可以是标量。
例如， 
{it:A}{cmd:[(3\4\5), 4]} 返回一个包含第 4 列第 3 到第 5 行的 3 {it:x} 1 列向量。

{p 4 4 2}
{it:i}、{it:j} 和 {it:k} 可以是缺失值。
{it:A}{cmd:[., 4]} 返回 {it:A} 的第 4 列的列向量。

{p 4 4 2}
上述下标称为列表式下标。Mata 提供了第二种格式，称为范围式下标，特别适用于选择子矩阵。  
{it:A}{cmd:[|3,3\5,5|]} 返回 {it:A} 的 3 {it:x} 3 子矩阵，起始于
{it:A}{cmd:[3,3]}。

{p 4 4 2}
见 {bf:{help m2_subscripts_zh:[M-2] 下标}}。


{marker remarks7}{...}
{title:隐含输入符}

{p 4 4 2}
在解释和编译一行之前，Mata 对它所看到的内容进行以下替换：

	输入序列		解释
	{hline 39}
	{cmd:'}{it:name}                   {cmd:'*}{it:name}
	{cmd:[,}                       {cmd:[.,}
	{cmd:,]}                       {cmd:,.]}
	{hline 39}

{p 4 4 2}
因此，编码 {cmd:X'Z} 相当于编码 {cmd:X'*Z}，而 
编码 {cmd:x = z[1,]} 相当于编码 {cmd:x = z[1,.]}。


{marker remarks8}{...}
{title:函数参数传递约定}

{p 4 4 2}
参数通过地址传递给函数，也称为通过名称或通过引用传递。它们不是按值传递的。当您编码 

		... {cmd:f(A)} ...

{p 4 4 2}
传给 {cmd:f()} 的是 {cmd:A} 的地址，而不是 {cmd:A} 中值的副本。{cmd:f()} 可以修改 {cmd:A}。

{p 4 4 2}
大多数函数不会修改它们的参数，但有些会。
例如，{cmd:lud(}{it:A}{cmd:,} {it:L}{cmd:,} {it:U}{cmd:,} {it:p}{cmd:)},
计算 {it:A} 的 LU 分解。函数用矩阵替换 {it:L}、{it:U} 和 {it:p} 的内容，使得 {it:L}{cmd:[}{it:p}{cmd:,]*}{it:U}={it:A}。

{p 4 4 2}
老前辈们会听说那个 FORTRAN 程序员调用了一个子例程，并将第二个参数传递给它的 1。在他不知情的情况下，该子例程修改了其第二个参数，结果是常量 1 在其代码的其余部分也被修改。在 Mata 中这种情况是不会发生的。当一个表达式作为参数传递（常量也是表达式），一个包含评估结果的临时变量被传递给函数。对临时变量的修改是无关紧要的，因为临时变量在函数返回后被丢弃。因此，如果 {cmd:f()} 修改其第二个参数，您通过编码 {cmd:f(A,2)} 调用它时，由于 2 被复制到一个临时变量，字面值 2 在下一次调用中将保持不变。

{p 4 4 2}
如果您用包含赋值运算符的表达式调用一个函数，则传递的是表达式的左侧。这就是说，编码 

	{cmd:f(a, b=c)}

{p 4 4 2}
与编码 

	{cmd:b = c}
	{cmd:f(a, b)}

{p 4 4 2}
产生相同的结果。

{p 4 4 2}
如果函数 {cmd:f()} 改变其第二个参数，那么将被修改的是 {cmd:b} 而不是 {cmd:c}。

{p 4 4 2}
此外，Mata 试图不创建不必要的矩阵副本。 
例如，考虑 

	{cmd:function changearg(x) x[1,1] = 1}

{p 4 4 2}
{cmd:changearg(mymat)} 将 {cmd:mymat} 的 (1,1) 元素更改为 1。
现在让我们定义

	{cmd:function cp(x) return(x)}

{p 4 4 2}
编码 {cmd:changearg(cp(mymat))} 仍将更改 {cmd:mymat} 
因为 {cmd:cp()} 返回的是 {cmd:x} 自身。另一方面，如果我们将 {cmd:cp()} 定义为 

	{cmd}function cp(x)
	{c -(}
		matrix	t

		t = x
		return(t)
	{c )-}{txt}

{p 4 4 2}
则编码 
{cmd:changearg(cp(mymat))} 将不会更改 {cmd:mymat}。它将更改一个临时矩阵，该临时矩阵将在 {cmd:changearg()} 返回后被丢弃。


{marker remarks9}{...}
{title:将函数传递给函数}

{p 4 4 2}
一个函数可以使用指针作为参数接收另一个函数。
编码方式为

	{cmd}function myfunc(pointer(function) f, a, b)
	{c -(}
		{txt:...} (*f)(a) {txt:...} (*f)(b) {txt:...}
	{c )-}{txt}
	
{p 4 4 2}
尽管 {cmd:pointer(function)} 声明与所有声明一样是可选的。要调用 {cmd:myfunc()} 并告诉它使用函数 {cmd:prima()} 作为 {cmd:f()}，以及 2 和 3 作为 {cmd:a} 和 {cmd:b}，编码为

	{cmd:myfunc(&prima(), 2, 3)}

{p 4 4 2}
见 {bf:{help m2_ftof_zh:[M-2] ftof}} 
和 
{bf:{help m2_pointers_zh:[M-2] 指针}}。


{marker remarks10}{...}
{title:可选参数}

{p 4 4 2}
函数可以被编码为允许接收可变数量的参数。
方法是在第一个可选参数前放置一个竖线或条 ({cmd:|})。例如， 

	{cmd:function mynorm(matrix A, |scalar power)}
	{cmd:{c -(}}
		...
	{cmd:{c )-}}

{p 4 4 2}
上述函数可以用一个矩阵或一个矩阵加一个标量来调用。

{p 4 4 2}
函数 {cmd:args()}（见 {bf:{help mf_args_zh:[M-5] args()}}）可用于确定接收到的参数数量并设置默认值：

	{cmd:function mynorm(matrix A, |scalar power)}
	{cmd:{c -(}}
		...
		{cmd:if (args()==1) power = 2}
		...
	{cmd:{c )-}}

{p 4 4 2}
见 {bf:{help m2_optargs_zh:[M-2] optargs}}。
{p_end}


{marker reference}{...}
{title:参考}

{phang}
Gould, W. W. 2005.
{browse "http://www.stata-journal.com/sjpdf.html?articlenum=pr0017":Mata 事项：翻译 Fortran}.
{it:Stata Journal} 5: 421-441.
{p_end}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <m2_syntax.sthlp>}