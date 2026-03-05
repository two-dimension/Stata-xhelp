{smcl}
{* *! version 2.0.3  25sep2018}{...}
{vieweralsosee "[M-3] lmbuild" "mansection M-3 lmbuild"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[M-3] mata mlib" "help mata mlib"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[M-3] Intro" "help m3_intro_zh"}{...}
{viewerjumpto "语法" "lmbuild_zh##syntax"}{...}
{viewerjumpto "描述" "lmbuild_zh##description"}{...}
{viewerjumpto "PDF文档链接" "lmbuild_zh##linkspdf"}{...}
{viewerjumpto "选项" "lmbuild_zh##options"}{...}
{viewerjumpto "备注" "lmbuild_zh##remarks"}{...}
{viewerjumpto "源代码" "lmbuild_zh##source"}
{help lmbuild:English Version}
{hline}{...}
{p2colset 1 18 20 2}{...}
{p2col:{bf:[M-3] lmbuild} {hline 2}}轻松创建函数库
{p_end}
{p2col:}({mansection M-3 lmbuild:查看完整的PDF手册条目}){p_end}
{p2colreset}{...}


{marker syntax}{...}
{title:语法}

{p 8 29 2}
{cmd:.} {cmd:lmbuild}
{it:libname}
[{cmd:,}
[{cmd:new}|{cmd:replace}|{cmd:add}]
{opth dir:(lmbuild##dirname:dirname)}
{cmd:size(}{it:#}{cmd:)}]

{p 4 8 2}
    {it:libname} 是一个 Mata 库的名称，例如 
    {bf:lexample.mlib}。库名称必须以 {cmd:l} 开头，且以
    {cmd:.mlib} 结尾。库名称可以指定带或不带扩展名。

{p 4 8 2}
{cmd:lmbuild} 是一个 Stata 命令，您应在 Stata 的点提示符下使用，而不是在 Mata 的冒号提示符下使用。


{marker description}{...}
{title:描述}

{p 4 4 2}
{cmd:lmbuild} 构建 Mata 函数库，就像 {help mata_mlib_zh:mata mlib} 所做的那样。尽管 {cmd:lmbuild} 在使用时几乎需要创建一个 do-file，但它更易于使用，因此是比 {cmd:mata mlib} 更好的替代方案。

{p 4 4 2}
为什么有两个命令做同样的事情？ {cmd:mata mlib} 先前存在用于创建 Mata 库，但使用起来很复杂。{cmd:lmbuild} 后来被添加并简化了库的创建过程。

{p 4 4 2}
您在 Stata 的点提示符后输入 {cmd:lmbuild}，而不是在 Mata 的冒号提示符后输入。


{marker linkspdf}{...}
{title:PDF文档链接}

        {mansection M-3 lmbuildRemarksandexamples:备注和示例}


{marker options}{...}
{title:选项}

{p 4 8 2}
{cmd:new}、{cmd:replace} 和 {cmd:add} 是替代选项，指示库文件是新的、应该被替换，还是应该添加到已有的库中。

{p 8 8 2}
    {cmd:new} 是默认选项。它指定 {it:libname} 不存在，将被创建。

{p 8 8 2}
    {cmd:replace} 指定 {it:libname} 可能已经存在，如果存在，则将替换该库。

{p 8 8 2}
    {cmd:add} 指定 {it:libname} 已经存在，并且功能将被添加到现有库中。我们建议您除非在精心构建的 do-files 中从头到尾创建库时使用此选项。若选择在交互模式下使用 {cmd:add}，则可能会产生不可重复的库。

{marker dirname}{...}
{p 4 8 2}
{opt dir(dirname)} 指定 {it:libname} 存在或要创建的目录。{it:dirname} 可以是以下之一：

{p 8 8 2}
    {cmd:dir(PERSONAL)} 是默认选项。库将被创建或更新在您的个人目录中。您可以输入 {help sysdir_zh} 命令找出您的个人目录在哪里。个人目录中的库将被 Mata 自动找到。如果您尚未拥有个人目录，{cmd:lmbuild} 会为您创建一个。

{p 8 8 2}
    {cmd:dir(SITE)} 指定库在站点目录中创建或更新。此目录在您所在位置的 Stata 用户之间共享。您可以输入 {help sysdir_zh} 命令找出您的站点目录在哪里。您可能需要管理员权限才能向此目录写入。

{p 8 8 2}
    {cmd:dir(.)} 指定库存在或要创建在当前目录中。指定 {cmd:dir(.)} 的唯一理由是您打算稍后将库复制到另一个目录、将库发送给某人，或将库包含在分发给其他用户的 {help usersite_zh:package} 中。

{p 8 8 2}
    {cmd:dir(}{it:directory}{cmd:)} 指定库存在或要创建在 {it:directory} 中。不推荐指定此选项，因为 Mata 不会找到这些库，除非它们被添加到 Mata 的 {help mata set:search path} 中。

{p 4 8 2}
{cmd:size(}{it:#}{cmd:)} 指定库中允许的最大函数数量。默认情况下，库允许最多 1,024 个函数。{it:#} 可以是 2 到 2,048 之间的数字。{cmd:size()} 仅可与新库或被替换的库一起指定。


{marker remarks}{...}
{title:备注}

{p 4 4 2}
您编写并存储在库中的 Mata 函数与 Mata 的内置函数处于同等地位。它们可以在您编写的代码中使用，而无需预加载，无论该代码是在 do-files、ado-files 还是 Mata 中。

{p 4 4 2}
您可以拥有任意多个 Mata 库。每个库最多可以包含 1,024 个函数，若您指定了 {cmd:lmbuild} 的 {cmd:size()} 选项，则可以包含多达 2,048 个函数。

{p 4 4 2}
库存储函数的编译版本，而不是源代码。我们建议您将源代码放在看起来像以下这样 的 do-files 中：

	{hline 47} hello.mata {hline 3}
        {cmd:version} {it:#}

        {cmd:mata:}
        {cmd:void hello()}
        {cmd:{c -(}}
                {cmd:printf("hello world\n")}
        {cmd:{c )-}}
        {cmd:end}
	{hline 62}

{p 4 4 2}
您可以通过在 Stata 提示符下输入 {cmd:do hello.mata} 将函数加载到 Mata 中。您可以测试该函数。当您想将函数放入库中时，输入

        . {cmd:clear all}

        . {cmd:do hello.mata}

        . {cmd:lmbuild lmylib}

{p 4 4 2}
{cmd:lmbuild} {cmd:lmylib} 创建一个名为 
{cmd:lmylib.mlib} 的 Mata 库，包含自上次 {help clear_zh:clear all} 以来加载到内存中的所有 Mata 函数。因此，该库将仅包含一个函数，即 {cmd:hello()}。

{p 4 4 2}
如果您在其他 {cmd:.mata} 文件中存储了其他函数，您可以加载每个文件，然后创建库：

        . {cmd:clear all}

        . {cmd:do hello.mata}

        . {cmd:do havelunch.mata}

        . {cmd:do goodbye.mata}

        . {cmd:lmbuild lmylib}

{p 4 4 2}
该 Mata 库将包含三个函数，假设这三个 {cmd:.mata} 文件定义了三个 Mata 函数。这三个函数分别可能命名为 {cmd:hello()}、{cmd:havelunch()} 和 {cmd:goodbye()}，但函数名与文件名并不需要匹配。
每个 {cmd:.mata} 文件实际上可以定义任意数量的函数。如果文件 {cmd:hello.mata} 包含

	{hline 47} hello.mata {hline 3}
        {cmd:version} {it:#}

        {cmd:mata:}

        {cmd:void hello()}
        {cmd:{c -(}}
                {cmd:printf("hello world\n")}
        {cmd:{c )-}}

        {cmd:void goodbye()}
        {cmd:{c -(}}
                {cmd:printf("good-bye world\n")}
        {cmd:{c )-}}

        {cmd:end}
	{hline 62}

{p 4 4 2}
并且您输入了 

        . {cmd:clear all}

        . {cmd:do hello.mata}

        . {cmd:lmbuild lmylib}

{p 4 4 2}
那么库中将有两个函数： {cmd:hello()} 和 {cmd:goodbye()}。

{p 4 4 2}
通常，您将会有多个 {cmd:.mata} 文件，并在其中定义多个函数。每个文件将定义一个函数及其子程序。然而，有时，您会在同个文件中定义相关函数。无论情况如何，库不应该在交互模式下构建，因为有一天代码会变化，您将需要重新构建库。正确的做法是制作一个 do-file，使您能够轻松创建和重新创建库：

	{hline 43} make_lmylib.do {hline 3}
        {cmd:* 故意省略版本号}

        {cmd:clear all}
        {cmd:do hello.mata}
        {cmd:do bigfcn.mata}
        {cmd:do utilityfunctions.mata}
        .
        .
        {cmd:lmbuild lmylib, replace}
	{hline 62}

{p 4 4 2}
写好这个 do-file 后，我们第一次创建库只需要输入 

        . {cmd:do make_lmylib}

{p 4 4 2}
稍后重新创建库时，只需输入 

        . {cmd:do make_lmylib}

{p 4 4 2}
我们为什么需要重新创建库？一个原因是我们需要在修复了 {cmd:bigfcn.mata} 中的一个bug后重新创建库。

{p 4 4 2}
请注意 {cmd:make_lmylib.do} 顶部的注释，

        {cmd:* 故意省略版本号}

{p 4 4 2}
并请注意我们在每个 {cmd:.mata} 文件中包含了版本号。这就是您如何处理库的版本控制。


{title:版本控制}

{p 4 4 2}
每个 {cmd:.mata} 文件中出现的版本号是编写代码时使用的版本号。如果 {cmd:hello.mata} 是在 Stata 11 时写的，它将如下所示：

	{hline 47} hello.mata {hline 3}
        {cmd:version 11}

        {cmd:mata:}
        {cmd:void hello()}
        {cmd:{c -(}}
                {cmd:printf("hello world\n")}
        {cmd:{c )-}}
        {cmd:end}
	{hline 62}

{p 4 4 2}
文件的第一行设置代码编写时的 Mata 版本。它被称为编译时版本号。
指定编译时版本号可确保代码被回溯到保留其原始行为，以防 Mata 编程语言或 Mata 编译器的一些特性发生变化。

{p 4 4 2}
在文件 {cmd:make_mylib.do} 中，我们没有任何想回溯的内容。{cmd:make_mylib.do} 的整个目的是构建一个现代的 Mata 库，即使新的 Stata 版本发布。因此，故意省略版本号。

{p 4 4 2}
还有一种与 Mata 相关的版本号称为运行时版本号。它与构建库无直接关系，但在您希望根据 Stata 的不同版本更改函数的工作方式时，它是相关的，这是我们在 StataCorp 编写的函数所做的。当然，我们不保留错误，但我们确实添加特性，有时新特性会妨碍旧特性。如果我们不以某种方式编写代码，则旧的 do-files 将无法继续工作，直到用户将它们更新为新语法和调用顺序。我们以这种方式编写代码是为了用户不必这样做。

{p 4 4 2}
假设您在 Stata 13 时编写了 {cmd:bigfcn()}。在 Stata 18 中，您重写了该函数，改变了参数的作用，并将参数数量从一个增加到两个。您原始代码如下：

	{hline 47} bigfcn.mata {hline 3}
        {cmd:version 13}
        {cmd:mata:}

        {cmd:real matrix bigfcn(real matrix A)}
        {cmd:{c -(}}
                ...
        {cmd:{c )-}}

        {cmd:end}
	{hline 62}

{p 4 4 2}
如果您希望保留旧行为并允许新特性，那么更新的代码可能如下所示：

	{hline 47} bigfcn.mata {hline 3}
        {cmd:version 18}
        // -------------------------------------- 版本 18 从这里开始
        {cmd:mata:}

        {cmd:real matrix bigfcn(real matrix A, |real scalar style)}
        {cmd:{c -(}}
                {cmd:if (callersversion()>=18) return(bigfcn_new(A, style))}
                {cmd:else                      return(bigfcn_old(A))}
        {cmd:{c )-}}

        {cmd:real matrix bigfcn_new(real matrix A, real scalar style)}
        {cmd:{c -(}}
                ... {it:新代码} ...
        {cmd:{c )-}}
        {cmd:end}
        // ----------------------------------------------- 版本结束

        {cmd:version 13}
        // -------------------------------------- 版本 13 从这里开始
        {cmd:mata:}

        {cmd:real matrix bigfcn_old(real matrix A)}
        {cmd:{c -(}}
                ... {it:旧代码} ...
        {cmd:{c )-}}

        {cmd:end}
        // ----------------------------------------------- 版本结束
	{hline 62}

{p 4 4 2}
    请注意，我们为文件的一部分指定了 {cmd:version} {cmd:18} ，而另一部分指定了 {cmd:version} {cmd:13}。这就是我们确保旧代码按预期编译的方法，以防编译器发生变化。

{p 4 4 2}
    在新的 {cmd:bigfcn()} 函数中，我们通过指定 {cmd:|real scalar style} 使第二个参数可选。请注意竖线，并参见 {help m2_optargs_zh:[M-2] optargs}。

{p 4 4 2}
    最后，请注意我们使用了 Mata 内置函数 {helpb mata callersversion():callersversion()} 来根据需要调用新旧代码。

{p 4 4 2}
    通过这样定义 {cmd:bigfcn()}，旧的 do-files 继续工作，例如 

	{hline 47} oldfile.do {hline 3}
        {cmd:version 13}
        ...
        ...   {cmd:bigfcn(X)} ...
        ...
	{hline 62}

{p 4 4 2}
    指定版本 14 到 17 的 do-files 也将继续工作。

{p 4 4 2}
    然而，设置为版本 18 或更高的现代 do-file，将使用改进的 {cmd:bigfcn()} 及其两个参数： 

	{hline 47} modernfile.do {hline 3}
        {cmd:version 18}
        ...
        ...   {cmd:bigfcn(X, 1)} ...
        ...
	{hline 62}

{p 4 4 2}
    do-file 中指定的版本号称为其运行时设置。


{marker source}{...}
{title:源代码}

{p 4 4 2}
{view lmbuild.ado, adopath asis:lmbuild.ado}
{p_end}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <lmbuild.sthlp>}