{smcl}
{* *! version 1.2.5  15may2018}{...}
{vieweralsosee "[M-5] minindex()" "mansection M-5 minindex()"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[M-5] minmax()" "help mf_minmax_zh"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[M-4] Utility" "help m4_utility_zh"}{...}
{viewerjumpto "Syntax" "mf_minindex_zh##syntax"}{...}
{viewerjumpto "Description" "mf_minindex_zh##description"}{...}
{viewerjumpto "Links to PDF documentation" "mf_minindex_zh##linkspdf"}{...}
{viewerjumpto "Remarks" "mf_minindex_zh##remarks"}{...}
{viewerjumpto "Conformability" "mf_minindex_zh##conformability"}{...}
{viewerjumpto "Diagnostics" "mf_minindex_zh##diagnostics"}{...}
{viewerjumpto "Source code" "mf_minindex_zh##source"}
{help mf_minindex:English Version}
{hline}{...}
{p2colset 1 21 23 2}{...}
{p2col:{bf:[M-5] minindex()} {hline 2}}最小值和最大值的索引{p_end}
{p2col:}({mansection M-5 minindex():查看完整的 PDF 手册条目}){p_end}
{p2colreset}{...}


{marker syntax}{...}
{title:语法}

{p 8 12 2}
{it:void}
{cmd:minindex(}{it:real vector v}{cmd:,}
{it:real scalar k}{cmd:,}
{it:i}{cmd:,}
{it:w}{cmd:)}

{p 8 12 2}
{it:void}
{cmd:maxindex(}{it:real vector v}{cmd:,}
{it:real scalar k}{cmd:,}
{it:i}{cmd:,}
{it:w}{cmd:)}


{p 4 8 2}
结果将返回在 {it:i} 和 {it:w} 中。

{p 8 8 2}
{it:i} 将是一个 {it:real colvector}。

{p 8 8 2}
{it:w} 将是一个 {it:K x} 2 {it:real matrix}，{it:K} <= |{it:k}|。


{marker description}{...}
{title:描述}

{p 4 4 2}
{cmd:minindex(}{it:v}{cmd:,} {it:k}{cmd:,} {it:i}{cmd:,} {it:w}{cmd:)}
返回 {it:i} 和 {it:w} 中 {it:v} 的 {it:k} 个最小值的索引。

{p 4 4 2}
{cmd:maxindex(}{it:v}{cmd:,} {it:k}{cmd:,} {it:i}{cmd:,} {it:w}{cmd:)}
执行相同的操作，但返回 {it:k} 个最大值的索引。

{p 4 4 2}
{cmd:minindex()} 可以在 {it:k}<0 时调用；这时它等价于
{cmd:maxindex()}。

{p 4 4 2}
{cmd:maxindex()} 可以在 {it:k}<0 时调用；这时它等价于
{cmd:minindex()}。


{marker linkspdf}{...}
{title:PDF 文档链接}

        {mansection M-5 minindex()Remarksandexamples:备注和示例}

{pstd}
上述部分未包含在此帮助文件中。


{marker remarks}{...}
{title:备注}

{p 4 4 2}
备注分为以下几类：

	{help mf_minindex##remarks1:当 v 所有值唯一时函数的使用}
	{help mf_minindex##remarks2:当 v 有重复（相等）值时函数的使用}
	{help mf_minindex##remarks3:总结}

{p 4 4 2}
备注以 {cmd:minindex()} 的形式给出，但同样适用于 {cmd:maxindex()}。


{marker remarks1}{...}
{title:当 v 所有值唯一时函数的使用}

{p 4 4 2}
考虑 {cmd:v} = (3,1,5,7,6)。

{p 8 12 2}
1.  {cmd:minindex(v, 1, i, w)}
    返回 {cmd:i} = 2，这意味着 {cmd:v[2]} 是 {cmd:v} 中的最小值。

{p 8 12 2}
2.  {cmd:minindex(v, 2, i, w)}
    返回 {cmd:i} = (2, 1)'，这意味着 {cmd:v[2]} 是 {cmd:v} 的最小值，而 {cmd:v[1]} 是第二小值。

{p 8 12 2}
...

{p 8 12 2}
5.  {cmd:minindex(v, 5, i, w)} 返回 
    {cmd:i} = (2, 1, 3, 5, 4)'，这意味着 {cmd:v} 中的有序值为 
    {cmd:v[2]}, 
    {cmd:v[1]}, 
    {cmd:v[3]}, 
    {cmd:v[5]}，和 
    {cmd:v[4]}。 

{p 8 12 2}
6.  {cmd:minindex(v, 6, i, w)}, 
    {cmd:minindex(v, 7, i, w)}，等等， 
    返回与 (5) 相同，因为在一个五个元素的向量中只有五个最小值。

{p 4 4 2}
当 {cmd:v} 包含唯一值时，在 {cmd:w} 中返回的值是无关紧要的。

{p 8 10 2}
o{bind:  }在 (1) 中，{cmd:w} 将为 (1,1)。

{p 8 10 2}
o{bind:  }在 (2) 中，{cmd:w} 将为 (1,1 \ 2,1)。

{p 8 10 2}
o{bind:  }...

{p 8 10 2}
o{bind:  }在 (5) 中，{cmd:w} 将为 
(1,1 \ 2,1 \ 3,1 \ 4,1 \ 5,1)。  

{p 4 4 2}
{it:w} 的第二列记录了相等值的数量。  
由于 {it:v} 中的值是唯一的，因此 {it:w} 的第二列将为1。  
如果你对 {it:v} 中的值是否唯一不确定，可以编写

		{cmd:if (!allof(w[,2], 1)) {c -(}}
			{cmd:/*} {it:uniqueness assumption false} {cmd:*/}
		{cmd:{c )-}}


{marker remarks2}{...}
{title:当 v 有重复（相等）值时函数的使用}

{p 4 4 2}
考虑 {cmd:v} = (3, 2, 3, 2, 3, 3)。

{p 8 12 2}
1.  {cmd:minindex(v, 1, i, w)} 返回 {cmd:i} = (2, 4)'，
    这意味着存在一个最小值，并且它在 {cmd:v} 的两个元素中重复，即
    {cmd:v[2]} 和 {cmd:v[4]}。

{p 12 12 2}
    在这里，{cmd:w} 将为 (1, 2)，但你可以忽略它。  
    {cmd:i} 中有两个值对应于相同的最小值。

{p 12 12 2}
    当 {cmd:k==1} 时，{cmd:rows(i)} 等于 
    {cmd:v} 中对应于最小值的观察量数量，{cmd:w[1,2]} 也是如此。

{p 8 12 2}
2.  {cmd:minindex(v, 2, i, w)} 返回 {cmd:i} = (2, 4, 1, 3, 5, 6)' 
    和 {cmd:w} = (1,2 \ 3,4)。

{p 12 12 2}
    首先来看 {cmd:w}。 {cmd:w} 的第一行是 (1, 2)，这表示 
    {cmd:v} 的第一个最小值的索引从 {cmd:i[1]} 开始，并包含两个元素。  
    因此，第一个最小值的索引是 {cmd:i[1]} 和 {cmd:i[2]}（最小值为 {cmd:v[i[1]]} 和 
    {cmd:v[i[2]]}，当然是相等的）。

{p 12 12 2}
    {cmd:w} 的第二行是 (3, 4)，表示 
    {cmd:v} 的第二个最小值的索引从 {cmd:i[3]} 开始，并包含 
    四个元素：  {cmd:i[3]}, {cmd:i[4]}, {cmd:i[5]}, 和 {cmd:i[6]}
    （分别为 1, 3, 5 和 6）。

{p 12 12 2}
    总之，{cmd:rows(w)} 记录返回的最小值的数量。
    {cmd:w[m,1]} 记录 {cmd:i} 中第 {cmd:m} 个最小值的起始位置 
    （它从 {cmd:i[w[m,1]]} 开始）。  
    {cmd:w[m,2]} 记录相等值的总数量。  
    因此，你可以通过代码分别遍历最小值和相等值

        	{cmd:minindex(v, k, i, w)}

		for (m=1; m<=rows(w); m++) {
			for (j=w[m,1]; j<w[m,1]+w[m,2]; j++) {
			      /* i[j] {txt:{it:is the index in}} v {txt:{it:of an}} m{txt:{it:th minimum}} */
			}
		}{txt}
    
{p 8 12 2}
3.  {cmd:minindex(v, 3, i, w)}, 
    {cmd:minindex(v, 4, i, w)}，等等，返回与 (2) 相同，因为在 
    {cmd:v} = (3, 2, 3, 2, 3, 3) 中只有两个最小值。


{marker remarks3}{...}
{title:总结}

{p 4 4 2}
考虑 {cmd:minindex(}{it:v}{cmd:,} {it:k}{cmd:,} 
{it:i}{cmd:,} {it:w}{cmd:)}。 将返回


                {c TLC}        {c TRC}
		{c |} {it:i1}  {it:n1} {c |}      
	    {it:w} = {c |} {it:i2}  {it:n2} {c |}
                {c |} .   .  {c |}
                {c |} .   .  {c |} 
                {c BLC}        {c BRC}  {it:w}:  {it:K x} 2,  {it:K} <= |{it:k}|


                {c TLC}    {c TRC}                                      {c |}
                {c |} {it:j1} {c |} <- {it:i}[{it:i1}] 是第一个最小值的起始位置 {c |} 
                {c |} {it:j2} {c |}                                      {c |} 具有 {it:n1} 个值
            i = {c |} {it:j3} {c |}                                      {c |}
                {c |}    {c |}
                {c |} {it:j4} {c |} <- {it:i}[{it:i2}] 是第二个最小值的起始位置 {c |}
                {c |}  . {c |}                                      {c |} 具有 {it:n2} 个值
                {c |}    {c |}
                {c |}  . {c |}    等等。
                {c |}  . {c |}  
                {c BLC}    {c BRC}  {it:i}:  1 x {it:m},  {it:m} = {it:n1} + {it:n2} + ...


{p 4 4 2} 
{it:j1}, {it:j2}, ... 是 {it:v} 的索引。


{marker conformability}{...}
{title:兼容性}

{p 4 4 2}
    {cmd:minindex(}{it:v}{cmd:,} {it:k}{cmd:,} {it:i}{cmd:,} {it:w}{cmd:)}, 
    {cmd:maxindex(}{it:v}{cmd:,} {it:k}{cmd:,} {it:i}{cmd:,} {it:w}{cmd:)}:
{p_end}
	{it:input:}
		{it:v}:  {it:n x} 1  或  1 {it:x n}
		{it:k}:  1 {it:x} 1
	{it:output:}
		{it:i}:  {it:L x} 1, {it:L} >= {it:K}
		{it:w}:  {it:K x} 2, {it:K} <= |{it:k}|


{marker diagnostics}{...}
{title:诊断}

{p 4 4 2}
{cmd:minindex(}{it:v}{cmd:,} {it:k}{cmd:,} {it:i}{cmd:,} {it:w}{cmd:)}
和
{cmd:maxindex(}{it:v}{cmd:,} {it:k}{cmd:,} {it:i}{cmd:,} {it:w}{cmd:)}
如果 {it:i} 或 {it:w} 是一个视图，则会中止并显示错误。

{p 4 4 2}
在 {cmd:minindex(}{it:v}{cmd:,} {it:k}{cmd:,} {it:i}{cmd:,} {it:w}{cmd:)}
和
{cmd:maxindex(}{it:v}{cmd:,} {it:k}{cmd:,} {it:i}{cmd:,} {it:w}{cmd:)},
在获取最小值和最大值时会忽略 {it:v} 中的缺失值。

{p 4 4 2}
在上述示例中，我们将输入向量 {it:v} 表示为行向量。
它也可以是列向量；这没有区别。

{p 4 4 2}
在 {cmd:minindex(}{it:v}{cmd:,} {it:k}{cmd:,} {it:i}{cmd:,} {it:w}{cmd:)},
输入参数 {it:k} 指定要获得的最小值的数量。
{it:k} 可以为零。 如果 {it:k} 为负数，则获得 -{it:k} 的最大值。

{p 4 4 2}
类似地，
在 {cmd:maxindex(}{it:v}{cmd:,} {it:k}{cmd:,} {it:i}{cmd:,} {it:w}{cmd:)},
输入参数 {it:k} 指定要获得的最大值的数量。
{it:k} 可以为零。 如果 {it:k} 为负数，则获得 -{it:k} 的最小值。

{p 4 4 2}
{cmd:minindex()} 和 {cmd:maxindex()} 被设计用于在 {it:k} 
相对于 {cmd:length(}{it:v}{cmd:)} 较小时使用；否则，请参见 {cmd:order()}
在 {bf:{help mf_sort_zh:[M-5] sort()}} 中。


{marker source}{...}
{title:源代码}

{p 4 4 2}
{view maxindex.mata, adopath asis:maxindex.mata};
    {cmd:minindex()} 是内置的。
{p_end}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <mf_minindex.sthlp>}