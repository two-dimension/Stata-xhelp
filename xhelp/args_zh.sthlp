{smcl}
{* *! version 1.1.3  19oct2017}{...}
{vieweralsosee "[P] syntax" "mansection P syntax"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[P] gettoken" "help gettoken_zh"}{...}
{vieweralsosee "[P] program" "help program_zh"}{...}
{vieweralsosee "[P] syntax" "help syntax_zh"}{...}
{vieweralsosee "[P] tokenize" "help tokenize_zh"}{...}
{vieweralsosee "[P] unab" "help unab_zh"}{...}
{viewerjumpto "Syntax" "args_zh##syntax"}{...}
{viewerjumpto "Description" "args_zh##description"}{...}
{viewerjumpto "Links to PDF documentation" "args_zh##linkspdf"}{...}
{viewerjumpto "Examples" "args_zh##examples"}
{help args:English Version}
{hline}{...}
{p2colset 1 25 27 2}{...}
{p2col:{cmd:args} (在 {bf:[P] syntax} 中) {hline 2}}按位置解析 Stata 语法
{p_end}
{p2col:}({mansection P syntax:查看完整 PDF 手册条目}){p_end}
{p2colreset}{...}


{marker syntax}{...}
{title:语法}

{p 8 13 2}
{cmd:args} {it:macroname1} [{it:macroname2} [{it:macroname3 {it:...}}]]


{marker description}{...}
{title:描述}

{pstd}
{cmd:args} 获取命令行参数。它基于位置参数工作 -- 在命令行中输入的第一个、第二个 … 项。{help syntax_zh} 命令是一个更全面的命令，它也获取命令行参数，但根据 Stata 的语言语法进行处理。有关 Stata 语言的介绍，请参见 {help language_zh}。

{pstd}
{cmd:args} 将第一个命令行参数分配给局部宏 {it:macroname1}，第二个参数分配给 {it:macroname2}，依此类推。在程序中，随后通过将宏名称包围在单引号中来引用宏的内容：{cmd:`}{it:macroname1}{cmd:'}、{cmd:`}{it:macroname2}{cmd:'}等。


{marker linkspdf}{...}
{title:PDF 文档链接}

        {mansection P syntaxRemarksandexamples:备注和示例}

{pstd}
上述部分不包含在此帮助文件中。


{marker examples}{...}
{title:示例}

	{cmd:program myprog}
		{cmd:version {ccl stata_version}}
		{cmd:args varname dof beta}
		{it:...}
{p 16 18 2}{txt:(程序使用宏 {hi:`varname'}, {hi:`dof'}, 和 {hi:`beta'})}{p_end}
		{it:...}
	{cmd:end}

	{cmd:. myprog mpg 32 8.2}

{pstd}
在这种情况下 {hi:`varname'} 被设置为 {hi:mpg}，{hi:`dof'} 被设置为 32，{hi:`beta'} 被设置为 8.2。
{p_end}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <args.sthlp>}