{smcl}
{* *! version 1.1.10  15may2018}{...}
{vieweralsosee "[M-2] exp" "mansection M-2 exp"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[M-2] Intro" "help m2_intro_zh"}{...}
{viewerjumpto "语法" "m2_exp_zh##syntax"}{...}
{viewerjumpto "描述" "m2_exp_zh##description"}{...}
{viewerjumpto "PDF文档链接" "m2_exp_zh##linkspdf"}{...}
{viewerjumpto "备注" "m2_exp_zh##remarks"}{...}
{viewerjumpto "参考" "m2_exp_zh##reference"}
{help m2_exp:English Version}
{hline}{...}
{p2colset 1 14 16 2}{...}
{p2col:{bf:[M-2] exp} {hline 2}}表达式
{p_end}
{p2col:}({mansection M-2 exp:查看完整的PDF手册条目}){p_end}
{p2colreset}{...}


{marker syntax}{...}
{title:语法}

	{it:exp}


{marker description}{...}
{title:描述}

{p 4 4 2}
{it:exp} 用于语法图中，表示“此处可以出现任何有效表达式”。 表达式可以是简单的常量

		{cmd:2}
		{cmd:"this"}
		{cmd:3+2i}

{p 4 4 2}
也可以是变量的名称

		{cmd:A}
		{cmd:beta}
		{cmd:varwithverylongname}

{p 4 4 2}
还可以是完整的标量、字符串或矩阵表达式：

		{cmd:sqrt(2)/2}
		{cmd:substr(userinput, 15, strlen(otherstr))}
		{cmd:conj(X)'X}


{marker linkspdf}{...}
{title:PDF文档链接}

        {mansection M-2 expRemarksandexamples:备注和示例}

{pstd}
上述部分未包含在此帮助文件中。


{marker remarks}{...}
{title:备注}

{p 4 4 2}
备注按以下标题呈现：

	{help m2_exp##remarks1:什么是表达式}
	{help m2_exp##remarks2:赋值抑制显示，(void)也是如此}
	{help m2_exp##remarks3:表达式的组成部分}
	{help m2_exp##remarks4:数值字面量}
	{help m2_exp##remarks5:字符串字面量}
	{help m2_exp##remarks6:变量名称}
	{help m2_exp##remarks7:运算符}
	{help m2_exp##remarks8:函数}


{marker remarks1}{...}
{title:什么是表达式}

{p 4 4 2}
每个人都知道什么是表达式：表达式是像 {cmd:2+3} 和 {cmd:invsym(X'X)*X'y} 这样的东西。 
更简单的东西也是表达式，比如数值常量

		{cmd:2}                是一个表达式

{p 4 4 2}
字符串字面量

		{cmd:"hi there"}       是一个表达式

{p 4 4 2}
以及函数调用：

		{cmd:sqrt(2)}          是一个表达式

{p 4 4 2}
即使函数不返回任何值（该函数是空的），触发函数运行的代码也是表达式。例如，函数 {cmd:swap()}（见 {bf:{help mf_swap_zh:[M-5] swap()}}）交换其参数的内容且不返回任何值。尽管如此，

		{cmd:swap(A, B)}      是一个表达式

		
{marker remarks2}{...}
{title:赋值抑制显示，(void)也是如此}

{p 4 4 2}
等号将表达式的结果分配给变量。例如，

		{cmd:a = 2 + 3}

{p 4 4 2}
将 5 分配给 {cmd:a}。当表达式的结果未分配给变量时，结果将在终端显示。这对于交互输入的表达式以及在程序中编码的表达式都是如此。例如，给定程序

	{cmd}function example(a, b)
	{
		"the answer is"
		a+b
	}{txt}

{p 4 4 2}
执行 {cmd:example()} 产生 

	: {cmd:example(2, 3)}
	  the answer is
	  5

{p 4 4 2}
显然，5的出现是容易理解的；我们编码了表达式 {cmd:a+b} 而没有将其分配给另一个变量。
“the answer is” 也出现可能会让你感到惊讶。
然而，我们在程序中编码了 {cmd:"the} {cmd:answer} {cmd:is"}，这也是一个表达式，因为我们没有将该表达式分配给变量，因此它被显示了。

{p 4 4 2}
在编程场景中，有时你会想要执行一个函数—称其为 {cmd:setup()}—但不在乎该函数返回什么，即使该函数本身并非空（也就是说，它返回某些内容）。如果你编码

	{cmd:function example(}...{cmd:)}
	{cmd:{c -(}}
		...
		{cmd:setup(}...{cmd:)}
		...
	{cmd:{c )-}}

{p 4 4 2}
结果将显示 {cmd:setup()} 返回的内容。你有两个选择。你可以将 {cmd:setup} 的结果分配给一个变量，即使你后续不会使用该变量

	{cmd:function example(}...{cmd:)}
	{cmd:{c -(}}
		...
		{cmd:result = setup(}...{cmd:)}
		...
	{cmd:{c )-}}

{p 4 4 2}
或者你可以将函数的结果显式转换为空：

	{cmd:function example(}...{cmd:)}
	{cmd:{c -(}}
		...
		{cmd:(void) setup(}...{cmd:)}
		...
	{cmd:{c )-}}

{p 4 4 2}
在表达式前放置 {cmd:(void)} 防止结果被显示。


{marker remarks3}{...}
{title:表达式的组成部分}

{p 4 4 2}
表达式由以下部分组成：

	        {help m2_exp##remarks4:数值字面量}
      	        {help m2_exp##remarks5:字符串字面量}
	        {help m2_exp##remarks6:变量名称}
	        {help m2_exp##remarks7:运算符}
	        {help m2_exp##remarks8:函数}


{marker remarks4}{...}
{title:数值字面量}

{p 4 4 2}
数值字面量就是数字

		{cmd}2
		3.14159
		-7.2
		5i
		1.213e+32
		1.213E+32
		1.921fb54442d18X+001
		1.921fb54442d18x+001
		.
		.a
		.b{txt}

{p 4 4 2}
但你可以在最后添加 {cmd:i} 来表示虚数，例如上面的 {cmd:5i}。要创建复数，你可以使用 {cmd:+} 运算符组合实数和虚数，例如 {cmd:2+5i}。无论如何，你可以将 {cmd:i} 放在任何字面量结束，所以 {cmd:1.213e+32i} 是有效的， {cmd:1.921fb54442d18X+001i} 也有效。

{p 4 4 2}
{cmd:1.921fb54442d18X+001i} 看起来相当复杂，无论是否加上 {cmd:i}。 {cmd:1.921fb54442d18X+001} 是在二进制中编写浮点数的一种方式；它在 {findalias frformats} 中有描述。大多数人从不使用它。

{p 4 4 2}
此外，数值字面量包括 Stata 的缺失值，{cmd:.}、{cmd:.a}、{cmd:.b}、...、{cmd:.z}。

{p 4 4 2}
复数变量可能会像实数变量那样包含缺失值，但只能有一个： {cmd:.a+.bi} 是不允许的。复数变量包含有效的复数值，或者它包含 {cmd:.}、{cmd:.a}、{cmd:.b}、...、{cmd:.z}。


{marker remarks5}{...}
{title:字符串字面量}

{p 4 4 2}
字符串字面量用双引号或复合双引号包围：

		{cmd}"the answer is"
		"a string"
		`"also a string"'
		`"The "factor" of a matrix"'
		""
		`""'{txt}

{p 4 4 2}
Mata 中的字符串包含0到2,147,483,647个字节。 {cmd:""} 或 {cmd:`""'} 用于表示0长度字符串。

{p 4 4 2}
字符串中可以出现任何普通 ASCII 或 {help m6_glossary##utf8:UTF-8} 字符，但没有提供在字符串字面量中输入不可打印字符的功能。相反，你可以使用 {cmd:char()} 函数；见 {bf:{help mf_ascii_zh:[M-5] ascii()}}。例如， {cmd:char(13)} 是回车符，因此表达式

		{cmd:"my string" + char(13)}

{p 4 4 2}
产生 "my string" 后跟一个回车符。

{p 4 4 2}
没有字符给予特别的解释。特别是，反斜杠 ({cmd:\}) 在 Mata 中没有特别含义。
字符串字面量 {cmd:"my string\n"} 就只是这样：
字符 "my string" 后跟一个反斜杠再后跟一个 {it:n}。
一些函数，例如 {cmd:printf()}（见 {bf:{help mf_printf_zh:[M-5] printf()}}），赋予两个字符序列 {cmd:\n} 特殊含义，但这种特殊解释是函数的属性，而非 Mata，在函数的文档中有说明。

{p 4 4 2}
在 Mata 中，字符串不是以零（空）作为结尾的。Mata 知道字符串 "{cmd:hello}" 的长度为 5，但它并不是通过在字符串的第五个字符处填充二进制 0 来实现这一点。因此，字符串可以用来保存二进制信息。

{p 4 4 2}
虽然 Mata 对二进制 0 不给予特殊解释，但一些 Mata 函数确实如此。例如， {cmd:strmatch(}{it:s}{cmd:,} {it:pattern}{cmd:)} 
如果 {it:s} 与 {it:pattern} 匹配则返回 1，否则返回 0；
见 {bf:{help mf_strmatch_zh:[M-5] strmatch()}}。
对于该函数来说，如果两个字符串都包含二进制 0，则都被认为在其处终止。大多数字符串并不包含二进制 0，函数则会考虑整个字符串。无论如何，如果对二进制 0 有特别处理，那是在逐个函数的基础上，函数的文档中会对此做出说明。

{pstd}
Mata 中的一些字符串函数有专门处理 Unicode 的变体。例如， {help mf_usubstr_zh:usubstr()} 是 {help mf_substr_zh:substr()} 的 Unicode 版本。有关处理 Unicode 字符串的更多信息，请参见 {findalias frunicode}。


{marker remarks6}{...}
{title:变量名称}

{p 4 4 2}
变量名称就是这样。名称区分大小写，不允许缩写：

		{cmd}X
		x
		MyVar
		VeryLongVariableNameForUseInMata
		MyVariable
{txt}

{p 4 4 2}
变量名称的最大长度为32个字符。


{marker remarks7}{...}
{title:运算符}


{col 13}运算符，按优先级排序，从低到高

{col 9}运算符{...}
{col 23}运算符名称{...}
{col 50}文档
{...}
{...}
{...}
{col 9}{hline 57}
{...}
{...}
{...}
{...}
{col 9}{it:a}  {cmd:=}  {it:b}{...}
{col 23}赋值{...}
{col 50}{bf:{help m2_op_assignment_zh:[M-2] op_assignment}}

{col 9}{it:a}  {cmd:?}  {it:b}  {cmd::}  {it:c}{...}
{col 23}条件{...}
{col 50}{bf:{help m2_op_conditional_zh:[M-2] op_conditional}}

{col 9}{it:a}  {cmd:\}  {it:b}{...}
{col 23}列连接{...}
{col 50}{bf:{help m2_op_join_zh:[M-2] op_join}}

{col 9}{it:a}  {cmd:::} {it:b}{...}
{col 23}列到{...}
{col 50}{bf:{help m2_op_range_zh:[M-2] op_range}}

{col 9}{it:a}  {cmd:,}  {it:b}{...}
{col 23}行连接{...}
{col 50}{bf:{help m2_op_join_zh:[M-2] op_join}}

{col 9}{it:a}  {cmd:..} {it:b}{...}
{col 23}行到{...}
{col 50}{bf:{help m2_op_range_zh:[M-2] op_range}}

{col 9}{it:a} {cmd::|}  {it:b}{...}
{col 23}逐元素或{...}
{col 50}{bf:{help m2_op_colon_zh:[M-2] op_colon}}

{col 9}{it:a}  {cmd:|}  {it:b}{...}
{col 23}或{...}
{col 50}{bf:{help m2_op_logical_zh:[M-2] op_logical}}

{col 9}{it:a} {cmd::&}  {it:b}{...}
{col 23}逐元素与{...}
{col 50}{bf:{help m2_op_colon_zh:[M-2] op_colon}}

{col 9}{it:a}  {cmd:&}  {it:b}{...}
{col 23}与{...}
{col 50}{bf:{help m2_op_logical_zh:[M-2] op_logical}}

{col 9}{it:a} {cmd::==} {it:b}{...}
{col 23}逐元素相等{...}
{col 50}{bf:{help m2_op_colon_zh:[M-2] op_colon}}

{col 9}{it:a} {cmd: ==} {it:b}{...}
{col 23}相等{...}
{col 50}{bf:{help m2_op_logical_zh:[M-2] op_logical}}

{col 9}{it:a} {cmd::>=} {it:b}{...}
{col 23}逐元素大于或等于{...}
{col 50}{bf:{help m2_op_colon_zh:[M-2] op_colon}}

{col 9}{it:a} {cmd: >=} {it:b}{...}
{col 23}大于或等于{...}
{col 50}{bf:{help m2_op_logical_zh:[M-2] op_logical}}

{col 9}{it:a} {cmd::<=} {it:b}{...}
{col 23}逐元素小于或等于{...}
{col 50}{bf:{help m2_op_colon_zh:[M-2] op_colon}}

{col 9}{it:a}  {cmd:<=} {it:b}{...}
{col 23}小于或等于{...}
{col 50}{bf:{help m2_op_logical_zh:[M-2] op_logical}}

{col 9}{it:a} {cmd::<} {it:b}{...}
{col 23}逐元素小于{...}
{col 50}{bf:{help m2_op_colon_zh:[M-2] op_colon}}

{col 9}{it:a}  {cmd:<}  {it:b}{...}
{col 23}小于{...}
{col 50}{bf:{help m2_op_logical_zh:[M-2] op_logical}}

{col 9}{it:a} {cmd::>}  {it:b}{...}
{col 23}逐元素大于{...}
{col 50}{bf:{help m2_op_colon_zh:[M-2] op_colon}}

{col 9}{it:a}  {cmd:>}  {it:b}{...}
{col 23}大于{...}
{col 50}{bf:{help m2_op_logical_zh:[M-2] op_logical}}

{col 9}{it:a} {cmd::!=} {it:b}{...}
{col 23}逐元素不等{...}
{col 50}{bf:{help m2_op_colon_zh:[M-2] op_colon}}

{col 9}{it:a}  {cmd:!=} {it:b}{...}
{col 23}不等{...}
{col 50}{bf:{help m2_op_logical_zh:[M-2] op_logical}}

{col 9}{it:a} {cmd::+}  {it:b}{...}
{col 23}逐元素加法{...}
{col 50}{bf:{help m2_op_colon_zh:[M-2] op_colon}}

{col 9}{it:a}  {cmd:+}  {it:b}{...}
{col 23}加法{...}
{col 50}{bf:{help m2_op_arith_zh:[M-2] op_arith}}

{col 9}{it:a} {cmd::-}  {it:b}{...}
{col 23}逐元素减法{...}
{col 50}{bf:{help m2_op_colon_zh:[M-2] op_colon}}

{col 9}{it:a}  {cmd:-}  {it:b}{...}
{col 23}减法{...}
{col 50}{bf:{help m2_op_arith_zh:[M-2] op_arith}}

{col 9}{it:a} {cmd::*}  {it:b}{...}
{col 23}逐元素乘法{...}
{col 50}{bf:{help m2_op_colon_zh:[M-2] op_colon}}

{col 9}{it:a}  {cmd:*}  {it:b}{...}
{col 23}乘法{...}
{col 50}{bf:{help m2_op_arith_zh:[M-2] op_arith}}

{col 9}{it:a}  {cmd:#}  {it:b}{...}
{col 23}克罗内克{...}
{col 50}{bf:{help m2_op_kronecker_zh:[M-2] op_kronecker}}

{col 9}{it:a} {cmd::/}  {it:b}{...}
{col 23}逐元素除法{...}
{col 50}{bf:{help m2_op_colon_zh:[M-2] op_colon}}

{col 9}{it:a}  {cmd:/}  {it:b}{...}
{col 23}除法{...}
{col 50}{bf:{help m2_op_arith_zh:[M-2] op_arith}}

{col 9}{cmd:-}{it:a}{...}
{col 23}取反{...}
{col 50}{bf:{help m2_op_arith_zh:[M-2] op_arith}}

{col 9}{it:a} {cmd::^}  {it:b}{...}
{col 23}逐元素求幂{...}
{col 50}{bf:{help m2_op_colon_zh:[M-2] op_colon}}

{col 9}{it:a}  {cmd:^}  {it:b}{...}
{col 23}求幂{...}
{col 50}{bf:{help m2_op_arith_zh:[M-2] op_arith}}

{col 9}{it:a}{cmd:'}{...}
{col 23}转置{...}
{col 50}{bf:{help m2_op_transpose_zh:[M-2] op_transpose}}

{col 9}{cmd:*}{it:a}{...}
{col 23}内容{...}
{col 50}{bf:{help m2_pointers_zh:[M-2] pointers}}

{col 9}{cmd:&}{it:a}{...}
{col 23}地址{...}
{col 50}{bf:{help m2_pointers_zh:[M-2] pointers}}

{col 9}{cmd:!}{it:a}{...}
{col 23}非{...}
{col 50}{bf:{help m2_op_logical_zh:[M-2] op_logical}}

{col 9}{it:a}{cmd:[}{it:exp}{cmd:]}{...}
{col 23}下标{...}
{col 50}{bf:{help m2_subscripts_zh:[M-2] 下标}}

{col 9}{it:a}{cmd:[|}{it:exp}{cmd:|]}{...}
{col 23}范围下标{...}
{col 50}{bf:{help m2_subscripts_zh:[M-2] 下标}}

{col 9}{it:a}{cmd:++}{...}
{col 23}递增{...}
{col 50}{bf:{help m2_op_increment_zh:[M-2] op_increment}}

{col 9}{it:a}{cmd:--}{...}
{col 23}递减{...}
{col 50}{bf:{help m2_op_increment_zh:[M-2] op_increment}}

{col 9}{cmd:++}{it:a}{...}
{col 23}递增{...}
{col 50}{bf:{help m2_op_increment_zh:[M-2] op_increment}}

{col 9}{cmd:--}{it:a}{...}
{col 23}递减{...}
{col 50}{bf:{help m2_op_increment_zh:[M-2] op_increment}}
{...}
	{hline 57}
{col 9}(逐元素 = 按元素计算){...}


{marker remarks8}{...}
{title:函数}

{p 4 4 2}
Mata 提供的函数在 {bf:[M-5]} 中有文档。
可以在 {bf:{help m4_intro_zh:[M-4] Intro}} 中找到函数的索引。
{p_end}


{marker reference}{...}
{title:参考}

{phang}
Gould, W. W. 2006.
{browse "http://www.stata-journal.com/sjpdf.html?articlenum=pr0025":Mata Matters: Precision}.
{it:Stata Journal} 6: 550-560.
{p_end}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <m2_exp.sthlp>}