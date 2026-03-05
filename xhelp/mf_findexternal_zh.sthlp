{smcl}
{* *! version 1.1.5  15may2018}{...}
{vieweralsosee "[M-5] findexternal()" "mansection M-5 findexternal()"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[M-5] valofexternal()" "help mf_valofexternal_zh"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[M-4] Programming" "help m4_programming_zh"}{...}
{viewerjumpto "Syntax" "mf_findexternal_zh##syntax"}{...}
{viewerjumpto "Description" "mf_findexternal_zh##description"}{...}
{viewerjumpto "Links to PDF documentation" "mf_findexternal_zh##linkspdf"}{...}
{viewerjumpto "Remarks" "mf_findexternal_zh##remarks"}{...}
{viewerjumpto "Conformability" "mf_findexternal_zh##conformability"}{...}
{viewerjumpto "Diagnostics" "mf_findexternal_zh##diagnostics"}{...}
{viewerjumpto "Source code" "mf_findexternal_zh##source"}
{help mf_findexternal:English Version}
{hline}{...}
{p2colset 1 25 27 2}{...}
{p2col:{bf:[M-5] findexternal()} {hline 2}}查找、创建和删除外部全局变量
{p_end}
{p2col:}({mansection M-5 findexternal():查看完整 PDF 手册条目}){p_end}
{p2colreset}{...}


{marker syntax}{...}
{title:语法}

{p 8 12 2}
{it:pointer()}
{it:scalar} 
{cmd:findexternal(}{it:string scalar name}{cmd:)}

{p 8 12 2}
{it:pointer()}
{it:scalar} 
{cmd:crexternal(}{it:string scalar name}{cmd:)}

{p 8 12 2}
{it:void}{bind:             }{cmd:rmexternal(}{it:string scalar name}{cmd:)}

{p 8 12 2}
{it:string}{bind:   }
{it:scalar}
{cmd:nameexternal(}{it:pointer() scalar p}{cmd:)}


{marker description}{...}
{title:描述}

{p 4 4 2}
{cmd:findexternal(}{it:name}{cmd:)} 返回一个指向指定名称的外部全局矩阵、向量或标量的指针（参见 {bf:{help m2_pointers_zh:[M-2] pointers}}），如果 {it:name} 的内容以 {cmd:()} 结尾，则返回指向外部全局函数的指针。
{cmd:findexternal()} 在找不到外部全局时返回 NULL。

{p 4 4 2}
{cmd:crexternal(}{it:name}{cmd:)} 创建一个指定名称的新外部全局 0 {it:x} 0 实数矩阵，并返回指向它的指针；如果已经存在同名的外部全局，则返回 NULL。

{p 4 4 2} 
{cmd:rmexternal(}{it:name}{cmd:)} 删除指定的外部全局，如果不存在任何这样的外部全局则不执行任何操作。

{p 4 4 2}
{cmd:nameexternal(}{it:p}{cmd:)} 返回 {cmd:*}{it:p} 的名称。


{marker linkspdf}{...}
{title:PDF文档链接}

        {mansection M-5 findexternal()Remarksandexamples:备注和示例}

{pstd}
上述部分不包括在此帮助文件中。


{marker remarks}{...}
{title:备注}

{p 4 4 2}
备注按以下标题呈现：

	{help mf_findexternal##remarks1:全局的定义}
	{help mf_findexternal##remarks2:全局的使用}

{p 4 4 2}
另见 {it:{help m2_declarations##remarks10:链接到外部全局}} 在 
{bf:{help m2_declarations_zh:[M-2] 声明}} 中。


{marker remarks1}{...}
{title:全局的定义}

{p 4 4 2}
当您以交互方式使用 Mata 时，您创建的任何变量都可以称为 externals、globals 或外部全局。

	: {cmd:myvar = x}

{p 4 4 2}
这样的变量可以被您运行的后续函数使用，且有两种可能的方式：

	{cmd:function example1(...)}
	{cmd:{c -(}}
		{cmd:external real myvar}

		... {cmd:myvar} ...
	{cmd:{c )-}}

{p 4 4 2}
和 

	{cmd:function example2(...)}
	{cmd:{c -(}}
		{cmd:pointer(real) p}

		{cmd:p = findexternal("myvar")}
		... {cmd:*p} ...
	{cmd:{c )-}}

{p 4 4 2}
使用第一种方法时，您必须在编写源代码时知道全局的名称，当您运行程序时，如果全局不存在，则会拒绝运行（中止并提示 {cmd:myvar} 未找到）。使用第二种方法时，全局的名称可以在运行时指定，当找不到全局时将由您决定应该如何处理。

{p 4 4 2}
在第二个示例中，尽管我们将 {cmd:p} 声明为指向实数的指针，但 {cmd:myvar} 不必包含实数。在 {cmd:p} {cmd:=} {cmd:findexternal("myvar")} 之后，如果 {cmd:p!=NULL}，{cmd:p} 将指向 {cmd:myvar} 的内容，无论它是实数、复数、字符串还是另一个指针。（您可以使用 {cmd:eltype(*p)} 和 {cmd:orgtype(*p)} 来诊断 {cmd:*p} 的内容；参见 {help mf_eltype_zh:[M-5] eltype()}。）

{marker remarks2}{...}
{title:全局的使用}

{p 4 4 2}
全局变量在函数必须记住从一次调用到下一次调用的内容时非常有用：

	{cmd}function example3(real scalar x)
	{
		pointer() scalar p 

		if ( (p = findexternal("myprivatevar")) == NULL) {
			printf("您之前没有调用我")
			p = crexternal("myprivatevar")
		}
		else {
			printf("上次，您说过 "%g", *p)
		}
		*p = x 
	}{txt}

	: {cmd:example3(2)}
	您之前没有调用我

	: {cmd:example3(31)}
	上次，您说过 2

	: {cmd:example3(9)}
	上次，您说过 31

{p 4 4 2}
注意我们使用的名称 {cmd:myprivatevar}。它实际上并不是一个私有变量；它是全局的，如果您描述 Mata 内存的内容，您会看到该变量被列出。由于全局变量非常暴露，因此最好为它们起一个长且不太可能的名称。

{p 4 4 2}
一般而言，程序不需要全局变量。例外情况是程序必须记住从一次调用到下一次调用的内容，尤其是当该内容必须记住从 Mata 的一次调用到下一次调用时。

{p 4 4 2}
当您确实需要全局变量时，您可能会有多个需要记住的内容。有两种方法可以进行。一种方法是为每个需要记住的内容创建单独的全局变量。另一种方法是创建一个全局指针向量并将所有内容存储在其中。在以下示例中，我们记住一个标量和一个矩阵：

	{cmd}function example4()
	{
		pointer(pointer() vector) scalar   p 
		scalar                             s
		real matrix                        X
		pointer() scalar                   ps, pX

		if ( (p = findexternal("mycollection")) == NULL) {
			... {txt:{it:计算标量}} s {txt:{it:和}} X {txt:{it:从无到有}} ...
			... {txt:{it:并保存它们:}}
			p = crexternal("mycollection")
			*p = (&s, &X)
		}
		else {
			ps = (*p)[1]
			pX = (*p)[2] 
			... {txt:{it:使用}} *ps {txt:{it:和}} *pX ... 
		}
	}{txt}

{p 4 4 2}
在上述示例中，尽管 {cmd:crexternal()} 创建了一个 0 {it:x} 0 实数全局，但我们将其变形为一个 1 {it:x} 2 指针向量：

	{cmd} p = crexternal("mycollection")  *p {txt:是 0 x 0 实数}
	*p = (&s, &X)                    *p {txt:是 1 x 2 向量}{txt}

{p 4 4 2}
就像我们可以与任何非指针对象一样。

{p 4 4 2}
在我们程序的 else 部分，在我们使用之前的值时，我们不使用变量 {cmd:s} 和 {cmd:X}，而是使用 {cmd:ps} 和 {cmd:pX}。实际上，我们并不真正需要它们，我们可以用 {cmd:*((*p)[1])} 和 {cmd:*((*p)[2])} 来替代，但通过引入 {cmd:*ps} 和 {cmd:*pX}，代码更易于理解。

{p 4 4 2}
实际上，我们可以通过将我们程序的 else 部分改为以下内容来使用变量 {cmd:s} 和 {cmd:X}：

		{cmd}else {
			s = *(*p)[1]
			X = *(*p)[2] 
			... {txt:{it:使用}} s {txt:{it:和}} X ...
			*p = (&s, &X)         <- 记得把它们放回去
		}{txt}

{p 4 4 2}
这样做效率低，因为 {cmd:s} 和 {cmd:X} 包含全局值的副本。显然，效率低下的程度取决于被复制对象的大小。对于 {cmd:s} 来说，实际上没有效率低下的问题，因为 {cmd:s} 只是一个标量。对于 {cmd:X} 来说，效率低下的程度取决于 {cmd:X} 的维度。制作小的 {cmd:X} 矩阵的副本会引入一点小的效率低下。

{p 4 4 2} 
在效率和可读性之间的最佳平衡是通过引入一个子程序来实现的：

	{cmd}function example5()
	{
		pointer(pointer() vector) scalar   p 
		scalar                             s
		real matrix                        X

		if ( (p = findexternal("mycollection")) == NULL) {
			example5_sub(1, s=., X=J(0,0,.))
			p = crexternal("mycollection")
			*p = (&s, &X)
		}
		else {
			example5_sub(0, (*p)[1], (*p)[2])
		}
	}

	function example5_sub(scalar firstcall, scalar x, matrix X)
	{
		...
	}{txt}

{p 4 4 2}
未找到时的最后两行

			{cmd}p = crexternal("mycollection")
			*p = (&s, &X){txt}

{p 4 4 2}
也可以编码为

			{cmd:*crexternal("mycollection") = (&s, &X)}


{marker conformability}{...}
{title:相容性}

{p 4 4 2}
{cmd:findexternal(}{it:name}{cmd:)}, 
{cmd:crexternal(}{it:name}{cmd:)}:
{p_end}
	     {it:name}:  1 {it:x} 1
	   {it:result}:  1 {it:x} 1

{p 4 4 2}
{cmd:rmexternal(}{it:name}{cmd:)}:
{p_end}
	     {it:name}:  1 {it:x} 1
	   {it:result}:  {it:void}

{p 4 4 2}
{cmd:nameexternal(}{it:p}{cmd:)}:
{p_end}
	        {it:p}:  1 {it:x} 1
	   {it:result}:  1 {it:x} 1


{marker diagnostics}{...}
{title:诊断}

{p 4 4 2}
{cmd:findexternal(}{it:name}{cmd:)}, 
{cmd:crexternal(}{it:name}{cmd:)}, 和 
{cmd:rmexternal(}{it:name}{cmd:)}
在 {it:name} 包含无效名称时会中止并显示错误。

{p 4 4 2}
{cmd:findexternal(}{it:name}{cmd:)} 在 {it:name} 不存在时返回 NULL。

{p 4 4 2}
{cmd:crexternal(}{it:name}{cmd:)} 在 {it:name} 已存在时返回 NULL。

{p 4 4 2}
{cmd:nameexternal(}{it:p}{cmd:)} 在 {it:p}={cmd:NULL} 时返回 ""。此外，{cmd:nameexternal()} 不仅可以与指向全局的指针一起使用，还可以与指向局部的指针一起使用。
例如，您可以编码 
{cmd:nameexternal(&myx)}，其中 {cmd:myx} 在同一程序或调用程序中声明。  
{cmd:nameexternal()} 通常会返回预期的局部名称，如 {cmd:"myx"}。然而，在这种情况下，也有可能返回 ""。这种情况可能发生在编译/优化过程中，局部变量的身份可能会丢失。


{marker source}{...}
{title:源代码}

{p 4 4 2}
函数是内置的。
{p_end}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <mf_findexternal.sthlp>}