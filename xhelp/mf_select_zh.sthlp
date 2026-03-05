{smcl}
{* *! version 1.1.6  15may2018}{...}
{vieweralsosee "[M-5] select()" "mansection M-5 select()"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[M-5] st_subview()" "help mf_st_subview_zh"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[M-2] op_colon" "help m2_op_colon_zh"}{...}
{vieweralsosee "[M-2] Subscripts" "help m2_subscripts_zh"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[M-4] Utility" "help m4_utility_zh"}{...}
{viewerjumpto "Syntax" "mf_select_zh##syntax"}{...}
{viewerjumpto "Description" "mf_select_zh##description"}{...}
{viewerjumpto "Links to PDF documentation" "mf_select_zh##linkspdf"}{...}
{viewerjumpto "Remarks" "mf_select_zh##remarks"}{...}
{viewerjumpto "Conformability" "mf_select_zh##conformability"}{...}
{viewerjumpto "Diagnostics" "mf_select_zh##diagnostics"}{...}
{viewerjumpto "Source code" "mf_select_zh##source"}
{help mf_select:English Version}
{hline}{...}
{p2colset 1 19 21 2}{...}
{p2col:{bf:[M-5] select()} {hline 2}}选择行、列或索引{p_end}
{p2col:}({mansection M-5 select():查看完整的PDF手册条目}){p_end}
{p2colreset}{...}


{marker syntax}{...}
{title:语法}

{p 8 8 2}
{it:transmorphic matrix}
{cmd:select(}{it:transmorphic matrix X}{cmd:,}
{it:real vector v}{cmd:)}

{p 8 8 2}
{it:void}{bind:               }
{cmd:st_select(}{it:A}{cmd:,}
{it:transmorphic matrix X}{cmd:,}
{it:real vector v}{cmd:)}

{p 8 8 2}
{it:real vector}{bind:        }
{cmd:selectindex(}{it:real vector v}{cmd:)} 


{marker description}{...}
{title:说明}

{p 4 4 2}
{cmd:select(}{it:X}{cmd:,} {it:v}{cmd:)}
返回 {it:X} 

{p 8 12 2}
1. 省略 {it:v}{cmd:[}{it:i}{cmd:]==0} 的行（{it:v} 为列向量）
或者

{p 8 12 2}
2. 省略 {it:v}{cmd:[}{it:j}{cmd:]==0} 的列（{it:v} 为行向量）。

{p 4 4 2}
{cmd:st_select(}{it:A}{cmd:,} {it:X}{cmd:,} {it:v}{cmd:)}
执行相同的操作，结果存放在 {it:A} 中，
如果 {it:X} 是一个视图，{it:A} 也将是一个视图。

{p 4 4 2}
{cmd:selectindex(}{it:v}{bf:)} 返回 

{p 8 12 2}
1. 一个列索引的行向量 {it:j} 满足 {it:v}{bf:[}{it:j}{bf:]!=0}（{it:v} 为行向量）或者

{p 8 12 2}
2. 一个行索引的列向量 {it:i} 满足 {it:v}{bf:[}{it:i}{bf:]!=0}（{it:v} 为列向量）


{marker linkspdf}{...}
{title:PDF文档链接}

        {mansection M-5 select()Remarksandexamples:注释和示例}

{pstd}
以上部分未包含在此帮助文件中。


{marker remarks}{...}
{title:注释}

{p 4 4 2}
注释按以下标题呈现：

	{help mf_select##remarks1:示例}
	{help mf_select##remarks2:使用 st_select()}


{marker remarks1}{...}
{title:示例}

{p 4 8 2}
1.
要选择 5 {it:x c} 矩阵 {cmd:X} 的第 1、2 和 4 行，

		{cmd:submat = select(X, (1\1\0\1\0))}

{p 8 8 2}
参见 {bf:{help m2_subscripts_zh:[M-2] 下标}}获取另一种解决方案，
{cmd:submat = X[(1\2\4), .]}.


{p 4 8 2}
2.
要选择 5 {it:r x} 矩阵 {cmd:X} 的第 1、2 和 4 列，

		{cmd:submat = select(X, (1,1,0,1,0))}

{p 8 8 2}
参见 {bf:{help m2_subscripts_zh:[M-2] 下标}}获取另一种解决方案，
{cmd:submat = X[., (1,2,4)]}.


{p 4 8 2}
3.
要选择 {cmd:X} 的行，其中第一个元素为正，

		{cmd:submat = select(X, X[.,1]:>0)}


{p 4 8 2}
4.
要选择 {cmd:X} 的列，其中第一个元素为正，

		{cmd:submat = select(X, X[1,.]:>0)}


{p 4 8 2}
5.
要选择 {cmd:X} 的行，其中没有缺失值，

		{cmd:submat = select(X, rowmissing(X):==0)}


{p 4 8 2}
6.
要选择方阵 {cmd:X} 的行和列，其中对角线元素为正，

		{cmd:pos    = diagonal(X):>0}
		{cmd:submat = select(X, pos)}
		{cmd:submat = select(submat, pos')}

{p 8 8 2}
或者，相应地，

		{cmd:pos    = diagonal(X):>0}
		{cmd:submat = select(select(X, pos), pos')}


{p 4 8 2}
7.
要选择列索引，其中 {it:v}{bf:[}{it:j}{bf:]!=0，

	{cmd:: v}
               1   2   3   4   5
            {c TLC}{hline 21}{c TRC}
          1 {c |}  6   0   7   0   8  {c |}
            {c BLC}{hline 21}{c BRC}

	{cmd:: selectindex(v)}
               1   2   3
            {c TLC}{hline 13}{c TRC}
          1 {c |}  1   3   5  {c |}
            {c BLC}{hline 13}{c BRC}

{p 4 8 2}
8.
要选择行索引，其中 {it:v}{bf:[}{it:i}{bf:]!=0，

        {cmd:: w}
               1
            {c TLC}{hline 5}{c TRC}
          1 {c |}  0  {c |}
          2 {c |}  3  {c |}
          3 {c |}  0  {c |}
          4 {c |}  2  {c |}
	  5 {c |}  1  {c |}
            {c BLC}{hline 5}{c BRC}

	{cmd:: selectindex(w)}
               1
	    {c TLC}{hline 5}{c TRC}
          1 {c |}  2  {c |}
          2 {c |}  4  {c |}
          3 {c |}  5  {c |}
            {c BLC}{hline 5}{c BRC}


{marker remarks2}{...}
{title:使用 st_select()}

{p 4 4 2}
编码 

		{cmd:st_select(submat, X, v)}{col 60}(1)

{p 4 4 2}
生成的结果与编码

		{cmd:submat = st_select(X, v)}{col 60}(2)

{p 4 4 2}
的结果相同。区别在于结果的存储方式。如果 {it:X} 是一个视图（不一定是），则 (1) 会生成 {cmd:submat} 作为视图，或者说，子视图，而在 (2) 中，{cmd:submat} 始终是一个常规（非视图）矩阵。

{p 4 4 2}
当 {it:X} 是一个视图时，(1) 的执行速度比 (2) 快，并且生成的结果占用更少的内存。

{p 4 4 2}
参见 
{bf:{help mf_st_view_zh:[M-5] st_view()}} 以获取视图的描述。


{marker conformability}{...}
{title:符合性}

{p 4 4 2}
{cmd:select(}{it:X}{cmd:,} {it:v}{cmd:)}
{p_end}
		{it:X}:  {it:r1 x c1}
		{it:v}:  {it:r1 x 1}   或   {it:1 x c1}
	   {it:result}:  {it:r2 x c1}  或  {it:r1 x c2},   {...}
{it:r2} <= {it:r1}, {...}
{it:c2} <= {it:c1}

{p 4 4 2}
{cmd:st_select(}{it:A}{cmd:,} {it:X}{cmd:,} {it:v}{cmd:)}
{p_end}
	{it:输入:}
		{it:X}:  {it:r1 x c1}
		{it:v}:  {it:r1 x 1}   或   {it:1 x c1}
	{it:输出:}
		{it:A}:  {it:r2 x c1}  或  {it:r1 x c2},   {...}
{it:r2} <= {it:r1}, {...}
{it:c2} <= {it:c1}

{p 4 4 2}
{cmd:selectindex(}{it:v}{cmd:)}
{p_end}
		{it:v}:  {it:r1 x 1}   或   {it:1 x c1}
           {it:结果}:  {it:r2 x 1}   或   {it:1 x c2},   {...}
{it:r2} <= {it:r1}, {...}
{it:c2} <= {it:c1}


{marker diagnostics}{...}
{title:诊断}

{p 4 4 2}
无。


{marker source}{...}
{title:源代码}

{p 4 4 2}
函数是内置的。
{p_end}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <mf_select.sthlp>}