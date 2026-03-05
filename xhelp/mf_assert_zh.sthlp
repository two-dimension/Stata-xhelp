{smcl}
{* *! version 1.1.5  15may2018}{...}
{vieweralsosee "[M-5] assert()" "mansection M-5 assert()"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[M-4] Programming" "help m4_programming_zh"}{...}
{viewerjumpto "Syntax" "mf_assert_zh##syntax"}{...}
{viewerjumpto "Description" "mf_assert_zh##description"}{...}
{viewerjumpto "Links to PDF documentation" "mf_assert_zh##linkspdf"}{...}
{viewerjumpto "Remarks" "mf_assert_zh##remarks"}{...}
{viewerjumpto "Conformability" "mf_assert_zh##conformability"}{...}
{viewerjumpto "Diagnostics" "mf_assert_zh##diagnostics"}{...}
{viewerjumpto "Source code" "mf_assert_zh##source"}
{help mf_assert:English Version}
{hline}{...}
{p2colset 1 19 21 2}{...}
{p2col:{bf:[M-5] assert()} {hline 2}}如果为假则中止执行
{p_end}
{p2col:}({mansection M-5 assert():查看完整的PDF手册条目}){p_end}
{p2colreset}{...}


{marker syntax}{...}
{title:语法}

{p 8 8 2}
{it:void} 
{cmd:assert(}{it:实数标量 r}{cmd:)}

{p 8 8 2}
{it:void} 
{cmd:asserteq(}{it:变形矩阵 A}{cmd:,}
{it:变形矩阵 B}{cmd:)}


{marker description}{...}
{title:描述}

{p 4 4 2}
{cmd:assert(}{it:r}{cmd:)} 产生错误信息 
"{err: assertion is false}"，如果 {it:r}{cmd:==0} 则中止执行。

{p 4 4 2}
{cmd:asserteq(}{it:A}{cmd:,} {it:B}{cmd:)} 在逻辑上等同于 
{cmd:assert(}{it:A}{cmd:==}{it:B}{cmd:)}。 但是如果断言为假，
将提供不匹配数量的信息。


{marker linkspdf}{...}
{title:PDF文档链接}

        {mansection M-5 assert()Remarksandexamples:备注和示例}

{pstd}
以上部分未包括在此帮助文件中。


{marker remarks}{...}
{title:备注}

{p 4 4 2}
在复杂代码中，你知道某个计算必须产生大于0的结果，但你担心代码中可能存在错误：

	...
	{cmd:assert(n>0)}
	...

{p 4 4 2}
在另一个地方，你产生了矩阵 {cmd:A}，并知道 {cmd:A} 的每个元素
应该是正数或零：

	...
	{cmd:assert(all(A:>=0))}
	...

{p 4 4 2}
一旦你确信函数能正常工作，这些验证应该被删除。然而，在代码的第三部分，
如果行数 {it:r} 超过列数 {it:c}，问题会有所不同。在你需要使用的所有情况下，
{it:r} 将会小于 {it:c}，所以你对编写替代解决方案并不感兴趣：

	...
	{cmd:assert(rows(PROBLEM) < cols(PROBLEM))}
	...

{p 4 4 2}
把这个留着。


{marker conformability}{...}
{title:适应性}

    {cmd:assert(}{it:r}{cmd:)}:
		{it:r}:  1 {it:x} 1
	   {it:result}:  {it:void}

    {cmd:asserteq(}{it:A}{cmd:,} {it:B}{cmd:)}:
		{it:A}:  {it:r1 x c1}
		{it:B}:  {it:r2 x c2}
	   {it:result}:  {it:void}

	
{marker diagnostics}{...}
{title:诊断}

{p 4 4 2}
{cmd:assert(}{it:r}{cmd:)} 如果 {it:r}{cmd:==0} 则中止执行。

{p 4 4 2}
{cmd:asserteq(}{it:A}{cmd:,} {it:B}{cmd:)} 如果 
{it:A}!={it:B} 则中止执行。


{marker source}{...}
{title:源代码}

{p 4 4 2}
{view assert.mata, adopath asis:assert.mata},
{view asserteq.mata, adopath asis:asserteq.mata}
{p_end}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <mf_assert.sthlp>}