{smcl}
{* *! version 1.1.11  19oct2017}{...}
{vieweralsosee "[P] class" "mansection P class"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[P] class: classassign" "help classassign_zh"}{...}
{vieweralsosee "[P] class: classbi" "help classbi_zh"}{...}
{vieweralsosee "[P] class: classdeclare" "help classdeclare_zh"}{...}
{vieweralsosee "[P] class: classmacro" "help classmacro_zh"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[P] class exit" "help class exit"}{...}
{vieweralsosee "[P] classutil" "help classutil_zh"}{...}
{vieweralsosee "[P] sysdir" "help sysdir_zh"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[M-2] class" "help m2_class_zh"}{...}
{viewerjumpto "Description" "classman_zh##description"}{...}
{viewerjumpto "Links to PDF documentation" "classman_zh##linkspdf"}{...}
{viewerjumpto "Remarks" "classman_zh##remarks"}
{help classman:English Version}
{hline}{...}
{p2colset 1 14 16 2}{...}
{p2col:{bf:[P] class} {hline 2}}类编程
{p_end}
{p2col:}({mansection P class:查看完整的 PDF 手册条目}){p_end}
{p2colreset}{...}


{marker description}{...}
{title:描述}

{pstd}
Ado 类是 Stata 的一种编程特性，特别适用于处理图形和 GUI 问题，尽管它们的使用不必局限于这些主题。Ado 类编程是一个高级编程主题，对大多数程序员来说不太实用。


{marker linkspdf}{...}
{title:PDF 文档链接}

        {mansection P classRemarksandexamples:备注和示例}

{pstd}
以上部分不包含在此帮助文件中。


{marker remarks}{...}
{title:备注}

{pstd}
备注按以下标题呈现：

	{hi:{help classman##introduction:1. 介绍}}
	{hi:{help classman##definitions:2. 定义}}
	    {hi:{help classman##class_definition:2.1 类定义}}
	    {hi:{help classman##class_instance:2.2 类实例}}
	    {hi:{help classman##class_context:2.3 类上下文}}
	{hi:{help classman##version_control:3. 版本控制}}
	{hi:{help classman##member_variables:4. 成员变量}}
	    {hi:{help classman##types:4.1 类型}}
	    {hi:{help classman##default_initialization:4.2 默认初始化}}
     	    {hi:{help classman##specifying_initialization:4.3 指定初始化}}
    	    {hi:{help classman##specifying_initialization2:4.4 指定初始化 2, .new}}
	    {hi:{help classman##alternative_way_of_declaring:4.5 另一种声明方式}}
	    {hi:{help classman##scope:4.6 作用域}}
	    {hi:{help classman##adding_dynamically:4.7 动态添加}}
    	    {hi:{help classman##specifying_initialization3:4.8 高级初始化, .oncopy}}
    	    {hi:{help classman##destructors:4.9 高级清理, 析构函数}}
	{hi:{help classman##inheritance:5. 继承}}
	{hi:{help classman##member_programs:6. 成员程序的返回值}}
	{hi:{help classman##assignment:7. 赋值}}
	    {hi:{help classman##type_matching:7.1 类型匹配}}
	    {hi:{help classman##arrays:7.2 数组和数组元素}}
	    {hi:{help classman##lvalues_and_rvalues:7.3 lvalues 和 rvalues}}
	    {hi:{help classman##assignment_of_reference:7.4 引用赋值}}
	{hi:{help classman##built-ins:8. 内置函数}}
	    {hi:{help classman##built-in_functions:8.1 内置函数}}
	    {hi:{help classman##built-in_modifiers:8.2 内置修饰符}}
	{hi:{help classman##prefix_operators:9. 前缀运算符}}
	{hi:{help classman##using_object_values:10. 使用对象值}}
	{hi:{help classman##object_destruction:11. 对象销毁}}
	{hi:{help classman##advanced_topics:12. 高级主题}}
	    {hi:{help classman##keys:12.1 键}}
	    {hi:{help classman##unames:12.2 唯一名称}}
	    {hi:{help classman##arrays_of_member_variables:12.3 成员变量数组}}
	{hi:附录 A:  {help classman##appendix_a:查找、加载和清除类定义}}
	{hi:附录 B:  {help classman##jargon:术语}}
	{hi:附录 C:  {help classman##syntax:语法图}}
	    {hi:附录 C.1:  {help classdeclare_zh:类声明}}
	    {hi:附录 C.2:  {help classassign_zh:赋值}}
	    {hi:附录 C.3:  {help classmacro_zh:宏替换}}
	    {hi:附录 C.4:  {help classbi_zh:内置函数快速总结}}


{marker introduction}{...}
{title:1. 介绍}

{pstd}
一个 {it:class} 是 (1) 成员变量和 (2) 成员程序的集合。类的成员程序操作或基于成员变量进行计算。类在 {cmd:.class} 文件中定义。例如，我们可能在文件 {cmd:coordinate.class} 中定义类 {cmd:coordinate}：

	{hline 33} begin {cmd:coordinate.class} {hline}
	{cmd}version {ccl stata_version}
	class coordinate {
			 double	x
			 double	y
	}
	program .set
			 args x y
			 .x = `x'
			 .y = `y'
	end{txt}
	{hline 33} end {cmd:coordinate.class} {hline}

{pstd}
以上文件不创建任何内容。它仅定义了一个“坐标”的概念。现在文件存在时，可以通过键入

	{cmd:.coord = .coordinate.new}

创建一个类型为 {cmd:coordinate} 的“标量”变量。

{pstd}
{cmd:.coord} 被称为 {cmd:coordinate} 的一个 {it:instance}；它包含 {cmd:.coord.x}（一个特定的 x 坐标）和 {cmd:.coord.y}（一个特定的 y 坐标）。因为我们没有另作指定， {cmd:.coord.x} 和 {cmd:.coord.y} 默认包含缺失值，但我们可以通过键入

	{cmd}.coord.x = 1
	.coord.y = 2{txt}

将 {cmd:.coord} 重置为包含 (1,2)。

{pstd}
在这种情况下，我们可以通过键入

	{cmd:.coord.set 1 2}

更方便地做到这一点。

{pstd}
因为 {cmd:.coordinate.class} 包含一个名为 {cmd:.set} 的成员程序，可以让我们设置成员变量。{cmd:.set} 本身没有特别的用途；我们编写它主要是强调类实际上可以包含成员程序。如果我们删除 {cmd:.set} 程序，我们的 {cmd:coordinate.class} 定义几乎同样好。类不一定要求具有成员函数，但可以。

{pstd}
如果我们键入

	{cmd}.coord2 = .coordinate.new
	.coord2.set 2 4{txt}

{pstd}
我们现在将有一个名为 {cmd:.coord2} 的第二个 {cmd:coordinate} 实例，它的值为 (2,4)。

{pstd}
现在考虑另一个类 {cmd:line.class}：

	{hline 33} begin {cmd:line.class} {hline}
	{cmd}version {ccl stata_version}
	class line {
		coordinate c0
		coordinate c1
	}
	program .set
		args x0 y0 x1 y1
		.c0.set `x0' `y0'
		.c1.set `x1' `y1'
	end
	program .length
		class exit sqrt((`.c0.y'-`.c1.y')^2 + (`.c0.x'-`.c1.x')^2)
	end
	program .midpoint
		local cx = (`.c0.x' + `.c1.x')/2
		local cy = (`.c0.y' + `.c1.y')/2
		tempname b
		.`b'=.coordinate.new
		.`b'.set `cx' `cy'
		class exit .`b'
		end{txt}
	{hline 33} end {cmd:line.class} {hline}

{pstd}
与 {cmd:coordinate.class} 类似，{cmd:line.class} 有两个成员变量——它们被命名为 {cmd:.c0} 和 {cmd:.c1}——但不同的是，{cmd:.c0} 和 {cmd:.c1} 是 previously 定义的 {cmd:coordinate} 而不是数字。 {cmd:line.class} 的成员变量完整列表是

	{cmd:.c0}         第一个 {cmd:coordinate}
	{cmd:.c0.x}       x 值（一个 {cmd:double}）
	{cmd:.c0.y}       y 值（一个 {cmd:double}）
	{cmd:.c1}         第二个 {cmd:coordinate}
	{cmd:.c1.x}       x 值（一个 {cmd:double}）
	{cmd:.c1.y}       y 值（一个 {cmd:double}）

{pstd}
如果我们键入

	{cmd:.li = .line.new}

{pstd}
我们将获得一个名为 {cmd:.li} 的 {cmd:line}，其中包含

	{cmd:.li.c0}      {cmd:line} {cmd:.li} 的第一个 {cmd:coordinate}
	{cmd:.li.c0.x}    x 值（一个 {cmd:double}）
	{cmd:.li.c0.y}    y 值（一个 {cmd:double}）
	{cmd:.li.c1}      {cmd:line} {cmd:.li} 的第二个 {cmd:coordinate}
	{cmd:.li.c1.x}    x 值（一个 {cmd:double}）
	{cmd:.li.c1.y}    y 值（一个 {cmd:double}）

{pstd}
这些变量的值是什么？因为我们没有另作指定， {cmd:.li.c0} 和 {cmd:.li.c1} 将默认获取它们的类型 {cmd:coordinate} 的默认值。这个默认值是 (.,.)，因为在定义 {cmd:line}s 或 {cmd:coordinate}s 时我们没有另作指定。因此，默认值为 (.,.) 和 (.,.)，我们得到了一个不完整的线。

{pstd}
与 {cmd:coordinate} 一样，我们包含成员函数 {cmd:.set} 以便更方便地设置线。我们可以键入

	{cmd:.li.set 1 2 2 4}

{pstd}
我们将得到一条从 (1,2) 到 (2,4) 的线。

{pstd}
{cmd:line.class} 包含以下成员程序：

	{cmd:.set}        设置 {cmd:.c0} 和 {cmd:.c1} 的程序
	{cmd:.c0.set}     设置 {cmd:.c0} 的程序
	{cmd:.c1.set}     设置 {cmd:.c1} 的程序
	{cmd:.length}     返回线的长度的程序
	{cmd:.midpoint}   返回线中点的 {cmd:coordinate} 的程序

{pstd}
{cmd:.set}、{cmd:.length} 和 {cmd:.midpoint} 来自 {cmd:line.class}。{cmd:.c0.set} 和 {cmd:.c1.set} 来自 {cmd:coordinate.class}。

{pstd}
成员程序 {cmd:.length} 返回线的长度。

	{cmd:.len = .li.length}

{pstd}
将创建 {cmd:.len}，包含 {cmd:.li.length} 的结果，即在对象 {cmd:.li} 上运行程序 {cmd:.length} 的结果。 {cmd:.length} 返回一个 {cmd:double}，因此 {cmd:.len} 将是 {cmd:double}。

{pstd}
{cmd:.midpoint} 返回线的中点。

	{cmd:.mid = .li.midpoint}

{pstd}
将创建 {cmd:.mid}，包含 {cmd:.li.midpoint} 的结果，即在对象 {cmd:.li} 上运行程序 {cmd:.midpoint} 的结果。 {cmd:.midpoint} 返回一个 {cmd:coordinate}，因此 {cmd:.mid} 将是一个 {cmd:coordinate}。


{marker definitions}{...}
{title:2. 定义}

{marker class_definition}{...}
{title:2.1 类定义}

{pstd}
类 {it:classname} 在文件 {it:classname}{cmd:.class} 中定义。定义不会创建类的任何实例。

{pstd}
{it:classname}{cmd:.class} 文件有三个部分：

	{hline 33} begin {it:classname}{cmd:.class} {hline}
	{cmd:version} ...           // 第 1 部分：版本声明
	{cmd:class} {it:classname} {cmd:{c -(}}     // 第 2 部分：成员变量的声明
			...
	{cmd:{c )-}}
	{cmd:program} ...           // 第 3 部分：成员程序的代码
			...
	{cmd:end}
	{cmd:program} ...
		...
	{cmd:end}
	...
	{hline 33} end {it:classname}{cmd:.class} {hline}


{marker class_instance}{...}
{title:2.2 类实例}

{pstd}
要创建一个类型为 {it:classname} 的“变量” {it:name}，您输入

	{cmd:.}{it:name} {cmd:= .}{it:classname}{cmd:.new}

{pstd}
在此之后， {cmd:.}{it:name} 通常称为标识符、类变量、类实例、对象、对象实例，或有时简称为实例。名称不论你怎么称呼，上述语句创建新的 {cmd:.}{it:name}——或替换现有的 {cmd:.}{it:name}——以包含 {it:classname} 的定义的应用结果。与其他变量一样，您可以拥有许多不同名称的不同类型的变量。

{pstd}
{cmd:.}{it:name} 被称为一层或顶层标识符。{cmd:.}{it:name1}{cmd:.}{it:name2} 被称为二层标识符，以此类推。对顶层标识符的赋值是允许的，前提是 (1) 该标识符尚未存在，或 (2) 如果该标识符存在且为 {it:classname} 类型。如果顶层标识符已经存在且类型不同，则您必须首先删除该标识符，然后重新创建它；见 {hi:{help classman##object_destruction:对象销毁}}。

{pstd}
考虑赋值

	{cmd:.}{it:name1}{cmd:.}{it:name2} {cmd:= .}{it:classname}{cmd:.new}

{pstd}
如果 {cmd:.}{it:name1} 已存在，并且 {cmd:.}{it:name2} 在 {cmd:.}{it:name1} 的类定义中被声明为 {it:classname} 类型，则上述语句是允许的。在这种情况下，{cmd:.}{it:name1}{cmd:.}{it:name2} 之前包含一个 {it:classname} 实例，现在包含一个 {it:classname} 实例，区别在于旧内容已被丢弃并替换为新的同类实例。相同的规则适用于三层及更高标识符。

{pstd}
类和类实例也可以包含成员程序。成员程序与类变量的识别方式相同。{cmd:.}{it:name1}{cmd:.}{it:name2} 可能引用一个成员变量或成员程序。


{marker class_context}{...}
{title:2.3 类上下文}

{pstd}
当类程序执行时，它在当前实例的上下文中执行。例如，考虑实例创建

	{cmd:.mycoord = .coordinate.new}

{pstd}
并回顾 {cmd:coordinate.class} 提供的成员程序 {cmd:.set}，其代码如下：

	{cmd}program .set
			args x y
			.x = `x'
			.y = `y'
	end{txt}

{pstd}
假设我们键入“{cmd:.mycoord.set 2 4}”。当 {cmd:.set} 执行时，它在 {it:context} 的 {cmd:.mycoord} 中执行。在程序内部，{cmd:.x} 和 {cmd:.y} 的引用被假定为 {cmd:.mycoord.x} 和 {cmd:.mycoord.y}。如果我们键入“{cmd:.other.set}”，引用将是 {cmd:.other.x} 和 {cmd:.other.y}。

{pstd}
请查看 {cmd:.set} 中的语句“{cmd:.x = `x'}”。假设 {cmd:`x'} 是 {cmd:2}，以便宏替换后，语句变为“{cmd:.x = 2}”。这是一个将顶层标识符 {cmd:.x} 设置为 2 的语句吗？不，这是一条指令，表示 {cmd:.}{it:impliedcontext}{cmd:.x} 被设置为 2。无论 {cmd:.x} 是出现在等号右边还是程序中的其他地方，情况都是一样。

{pstd}
解析 {cmd:.x} 和 {cmd:.y} 的规则实际上更复杂。如果它们存在于隐含上下文中，则解析为隐含上下文，否则将其解释为全局上下文。因此，在上述示例中，{cmd:.x} 和 {cmd:.y} 被解释为对 {cmd:.}{it:impliedcontext}{cmd:.x} 和 {cmd:.}{it:impliedcontext}{cmd:.y} 的引用，因为 {cmd:.x} 和 {cmd:.y} 存在于 {cmd:.}{it:impliedcontext} 中。但是，如果我们的程序引用 {cmd:.c}，则假定该引用在全局上下文中（即，简单地是 {cmd:.c}），因为在隐含上下文中没有 {cmd:.c}。有关详细信息，请参见 {hi:{help classman##prefix_operators: 前缀运算符}}。

{pstd}
如果成员程序调用常规程序（常规 ado 文件），该程序将也在相同的类上下文中运行；例如，如果 {cmd:.set} 包含以下代码

	{cmd}move_to_right
	.x = r(x)
	.y = r(y){txt}

{pstd}
并且程序 {cmd:move_to_right.ado} 包含引用 {cmd:.x} 和 {cmd:.y} 的语句，则它们将被解释为 {cmd:.}{it:impliedcontext}{cmd:.x} 和 {cmd:.}{it:impliedcontext}{cmd:.y}。

{pstd}
在所有程序——无论是成员程序还是 ado 文件——中，我们可以通过 {cmd:.Local} 和 {cmd:.Global} 前缀显式控制是否希望在隐含上下文或全局处理中使用标识符；见 {hi:{help classman##prefix_operators: 前缀运算符}}。


{marker version_control}{...}
{title:3. 版本控制}

{pstd}
第一个出现在 {cmd:.class} 文件中的内容应为 {cmd:version} 语句；见 {manhelp version P}。例如，{cmd:coordinate.class} 读取

	{hline 33} begin {cmd:coordinate.class} {hline}
	{cmd}version {ccl stata_version}
	{txt}{it:[}{cmd:class} {it:成员变量的定义被省略]}{cmd}
	program .set
			args x y
			.x = `x'
			.y = `y'
	end{txt}
	{hline 33} end {cmd:coordinate.class} {hline}

{pstd}
文件顶部的 {cmd:version {ccl stata_version}} 指定在读取类定义时按照版本 {ccl stata_version} 语法进行解释，还指定在每个成员程序运行时按照版本 {ccl stata_version} 进行解释。因此，您不需要在每个成员程序的定义中包含 {cmd:version} 语句，尽管如果您希望该程序按照不同版本的 Stata 语法运行，您可以这么做。

{pstd}
在顶部包含 {cmd:version} 语句至关重要。Stata 正在持续开发中，类子系统也是如此。语法和功能可能会发生变化。包含 {cmd:version} 命令确保您的类将继续按您预期的方式工作。


{marker member_variables}{...}
{title:4. 成员变量}

{marker types}{...}
{title:4.1 类型}

{pstd}
第二个出现在 {cmd:.class} 文件中的内容是成员变量的定义。我们已经看到两个示例，

	{hline 33} begin {cmd:coordinate.class} {hline}
	{cmd}version {ccl stata_version}
	class coordinate {
			double	x
			double	y
	}
	{txt}{it:[省略成员程序]}
	{hline 33} end {cmd:coordinate.class} {hline}

{pstd}
和

	{hline 33} begin {cmd:line.class} {hline}
	{cmd}version {ccl stata_version}
	class line {
			coordinate c0
			coordinate c1
	}
	{txt}{it:[省略成员程序]}
	{hline 33} end {cmd:line.class} {hline}

{pstd}
在第一个示例中，成员变量是 {cmd:.x} 和 {cmd:.y}，在第二个示例中是 {cmd:.c0} 和 {cmd:.c1}。在第一个示例中，成员变量的类型为 {cmd:double}，而在第二个示例中为 {cmd:coordinate}，另一类。

{pstd}
成员变量的类型可能是 {it:type}：

{synoptset 15 tabbed}{...}
{synopt :{cmd:double}}双精度标量数值，包括缺失值 {cmd:.}, {cmd:.a}, ..., {cmd:.z}{p_end}

{synopt :{cmd:string}}标量字符串值，最小长度 0 ("")，最大长度与宏相同，即，较长{p_end}

{p2col 5 24 24 2:}类 {cmd:string} 类型与 Stata 的 {cmd:str}{it:#} 和 {cmd:strL} 类型不同。它可以存储比 {cmd:str}{it:#} 类型更长的字符串值，但不能存储比 {cmd:strL} 类型更长的字符串值。此外，与 {cmd:strL} 不同，类 {cmd:string} 不能包含二进制 0。

{synopt :{it:classname}}其他类，排除正在定义的类{p_end}

{synopt :{cmd:array}}包含任何 {it:types} 的数组，包括其他 {cmd:array}s{p_end}
{p2colreset}{...}

{pstd}
类定义可以读取如下：

	{hline 33} begin {cmd:todolist.class} {hline}
	{cmd}version {ccl stata_version}
	class todolist {
		       double  n            {txt:// 列表中的元素数量}
		       string  name         {txt:// 列表使用者}
		       array   list         {txt:// 列表本身}
		       actions x            {txt:// 已完成的事务}
	}{txt}
	{hline 33} end {cmd:todolist.class} {hline}

{pstd}
在上面的例子中，请注意 {cmd:actions} 是一个类，而不是原始类型。在其他地方，我们已经编写了 {cmd:actions.class}，它定义了我们对 {cmd:actions} 的意思。

{pstd}
注意，{cmd:array} 在声明时没有类型。{cmd:array} 不是 {cmd:double} 的数组，也不是 {cmd:string} 的数组，也不是 {cmd:coordinate} 的数组；相反，每个数组元素在运行时单独类型，因此，数组可能被确定为 {cmd:double} 的数组或 {cmd:string} 的数组，或 {cmd:coordinate} 的数组，或者可能是它的第一个元素是 {cmd:double}，第二个元素是 {cmd:string}，第三个元素是 {cmd:coordinate}，第四个元素是其他类型，依此类推。

{pstd}
同样，{cmd:array} 的大小也不被声明为预先确定的。在运行时根据数组的使用情况自动确定大小。此外，数组可以是稀疏的。数组的第一个元素可能是 {cmd:double}，第四个元素可能是 {cmd:coordinate}，而第二和第三个元素未定义。在这方面没有效率损失。稍后，可以将值分配给数组的第五个元素，从而扩展它，或可以将值分配给第二和第三个元素，从而填补空白。


{marker default_initialization}{...}
{title:4.2 默认初始化}

{pstd}
当创建类的实例时，成员变量被按如下方式填充：

	{cmd:double}      .  (缺失值)
	{cmd:string}      ""
	{it:classname}   按类定义指定
	{cmd:array}       空，未定义元素的数组


{marker specifying_initialization}{...}
{title:4.3 指定初始化}

{pstd}
您可以在 {it:classname}{cmd:.class} 中指定成员变量的初始值。为此，您在标识符后输入一个等号，然后输入初始值。例如，

	{hline 33} begin {cmd:todolist.class} {hline}
	{cmd}version {ccl stata_version}
	class todolist {
			double  n    = 0
			string  name = "nobody"
			array   list = {"show second syntax", "mark as done"}
			actions x    = .actions.new {txt:{it:arguments}}
	}{txt}
	{hline 33} end {cmd:todolist.class} {hline}

{pstd}
初始化规则如下：

{phang2}
{cmd:double} {it:membervarname} = ...{break}
等号后，您可以输入任意数字或表达式。要将成员变量初始化为缺失值 ({cmd:.}, {cmd:.a}, {cmd:.b}, ...,
{cmd:.z})，您必须将缺失值括在括号中。示例包括

{pmore3}
{cmd:double n = 0}{break}
{cmd:double a = (.)}{break}
{cmd:double b = (.b)}{break}
{cmd:double z = (2+3)/sqrt(5)}

{pmore2}
或者，在等号后，您可以指定要复制的成员变量的标识符或要运行的程序，只要成员变量是 {cmd:double}，或者程序返回一个 {cmd:double}。如果指定了需要参数的成员程序，则必须在标识符后指定这些参数。示例包括，

{pmore3}
{cmd:double n = .clearcount}{break}
{cmd:double a = .gammavalue 4 5 2}{break}
{cmd:double b = .color.cvalue, color(green)}

{pmore2}
标识符在全局上下文中被解释，而不是正在定义的类上下文。因此，{cmd:.clearcount}、{cmd:.gammavalue} 和 {cmd:.color.cvalue} 必须存在于全局上下文中。

{phang2}
{cmd:string} {it:membervarname} = ...{break}
    等号后，您输入用引号括起来的成员变量初始值，既可以是简单字符串 ({cmd:"} 和 {cmd:"}) 也可以是复合字符串 ({cmd:`"} 和 {cmd:"'})。示例包括，

{pmore3}
{cmd:string name = "nobody"}{break}
{cmd:string s = `"quotes "inside" strings"'}{break}
{cmd:string a = ""}

{pmore2}
您也可以指定字符串表达式，但必须用括号括起来。

{pmore3}
{cmd:string name = ("no" + "body")}{break}
{cmd:string b    = (char(11))}

{pmore2}
或者，您可以指定要复制的成员变量的标识符或要运行的成员程序，只要成员变量是 {cmd:string} 或程序返回一个 {cmd:string}。如果指定了需要参数的成员程序，则必须在标识符后指定这些参数。示例包括

{pmore3}
{cmd:string n = .defaultname}{break}
{cmd:string a = .recapitalize "john smith"}{break}
{cmd:string b = .names.defaults, category(null)}

{pmore2}
标识符在全局上下文中被解释，而不是正在定义的类上下文。因此，{cmd:.defaultname}、{cmd:.recapitalize} 和 {cmd:.names.defaults} 必须存在于全局上下文中。

{phang2}
{cmd:array} {it:membervarname} = {cmd:{c -(}} ... {cmd:{c )-}}{break}
    等号后，您输入一组元素，用大括号括起来 ({cmd:{c -(}} 和 {cmd:{c )-}})，每个元素用逗号分隔。

{pmore2}
    如果元素用引号括起来（简单或复合），则相应的数组元素定义为 {cmd:string}，其内容由指定。

{pmore2}
    如果元素是一个不包括 {cmd:.}、{cmd:.a}、...、{cmd:.z} 的常量数字，则相应数组元素定义为 {cmd:double}，并用指定的数字填充。

{pmore2}
    如果元素用括号括起来，则括号中出现的内容将作为表达式计算。如果表达式计算结果为字符串，则相应数组元素定义为 {cmd:string}，并填写结果。如果表达式计算为数字，则相应数组元素定义为 {cmd:double}，并填写结果。缺失值可以通过用括号括起来来分配给数组元素。

{pmore2}
    以句点开头的元素在全局上下文中被解析为对象标识符。该对象可以是成员变量或成员程序。相应数组元素的类型定义为指定的成员变量的类型或成员程序返回的类型。如果指定了需要参数的成员程序，则参数可以在标识符后指定，但整个语法元素必须用方括号 ({cmd:[} 和 {cmd:]}）括起来。

{pmore2}
    如果元素为空，则相应的数组元素将保留为未定义。

{pmore2}
    示例包括

{pmore3}
    {cmd:array mixed = {c -(}1, 2, "three", 4{c )-}}{break}
    {cmd:array els   = {c -(}.box.new, , .table.new{c )-}}{break}
    {cmd:array rad   = {c -(}[.box.new 2 3], , .table.new{c )-}}

{pmore2}
    请注意最后两个初始化中的双逗号。第二个元素未定义。一些程序员会编码

{pmore3}
    {cmd:array els   = {c -(}.box.new, /*nothing*/, .table.new{c )-}}{break}
    {cmd:array rad   = {c -(}[.box.new 2 3], /*nothing*/, .table.new{c )-}}

{pmore2}
    以强调空初始化。


{phang2}
{it:classname membervarname} {cmd:=} ...{break}
在等号后，您指定要复制的成员变量的标识符或要运行的成员程序，只要成员变量是 {it:classname} 类型或成员程序返回 {it:classname} 类型。如果指定了需要参数的成员程序，则参数必须在标识符后指定。在这两种情况下，标识符将被解释为全局上下文的内容。示例包括

{pmore3}
    {cmd:box mybox1 = .box.new}{break}
    {cmd:box mybox2 = .box.new 2 4 7 8, tilted}

{pstd}
所有类型都可以通过复制其他成员变量或运行其他成员程序来初始化。这些其他成员变量和成员程序必须在全局上下文中定义，而不是类上下文。在这种情况下，各初始化值或程序实际上只在类定义被读取时复制或运行一次，并记录这些值以供日后使用。这使得初始化迅速。然而，这也意味着

{phang2}
1.  如果在一个类定义中，例如，{cmd:border.class}，您定义了一个成员变量，并且该变量通过 {cmd:.box.new} 初始化，如果此时您创建了 1,000 个 {cmd:border} 的实例，您将发现 {cmd:.box.new} 仅运行一次。如果 {cmd:.box.new} 随着时间的推移改变了其返回的内容（可能是由于某个系统状态的变化），那么创建新的边界对象时，初始值将不会改变。

{phang2}
2.  如果在 {cmd:border.class} 中，您定义了一个成员变量，该成员变量初始化为 {cmd:.system.curvals.no_of_widgets}，我们假设这是另一个成员变量，即使 {cmd:.system.curvals.no_of_widgets} 被更改，{cmd:border.class} 的新实例也将始终具有相同的值——该值是 {cmd:.system.curvals.no_of_widgets} 在读取 {cmd:border.class} 时的当前值。

{pstd}
在以上两个示例中，描述的方法（即，通过预录的方式来指定初始值）是不够的。这种方法仅适用于指定常量初始值。


{marker specifying_initialization2}{...}
{title:4.4 指定初始化 2, .new}

{pstd}
另一种指定成员变量初始化方式是在类中定义一个 {cmd:.new} 程序。

{pstd}
要创建一个类的新实例，您输入

	{cmd:.}{it:name} {cmd:= .}{it:classname}{cmd:.new}

{pstd}
{cmd:.new} 实际上是 {it:classname} 的一个成员程序，只是一个内置的程序，您不必定义它就可以使用。内置的 {cmd:.new} 为实例分配内存，并填充成员变量的默认或指定初始值。如果您定义了 {cmd:.new}，则您的 {cmd:.new} 将在内置的 {cmd:.new} 完成其工作后运行。

{pstd}
例如，我们的 {cmd:coordinate.class} 可以通过添加一个 {cmd:.new} 成员程序来改进：

	{hline 33} begin {cmd:coordinate.class} {hline}
	{cmd}version {ccl stata_version}
	class coordinate {
			double	x
			double	y
	}

	program .new
			if "`0'" != "" {
				.set `0'
			}
	end

	program .set
			args x y
			.x = `x'
			.y = `y'
	end{txt}
	{hline 33} end {cmd:coordinate.class} {hline}

{pstd}
通过这个添加，我们可以键入

	{cmd:.coord = .coordinate.new}
	{cmd:.coord.set 2 4}

{pstd}
或者可以键入

	{cmd:.coord = .coordinate.new 2 4}

{pstd}
我们已经安排 {cmd:.new} 接受参数——这里是可选参数——指定新点的位置。我们编写了代码，以便 {cmd:.new} 调用 {cmd:.set}，尽管我们同样可以编写代码，以便 {cmd:.set} 的代码出现在 {cmd:.new} 中，然后删除 {cmd:.set} 程序。实际上，采用两部分构造是可取的，因为这样我们也拥有一个可以重置现有类内容的函数。

{pstd}
总之，通过定义自己的 {cmd:.new}，您可以安排任何复杂的类初始化，如果需要，这一初始化可以是指定参数的一个函数。

{pstd}
{cmd:.new} 程序不需要返回任何内容；见 {hi:{help classman##member_programs:成员程序的返回值}}。

{pstd}
{cmd:.new} 程序不仅限于填充初始值。您可以按照自己的要求编写 {cmd:.new} 的程序；{cmd:.new} 会在每次创建新实例时运行，唯一的例外是：当实例被创建为另一个实例的成员时（在这种情况下，结果会被预先记录）。


{marker alternative_way_of_declaring}{...}
{title:4.5 另一种声明方式}

{pstd}
除了语法

	{it:type} {it:name} [{cmd:=} {it:initialization}]

{pstd}
其中 {it:type} 是 {cmd:double}、{cmd:string}、{it:classname} 或 {cmd:array} 之一，还有一种替代语法

	{it:name} {cmd:=} {it:initialization}

{pstd}
即，当您指定成员变量如何初始化时，可以省略指定 {it:type}，因为，这样成员变量的类型可以通过初始化推断出来。


{marker scope}{...}
{title:4.6 作用域}

{pstd}
在我们迄今为止看到的示例中，成员变量是唯一属于实例的。例如，如果我们有

	{cmd:.coord1 = .coordinate.new}
	{cmd:.coord2 = .coordinate.new}

{pstd}
则 {cmd:.coord1} 的成员变量与 {cmd:.coord2} 的成员变量无关。如果我们改变了 {cmd:.coord1.x}， {cmd:.coord2.x} 将保持不变。

{pstd}
类还可以拥有跨所有类实例共享的变量。考虑

	{hline 33} begin {cmd:coordinate2.class} {hline}
	{cmd}version {ccl stata_version}
	class coordinate2 {
			classwide:
				double x_origin = 0
				double y_origin = 0
			instancespecific:
				double x = 0
				double y = 0
	}
	{txt}{hline 33} end {cmd:coordinate2.class} {hline}

{pstd}
在这个类定义中，{cmd:.x} 和 {cmd:.y} 像在 {cmd:coordinate.class} 中一样——它们是唯一属于实例的。然而，{cmd:.x_origin} 和 {cmd:.y_origin} 是跨类的所有实例共享的。这意味着，如果我们输入

	{cmd:.ac = .coordinate2.new}
	{cmd:.bc = .coordinate2.new}

{pstd}
那么 {cmd:.x_origin} 和 {cmd:.y_origin} 只有一份副本。如果我们在 {cmd:.ac} 中改变 {cmd:.x_origin}，

	{cmd:.ac.x_origin = 2}

{pstd}
我们会发现 {cmd:.bc.x_origin} 也同样被更改。这是因为 {cmd:.ac.x_origin} 和 {cmd:.bc.x_origin} 实际上是同一个变量。

{pstd}
类宽变量的初始化效果与特定于实例的变量稍有不同。在 {cmd:coordinate2.class} 中，我们指定 {cmd:.origin_x} 和 {cmd:.origin_y} 都初始化为 0，因此在输入 "{cmd:.ac = .coordinate2.new}" 后创建该类的第一个实例时，它们的值也都是 0。然而，那之后， {cmd:.origin_x} 和 {cmd:.origin_y} 不会被重新初始化，因为它们不需要被重新创建，因为它们是共享的。（这并不是完全准确的，因为一旦最后一个 {cmd:coordinate2} 实例被销毁，这些变量将在下次创建新的第一个实例时需要重新初始化。）

{pstd}
类宽变量与特定于实例的变量一样，可以是任何类型。我们可以定义

	{hline 33} begin {cmd:supercoordinate.class} {hline}
	{cmd}version {ccl stata_version}
	class supercoordinate {
			classwide:
				coordinate  origin
			instancespecific:
				coordinate  pt
	}
	{txt}{hline 33} end {cmd:supercoordinate.class} {hline}

{pstd}
限定符 {cmd:classwide:}{space 1}和 {cmd:instancespecific:}{space 1} 用于指定后续成员变量的作用域。当未指定时，默认假设为 {cmd:instancespecific:}{space 1}。

{marker adding_dynamically}{...}
{title:4.7 动态添加}

{pstd}
一旦类的实例存在，您可以向其添加新的（特定于实例的）成员变量。执行此操作的语法为

	{it:name} {cmd:.Declare} {it:attribute_declaration}

{pstd}
其中 {it:name} 是实例的标识符，{it:attribute_declaration} 是任何有效的属性声明，例如

	{cmd:double}      {it:varname}
	{cmd:string}      {it:varname}
	{cmd:array}        {it:varname}
	{it:classname}   {it:varname}

{pstd}
此外，我们可以包括 {cmd:=} 和初始化信息，如在上面的 {hi:{help classman##specifying_initialization:指定初始化}} 中定义的那样。

{pstd}
例如，我们可能从

	{cmd:.coord = .coordinate.new}

{pstd}
开始，发现我们想携带与特定实例 {cmd:.coord} 一起的一些额外信息。这里我们想携带一些颜色信息，将在稍后使用，而我们手头有 {cmd:color.class}，它定义了我们对 {cmd:color} 的意思。我们可以输入

	{cmd:.coord.Declare color mycolor}

{pstd}
甚至可以输入

	{cmd:.coord.Declare color mycolor = .color.new, color(default)}

{pstd}
以便使新类实例以我们希望的方式初始化。执行此命令后，{cmd:.coord} 现在包含 {cmd:.coord.color} 和 {cmd:color} 提供的所有第三层或更高的标识符。我们仍然可以在 {cmd:.coord} 上调用 {cmd:coordinate} 的成员程序，对 {cmd:.coord} 来说，它看起来就像一个 {cmd:coordinate}，因为它们不知道额外的信息（尽管如果他们制作了 {cmd:.coord} 的副本，该副本将包括额外的信息）。我们可以在主程序和我们编写的子程序中使用额外的信息。

{p 8 8 6}
{it:技术说明：}
与在 {cmd:class} {cmd:{c -(} {c )-}} 语句中声明成员变量一样，当您指定初始化时，您可以省略指定 {it:type}。上述代码中，以下也是允许的：

{pmore2}
{cmd:.coord.Declare mycolor = .color.new, color(default)}


{marker specifying_initialization3}{...}
{title:4.8 高级初始化, .oncopy}

{pstd}
高级初始化是一个高级概念，我们仅在类存储对类系统外部项目的引用时才需关注。在这种情况下，类系统对这些项目的内容一无所知，只知道它们的名称。我们必须自己管理这些项目的内容。

{pstd}
假设我们的坐标类存储的不是标量坐标，而是包含坐标的 Stata 变量的名称。当我们创建这样一个类的副本时，

	{cmd:.coord = .coordinate.new 2 4}
	{cmd:.coordcopy = .coord}

{pstd}
{cmd:.coordcopy} 将包含持有坐标的变量名称的副本，但变量本身不会被复制。为了与所有其他对象的处理方法保持一致，我们可能希望将变量的内容复制到新的变量中。

{pstd}
与 {cmd:.new} 一样，我们可以定义一个 {cmd:.oncopy} 成员程序，它将在默认的复制操作完成后运行。我们可能需要通过内置的 {cmd:.oncopy_src} 引用复制的源对象，该函数返回源对象的键。

{pstd}
让我们编写 coordinate 类的开头，使用 Stata 变量存储坐标向量。

	{hline 33} begin {cmd:varcoordinate.class} {hline}
	{cmd}version {ccl stata_version}
	class varcoordinate {
		classwide:
			n = 0

		instancespecific:
			string	x
			string	y
	}

	program .new
			.nextnames
			if "`0'" != "" {
				.set `0'
			}
	end

	program .set
			args x y
			replace `.x' = `x'
			replace `.y' = `y'
	end

	program .nextnames
			.n = `.n' + 1
			.x = "__varcorrd_vname_`.n'"
			.n = `.n' + 1
			.y = "__varcorrd_vname_`.n'"

			gen `.x' = .
			gen `.y' = .
	end

	program .oncopy
		.nextnames
		.set `.`.oncopy_src'.x' `.`.oncopy_src'.y'
	end{txt}
	{hline 33} end {cmd:varcoordinate.class} {hline}


{pstd}
这个类比我们之前看到的要复杂得多。我们将使用自己独特的变量名来存储 x 和 y 坐标变量。为了确保我们不会尝试重用相同的名称，我们使用类宽计数变量 {cmd:.n} 为这些变量编号。每当创建新实例时，唯一的 x 和 y 坐标变量就会被创建，并用缺失值填充。这项工作由 {cmd:.nextnames} 完成。

{pstd}
{cmd:.set} 看起来与 {cmd:.varcoordinates} 中的类似，除了我们现在要存储来自指定变量的值到我们的坐标变量中。

{pstd}
{cmd:.oncopy} 成员函数创建独特的名称以保存变量，使用 {cmd:.nextnames}，然后使用 {cmd:.set} 复制坐标变量的内容。

{pstd}
现在，当我们键入

	{cmd:.coordcopy = .coord},

{pstd}
{cmd:.coordcopy} 中的 x 和 y 坐标变量将与 {cmd:.coord} 中的变量不同且具有各自的值。

{pstd}
{cmd:varcoordinate} 类目前尚未执行任何有趣的操作，除了下面一节中的示例，我们不会进一步开发它。


{marker destructors}{...}
{title:4.9 高级清理, 析构函数}

{pstd}
我们很少需要关注在删除或替换时移除的对象。

{pstd}
当我们输入

	{cmd:.a = .}{it:classname}{cmd:.new}
	{cmd:.b = .}{it:classname}{cmd:.new}
	{cmd:.a = .b}

{pstd}
最后一条命令导致原始对象 {cmd:.a} 被销毁，并用 {cmd:.b} 替换。类系统处理这一任务，通常这是我们想要的。唯一的例外是持有类系统外部项目的对象，例如我们在 {cmd:destructor} 类中的坐标变量。

{pstd}
当我们需要在系统删除对象之前执行操作时，必须在类文件中编写 {cmd:.destructor} 成员程序。我们 {cmd:varcoordinate} 类的 {cmd:.destructor} 特别简单；它删除坐标变量。

	{hline 30} {cmd:varcoordinate.class} -- {cmd:.destructor} {hline}
	{cmd}program .destructor
			capture drop `.x'
			capture drop `.y'
	end{txt}
	{hline 30} {cmd:varcoordinate.class} -- {cmd:.destructor} {hline}


{marker inheritance}{...}
{title:5. 继承}

{pstd}
一个类定义可以从其他类定义中继承。这通过包括 {cmd:inherit(}{it:classnamelist}{cmd:)} 选项来完成：

	{hline 33} begin {it:newclassname}{cmd:.class} {hline}
	{cmd}version {ccl stata_version}
	class {txt:{it:newclassname}} {
			{txt:...}
	}, inherit({txt:{it:classnamelist}})
	program {txt:...}
			{txt:...}
	end
	{txt}...
	{hline 33} end {it:newclassname}{cmd:.class} {hline}

{pstd}
{it:newclassname} 继承了 {it:classnamelist} 中类的所有成员变量和成员程序。通常， {it:classnamelist} 包含一个类名。当 {it:classnamelist} 包含多个类名时，这被称为多重继承。

{pstd}
确切地说， {it:newclassname} 继承了指定类的所有成员变量，除了在 {it:newclassname} 中明确定义的那些，在这种情况下，{it:newclassname}{cmd:.class} 中提供的定义优先。命名冲突被认为是不好的风格。

{pstd}
对于多重继承，可能会出现这样一种情况，即虽然某个成员变量没有在 {it:newclassname} 中定义，但在多个“父类” ({it:classnamelist}) 中定义。那么，最右边的父类中的定义将起作用。这同样应该避免，因为几乎总会导致程序的中断。

{pstd}
{it:newclassname} 也继承了指定类中的所有成员程序。在这里，名称冲突不被视为不良风格，实际上，成员程序的重定义是使用继承的一个主要原因。

{pstd}
{it:newclassname} 继承了来自 {it:classnamelist} 的所有程序——即使这些程序具有共同的名称——并提供了一种指定您希望运行的程序的方法。如果是单重继承，假如 {cmd:.zifl} 在两个类中都被定义，则将 {cmd:.zifl} 视为指令以执行 {cmd:.zifl}，如在 {it:newclassname} 中定义，并且 {cmd:.Super.zifl} 被认为是执行 {cmd:.zifl}，如在父类中定义的指令。

{pstd}
在多重继承的情况下， {cmd:.zifl} 被视为指令以执行 {cmd:.zifl}，如在 {it:newclassname} 中定义，以及 {cmd:.Super(}{it:classname}{cmd:).zifl} 被视为指令执行 {cmd:.zifl}，如在父类 {it:classname} 中定义。

{pstd}
使用继承的一个好理由是“窃取”一个类并将其修改以适应您的用途。假设您已有 {cmd:alreadyexists.class}，并希望从中创建 {cmd:alternative.class}，这是一个与 {cmd:alreadyexists.class} 很相似的类——如此相似，以至于可以在使用 {cmd:alreadyexists.class} 的任何地方使用——但它做某件事情略有不同。也许您正在编写一个图形系统，{cmd:alreadyexists.class} 定义了有关用来标记图表点的圆的所有内容，现在您想要创建 {cmd:alternate.class}，做同样的事情，不过这次是对于小实心圆。因此，只有一个成员程序 {cmd:alreadyexists.class} 需要更改：如何绘制符号。

{pstd}
无论如何，我们将假设 {cmd:alternative.class} 与 {cmd:alreadyexists.class} 一致，唯一的区别是它改善或改变了成员函数 {cmd:.zifl}。在这种情况下，创建以下内容并不罕见：

	{hline 33} begin {cmd:alternative.class} {hline}
	{cmd}version {ccl stata_version}
	class alternative {
	}, inherit(alreadyexists)
	program .zifl
			{txt:...}
	end
	{txt}{hline 33} end {cmd:alternative.class} {hline}

{pstd}
此外，在编写 {cmd:.zifl} 时，您可能希望调用 {cmd:.Super.zifl}，以便旧的 {cmd:.zifl} 执行它的任务，您所需做的只是编码额外内容（例如填充圆圈）。在上面的示例中，我们没有向类添加任何成员变量。

{pstd}
也许新的 {cmd:.zifl} 需要一个新的成员变量——一个 {cmd:double}——我们称之为 {cmd:.sizeofresult}。然后我们可能编码如下：

	{hline 33} begin {cmd:alternative.class} {hline}
	{cmd}version {ccl stata_version}
	class alternative {
			double   sizeofresult
	}, inherit(alreadyexists)
	program .zifl
			{txt:...}
	end
	{txt}{hline 33} end {cmd:alternative.class} {hline}

{pstd}
现在，让我们考虑新的变量 {cmd:.sizeofresult} 的初始化。也许将其初始化为缺失值是足够的。然后我们的代码是足够的。假设我们希望将其初始化为 5。那么我们可以包括一个初始化语句。也许我们需要一些更复杂的操作，这必须在 {cmd:.new} 中处理。在这种情况下，我们必须使用 {cmd:.Super} 修饰符来调用继承类的 {cmd:.new} 程序：

	{hline 33} begin {cmd:alternative.class} {hline}
	{cmd}version {ccl stata_version}
	class alternative {
			double   sizeofresult
	}, inherit(alreadyexists)
	program .new
			{txt:...}
			.Super.new
			{txt:...}
	end

	program .zifl
			{txt:...}
	end
	{txt}{hline 33} end {cmd:alternative.class} {hline}


{marker member_programs}{...}
{title:6. 成员程序的返回值}

{pstd}
成员程序可以选择返回“值”，这些值可以是 {cmd:double}、{cmd:string}、{cmd:array} 或类实例。这些返回值可以用于赋值，因此您可以编写代码

	{cmd:.len    = .li.length}
	{cmd:.coord3 = .li.midpoint}

{pstd}
仅仅因为成员程序返回某东西，并不意味着它必须被消耗。 {cmd:.li.length} 和 {cmd:.li.midpoint} 依然可以直接执行，

	{cmd:.li.length}
	{cmd:.li.midpoint}

{pstd}
然后返回的值被忽略。({cmd:.midpoint} 和 {cmd:.length} 是我们在 {cmd:line.class} 中包含的成员程序。 {cmd:.length} 返回一个 {cmd:double}，而 {cmd:.midpoint} 返回一个 {cmd:coordinate}）。

{pstd}
您通过 {cmd:class exit} 命令使成员程序返回值；见 {manhelp class_exit P:class exit}。

{pstd}
不要将返回值与返回代码混淆，所有 Stata 程序甚至成员程序都设置返回代码。成员程序在执行时退出时

	条件                       返回值    返回代码
	{hline 64}
	{cmd:class exit} 有参数       按照指定      0
	{cmd:class exit} 无参数       无           0
	{cmd:exit} 无参数            无           0
	{cmd:exit} 有参数            无           如指定
	{cmd:error}                    无           如指定
	出现错误的命令           无           如适当
	{hline 64}

{pstd}
上述任何方法都是有效的退出成员程序的方法，尽管最后一种可能最好避免。无参数的 {cmd:class exit} 的效果与无参数的 {cmd:exit} 相同；无论您编码哪个都没有关系。

{pstd}
如果成员程序不返回值，结果就好像它返回了一个包含 {cmd:""}（空字符串）的 {cmd:string}。

{pstd}
此外，成员程序还可以在 {cmd:r()}、{cmd:e()} 和 {cmd:s()} 中返回值，就像常规程序一样。使用 {cmd:class exit} 返回类结果不会阻止成员程序也成为 {cmd:r}-类、{cmd:e}-类或 {cmd:s}-类。


{marker assignment}{...}
{title:7. 赋值}

{pstd}
考虑定义 {cmd:.coord}

	{cmd:.coord = .coordinate.new}

{pstd}
这是一个赋值的示例。创建了一个新的 {cmd:coordinate} 实例并分配给 {cmd:.coord}。同样，

	{cmd:.coord2 = .coord}

{pstd}
是赋值的另一个示例。对 {cmd:.coord} 进行了复制并分配给 {cmd:.coord2}。

{pstd}
赋值不仅限于顶层名称。以下也是有效的赋值示例：

	{cmd:.coord.x = 2}
	{cmd:.li.c0 = .coord}
	{cmd:.li.c0.x = 2+2}
	{cmd:.todo.name = "Jane Smith"}
	{cmd:.todo.n = 2}
	{cmd:.todo.list[1] = "Turn in report"}
	{cmd:.todo.list[2] = .li.c0}

{pstd}
在每种情况下，右侧的内容被评估，并将副本放置在指定的位置。基于程序返回值的赋值也是允许的，因此以下也是有效的：

	{cmd:.coord.x = .li.length}
	{cmd:.li.c0 = .li.midpoint}

{pstd}
{cmd:.length} 和 {cmd:.midpoint} 是 {cmd:line.class} 的成员程序，而 {cmd:.li} 是 {cmd:line} 的一个实例。在第一个示例中，{cmd:.li.length} 返回一个 {cmd:double}，并且该 {cmd:double} 被赋值给 {cmd:.coord.x}。在第二个示例中，{cmd:.li.midpoint} 返回一个 {cmd:coordinate}，并且该 {cmd:coordinate} 被赋值给 {cmd:.li.c0}。

{pstd}
同样允许的还有

	{cmd:.todo.list[3] = .color.cvalue, color(green)}
	{cmd:.todo.list = {"Turn in report", .li.c0, [.color.cvalue, color(green)]}}

{pstd}
在这两个示例中，运行 {cmd:.color.cvalue, color(green)} 的结果被赋值给 {cmd:.todo.list} 的第三个数组元素。


{marker type_matching}{...}
{title:7.1 类型匹配}

{pstd}
上述所有示例都是有效的，因为要么 (1) 创建了一个新的标识符，要么 (2) 标识符之前存在且与被赋值标识符的类型相同。

{pstd}
例如，以下将无效：

	{cmd:.newthing = 2}           // 到目前为止有效 ...
	{cmd:.newthing = "new"}       // ... 无效

{pstd}
第一行是有效的，因为 {cmd:.newthing} 之前不存在。然而，在第一次赋值后，{cmd:.newthing} 存在且类型为 {cmd:double}。这导致第二次赋值无效，错误为 "{err:type mismatch}"; r(109)。

{pstd}
以下也是无效的：

	{cmd:.coord.x = .li.midpoint}
	{cmd:.li.c0 = .li.length}

{pstd}
它们无效的原因是 {cmd:.li.midpoint} 返回一个 {cmd:coordinate}，而 {cmd:.coord.x} 是一个 {cmd:double}，而 {cmd:.li.length} 返回一个 {cmd:double}，而 {cmd:.li.c0} 是一个 {cmd:coordinate}。


{marker arrays}{...}
{title:7.2 数组和数组元素}

{pstd}
语句

	{cmd:.todo.list[1] = "Turn in report"}
	{cmd:.todo.list[2] = .li.c0}
	{cmd:.todo.list[3] = ".color.cvalue, color(green)}

{pstd}
以及

	{cmd:.todo.list = {"Turn in report", .li.c0, [.color.cvalue, color(green)]}}

{pstd}
并不具有相同的效果。第一个重新分配了元素 1、2、3，并将任何其他定义的元素保持不变。第二个则用一个仅定义元素 1、2 和 3 的数组替换整个数组。

{pstd}
在分配后，可以使用 {cmd:.Arrdropel} 清除一个元素。例如，要取消分配 {cmd:.todo.list[1]}，您可以输入

	{cmd:.todo.list[1].Arrdropel}

{pstd}
清除一个元素不会影响数组的其他元素。在上述示例中， {cmd:.todo.list[2]} 和 {cmd:.todo.list[3]} 继续存在。

{pstd}
新元素和现有元素可以自由赋值和重新赋值，唯一的例外是，如果数组元素已经存在，则只能重新赋值为相同类型的值。

	{cmd:.todo.list[2] = .coordinate[2]}

{pstd}
但

	{cmd:.todo.list[2] = "Clear the coordinate"}

{pstd}
将不被允许，因为 {cmd:.todo.list[2]} 是一个 {cmd:coordinate}，而 {cmd:"Clear the coordinate"} 是一个 {cmd:string}。如果您希望将数组元素重新分配为不同的类型，则必须首先删除现有的数组元素，然后再赋值。

	{cmd:.todo.list[2].Arrdropel}
	{cmd:.todo.list[2] = "Clear the coordinate"}


{marker lvalues_and_rvalues}{...}
{title:7.3 lvalues 和 rvalues}

{pstd}
尽管已经提到了一切，赋值的语法是

	{it:lvalue} {cmd:=} {it:rvalue}

{pstd}
{it:lvalue} 代表可能出现在等号左边的内容，而 {it:rvalue} 代表可能出现在右边的内容。

{pstd}
指定 {it:lvalue} 的语法为

	{cmd:.}{it:id}[{cmd:.}{it:id}[...]]

{pstd}
其中 {it:id} 可以是一个 {it:name} 或 {it:name}{cmd:[}{it:exp}{cmd:]}, 后者是指定数组元素的语法，并且 {it:exp} 必须计算为数字；如果 {it:exp} 计算为非整数，则将其截断。

{pstd}
此外，{it:lvalue} 必须是可赋值，意味着 {it:lvalue} 不能引用一个成员程序；也就是说，{it:id} 的元素不能是程序名称。（在 {it:rvalue} 中，如果指定了程序名称，则必须是最后一个 {it:id}。）

{pstd}
指定 {it:rvalue} 的语法如下：

	{cmd:"}[{it:string}]{cmd:"}
	{cmd:`"}[{it:string}]{cmd:"'}
	{it:#}
	{it:exp}
	{cmd:(}{it:exp}{cmd:)}
	{cmd:.}{it:id}[{cmd:.}{it:id}[...]] [{it:program_arguments}]
	{cmd:{c -(}}{cmd:{c )-}}
	{cmd:{c -(}}{it:el}[{cmd:,}{it:el}[{cmd:,}...]]{cmd:{c )-}}

{pstd}
最后两种语法涉及对数组的赋值，且 {it:el} 可能是

	{it:nothing}
	{cmd:"}[{it:string}]{cmd:"}
	{cmd:`"}[{it:string}]{cmd:"'}
	{it:#}
	{cmd:(}{it:exp}{cmd:)}
	{cmd:.}{it:id}[{cmd:.}{it:id}[...]]
	{cmd:[}{cmd:.}{it:id}[{cmd:.}{it:id}[...]] [{it:program_arguments}]{cmd:]}

{pstd}
让我们逐一考虑每种 {it:rvalue} 的语法：

{phang}
{cmd:"}[{it:string}]{cmd:"} 和 {cmd:`"}[{it:string}]{cmd:"'}{break}
    如果 {it:rvalue} 以双引号（简单或复合）开头，返回内容将是包含 {it:string} 的 {cmd:string}。 {it:string} 的长度可以很长——最多与宏的长度相同。

{phang}
{it:#}{break}
    如果 {it:rvalue} 是数字，不包括缺失值 {cmd:.}、{cmd:.a}、...、{cmd:.z}，返回的内容将是相当于指定数字的 {cmd:double}。

{phang}
{it:exp} 和 {cmd:(}{it:exp}{cmd:)}{break}
    如果 {it:rvalue} 是表达式，则表达式将被计算，并返回结果。如果表达式返回结果为数字，则返回的内容为 {cmd:double}；如果表达式返回结果为字符串，则返回的内容为 {cmd:string}。不允许返回矩阵的表达式。

{p 8 8 2}
    如果表达式的开头不是简单或复合双引号开头，且不以句点后跟任何值或字母开头，则表达式不需用括号括起来。在前面提到的情况下，表达式必须用括号括起来。所有表达式都可以用括号括起来。

{p 8 8 2}
    上述的一个结果是，缺失值字面量必须用括号括起来： {bind:{it:lvalue} {cmd:= (.)}}。

{phang}
{cmd:.}{it:id}[{cmd:.}{it:id}[...]] [{it:program_arguments}]{break}
    如果 {it:rvalue} 以句点开头，则将其解释为对象引用。该对象进行评估并返回。
    {cmd:.}{it:id}[{cmd:.}{it:id}[...]] 可能引用成员变量或成员程序。

{pmore}
    如果 {cmd:.}{it:id}[{cmd:.}{it:id}[...]] 引用成员变量，则返回变量的值。

{pmore}
    如果 {cmd:.}{it:id}[{cmd:.}{it:id}[...]] 引用成员程序，程序将被执行并返回结果。如果成员程序不返回任何内容，则返回的内容将是一个包含 ""（空字符串）的 {cmd:string}。

{pmore}
    如果 {cmd:.}{it:id}[{cmd:.}{it:id}[...]] 引用成员程序，可以在程序名称后指定参数。

{phang}
{cmd:{c -(}}{cmd:{c )-}} 和
{cmd:{c -(}}{it:el}[{cmd:,}{it:el}[{cmd:,}...]]{cmd:{c )-}}{break}
如果 {it:rvalue} 以左大括号开头，返回一个 {cmd:array}。

{pmore}
如果 {it:rvalue} 是 {cmd:{c -(}}{cmd:{c )-}}，返回一个空数组。

{pmore}
    如果 {it:rvalue} 是
    {cmd:{c -(}}{it:el}[{cmd:,}{it:el}[{cmd:,}...]]{cmd:{c )-}}，
    返回的数组包含指定的元素。

{pmore}
    如果元素为 null，对应的数组元素将保持为未定义。

{pmore}
    如果元素为 {cmd:"}[{it:string}]{cmd:"} 或
    {cmd:`"}[{it:string}]{cmd:"'}, 对应的数组元素将定义为 {cmd:string}，其值为 {it:string}。

{pmore}
    如果元素是 {it:#}，不包括缺失值 {cmd:.}、{cmd:.a}、...、{cmd:.z}，则对应的数组元素将定义为 {cmd:double}，其值为指定的数字。

{pmore}
    如果元素是 {cmd:(}{it:exp}{cmd:)}, 则对表达式进行评估，并在此基础上定义相应的数组元素。当表达式返回数字时，该元素的定义为 {cmd:double}；当表达式返回字符串时，该元素的定义为 {cmd:string}。不允许返回矩阵的表达式。

{pmore}
    如果元素为 {cmd:.}{it:id}[{cmd:.}{it:id}[...]] 或 {cmd:[}{cmd:.}{it:id}[{cmd:.}{it:id}[...]] [{it:program_arguments}]{cmd:]，
    则该对象被评估，并且对应数组元素根据返回的内容进行定义。请注意，如果对象是成员程序，并且需要指定参数，则 {it:el} 必须用方括号括起来。

{pmore}
    不允许递归数组定义。

{pstd}
最后，在 
{hi:{help classman##specifying_initialization:指定初始化}} -- 在其中我们讨论了成员变量初始化时 -- 实际上出现在等号右侧的内容是 {
it:rvalue}，并且所有已讨论内容适用。先前的讨论不完全。


{marker assignment_of_reference}{...}
{title:7.4 引用赋值}

{pstd}
考虑两个不同的标识符， {cmd:.}{it:a}{cmd:.}{it:b}{cmd:.}{it:c} 和 {cmd:.}{it:d}{cmd:.}{it:e}，它们具有相同类型。例如，也许两者都是 {cmd:double} 或两者都是 {cmd:coordinate}。当您输入

	{cmd:.}{it:a}{cmd:.}{it:b}{cmd:.}{it:c} {cmd:=} {cmd:.}{it:d}{cmd:.}{it:e}

{pstd}
结果是将 {cmd:.}{it:d}{cmd:.}{it:e} 的值复制到 {cmd:.}{it:a}{cmd:.}{it:b}{cmd:.}{it:c} 中。如果您键入

	{cmd:.}{it:a}{cmd:.}{it:b}{cmd:.}{it:c}{cmd:.ref} {cmd:=} {cmd:.}{it:d}{cmd:.}{it:e}{cmd:.ref}

{pstd}
结果是使 {cmd:.}{it:a}{cmd:.}{it:b}{cmd:.}{it:c} 和 {cmd:.}{it:d}{cmd:.}{it:e} 成为同一个对象。也就是说，如果您稍后更改 {cmd:.}{it:d}{cmd:.}{it:e} 的某个元素， {cmd:.}{it:a}{cmd:.}{it:b}{cmd:.}{it:c} 的相应元素将发生更改，反之亦然。

{pstd}
要理解这一点，可以将成员值视为写在索引卡上的内容。类的每个实例都有自己集合的卡片（假设没有类宽变量）。当您输入

	{cmd:.}{it:a}{cmd:.}{it:b}{cmd:.}{it:c}{cmd:.ref} {cmd:=} {cmd:.}{it:d}{cmd:.}{it:e}{cmd:.ref}

{pstd}
{cmd:.}{it:a}{cmd:.}{it:b}{cmd:.}{it:c} 的卡片被移除，并替换为一个注释，表明使用 {cmd:.}{it:d}{cmd:.}{it:e} 的卡片。因此， {cmd:.}{it:a}{cmd:.}{it:b}{cmd:.}{it:c} 和 {cmd:.}{it:d}{cmd:.}{it:e} 变为同一个对象。

{pstd}
多个对象可以共享引用。如果我们现在编码

	{cmd:.}{it:i}{cmd:.ref} {cmd:=} {cmd:.}{it:a}{cmd:.}{it:b}{cmd:.}{it:c}{cmd:.ref}

{

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <classman.sthlp>}