{smcl}
{* *! version 1.1.3  19oct2017}{...}
{vieweralsosee "[P] class" "mansection P class"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[P] class: classman" "help classman_zh"}{...}
{vieweralsosee "[P] class: classdeclare" "help classdeclare_zh"}{...}
{vieweralsosee "[P] class: classassign" "help classassign_zh"}{...}
{vieweralsosee "[P] class: classbi" "help classbi_zh"}{...}
{viewerjumpto "Appendix C.3: 宏替换" "classmacro_zh##app_c3"}{...}
{viewerjumpto "描述" "classmacro_zh##description"}{...}
{viewerjumpto "PDF 文档链接" "classmacro_zh##linkspdf"}
{help classmacro:English Version}
{hline}{...}
{p2colset 1 14 16 2}{...}
{p2col:{bf:[P] class} {hline 2}}类编程（{manhelp classman P:类} 的延续）
{p_end}
{p2col:}({mansection P class:查看完整的 PDF 手册条目}){p_end}
{p2colreset}{...}


{marker app_c3}{...}
{title:附录 C.3：宏替换}

{pstd}
成员变量的值或由成员程序返回的值可以通过宏引用在 Stata 命令行的任何上下文中进行替换。其语法是

{p 8 12 2}
...{cmd:`}{cmd:.}{it:id}[{cmd:.}{it:id}[...]]{cmd:'}...

{p 8 12 2}
...{cmd:`}[{cmd:.}{it:id}[{cmd:.}{it:id}[...]]]{cmd:.}{it:pgmname}{cmd:'}...{break}

{p 8 12 2}
...{cmd:`}[{cmd:.}{it:id}[{cmd:.}{it:id}[...]]]{cmd:.}{it:pgmname} {it:pgm_arguments}{cmd:'}...

{p 8 12 2}
...{cmd:`}[{cmd:.}{it:id}[{cmd:.}{it:id}[...]]]{cmd:.Super}[{cmd:(}{it:classname}{cmd:)}]{cmd:.}{it:pgmname}{cmd:'}...

{p 8 12 2}
...{cmd:`}[{cmd:.}{it:id}[{cmd:.}{it:id}[...]]]{cmd:.Super}[{cmd:(}{it:classname}{cmd:)}]{cmd:.}{it:pgmname} {it:pgm_arguments}{cmd:'}...

{p 4 8 2}
允许嵌套替换。例如，

{p 8 12 2}
	...{cmd:`.`tmpname'.x'}...

{p 8 12 2}
	...{cmd:``ref''}...

{pstd}
在上述例子中，局部 {cmd:tmpname} 可能是通过 {helpb tempname} 获取的，并且局部 {cmd:ref} 可能包含 "{cmd:.myobj.cvalue}"。

{pstd}
当类对象被引用时，其可打印形式会被替换。这是被定义的：

	对象类型        可打印形式
	{hline 61}
	{cmd:string}           字符串的内容
	{cmd:double}           使用 {cmd:%18.0g} 打印的数字，去掉空格
	{cmd:array}            什么都不输出
	{it:classname}        什么都不输出，或者如果成员程序 {cmd:.macroexpand} 被定义，则返回 {cmd:string} 或 {cmd:double}
	{hline 61}

{pstd}
如果引用的结果产生错误，错误消息将被抑制，并且不会进行替换。


{marker description}{...}
{title:描述}

{pstd}
有关更多信息，请参见 {help classman_zh}。
{p_end}


{marker linkspdf}{...}
{title:PDF 文档链接}

        {mansection P classRemarksandexamples:备注和示例}

{pstd}
上述部分未包含在此帮助文件中。

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <classmacro.sthlp>}