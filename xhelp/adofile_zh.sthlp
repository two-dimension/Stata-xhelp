{smcl}
{* *! version 1.1.2  10may2011}{...}
{findalias asfrado}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[P] program" "help program_zh"}{...}
{vieweralsosee "[R] net" "help usersite_zh"}{...}
{vieweralsosee "[P] sysdir" "help sysdir_zh"}{...}
{vieweralsosee "[R] which" "help which_zh"}
{help adofile:English Version}
{hline}{...}
{title:标题}

{pstd}
{findalias frado}

{title:备注}

{pstd}
ado 文件是一个包含 Stata 程序的文本文件。当你输入一个 Stata 不认识的命令时，它会在某些地方查找该名称的 ado 文件。如果 Stata 找到它，则会加载并执行它，因此你会觉得 ado 命令就像是 Stata 内置的其他命令。

{pstd}
Stata 在 ado 文件路径中查找 ado 文件；请参阅 {cmd:adopath} 在 {manhelp sysdir P} 中的内容。{cmd:which} 命令告诉你 Stata 在哪里找到特定命令；请参阅 {manhelp which R}。你可以编写一个 Stata 命令，并将其放置在一个与命令同名且以 {cmd:.ado} 结尾的文件中。你可以将个人 ado 文件放在两个地方：一个是当前目录，当 ado 文件与项目唯一相关时，这是一个不错的选择；另一个是在 Stata 所称的个人目录中；请参阅 {cmd:personal} 在 {manhelp sysdir P} 中的内容。如果你的 ado 文件更具一般用途，这是一个好的位置。

{pstd}
有关在 ado 文件中定义程序的信息，请参见 {manhelp program P}。通过互联网与他人共享你的 ado 文件很简单；请参阅 {cmd:usersite} 在 {manhelp net R} 中的内容。
{p_end}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <adofile.sthlp>}