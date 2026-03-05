{smcl}
{* *! version 1.1.11  19oct2017}{...}
{vieweralsosee "[P] classutil" "mansection P classutil"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[P] class: classman" "help classman_zh"}{...}
{viewerjumpto "语法" "classutil_zh##syntax"}{...}
{viewerjumpto "描述" "classutil_zh##description"}{...}
{viewerjumpto "PDF文档链接" "classutil_zh##linkspdf"}{...}
{viewerjumpto "classutil describe 选项" "classutil_zh##options_describe"}{...}
{viewerjumpto "classutil dir 选项" "classutil_zh##options_dir"}{...}
{viewerjumpto "classutil which 选项" "classutil_zh##options_which"}{...}
{viewerjumpto "备注" "classutil_zh##remarks"}{...}
{viewerjumpto "存储结果" "classutil_zh##results"}
{help classutil:English Version}
{hline}{...}
{p2colset 1 18 20 2}{...}
{p2col:{bf:[P] classutil} {hline 2}}类编程工具{p_end}
{p2col:}({mansection P classutil:查看完整的PDF手册条目}){p_end}
{p2colreset}{...}


{marker syntax}{...}
{title:语法}

    从内存中删除类实例

{p 8 21 2}
{cmd:classutil} {cmd:drop} {it:instance} [{it:instance} [...]]


    描述对象

{p 8 21 2}
{cmd:classutil} {opt d:escribe} {it:object} [{cmd:,} {opt r:ecurse} {opt n:ewok}]


    列出所有定义的对象

{p 8 21 2}
{cmd:classutil} {cmd:dir} [{it:pattern}] [{cmd:,} {cmd:all} {opt d:etail}]


    显示可用类的目录

{p 8 21 2}
{cmd:classutil} {cmd:cdir} [{it:pattern}]


    列出与类名称对应的 .class 文件

{p 8 21 2}
{cmd:classutil} {cmd:which} {it:classname} [{cmd:,} {cmd:all}]
 

{phang}
在哪里

{pmore}
{it:object}、{it:instance} 和 {it:classname} 可以带有或不带有前导句点。

{pmore}
{it:instance} 和 {it:object} 按照 {help classman_zh} 中的定义：
{it:object} 是一个 {it:instance} 或 {it:classname}。

{pmore}
{it:pattern} 按照 {cmd:strmatch()} 函数的定义：
{cmd:*} 表示 0 个或多个字符，{cmd:?}{space 1}表示正好一个字符。

{phang}
命令 {cmd:cutil} 是 {cmd:classutil} 的同义词。


{marker description}{...}
{title:描述}

{pstd}
如果您尚未阅读 {manhelp class P}，请先阅读。{cmd:classutil}
在类系统之外，并提供检查和操作其中内容的工具。

{pstd}
{cmd:classutil} {cmd:drop} 从内存中删除指定的顶级类实例。要删除所有类对象，请键入 {help discard_zh}。

{pstd}
{cmd:classutil} {cmd:describe} 显示对象的描述。

{pstd}
{cmd:classutil} {cmd:dir} 显示所有定义对象的列表。

{pstd}
{cmd:classutil} {cmd:cdir} 显示所有可用类的目录。

{pstd}
{cmd:classutil} {cmd:which} 列出与指定类关联的 {cmd:.class} 文件。


{marker linkspdf}{...}
{title:PDF文档链接}

        {mansection P classutilRemarksandexamples:备注和示例}

{pstd}
上述部分未包含在此帮助文件中。


{marker options_describe}{...}
{title:classutil describe 选项}

{phang}
{opt recurse} 指定 {cmd:classutil} {cmd:describe} 对指定对象内部的任何类实例或定义重复执行。
考虑到您键入 {cmd:classutil} {cmd:describe} {cmd:.myobj} 的情况，
而 {cmd:.myobj} 包含 {cmd:.myobj.c0}，它是一个 {cmd:coordinate}。
如果没有 {opt recurse} 选项，您将收到 {cmd:.myobj.c0} 是一个 {cmd:coordinate} 的通知，
而 {cmd:classutil} {cmd:describe} 将在此停止。

{pmore}
使用 {opt recurse} 选项时，您将收到 {cmd:.myobj.c0} 是一个 {cmd:coordinate} 的通知，
然后 {cmd:classutil} {cmd:describe} 将继续描述 {cmd:.myobj.c0}，
就像您键入了 '{cmd:classutil} {cmd:describe} {cmd:.myobj.c0}' 一样。
如果 {cmd:.myobj.c0} 本身包含类或类实例，它们也将被描述。

{phang}
{opt newok} 仅在描述类时相关，虽然在其他情况下也允许使用 -- 但将被忽略。
{opt newok} 允许在没有类实例存在时描述类。

{pmore}
在被请求描述类时，Stata 需要访问有关该类的信息，
而 Stata 仅在一个或多个类实例存在时才知道该类的详细信息。
如果没有实例，Stata 无法进一步了解 -- 它只知道存在这样一个类。
{opt newok} 指定在这种情况下，Stata 可以通过使用 {cmd:.new} 暂时创建一个该类的实例。
如果不允许这样，那么 Stata 将无法描述该类。
要求您指定 {opt newok} 的唯一原因是，在某些复杂系统中，运行 {cmd:.new} 可能会产生副作用，
尽管在大多数复杂且编写良好的系统中，这种情况不会发生。


{marker options_dir}{...}
{title:classutil dir 选项}

{phang}
{opt all} 指定列出类定义（类）以及顶级实例。

{phang}
{opt detail} 指定提供每个顶级对象的更详细描述。默认仅以表格形式列出对象的名称。


{marker options_which}{...}
{title:classutil which 选项}

{phang}
{opt all} 指定 {cmd:classutil} {cmd:which} 列出搜索路径中与指定名称匹配的所有文件，而不仅仅是第一个（Stata 将使用该文件）。


{marker remarks}{...}
{title:备注}

{pstd}
备注按以下标题呈现：

        {help classutil##remarks1:classutil drop}
        {help classutil##remarks2:classutil describe}
        {help classutil##remarks3:classutil dir}
        {help classutil##remarks4:classutil cdir}
        {help classutil##remarks5:classutil which}


{marker remarks1}{...}
{title:classutil drop}

{pstd}
{cmd:classutil drop} 仅可用于顶级实例，意味着
对象的名称中除前导句点外不应有其他句点。如果 {cmd:.mycoord} 的类型为 {cmd:coordinate}（或
类型为 {cmd:double}），则允许删除 {cmd:.mycoord} 但不允许删除 {cmd:coordinate}（或 {cmd:double}）。
因此，以下每一个都是有效的，假设每一个都不是类定义：

	{cmd:. classutil drop .this}
	{cmd:. classutil drop .mycolor}
	{cmd:. classutil drop .this .mycolor}

{pstd}
以下将是无效的，假设 {cmd:coordinate} 是一个类：

	{cmd:. classutil drop coordinate}

{pstd}
没有必要删除类，因为当删除最后一个实例时，它们会被自动删除。

{pstd}
以下将不被允许，因为它们不是顶级对象：

	{cmd:. classutil drop .this.that}
	{cmd:. classutil drop .mycolor.color.rgb[1]}

{pstd}
第二、第三及更高层次的对象在其顶级对象被删除时也会被删除。

{pstd}
在上述所有示例中，我们显示了带有前导句点的对象，这很典型。
然而，句点可以省略：

	{cmd:. classutil drop this mycolor}

{phang}
{it:技术说明：}
Stata 的图形通过类实现。如果您有显示的图形，请小心不要删除不是您的对象。
如果您删除了系统对象，Stata 将不会崩溃，但 {cmd:graph} 可能会产生一些奇怪的错误消息。
如果您正在开始一个开发项目，最好在开始之前执行 {help discard_zh} -- 这将消除所有对象并清除任何图形。
这样，唯一定义的对象将是您创建的对象。


{marker remarks2}{...}
{title:classutil describe}

{pstd}
{cmd:classutil describe} 呈现指定对象的描述。对象可以是类或实例，并且可以具有任意深度。以下都是有效的：

	{cmd:. classutil describe coordinate}
	{cmd:. classutil describe .this}
	{cmd:. classutil describe .color.rgb}
	{cmd:. classutil describe .color.rgb[1]}

{pstd}
对象可以带有或不带有前导句点指定；这无关紧要。

{pstd}
另请参阅 {opt recurse} 和 {opt newok} 选项的描述。
以下也是被允许的，

	{cmd:. classutil describe coordinate, newok}
	{cmd:. classutil describe line, recurse}
	{cmd:. classutil describe line, recurse newok}


{marker remarks3}{...}
{title:classutil dir}

{pstd}
{cmd:classutil} {cmd:dir} 列出所有当前定义的顶级实例。
注意重点是实例：类定义（{it:classes}）不会列出。 {cmd:classutil dir, all} 将列出所有对象，包括类
定义。

{pstd}
如果指定了选项 {opt detail}，将提供更详细的描述，
但仍然比 {cmd:classutil} {cmd:describe} 提供的要简单。

{pstd}
{it:pattern} 如果指定，将按 Stata 的 {cmd:strmatch()} 函数的定义：
{cmd:*} 表示这里有 0 个或多个字符，而 {cmd:?}{space 1} 表示这里正好有一个字符。
如果指定了 {it:pattern}，将仅列出符合该模式的顶层实例或对象。示例包括：

	{cmd:. classutil dir}
	{cmd:. classutil dir, detail}
	{cmd:. classutil dir, detail all}
	{cmd:. classutil dir c*}
	{cmd:. classutil dir *_g, detail}


{marker remarks4}{...}
{title:classutil cdir}

{pstd}
{cmd:classutil cdir} 列出可用的类。如果没有参数，将列出所有类。如果指定了 {it:pattern}，仅列出与模式匹配的类：

	. {cmd:classutil cdir}
	. {cmd:classutil cdir c*}
	. {cmd:classutil cdir coord*}
	. {cmd:classutil cdir *_g}
	. {cmd:classutil cdir color_?_?_*}

{pstd}
{it:pattern} 按照 Stata 的 {cmd:strmatch()} 函数的定义： {cmd:*} 表示这里有 0 个或多个字符，而 {cmd:?}{space 1} 表示这里正好有一个字符。

{pstd}
{cmd:classutil cdir} 通过在 ado 路径上搜索 {it:*}{cmd:.class} 文件来获取列表；请参阅 {manhelp sysdir P}。


{marker remarks5}{...}
{title:classutil which}

{pstd}
{cmd:classutil} {cmd:which} 确定与类 {it:classname} 关联的 {cmd:.class} 文件，并显示以 {cmd:*!} 开头的文件行。例如，

	{cmd:. classutil which mycolortype}
	C:\ado\personal\mycolortype.class
	*! version 1.0.1

	{cmd:. classutil which badclass}
	{err:file "badclass.class" not found}
	r(601);

{pstd}
{cmd:classutil} {cmd:which} 以标准方式搜索 {cmd:.class} 文件，也就是说，通过查找该文件在 ado 路径上；请参阅 
{manhelp sysdir P}。

{pstd}
使用 {opt all} 选项时，{cmd:classutil} {cmd:which} 列出搜索路径中与指定名称匹配的所有文件，而不仅仅是第一个找到的文件（Stata 将使用）：

	{cmd:. classutil which mycolortype, all}

	C:\ado\personal\mycolortype.class
	*! version 1.0.1

	C:\ado\plus\m\mycolortype.class
	*! version 1.0.0

{pstd}
{cmd:*!} 行与版本控制有关。{cmd:*} 是 Stata 的注释标记之一，因此 {cmd:*!} 行是注释行。{cmd:*!} 是一些程序员用于记录版本或作者信息的约定。如果没有 {cmd:*!} 行，则仅列出文件名。


{marker results}{...}
{title:存储结果}

{pstd}
{cmd:classutil drop} 不返回任何内容。

{pstd}
{cmd:classutil describe} 返回宏 {cmd:r(type)}，其值为 {cmd:double}、{cmd:string}、{it:classname} 或 {cmd:array}，并返回 {cmd:r(bitype)}，其值相同，但如果 {cmd:r(type)}=="{it:classname}"，则 {cmd:r(bitype)} 的值为 {cmd:class} 或 {cmd:instance}，具体取决于对象是类的定义还是实例。

{pstd}
{cmd:classutil cdir} 在宏 {cmd:r(list)} 中返回与指定模式匹配的可用类的名称。名称前不带句点。

{pstd}
{cmd:classutil dir} 在宏 {cmd:r(list)} 中返回当前存储的与指定模式匹配的顶级实例的名称。如果相应对象是实例，其名称前将加上句点；如果相应对象是类定义，其名称将不带修饰。

{pstd}
{cmd:classutil which} 在未使用 {cmd:all} 选项时返回宏 {cmd:r(fn)} 中找到的文件名；文件名不带引号。使用 {cmd:all} 选项时，{cmd:classutil which} 将返回在宏 {cmd:r(fn)} 中找到的所有文件名，逐个列出并各自用引号包裹。
{p_end}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <classutil.sthlp>}