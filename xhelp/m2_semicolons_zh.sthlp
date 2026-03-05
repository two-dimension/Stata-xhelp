{smcl}
{* *! version 1.1.4  15may2018}{...}
{vieweralsosee "[M-2] 分号" "mansection M-2 Semicolons"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[M-2] 介绍" "help m2_intro_zh"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[P] #delimit" "help delimit_zh"}{...}
{viewerjumpto "语法" "m2_semicolons_zh##syntax"}{...}
{viewerjumpto "描述" "m2_semicolons_zh##description"}{...}
{viewerjumpto "PDF文档链接" "m2_semicolons_zh##linkspdf"}{...}
{viewerjumpto "备注" "m2_semicolons_zh##remarks"}
{help m2_semicolons:English Version}
{hline}{...}
{p2colset 1 21 23 2}{...}
{p2col:{bf:[M-2] 分号} {hline 2}}分号的使用
{p_end}
{p2col:}({mansection M-2 Semicolons:查看完整的PDF手册条目}){p_end}
{p2colreset}{...}


{marker syntax}{...}
{title:语法}

	{it:stmt}

	{it:stmt} {cmd:;}


{marker description}{...}
{title:描述}

{p 4 4 2}
Mata 允许但不强制使用分号。

{p 4 4 2}
下面讨论了分号的使用，以及 Stata 的 {cmd:#delimit} 指令可能的交互作用；参见 
{bf:{help delimit_zh:[P] #delimit}}。


{marker linkspdf}{...}
{title:PDF文档链接}

        {mansection M-2 SemicolonsRemarksandexamples:备注和示例}

{pstd}
上述部分未包含在此帮助文件中。


{marker remarks}{...}
{title:备注}

{p 4 4 2}
备注分为以下几个部分：

	{help m2_semicolons##remarks1:可选的分号使用}
	{help m2_semicolons##remarks2:即使使用分号，也不能在任何地方中断语句}
	{help m2_semicolons##remarks3:使用分号创建多语句行}
	{help m2_semicolons##remarks4:重要的分号}
	{help m2_semicolons##remarks5:不要使用 #delimit ;}


{marker remarks1}{...}
{title:可选的分号使用}

{p 4 4 2}
您可以将程序编码为如下形式

	{cmd}real scalar foo(real matrix A)
	{c -(}
		real scalar	i, sum

		sum = 0 
		for (i=1; i<=rows(A); i++) {c -(}
			sum = sum + A[i,i]
		{c )-}
		return(sum)
	{c )-}{txt}

{p 4 4 2}
或者您可以将程序编码为如下形式：

	{cmd}real scalar foo(real matrix A)
	{c -(}
		real scalar	i, sum ;

		sum = 0 ;
		for (i=1; i<=rows(A); i++) {c -(}
			sum = sum + A[i,i] ;
		{c )-}
		return(sum) ;
	{c )-}{txt}

{p 4 4 2}
也就是说，您可以在语句末尾省略或包含分号，这没有区别。您甚至可以混合使用这两种风格：

	{cmd}real scalar foo(real matrix A)
	{c -(}
		real scalar	i, sum ;

		sum = 0 ;
		for (i=1; i<=rows(A); i++) {c -(}
			sum = sum + A[i,i]
		{c )-}
		return(sum)
	{c )-}{txt}


{marker remarks2}{...}
{title:即使使用分号，也不能在任何地方中断语句}

{p 4 4 2}
大多数使用分号的语言遵循规则：语句在分号之前继续。

{p 4 4 2}
Mata 遵循不同的规则：语句跨行继续，直到看起来完整，而分号则强制语句结束。

{p 4 4 2}
例如，考虑在某个程序中出现的语句 {cmd:x=b-c}。在代码中，可能会出现 

			{cmd:x = b -}
			{cmd:c}

{p 4 4 2}
或者

			{cmd:x = b -}
			{cmd:c ;}

{p 4 4 2}
无论哪种方式，Mata 都会理解语句为 {cmd:x=b-c}，因为语句绝对不可能在减号处结束：{cmd:x=b-} 没有意义。

{p 4 4 2}
另一方面，

			{cmd:x = b}
			{cmd:- c}

{p 4 4 2}
将被 Mata 解释为两个语句：{cmd:x=b} 和 {cmd:-c}，因为 {bind:{cmd:x = b}} 看起来像是 Mata 的一个完整语句。
第一个语句将 {cmd:b} 赋值给 {it:x}，而第二个语句将显示 {cmd:c} 的负值。

{p 4 4 2}
添加分号不会有帮助：

			{cmd:x = b}
			{cmd:- c ;}

{p 4 4 2}
{bind:{cmd:x = b}} 仍然是一个完整的语句。 所有改变的是第二个语句以分号结束，而这没有关系。

{p 4 4 2}
因此，请始终记住在语句绝对不可能被解释为完整的地方断开多行语句，比如

			{cmd:x = b -}
				{cmd:c + (d}
					{cmd:+ e)}

			{cmd:myfunction(A,}
					{cmd:B, C,}
						{cmd:)}

{p 4 4 2}
无论是否使用分号都要这样做。


{marker remarks3}{...}
{title:使用分号创建多语句行}

{p 4 4 2}
分号允许您在一行上放置多个语句。 而不是编码 

		{cmd:a = 2}
		{cmd:b = 3}

{p 4 4 2}
您可以编码为
		{cmd:a = 2 ;  b = 3 ;}

{p 4 4 2}
您甚至可以省略结尾的分号：

		{cmd:a = 2 ;  b = 3}

{p 4 4 2}
无论您是否在不同的行上编写单独的语句，或者在同一行上编写，都是风格问题；这不会改变含义。编码

		{cmd:for (i=1; i<n; i++) a[i] = -a[i] ; sum = sum + a[i] ;}

{p 4 4 2}
依然意味着

		{cmd:for (i=1; i<n; i++) a[i] = -a[i] ;}
		{cmd:sum = sum + a[i] ;}

{p 4 4 2}
毫无疑问，程序员的意图是编码

		{cmd:for (i=1; i<n; i++) {c -(}}
			{cmd:a[i] = -a[i] ;}
			{cmd:sum = sum + a[i] ;}
		{cmd:{c )-}}

{p 4 4 2}
这有不同的含义。


{marker remarks4}{...}
{title:重要的分号}

{p 4 4 2}
分号并不仅仅是风格。 {cmd:for} 语句的语法是（参见 {bf:{help m2_for_zh:[M-2] for}}）

		{cmd:for (}{it:exp1}{cmd:;} {it:exp2}{cmd:;} {it:exp3}{cmd:)} {it:stmt}

{p 4 4 2}
假设我们想编码的完整 {cmd:for} 循环是 

		{cmd:for (x=init(); !converged(x); iterate(x))}

{p 4 4 2}
并且后面没有 {it:stmt}。那么我们必须编码

		{cmd:for (x=init(); !converged(x); iterate(x)) ;}

{p 4 4 2}
这里我们使用分号强制结束语句。 
假设我们省略它，代码读作

		...
		{cmd:for (x=init(); !converged(x); iterate(x))}
		{cmd:x = -x}
		...

{p 4 4 2}
{cmd:for} 语句在 Mata 看来是不完整的，因此它会将我们的代码解释为我们编码的

		{cmd:for (x=init(); !converged(x); iterate(x)) {c -(}}
			{cmd:x = -x}
		{cmd:{c )-}}

{p 4 4 2}
在这里，分号是重要的。

{p 4 4 2}
重要的分号只在 {cmd:for} 和 {cmd:while} 后发生。


{marker remarks5}{...}
{title:不要使用 #delimit ;}

{p 4 4 2}
以下内容与 Stata 的 {cmd:#delimit ;} 模式有关。如果您不知道它是什么，或从未使用过它，可以跳过以下内容。

{p 4 4 2}
Stata 有一个可选的能力，允许其行在分号处继续。 在 Stata 中，您可以编码 

	. {cmd:#delimit ;}

{p 4 4 2}
分隔符将更改为分号，直到您的 do-file 或 ado-file 结束，或直到您编码

	. {cmd:#delimit cr}

{p 4 4 2}
我们建议您在 Stata 处于 {cmd:#delimit ;} 模式时不要使用 Mata。
Mata 不会介意，但您会让自己感到困惑。

{p 4 4 2}
当 Mata 获取控制权时，如果 {cmd:#delimit ;} 已开启，Mata 会暂时将其关闭，然后应用自行的规则，这些规则我们在上面已经总结过。
{p_end}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <m2_semicolons.sthlp>}