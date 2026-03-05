{smcl}
{* *! version 1.1.11  26sep2018}{...}
{vieweralsosee "[M-2] 指针" "mansection M-2 pointers"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[M-2] 介绍" "help m2_intro_zh"}{...}
{viewerjumpto "语法" "m2_pointers_zh##syntax"}{...}
{viewerjumpto "描述" "m2_pointers_zh##description"}{...}
{viewerjumpto "PDF 文档链接" "m2_pointers_zh##linkspdf"}{...}
{viewerjumpto "备注" "m2_pointers_zh##remarks"}{...}
{viewerjumpto "诊断" "m2_pointers_zh##diagnostics"}{...}
{viewerjumpto "参考文献" "m2_pointers_zh##references"}
{help m2_pointers:English Version}
{hline}{...}
{p2colset 1 19 21 2}{...}
{p2col:{bf:[M-2] 指针} {hline 2}}指针
{p_end}
{p2col:}({mansection M-2 pointers:查看完整的 PDF 手册条目}){p_end}
{p2colreset}{...}


{marker syntax}{...}
{title:语法}

{p 8 12 2}
{cmd:pointer}[{cmd:(}{it:totype}{cmd:)}]
[{it:orgtype}]
[{cmd:function}]
...


{p 4 4 2}
其中 {it:totype} 是 

	[{it:eltype}] [{it:orgtype}] [{cmd:function}] 

{p 4 4 2}
并且 {it:eltype} 和 {it:orgtype} 是 

		{it:eltype                   orgtype}
		{hline 17}        {hline 10}{cmd}
		变形的                  矩阵
		数值的                  向量
		实数的                  行向量
		复数的                  列向量
		字符串的                  标量{txt}
		{cmd:pointer}[{cmd:(}{it:towhat}{cmd:)}]        {hline 10}
		{hline 17}


{p 4 4 2}
{cmd:pointer}[{cmd:(}{it:totype}{cmd:)}]
[{it:orgtype}]
可以用于声明前面的内容，无论是函数声明、参数声明，还是变量定义。


{marker description}{...}
{title:描述}

{p 4 4 2}
指针是包含其他对象地址的对象。{cmd:*} 前缀操作符获取地址的内容。因此，如果 {it:p} 是一个指针，{cmd:*}{it:p} 指的是 {it:p} 指向的对象的内容。指针是高级编程概念。大多数程序，包括复杂的程序，可以在没有指针的情况下编写。

{p 4 4 2}
在 Mata 中，指针通常用于

{p 8 12 2}
1.  将一组对象放在一个名称下，和

{p 8 12 2}
2.  将函数传递给函数。

{p 4 4 2}
仅仅为了将函数传递给函数，并不需要了解指针的所有内容；请参见 {bf:{help m2_ftof_zh:[M-2] ftof}}。

{pstd}
有关指针的更详细描述，请参见
{help m2_pointers##gould2018sp:Gould (2018)}。


{marker linkspdf}{...}
{title:PDF 文档链接}

        {mansection M-2 pointers备注和示例:备注和示例}

{pstd}
上述部分不包含在此帮助文件中。


{marker remarks}{...}
{title:备注}

{p 4 4 2}
备注分为以下几个标题：

	{help m2_pointers##remarks1:什么是指针?}
	{help m2_pointers##remarks2:指向变量的指针}
	{help m2_pointers##remarks3:指向表达式的指针}
	{help m2_pointers##remarks4:指向函数的指针}
	{help m2_pointers##remarks5:指向指针的指针}
	{help m2_pointers##remarks6:指针数组}
	{help m2_pointers##remarks7:混合指针数组}
	{help m2_pointers##remarks8:NULL 的定义}
	{help m2_pointers##remarks9:括号的使用}
	{help m2_pointers##remarks10:指针算术}
	{help m2_pointers##remarks11:列出指针}
	{help m2_pointers##remarks12:指针声明}
	{help m2_pointers##remarks13:使用指针收集对象}
	{help m2_pointers##remarks14:效率}


{marker remarks1}{...}
{title:什么是指针?}

{p 4 4 2}
指针是变量或函数的地址。假设变量 {it:X} 包含一个矩阵。另一个变量 {it:p} 可能包含 137,799,016，如果 137,799,016 是存储 {it:X} 的地址，那么 {it:p} 就被称为指向 {it:X}。地址通常不会以十进制书写，因此与其说 {it:p} 包含 137,799,016，不如说 {it:p} 包含 0x836a568，这是我们以十六进制书写数字的方式。无论我们如何书写地址，{it:p} 都包含一个数字，而该数字对应于另一个变量的地址。

{p 4 4 2}
在我们的程序中，如果我们引用 {it:p}，我们就是在引用 {it:p} 的内容，即数字 0x836a568。单目操作符 {cmd:*} 被定义为“引用地址的内容”或“解引用”：{cmd:*}{it:p} 意味着 {it:X}。我们可以编码 {cmd:Y = *p} 或 {cmd:Y = X}，无论哪种方式，结果都是相同的。在我们的程序中，我们可以引用
{it:X}{cmd:[}{it:i}{cmd:,}{it:j}{cmd:]} 或
{cmd:(*}{it:p}{cmd:)[}{it:i}{cmd:,}{it:j}{cmd:]}, 这两者都会得到 {it:X} 的 {it:i}， {it:j} 元素。

{p 4 4 2}
单目操作符 {cmd:&} 是将地址写入 {it:p} 的方式。要将 {it:X} 的地址加载到 {it:p} 中，我们编码 {it:p} {cmd:=} {cmd:&}{it:X}。

{p 4 4 2}
特殊地址 0（零，以十六进制书写为 0x0），也称为 {cmd:NULL}，用来表示指针变量指向无。指针变量包含 {cmd:NULL} 或者包含另一个变量的地址。

{p 4 4 2}
或者它包含一个函数的地址。假设 {it:p} 包含 0x836a568，而 0x836a568，不是矩阵 {it:X} 的地址，而是函数 {it:f}() 的地址。要将 {it:f}() 的地址写入 {it:p}，就像我们之前编码的 {it:p} {cmd:=} {cmd:&}{it:X} 一样，我们编码 {it:p} {cmd:=} {cmd:&}{it:f}{cmd:()}。末尾的 {cmd:()} 告诉 {cmd:&} 我们想要的是一个函数的地址。我们在末尾编码 {cmd:()} 不论 {it:f}() 需要多少个参数，因为我们并不是在执行 {it:f}()，我们只是获取它的地址。

{p 4 4 2}
要执行位于 0x836a568 的函数——假设 {it:f}() 接受两个参数，我们称之为 {it:i} 和 {it:j}——我们编码 {cmd:(*}{it:p}{cmd:)(}{it:i}{cmd:,}{it:j}{cmd:)}
就如我们所编码的
{cmd:(*}{it:p}{cmd:)[}{it:i}{cmd:,}{it:j}{cmd:]} 
当 {it:p} 包含矩阵 {it:X} 的地址时一样。


{marker remarks2}{...}
{title:指向变量的指针}

{p 4 4 2}
要创建一个指向变量的指针 {it:p}，你编码

	{it:p} {cmd:=} {cmd:&}{it:varname}

{p 4 4 2}
例如，如果 {it:X} 是一个矩阵， 

	{it:p} {cmd:=} {cmd:&}{it:X}

{p 4 4 2}
将 {it:X} 的地址存储在 {it:p} 中。随后，引用 
{cmd:*}{it:p} 和引用 {it:X}是相同的。也就是说，如果 {it:X} 包含一个 3 {it:x} 3 的单位矩阵，而你编码 

	{cmd:*}{it:p}{cmd: = Hilbert(4)}

{p 4 4 2}
那么之后你会发现 {it:X} 包含 4 {it:x} 4 的 Hilbert 矩阵。{it:X} 和 {cmd:*}{it:p} 是同一个矩阵。

{p 4 4 2}
如果 {it:X} 包含一个 3 {it:x} 3 的单位矩阵，而你编码

	{cmd:(*}{it:p}{cmd:)[2,3] = 4} 

{p 4 4 2}
那么你会发现 {it:X}{cmd:[2,3]} 等于 4。

{p 4 4 2}
然而，你不能指向对象的内部。也就是说，你不能编码

	{it:p} {cmd:=} {cmd:&}{it:X}{cmd:[2,3]}

{p 4 4 2}
并获得一个等同于 {it:X}{cmd:[2,3]} 的指针，以便如果你稍后编码 {cmd:*}{it:p}{cmd:=2}，你会看到变更反映在 {it:X}{cmd:[2,3]} 中。语句 {it:p} {cmd:=}
{cmd:&}{it:X}{cmd:[2,3]} 是有效的，但我们将在下面的 it:{help m2_pointers##remarks3:指向表达式的指针} 中解释它的作用。

{p 4 4 2}
顺便提一下，变量可以通过被指向来维持。考虑一下程序 

	{cmd}pointer(real matrix) scalar example(real scalar n) 
	{
		real matrix	tmp

		tmp = I(3)
		return(&tmp)
	}{txt}

{p 4 4 2}
通常情况下，变量 {cmd:tmp} 会在 {cmd:example()} 执行结束时被销毁。然而，在这里，由于指向它的指针，{cmd:tmp} 的存在将会得到维持。我们可以编码 

	{it:p}{cmd: = example(3)}

{p 4 4 2}
结果将是创建 {cmd:*}{it:p}，包含 3 {it:x} 3 的单位矩阵。该矩阵所占的内存将在不再被指向时释放，这将在 {it:p} 自身被释放时发生，或者在此之前，当 {it:p} 的值改变时，也许是通过

	{it:p} {cmd:= NULL}

{pstd}
有关指向结构的指针的讨论，请参见
{help m2_struct_zh:[M-2] struct}。
有关指向类的指针的讨论，请参见
{help m2_class_zh:[M-2] class}。

{marker remarks3}{...}
{title:指向表达式的指针}

{p 4 4 2}
你可以编码 

	{it:p} {cmd:= &(2+3)}

{p 4 4 2}
结果将是创建 {cmd:*}{it:p}，其值为 5。 Mata 创建一个临时变量来存放表达式的评估结果，并将 {it:p} 设置为临时变量的地址。该临时变量将会在 {it:p} 被释放时，或者在此之前，当 {it:p} 的值被改变时释放，就像前一节中的 {cmd:tmp} 被释放一样。

{p 4 4 2}
当你编码 

	{it:p} {cmd:=} {cmd:&}{it:X}{cmd:[2,3]}

{p 4 4 2}
结果是相同的。表达式被评估，表达式的结果存储在一个临时变量中。这就是为什么随后编码 {cmd:*}{it:p}{cmd:=2} 不会改变 {it:X}{cmd:[2,3]}。所有 {cmd:*}{it:p}{cmd:=2} 做的只是改变了临时变量的值。

{p 4 4 2}
将指针设置为表达式的值可能是有用的。
在以下代码片段中，我们为后续使用创建 {it:n} 个 5 {it:x} 5 的矩阵：

	{cmd}pvec = J(1, n, NULL)
	for (i=1; i<=n; i++) pvec[i] = &(J(5, 5, .)){txt}


{marker remarks4}{...}
{title:指向函数的指针}

{p 4 4 2}
当你编码 

	{it:p} {cmd:= &}{it:functionname}{cmd:()}

{p 4 4 2}
函数的地址被存储在 {it:p} 中。你可以通过编码 

	... {cmd:(*}{it:p}{cmd:)(}...{cmd:)}

{p 4 4 2}
稍后执行该函数。请仔细区分 

	{it:p} {cmd:= &}{it:functionname}{cmd:()}

{p 4 4 2}
和 

	{it:p} {cmd:= &(}{it:functionname}{cmd:())}

{p 4 4 2}
后者会执行 {it:functionname}() ，没有参数，然后将返回的结果分配给一个临时变量。

{p 4 4 2}
例如，假设你想编写一个函数 {cmd:neat()}，该函数计算另一个函数的导数，而这个函数将被传递给 {cmd:neat()}。你的函数，假设返回的是一个实数标量。

{p 4 4 2}
你可以这样做

	{cmd:real scalar neat(pointer(function) p,} {it:other args}...{cmd:)}
	{cmd:{c -(}}
		...
	{cmd:{c )-}}

{p 4 4 2}
不过，你可以更明确地说明你传递的函数的特征：

	{cmd:real scalar neat(pointer(real scalar function) p,} {it:other args}...{cmd:)}
	{cmd:{c -(}}
		...
	{cmd:{c )-}}

{p 4 4 2}
无论如何，在你函数的主体中，当你想调用传递进来的函数时，你编码 

		{cmd:(*p)(}{it:arguments}{cmd:)}

{p 4 4 2}
例如，你可能编码 

		{cmd:approx = ( (*p)(x+delta)-(*p)(x) ) / delta}

{p 4 4 2}
调用你的 {cmd:neat()} 函数的用户，如果想要将其与，例如，函数 {cmd:zeta_i_just_wrote()} 一起使用，将编码

		{it:result} {cmd:= neat(&zeta_i_just_wrote(),} {it:other args}...{cmd:)}


{marker remarks5}{...}
{title:指向指针的指针}

{p 4 4 2}
允许指向指针的指针（指向指针的指针等），例如，如果 {it:X} 是一个矩阵

	{it:p1}{cmd: = &X}
	{it:p2}{cmd: = &p1}

{p 4 4 2}
这里 {cmd:*}{it:p2} 相当于 {it:p1}，而 
{cmd:**}{it:p2} 相当于 {it:X}。

{p 4 4 2}
同样，我们可以构造一个指向函数的指针的指针：

	{it:q1}{cmd: = &}{it:f}{cmd:()}
	{it:q2}{cmd: = &q1}

{p 4 4 2}
这里 {cmd:*}{it:q2} 相当于 {it:q1}，而 
{cmd:**}{it:q2} 相当于 {it:f}()。
	
{p 4 4 2}
在构造指向指针的指针时，切忌输入 {cmd:&&}——例如 {cmd:&&}{it:x}——以获取地址的地址。应输入 {cmd:&(&}{it:x}{cmd:)} 或 {cmd:& &}{it:x}。{cmd:&&} 是 {cmd:&} 的同义词，包含在用于熟悉 C 编程的人中。


{marker remarks6}{...}
{title:指针数组}

{p 4 4 2}
你可以创建一个指针数组，例如 

	{it:P}{cmd: = (&}{it:X1}{cmd:, &}{it:X2}{cmd:, &}{it:X3}{cmd:)}

{p 4 4 2}
或者

	{it:Q}{cmd: = (&}{it:f1}{cmd:(), &}{it:f2}{cmd:(), &}{it:f3}{cmd:())}

{p 4 4 2}
这里 
{cmd:*}{it:P}{cmd:[2]} 相当于 {it:X2}，而 
{cmd:*}{it:Q}{cmd:[2]} 相当于 {it:f2}()。


{marker remarks7}{...}
{title:混合指针数组}

{p 4 4 2}
你可以创建混合指针数组，例如 

	{it:R}{cmd: = (&}{it:X}{cmd:, &}{it:f}{cmd:())}

{p 4 4 2}
这里 
{cmd:*}{it:R}{cmd:[2]} 相当于 {it:f}()。

{p 4 4 2}
然而，你不能创建指针数组与实数、复数或字符串元素混合。 Mata 将会因类型不匹配而中止。


{marker remarks8}{...}
{title:NULL 的定义}

{p 4 4 2}
{cmd:NULL} 是表示“指向无”或未定义的特殊指针值。{cmd:NULL} 在许多方面像 0——例如，编码 {cmd:if (X)} 等同于编码 {cmd:if (X!=NULL)}，但是 {cmd:NULL} 在其他方面与零不同。 0 是一个数值；{cmd:NULL} 是一个指针值。


{marker remarks9}{...}
{title:括号的使用}

{p 4 4 2}
使用括号使你的意思清晰。  

{p 4 4 2}
在下面的表中，我们假设 

	{it:p} {cmd:= &}{it:X}

	{it:P} {cmd:= (&}{it:X11}{cmd:, &}{it:X12}{cmd: \ &}{it:X21}{cmd:, &}{it:X22}{cmd:)}

	{it:q} {cmd:= &}{it:f}{cmd:()}

	{it:Q} {cmd:= (&}{it:f11}{cmd:(), &}{it:f12}{cmd:() \ &}{it:f21}{cmd:(), &}{it:f22}{cmd:())}

{p 4 4 2}
其中 
{it:X}, 
{it:X11}, 
{it:X12}, 
{it:X21} 和
{it:X22} 
是矩阵，而 
{it:f}(), 
{it:f11}(), 
{it:f12}(), 
{it:f21} 和
{it:f22}() 
是函数。


	表达式            含义
	{hline 64}
	{cmd:*}{it:p}              {it:X}
	{cmd:*}{it:p}{cmd:[1,1]}         {it:X}
	{cmd:(*}{it:p}{cmd:)[1,1]}       {it:X}{cmd:[1,1]}

	{cmd:*}{it:P}{cmd:[1,2]}         {it:X12}
	{cmd:(*}{it:P}{cmd:[1,2])[3,4]}  {it:X12}{cmd:[3,4]}

	{cmd:*}{it:q}{cmd:(a,b)}         执行函数 {it:q}{cmd:()} 的 {cmd:a}, {cmd:b}; 解引用那个
	{cmd:(*}{it:q}{cmd:)(a,b)}       {it:f}{cmd:(}{it:a}{cmd:,}{it:b}{cmd:)}
	{cmd:(*}{it:q}{cmd:[1,1])(a,b)}  {it:f}{cmd:(}{it:a}{cmd:,}{it:b}{cmd:)}
	
	{cmd:*}{it:Q}{cmd:[1,2](a,b)}    无意义
	{cmd:(*}{it:Q}{cmd:[1,2])(a,b)}  {it:f12}{cmd:(}{it:a}{cmd:,}{it:b}{cmd:)}
	{hline 64}


{marker remarks10}{...}
{title:指针算术}

{p 4 4 2}
不允许进行指针（即地址）的算术运算：

	: {cmd:y = 2}
	: {cmd:x = &y}
	: {cmd:x+2}
                  {err:<stmt>:  3212  指针上的未定义操作}

{p 4 4 2}
不要将表达式 {cmd:x+2} 与表达式 {cmd:*x+2} 混淆，后者是允许的，并且实际上评估为 4。

{p 4 4 2}
你可以使用等于和不等于运算符 {cmd:==} 和 {cmd:!=} 与指针值对比：

	{cmd}if (p1 == p2) {c -(} 
		...
	{c )-}

	if (p1 != p2) {c -(}
		...
	{c )-}{txt}

{p 4 4 2}
此外，指针值可以与值 {cmd:NULL} 进行比较，这与零很相似，但仍不同：{cmd:NULL} 是一个 1 {it:x} 1 标量，包含一个地址值为 0。未赋值的指针的值为 {cmd:NULL}，你可以将值 {cmd:NULL} 赋给指针：

	{cmd:p = NULL}

{p 4 4 2}
指针值可以与 {cmd:NULL} 进行比较， 

	{cmd}if (p1 == NULL) {c -(} 
		...
	{c )-}

	if (p1 != NULL) {c -(}
		...
	{c )-}{txt}

{p 4 4 2}
但如果你尝试解引用一个 {cmd:NULL} 指针，您将收到一个错误：

	: {cmd:x = NULL}
	: {cmd:*x + 2}
                  {err:<stmt>:  3120  尝试解引用 NULL 指针}

{p 4 4 2}
在逻辑表达式中，你可以直接检查指针值：

	{cmd}if (p1) {c -(} 
		...
	{c )-}{txt}

{p 4 4 2}
以上的解释类似于如果编码 {cmd:if (p1!=NULL)}。


{marker remarks11}{...}
{title:列出指针}

{p 4 4 2}
你可以列出指针：

	: {cmd:y = 2}
	: {cmd:x = &y}
	: {cmd:x}
	  {cmd:0x8359e80}

{p 4 4 2}
所显示的 0x8359e80 是 {cmd:y} 在我们 Stata 会话中的内存地址。如果你输入了上述行，你看到的地址可能会不同，但这并不重要。

{p 4 4 2}
列出指针的值通常对调试有帮助，因为通过比较地址，你可以确定指针指向哪里，是否有一些指针指向同一目标。

{p 4 4 2}
在列表中，{cmd:NULL} 显示为 0x0。


{marker remarks12}{...}
{title:指针声明}

{p 4 4 2}
指针的声明，和所有声明一样（请参见 
{bf:{help m2_declarations_zh:[M-2] 声明}}），是可选的。基本语法是 

{p 8 12 2}
{cmd:pointer}[{cmd:(}{it:totype}{cmd:)}]
{it:orgtype}
[{cmd:function}]
...

{p 4 4 2}
例如， 

	{cmd:pointer(real matrix) scalar} {it:p1}

{p 4 4 2}
声明 {it:p1} 是一个指向实数矩阵的指针标量，

	{cmd:pointer(complex colvector) rowvector} {it:p2}

{p 4 4 2}
声明 {it:p2} 是一个指向复数列向量的指针数组，

	{cmd:pointer(real scalar function) scalar} {it:p3}

{p 4 4 2}
声明 {it:p3} 是一个指向返回实数标量的函数的指针标量， 

	{cmd:pointer(pointer(real matrix function) rowvector) colvector} {it:p4}

{p 4 4 2}
声明 {it:p4} 是一个指向指针的列向量，指向的每个元素都是行向量，并且那些元素指向返回实数矩阵的函数。

{p 4 4 2}
你可以省略你希望省略的部分。

	{cmd:pointer() scalar} {it:p5}

{p 4 4 2}
声明 {it:p5} 是一个指针标量——不知道指向什么。

	{cmd:pointer scalar} {it:p5}

{p 4 4 2}
也是同样的意思。

	{cmd:pointer} {it:p6}

{p 4 4 2}
声明 {it:p6} 是一个指针，但是它是矩阵、向量还是标量则没有说明。


{marker remarks13}{...}
{title:使用指针收集对象}

{p 4 4 2}
假设你想将一个函数分为两个部分： {cmd:result_setup()} 和
{cmd:repeated_result()}。

{p 4 4 2}
在第一部分 {cmd:result_setup()} 中，你将由用户传递一个矩阵和一个函数，并且你将进行一个私密计算，稍后在每次调用 {cmd:repeated_result()} 时使用。在 {cmd:repeated_result()} 被调用时，你需要知道矩阵、函数和你之前计算的私密值。

{p 4 4 2}
一种解决方案是采用如下设计。你请求用户编码

	{cmd:resultinfo = result_setup(}{it:setup args}...{cmd:)}

{p 4 4 2}
在第一次调用时，随后在后续调用时编码 

	{it:value} {cmd:= repeated_result(resultinfo,} {it:other args}...{cmd:)}

{p 4 4 2}
设计是你将在 {cmd:resultinfo} 中传递两个函数之间的信息。
这里 {cmd:resultinfo} 需要包含三件事：原始矩阵、原始函数和你计算的私密结果。然而，用户无需了解详细信息，而你只会请求用户将 {cmd:resultinfo} 声明为一个指针向量。

{p 4 4 2}
填写细节，你编码

	{cmd}pointer vector result_setup(real matrix X, pointer(function) f)
	{c -(}
		real matrix     privmat
		pointer vector  info

		...
		privmat = ...
		...
		info = (&X, f, &privmat)
		return(info)
	{c )-}

	real matrix repeated_result(pointer vector info, ...)
	{c -(}
		pointer(function) scalar   f
		pointer(matrix)   scalar   X
		pointer(matrix)   scalar   privmat

		f = info[2]
		X = info[1]
		privmat = info[3]
		
		... 
		... (*f)(...) ...
		... (*X) ...
		... (*privmat) ...
		...
	{c )-}{txt}

{p 4 4 2}
没有必要将 {cmd:info[]} 卸载到各个标量中。使用传递的值的行可以同样读作

		... {cmd:(*info[2])(}...{cmd:)} ...
		... {cmd:(*info[1])} ...
		... {cmd:(*info[3])} ...


{marker remarks14}{...}
{title:效率}

{p 4 4 2}
在调用子程序时，最好传递指针标量参数的评估，而不是指针标量本身，因为那样子程序可以运行得更快。假设 {cmd:p} 指向一个实数矩阵。最好编码 

		... {cmd:mysub(*p)} ...

{p 4 4 2}
而不是 

		... {cmd:mysub(p)} ...

{p 4 4 2}
然后将 {cmd:mysub()} 编写为 

	{cmd:function mysub(real matrix X)}
	{cmd:{c -(}}
		... {cmd:X} ...
	{cmd:{c )-}}

{p 4 4 2}
而不是 

	{cmd:function mysub(pointer(real matrix) scalar p)}
	{cmd:{c -(}}
		... {cmd:(*p)} ...
	{cmd:{c )-}}

{p 4 4 2}
解引用一个指针（从 {it:p} 获取 {cmd:*}{it:p}）不会很慢，但确实需要时间。
在 {cmd:mysub()} 循环中传递 {cmd:*}{it:p} 而不是 {it:p} 可能很重要，因为会执行 {cmd:*}{it:p} 的评估数十万或数百万次。


{marker diagnostics}{...}
{title:诊断}

{p 4 4 2}
前缀操作符 {cmd:*} 
（称为解引用操作符）在应用于非指针对象时会中止并报错。

{p 4 4 2}
不允许对未解引用的指针进行算术运算。算术运算符会中止并报错。

{p 4 4 2}
前缀操作符 {cmd:&} 在应用于内置函数时会中止并报错。
{p_end}


{marker references}{...}
{title:参考文献}

{marker gould2018sp}{...}
{phang}
Gould, W. W. 2018.
{browse "http://www.stata-press.com/books/mata-book/":{it:《Mata 书籍： 一本面向严肃程序员及那些想成为程序员的书》}}.
德克萨斯州大学城：Stata Press.

{phang}
St{c o/}vring, H. 2007.
{browse "http://www.stata-journal.com/sjpdf.html?articlenum=pr0034":一个在 Mata 中实现的通用函数评估器}.
{it:Stata Journal} 7: 542-555.
{p_end}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <m2_pointers.sthlp>}