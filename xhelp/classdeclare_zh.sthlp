{smcl}
{* *! version 1.1.3  19oct2017}{...}
{vieweralsosee "[P] class" "mansection P class"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[P] class: classman" "help classman_zh"}{...}
{vieweralsosee "[P] class: classassign" "help classassign_zh"}{...}
{vieweralsosee "[P] class: classmacro" "help classmacro_zh"}{...}
{vieweralsosee "[P] class: classbi" "help classbi_zh"}{...}
{viewerjumpto "附录 C.1: 类声明" "classdeclare_zh##app_c1"}{...}
{viewerjumpto "描述" "classdeclare_zh##description"}{...}
{viewerjumpto "PDF 文档链接" "classdeclare_zh##linkspdf"}
{help classdeclare:English Version}
{hline}{...}
{p2colset 1 14 16 2}{...}
{p2col:{bf:[P] class} {hline 2}}类编程  （续 {manhelp classman P:class}）
{p_end}
{p2col:}({mansection P class:查看完整 PDF 手册条目}){p_end}
{p2colreset}{...}


{marker app_c1}{...}
{title:附录 C.1:  类声明}

	{cmd:class} [{it:newclassname}] {cmd:{c -(}}

	    [{opt class:wide}{cmd::}]

		[{it:type} {it:mvname} [{cmd:=} {it:rvalue}]]

		[     {it:mvname}  {cmd:=} {it:rvalue} ]

		[...]

	    [{opt instance:specific}{cmd::}]

		[{it:type} {it:mvname} [{cmd:=} {it:rvalue}]]

		[     {it:mvname}  {cmd:=} {it:rvalue} ]

		[...]

	{cmd:{c )-}} [{cmd:, inherit(}{txt:{it:classnamelist}}{cmd:)} ]


{pstd}
其中

{pmore}
{it:mvname} 表示成员变量名称；

{pmore}
{it:rvalue} 在 {help classassign_zh} 中定义；以及

{pmore}
{it:type} 是 {c -(}{it:classname} | {cmd:double} | {cmd:string} | {cmd:array}{c )-}。


{pstd}
可以使用内置的 {cmd:.Declare} 向现有的类实例添加成员变量：

	{cmd:.}{it:id}[{cmd:.}{it:id}[...]] {cmd:.Declare} {it:type} {it:newmvname} [{cmd:=} {it:rvalue}]

	{cmd:.}{it:id}[{cmd:.}{it:id}[...]] {cmd:.Declare} {it:newmvname} {cmd:=} {it:rvalue}

{pstd}
其中 {it:id} 是 {c -(}{it:name} | {it:name}{cmd:[}{it:exp}{cmd:]}{c )-}，后者是指如何引用数组元素；{it:exp} 必须求值为数字。如果 {it:exp} 求值为非整数，则会被截断。


{marker description}{...}
{title:描述}

{pstd}
类 {it:classname} 定义在文件 {it:classname}{cmd:.class} 中。其结构为

	{hline 40} {it:classname}{cmd:.class} {hline}
	{cmd:version} ...           // 第 1 部分：版本声明

	{cmd:class} {it:classname} {cmd:{c -(}}     // 第 2 部分：成员变量声明
		...
	{cmd:{c )-}}

	{cmd:program} ...           // 第 3 部分：成员程序代码
		...
	{cmd:end}

	{cmd:program} ...
		...
	{cmd:end}

	...
	{hline 40} {it:classname}{cmd:.class} {hline}

{pstd}
请参见 {help classman_zh} 获取更多信息。
{p_end}


{marker linkspdf}{...}
{title:PDF 文档链接}

        {mansection P classRemarksandexamples:备注和示例}

{pstd}
以上部分未包含在此帮助文件中。

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <classdeclare.sthlp>}