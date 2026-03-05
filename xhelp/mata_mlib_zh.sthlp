{smcl}
{* *! version 1.2.13  15may2018}{...}
{vieweralsosee "[M-3] mata mlib" "mansection M-3 matamlib"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[M-3] lmbuild" "help lmbuild_zh"}{...}
{vieweralsosee "[M-3] mata mosave" "help mata_mosave_zh"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[M-3] Intro" "help m3_intro_zh"}{...}
{viewerjumpto "Syntax" "mata_mlib_zh##syntax"}{...}
{viewerjumpto "Description" "mata_mlib_zh##description"}{...}
{viewerjumpto "Links to PDF documentation" "mata_mlib_zh##linkspdf"}{...}
{viewerjumpto "Options" "mata_mlib_zh##options"}{...}
{viewerjumpto "Remarks" "mata_mlib_zh##remarks"}
{help mata_mlib:English Version}
{hline}{...}
{p2colset 1 20 22 2}{...}
{p2col:{bf:[M-3] mata mlib} {hline 2}}创建函数库
{p_end}
{p2col:}({mansection M-3 matamlib:查看完整的 PDF 手册条目}){p_end}
{p2colreset}{...}

{marker syntax}{...}
{title:语法}

{p 8 16 2}
: {cmd:mata mlib create}
{it:libname}{bind:          }
[{cmd:,} 
{cmd:dir(}{it:path}{cmd:)} 
{cmd:replace}
{cmd:size(}{it:#}{cmd:)}
]

{p 8 16 2}
: {cmd:mata mlib add}{bind:   }
{it:libname}
{it:fcnlist}{cmd:()}
[{cmd:,} 
{cmd:dir(}{it:path}{cmd:)} 
{cmd:complete}
]

{p 8 17 2}
: {cmd:mata mlib index}

{p 8 17 2}
: {cmd:mata mlib} {cmdab:q:uery}

{p 4 4 2}
其中 {it:fcnlist}{cmd:()} 是一个 {it:namelist}，仅包含函数名，例如

		{it:fcnlist}{cmd:()} 示例
		{hline 41}
		{cmd:myfunc()}
		{cmd:myfunc()} {cmd:myotherfunc()} {cmd:foo()}
		{cmd:f*() g*()}
		{cmd:*()}
		{hline 41}
		参见 {bf:{help m3_namelists_zh:[M-3] 名称列表}} 

{p 4 4 2}
而 {it:libname} 是库的名称。必须以字母 {cmd:l} 开头，并且不要添加 {cmd:.mlib} 后缀，因为它会被自动添加。{it:libnames} 的示例包括

		{it:libname}           对应的文件名
		{hline 41}
		{cmd:lmath}                  {cmd:lmath.mlib}
		{cmd:lmoremath}              {cmd:lmoremath.mlib}
		{cmd:lnjc}                   {cmd:lnjc.mlib}
		{hline 41}

{p 4 4 2}
并且以字母 {cmd:lmata} 开头的 {it:libnames}，例如 {cmd:lmatabase}，保留给官方库的名称。

{p 4 4 2}
此命令用于 Mata 模式下，在 Mata 的冒号提示符后使用。
要从 Stata 的点提示符使用此命令，输入

		. {cmd:mata: mata mlib} ...

{marker description}{...}
{title:描述}

{p 4 4 2}
Mata 库是有用的。您可以将函数放在其中。如果您这样做，您可以像使用 Mata 内置函数一样使用您的函数。您的函数与 Mata 的函数被置于同等的地位。这种平等的地位确实是相同的，因为 Mata 的内置函数也存储在库中。唯一的区别是这些库是由 StataCorp 创建和维护的。

{p 4 4 2}
{cmd:mata} {cmd:mlib} 创建、添加以及使 Mata 来索引 {cmd:.mlib} 文件，这是包含对象代码函数的库。{cmd:lmbuild} 命令也创建和维护 Mata 函数库，但 {cmd:lmbuild} 比 {cmd:mata mlib create} 或 {cmd:mata mlib add} 更易于使用。因此，我们建议您使用 {cmd:lmbuild} (参见 {manhelp lmbuild M-3:lmbuild}) 而不是这些命令。

{p 4 4 2}
{cmd:mata} {cmd:mlib} 还有两个有时有用的特性。Mata 会为自己维护一个库列表，在查找函数时进行搜索。Mata 会在 Stata 启动时构建该列表。输入 {cmd:mata} {cmd:mlib} {cmd:query} 可以查看该列表。Mata 会尝试在您工作时保持该列表的最新状态，但如果您创建一个新库而不使用 {cmd:lmbuild}，Mata 将不会知道它。或者如果您从同事那里复制一个库，Mata 将不会知道它，直到 Stata 被重新启动。在这种情况下，输入 {cmd:mata} {cmd:mlib} {cmd:index}，Mata 将重新构建该列表。

{p 4 4 2}
{cmd:mata mlib create} 创建一个新的空库。

{p 4 4 2}
{cmd:mata mlib add} 将新成员添加到库中。

{p 4 4 2}
{cmd:mata mlib index} 使 Mata 构建一个新的待搜索库列表。

{p 4 4 2}
{cmd:mata mlib query} 列出待搜索的库。

{marker linkspdf}{...}
{title:PDF文档的链接}

        {mansection M-3 matamlibRemarksandexamples:备注和示例}

{pstd}
以上部分不包含在此帮助文件中。

{marker options}{...}
{title:选项}

{p 4 8 2}
{cmd:dir(}{it:path}{cmd:)} 指定文件应写入的目录（文件夹）。{cmd:dir(.)} 是默认值，这意味着如果未指定 {cmd:dir()}，则文件将写入当前（工作）目录。{it:path} 可以是目录名称，也可以是系统目录的简写 {cmd:STATA}、{cmd:BASE}、{cmd:SITE}、{cmd:PLUS}、{cmd:PERSONAL} 或 {cmd:OLDPLACE}；参见 {bf:{help sysdir_zh:[P] sysdir}}。建议使用 {cmd:dir(PERSONAL)}。

{p 4 8 2}
{cmd:complete} 用于保存类定义时。它指定仅在定义完成时才保存该定义；否则，将发出错误消息。请参见 {bf:{help m2_class_zh:[M-2] 类}}。

{p 4 8 2}
{cmd:replace} 指定如果文件已经存在，可以被替换。

{p 4 8 2}
{cmd:size(}{it:#}{cmd:)}, 与 {cmd:mlib} {cmd:create} 一起使用，指定新创建的库能够包含的最大成员数，2 <= {it:#} <= 2048。默认值为 {cmd:size(1024)}。

{marker remarks}{...}
{title:备注}

{p 4 4 2}
备注按以下标题呈现：

	{help mata_mlib##remarks1:背景}
	{help mata_mlib##remarks2:处理库的程序概述}
	{help mata_mlib##remarks3:创建 .mlib 库}
	{help mata_mlib##remarks4:向 .mlib 库添加成员}
	{help mata_mlib##remarks5:列出库的内容}
	{help mata_mlib##remarks6:使 Mata 知道去搜索您的库}
	{help mata_mlib##remarks7:关于组织源代码的建议}

{p 4 4 2}
另见 {bf:{help m1_how_zh:[M-1] 如何}} 以获取对象代码的解释。

{marker remarks1}{...}
{title:背景}

{p 4 4 2}
{cmd:.mlib} 文件包含一个或多个函数的对象代码。存储在库中的函数称为库函数，而 Mata 的库函数也存储在 {cmd:.mlib} 库中。您也可以创建自己的库。

{p 4 4 2}
Mata 提供两种存储对象代码的方法：

{p 8 12 2}
    1.  在 {cmd:.mo} 文件中，包含一个函数的代码

{p 8 12 2}
    2.  在 {cmd:.mlib} 库文件中，最多可以包含 2,048 个函数的代码

{p 4 4 2}
{cmd:.mo} 文件使用起来更简单，并且与 {cmd:.mlib} 库一样有效；请参见 {bf:{help mata_mosave_zh:[M-3] mata mosave}}。然而，{cmd:.mlib} 库在您拥有许多函数时更容易分发给他人，因为它们合并成一个文件。

{marker remarks2}{...}
{title:处理库的程序概述}

{p 4 4 2}
使用库很简单：

{p 8 12 2}
    1.  首先，为您的库选择一个名称。我们将选择名称 {cmd:lpersonal}。

{p 8 12 2}
    2.  接下来，使用 {cmd:mata} {cmd:mlib} {cmd:create} 命令创建一个空库。

{p 8 12 2}
    3.  之后，您可以随时使用 {cmd:mata} {cmd:mlib} {cmd:add} 将新成员添加到库中。

{p 4 4 2}
{cmd:.mlib} 库包含对象代码，而不是原始源代码，因此您需要自己跟踪源代码。此外，如果您想更新存储在库中的函数的对象代码，必须重新创建整个库；一旦添加成员，就不能替换或删除它们。

{p 4 4 2}
我们首先展示机械步骤，然后告诉您我们如何管理库和源代码。

{marker remarks3}{...}
{title:创建 .mlib 库}

{p 4 4 2}
如果您还没有阅读 {bf:{help mata_mosave_zh:[M-3] mata mosave}}，请先阅读。

{p 4 4 2}
要在当前目录中创建一个名为 {cmd:lpersonal.mlib} 的新空库，请输入 

	: {cmd:mata mlib create lpersonal}
	(文件 lpersonal.mlib 已创建)

{p 4 4 2}
如果 {cmd:lpersonal.mlib} 已经存在并且您想替换它，请先删除现有文件，或键入 

	: {cmd:mata mlib create lpersonal, replace}
	(文件 lpersonal.mlib 已创建)

{p 4 4 2}
要在您的 {cmd:PERSONAL} 目录（参见 {bf:{help sysdir_zh:[P] sysdir}}）中创建一个名为 {cmd:lpersonal.mlib} 的新空库，请输入 

	: {cmd:mata mlib create lpersonal, dir(PERSONAL)}
	(文件 c:\ado\personal\lpersonal.mlib 已创建)

{p 4 4 2}
或者 

	: {cmd:mata mlib create lpersonal, dir(PERSONAL) replace}
	(文件 c:\ado\personal\lpersonal.mlib 已创建)

{marker remarks4}{...}
{title:向 .mlib 库添加成员}

{p 4 4 2}
一旦库存在，无论您是刚创建它且它是空的，还是它已经存在并包含一些函数，您都可以通过输入 

	: {cmd:mata mlib add} {it:libname} {it:fcnname}{cmd:()}

{p 4 4 2}
因此，如果我们想将函数 {cmd:example()} 添加到库 {cmd:lpersonal.mlib}，我们将输入 

	: {cmd:mata mlib add lpersonal example()}
	(添加了 1 个函数)

{p 4 4 2}
在这样做时，我们不必说 {cmd:lpersonal.mlib} 存储在哪里；Mata 会在 ado 路径中搜索它。

{p 4 4 2}
但是在您可以将 {cmd:example()} 添加到库之前，您必须先编译它：

	: {cmd:function} {cmd:example}{cmd:(}...{cmd:)}
	> {cmd:{c -(}}
	>        ...
	> {cmd:{c )-}}

	: {cmd:mata mlib add lpersonal example()}
	(添加了 1 个函数)

{p 4 4 2}
您可以在一个命令中将多个函数添加到库中：

	: {cmd:mata mlib add lpersonal example2() example3()}
	(添加了 2 个函数)

{p 4 4 2}
您可以通过输入 

	: {cmd:mata mlib add lanother *()}
	(添加了 3 个函数)

{p 4 4 2}
在上面的示例中，我们向 {cmd:lanother.mlib} 添加，因为我们已经将 {cmd:example()}、{cmd:example2()} 和 {cmd:example3()} 添加到 {cmd:lpersonal.mlib}，再尝试添加它们将导致错误。（在添加 {cmd:*()} 之前，我们可以通过输入 {cmd:mata} {cmd:describe} {cmd:*()} 来验证我们要添加的内容；参见帮助 {bf:{help mata_describe_zh:[M-3] mata describe}}。）

{marker remarks5}{...}
{title:列出库的内容}

{p 4 4 2}
一旦库存在，您可以通过输入 

	: {cmd:mata describe using} {it:libname}

{p 4 4 2}
在这里我们将输入 

	: {cmd:mata describe using lpersonal}

              {txt}# 字节   类型                       名称和范围
        {hline 69}
        {res}           24   {txt}自动变换矩阵   {res}example{txt}()
        {res}           24   {txt}自动变换矩阵   {res}example2{txt}()
        {res}           24   {txt}自动变换矩阵   {res}example3{txt}()
        {hline 69}{txt}

{p 4 4 2}
{cmd:mata} {cmd:describe} 通常列出内存的内容，但 {cmd:mata} {cmd:describe} {cmd:using} 列出库的内容。

{marker remarks6}{...}
{title:使 Mata 知道去搜索您的库}

{p 4 4 2}
Mata 会自动找到您计算机上的 {cmd:.mlib} 库。它在会话的第一次调用 Mata 时完成。因此，除了 Mata 不知道会话期间创建的任何新库之外，一切都是自动的，因此在创建新库后，您必须告诉 Mata。您可以通过要求 Mata 重新构建其库索引来做到这一点：

	: {cmd:mata mlib index}

{p 4 4 2}
您不需要指定新库的名称。那个名称并不重要，因为 Mata 会重新构建其整个库索引。

{p 4 4 2}
您可以在创建新库后立即发出 {cmd:mata mlib index} 命令

	: {cmd:mata mlib create lpersonal, dir(PERSONAL)}

	: {cmd:mata mlib index}

{p 4 4 2}
或者在您创建并向库添加内容之后：

	: {cmd:mata mlib create lpersonal, dir(PERSONAL)}

	: {cmd:mata mlib add lpersonal *()}

	: {cmd:mata mlib index}

{p 4 4 2}
这无关紧要。Mata 在已知库更新后不需要重新构建其索引；Mata 仅在会话期间添加新库时需要被告知去重新构建。

{marker remarks7}{...}
{title:关于组织源代码的建议}

{p 4 4 2}
假设您希望创建和维护 {cmd:lpersonal.mlib}。我们的首选方法是使用一个 do 文件：

	{hline 43} begin lpersonal.do {hline 6}
	{cmd}mata:
	mata clear

	{txt}{it:函数定义在这里出现}{cmd}

	mata mlib create lpersonal, dir(PERSONAL) replace
	mata mlib add lpersonal *()
	mata mlib index
	end{txt}
	{hline 43} end lpersonal.do {hline 8}

{p 4 4 2}
这样，我们只需输入 Stata，切换到包含源代码的目录，然后输入

	. {cmd:do lpersonal}

{p 4 4 2}
对于大型库，我们喜欢将不同部分的源代码放在不同的文件中：

	{hline 43} begin lpersonal.do {hline 6}
	{cmd}mata: mata clear

	do function1.mata
	do function2.mata
	{txt}...{cmd}

	mata:
	mata mlib create lpersonal, dir(PERSONAL) replace
	mata mlib add lpersonal *()
	mata mlib index
	end{txt}
	{hline 43} end lpersonal.do {hline 8}

{p 4 4 2}
函数文件包含源代码，其中可能包含一个函数，或者可能包含多个函数，如果主要函数有子例程：

	{hline 42} begin function1.mata {hline 6}
	{cmd:mata:}
	{it:函数定义在这里出现}
	{cmd:end}
	{hline 42} end function1.mata {hline 8}

{p 4 4 2}
我们将组件文件命名为以 {cmd:.mata} 结尾，但它们仍然只是 do 文件。
{p_end}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <mata_mlib.sthlp>}