{smcl}
{* *! version 1.1.11  15may2018}{...}
{vieweralsosee "[M-2] 声明" "mansection M-2 Declarations"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[M-2] 介绍" "help m2_intro_zh"}{...}
{viewerjumpto "语法" "m2_declarations_zh##syntax"}{...}
{viewerjumpto "描述" "m2_declarations_zh##description"}{...}
{viewerjumpto "PDF 文档链接" "m2_declarations_zh##linkspdf"}{...}
{viewerjumpto "备注" "m2_declarations_zh##remarks"}
{help m2_declarations:English Version}
{hline}{...}
{p2colset 1 23 25 2}{...}
{p2col:{bf:[M-2] 声明} {hline 2}}声明和类型
{p_end}
{p2col:}({mansection M-2 Declarations:查看完整 PDF 手册条目}){p_end}
{p2colreset}{...}


{marker syntax}{...}
{title:语法}

	{it:declaration1} {it:fcnname}{cmd:(}{it:declaration2}{cmd:)}
	{cmd:{c -(}}
		{it:declaration3}

		...
	{cmd:{c )-}}

{p 4 4 2}
例如 

	{cmd:real matrix} myfunction({cmd:real matrix X, real scalar i})
	{
		{cmd:real scalar     j, k}
		{cmd:real vector     v}
		
		...
	}

{p 4 4 2}
{it:declaration1} 是以下选项之一

		{cmd:function}
		{it:type} [{cmd:function}]
		{cmd:void} [{cmd:function}]

{p 4 4 2}
{it:declaration2} 是

		[{it:type}] {it:argname} [{cmd:,} [{it:type}] {it:argname} [{cmd:,} ...]]

{p 4 4 2}
其中 {it:argname} 是您要分配给参数的名称。  

{p 4 4 2}
{it:declaration3} 是以下形式的行之一

		{it:type}             {varname} [{cmd:,} {varname} [{cmd:,} ...]]
		{cmd:external} [{it:type}]  {varname} [{cmd:,} {varname} [{cmd:,} ...]]

{p 4 4 2}
{it:type} 被定义为以下选项之一 

		{it:eltype} {it:orgtype}{col 40}例如 {cmd:real vector}
		{it:eltype} {col 40}例如 {cmd:real}
		{it:orgtype}{col 40}例如 {cmd:vector}

{p 4 4 2}
{it:{help m2_declarations##remarks4:eltype}} 和
{it:{help m2_declarations##remarks5:orgtype}} 中的每个都是以下选项之一

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
如果未指定 {it:eltype}{bind:  }，则假定为 {cmd:transmorphic}。{break}
如果未指定 {it:orgtype}，{bind:    }则假定为 {cmd:matrix}{bind:    }。


{marker description}{...}
{title:描述}

{p 4 4 2}
对声明的类型和用途进行了说明。
还讨论了调用约定（函数通过地址调用，而不是通过值，并且可能更改调用者的参数），以及外部全局变量的使用。

{pstd}
Mata 还有结构体 -- {it:eltype} 是 {cmd:struct} {it:name} -- 但
这些在此不讨论。有关结构的讨论，请参见 {help m2_struct_zh:[M-2] struct}。

{pstd}
Mata 还有类 -- {it:eltype} 是 {cmd:class} {it:name} -- 但
这些在此不讨论。有关类的讨论，请参见 {help m2_class_zh:[M-2] class}。

{p 4 4 2}
声明是可选的，但是为了更严谨的工作，建议使用它们。


{marker linkspdf}{...}
{title:PDF 文档链接}

        {mansection M-2 DeclarationsRemarksandexamples:备注和示例}

{pstd}
上述部分未包含在此帮助文件中。


{marker remarks}{...}
{title:备注}

{p 4 4 2}
备注如下标题：

	{help m2_declarations##remarks1:声明的目的}
	{help m2_declarations##remarks2:类型、元素类型和组织类型}
	{help m2_declarations##remarks3:隐式声明}
	{help m2_declarations##remarks4:元素类型}
	{help m2_declarations##remarks5:组织类型}
	{help m2_declarations##remarks6:函数声明}
	{help m2_declarations##remarks7:参数声明}
	{help m2_declarations##remarks8:按地址调用约定}
	{help m2_declarations##remarks9:变量声明}
	{help m2_declarations##remarks10:链接到外部全局变量}


{marker remarks1}{...}
{title:声明的目的}

{p 4 4 2}
声明发生在三个地方：在函数定义前，括号内定义函数的参数，以及函数主体顶部，定义函数将使用的私有变量。例如，考虑函数

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
此函数返回一个复制的矩阵 {cmd:A}，其中行 {cmd:i1} 和 
{cmd:i2} 被交换。

{p 4 4 2}
在上述函数中有三组声明。首先，在函数名称前有一个声明：

	{cmd:real matrix} swaprows(...)
	{
		...
	}

{p 4 4 2}
该声明表明此函数将返回一个实矩阵。

{p 4 4 2}
第二组声明发生在括号内：

	... swaprows({cmd:real matrix A, real scalar i1, real scalar i2})
	{c -(}
		...
	{c )-}

{p 4 4 2}
这些声明表明此函数期望接收三个参数，我们选择称之为 {cmd:A}、{cmd:i1} 和 {cmd:i2}，并且我们期望它们分别为一个实矩阵、一个实标量和一个实标量。

{p 4 4 2}
第三组声明发生在函数主体顶部：

	... swaprows(...)
	{c -(}
		{cmd:real matrix     B}
		{cmd:real rowvector  v}

		...
	{c )-}

{p 4 4 2}
这些声明表明我们将在函数内部使用变量 {cmd:B} 和 {cmd:v}，而且实际上，{cmd:B} 将是一个实矩阵，而 {cmd:v} 将是一个实行向量。

{p 4 4 2}
我们本可以忽略所有这些声明。我们的函数可以写成

	{cmd}function swaprows(A, i1, i2)
	{c -(}
		B = A
		v = B[i1, .]
		B[i1, .] = B[i2, .]
		B[i2, .] = v
		return(B)
	{c )-}{txt}

{p 4 4 2}
这也能正常工作。那么为什么要包含声明呢？

{p 8 12 2}
    1.  通过包含外部声明，我们向其他 
        程序宣布了预期。它们可以依赖 {cmd:swaprows()} 
        返回一个实矩阵，因为，当 {cmd:swaprows()} 完成时，Mata 
        将验证函数是否确实返回一个实矩阵，如果不是，将中止执行。

{p 12 12 2}
        如果没有外部声明，任何东西都可以。我们的函数 
        可能在一种情况下返回一个实标量，另一种情况下返回一个复行向量，再在另一种情况下什么都不返回。

{p 12 12 2}
        包含外部声明可以使调试变得更容易。

{p 8 12 2}
    2.  通过包括参数声明，我们向其他 
        程序员宣布他们应该传递给我们的函数的内容。
        我们使理解我们的函数变得更容易。

{p 12 12 2}
        我们还告诉 Mata 预期，如果某个其他程序 
        试图错误地使用我们的函数，Mata 将停止执行。

{p 12 12 2}
        与 (1) 中一样，我们使调试变得更容易。

{p 8 12 2}
    3.  通过包含内部声明，我们告诉 Mata 
        我们将需要哪些变量以及我们将如何使用它们。Mata
        可以对该信息做两件事：首先，它可以确保我们
        正确使用变量（再次使调试变得更容易），其次，Mata 可以生成更高效的代码
        （使我们的函数运行得更快）。

{p 4 4 2}
互动中，我们承认有时我们定义函数而没有声明。但是为了更严谨的工作，我们包含它们。


{marker remarks2}{...}
{title:类型、元素类型和组织类型}

{p 4 4 2}
当您互动使用 Mata 时，您可以随意创建新变量：

	: {cmd:n = 2}
	: {cmd:A = (1,2 \ 3,4)}
	: {cmd:z = (sqrt(-4+0i), sqrt(4))}

{p 4 4 2}
当您创建一个变量时，您可能不会考虑类型，但 Mata 会考虑。
上面的 {cmd:n} 对 Mata 来说是一个实标量。 {cmd:A} 是一个实矩阵。
{cmd:z} 是一个复行向量。

{p 4 4 2}
Mata 将变量的类型视为两个部分：

{p 8 12 2}
    1.  变量包含的元素的类型（例如实数或
        复数），和

{p 8 12 2}
    2.  这些元素的组织方式（例如行向量或矩阵）。

{p 4 4 2}
我们将这两种类型称为 {it:eltype} -- 元素类型 -- 和 {it:orgtype} --
组织类型。 {it:eltypes} 和 {it:orgtypes} 为

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
您可以选择每种类型各一种，从而描述 Mata 理解的所有类型。


{marker remarks3}{...}
{title:隐式声明}

{p 4 4 2} 当您不声明对象时，Mata 表现得就像您将其声明为 {cmd:transmorphic} {cmd:matrix}：

{p 8 12 2}
    1.  {cmd:transmorphic} 代表该矩阵可以是 {cmd:real}、
        {cmd:complex}、 {cmd:string} 或 {cmd:pointer}。

{p 8 12 2}
    2.  {cmd:matrix} 表示组织形式为 {it:r} {it:x}
        {it:c}， {it:r}>=0 和 {it:c}>=0。

{p 4 4 2}
在函数的某个地方，{cmd:transmorphic} 矩阵可能是
{cmd:real} {cmd:scalar}（{cmd:real} 是 {cmd:transmorphic} 的特例，而 {cmd:scalar} 是当 {it:r}={it:c}=1 时的 {cmd:matrix} 的特例），而在另一个地方，它可能是 {cmd:string}
{cmd:colvector}（{cmd:string} 是 {cmd:transmorphic} 的特例，而
{cmd:colvector} 是当 c=1 时的 {cmd:matrix} 的特例）。

{p 4 4 2}
考虑我们没有声明的 {cmd:swaprows()} 函数，

	{cmd}function swaprows(A, i1, i2)
	{c -(}
		B = A
		v = B[i1, .]
		B[i1, .] = B[i2, .]
		B[i2, .] = v
		return(B)
	{c )-}{txt}

{p 4 4 2}
编译此函数的结果就像该函数读取

	{cmd}transmorphic matrix swaprows(transmorphic matrix A, 
				     transmorphic matrix i1, 
				     transmorphic matrix i2)
	{c -(}
		transmorphic matrix     B
		transmorphic matrix     v

		B = A
		v = B[i1, .]
		B[i1, .] = B[i2, .]
		B[i2, .] = v
		return(B)
	{c )-}{txt}

{p 4 4 2}
当我们声明一个变量时，我们对其施加了限制。


{marker remarks4}{...}
{title:元素类型}

{p 4 4 2}
有六种 {it:eltypes}，或元素类型：

{p 8 12 2}
    1.  {cmd:transmorphic}，意味着 {cmd:real}、 {cmd:complex}、
        {cmd:string} 或 {cmd:pointer}。

{p 8 12 2}
    2.  {cmd:numeric}，意味着 {cmd:real} 或 {cmd:complex}。

{p 8 12 2}
    3.  {cmd:real}，这是实数元素，例如 1、
         3、-50 和 3.14159。

{p 8 12 2}
    4.  {cmd:complex}，表示每个元素是一对数字，
        其解释为 {it:a}+{it:b}i。  
        {cmd:complex} 是一种存储类型；存储在 {cmd:complex}
        中的数字可能是实数，例如 2+0i。

{p 8 12 2}
    5.  {cmd:string}，表示元素是文本字符串。每个
        元素可以包含最多 2,147,483,647 字节，字符串
        可以（不必）包含二进制 0；也就是说，字符串可以是二进制字符串
        或文本字符串。Mata 字符串与 Stata 中的 {cmd:strL} 类型相似，因为它们可以非常长并且可能包含二进制 0。
        Mata 字符串，像 Stata 中的所有其他字符串一样，可以包含 Unicode
        字符并以 UTF-8 编码存储。

{p 8 12 2}
    6.  {cmd:pointer} 表示元素是指向其他
        Mata 矩阵、向量、标量，甚至函数的指针；参见
        {bf:{help m2_pointers_zh:[M-2] pointers}}。


{marker remarks5}{...}
{title:组织类型}

{p 4 4 2}
有五种 {it:orgtypes}，或组织类型：

{p 8 12 2}
    1.  {cmd:matrix}，表示 {it:r x c}， {it:r}>=0 和 {it:c}>=0。

{p 8 12 2}
    2.  {cmd:vector}，表示 1 {it:x} {it:n} 或 {it:n} {it:x} 1, 
        {it:n}>=0。

{p 8 12 2}
    3.  {cmd:rowvector}，表示 1 {it:x} {it:n}，{it:n}>=0。

{p 8 12 2}
    4.  {cmd:colvector}，表示 {it:n} {it:x} 1，{it:n}>=0。

{p 8 12 2}
    5.  {cmd:scalar}，意味着 1 {it:x} 1。

{p 4 4 2}
细心的读者会注意到向量和矩阵可以具有零行 
或零列！有关更多信息，请参阅 {bf:{help m2_void_zh:[M-2] void}}。


{marker remarks6}{...}
{title:函数声明}

{p 4 4 2}
函数声明是在函数名称前出现的声明，例如 

	{cmd:real matrix} swaprows(...)
	{
		...
	}

{p 4 4 2} 
可以在这里出现的语法是 

		{cmd:function}
		{it:type} [{cmd:function}]
		{cmd:void} [{cmd:function}]

{p 4 4 2}
在名称前必须出现某个东西，如果您不想 
声明类型（这将使类型为 {cmd:transmorphic}
{cmd:matrix}），您只需输入词 {cmd:function}：

	{cmd:function} swaprows(...)
	{
		...
	}

{p 4 4 2}
如果愿意，您还可以声明类型并包括词 {cmd:function}
，例如 

	{cmd:real matrix function} swaprows(...)
	{
		...
	}

{p 4 4 2}
但大多数程序员省略词 {cmd:function}；这没有区别。

{p 4 4 2}
除了所有常见类型外，{cmd:void} 是只允许与函数一起使用的一种类型 -- 它表示该函数不返回任何内容：

	{cmd:void} _swaprows(real matrix A, real scalar i1, real scalar i2)
	{c -(}
		real rowvector  v

		v = A[i1, .]
		A[i1, .] = A[i2, .]
		A[i2, .] = v
	{c )-}{txt}

{p 4 4 2}
上述函数不返回任何内容；它修改被传递的矩阵。这可能对于节省内存非常有用，特别是如果原始 {cmd:swaprows()} 每次使用都是

	{cmd:A = swaprows(A, i1, i2)}

{p 4 4 2}
无论如何，我们将这个新函数命名为 {cmd:_swaprows()}（注意下划线），以提醒用户在使用此函数时存在某种奇怪的情况值得注意。

{p 4 4 2}
{cmd:void}，也就是说，不返回任何内容，也被视为 {cmd:transmorphic} {cmd:matrix} 的一种特例，因为 Mata 在幕后实际上返回一个 
0 {it:x} 0 的实矩阵，调用者会直接丢弃它。


{marker remarks7}{...}
{title:参数声明}

{p 4 4 2}
参数声明是出现在括号内的声明，例如 

	... swaprows({cmd:real matrix A, real scalar i1, real scalar i2})
	{c -(}
		...
	{c )-}{txt}

{p 4 4 2}
可以在这里出现的语法是

		[{it:type}] {it:argname} [{cmd:,} [{it:type}] {it:argname} [{cmd:,} ...]]

{p 4 4 2}
名称是必需的 -- 它们指定我们如何引用参数 -- 
而类型是可选的。省略类型，则假定为 {cmd:transmorphic} {cmd:matrix}。
指定类型时，会在调用函数时进行检查。如果调用者试图错误地使用您的函数，Mata 
将停止执行并发出错误信息。


{marker remarks8}{...}
{title:按地址调用约定}

{p 4 4 2}
参数通过地址传递给函数，而不是通过值。
如果您更改参数的值，您会更改调用者的 
参数。这就是 {cmd:_swaprows()} （上文）能够工作的原因：调用者传递了 
{cmd:A}，我们对此进行了更改。这就是为什么在 {cmd:swaprows()} 的原始 
版本中，第一行读取 

	{cmd:B = A}

{p 4 4 2}
我们对 {cmd:B} 进行了操作，并返回了 {cmd:B}。我们并不想修改调用者的原始矩阵。

{p 4 4 2}
您通常不需要复制调用者的参数，但如果您不想更改参数，则需要小心。因此在所有官方函数中（唯一例外是 
{cmd:st_view()} -- 参见 {bf:{help mf_st_view_zh:[M-5] st_view()}}），如果一个函数更改了调用者的参数，函数的名称以一个下划线开头。
反向逻辑并不成立：有些函数以下划线开头，但并不更改调用者的参数。下划线代表谨慎，您需要阅读函数的文档，以了解您需要注意的内容。


{marker remarks9}{...}
{title:变量声明}

{p 4 4 2}
变量声明是出现在函数主体顶部的声明：

	... swaprows(...)
	{
		{cmd:real matrix     B}
		{cmd:real rowvector  v}

		...
	}

{p 4 4 2}
这些声明是可选的。如果您省略它们，Mata 将观察到您在代码中使用了 {cmd:B} 和 {cmd:v}，然后 Mata 将
编译您的代码，就好像您已经将变量声明为
{cmd:transmorphic} {cmd:matrix}，这意味着生成的编译代码 
可能效率稍低，但仅此而已。

{* index matastrict tt}{...}
{p 4 4 2}
变量声明是可选的，只要您没有 {cmd:mata}
{cmd:set} {cmd:matastrict} {cmd:on}; 参见 {bf:{help mata_set_zh:[M-3] mata set}}。
一些程序员坚信，变量确实应该声明，因此 Mata 提供了一个规定，在他们忘记时发出错误。

{p 4 4 2}
无论如何，这些声明 -- 显式或隐式 -- 定义了我们将使用的变量。
我们在函数中使用的变量是私有的 -- 如果某处还有其他名为 {cmd:B} 和 {cmd:v} 的变量，也无妨。私有
变量是在函数调用时创建的，并在函数结束时销毁。变量是私有的，但如上所述，如果我们将
变量传递给另一个函数，该函数可以更改它们的值。
大多数函数不会这样做。

{p 4 4 2}
声明变量的语法是

		{it:type}             {varname} [{cmd:,} {it:varname} [{cmd:,} ...]]

		{cmd:external} [{it:type}]  {it:varname} [{cmd:,} {it:varname} [{cmd:,} ...]]

{p 4 4 2}
{cmd:real matrix B} 和 {cmd:real rowvector v} 与第一种语法相匹配。


{marker remarks10}{...}
{title:链接到外部全局变量}

{p 4 4 2}
第二种语法涉及链接到全局变量。当您在交互模式下使用 Mata 并输入

	: {cmd:n = 2}

{p 4 4 2}
您创建了一个名为 {cmd:n} 的变量。该变量是全局的。当您在函数内部编码时

	... myfunction(...)
	{
		{cmd:external n}

		...
	}

{p 4 4 2}
您的函数将使用的 {cmd:n} 变量是名为 {cmd:n} 的全局变量。如果您的函数现在检查 {cmd:n} 的值，它会发现其值为 2。

{p 4 4 2}
如果该变量尚不存在，则语句 {cmd:external} {cmd:n} 将创建它。假设我们之前没有定义 {cmd:n}。如果
{cmd:myfunction()} 检查 {cmd:n} 的内容，它会发现 {cmd:n} 是一个 0 {it:x} 0 矩阵。这是因为我们编写了

		{cmd:external n}

{p 4 4 2}
而 Mata 表现得好像我们编写了

		{cmd:external transmorphic matrix n}

{p 4 4 2}
现在让我们修改 {cmd:myfunction()}，使其如下：

	... myfunction(...)
	{
		{cmd:external real scalar n}

		...
	}

{p 4 4 2}
让我们考虑以下几种情况：

{p 8 12 2}
    1.  {cmd:n} 不存在。{break}
	这里 {cmd:external} {cmd:real} {cmd:scalar} {cmd:n} 将
        创建 {cmd:n} -- 当然，作为一个实标量 -- 并将其值 
        设置为缺失。  

{p 12 12 2}
	如果 {cmd:n} 被声明为 {cmd:rowvector}，则将创建一个 1 {it:x} 0 向量。

{p 12 12 2}
	如果 {cmd:n} 被声明为 {cmd:colvector}，则将创建一个 0 {it:x} 1 向量。

{p 12 12 2}
	如果 {cmd:n} 被声明为 {cmd:vector}，则将创建一个 0 {it:x} 1 向量。Mata 可以同样创建 
一个 1 {it:x} 0 向量，但它创建 0 {it:x} 1。

{p 12 12 2}
	如果 {cmd:n} 被声明为 {cmd:matrix}，则将创建一个 0 {it:x} 0 矩阵。

{p 8 12 2}
    2.  {cmd:n} 存在，并且是一个 {cmd:real scalar}.{break}
	我们的函数执行，使用全局 {cmd:n}。

{p 8 12 2}
    3.  {cmd:n} 存在，并且是一个 {cmd:real} 1 {it:x} 1 
        {cmd:rowvector}、{cmd:colvector} 或 {cmd:matrix}.{break}
        重要的是，它是 1 {it:x} 1；我们的函数执行， 
        使用全局 {cmd:n}。

{p 8 12 2}
    4.  {cmd:n} 存在，但它是 {cmd:complex} 或 {cmd:string} 或
        {cmd:pointer}，或它是 {cmd:real} 但不是 1 {it:x} 1.{break}
        Mata 发出错误信息并中止执行我们的函数。

{p 4 4 2}
    复杂的程序系统有时发现通过全局变量进行通信很方便。由于全局变量是全局的，我们建议
    您为全局变量给出较长的名称。一个好的方法是将系统的名称作为前缀：

	... myfunction(...)
	{
		{cmd:external real scalar mysystem_n}

		...
	}

{p 4 4 2}
有关全局变量的其他方法，请参见 
{bf:{help mf_findexternal_zh:[M-5] findexternal()}}
和 
{bf:{help mf_valofexternal_zh:[M-5] valofexternal()}}。
{p_end}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <m2_declarations.sthlp>}