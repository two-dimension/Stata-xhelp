{smcl}
{* *! version 1.1.4  15may2018}{...}
{vieweralsosee "[M-2] op_logical" "mansection M-2 op_logical"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[M-2] exp" "help m2_exp_zh"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[M-2] Intro" "help m2_intro_zh"}{...}
{viewerjumpto "语法" "m2_op_logical_zh##syntax"}{...}
{viewerjumpto "说明" "m2_op_logical_zh##description"}{...}
{viewerjumpto "PDF文档链接" "m2_op_logical_zh##linkspdf"}{...}
{viewerjumpto "备注" "m2_op_logical_zh##remarks"}{...}
{viewerjumpto "适应性" "m2_op_logical_zh##conformability"}{...}
{viewerjumpto "诊断" "m2_op_logical_zh##diagnostics"}
{help m2_op_logical:English Version}
{hline}{...}
{p2colset 1 21 23 2}{...}
{p2col:{bf:[M-2] op_logical} {hline 2}}逻辑运算符
{p_end}
{p2col:}({mansection M-2 op_logical:查看完整的PDF手册条目}){p_end}
{p2colreset}{...}


{marker syntax}{...}
{title:语法}

	{it:a} {cmd:==} {it:b}          如果 {it:a} 等于 {it:b} 则为真
	{it:a} {cmd:!=} {it:b}          如果 {it:a} 不等于 {it:b} 则为真


	{it:a} {cmd:>}  {it:b}          如果 {it:a} 大于 {it:b} 则为真
	{it:a} {cmd:>=} {it:b}          如果 {it:a} 大于或等于 {it:b} 则为真
	{it:a} {cmd:<}  {it:b}          如果 {it:a} 小于 {it:b} 则为真
	{it:a} {cmd:<=} {it:b}          如果 {it:a} 小于或等于 {it:b} 则为真

	{cmd:!}{it:a}              逻辑否定；如果 {it:a}==0 则为真，否则为假

	{it:a} {cmd:&} {it:b}           如果 {it:a}!=0 并且 {it:b}!=0 则为真
        {it:a} {cmd:|} {it:b}           如果 {it:a}!=0 或者 {it:b}!=0 则为真

	{it:a} {cmd:&&} {it:b}          同义词 {it:a} {cmd:&} {it:b}
        {it:a} {cmd:||} {it:b}          同义词 {it:a} {cmd:|} {it:b}


{marker description}{...}
{title:说明}

{p 4 4 2}
上述运算符执行逻辑比较，运算符 {cmd:!} 执行逻辑否定。所有运算符的结果为 1 或 0，表示真或假。


{marker linkspdf}{...}
{title:PDF文档链接}

        {mansection M-2 op_logicalRemarksandexamples:备注和示例}

{pstd}
上述部分未包含在此帮助文件中。


{marker remarks}{...}
{title:备注}

{p 4 4 2}
备注在以下标题下呈现：

	{help m2_op_logical##remarks1:介绍}
	{help m2_op_logical##remarks2:与指针一起使用逻辑运算符}


{marker remarks1}{...}
{title:介绍}

{p 4 4 2}
上述运算符在与标量一起使用时的工作方式符合预期，并且比较运算符和非运算符已被推广到与矩阵一起使用。

{p 4 4 2}
{it:a}{cmd:==}{it:b} 在 {it:a} 和 {it:b} 是相同类型且对应元素相等时评估为真。相同类型意味着 {it:a} 和 {it:b} 都是数字、都是字符串，或者都是指针。因此，询问一个 2 {it:x} 2 矩阵是否等于一个 4 {it:x} 1 向量或一个字符串变量是否等于一个实变量并不是错误；它们是不相等的。此外，如果 {it:a} 或 {it:b} 是相容的（p-conformable）且行数或列数为零，则 {it:a}{cmd:==}{it:b} 被认为是成立的。

{p 4 4 2}
{it:a}{cmd:!=}{it:b} 等同于 {cmd:!(}{it:a}{cmd:==}{it:b}{cmd:)}。{it:a}{cmd:!=}{it:b} 在 {it:a}{cmd:==}{it:b} 为假时评估为真，反之亦然。

{p 4 4 2}
其余比较运算符 {cmd:>}, {cmd:>=}, {cmd:<}, 和 {cmd:<=} 与 {cmd:==} 和 {cmd:!=} 的工作方式不同，因为它们要求 {it:a} 和 {it:b} 必须是相容的。如果不是，它们将中止并报错。它们在对应元素具有特定关系时返回真，否则返回假。如果 {it:a} 或 {it:b} 是复数，则根据复数向量的长度进行比较；例如，{it:a}{cmd:>}{it:b} 等价于 {cmd:abs(}{it:a}{cmd:)}{cmd:>}{cmd:abs(}{it:b}{cmd:)}, 因此 -3 {cmd:>} 2+0i 为真。

{p 4 4 2}
当 {it:a} 为标量时，{cmd:!}{it:a} 如果 {it:a} 不等于零则评估为 0，否则评估为 1。应用于矢量或矩阵时，逐元素执行相同的操作：{cmd:!(}-1,0,1,2,.{cmd:)} 评估为 {cmd:(}0,1,0,0,0{cmd:)}。

{p 4 4 2}
{cmd:&} 和 {cmd:|}（与和或）只能与标量一起使用。由于许多人熟悉 C 语言编程，因此 Mata 提供了 {cmd:&&} 作为 {cmd:&} 的同义词，{cmd:||} 作为 {cmd:|} 的同义词。


{marker remarks2}{...}
{title:与指针一起使用逻辑运算符}

{p 4 4 2}
在指针表达式中，NULL 被视为假，所有其他指针值（地址值）被视为真。因此，以下代码等效：

	{cmd}pointer x                            pointer x
	...                                  ...
	if (x) {                             if (x!=NULL) {
		...                                  ...
	}                                    }

{p 4 4 2}
逻辑运算符 {it:a}{cmd:==}{it:b}, {it:a}{cmd:!=}{it:b},
{it:a}{cmd:&}{it:b}, 和 {it:a}{cmd:|}{it:b} 可以与指针一起使用。


{marker conformability}{...}
{title:适应性}

    {it:a}{cmd:==}{it:b}, {it:a}{cmd:!=}{it:b}:
	     {it:a}:  {it:r1 x c1}
	     {it:b}:  {it:r2 x c2}
	{it:result}:  1 {it:x} 1

{p 4 4 2}
{it:a}{cmd:>}{it:b},
{it:a}{cmd:>=}{it:b},
{it:a}{cmd:<}{it:b},
{it:a}{cmd:<=}{it:b}:
{p_end}
	     {it:a}:  {it:r x c}
	     {it:b}:  {it:r x c}
	{it:result}:  1 {it:x} 1

    {cmd:!}{it:a}:
	     {it:a}:  {it:r x c}
	{it:result}:  {it:r x c}

{p 4 4 2}
{it:a}{cmd:&}{it:b},
{it:a}{cmd:|}{it:b}:
{p_end}
	     {it:a}:  1 {it:x} 1
	     {it:b}:  1 {it:x} 1
	{it:result}:  1 {it:x} 1


{marker diagnostics}{...}
{title:诊断}

{p 4 4 2}
    {it:a}{cmd:==}{it:b} 和
    {it:a}{cmd:!=}{it:b}
    不会失败。

{p 4 4 2}
{it:a}{cmd:>}{it:b},
{it:a}{cmd:>=}{it:b},
{it:a}{cmd:<}{it:b},
{it:a}{cmd:<=}{it:b}
如果 {it:a} 和 {it:b} 不是相容的，将中止并报错，
如果 {it:a} 和 {it:b} 不是同一类型（数字与数字或字符串与字符串），或者如果 {it:a} 或 {it:b} 是指针。

{p 4 4 2}
{cmd:!}{it:a} 如果 {it:a} 不是实数，则中止并报错。

{p 4 4 2}
{it:a}{cmd:&}{it:b} 和
{it:a}{cmd:|}{it:b}
如果 {it:a} 和 {it:b} 不是同时为实数或同时为指针，则中止并报错。如果 {it:a} 和 {it:b} 是指针，则指针值 NULL 被视为假，所有其他指针值被视为真。在所有情况下，返回的实数为 0 或 1。
{p_end}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <m2_op_logical.sthlp>}