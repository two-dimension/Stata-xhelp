{smcl}
{* *! version 1.1.6  19oct2017}{...}
{vieweralsosee "[P] foreach" "mansection P foreach"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[P] continue" "help continue_zh"}{...}
{vieweralsosee "[P] forvalues" "help forvalues_zh"}{...}
{vieweralsosee "[P] while" "help while_zh"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[P] if" "help ifcmd_zh"}{...}
{vieweralsosee "[P] levelsof" "help levelsof_zh"}{...}
{viewerjumpto "Syntax" "foreach_zh##syntax"}{...}
{viewerjumpto "Description" "foreach_zh##description"}{...}
{viewerjumpto "Links to PDF documentation" "foreach_zh##linkspdf"}{...}
{viewerjumpto "Examples" "foreach_zh##examples"}
{help foreach:English Version}
{hline}{...}
{p2colset 1 16 18 2}{...}
{p2col:{bf:[P] foreach} {hline 2}}遍历列表项{p_end}
{p2col:}({mansection P foreach:查看完整的 PDF 手册条目}){p_end}
{p2colreset}{...}


{marker syntax}{...}
{title:语法}

	{cmd:foreach} {it:lname} {c -(}{cmd:in}|{cmd:of} {it:listtype}{c )-} {it:list} {cmd:{c -(}}
		{it:commands referring to} {cmd:`}{it:lname}{cmd:'}
	{cmd:{c )-}}

    允许的格式有

	{cmd:foreach} {it:lname} {cmd:in} {it:any_list} {cmd:{c -(}}

	{cmd:foreach} {it:lname} {cmd:of} {cmdab:loc:al}    {it:lmacname}   {cmd:{c -(}}

	{cmd:foreach} {it:lname} {cmd:of} {cmdab:glo:bal}   {it:gmacname}   {cmd:{c -(}}

	{cmd:foreach} {it:lname} {cmd:of} {cmdab:var:list}  {it:varlist}    {cmd:{c -(}}

	{cmd:foreach} {it:lname} {cmd:of} {cmdab:new:list}  {it:newvarlist} {cmd:{c -(}}

	{cmd:foreach} {it:lname} {cmd:of} {cmdab:num:list}  {it:numlist}    {cmd:{c -(}}

{pstd}大括号必须与 {cmd:foreach} 一起使用，并且

{phang2}1.  开括号必须与 {cmd:foreach} 在同一行出现;

{phang2}2.  开括号后面不能有其他内容，当然，注释除外; 第一个要执行的命令必须出现在新的一行;

{phang2}3.  闭括号必须单独出现在一行上。


{marker description}{...}
{title:描述}

{pstd}
{cmd:foreach} 反复将本地宏 {it:lname} 设置为列表中的每个元素，并执行大括号内的命令。循环执行零次或多次; 如果列表为空或无，循环将执行零次。另请参见 {manhelp forvalues P}，这是循环遍历连续值的最快方式，例如遍历从 1 到 {it:k} 的数字。

{pstd}
{cmd:foreach} {it:lname} {cmd:in} {it:list} {cmd:{c -(}} {it:...} {cmd:{c )-}}
允许一般列表。元素之间用一个或多个空格分隔。

{pstd}
{cmd:foreach} {it:lname} {cmd:of} {cmd:local} {it:list} {cmd:{c -(}}
{it:...} {cmd:{c )-}} 和
{cmd:foreach} {it:lname} {cmd:of} {cmd:global} {it:list} {cmd:{c -(}}
{it:...} {cmd:{c )-}} 从指定位置获取列表。这种使用 {cmd:foreach} 的方法生成最快的执行代码。

{pstd}
{cmd:foreach} {it:lname} {cmd:of} {cmd:varlist} {it:list} {cmd:{c -(}}
{it:...} {cmd:{c )-}},
{cmd:foreach} {it:lname} {cmd:of} {cmd:newlist} {it:list} {cmd:{c -(}}
{it:...} {cmd:{c )-}}, 和
{cmd:foreach} {it:lname} {cmd:of} {cmd:numlist} {it:list} {cmd:{c -(}}
{it:...} {cmd:{c )-}} 与 {cmd:foreach} {it:lname} {cmd:in} {it:list} {cmd:{c -(}} {it:...} {cmd:{c )-}} 十分类似，除了 {it:list} 具有相应的解释。例如，

        {cmd}foreach x in mpg weight-turn {c -(}
                ...
        {c )-}{txt}

{pstd}
有两个元素，{cmd:mpg} 和 {cmd:weight-turn}，因此循环将执行两次。

        {cmd}foreach x of varlist mpg weight-turn {c -(}
                ...
        {c )-}{txt}

{pstd}
有四个元素，{cmd:mpg}、{cmd:weight}、{cmd:length} 和 {cmd:turn}，因为 {it:list} 被解释为 varlist。

{pstd}
{cmd:foreach} {it:lname} {cmd:of} {cmd:varlist} {it:list} {cmd:{c -(}}
{it:...} {cmd:{c )-}}
赋予 {it:list} varlist 的解释。 {it:list} 按照标准变量缩写规则扩展，并确认变量的存在。

{pstd}
{cmd:foreach} {it:lname} {cmd:of} {cmd:newlist} {it:list} {cmd:{c -(}}
{it:...} {cmd:{c )-}}
指示 {it:list} 被解释为新变量名; 参见 {varlist}。进行检查以确认所命名的变量可以被创建，但它们不会被自动创建。

{pstd}
{cmd:foreach} {it:lname} {cmd:of} {cmd:numlist} {it:list} {cmd:{c -(}}
{it:...} {cmd:{c )-}}
指示为数字列表，并允许标准数字列表符号; 请参见 {it:{help numlist_zh}}。


{marker linkspdf}{...}
{title:链接至 PDF 文档}

        {mansection P foreachRemarksandexamples:备注和示例}

{pstd}
上述部分不包含在此帮助文件中。


{marker examples}{...}
{title:示例}

{pstd}
遍历任意列表。在这种情况下，将文件列表附加到当前数据集中。

	{cmd:foreach file in this.dta that.dta theother.dta {c -(}}
		{cmd:append using "`file'"}
	{cmd:{c )-}}

{pstd}
可以使用引号来允许元素中包含空格。

	{cmd:foreach name in "Annette Fett" "Ashley Poole" "Marsha Martinez" {c -(}}
		{cmd:display length("`name'") " 字符长 -- `name'"}
	{cmd:{c )-}}

{pstd}
遍历本地宏的元素。

	{cmd:local grains "rice wheat corn rye barley oats"}
	{cmd:foreach x of local grains {c -(}}
		{cmd:display "`x'"}
	{cmd:{c )-}}

{pstd}
遍历全局宏的元素。

	{cmd:global money "Franc Dollar Lira Pound"}
	{cmd:foreach y of global money {c -(}}
		{cmd:display "`y'"}
	{cmd:{c )-}}

{pstd}
遍历现有变量。

	{cmd:foreach var of varlist pri-rep t* {c -(}}
		{cmd:quietly summarize `var'}
		{cmd:summarize `var' if `var' > r(mean)}
	{cmd:{c )-}}

{pstd}
{cmd:foreach} {it:lname} {cmd:of varlist} {it:varlist} {cmd:{c -(}}
{it:...} {cmd:{c )-}} 在交互式中可能很有用，但在编程上下文中很少使用。与其编写，

	{cmd:syntax [varlist]} {it:...}
	{cmd:foreach var of varlist `varlist' {c -(}}
		{it:...}
	{cmd:{c )-}}

{pstd}
不如编写

	{cmd:syntax [varlist]} {it:...}
	{cmd:foreach var of local varlist {c -(}}
		{it:...}
	{cmd:{c )-}}

{pstd}
因为 {hi:`varlist'} 已通过 {help syntax_zh} 命令扩展。

{pstd}
遍历新变量。

	{cmd:foreach var of newlist z1-z20 {c -(}}
		{cmd:gen `var' = runiform()}
	{cmd:{c )-}}

{pstd}
遍历数字列表。

	{cmd:foreach num of numlist 1 4/8 13(2)21 103 {c -(}}
		{cmd:display `num'}
	{cmd:{c )-}}

{pstd}
如果你想遍历许多等间距的值，请不要
编写，例如，

	{cmd:foreach x in 1/1000 {c -(}}
		{it:...}
	{cmd:{c )-}}

{pstd}
而是应该编写

	{cmd:forvalues x = 1/1000 {c -(}}
		{it:...}
	{cmd:{c )-}}

{pstd}
{cmd:foreach} 必须存储
元素列表，而 {cmd:forvalues} 是通过计算逐个获取元素; 请参见 {manhelp forvalues P}。

{pstd}
宏 {hi:`ferest()'} 可用于 {cmd:foreach} 循环的主体内以获取未经处理的列表元素。 {hi:`ferest()'} 仅在循环主体内可用; 在外部， {hi:`ferest()'} 评估为 {hi:""}。

	{cmd:foreach x in alpha "one two" three four {c -(}}
		{cmd:display}
		{cmd:display `"       x is |`x'|"'}
		{cmd:display `"ferest() is |`ferest()'|"'}
	{cmd:{c )-}}

{pstd}
{help continue_zh} 命令提供了一种提前终止循环的方法。
{p_end}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <foreach.sthlp>}