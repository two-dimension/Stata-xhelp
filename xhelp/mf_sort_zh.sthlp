{smcl}
{* *! version 1.1.5  15may2018}{...}
{vieweralsosee "[M-5] sort()" "mansection M-5 sort()"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[M-5] invorder()" "help mf_invorder_zh"}{...}
{vieweralsosee "[M-5] uniqrows()" "help mf_uniqrows_zh"}{...}
{vieweralsosee "[M-5] ustrcompare()" "help mf_ustrcompare_zh"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[M-4] Manipulation" "help m4_manipulation_zh"}{...}
{viewerjumpto "Syntax" "mf_sort_zh##syntax"}{...}
{viewerjumpto "Description" "mf_sort_zh##description"}{...}
{viewerjumpto "Links to PDF documentation" "mf_sort_zh##linkspdf"}{...}
{viewerjumpto "Remarks" "mf_sort_zh##remarks"}{...}
{viewerjumpto "Conformability" "mf_sort_zh##conformability"}{...}
{viewerjumpto "Diagnostics" "mf_sort_zh##diagnostics"}{...}
{viewerjumpto "Source code" "mf_sort_zh##source"}
{help mf_sort:English Version}
{hline}{...}
{p2colset 1 17 19 2}{...}
{p2col:{bf:[M-5] sort()} {hline 2}}重新排列矩阵的行
{p_end}
{p2col:}({mansection M-5 sort():查看完整的 PDF 手册条目}){p_end}
{p2colreset}{...}


{marker syntax}{...}
{title:语法}

{p 8 16 2}
{it:转形矩阵}{bind: }
{cmd:sort(}{it:转形矩阵 X}{cmd:,} 
{it:实数行向量 idx}{cmd:)}

{p 8 16 2}
{it:void}{bind:               }
{cmd:_sort(}{it:转形矩阵 X}{cmd:,} 
{it:实数行向量 idx}{cmd:)}


{p 8 16 2}
{it:转形矩阵}{bind: }
{cmd:jumble(}{it:转形矩阵 X}{cmd:)}

{p 8 16 2}
{it:void}{bind:               }
{cmd:_jumble(}{it:转形矩阵 X}{cmd:)}


{p 8 16 2}
{it:实数列向量}{bind:      }
{cmd:order(}{it:转形矩阵 X}{cmd:,}
{it:实数行向量 idx}{cmd:)}

{p 8 16 2}
{it:实数列向量}{bind:      }
{cmd:unorder(}{it:实数标量 n}{cmd:)}


{p 8 16 2}
{it:void}{bind:               }
{cmd:_collate(}{it:转形矩阵 X}{cmd:,}
{it:实数列向量 p}{cmd:)}

{p 4 8 2}
其中

{p 8 12 2}
1.  {it:X} 不能是指针矩阵。

{p 8 12 2}
2.  {it:p} 必须是一个排列列向量，包含整数 1, 2, ..., {it:c} 的一个 1 {it:x} {it:c} 向量，顺序可以是任意的。


{marker description}{...}
{title:描述}

{p 4 4 2}
{cmd:sort(}{it:X}{cmd:,} {it:idx}{cmd:)} 返回 {it:X}，其行根据 {it:idx} 指定的列按升序或降序排列。例如，{cmd:sort(}{it:X}{cmd:, 1)} 按第一列对 {it:X} 进行排序；{cmd:sort(}{it:X}{cmd:, (1,2))} 按第一和第二列对 {it:X} 进行排序（意味着在第一列值相等的行中根据第二列进行排序）。通常，{it:i} 的排序键是列 abs({it:idx}[{it:i}])。如果 {it:idx}[{it:i}]>0，则顺序为升序；否则为降序。升序和降序是根据 {bf:{help mf_abs_zh:[M-5] abs()}}（元素的长度）定义的，适用于复杂数。

{p 4 4 2}
{cmd:_sort(}{it:X}{cmd:,} {it:idx}{cmd:)} 的功能与 {cmd:sort(}{it:X}{cmd:,} {it:idx}{cmd:)} 相同，不同之处在于 {it:X} 进行就地排序。


{p 4 4 2}
{cmd:jumble(}{it:X}{cmd:)} 返回 {it:X} 的行按随机顺序排列。例如，要洗牌一个编号为 1 到 52 的卡牌，可以使用 {cmd:jumble(1::52)}。有关设置随机数种子的更多信息，请参见 {cmd:rseed()} 在 {bf:{help mf_runiform_zh:[M-5] runiform()}} 中。

{p 4 4 2}
{cmd:_jumble(}{it:X}{cmd:)} 的功能与 {cmd:jumble(}{it:X}{cmd:)} 相同，不同之处在于 {it:X} 在原地洗牌。


{p 4 4 2}
{cmd:order(}{it:X}{cmd:,} {it:idx}{cmd:)} 返回排列向量——见 {bf:{help m1_permutation_zh:[M-1] Permutation}}——它将 {it:X} 按 {it:idx} 指定的列排列为升序（降序）。行排列向量是一个 1 {it:x} {it:c} 列向量，包含整数 1, 2, ..., {it:c} 的某种顺序。向量 (1\2\3)、(1\3\2)、(2\1\3)、(2\3\1)、(3\1\2)、和 (3\2\1) 是示例。行排列向量用于指定矩阵 {it:X} 的行应出现的顺序。如果 {it:p} 是行排列向量，{it:X}{cmd:[}{it:p}{cmd:, .]} 返回 {it:X}，其行按 {it:p} 的顺序排列； {it:p}=(3\2\1) 会反转 {it:X} 的行。{cmd:order(}{it:X}{cmd:,} {it:idx}) 返回将对 {it:X} 进行排序的行排列向量，事实上，{cmd:sort(}{it:X}{cmd:,} {it:idx}{cmd:)} 实际上是通过 {it:X}{cmd:[order(}{it:X}{cmd:,} {it:idx}{cmd:), .]} 实现的。

{p 4 4 2}
{cmd:unorder(}{it:n}{cmd:)} 返回一个 1 {it:x} {it:n} 排列向量，用于将行按随机顺序排列。随机数通过 {cmd:runiform()} 计算；有关设置随机数种子的更多信息，请参见 {cmd:rseed()} 在 {bf:{help mf_runiform_zh:[M-5] runiform()}} 中。{cmd:jumble()} 是通过 {cmd:unorder()} 实现的：{cmd:jumble(}{it:X}{cmd:)} 相当于 {it:X}{cmd:[unorder(rows(}{it:X}{cmd:)), .]}。


{p 4 4 2}
{cmd:_collate(}{it:X}{cmd:,} {it:p}{cmd:)} 相当于 {it:X} = {it:X}{cmd:[}{it:p}{cmd:, .]}；它改变了 {it:X} 的行顺序。{cmd:_collate()} 被 {cmd:_sort()} 和 {cmd:_jumble()} 使用，并且在将结果赋值回自身时，没有额外的内存需求。考虑 

	{it:X} = {it:X}{cmd:[}{it:p}{cmd:, .]}

{p 4 4 2}
在计算 {it:X}{cmd:[}{it:p}{cmd:, .]} 但尚未将结果赋值回 {it:X} 的那一瞬间，将存在两个 {it:X} 的副本。{cmd:_collate(}{it:X}{cmd:,} {it:p}{cmd:)} 可以避免这个问题。{cmd:_collate()} 并不是在所有情况下都可以替代下标；{cmd:_collate()} 需要 {it:p} 为排列向量。


{marker linkspdf}{...}
{title:PDF 文档链接}

        {mansection M-5 sort()Remarksandexamples:备注和示例}

{pstd}
上述部分未包含在本帮助文件中。


{marker remarks}{...}
{title:备注}

{p 4 4 2}
如果 {it:X} 是复杂的，排序是根据其元素的 {bf:{help mf_abs_zh:[M-5] abs()}} 定义的。

{p 4 4 2}
另见 {cmd:invorder()} 和 {cmd:revorder()} 在 {bf:{help mf_invorder_zh:[M-5] invorder()}} 中。令 {it:p} 为 {cmd:order()} 返回的排列向量：

		{it:p} = {cmd:order(}{it:X}{cmd:,} ...{cmd:)}

{p 4 4 2}
于是 
{it:X}{cmd:[}{it:p}{cmd:,.]}
为 {it:X} 的已排序行。  
{cmd:revorder()} 可用于反转排序顺序：
{it:X}{cmd:[revorder(}{it:p}{cmd:),.]}
为 {it:X} 的行在 {it:X}{cmd:[}{it:p}{cmd:,.]} 的反向顺序。
{cmd:invorder()} 提供逆变换：
如果 {it:Y} = 
{it:X}{cmd:[}{it:p}{cmd:,.]},
则 {it:X} = 
{it:Y}{cmd:[invorder(}{it:p}{cmd:),.]}.


{marker conformability}{...}
{title:兼容性}

{p 4 4 2}
{cmd:sort(}{it:X}{cmd:,} {it:idx}{cmd:)}, 
{cmd:jumble(}{it:X}{cmd:)}:
{p_end}
		{it:X}:  {it:r1 x c1}
	      {it:idx}:  {it: 1 x c2}, {it:c2} <= {it:c1}
	   {it:result}:  {it:r1 x c1}

{p 4 4 2}
{cmd:_sort(}{it:X}{cmd:,} {it:idx}{cmd:)}, 
{cmd:_jumble(}{it:X}{cmd:)}:
{p_end}
		{it:X}:  {it:r1 x c1}
	      {it:idx}:  {it: 1 x c2}, {it:c2} <= {it:c1}
	   {it:result}:  {it:void}; {it:X} 行顺序已修改


{p 4 4 2}
{cmd:order(}{it:X}{cmd:,} {it:idx}{cmd:)}:
{p_end}
		{it:X}:  {it:r1 x c1}
	      {it:idx}:  {it: 1 x c2}, {it:c2} <= {it:c1}
	   {it:result}:  {it:r1 x 1}

{p 4 4 2}
{cmd:unorder(}{it:n}{cmd:)}:
{p_end}
		{it:n}:  1 {it:x} 1
	   {it:result}:  {it:n x}  1

{p 4 4 2}
{cmd:_collate(}{it:X}{cmd:,} {it:p}{cmd:)}:
{p_end}
		{it:X}:  {it:r x c}
		{it:p}:  {it:r x 1}
	   {it:result}:  {it:void}; {it:X} 行顺序已修改


{marker diagnostics}{...}
{title:诊断信息}

{p 4 4 2}
{cmd:sort(}{it:X}{cmd:,} {it:idx}{cmd:)}
如果 {cmd:abs(}{it:idx}{cmd:)} 的任何元素小于 1 或大于 {cmd:rows(}{it:X}{cmd:)}，则中止并报告错误。

{p 4 4 2}
{cmd:_sort(}{it:X}{cmd:,} {it:idx}{cmd:)}
如果 {cmd:abs(}{it:idx}{cmd:)} 的任何元素小于 1 或大于 {cmd:rows(}{it:X}{cmd:)}, 
或者 {it:X} 是视图，则中止并报告错误。

{p 4 4 2}
{cmd:_jumble(}{it:X}{cmd:)}
如果 {it:X} 是视图，则中止并报告错误。

{p 4 4 2}
{cmd:order(}{it:X}{cmd:,} {it:idx}{cmd:)}
如果 {cmd:abs(}{it:idx}{cmd:)} 的任何元素小于 1 或大于 {cmd:rows(}{it:X}{cmd:)}，则中止并报告错误。

{p 4 4 2}
{cmd:unorder(}{it:n}{cmd:)} 如果 {it:n}<1 则中止并报告错误。

{p 4 4 2}
{cmd:_collate(}{it:X}{cmd:,} {it:p}{cmd:)}
如果 {it:p} 不是排列向量或如果 {it:X} 是视图，则中止并报告错误。


{marker source}{...}
{title:源代码}

{p 4 4 2}
{view sort.mata, adopath asis:sort.mata},
{view _sort.mata, adopath asis:_sort.mata},
{view jumble.mata, adopath asis:jumble.mata},
{view _jumble.mata, adopath asis:_jumble.mata},
{view unorder.mata, adopath asis:unorder.mata}

{pstd}
{cmd:order()} 和 {cmd:_collate()} 是内置的。
{p_end}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <mf_sort.sthlp>}