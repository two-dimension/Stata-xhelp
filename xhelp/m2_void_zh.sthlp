{smcl}
{* *! version 1.1.5  15may2018}{...}
{vieweralsosee "[M-2] void" "mansection M-2 void"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[M-2] Intro" "help m2_intro_zh"}{...}
{viewerjumpto "语法" "m2_void_zh##syntax"}{...}
{viewerjumpto "描述" "m2_void_zh##description"}{...}
{viewerjumpto "PDF 文档链接" "m2_void_zh##linkspdf"}{...}
{viewerjumpto "备注" "m2_void_zh##remarks"}
{help m2_void:English Version}
{hline}{...}
{p2colset 1 15 17 2}{...}
{p2col:{bf:[M-2] void} {hline 2}}空矩阵
{p_end}
{p2col:}({mansection M-2 void:查看完整 PDF 手册条目}){p_end}
{p2colreset}{...}


{marker syntax}{...}
{title:语法}

	{cmd:J(0, 0, .)}{col 30}0 {it:x} 0 实数矩阵
	{cmd:J(}{it:r}{cmd:, 0, .)}{col 30}{it:r x} 0 实数矩阵
	{cmd:J(0,} {it:c}{cmd:, .)}{col 30}0 {it:x c} 实数矩阵

	{cmd:J(0, 0, 1i)}{col 30}0 {it:x} 0 复数矩阵
	{cmd:J(}{it:r}{cmd:, 0, 1i)}{col 30}{it:r x} 0 复数矩阵
	{cmd:J(0,} {it:c}{cmd:, 1i)}{col 30}0 {it:x c} 复数矩阵

	{cmd:J(0, 0, "")}{col 30}0 {it:x} 0 字符串矩阵
	{cmd:J(}{it:r}{cmd:, 0, "")}{col 30}{it:r x} 0 字符串矩阵
	{cmd:J(0,} {it:c}{cmd:, "")}{col 30}0 {it:x c} 字符串矩阵

	{cmd:J(0, 0, NULL)}{col 30}0 {it:x} 0 指针矩阵
	{cmd:J(}{it:r}{cmd:, 0, NULL)}{col 30}{it:r x} 0 指针矩阵
	{cmd:J(0,} {it:c}{cmd:, NULL)}{col 30}0 {it:x c} 指针矩阵


{marker description}{...}
{title:描述}

{p 4 4 2}
Mata 允许 0 {it:x} 0、{it:r x} 0 和 0 {it:x c} 矩阵。这些矩阵称为 {it:void matrices}（空矩阵）。


{marker linkspdf}{...}
{title:PDF 文档链接}

        {mansection M-2 voidRemarksandexamples:备注和示例}

{pstd}
上述部分不包括在此帮助文件中。


{marker remarks}{...}
{title:备注}

{p 4 4 2}
备注在以下标题下呈现：

	{help m2_void##remarks1:空矩阵、向量、行向量和列向量}
	{help m2_void##remarks2:如何阅读一致性图表}


{marker remarks1}{...}
{title:空矩阵、向量、行向量和列向量}

{p 4 4 2}
空矩阵不包含任何内容，但它们有维度信息（它们是 0 {it:x} 0、{it:r x} 0 或 0 {it:x c}），并且具有 {it:eltype}（可以是 {cmd:real}、{cmd:complex}、{cmd:string} 或 {cmd:pointer}）：

{p 8 12 2}
    1.  如果矩阵是 0 {it:x} 0、{it:r x} 0 或 0 {it:x c}，则称为空矩阵。

{p 8 12 2}
    2.  如果向量是 0 {it:x} 1 或 1 {it:x} 0，则称为空向量。

{p 8 12 2}
    3.  如果列向量是 0 {it:x} 1，则称为空列向量。

{p 8 12 2}
    4.  如果行向量是 1 {it:x} 0，则称为空行向量。

{p 8 12 2}
    5.  标量不能是空的，因为根据定义，它是 1 {it:x} 1。

{p 4 4 2}
函数 {cmd:J(}{it:r}{cmd:,} {it:c}{cmd:,} {it:val}{cmd:)} 可以创建 {it:r} {it:x} {it:c} 矩阵，内容为 {it:val}；见 {bf:{help mf_j_zh:[M-5] J()}}。{cmd:J()} 可通过指定 {it:r} 和/或 {it:c} 为 0 来生成空矩阵。第三个参数的值无关紧要，但其 {it:eltype} 是重要的：

{p 8 12 2}
    1.  {cmd:J(0,0,.)} 创建一个实数 0 {it:x} 0 矩阵，{cmd:J(0,0,1)} 也是如此，任何实数第三个参数的 {cmd:J()} 也如此。

{p 8 12 2}
    2.  {cmd:J(0,0,1i)} 创建一个 0 {it:x} 0 复数矩阵，任何复数第三个参数的 {cmd:J()} 也是如此。

{p 8 12 2}
    3.  {cmd:J(0,0,"")} 创建 0 {it:x} 0 字符串矩阵，任何字符串第三个参数的 {cmd:J()} 也是如此。

{p 8 12 2}
    4.  {cmd:J(0,0,NULL)} 创建 0 {it:x} 0 指针矩阵，任何指针第三个参数的 {cmd:J()} 也是如此。

{p 4 4 2}
实际上，人们很少需要生成这样的矩阵，因为它们在极端情况下自然出现。同样，人们通常不需要编写特殊代码来处理空矩阵，因为这样的矩阵能够自行处理。当行或列数为零时，循环消失。


{marker remarks2}{...}
{title:如何阅读一致性图表}
{* index conformability}{...}

{p 4 4 2}
一般来说，函数和运算符如何处理空矩阵并不特别强调，甚至不提及这一事实。相反，相关信息埋藏在接近函数或运算符手册条目末尾的 {bf:一致性} 部分中。

{p 4 4 2}
例如，某个函数的一致性图表可能是：

	{cmd:somefunction(}{it:A}{cmd:,} {it:B}{cmd:,} {it:v}{cmd:)}:
		{it:A}:  {it:r x c}
		{it:B}:  {it:c x k}
		{it:v}:  {it:1 x k}  或  {it:k} {it:x} 1
	   {it:result}:  {it:r x k}

{p 4 4 2}
上述图表指出 {cmd:somefunction()} 如何处理空矩阵。{it:A} 必须是 {it:r x c}。该图表并未说明

		{it:A}:  {it:r x c}, {it:r}>0, {it:c}>0

{p 4 4 2}
这将是如果 {cmd:somefunction()} 不允许 {it:A} 为空时所说的。因此，{it:A} 可以是 0 {it:x} 0、0 {it:x} {it:c} 或 {it:r} {it:x} 0。

{p 4 4 2}
同样，只要满足 {cmd:rows(}{it:B}{cmd:)}={cmd:cols(}{it:A}{cmd:)}，则 {it:B} 也可以是空的。如果 {cmd:cols(}{it:B}{cmd:)}=0，则 {it:v} 也可以是空的。如果 {cmd:rows(}{it:A}{cmd:)}=0 或 {cmd:cols(}{it:B}{cmd:)}=0，则返回结果将是空的。

{p 4 4 2}
有趣的是，{cmd:somefunction()} 可以从空输入产生非空结果。例如，如果 {it:A} 是 5 {it:x} 0 和 {it:B} 是 0 {it:x} 3，则将生成一个 5 {it:x} 3 的结果。让人想知道这个 5 {it:x} 3 的结果会是什么。也许我们知道 {cmd:somefunction()} 的作用，答案会对我们很明显，但如果不知道，在接下来的 {bf:诊断} 部分会说明意外结果是什么。

{p 4 4 2}
作为一个真实的例子，请参见 {bf:{help mf_trace_zh:[M-5] trace()}}。{cmd:trace()} 将对 0 {it:x} 0 矩阵进行取迹，结果为 0。或者请参见乘法 ({cmd:*}) 在 {bf:{help m2_op_arith_zh:[M-2] op_arith}} 中。可以将一个 {it:k} {it:x} 0 矩阵与一个 0 {it:x} {it:m} 矩阵相乘，得到一个 {it:k} {it:x} {it:m} 的结果。矩阵将包含零。
{p_end}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <m2_void.sthlp>}