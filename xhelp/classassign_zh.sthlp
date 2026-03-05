{smcl}
{* *! version 1.1.4  19oct2017}{...}
{vieweralsosee "[P] class" "mansection P class"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[P] class: classman" "help classman_zh"}{...}
{vieweralsosee "[P] class: classdeclare" "help classdeclare_zh"}{...}
{vieweralsosee "[P] class: classmacro" "help classmacro_zh"}{...}
{vieweralsosee "[P] class: classbi" "help classbi_zh"}{...}
{viewerjumpto "附录 C.2: 赋值" "classassign_zh##app_c2"}{...}
{viewerjumpto "描述" "classassign_zh##description"}{...}
{viewerjumpto "PDF文档链接" "classassign_zh##linkspdf"}
{help classassign:English Version}
{hline}{...}
{p2colset 1 14 16 2}{...}
{p2col:{bf:[P] class} {hline 2}}类编程（{manhelp classman P:class}的延续）
{p_end}
{p2col:}({mansection P class:查看完整PDF手册条目}){p_end}
{p2colreset}{...}


{marker app_c2}{...}
{title:附录 C.2: 赋值}

	{it:lvalue} {cmd:=} {it:rvalue}
	{it:lvalue}{cmd:.ref} {cmd:=} {it:lvalue}{cmd:.ref}{space 20}{it:[sic]}
	{it:lvalue}{cmd:.ref} {cmd:=} {it:rvalue}

{pstd}
其中

{pmore}
{it:lvalue} 为 {cmd:.}{it:id}[{cmd:.}{it:id}[...]]

{p 8 12 2}
{it:rvalue} 为{break}
	{cmd:"}[{it:string}]{cmd:"}{break}
	{cmd:`"}[{it:string}]{cmd:"'}{break}
	{it:#}{break}
	{it:exp}{break}
	{cmd:(}{it:exp}{cmd:)}{break}
	{cmd:.}{it:id}[{cmd:.}{it:id}[...]]{break}
	[{cmd:.}{it:id}[{cmd:.}{it:id}[...]]]{cmd:.}{it:pgmname} [{it:pgm_arguments}]{break}
	[{cmd:.}{it:id}[{cmd:.}{it:id}[...]]]{cmd:.Super}[{cmd:(}{it:classname}{cmd:)}]{cmd:.}{it:pgmname} [{it:pgm_arguments}]{break}
	{cmd:{c -(}}{cmd:{c )-}}{break}
	{cmd:{c -(}}{it:el} [{cmd:,}{it:el} [{cmd:,}...]]{cmd:{c )-}}

{pmore}
当 {it:exp} 计算为字符串时，结果将最多包含 {ccl maxstrvarlen} 个字符，并将在包含二进制0时提前终止。

{p 8 12 2}
最后两种语法涉及数组的赋值；
{it:el} 可以是{break}
	    {it:无}{break}
	    {cmd:"}[{it:string}]{cmd:"}{break}
	    {cmd:`"}[{it:string}]{cmd:"'}{break}
	    {it:#}{break}
	    {cmd:(}{it:exp}{cmd:)}{break}
	    {cmd:.}{it:id}[{cmd:.}{it:id}[...]]{break}
	    [{cmd:.}{it:id}[{cmd:.}{it:id}[...]]]{cmd:.}{it:pgmname}{break}
	    {cmd:[}[{cmd:.}{it:id}[{cmd:.}{it:id}[...]]]{cmd:.}{it:pgmname} [{it:pgm_arguments}]{cmd:]}{break}
	{cmd:[}[{cmd:.}{it:id}[{cmd:.}{it:id}[...]]]{cmd:.Super}[{cmd:(}{it:classname}{cmd:)}]{cmd:.}{it:pgmname} [{it:pgm_arguments}]{cmd:]}{break}

{pmore}
{it:id} 为 {c -(}{it:name} | {it:name}{cmd:[}{it:exp}{cmd:]}{c )-}，后者是您引用数组元素的方式； {it:exp} 必须计算为数字。如果 {it:exp} 计算为非整数数字，则会被截断。


{marker description}{...}
{title:描述}

{pstd}
有关更多信息，请参见 {help classman_zh}。
{p_end}


{marker linkspdf}{...}
{title:PDF文档链接}

        {mansection P classRemarksandexamples:备注和示例}

{pstd}
上述部分未包含在此帮助文件中。

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <classassign.sthlp>}