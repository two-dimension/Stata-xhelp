{smcl}
{* *! version 1.1.7  19oct2017}{...}
{vieweralsosee "[P] class exit" "mansection P classexit"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[P] class: classman" "help classman_zh"}{...}
{vieweralsosee "[P] exit" "help exit_program_zh"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[M-2] class" "help m2_class_zh"}{...}
{viewerjumpto "Syntax" "class exit##syntax"}{...}
{viewerjumpto "Description" "class exit##description"}{...}
{viewerjumpto "Links to PDF documentation" "class_exit_zh##linkspdf"}{...}
{viewerjumpto "Remarks" "class exit##remarks"}{...}
{viewerjumpto "Examples" "class exit##examples"}
{help class_exit:English Version}
{hline}{...}
{p2colset 1 19 21 2}{...}
{p2col:{bf:[P] class exit} {hline 2}}退出类成员程序并返回结果{p_end}
{p2col:}({mansection P classexit:查看完整的PDF手册条目}){p_end}
{p2colreset}{...}


{marker syntax}{...}
{title:语法}

        {cmd:class exit} [{it:rvalue}]

{phang}
其中 {it:rvalue} 是

        {cmd:"}[{it:string}]{cmd:"}
        {cmd:`"}[{it:string}]{cmd:"'}
        {it:#}
        {it:exp}
        {cmd:(}{it:exp}{cmd:)}
        {cmd:.}{it:id}[{cmd:.}{it:id}[...]] [{it:program_arguments}]
        {cmd:{c -(}}{cmd:{c )-}}
        {cmd:{c -(}}{it:el}[{cmd:,}{it:el}[{cmd:,}...]]{cmd:{c )-}}

{phang}
有关 {it:rvalues} 的更多信息，请参见 {help classassign_zh}。

{marker description}{...}
{title:描述}

{pstd}
{cmd:class exit} 退出一个类成员程序，并可选地返回指定的结果。

{pstd}
{cmd:class exit} 只能在类成员程序中使用；请参见 {help classman_zh}。

{marker linkspdf}{...}
{title:PDF文档链接}

        {mansection P classexitRemarksandexamples:备注和示例}

{pstd}
上述部分不包含在此帮助文件中。


{marker remarks}{...}
{title:备注}

{pstd}
不要将返回值与返回代码混淆，所有 Stata 程序（包括成员程序）都会设置返回代码。成员程序在执行时退出

	条件                       返回值          返回代码
	{hline 64}
	{cmd:class exit} 带参数       按指定返回      0
	{cmd:class exit} 无参数        无返回         0
	{cmd:exit} 无参数             无返回         0
	{cmd:exit} 带参数             无返回         按指定
	{cmd:error}                   无返回         按指定
	含有错误的命令              无返回         按适当情况
	{hline 64}

{pstd}
以上任何方式都是退出成员程序的有效方法，尽管最后一种最好避免。{cmd:class exit} 无参数的效果与 {cmd:exit} 无参数相同；使用哪一种都无所谓。

{marker examples}{...}
{title:示例}

	{cmd}class exit sqrt((`.c0.y'-`.c1.y')^2 + (`.c0.x'-`.c1.x')^2)
	class exit "`myresult'"
	class exit { `one', `two' }
	class exit .coord
	class exit .coord.x
	tempname a
	{txt:...}
	class exit .`a'{txt}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <class_exit.sthlp>}