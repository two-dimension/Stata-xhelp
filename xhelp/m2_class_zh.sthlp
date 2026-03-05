{smcl}
{* *! version 1.3.3  10may2018}{...}
{vieweralsosee "[M-2] class" "mansection M-2 class"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[M-2] 声明" "help m2_declarations_zh"}{...}
{vieweralsosee "[M-2] 结构" "help m2_struct_zh"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[P] class" "help class_zh"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[M-2] 介绍" "help m2_intro_zh"}{...}
{viewerjumpto "语法" "m2_class_zh##syntax"}{...}
{viewerjumpto "描述" "m2_class_zh##description"}{...}
{viewerjumpto "PDF文档链接" "m2_class_zh##linkspdf"}{...}
{viewerjumpto "备注" "m2_class_zh##remarks"}{...}
{viewerjumpto "参考" "m2_class_zh##reference"}
{help m2_class:English Version}
{hline}{...}
{p2colset 1 16 18 2}{...}
{p2col:{bf:[M-2] class} {hline 2}}面向对象编程（类）
{p_end}
{p2col:}({mansection M-2 class:查看完整的PDF手册条目}){p_end}
{p2colreset}{...}


{marker syntax}{...}
{title:语法}

	{cmd:class} {it:classname} [{bf:{help m2_class##def_inheritance:extends}} {it:classname}] {cmd:{c -(}}
		{it:declaration(s)}
	{cmd:{c )-}}


{p 4 4 2}
语法按照以下标题呈现：

	{help m2_class##syn_intro:介绍}
	{help m2_class##syn_example:示例}
	{help m2_class##syn_variables:成员变量的声明}
	{help m2_class##syn_functions:方法（成员函数）的声明和定义}
	{help m2_class##syn_exposure:声明中的默认暴露}

{p 4 4 2}
{it:{help m2_class##description:描述}}
和 
{it:{help m2_class##remarks:备注}}
紧随其后。


{marker syn_intro}{...}
    {title:语法：介绍}

{p 8 8 2}
Stata的两种编程语言，ado和Mata，各自支持面向对象编程。 本手册条目解释了Mata中的面向对象编程。 大多数对面向对象编程感兴趣的用户会希望在Mata中进行编程。 请参阅 {manhelp class P} 了解ado中的面向对象编程。


{marker syn_example}{...}
    {title:语法：示例}

{p 8 8 2}
以下示例将在 {it:{help m2_class##description:描述}}中详细解释。

		{cmd}class coord {
                	real scalar    x, y
                	real scalar    length(), angle()
		}

		real scalar coord::length()
		{
			return(sqrt(x^2 + y^2))
		}

		real scalar coord::angle()
		{
			return(atan2(y, x)*360/(2*pi()))
		}

		class rotated_coord extends coord {
			real scalar	theta
			real scalar     angle()
			void            new()
		}

		real scalar rotated_coord::angle()
		{
			return(super.angle() - theta)
		}

		void rotated_coord::new() 
		{
			theta = 0 
		}{txt}

{p 8 8 2}
    可以以交互方式使用该类：

		{cmd}: b = rotated_coord()
		: b.x = b.y = 1
		: b.angle()                {txt:// 显示的将是 45}
		: b.theta = 30
		: b.angle()                {txt:// 显示的将是 15}{txt}

{p 8 8 2}
    请注意，将类作为函数执行会创建类的实例。
    当在其他函数内部使用该类时，只要将成员实例变量声明为 {cmd:scalar}，就不必显式创建实例：

		{cmd}void myfunc()
		{
			class rotated_coord scalar   b

			b.x = b.y = 1 
			b.angle()          {txt:// 显示的将是 45}
			b.theta = 30
			b.angle()          {txt:// 显示的将是 15}
		}{txt}


{marker syn_variables}{...}
    {title:语法：成员变量的声明}

{p 4 4 2}
    声明的形式为：

        [{it:{help m2_class##def_exposure:暴露}}] {...}
[{bf:{help m2_class##def_static:静态}}] {...}
[{bf:{help m2_class##def_final:最终}}] {...}
{it:matatype}  {it:name} [{cmd:,} {it:name} [{cmd:,} ...]]

{p 8 8 2}
    其中 

                {it:exposure} := { {cmd:public} | {cmd:protected} | {cmd:private} } 

                {it:matatype} := { {it:eltype orgtype} | {it:eltype} | {it:orgtype} } 

                  {it:eltype} :=  {cmd:transmorphic}       {it:orgtype} := {cmd:matrix}
                             {cmd:numeric}                       {cmd:vector}
                             {cmd:real}                          {cmd:rowvector}
                             {cmd:complex}                       {cmd:colvector}
                             {cmd:string}                        {cmd:scalar}
                             {cmd:pointer}
                             {cmd:class} {it:classname}
                             {cmd:struct} {it:structname}

{p 8 8 2}
例如，

		{cmd}class S {
                	real matrix                M
			private real scalar        type 
                	static real scalar         count 
                	class coord scalar         c 
        	}{txt}


{marker syn_functions}{...}
    {title:语法：方法（成员函数）的声明和定义}

{p 4 4 2}
    声明的形式为：

        [{it:{help m2_class##def_exposure:暴露}}] {...}
[{bf:{help m2_class##def_static:静态}}] {...}
[{bf:{help m2_class##def_final:最终}}] {...}
[{bf:{help m2_class##def_virtual:虚拟}}] {...}
{it:matatype}  {it:name}{cmd:()} [{cmd:,} {it:name}{cmd:()} [...]]

{p 8 8 2}
例如，

		{cmd}class T { 
                	...
			real matrix                inverse()
			protected real scalar      type()
                	class coord scalar         c()
        	}{txt}

{p 8 8 2}
    请注意，即使被允许，函数参数也不被声明。

{p 8 8 2}
    成员函数（方法）和成员变量可以共享相同的名称，并且对此没有特别的含义。
    {cmd:type}和{cmd:c}下面是变量，而 
    {cmd:type()}和{cmd:c()}是函数：

		{cmd}class U {
                	real matrix                M
			private real scalar        type 
                	static real scalar         count 
                	class coord scalar         c 

			real matrix                inverse()
			protected real scalar      type()
                	class coord scalar         c()
        	}{txt}

{p 8 8 2}
     成员函数在定义类后独立定义。例如， 

		{cmd}class V {
                	real matrix                M
			private real scalar        type 
                	static real scalar         count 
                	class coord scalar         c 

			real matrix                inverse()
			protected real scalar      type()
                	class coord scalar         c()
        	}

                real matrix V::inverse(...)
                {
                        ...
                }

                real scalar V::type(...)
                {
                        ...
                }

                class coord scalar V::c(...)
                {
                        ...
                }{txt}

{p 8 8 2}
当定义成员函数时，其必须与之前声明时相同的 {it:matatype}，但您省略了 {it:exposure} 
（以及 {cmd:static}、{cmd:final} 和 {cmd:virtual}）。

     
{marker syn_exposure}{...}
    {title:语法：声明中的默认暴露}

{p 8 8 2}
    变量和函数都是 {cmd:public}，除非明确声明为其他状态。  （它们也不是 {cmd:static}、不是 {cmd:final}， 
    也不是 {cmd:virtual}，但这并不属于暴露，因此与本小节无关。）

{p 8 8 8}
    您可以使用任何暴露修饰符 
    {helpb m2_class##public:public}、{helpb m2_class##protected:protected}、 
    和 {helpb m2_class##private:private}，后面跟冒号，来创建
    具有不同默认值的块：

		{cmd}class V {
		    public:
                	real matrix                M
                	static real scalar         count 
                	class coord scalar         c 
			real matrix                inverse()
                	class coord scalar         c()

		    private:
			real scalar                type 

		    protected:
			real scalar                type()
        	}{txt}
    

 
{marker description}{...}
{title:描述}

{p 4 4 2}
{cmd:class} 
提供面向对象编程，也称为类编程，
给Mata。

{p 4 4 2}
一个类是一组相关变量或函数（方法）（或两者）以一个名称捆绑在一起。 类可以根据 {help m2_class##def_inheritance:继承} 从其他类派生。

{pstd}
有关类的更详细描述，请参见
{help m2_class##gould2018sp:Gould (2018)}。

{p 4 4 2}
让我们看看本条目首页的示例的细节
（在标题 {it:{help m2_class##syn_example:示例}}下）：

{p 8 12 2}
1.  首先，我们创建了一个名为 {cmd:coord} 的类。  
    当我们编码 

		{cmd}class coord {
                	real scalar    x, y   
                	real scalar    length(), angle()
		}{txt}

{p 12 12 2}
    我们指定每个 {cmd:coord} 元素存储两个实值，
    我们称之为 {cmd:x} 和 {cmd:y}。 {cmd:coord} 还包含两个
    函数，我们称之为 {cmd:length()} 和 {cmd:angle()}。
    {cmd:length()} 和 {cmd:angle()} 是因为名称末尾有括号的函数，而 {cmd:x} 和 {cmd:y} 
    是因为缺少括号的变量。在行话中， 
    {cmd:x} 和 {cmd:y} 被称为成员变量，而 {cmd:length()} 
    和 {cmd:angle()} 被称为成员函数。

{p 12 12 2}
    上述内容被称为类的定义，定义了 {cmd:coord} 
    类型的蓝图。

{p 12 12 2}
    一个类型为 {cmd:coord} 的变量称为一个 {cmd:coord} 的实例。 假设变量 {cmd:b} 和 {cmd:c} 是 
    {cmd:coord} 的实例，尽管我们尚未解释如何安排该实例。 
    然后 
    {cmd:b.x} 和 {cmd:b.y} 将是 {cmd:b} 的 {cmd:x} 和 {cmd:y} 的值，
    而 {cmd:c.x} 和 {cmd:c.y} 将是 {cmd:c} 的值。
    我们可以通过编码 {cmd:b.length()} 在 {cmd:b}中的值上运行该函数，或者通过编码 {cmd:c.length()} 
    在 {cmd:c} 中的值上运行。

{p 8 12 2} 
2.  接下来，我们定义了 {cmd:coord} 的 {cmd:length()} 和 {cmd:angle()} 
    函数。这些定义为

		{cmd}real scalar coord::length()
		{
			return(sqrt(x^2 + y^2))
		}

		real scalar coord::angle()
		{
			return(atan2(y, x)*360/(2*pi()))
		}{txt}

{p 12 12 2}
    这些函数类似于普通的Mata函数。 这些函数实际上并不需要任何参数，但这并不是必需的。
    成员函数实际上不需要参数，因为函数以类和其概念为基础定义。 
    这正是这里发生的事情。
    第一个函数表示，当某人有一个 {cmd:coord} 的实例时，
    并要求其长度时，则返回 {cmd:x} 和 {cmd:y} 值的平方和的平方根。 
    第二个函数表示，当某人
    要求角度时，返回 {cmd:y} 和 {cmd:x} 的反正切，乘以  {cmd:360/(2*pi())} 
    将结果从弧度转换为度。

{p 8 12 2}
3.  接下来我们定义了另一个新概念， {cmd:rotated_coord}，
    通过扩展（继承自）类 {cmd:coord}：

		{cmd}class rotated_coord extends coord {
			real scalar	theta
			real scalar     angle()
			void            new()
		}{txt}

{p 12 12 2}
    所以想象一个 {cmd:coord}，并将上述视为添加内容。
    除了 {cmd:x} 和 {cmd:y} 的常规 {cmd:coord}， 
    一个 {cmd:rotated_coord} 还具有新变量 {cmd:theta}。 我们还声明添加了两个函数 {cmd:angle()} 和 {cmd:new()}。
    但是等等， {cmd:angle()} 已经存在了！我们实际上所说的是通过显式提及 {cmd:angle()} 
    来改变其定义，函数 {cmd:new()} 确实是新的。

{p 12 12 2}
    请注意，我们没有提及之前存在的函数 {cmd:length()}。
    我们的沉默表示 {cmd:length()} 的概念保持不变。

{p 12 12 2}
    那么什么是 {cmd:rotated_coord}？ 它是一个 {cmd:coord} 加上 
    {cmd:theta} 的附加、重新定义如何计算 {cmd:angle()}、以及新增一个名为 {cmd:new()} 的函数。

{p 12 12 2}
      这是继承的一个例子。 {cmd:class rotated_coord} 是 
      {cmd:class coord} 的扩展。 在面向对象编程中，我们会说 
      "{cmd:class rotated_coord} 继承自 {cmd:class coord}"。 继承其他类的类称为“子类”。

{p 8 12 2}
4.  接下来我们定义了替换和新函数。 定义为

		{cmd}real scalar rotated_coord::angle()
		{
			return(super.angle() - theta)
		}

		void rotated_coord::new() 
		{
			theta = 0 
		}{txt}

{p 12 12 2}
    关于 {cmd:angle()}，我们表示通过减去 {cmd:theta} 从 {cmd:super.angle()} 计算。 
    {cmd:super.angle()} 是对父类定义的函数的引用。
    如果您不熟悉面向对象编程，父母这个词在这个上下文中可能显得奇怪。
    我们从 {cmd:coord} 继承概念以定义 
    {cmd:rotated_coord}，在这方面， {cmd:coord} 是父概念。
    总之，新的角度定义是旧的定义减去 {cmd:theta}，即旋转角度。

{p 12 12 2} 
    {cmd:new()} 是一个特殊函数，并且在意义上有一个特殊名称，因为名称 
    {cmd:new()} 是保留的。  {cmd:new()} 函数（如果存在）是自动调用的函数，
    每当创建该类的新实例时。 我们的 {cmd:new()} 函数表示，当 
    创建一个新的 {cmd:rotated_coord} 实例时，初始化实例的 {cmd:theta} 为 0。

{p 12 12 2}
    好吧，这似乎是个好主意。 但是当我们定义之前的类 {cmd:coord} 时，并没有定义 
    {cmd:new()} 函数。 我们是否忘记了什么？ 可能吧。 当您不指定 {cmd:new()} 
    函数时——当您不指定变量的初始化方式时——它们通常按普通的Mata方式初始化：缺失值。 
    {cmd:x} 和 {cmd:y} 将初始化为缺失。 然而，考虑到我们为 {cmd:rotated_coord} 
    提供的 {cmd:new()} 函数， {cmd:theta} 将初始化为 0。

{p 12 12 2}
    {cmd:new()} 被称为“构造函数”，因为它在创建类的新实例时用于构建或初始化类。

{p 4 4 2}
这完成了我们两个相关类的定义。

{p 4 4 2}
创建 {cmd:coord} 或 {cmd:rotated_coord} 的实例有两种方法。一种主要用于交互使用，另一种用于编程使用。

{p 4 4 2}
如果您交互式地键入 {cmd:a=coord()}（注意括号），您将创建一个 {cmd:coord} 并将其存储在 {cmd:a} 中。  
如果您交互式地键入 {cmd:b=rotated_coord()}，您将创建一个 
{cmd:rotated_coord} 并将其存储在 {cmd:b} 中。  
在第一个示例中，键入 
{cmd:b=rotated_coord()} 正是我们选择做的：

		{cmd}: b = rotated_coord(){txt}

{p 4 4 2}
回想一下， {cmd:rotated_coord} 包含一个 {cmd:x}、{cmd:y} 和 {cmd:theta}。 此时， {cmd:x} 和 {cmd:y} 的值为空， 
而 {cmd:theta} 为 0。 在示例中，我们将 {cmd:b} 的 {cmd:x} 和 {cmd:y} 
值设置为 1，然后询问结果的 {cmd:angle()}：

		{cmd}: b.x = b.y = 1

		: b.angle()
                  45{txt}

{p 4 4 2}
{cmd:b}-点-{cmd:x} 是访问 {cmd:b} 的 {cmd:x} 的值。 
您可以像使用任何实数标量变量一样使用 {cmd:b.x}（和 {cmd:b.y}）。

{p 4 4 2}
如果我们将 {cmd:b} 的 {cmd:theta} 重置为 30 度，那么 {cmd:b} 的角度应该
变为 15 度。 这正是发生的事情：

		{cmd}: b.theta = 30

		: b.angle()
                  15{txt}

{p 4 4 2}
{cmd:b}-点-{cmd:angle()} 是指定要在实例 {cmd:b} 上运行成员函数 
{cmd:angle()} 的方式。 现在您知道为什么成员函数很少有附加参数：它们实际上是传入类的实例，因此可以访问该类的所有成员变量的值。 然而，我们重申，成员函数可以接受附加参数。 如果我们编码

		{cmd}real scalar rotated_coord::angle(real scalar base)
		{
			return(super.angle() - theta - base)
		}{txt}

{p 4 4 2}
那么 {cmd:angle()} 将接受一个参数，并返回相对于 {cmd:base} 的结果。

{p 4 4 2}
使用 {cmd:rotated_coord} 进行交互与在Mata程序内部使用它之间的区别在于，如果我们声明一个变量（假设为 {cmd:b}）为 
{cmd:class} {cmd:rotated_coord} {cmd:scalar}，强调 {cmd:scalar}，那么我们无需编码 {cmd:b=rotated_coord()} 来 
初始填充 {cmd:b}。 编码 {cmd:class} {cmd:rotated_coord} {cmd:scalar} 
{cmd:b} 表示 {cmd:b} 需要初始化，因为它是标量，因此自动发生。 如果我们还编码 
{cmd:b=rotated_coord()}，那也无妨，但在程序执行到这一行时，对我们自己和计算机来说都是浪费时间。

{p 4 4 2}
现在让我们向您展示一些我们在第一个示例中没有展示的内容。
还记得我们为 {cmd:coord} 定义的 {cmd:length()} 吗？还记得我们没有为 {cmd:rotated_coord} 定义 {cmd:length()} 吗？  
还记得我们甚至没有提到 {cmd:length()} 吗？ 就算如此， 
{cmd:length()} 也是一个 {cmd:rotated_coord} 的概念，因为 {cmd:rotated_coord} 
的定义部分来源于 {cmd:coord}，正因为如此，当我们声明 {cmd:rotated_coord} 
时，我们说 

		{cmd:class rotated_coord extends coord}

{p 4 4 2}
继承发生是因为我们说了 {cmd:extends}。 让我们测试一下 {cmd:length()} 是否在我们的 {cmd:rotated_coord} 类实例 {cmd:b} 上有效：

		{cmd}: b.length()
		  1.414213562{txt}

{p 4 4 2}
在上面，继承让我们避免了编写额外的、重复的代码。  

{p 4 4 2}
让我们回顾一下。 首先，我们定义了一个 {cmd:coord}。 从中，我们定义了一个
{cmd:rotated_coord}。 现在您可以使用 {cmd:rotated_coord} 作为起点定义
{cmd:translated_and_rotated_coord}。 这不难。

{p 4 4 2}
类有很多属性、特征和细节，但继承的属性是面向对象编程的核心特征。


{marker linkspdf}{...}
{title:PDF文档链接}

        {mansection M-2 classRemarksandexamples:备注与示例}

{pstd}
以上部分不包括在此帮助文件中。


{marker remarks}{...}
{title:备注}

{p 4 4 2}
备注呈现于以下标题下：

	{help m2_class##notation:符号和行话}
	{help m2_class##rem_declaration:声明和定义类}
	{help m2_class##rem_saving:将类保存到文件中}
	{help m2_class##rem_workflow:工作流程建议}
	{help m2_class##recompile:何时需要重新编译}
	{help m2_class##rem_instances:获取类的实例}
	{help m2_class##rem_new:构造函数和析构函数}
	{help m2_class##def_exposure:设置成员变量和成员函数暴露}
	{help m2_class##def_final:使成员为最终}
	{help m2_class##def_static:使成员为静态}
	{help m2_class##def_virtual:虚拟函数}
	{help m2_class##def_this:使用this引用当前类}
	{help m2_class##def_super:使用super访问父母的概念}
	{help m2_class##def_cast:转换为父类}
	{help m2_class##rem_external:从成员函数访问外部函数}
	{help m2_class##rem_pointers:类的指针}


{marker notation}{...}
{title:符号和行话}

{...}
{...}
{...}
{p 4 8 2}
{it::: (双冒号)}{break}
    双冒号符号在文档中用作简写方式，表示变量或函数是 
    {help m2_class##def_member:成员} 
    属于一个类，并且在两个情况下，双冒号符号也是 
    Mata 理解的语法。

{p 8 8 2}
    {cmd:S}::{cmd:s} 表示变量 {cmd:s} 是类 {cmd:S} 的成员。 {cmd:S}::{cmd:s} 是文档简写。 

{p 8 8 2}
    {cmd:S}::{cmd:f()} 表示函数 {cmd:f()} 是类 {cmd:S} 的成员。 {cmd:S}::{cmd:f()} 
    是文档简写。 
    {cmd:S::f()} 是 Mata 本身在两种情况下理解的内容：

{p 12 16 2}
        1.  符号 {cmd:S::f()} 在定义成员函数时使用。

{p 12 16 2}
        2.  符号 {cmd:S::f()} 可以用作调用 
            {help m2_class##def_static:静态} 成员函数的方法。


{...}
{...}
{...}
{p 4 8 2}
{it:作为实例}{break}
    当我们写 
    "让 {cmd:s} 成为 {cmd:S} 的一个实例" 我们指的是 {cmd:s} 是 
    {help m2_class##def_instance:实例} 类 {cmd:S} 的一个实例，或者 
    等价地，在某些 Mata 代码中， {cmd:s} 被声明为 
    {cmd:class} {cmd:S} {cmd:scalar}。


{...}
{...}
{...}
{p 4 8 2}
{it:类定义}、{it:类声明}{break}
    类定义或声明是类的定义，例如以下内容：

		{cmd}class S {
			private real scalar     a, b
			real scalar             f(), g()
        	}{txt}

{p 8 8 2}
    请注意，声明一个变量类型为 
    {cmd:class S}， 
    例如在 

		{cmd}void myfunction()
		{c -(}
			class S scalar  s
                	...
		{c )-}{txt}

{p 8 8 2}
     不是类定义。 这是一个类实例的声明 {help m2_class##def_instance:实例}。

{...}
{...}
{...}
{marker def_instance}{...}
{p 4 8 2} {it:类实例}、{it:实例}、{it:类 {it:A} 实例}{break}
类实例是根据类定义定义的变量。
在以下代码中 

		{cmd}void myfunction()
		{c -(}
			class S scalar      s
                	real scalar         b
                	...
		{c )-}{txt}

{p 8 8 2}
    {cmd:s} 是一个类实例，或更正式地说，类 {cmd:S} 的一个实例。 "实例"这个术语可以与所有元素类型一起使用，而不仅限于类。 因此， {cmd:b} 是一个 {cmd:real} 的实例。 但是，"实例"一词通常多用于类和结构，因为
    需要区分包含类或结构的变量的定义与类和结构本身的定义。


{...}
{...}
{...}
{marker def_inheritance}{...}
{marker def_child}{...}
{p 4 8 2}
{it:继承}、{it:extends}、{it:子类}、{it:父类}、{it:子类}{break}
    继承是一个类定义使用另一个类的变量和函数的属性，就好像它们是自己的。当一个类这样做时，称为扩展另一个类。
    {cmd:T} 扩展 {cmd:S} 的意思与 {cmd:T} 从 {cmd:S} 继承相同。 {cmd:T} 也被称为 {cmd:S} 的子类。

{p 8 8 2}
    考虑以下定义：

		{cmd}class S {
			real scalar	a, b
			real scalar	f()
		}

		class T extends S { 
			real scalar	c
                        real scalar     g()
		}{txt}

{p 8 8 2}
    让 {cmd:s} 成为 {cmd:S} 的一个实例，让 {cmd:t} 成为 {cmd:T} 的一个实例。
    毫无疑问， {cmd:s.a}、 {cmd:s.b}、 {cmd:s.f()}、 
    {cmd:t.c} 和 {cmd:t.g()} 都存在，因为它们都是明确声明的。 
    正因为 
    继承， {cmd:t.a}、 {cmd:t.b} 和 {cmd:t.f()} 也存在，并且
    它们的存在没有额外代码的书写。

{p 8 8 2}
    如果 {cmd:U} 扩展 {cmd:T} 扩展 {cmd:S}，那么 {cmd:U} 被称为 
    {cmd:T} 的子类和 {cmd:S} 的子类， 
    尽管正式上 {cmd:U} 是 {cmd:S} 的孙类。
    同样， {cmd:S} 和 {cmd:T} 都被称为 {cmd:U} 的父类，尽管正式上 {cmd:S} 是 {cmd:U} 的祖父类。
    通常只需标记父子关系，而不必深入细节。

{...}
{...}
{...}
{marker def_external}{...}
{p 4 8 2}
{it:外部函数}{break}
    外部函数是一个常规函数，例如 
    {cmd:sqrt()}、 {cmd:sin()} 和 {cmd:myfcn()}，定义在类外部，实际上是在所有类之外。
    该函数可以是Mata提供的函数（例如 {cmd:sqrt()} 
    或 {cmd:sin()}），也可能是您编写的函数，例如
    {cmd:myfcn()}。

{p 8 8 2}
    在成员函数的代码中调用外部函数时，会出现问题。 编写成员
    函数时，诸如 {cmd:sqrt()}、 {cmd:sin()}和 
    {cmd:myfcn()} 的引用被假定为对类成员函数的引用（如果存在）。
    如果需要确保引用为外部函数，则需要在函数名之前添加 
    {cmd:::}。

{p 4 4 2}
例如，如果我们想使 {cmd:length()} 被解释为Mata的函数而不是类的，我们可以编码

		{cmd}r = ::length(){txt}

{p 4 4 2}
名称 {cmd:length()} 在这里并没有特别之处。如果类提供了成员函数 {cmd:myfcn()}，并且也有外部定义，并且我们希望使用外部定义的函数，我们可以编码
{cmd:::myfcn()}。  实际上，类并没有提供定义时，也没有必要。 如果我们无法记住类 {cmd:coord} 是否包含 
{cmd:myfcn()}，但我们想要无论如何使用外部的 {cmd:myfcn()}，我们可以编码 {cmd:::myfcn()}。

{p 4 4 2}
在成员函数定义中使用外部函数名称时，在其前面放置双冒号被视为良好风格。  这样，如果您以后返回并给类添加另一成员函数，就不必担心一些已经写好的成员函数假定该名称直接传递到外部定义的函数。

{marker rem_pointers}{...}
{title:指向类的指针}

{p 4 4 2}
就像您可以获得指向任何其他Mata变量的指针一样，您可以获得指向类实例的指针。  回想我们在{help m2_class##ex_virtual:示例}
中提到的动物，当被戳时会发出各种声音。

{p 4 4 2}
为了举例，我们将获得指向 {cmd:cow()} 实例的指针，并通过该指针访问 {cmd:poke()} 函数：

            {cmd}void pokeacow() {
                    class cow scalar                   c
                    pointer(class cow scalar) scalar   p

                    p = &c
                    p->poke()
            }{txt}

{p 4 4 2}
您可以通过类的指针使用操作符 {cmd:->} 访问成员变量和函数，就像您对结构体一样。  请参阅 
{help m2_struct##tagpointer:指向结构的指针}
以获取更多信息。
{p_end}


{marker reference}{...}
{title:参考}

{marker gould2018sp}{...}
{phang}
Gould, W. W. 2018.
{browse "http://www.stata-press.com/books/mata-book/":{it:《Mata手册：一本为严肃程序员及想成为程序员的人的书籍}}。
College Station, TX: Stata Press.
{p_end}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <m2_class.sthlp>}