{smcl}
{* *! version 1.2.8  15may2018}{...}
{vieweralsosee "[M-5] st_data()" "mansection M-5 st_data()"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[M-5] st_store()" "help mf_st_store_zh"}{...}
{vieweralsosee "[M-5] st_view()" "help mf_st_view_zh"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[M-4] Stata" "help m4_stata_zh"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[D] putmata" "help putmata_zh"}{...}
{viewerjumpto "语法" "mf_st_data_zh##syntax"}{...}
{viewerjumpto "说明" "mf_st_data_zh##description"}{...}
{viewerjumpto "PDF 文档链接" "mf_st_data_zh##linkspdf"}{...}
{viewerjumpto "备注" "mf_st_data_zh##remarks"}{...}
{viewerjumpto "兼容性" "mf_st_data_zh##conformability"}{...}
{viewerjumpto "诊断" "mf_st_data_zh##diagnostics"}{...}
{viewerjumpto "源代码" "mf_st_data_zh##source"}
{help mf_st_data:English Version}
{hline}{...}
{p2colset 1 20 22 2}{...}
{p2col:{bf:[M-5] st_data()} {hline 2}}加载当前 Stata 数据集的副本
{p_end}
{p2col:}({mansection M-5 st_data():查看完整的 PDF 手册条目}){p_end}
{p2colreset}{...}


{marker syntax}{...}
{title:语法}

{col 8}{it:实数标量}{...}
{col 22}{cmd:_st_data(}{...}
{it:实数标量 i}{cmd:,} {...}
{it:实数标量 j}{cmd:)}


{col 8}{it:实数矩阵}{...}
{col 23}{cmd:st_data(}{...}
{it:实数矩阵 i}{cmd:,} {...}
{it:行向量 j}{cmd:)}{...}
{right:(1,2)}

{col 8}{it:实数矩阵}{...}
{col 23}{cmd:st_data(}{...}
{it:实数矩阵 i}{cmd:,} {...}
{it:行向量 j}{cmd:,} {...}
{it:标量 selectvar}{...}
{cmd:)}{...}
{right:(1,2,3)}


{col 8}{it:字符串标量}{...}
{col 23}{cmd:_st_sdata(}{...}
{it:实数标量 i}{cmd:,} {...}
{it:实数标量 j}{...}
{cmd:)}


{col 8}{it:字符串矩阵}{...}
{col 23}{cmd:st_sdata(}{...}
{it:实数矩阵 i}{cmd:,} {...}
{it:行向量 j}){...}
{right:(1,2)}

{col 8}{it:字符串矩阵}{...}
{col 23}{cmd:st_sdata(}{...}
{it:实数矩阵 i}{cmd:,} {...}
{it:行向量 j}{cmd:,} {...}
{it:标量 selectvar}{cmd:)}{...}
{right:(1,2,3)}


{p 4 4 2}
其中

{p 7 11 2}
1.  {it:i} 可以指定为 1 {it:x} 1 标量， 
    包含缺失值的 1 {it:x} 1 标量， 
    观察编号的列向量， 
    指定观察范围的行向量， 
    或指定两者的 {it:k x} 2 矩阵。

{p 14 18 2}
a.  {cmd:st_data(1, 2)} 返回第二个变量的第一个观察值。

{p 14 18 2}
b.  {cmd:st_data(., 2)} 返回第二个变量的所有观察值。

{p 14 18 2}
c.  {cmd:st_data((1\2\5), 2)} 返回第二个变量的观察值 1、2 和 5。

{p 14 18 2}
d.  {cmd:st_data((1,5), 2)} 返回第二个变量的观察值 1 到 5。

{p 14 18 2}
e.  {cmd:st_data((1,5\7,9), 2)} 返回第二个变量的观察值 1 到 5 和 7 到 9。

{p 11 11 2}
当指定范围时，范围的任何元素 
({it:i1},{it:i2}) 可以指定为提供零个观察值
如果 {it:i2}={it:i1}-1。

{p 7 11 2}
2.  {it:j} 可以指定为实数行向量，或作为字符串标量或字符串行向量。

{p 14 18 2}
a.  {cmd:st_data(., .)} 返回 Stata 数据集的所有变量的所有观察值。

{p 14 18 2}
b.  {cmd:st_data(., 1)} 返回第一个变量的所有观察值。

{p 14 18 2}
c.  {cmd:st_data(., (3,1,9))} 返回所有观察值的第三、第一个和第九个变量的值。

{p 14 18 2}
d.  {cmd:st_data(., ("mpg", "weight"))} 返回变量 {cmd:mpg} 和 {cmd:weight} 的所有观察值的值。

{p 14 18 2}
e.  {cmd:st_data(., "mpg weight")} 与上述 d 相同。

{p 14 18 2}
f.  {cmd:st_data(., ("gnp", "l.gnp"))} 返回变量 {cmd:gnp} 和 {cmd:gnp} 的滞后值的所有观察值。

{p 14 18 2}
g.  {cmd:st_data(., "gnp l.gnp")} 与上述 f 相同。

{p 14 18 2}
h.  {cmd:st_data(., "mpg i.rep78")} 返回变量 {cmd:mpg} 和与 {cmd:i.rep78} 相关的 5 个伪变量的值。由于我们设想 {cmd:auto.dta} 在内存中，所以有 5 个伪变量；实际数量取决于指定样本中变量的取值。
    只有用字符串标量可以指定因子变量；指定 {cmd:("mpg", "i.rep78")} 将无效。

{p 7 11 2}
3.  {it:selectvar} 可以指定为实数或字符串。
    选择 {it:selectvar}!=0 的观察值。
    如果 {it:selectvar} 为实数，则被解释为变量编号。如果
    为字符串，则 {it:selectvar} 应包含 Stata 变量的名称。

{p 11 11 2}
    将 {it:selectvar} 指定为 {cmd:""} 或缺失 ({cmd:.})
    的结果与不指定 {it:selectvar} 相同；没有观察值被排除。

{p 11 11 2}
    将 {it:selectvar} 指定为 {cmd:0} 意味着要排除 
    指定的 {it:j} 变量中具有缺失值的观察值。


{marker description}{...}
{title:说明}

{p 4 4 2}
{cmd:_st_data(}{it:i}, {it:j}{cmd:)} 返回第 {it:i} 个观察值的数值
的第 {it:j} 个 Stata 变量。  
观察值编号为 1 到 
{bf:{help mf_st_nvar_zh:st_nobs()}}。
变量编号为 1 到 
{bf:{help mf_st_nvar_zh:st_nvar()}}。  

{p 4 4 2}
{cmd:st_data(}{it:i}, {it:j}{cmd:)} 类似于 {cmd:_st_data(}{it:i},
{it:j}{cmd:)}，但不同之处在于

{p 6 10 2}
1.  {it:i} 可以指定为向量或矩阵，以同时获取多个 
观察值，

{p 6 10 2}
2.  {it:j} 可以使用名称或索引指定（索引更快），并且

{p 6 10 2}
3.  {it:j} 可以指定以同时获取多个变量。

{p 4 4 2}
最后的效果是 {cmd:st_data()} 可以返回一个标量（一个观察值中的一个变量的值），一个行向量（一个观察值中多个变量的值），一个列向量（多个观察值中一个变量的值），或者一个矩阵（多个观察值中多个变量的值）。

{p 4 4 2}
{cmd:st_data(}{it:i}, {it:j}, {it:selectvar}{cmd:)} 的功能类似于 
{cmd:st_data(}{it:i}, {it:j}{cmd:)}，但仅返回 {it:selectvar}!=0 的观察值。

{p 4 4 2}
{cmd:_st_sdata()} 和 {cmd:st_sdata()} 是 
{cmd:_st_data()} 和 {cmd:st_data()} 的字符串变体。
{cmd:_st_data()} 和 {cmd:st_data()} 用于数值变量； 
使用字符串变量时，它们返回缺失值 ({cmd:.})。
{cmd:_st_sdata()} 和 {cmd:st_sdata()} 用于字符串变量； 
使用数值变量时，它们返回空字符串 ({cmd:""})。


{marker linkspdf}{...}
{title:PDF 文档链接}

        {mansection M-5 st_data()Remarksandexamples:备注和示例}

{pstd}
以上部分不包括在此帮助文件中。


{marker remarks}{...}
{title:备注}

{p 4 4 2}
备注按以下标题呈现：

	{help mf_st_data##remarks1:_st_data() 和 _st_sdata() 的描述}
	{help mf_st_data##remarks2:st_data() 和 st_sdata() 的描述}
	{help mf_st_data##remarks3:使用 st_data() 和 st_sdata() 的观察子脚本的细节}


{marker remarks1}{...}
{title:_st_data() 和 _st_sdata() 的描述}

{p 4 4 2}
{cmd:_st_data()} 返回一个观察值中一个变量的值。您通过它们的编号引用变量和观察值。 Stata 数据集中的第一个变量是 1；第一个观察值是 1。

	{cmd:_st_data(1, 1)}            第一个观察值、 第一个变量的值
	{cmd:_st_data(1, 2)}            第一个观察值、 第二个变量的值
	{cmd:_st_data(2, 1)}            第二个观察值、 第一个变量的值

{p 4 4 2}
{cmd:_st_sdata()} 的工作方式相同。 {cmd:_st_data()} 用于
数值变量，而 {cmd:_st_sdata()} 用于字符串变量。

{p 4 4 2}
{cmd:_st_data()} 和 {cmd:_st_sdata()} 是获取 
一个观察值中变量值的最快方式。


{marker remarks2}{...}
{title:st_data() 和 st_sdata() 的描述}

{p 4 4 2}
{cmd:st_data()} 可以像 {cmd:_st_data()} 一样使用，并以这种方式使用时，
它会产生相同的结果。  

{p 4 4 2}
然而，变量可以通过名称或号码引用：

	{cmd:st_data(1, 1)}             第一个观察值、 第一个变量的值
	{cmd:st_data(1, 2)}             第一个观察值、 第二个变量的值
	{cmd:st_data(2, 1)}             第二个观察值、 第一个变量的值

        {cmd:st_data(1, "mpg")}         第一个观察值、 变量 {cmd:mpg} 的值
        {cmd:st_data(2, "mpg")}         第二个观察值、 变量 {cmd:mpg} 的值

{p 4 4 2}
此外，您可以指定多个变量：

	{cmd:st_data(2, (1,2,3))}       第二个观察值、 变量 1、 2 和 3 的值

	{cmd:st_data(2, ("mpg","weight","displ"))}
				  第二个观察值、 变量 {cmd:mpg}、 {cmd:weight} 和 {cmd:displ} 的值

	{cmd:st_data(2, "mpg weight displ")}
				  （与前面的相同）

{p 4 4 2}
以这种方式使用时，{cmd:st_data()} 返回一个行向量。

{p 4 4 2}
同样，您可以获取多个观察值：

       {cmd:st_data((1\2\3), 10)}       第 1、 2 和 3 个观察值， 第 10 个变量的值

       {cmd:st_data((1,5), 10)}         第 1 到 5 个观察值， 第 10 个变量的值

       {cmd:st_data((1,5)\(7,9), 10)}   第 1 到 5 和 7 到 9 个观察值，
                                  第 10 个变量的值

{p 4 4 2}
{cmd:st_sdata()} 的工作方式与 {cmd:st_data()} 相同。


{marker remarks3}{...}
{title:使用 st_data() 和 st_sdata() 的观察子脚本的细节}

{p 4 8 2}
1.  {it:i} 可以指定为一个标量：{break}
    返回指定的单个观察值。
    {it:i} 必须在 1 和 {cmd:st_nobs()} 之间；见
    {help mf_st_nvar_zh:[M-5] st_nvar()}。

{p 4 8 2}
2.  {it:i} 可以指定为包含缺失值的标量：{break}
    返回所有观察值。

{p 4 8 2}
3.  {it:i} 可以指定为列向量：{break}
    返回指定的观察值。 {it:i} 的每个元素 
    必须在 1 和 {cmd:st_nobs()} 之间，或者可以是缺失值。缺失值 
    被解释为 {cmd:st_nobs()}。

{p 4 8 2}
4.  {it:i} 可以指定为 1 {it:x} 2 行向量：{break}
    返回指定范围的观察值；
    {cmd:(}{it:c1}{cmd:,}{it:c2}{cmd:)} 返回 {it:c2}-{it:c1}+1 
    的观察值 {it:c1} 到 {it:c2}。

{p 8 8 2}
    {it:c2}-{it:c1}+1 必须计算为大于或等于 0 的数字。
    一般来说，{it:c1} 和 {it:c2} 必须在 1 和 {cmd:st_nobs()} 之间，但
    如果 {it:c2}-{it:c1}+1=0，则 {it:c1} 可以在 1 和
    {cmd:st_nobs()}+1 之间， {it:c2} 可以在 0 和 {cmd:st_nobs()} 之间。
    不管怎样，{it:c1}==. 或 {it:c2==.} 被解释为 {cmd:st_nobs()}。

{p 4 8 2}
5.  {it:i} 可以指定为 {it:k x} 2 矩阵：{break}
    {cmd:((1,5)\(7,7)\(20,30))} 指定观察值 1 到 5、7、 
    以及 20 到 30。


{marker conformability}{...}
{title:兼容性}

{p 4 8 2}
{cmd:_st_data(}{it:i}, {it:j}{cmd:)},
{cmd:_st_sdata(}{it:i}, {it:j}{cmd:)}:
{p_end}
		{it:i}:  1 {it:x} 1
		{it:j}:  1 {it:x} 1
	   {it:result}:  1 {it:x} 1

{p 4 8 2}
{cmd:st_data(}{it:i}, {it:j}{cmd:)},
{cmd:st_sdata(}{it:i}, {it:j}{cmd:)}:
{p_end}
		{it:i}:  {it:n x} 1  或  {it:n2 x} 2
		{it:j}:  1 {it:x k}  或   1 {it:x} 1，扩展时包含 {it:k} 个元素
	   {it:result}:  {it:n x k}

{p 4 8 2}
{cmd:st_data(}{it:i}, {it:j}, {it:selectvar}{cmd:)},
{cmd:st_sdata(}{it:i}, {it:j}, {it:selectvar}{cmd:)}:
{p_end}
		{it:i}:  {it:n x} 1  或  {it:n2 x} 2
		{it:j}:  1 {it:x k}  或   1 {it:x} 1，扩展时包含 {it:k} 个元素
	{it:selectvar}:  1 {it:x} 1
{p 11 30 2}
        {it:result}:  ({it:n}-{it:e}) {it:x k}，其中 {it:e} 是由 {it:selectvar} 排除的观察值数量


{marker diagnostics}{...}
{title:诊断}

{p 4 4 2}
{cmd:_st_data(}{it:i}, {it:j}{cmd:)} 
如果 {it:i} 
或 {it:j} 超出范围，返回缺失值 ({cmd:.})；不会中止并报告错误。

{p 4 4 2}
{cmd:_st_sdata(}{it:i}, {it:j}{cmd:)} 如果 {it:i} 
或 {it:j} 超出范围，返回 ""；不会中止并报告错误。

{p 4 4 2}
{cmd:st_data(}{it:i}{cmd:,} {it:j}{cmd:)} 和
{cmd:st_sdata(}{it:i}{cmd:,} {it:j}{cmd:)} 
如果 {it:i} 或 {it:j} 的任何元素超出范围则会中止并报告错误。
{it:j} 可以指定为变量名称
或变量索引。如果指定名称， 
允许使用缩写。如果您不想允许缩写
且没有指定因子变量或时间序列变量，
请使用 {cmd:st_varindex()}（见 {bf:{help mf_st_varindex_zh:[M-5] st_varindex()}})
将变量名称转换为变量索引）。


{marker source}{...}
{title:源代码}

{p 4 4 2}
函数是内置的。
{p_end}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <mf_st_data.sthlp>}