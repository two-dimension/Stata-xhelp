{smcl}
{* *! version 1.1.3  07sep2011}{...}
{findalias asfrif}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[U] 11 语言语法" "help language_zh"}{...}
{vieweralsosee "[U] 11 语言语法 (by 前缀)" "help by_zh"}{...}
{vieweralsosee "[U] 11.1.4 在范围内 (in 限定符)" "help in_zh"}{...}
{viewerjumpto "语法" "if_zh##syntax"}{...}
{viewerjumpto "描述" "if_zh##description"}{...}
{viewerjumpto "示例" "if_zh##examples"}
{help if:English Version}
{hline}{...}
{title:标题}

{pstd}
{findalias frif}


{marker syntax}{...}
{title:语法}

	{it:command} {cmd:if} {it:exp}

{pstd}
语法图中的 {it:exp} 表示一个表达式，例如 {hi:age>21}。有关表达式的解释，请参见 {help exp_zh}。

{pstd}
在 Stata 编程中还有另一种 {cmd:if}；请参见 {manhelp ifcmd P:if}。


{marker description}{...}
{title:描述}

{pstd}
{cmd:if} 在命令的末尾意味着该命令仅使用指定的数据。{cmd:if} 在大多数 Stata 命令中都是允许的。


{marker examples}{...}
{title:示例}

{phang}{cmd:. sysuse auto}{p_end}
{phang}{cmd:. list make mpg if mpg>25}{p_end}
{phang}{cmd:. list make mpg if mpg>25 & mpg<30}{p_end}
{phang}{cmd:. list make mpg if mpg>25 | mpg<10}{p_end}
{phang}{cmd:. regress mpg weight displ if foreign==1}


{pstd}
相等检验使用两个等号 ({cmd:==})，而不是一个 {cmd:=}；请参见 {help operators}。
{p_end}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <if.sthlp>}