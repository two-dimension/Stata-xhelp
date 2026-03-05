{smcl}
{* *! version 1.1.5  15may2018}{...}
{vieweralsosee "[M-2] op_assignment" "mansection M-2 op_assignment"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[M-5] swap()" "help mf_swap_zh"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[M-2] exp" "help m2_exp_zh"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[M-2] Intro" "help m2_intro_zh"}{...}
{viewerjumpto "Syntax" "m2_op_assignment_zh##syntax"}{...}
{viewerjumpto "Description" "m2_op_assignment_zh##description"}{...}
{viewerjumpto "Links to PDF documentation" "m2_op_assignment_zh##linkspdf"}{...}
{viewerjumpto "Remarks" "m2_op_assignment_zh##remarks"}{...}
{viewerjumpto "Conformability" "m2_op_assignment_zh##conformability"}{...}
{viewerjumpto "Diagnostics" "m2_op_assignment_zh##diagnostics"}
{help m2_op_assignment:English Version}
{hline}{...}
{p2colset 1 24 26 2}{...}
{p2col:{bf:[M-2] op_assignment} {hline 2}} 赋值运算符
{p_end}
{p2col:}({mansection M-2 op_assignment:查看完整的 PDF 手册条目}){p_end}
{p2colreset}{...}


{marker syntax}{...}
{title:语法}

	{it:lval} {cmd:=} {it:exp}

{p 4 4 2}
其中 {it:exp} 是任何有效的表达式，而 {it:lval} 是

	{it:name}
	{it:name}{cmd:[}{it:exp}{cmd:]}
	{it:name}{cmd:[}{it:exp}, {it:exp}{cmd:]}
	{it:name}{cmd:[|}{it:exp}{cmd:|]}

{p 4 4 2}
在指针使用（高级）中，{it:name} 可以是

	{cmd:*}{it:lval}
	{cmd:*(}{it:lval}{cmd:)}
	{cmd:*(}{it:lval}{cmd:[}{it:exp}{cmd:]}{cmd:)}
	{cmd:*(}{it:lval}{cmd:[}{it:exp}, {it:exp}{cmd:]}{cmd:)}
	{cmd:*(}{it:lval}{cmd:[|}{it:exp}{cmd:|]}{cmd:)}

{p 4 4 2}
除了作为变量名。


{marker description}{...}
{title:描述}

{p 4 4 2}
{cmd:=} 将 {it:exp} 的评估结果赋值给 {it:lval}。

{p 4 4 2}
不要将 {cmd:=} 赋值运算符与 {cmd:==} 相等运算符混淆。编码 

		{cmd: x = y}

{p 4 4 2}
将 {cmd:y} 的值赋给 {cmd:x}。编码 

		{cmd:if (x==y)} ...{col 50}{it:(注意双等号)}

{p 4 4 2}
只有当 {it:x} 的值等于 {it:y} 的值时，才执行该操作。
有关 {cmd:==} 相等运算符的描述，请参见 {bf:{help m2_op_logical_zh:[M-2] op_logical}}。

{p 4 4 2}
如果一个表达式的结果未赋值给变量，则结果将在终端显示；见 {bf:{help m2_exp_zh:[M-2] exp}}。


{marker linkspdf}{...}
{title:PDF 文档链接}

        {mansection M-2 op_assignmentRemarksandexamples:备注和示例}

{pstd}
上述部分未包含在此帮助文件中。


{marker remarks}{...}
{title:备注}

{p 4 4 2}
备注分为以下几个部分：

	{help m2_op_assignment##remarks1:赋值抑制显示}
	{help m2_op_assignment##remarks2:等号赋值运算符}
	{help m2_op_assignment##remarks3:lvals，左侧的值}
	{help m2_op_assignment##remarks4:行、列和元素 lvals}
	{help m2_op_assignment##remarks5:指针 lvals}


{marker remarks1}{...}
{title:赋值抑制显示}

{p 4 4 2}
当你在交互中输入一个表达式或在程序中编码一个表达式而未使用等号赋值运算符时，该表达式的结果将显示在终端：

	: {cmd:2+3}
	  5

{p 4 4 2}
当你将表达式赋值给一个变量时，结果不会显示：

	: {cmd:x = 2+3}


{marker remarks2}{...}
{title:等号赋值运算符}

{p 4 4 2}
等号是一个运算符，所以除了编码

		{cmd:a = 2 + 3}

{p 4 4 2}
你还可以编码 

		{cmd:a = b = 2 + 3}

{p 4 4 2}
或

		{cmd:y = x / (denominator = sqrt(a+b))}

{p 4 4 2}
甚至

		{cmd:y1 = y2 = x / (denominator = sqrt(sum=a+b))}

{p 4 4 2}
最后一个等式等同于

		{cmd:sum = a + b}
		{cmd:denominator = sqrt(sum)}
		{cmd:y2 = x / denominator}
		{cmd:y1 = y2}

{p 4 4 2}
等号的绑定优先级较低，因此 

		{cmd:a = b = 2 + 3}

{p 4 4 2}
被解释为 

		{cmd:a = b = (2 + 3)}

{p 4 4 2}
而不是 

		{cmd:a = (b=2) + 3}


{marker remarks3}{...}
{title:lvals，左侧的值}

{p 4 4 2}
等号左侧的内容称为 {it:lval}，是左侧值的缩写。例如，编码 

		{cmd:sqrt(4) = 3}

{p 4 4 2}
是没有意义的，实际上，你无法编码这段代码，因为 {cmd:sqrt(4)} 不是一个 {it:lval}：

	: {cmd:sqrt(4) = 3}
	{err:无效的 lval}
	r(3000);

{p 4 4 2}
一个 {it:lval} 是任何可以存储值的东西。一个标量可以存储值

		{cmd:a = 3}

		{cmd:x = sqrt(4)}

{p 4 4 2}
一个矩阵可以存储值

		{cmd:A = (1,2\3,4)}

		{cmd:B = invsym(C)}

{p 4 4 2}
一个矩阵的行可以存储值

		{cmd:A[1,.] = (7,8)}

{p 4 4 2}
一个矩阵的列可以存储值

		{cmd:A[.,2] = (9\10)}

{p 4 4 2}
最后，一个矩阵的元素可以存储一个值

		{cmd:A[1,2] = 7}

{p 4 4 2}
{it:lvals} 通常是上述形式中的一种。其他形式涉及指针变量，大多数程序员从不使用；它们在下面的 {help m2_op_assignment##remarks5:指针 lvals} 中讨论。


{marker remarks4}{...}
{title:行、列和元素 lvals}

{p 4 4 2}
当你为一个矩阵的行、列或元素赋值时，

		{cmd:A[1,.] = (7,8)}
		{cmd:A[.,2] = (9\10)}
		{cmd:A[1,2] = 7}

{p 4 4 2}
行、列或元素必须已经存在：

	: {cmd:A = (1, 2 \ 3, 4)}

	: {cmd:A[3,4] = 4}
	{err:        <istmt>:  3301  下标无效}
	r(3301);

{p 4 4 2}
这通常不是问题，因为在你为行、列或元素赋值之前，矩阵已经创建，但是在你需要先创建它的情况下，可以使用 {cmd:J()} 函数；参见 {bf:{help mf_j_zh:[M-5] J()}}。以下代码片段创建了一个 3 {it:x} 4 的矩阵，包含其索引的和：

		{cmd}A = J(3, 4, .)
		for (i=1; i<=3; i++) {
			for (j=1; j<=4; j++) A[i,j] = i + j
		}{txt}


{marker remarks5}{...}
{title:指针 lvals}

{p 4 4 2}
除了标准的 {it:lvals} 

		{cmd}A = (1, 2 \ 3, 4)
		A[1,.] = (7,8)
		A[.,2] = (9\10)
		A[1,2] = 7{txt}

{p 4 4 2}
还允许指针 {it:lvals}。例如， 

		{cmd:*p = 3}

{p 4 4 2}
将 3 存储在由指针标量 {cmd:p} 指向的地址中。

		{cmd:(*q)[1,2] = 4}

{p 4 4 2}
将 4 存储在由指针标量 {cmd:q} 指向的 (1,2) 元素的地址中，而 

		{cmd:*Q[1,2] = 4}

{p 4 4 2}
将 4 存储在由指针矩阵 {cmd:Q} 的 (1,2) 元素指向的地址中。

		{cmd:*Q[2,1][1,3] = 5}

{p 4 4 2}
相当于

		{cmd:*(Q[2,1])[1,3] = 5}

{p 4 4 2}
并将 5 存储在由指针矩阵 {cmd:Q} 的 (2,1) 元素指向的 (1,3) 地址中。

{p 4 4 2}
指向指针、指向指针的指针，等等，都是允许的。例如， 

		{cmd:**r} = 3

{p 4 4 2}
将 3 存储在指针标量 {cmd:r} 所指向地址的地址中，而 

		{cmd:*((*(Q[1,2]))[2,1])[3,4] = 7}

{p 4 4 2}
将 7 存储在指向由指针矩阵 {cmd:Q} 的 (1,2) 地址所指向的 (2,1) 地址的 (3,4) 地址中。


{marker conformability}{...}
{title:相容性}

    {it:a} {cmd:=} {it:b}:
	{it:输入}:
		{it:b}:  {it:r x c}
	{it:输出}:
		{it:a}:  {it:r x c}
		

{marker diagnostics}{...}
{title:诊断}

{p 4 4 2}
如果没有足够的内存将 {it:b} 的副本存储在 {it:a} 中，则 {it:a} {cmd:=} {it:b} 会中止并报告错误。
{p_end}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <m2_op_assignment.sthlp>}