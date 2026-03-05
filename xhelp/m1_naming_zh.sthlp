{smcl}
{* *! version 1.1.7  15may2018}{...}
{vieweralsosee "[M-1] 命名" "mansection M-1 命名"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[M-2] 关键字" "help m2_reswords_zh"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[M-1] 介绍" "help m1_intro_zh"}{...}
{viewerjumpto "语法" "m1_naming_zh##syntax"}{...}
{viewerjumpto "描述" "m1_naming_zh##description"}{...}
{viewerjumpto "PDF文档链接" "m1_naming_zh##linkspdf"}{...}
{viewerjumpto "备注" "m1_naming_zh##remarks"}
{help m1_naming:English Version}
{hline}{...}
{p2colset 1 17 19 2}{...}
{p2col:{bf:[M-1] 命名} {hline 2}}有关函数和变量命名的建议
{p_end}
{p2col:}({mansection M-1 命名:查看完整的 PDF 手册条目}){p_end}
{p2colreset}{...}


{marker syntax}{...}
{title:语法}

{p 4 4 2}
一个 {it:名称} 长度为 1-32 个字符，第一个字符必须是

		{cmd:A} - {cmd:Z}     {cmd:a} - {cmd:z}     {cmd:_}

{p 4 4 2}
其余字符可以是 

		{cmd:A} - {cmd:Z}     {cmd:a} - {cmd:z}     {cmd:_}    {cmd:0} - {cmd:9}

{p 4 4 2}
但是名称不能是 Mata 的保留字
(参见 {help m2_reswords_zh:[M-2] 关键字} 获取列表)。

{p 4 4 2}
名称的示例包括

		{cmd:x}
		{cmd:x2}
		{cmd:alpha}
		{cmd:logarithm_of_x}
		{cmd:LogOfX}

{p 4 4 2}
字母大小写敏感： {cmd:alpha}、 {cmd:Alpha} 和 {cmd:ALPHA} 是不同的名称。

{p 4 4 2}
变量和函数有不同的命名空间，这意味着一个变量和
一个函数可以有相同的名称，例如 {cmd:value} 和 {cmd:value()}，并且
Mata 不会将它们混淆。


{marker description}{...}
{title:描述}

{p 4 4 2}
提供了有关如何命名变量和函数的建议。


{marker linkspdf}{...}
{title:PDF文档链接}

        {mansection M-1 命名备注和示例:备注和示例}

{pstd}
上述部分不包括在此帮助文件中。


{marker remarks}{...}
{title:备注}

{p 4 4 2}
备注分为以下几个部分：

	{help m1_naming##remarks1:交互使用}
	{help m1_naming##remarks2:命名变量}
	{help m1_naming##remarks3:命名函数}
	{help m1_naming##remarks4:当函数具有相同名称时的情况}
	{help m1_naming##remarks5:如何确定函数名称是否已被占用}


{marker remarks1}{...}
{title:交互使用}

{p 4 4 2}
使用任何你觉得方便的名称： Mata 会告诉你如果有
问题。

{p 4 4 2}
以下部分适用于希望编写将来减少维护的代码的程序员。


{marker remarks2}{...}
{title:命名变量}

{p 4 4 2}
通常，你可以随意命名变量。变量是局部的
在其出现的程序中，因此一个函数可以有一个名为 {cmd:x} 的变量
而另一个函数也可以有一个同名的变量或参数，它们之间没有混淆。

{p 4 4 2}
但是，如果你正在编写一个有全球变量的大型程序系统，
我们建议你给全球变量起个长名字，
最好是带有一个共同前缀来标识你的系统。例如， 

		{cmd:multeq_no_of_equations}
		{cmd:multeq_eq}
		{cmd:multeq_inuse}

{p 4 4 2}
这样，你的变量就不会与其他系统的变量混淆。


{marker remarks3}{...}
{title:命名函数}

{p 4 4 2}
我们的首要建议是，大多数情况下，给函数
起小写名称： {cmd:foo()} 而不是 {cmd:Foo()} 或 {cmd:FOO()}。如果
你有一个带有一个或多个大写字母的函数名称，并且如果你
想保存该函数的对象代码，则必须在
{helpb mata mlib:.mlib} 库中保存； {helpb mata mosave:.mo} 文件不够。 {cmd:.mo} 文件要求文件名与函数名相同，这意味着 {cmd:Foo.mo} 对于 {cmd:Foo()}。并不是所有操作系统都尊重文件名中的大小写。即使你的操作系统确实尊重大小写，
你也无法与那些不尊重大小写的其他人的操作系统共享你的 {cmd:.mo} 文件。

{p 4 4 2}
我们对混合大小写没有强烈反对；我们只是提醒你
如果使用它，请使用 {cmd:.mlib} 库文件。

{p 4 4 2}
更重要的是你选择的名称。 Mata 提供许多 
函数，并且将来会增加更多。如果你选择 StataCorp 和其他用户未选择的名称，你会发现这更方便。

{p 4 4 2}
这意味着避免出现在英语词典中的单词，并且
避免太短的名称，例如四个字符或更少。你可能会
猜到 {cmd:svd()} 会被占用，但谁会猜到
{cmd:lud()}? 或 {cmd:qrd()}? 或 {cmd:e()}?

{p 4 4 2}
你防止官方函数和其他
社区贡献函数的最好方法是选择长函数名。


{marker remarks4}{...}
{title:当函数具有相同名称时的情况}

{p 4 4 2}
官方函数有两类：内置函数和库 
函数。社区贡献的函数始终是库函数
（在这里我们不区分在 {cmd:.mo} 文件中提供的函数和在 
{cmd:.mlib} 文件中提供的函数）。

{p 4 4 2}
如果你尝试定义一个与内置函数同名的函数，Mata 将发出错误消息。

{p 4 4 2}
如果库函数当前不在内存中，Mata 将允许你定义一个与库
函数同名的新函数。然而，如果你将你的函数存储在
{cmd:.mo} 文件或 {cmd:.mlib} 库中，将来正式的 Mata 库函数将优先于你的
函数：你的函数将永远不会被加载。这个功能对
交互用户来说效果很好，但对于长期编程来说，你将希望避免
将函数命名为 Mata 函数。

{p 4 4 2}
如果你将你的函数命名为已经安装在你计算机上的
社区贡献函数，也会得到类似的结果。你可以这样做，前提是
该社区贡献函数当前不在内存中。无论如何，将来其中一个函数将优先，
而且不论哪个，某些东西都会损坏。


{marker remarks5}{...}
{title:如何确定函数名称是否已被占用}

{p 4 4 2}
使用 {cmd:mata which} (见 {bf:{help mata_which_zh:[M-3] mata which}}):

	: {cmd:mata which det_of_triangular()}
	{err:function det_of_triangular() not found}
	r(111);

	: {cmd:mata which det()}
	  det():  lmatabase


{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <m1_naming.sthlp>}