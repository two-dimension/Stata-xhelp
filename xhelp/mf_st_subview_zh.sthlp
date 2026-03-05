{smcl}
{* *! version 1.1.5  15may2018}{...}
{vieweralsosee "[M-5] st_subview()" "mansection M-5 st_subview()"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[M-5] select()" "help mf_select_zh"}{...}
{vieweralsosee "[M-5] st_view()" "help mf_st_view_zh"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[M-4] Stata" "help m4_stata_zh"}{...}
{viewerjumpto "Syntax" "mf_st_subview_zh##syntax"}{...}
{viewerjumpto "Description" "mf_st_subview_zh##description"}{...}
{viewerjumpto "Links to PDF documentation" "mf_st_subview_zh##linkspdf"}{...}
{viewerjumpto "Remarks" "mf_st_subview_zh##remarks"}{...}
{viewerjumpto "Conformability" "mf_st_subview_zh##conformability"}{...}
{viewerjumpto "Diagnostics" "mf_st_subview_zh##diagnostics"}{...}
{viewerjumpto "Source code" "mf_st_subview_zh##source"}
{help mf_st_subview:English Version}
{hline}{...}
{p2colset 1 23 25 2}{...}
{p2col:{bf:[M-5] st_subview()} {hline 2}}从视图创建子视图{p_end}
{p2col:}({mansection M-5 st_subview():查看完整的PDF手册条目}){p_end}
{p2colreset}{...}


{marker syntax}{...}
{title:语法}

{p 8 12 2}
{it:void}
{cmd:st_subview(}{it:X}{cmd:,}
{it:transmorphic matrix V}{cmd:,}
{it:real matrix i}{cmd:,}
{it:real matrix j}{cmd:)}


{p 4 8 2}
其中

{p 7 11 2}
1.  {it:X}的类型无关紧要；它会被替换。

{p 7 11 2}
2.  {it:V}通常是一个视图，但这并不是必需的。 然而，{it:V}必须是实数或字符串。


{marker description}{...}
{title:描述}

{p 4 4 2}
{cmd:st_subview(}{it:X}{cmd:,} 
{it:V}{cmd:,} 
{it:i}{cmd:,} 
{it:j}{cmd:)} 
从现有的视图矩阵 {it:V} 创建新的视图矩阵 {it:X}。 {it:V} 是通过之前对 {bf:{help mf_st_view_zh:st_view()}} 或 {cmd:st_subview()} 的调用创建的。

{p 4 4 2}
虽然 {cmd:st_subview()} 旨在与视图矩阵一起使用，但它也可以在 {it:V} 是常规矩阵时使用。因此，代码可以编写得可以无视矩阵是否为视图而正常工作。

{p 4 4 2}
{it:i} 可以指定为 1 x 1 的标量、包含缺失值的 1 x 1 标量、行号的列向量、指定行号范围的行向量，或者指定两者的 k x 2 矩阵：

{p 7 11 2} 
    a.
        {cmd:st_subview(}{it:X}{cmd:,}{it:V}{cmd:,} 
        {cmd: 1,2)} 使得 {it:X} 等于 {it:V} 的第二列的第一行。

{p 7 11 2} 
    b.
        {cmd:st_subview(}{it:X}{cmd:,}{it:V}{cmd:,} 
        {cmd: .,2)} 使得 {it:X} 等于 {it:V} 的第二列的所有行。

{p 7 11 2} 
    c.
        {cmd:st_subview(}{it:X}{cmd:,}{it:V}{cmd:,} 
	{cmd:(1\2\5),2)} 使得 {it:X} 等于 {it:V} 的第二列的第 1、第 2 和第 5 行。

{p 7 11 2} 
    d.
        {cmd:st_subview(}{it:X}{cmd:,}{it:V}{cmd:,} 
	{cmd:(1,5),2)} 使得 {it:X} 等于 {it:V} 的第二列的第 1 到第 5 行。

{p 7 11 2} 
    e.
        {cmd:st_subview(}{it:X}{cmd:,}{it:V}{cmd:,} 
	{cmd:(1,5\7,9),2)} 使得 {it:X} 等于 {it:V} 的第二列的第 1 到第 5 行和第 7 到第 9 行。

{p 7 11 2} 
    f.  当指定范围时，范围内的任何元素（{it:i1},{it:i2}）可以设置为贡献零观测值，如果 {it:i2}={it:i1}-1。例如，{cmd:(1,0)} 不是错误，而 {cmd:(1,0\5,7)} 也不是。

{p 4 4 2} 
{it:j} 可以通过与 {it:i} 相同的方式指定，除了转置，用于指定选定的列：

{p 7 11 2} 
    a.
        {cmd:st_subview(}{it:X}{cmd:,}{it:V}{cmd:,} 
        {cmd: 2,.)} 使得 {it:X} 等于 {it:V} 的第二行的所有列。

{p 7 11 2} 
    b.
        {cmd:st_subview(}{it:X}{cmd:,}{it:V}{cmd:,} 
	{cmd:2,(1,2,5))} 使得 {it:X} 等于 {it:V} 的第二行的第 1、2 和 5 列。

{p 7 11 2} 
    c.
        {cmd:st_subview(}{it:X}{cmd:,}{it:V}{cmd:,} 
	{cmd:2,(1\5))} 使得 {it:X} 等于 {it:V} 的第二行的第 1 到第 5 列。

{p 7 11 2} 
    d.
        {cmd:st_subview(}{it:X}{cmd:,}{it:V}{cmd:,} 
	{cmd:2,((1\5),(7\9)))} 使得 {it:X} 等于 {it:V} 的第二行的第 1 到第 5 列和第 7 到第 9 列。

{p 7 11 2} 
    e.  当指定范围时，范围内的任何元素（{it:j1}\{it:j2}）可以设置为贡献零列，如果 {it:j2}={it:j1}-1。例如，{cmd:(1\0)} 不是错误，而 {cmd:((1\0),(5\7))} 也不是错误。

{p 4 4 2}
显然，{it:i} 和 {it:j} 的符号可以同时指定：

{p 7 11 2} 
    a.
        {cmd:st_subview(}{it:X}{cmd:,}{it:V}{cmd:,} 
        {cmd: .,.)}
        使得 {it:X} 成为 {it:V} 的副本。

{p 7 11 2} 
    b.
        {cmd:st_subview(}{it:X}{cmd:,}{it:V}{cmd:,} 
	{cmd:.,(1\5))} 使得 {it:X} 等于 {it:X} 的所有行的第 1 到第 5 列。

{p 7 11 2} 
    c.
        {cmd:st_subview(}{it:X}{cmd:,}{it:V}{cmd:,} 
	{cmd:(10,25),(1\5))} 使得 {it:X} 等于 {it:X} 的第 10 到第 25 行的第 1 到第 5 列。

{p 4 4 2}
此外，{cmd:st_subview()} 可用于创建来自 {it:V} 的重复变量或观测值的视图。


{marker linkspdf}{...}
{title:PDF文档链接}

        {mansection M-5 st_subview()Remarksandexamples:备注和示例}

{pstd}
上述部分未包含在此帮助文件中。


{marker remarks}{...}
{title:备注}

{p 4 4 2}
假设您需要对矩阵 {it:X} 和 {it:Y} 进行计算，这可能是视图。也许计算是
{cmd:invsym(}{it:X'X}{cmd:)*}{it:X}{cmd:'}{it:Y}。无论如何，您首先这样开始：

	{cmd:st_view(X, ., "v2 v3 v4", 0)}
	{cmd:st_view(Y, ., "v1 v7"   , 0)}

{p 4 4 2}
您已经遇到麻烦。 您明智地将第四个参数编码为 0，意味着排除缺失值，但您不知道制造 {cmd:X} 和 {cmd:Y} 时排除的是相同观察值。

{p 4 4 2}
如果您之前在数据集中创建了标记要用于计算的观测值的 {cmd:touse} 变量，则一种解决方案是

	{cmd:st_view(X, ., "v2 v3 v4", "touse")}
	{cmd:st_view(Y, ., "v1 v7"   , "touse")}

{p 4 4 2}
该解决方案是推荐的，但假设您没有这样做。另一种解决方案是

	{cmd:st_view(M, ., "v2 v3 v4 v1 v7", 0)}
	{cmd:st_subview(X, M, ., (1,2,3))}
	{cmd:st_subview(Y, M, ., (4,5))}

{p 4 4 2}
对 {cmd:st_view()} 的第一次调用将消除任何变量上缺失值的观察，而后两个 {cmd:st_subview()} 
调用将创建您想要的矩阵，从正确形成的 {cmd:M} 中获取它们。基本上，这两个 {cmd:st_subview()} 调用相当于

	{cmd:X = M[., (1,2,3)]}
	{cmd:Y = M[., (4,5)]}

{p 4 4 2}
但您不想这样编码，因为那样矩阵 {cmd:X} 和 {cmd:Y} 将包含数据的副本，而且您担心数据集可能很大。

{p 4 4 2}
作为第二个示例，假设您正在处理面板数据集，并在面板内从矩阵 {cmd:X} 中进行计算。您的代码看起来像

	{cmd:st_view(id, ., "panelid", 0)}
	{cmd:for (i=1; i<=rows(id); i=j+1) {c -(}}
		{cmd:j = endobs(id, i)}
		{cmd:st_view(X, (i,j), "v1 v2} ...{cmd:", 0)}
		...
	{cmd:{c )-}}

{p 4 4 2} 
您之前已将函数 {cmd:endobs()} 写为 

	{cmd}scalar endobs(vector id, scalar i)
	{
		scalar   j

		for (j=i+1; j<=rows(id); j++) {
			if (id[j]!=id[i]) return(j-1)
		}
		return(rows(id))
	}{txt}

{p 4 4 2}
无论如何，可能会有问题。变量 {cmd:panelid} 的缺失值可能与变量 
{cmd:v1}、{cmd:v2} 等的缺失值不对齐。结果可能造成观察和行号不一致，或者显示出一个组实际上所有数据都缺失。处理问题的正确方法是

	{cmd:st_view(M, ., "panelid v1 v2} ...{cmd:", 0)}

	{cmd:st_subview(id, M, ., 1)}
	{cmd:for (i=1; i<=rows(id); i=j+1) {c -(}}
		{cmd:j = endobs(id, i)}
		{cmd:st_subview(X, M, (i,j), (2\cols(M)))}
		...
	{cmd:{c )-}}


{marker conformability}{...}
{title:相容性}

    {cmd:st_subview(}{it:X}{cmd:,} {it:V}{cmd:,} {it:i}{cmd:,} {it:j}{cmd:)}:
	{it:输入:}
		{it:V}:  {it:r x c}
		{it:i}:  1 {it:x} 1, {it:n x} 1, 或 {it:n2 x} 2
		{it:j}:  1 {it:x} 1, 1 {it:x k}, 或 2 {it:x k2}
	{it:输出:}
		{it:X}:  {it:n x k}


{marker diagnostics}{...}
{title:诊断}

{p 4 4 2}
{cmd:st_subview(}{it:X}{cmd:,} 
{it:V}{cmd:,} 
{it:i}{cmd:,} 
{it:j}{cmd:)} 
如果 {it:i} 或 {it:j} 超出范围则会中止并产生错误。
{it:i} 和 {it:j} 指的是 {it:V} 的行和列号，而不是 Stata 数据集底层的观测和变量号。  


{marker source}{...}
{title:源代码}

{p 4 4 2}
函数是内置的。
{p_end}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <mf_st_subview.sthlp>}