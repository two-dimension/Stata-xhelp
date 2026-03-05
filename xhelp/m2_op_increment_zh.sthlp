{smcl}
{* *! version 1.1.4  15may2018}{...}
{vieweralsosee "[M-2] op_increment" "mansection M-2 op_increment"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[M-2] exp" "help m2_exp_zh"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[M-2] Intro" "help m2_intro_zh"}{...}
{viewerjumpto "Syntax" "m2_op_increment_zh##syntax"}{...}
{viewerjumpto "Description" "m2_op_increment_zh##description"}{...}
{viewerjumpto "Links to PDF documentation" "m2_op_increment_zh##linkspdf"}{...}
{viewerjumpto "Remarks" "m2_op_increment_zh##remarks"}{...}
{viewerjumpto "Conformability" "m2_op_increment_zh##conformability"}{...}
{viewerjumpto "Diagnostics" "m2_op_increment_zh##diagnostics"}
{help m2_op_increment:English Version}
{hline}{...}
{p2colset 1 23 25 2}{...}
{p2col:{bf:[M-2] op_increment} {hline 2}}增量和减量运算符
{p_end}
{p2col:}({mansection M-2 op_increment:查看完整的 PDF 手册条目}){p_end}
{p2colreset}{...}

{marker syntax}{...}
{title:语法}

	{cmd:++}{it:i}                        前增量

	{cmd:--}{it:i}                        前减量

	{it:i}{cmd:++}                        后增量

	{it:i}{cmd:--}                        后减量

{p 4 4 2}
其中 {it:i} 必须是一个实标量。

{marker description}{...}
{title:描述}

{p 4 4 2}
{cmd:++}{it:i} 和 {it:i}{cmd:++}
使 {it:i} 增加 1；它们执行操作 {it:i}={it:i}+1。  
{cmd:++}{it:i} 在表达式计算之前执行操作，而 {it:i}{cmd:++} 在之后执行操作。

{p 4 4 2}
{cmd:--}{it:i} 和 {it:i}{cmd:--}
使 {it:i} 减少 1；它们执行操作 {it:i}={it:i}-1。  
{cmd:--}{it:i} 在表达式计算之前执行操作，而 {it:i}{cmd:--} 在之后执行操作。

{marker linkspdf}{...}
{title:PDF文档链接}

        {mansection M-2 op_incrementRemarksandexamples:备注和示例}

{pstd}
上述部分未包含在此帮助文件中。

{marker remarks}{...}
{title:备注}

{p 4 4 2}
这些运算符用于代码，例如 

	{cmd:x[i++] = 2}

	{cmd:x[--i] = 3}

	{cmd:for (i=0; i<100; i++) {c -(}}
		...
	{cmd:{c )-}}

	{cmd:if (++n > 10) {c -(}}
		...
	{cmd:{c )-}}

{p 4 4 2}
在这些表达式出现的地方，结果就好像当前值 {cmd:i} 被替代，并且 {cmd:i} 会在表达式计算之前或之后自增。例如，

	{cmd:x[i++] = 2}

{p 4 4 2} 等价于

	{cmd:x[i] = 2} {cmd:;} {cmd:i = i + 1}

{p 4 4 2}
而 

	{cmd:x[++i] = 3}

{p 4 4 2} 等价于

	{cmd:i = i + 1} {cmd:;} {cmd:x[i] = 3}

{p 4 4 2}
编码 

	{cmd:for (i=0; i<100; i++) {c -(}}
		...
	{cmd:{c )-}}

{p 4 4 2}
或

	{cmd:for (i=0; i<100; ++i) {c -(}}
		...
	{cmd:{c )-}}

{p 4 4 2} 等价于

	{cmd:for (i=0; i<100; i=i+1) {c -(}}
		...
	{cmd:{c )-}}

{p 4 4 2}
因为在其他默认空表达式中，递增的顺序是无关紧要的。

	{cmd:if (++n > 10) {c -(}}
		...
	{cmd:{c )-}}

{p 4 4 2} 等价于

	{cmd:n = n + 1}
	{cmd:if (n > 10) {c -(}}
		...
	{cmd:{c )-}}

{p 4 4 2}
而 

	{cmd:if (n++ > 10) {c -(}}
		...
	{cmd:{c )-}}

{p 4 4 2}
等价于

	{cmd:if (n > 10) {c -(}}
		{cmd:n = n + 1}
		...
	{cmd:{c )-}}
	{cmd:else    n = n + 1}

{p 4 4 2}
{cmd:++} 和 {cmd:--} 运算符仅适用于实标量，并且通常与索引或计数相关。它们使代码快速且易读。

{marker conformability}{...}
{title:兼容性}

	{cmd:++}{it:i}, {cmd:--}{it:i}, {it:i}{cmd:++}, 和 {it:i}{cmd:--}:
		{it:i}:  1 {it:x} 1
	   {it:result}:  1 {it:x} 1

{marker diagnostics}{...}
{title:诊断}

{p 4 4 2}
{cmd:++} 和 {cmd:--} 仅允许与实标量一起使用。也就是说， 
{cmd:++i} 或 {cmd:i++} 是有效的，前提是 {cmd:i} 是一个实标量，但 
{cmd:x[i,j]++} 是无效的。

{p 4 4 2}
如果应用于不是实标量的变量，{cmd:++} 和 {cmd:--} 会报错。

{p 4 4 2}
{cmd:++i}, {cmd:i++}, {cmd:--i}, 和 {cmd:i--} 应该是表达式中对 {cmd:i} 唯一的引用。不要编码，例如，

	{cmd:x[i++] = y[i]}

	{cmd:x[++i] = y[i]}

	{cmd:x[i] = y[i++]}

	{cmd:x[i] = y[++i]}

{p 4 4 2}
在上述表达式中 {cmd:i} 的值正式上是未定义的；无论其值是什么，您不能依赖编译器之前或之后版本获得该值。
相反，请编码 

	{cmd:i++ ; x[i] = y[i]}

{p 4 4 2}
或编码 

	{cmd:x[i] = y[i] ; i++}

{p 4 4 2}
以获得所需结果。

{p 4 4 2}
然而，编码 

	{cmd:x[i++] = y[j++]}

{p 4 4 2}
是完全合理的。
也就是说，可以在同一表达式中出现多个 {cmd:++} 和 {cmd:--} 运算符，但必须避免多个对 {cmd:++} 和 {cmd:--} 目标的引用。
{p_end}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <m2_op_increment.sthlp>}