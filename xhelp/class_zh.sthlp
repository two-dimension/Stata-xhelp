{smcl}
{* *! version 1.1.8  22mar2018}{...}
{vieweralsosee "[P] class" "mansection P class"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[P] class exit" "help class exit"}{...}
{vieweralsosee "[P] classutil" "help classutil_zh"}{...}
{vieweralsosee "[P] sysdir" "help sysdir_zh"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[M-2] class" "help m2_class_zh"}
{help class:English Version}
{hline}{...}
{p2colset 1 14 16 2}{...}
{p2col:{bf:[P] class} {hline 2}}类编程
{p_end}
{p2col:}({mansection P class:查看完整PDF手册条目}){p_end}
{p2colreset}{...}


{title:描述}

{pstd}
Stata的两种编程语言，ado和Mata，每种都支持面向对象编程。{manlink P class} 解释了ado中的面向对象编程。大多数对面向对象编程感兴趣的用户希望在Mata中进行编程。有关Mata中面向对象编程的更多信息，请参见{manhelp m2_class M-2:类}。

{pstd}
Ado类是Stata的一个编程特性，尤其在处理图形和GUI问题时非常有用，尽管它们的使用不必限于这些主题。Ado类编程是一个高级编程主题，对大多数程序员而言并不会有太大用处。

{pstd}
有关类编程的信息，请参见

	完整文档：
		{help classman_zh}             类编程
        	{help classutil_zh}            {cmd:classutil} 工具命令
		{helpb class exit}           {cmd:class exit} 编程命令

	快速参考和语法图：
		{help classdeclare_zh}         {cmd:class} 命令
		{help classassign_zh}          {it:lvalue} {cmd:=} {it:rvalue} 细节
        	{help classmacro_zh}           {cmd:`.}{it:id}[{cmd:.}{it:id}[...]] ...{cmd:'} 替换
		{help classbi_zh}              内置命令

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <class.sthlp>}