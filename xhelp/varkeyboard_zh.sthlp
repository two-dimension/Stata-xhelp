{smcl}
{* *! version 1.1.3  29jan2019}{...}
{vieweralsosee "[R] set" "mansection R set"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[R] query" "help query_zh"}{...}
{viewerjumpto "Syntax" "varkeyboard_zh##syntax"}{...}
{viewerjumpto "Description" "varkeyboard_zh##description"}{...}
{viewerjumpto "Option" "varkeyboard_zh##option"}
{help varkeyboard:English Version}
{hline}{...}
{title:标题}

{phang}设置变量和历史窗口的键盘导航行为（仅限 Mac）


{marker syntax}{...}
{title:语法}

{p 8 22 2}
	{cmd:set varkeyboard} {c -(} {cmd:on} | {cmd:off} {c )-}
	[{cmd:,} {cmdab:perm:anently}]

{p 8 22 2}
	{cmd:set revkeyboard} {c -(} {cmd:on} | {cmd:off} {c )-}
	[{cmd:,} {cmdab:perm:anently}]


{marker description}{...}
{title:描述}

{pstd}
{cmd:set varkeyboard} 设置变量窗口的键盘导航行为。 {cmd:set revkeyboard} 设置历史窗口的键盘导航行为。这些命令仅适用于 Mac 电脑。

{pstd}
{cmd:on} 表示可以使用键盘在变量或历史窗口中进行导航，并将项目输入到命令窗口中。 {cmd:off} 表示所有键盘输入都指向命令窗口；仅能通过鼠标从变量或历史窗口输入项目。 {cmd:varkeyboard} 和 {cmd:revkeyboard} 的默认值为 {cmd:on}。


{marker option}{...}
{title:选项}

{phang}
{cmd:permanently} 指定除了立即进行更改外，设置会被记住，并成为下次调用 Stata 时的默认设置。
{p_end}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <varkeyboard.sthlp>}