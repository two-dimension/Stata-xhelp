{smcl}
{* *! version 1.1.4  15may2018}{...}
{vieweralsosee "[M-2] ftof" "mansection M-2 ftof"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[M-2] Intro" "help m2_intro_zh"}{...}
{viewerjumpto "Syntax" "m2_ftof_zh##syntax"}{...}
{viewerjumpto "Description" "m2_ftof_zh##description"}{...}
{viewerjumpto "Links to PDF documentation" "m2_ftof_zh##linkspdf"}{...}
{viewerjumpto "Remarks" "m2_ftof_zh##remarks"}
{help m2_ftof:English Version}
{hline}{...}
{p2colset 1 15 17 2}{...}
{p2col:{bf:[M-2] ftof} {hline 2}}将函数传递给函数
{p_end}
{p2col:}({mansection M-2 ftof:查看完整的PDF手册条目}){p_end}
{p2colreset}{...}


{marker syntax}{...}
{title:语法}

		{it:example}{cmd:(}...{cmd:,} {cmd:&}{it:somefunction}{cmd:(),} ...{cmd:)}


		其中 {it:example}{cmd:()} 被编码为


		{cmd:function} {it:example}{cmd:(}...{cmd:,} {it:f}{cmd:,} ...{cmd:)}
		{cmd:{c -(}}
			...
			{cmd:(*}{it:f}{cmd:)}{cmd:(}...{cmd:)}
			...
		{cmd:{c )-}}


{marker description}{...}
{title:描述}

{p 4 4 2}
函数可以接收其他函数作为参数。

{p 4 4 2}
以下描述了 (1) 如何调用接收函数作为参数的函数，以及 (2) 如何编写接收函数作为参数的函数。


{marker linkspdf}{...}
{title:PDF 文档链接}

        {mansection M-2 ftofRemarksandexamples:备注和示例}

{pstd}
上述部分不包含在此帮助文件中。


{marker remarks}{...}
{title:备注}

{p 4 4 2}
备注按以下标题呈现：

	{help m2_ftof##remarks1:将函数传递给函数}
	{help m2_ftof##remarks2:编写接收函数的函数，简化约定}
	{help m2_ftof##remarks3:传递内置函数}


{marker remarks1}{...}
{title:将函数传递给函数}

{p 4 4 2}
有人编写了一个程序，该程序接收一个函数作为参数。
我们设想该函数为

		{it:real scalar} {cmd:fderiv(}{it:function}{cmd:()}{cmd:,} {it:x}{cmd:)}

{p 4 4 2}
并且 {cmd:fderiv()} 会在 {it:x} 处数值评估 {it:function}{cmd:()} 的导数。{cmd:fderiv()} 的文档告诉你编写一个接收一个参数并返回该参数处函数评估值的函数，例如

	{cmd}real scalar expratio(real scalar x)
	{
		return(exp(x)/exp(-x))
	}{txt}

{p 4 4 2}
要调用 {cmd:fderiv()} 并让其在 3 处评估 {cmd:expratio()} 的导数，你可以编码

	{cmd:fderiv(&expratio(), 3)}

{p 4 4 2}
要将函数传递给函数，你需要在函数名称前加上 {cmd:&} 并在后面加上 {cmd:()}。
编码 {cmd:&expratio()} 会将函数 {cmd:expratio()} 的地址传递给 {cmd:fderiv()}。


{marker remarks2}{...}
{title:编写接收函数的函数，简化约定}

{p 4 4 2}
为了接收一个函数，你在程序参数中加入一个变量以接收该函数——我们将使用 {it:f}——然后编码 {cmd:(*}{it:f}{cmd:)(}...{cmd:)} 来调用传递的函数。{cmd:fderiv()} 的代码可能是

	{cmd}function fderiv(f, x)
	{
		return( ((*f)(x+1e-6) - (*f)(x)) / 1e-6 )
	}{txt}

{p 4 4 2}
或者，如果你更倾向于明确你的声明，

	{cmd}real scalar fderiv(pointer scalar f, real scalar x)
	{
		return( ((*f)(x+1e-6) - (*f)(x)) / 1e-6 )
	}{txt}

{p 4 4 2}
或者，如果你希望更明确一些：

        {cmd}
{phang2}real scalar fderiv(pointer(real scalar function) scalar f, real scalar x){p_end}
	{
		return( ((*f)(x+1e-6) - (*f)(x)) / 1e-6 )
	}{txt}

{p 4 4 2}
无论如何，使用指针时，你可以输入 {cmd:(*f)(}...{cmd:)} 来执行传递的函数。有关更多信息，请参见 {bf:{help m2_pointers_zh:[M-2] 指针}}。

{p 4 4 2}
附注：函数 {cmd:fderiv()} 可以工作，但由于它使用的公式，会返回非常不准确的结果。


{marker remarks3}{...}
{title:传递内置函数}

{p 4 4 2}
你不能将内置函数传递给其他函数。例如，{bf:{help mf_exp_zh:[M-5] exp()}} 是内置的，这一点可以通过 {bf:{help mata_which_zh:[M-3] mata which}} 查明：

	: {cmd:mata which exp()}
	  exp():  内置

{p 4 4 2}
并不是所有官方函数都是内置的。许多在 Mata 中作为库函数实现，但 {cmd:exp()} 是内置的，编码 {cmd:&exp()} 将导致错误。如果你想将 {cmd:exp()} 传递给一个函数，请创建你自己的版本

	: {cmd:function myexp(x) return(exp(x))}

{p 4 4 2}
然后传递 {cmd:&myexp()}。
{p_end}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <m2_ftof.sthlp>}