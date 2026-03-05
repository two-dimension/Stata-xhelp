{smcl}
{* *! version 1.0.2  11feb2011}{...}
{vieweralsosee undocumented "help undocumented"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[D] notes" "help notes_zh"}{...}
{viewerjumpto "Syntax" "notes__zh##syntax"}{...}
{viewerjumpto "Description" "notes__zh##description"}
{help notes_:English Version}
{hline}{...}
{title:标题}

{p 4 30 2}
{bf:[P] notes_} {hline 2} 用于笔记的程序员命令


{marker syntax}{...}
{title:语法}

{phang2}
{cmd:notes _dir}{bind:   }{it:macname}

{phang2}
{cmd:notes _count}
{it:macname} {cmd::} {it:name}

{phang2}
{cmd:notes _fetch}
{it:macname} {cmd::} {it:name} {it:#}


{marker description}{...}
{title:描述}

{pstd}
这些额外的 {bf:{help notes_zh:notes}} 子命令供程序员使用。它们在认证脚本中特别有用。

{pstd}
{cmd:notes _dir} {it:macname} 
将与之相关的笔记名称返回到本地宏 {it:macname}。 如果有相关笔记，{cmd:_dta} 将被列为第一项，后面是具有笔记的变量。变量按字母顺序排列。

{pstd}
{cmd:notes _count} {it:macname} {cmd::} {it:name} 返回与 {it:name} 相关的笔记数量。 {it:name} 可以是 {cmd:_dta} 或一个未缩写的变量名称。与 {it:name} 相关的笔记数量将存储在本地宏 {it:macname} 中。如果 {it:name} 没有笔记，则在 {it:macname} 中存储 0。

{pstd}
{cmd:notes _fetch} {it:macname} {cmd::} {it:name} {it:#} 返回与 {it:name} 相关的第 {it:#} 条笔记的内容，或者返回 ""。返回的结果存储在本地宏 {it:macname} 中。

{pstd}
在上述带冒号的命令中，冒号必须用一个或多个空格隔开。

{pstd}
警告：使用这些命令时要使用 {cmd:notes} 而不是 {cmd:note}。如果你使用单数形式，这些命令似乎可以工作，但返回的结果不会填充到本地宏中。
{p_end}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <notes_.sthlp>}