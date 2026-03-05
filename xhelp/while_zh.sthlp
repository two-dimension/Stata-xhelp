{smcl}
{* *! version 1.1.4  19oct2017}{...}
{vieweralsosee "[P] while" "mansection P while"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[P] continue" "help continue_zh"}{...}
{vieweralsosee "[P] foreach" "help foreach_zh"}{...}
{vieweralsosee "[P] forvalues" "help forvalues_zh"}{...}
{vieweralsosee "[P] if" "help ifcmd_zh"}{...}
{viewerjumpto "Syntax" "while_zh##syntax"}{...}
{viewerjumpto "Description" "while_zh##description"}{...}
{viewerjumpto "Links to PDF documentation" "while_zh##linkspdf"}{...}
{viewerjumpto "Examples" "while_zh##examples"}
{help while:English Version}
{hline}{...}
{p2colset 1 14 16 2}{...}
{p2col:{bf:[P] while} {hline 2}}循环{p_end}
{p2col:}({mansection P while:查看完整的 PDF 手册条目}){p_end}
{p2colreset}{...}


{marker syntax}{...}
{title:语法}

	{cmd:while} {it:exp} {cmd:{c -(}}
		{it:stata_commands}
	{cmd:{c )-}}

{pstd}
大括号必须与 {cmd:while} 一起指定，并且

{phang2}
1. 开括号必须出现在 {cmd:while} 的同一行上；

{phang2}
2. 开括号后不得有其他内容，当然可以有注释；
    第一个要执行的命令必须出现在新的一行上；

{phang2}
3. 关闭大括号必须单独出现在一行上。


{marker description}{...}
{title:描述}

{pstd}
{cmd:while} 评估 {it:exp}，如果它为真（非零），则执行大括号内的 {it:stata_commands}。然后重复该过程，直到 {it:exp} 评估为假（零）。 {cmd:while} 可以嵌套在 {cmd:while} 中。如果 {it:exp} 引用任何变量，则使用第一个观测值的值，除非指定了显式下标；请参见 {findalias frsubscripts}。

{pstd}
另请参见 {manhelp foreach P} 和 {manhelp forvalues P} 以获取 {cmd:while} 的替代方案。


{marker linkspdf}{...}
{title:PDF 文档链接}

        {mansection P whileRemarksandexamples:备注和示例}

{pstd}
以上部分未包含在此帮助文件中。


{marker examples}{...}
{title:示例 1}

	{cmd:program} {it:...}
		{it:...}
		{cmd:gettoken tok 0 : 0}
		{cmd:while "`tok'" != "" {c -(}}
			{it:...}
			{cmd:gettoken tok 0 : 0}
		{cmd:{c )-}}
		{it:...}
	{cmd:end}


{title:示例 2}

{pstd}
{cmd:while} 可用于交互式使用。这里我们使用它生成几个均匀随机变量。

	{cmd:. set obs 10}
	{cmd:. local i = 1}
	{cmd:. while `i' < 40 {c -(}}
	  {cmd:2. gen u`i' = runiform()}
	  {cmd:3. local i = `i' + 1}
	  {cmd:4. {c )-}}
	{cmd:. list u1 - u7}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <while.sthlp>}