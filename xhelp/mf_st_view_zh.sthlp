{smcl}
{* *! version 1.2.10  15may2018}{...}
{vieweralsosee "[M-5] st_view()" "mansection M-5 st_view()"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[M-5] select()" "help mf_select_zh"}{...}
{vieweralsosee "[M-5] st_data()" "help mf_st_data_zh"}{...}
{vieweralsosee "[M-5] st_subview()" "help mf_st_subview_zh"}{...}
{vieweralsosee "[M-5] st_viewvars()" "help mf_st_viewvars_zh"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[M-4] Stata" "help m4_stata_zh"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[D] putmata" "help putmata_zh"}{...}
{viewerjumpto "Syntax" "mf_st_view_zh##syntax"}{...}
{viewerjumpto "Description" "mf_st_view_zh##description"}{...}
{viewerjumpto "Links to PDF documentation" "mf_st_view_zh##linkspdf"}{...}
{viewerjumpto "Remarks" "mf_st_view_zh##remarks"}{...}
{viewerjumpto "Conformability" "mf_st_view_zh##conformability"}{...}
{viewerjumpto "Diagnostics" "mf_st_view_zh##diagnostics"}{...}
{viewerjumpto "Source code" "mf_st_view_zh##source"}{...}
{viewerjumpto "Reference" "mf_st_view_zh##reference"}
{help mf_st_view:English Version}
{hline}{...}
{p2colset 1 20 22 2}{...}
{p2col:{bf:[M-5] st_view()} {hline 2}}创建一个矩阵，以视图方式访问当前 Stata 数据集
{p_end}
{p2col:}({mansection M-5 st_view():查看完整的 PDF 手册条目}){p_end}
{p2colreset}{...}


{marker syntax}{...}
{title:语法}

{p 8 12 2}
{it:void}
{cmd:st_view(}{it:V}{cmd:,}
{it:real matrix i}{cmd:,}
{it:rowvector j})

{p 8 12 2}
{it:void}
{cmd:st_view(}{it:V}{cmd:,}
{it:real matrix i}{cmd:,}
{it:rowvector j}{cmd:,}
{it:scalar selectvar}{cmd:)}


{p 8 12 2}
{it:void}
{cmd:st_sview(}{it:V}{cmd:,}
{it:real matrix i}{cmd:,}
{it:rowvector j})

{p 8 12 2}
{it:void}
{cmd:st_sview(}{it:V}{cmd:,}
{it:real matrix i}{cmd:,}
{it:rowvector j}{cmd:,}
{it:scalar selectvar}{cmd:)}


{p 4 4 2}
其中

{p 7 11 2}
1.  {it:V} 的类型不重要；它会被替换。

{p 7 11 2}
2.  {it:i} 可以以与 {bf:{help mf_st_data_zh:st_data()}} 相同的方式指定。

{p 7 11 2}
3.  {it:j} 可以以与 {bf:{help mf_st_data_zh:st_data()}} 相同的方式指定。可以指定因子变量和 
    时间序列变量。

{p 7 11 2}
4.  {it:selectvar} 可以以与 {bf:{help mf_st_data_zh:st_data()}} 相同的方式指定。


{marker description}{...}
{title:描述}

{p 4 4 2}
{cmd:st_view()} 和 {cmd:st_sview()} 创建一个矩阵，以视图方式访问当前的 Stata 数据集。


{marker linkspdf}{...}
{title:PDF 文档链接}

        {mansection M-5 st_view()Remarksandexamples:备注和示例}

{pstd}
上述部分未包含在此帮助文件中。


{marker remarks}{...}
{title:备注}

{p 4 4 2}
备注按以下标题呈现：

	{help mf_st_view##remarks1:概述}
	{help mf_st_view##remarks2:视图的优缺点}
	{help mf_st_view##remarks3:何时不要使用视图}
	{help mf_st_view##remarks4:使用视图时的注意事项 1: 保持内存}
	{help mf_st_view##remarks5:使用视图时的注意事项 2: 赋值}
	{help mf_st_view##remarks6:效率}


{marker remarks1}{...}
{title:概述}

{p 4 4 2}
{cmd:st_view()} 的作用与 {cmd:st_data()} 相同 — 而 {cmd:st_sview()} 
的作用与 {cmd:st_sdata()} 相同 — 只不过是 
{cmd:st_view()} 和 {cmd:st_sview()} 创建的是 
对 Stata 数据集本身的矩阵视图，而不是返回一个包含底层值的矩阵副本。

{p 4 4 2}
要理解这一区别，可以考虑

	{cmd:X = st_data(., "mpg displ weight")}

{p 4 4 2}
和 

	{cmd:st_view(X, ., "mpg displ weight")}

{p 4 4 2}
两个命令都用相同的数据填充矩阵 {cmd:X}。然而，如果你在 
{cmd:st_data()} 设置后编写 

	{cmd:X[2,1] = 123}

{p 4 4 2}
你会改变矩阵 {cmd:X} 中的值，但 Stata 数据集则保持不变。在 
{cmd:st_view()} 设置后，改变矩阵中的值会导致 
第二个观测中的 {cmd:mpg} 的值变为 123。


{marker remarks2}{...}
{title:视图的优缺点}

{p 4 4 2}
视图使得更改数据集变得容易，根据你的目标，这可能是一个优势或劣势。

{p 4 4 2}
抛开这一点，视图通常比副本更好，因为 1) 它们设置的时间更短， 
2) 消耗的内存更少。内存节省可以是相当可观的。
考虑一个 100,000 观察的数据集，包含 30 个变量。编写 

	{cmd:X = st_data(., .)}

{p 4 4 2}
会产生一个大小为 24 MB 的新矩阵。与此同时，

	{cmd:st_view(X, ., .)}

{p 4 4 2}
的总存储需求大约只有 128 字节！

{p 4 4 2}
但也有代价；当你使用矩阵 {cmd:X} 时，访问单个元素所需的时间会更长。如果你要对 
{cmd:X} 进行大量计算，在更长的访问时间与初始设置时间的节省之间，还需要做很多计算，即便如此，较长的访问时间可能也是值得的，因为节省了内存。

{marker remarks3}{...}
{title:何时不要使用视图}

{p 4 4 2}
不要将视图作为标量的替代品。如果你打算逐条观察数据循环，并且 
对 {it:X} 的每一次使用都是在标量计算中，请使用 {help mf_st_data_zh:_st_data()}。对于这个问题没有比这更快的方法了。

{p 4 4 2}
抛开这一极端，视图相对于副本，其效率随着数据量的增大而增加；也就是说，对于小数据量，使用 {help mf_st_data_zh:st_data()} 更为高效，尤其是如果你要利用它进行计算密集型的计算时。

{marker remarks4}{...}
{title:使用视图时的注意事项 1: 保持内存}

{p 4 4 2}
如果你使用视图，可能是因为你关心内存，如果是这样，请小心避免创建视图的副本。视图的副本不是视图；它们是副本。例如，

	{cmd:st_view(V, ., .)}
	{cmd:Y = V}

{p 4 4 2}
看似无害的 {cmd:Y = V} 会创建整个数据集的副本，这意味着如果数据集有 100,000 个观测和 30 个变量， 
{cmd:Y} 现在消耗 24 MB。编写 {cmd:Y = V} 在某些情况下可能是理想的，但一般来说，最好是设置另一个视图。

{p 4 4 2}
同样，注意下标。考虑以下代码片段

	{cmd:st_view(V, ., .)}
	{cmd:for (i=1; i<=cols(V); i++) {c -(}}
		{cmd:sum = colsum(V[,i])}
		...
	{cmd:{c )-}}

{p 4 4 2}
上述代码中的问题是 {cmd:V[,i]}。这会创建一个包含 
{cmd:i} 列的值的新列向量。考虑到数据集有 100,000 个观测，这个新列向量需要 800k 的内存。
更好的代码应该是

	{cmd:for (i=1; i<=cols(V); i++) {c -(}}
		{cmd:st_view(v, ., i)}
		{cmd:sum = colsum(v)}
		...
	{cmd:{c )-}}


{p 4 4 2}
如果你需要 {cmd:V} 和 {cmd:v}，那没问题。你可以同时设置多个数据的视图。

{p 4 4 2}
同样，使用操作符时要小心。{cmd:X'X} 在创建转置的过程中会 
复制 {cmd:X}。使用诸如 {cmd:cross()} 这样的函数（见 {bf:{help mf_cross_zh:[M-5] cross()}}） 
设计为最小化内存使用。

{p 4 4 2}
对此问题不必过于担心。制作视图的列副本等同于在 Stata 程序中引入一个临时变量 — 这种情况是时常发生的。


{marker remarks5}{...}
{title:使用视图时的注意事项 2: 赋值}

{p 4 4 2}
赋值给视图并改变底层数据的能力可能既方便又危险，这取决于你的目标。
在进行此类赋值时，有两件事情需要注意。

{p 4 4 2}
第一点更多的是一个 Stata 问题，而非 Mata 问题。赋值不会导致提升。编写 

	{cmd:V[1,2] = 4059.125}

{p 4 4 2}
可能会在视图的第二个变量的第一个观测中存储 4059.125。或者，如果该第二个变量是 {cmd:int}，则存储的将是 4059；如果是 
{cmd:byte}，则将存储缺失值。

{p 4 4 2}
第二个注意事项是一个 Mata 问题。要重新分配视图的所有值，请编写

	{cmd:V[.,.] = }{it:matrix_expression}

{p 4 4 2}
不要编写

	{cmd:V = }{it:matrix_expression}

{p 4 4 2}
后者不会赋值到底层数据集，而是重新定义 {cmd:V} 为一个常规矩阵。

{p 4 4 2}
Mata 不允许在视图包含因子变量或时间序列变量（例如 {cmd:i.rep78} 或 {cmd:l.gnp}）时将视图用作赋值的目标。


{marker remarks6}{...}
{title:效率}

{p 4 4 2}
尽可能地， 
将 {cmd:st_view(}{it:V}{cmd:,} {it:i}{cmd:,} {it:j}{cmd:)} 
和 
{cmd:st_sview(}{it:V}{cmd:,} {it:i}{cmd:,} {it:j}{cmd:)} 的参数 {it:i} 
指定为 {cmd:.}（缺失值）或行向量范围（例如， 
{cmd:(}{it:i1}{cmd:,}{it:i2}{cmd:)）而不是列向量列表。  

{p 4 4 2}
在 {cmd:st_view()} 和
{cmd:st_sview()} 函数中使用相同变量的循环内，尽量将参数 {it:j} 
指定为真实的行向量，而不是字符串 
(前提是视图不包含因子变量或时间序列变量)。这可以防止 Mata 一遍又一遍地查找相同的名称。


{marker conformability}{...}
{title:符合性}

{p 4 4 2}
{cmd:st_view(}{it:V}{cmd:,} {it:i}{cmd:,} {it:j}{cmd:)}, 
{cmd:st_sview(}{it:V}{cmd:,} {it:i}{cmd:,} {it:j}{cmd:)}:
{p_end}
	{it:输入:}
		{it:i}:  {it:n x} 1  或  {it:n2 x} 2
		{it:j}:  1 {it:x k}  或   1 {it:x} 1 包含 {it:k} 个元素
	{it:输出:}
		{it:V}:  {it:n x k}

{p 4 4 2}
{cmd:st_view(}{it:V}{cmd:,} {it:i}{cmd:,} {it:j}{cmd:,} {it:selectvar}{cmd:)}, 
{cmd:st_sview(}{it:V}{cmd:,} {it:i}{cmd:,} {it:j}{cmd:,} {it:selectvar}{cmd:)}:
{p_end}
	{it:输入:}
		{it:i}:  {it:n x} 1  或  {it:n2 x} 2
		{it:j}:  1 {it:x k}  或   1 {it:x} 1 包含 {it:k} 个元素
		{it:selectvar}:  1 {it:x} 1
	{it:输出:}
		{it:V}:  ({it:n}-{it:e}) {it:x k}，其中 {it:e} 表示被 {it:selectvar} 排除的观察数量


{marker diagnostics}{...}
{title:诊断信息}

{p 4 4 2}
{cmd:st_view(}{it:i}{cmd:,} {it:j}[{cmd:,} {it:selectvar}]{cmd:)}
和
{cmd:st_sview(}{it:i}{cmd:,} {it:j}[{cmd:,} {it:selectvar}]{cmd:)}
如果 {it:i} 的任何元素超出观察范围，或者在 {it:j} 中记录的变量名或索引未找到，则会中止并报错。
变量名的缩写是允许的。如果你不希望这样并且没有指定因子变量或时间序列变量，请使用
{cmd:st_varindex()}（见 {bf:{help mf_st_varindex_zh:[M-5] st_varindex()}}）将变量名转换为变量索引。

{p 4 4 2}
{cmd:st_view()} 和 {cmd:st_sview()}
如果 {it:i} 的任何元素超出范围，会中止并报错，如在 
{it:{help mf_st_data##remarks3:使用 st_data() 和 st_sdata() 进行观察下标的详细信息}} 
中所述，见 {bf:{help mf_st_data_zh:[M-5] st_data()}}。

{p 4 4 2}
某些函数不允许将视图作为参数。如果 
{cmd:example(}{it:X}{cmd:)} 不允许视图，你仍然可以通过编写

		... {cmd:example(X=V)} ...

{p 4 4 2}
来使用它，因为这将创建视图 {cmd:V} 的副本到 {cmd:X} 中。大多数不允许视图的函数在它们的 {hi:诊断信息} 部分提到这一点，但有些没有，因为意想不到的是有人希望在那种情况下使用视图。如果函数不允许视图，你将在追溯日志中看到：

                : {cmd:myfunction(}...}{cmd:)}
                           {err}example():  3103  找到视图，而要求的是数组
                             mysub():     -  函数返回错误
                        myfunction():     -  函数返回错误
                             <istmt>:     -  函数返回错误{txt}
                r(3103);

{p 4 4 2}
以上内容表明函数 {cmd:example()} 不允许视图。


{marker source}{...}
{title:源代码}

{p 4 4 2}
函数是内置的。
{p_end}


{marker reference}{...}
{title:参考文献}

{phang}
Gould, W. W. 2005.
{browse "http://www.stata-journal.com/sjpdf.html?articlenum=pr0019":Mata 事项: 使用数据视图}。
{it:Stata Journal} 5: 567-573.
{p_end}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <mf_st_view.sthlp>}