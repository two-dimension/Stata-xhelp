{smcl}
{* *! version 1.0.5  20mar2015}{...}
{vieweralsosee undocumented "help undocumented"}{...}
{viewerjumpto "Syntax" "projmanager_zh##syntax"}{...}
{viewerjumpto "Menu" "projmanager_zh##menu"}{...}
{viewerjumpto "Description" "projmanager_zh##description"}{...}
{viewerjumpto "Option" "projmanager_zh##option"}{...}
{viewerjumpto "Remarks" "projmanager_zh##remarks"}
{help projmanager:English Version}
{hline}{...}
{title:标题}

{p2colset 5 24 26 2}{...}
{p2col :{hi:[P] projmanager} {hline 2}}打开 Stata 项目管理器{p_end}
{p2colreset}{...}


{marker syntax}{...}
{title:语法}

	{cmdab:projman:ager} {it:{help 文件名}} [{cmd:,} {cmd:replace}]


{marker menu}{...}
{title:菜单}

{phang}
{bf:文件 > 新建 > 项目...} （在 Do-file 编辑器中选择 -- 仅限 Windows 和 Unix）


{marker description}{...}
{title:描述}

{pstd}
{cmd:projmanager} 打开一个窗口，以便您组织 Stata 文件。如果指定的 {it:{help 文件名}} 没有扩展名，则默认使用 {.dta}。如果您的 {it:文件名} 包含空格，请记得用双引号将其括起来。


{marker option}{...}
{title:选项}

{phang}
{opt replace} 指定如果 {it:{help 文件名}} 已经存在，则将其覆盖。当您不指定 {opt replace} 时，文件被视为新文件。如果指定的文件已存在，则会发出错误消息，并且不会打开新窗口。


{marker remarks}{...}
{title:备注}

{pstd}
{cmd:projmanager} {it:文件名} 打开一个新窗口，在项目管理器中打开该项目，并在 Do-file 编辑器中打开一个空文档。如果 {it:文件名} 在磁盘上不存在，则会创建该文件并在项目管理器中打开。

{pstd}
您可以同时打开多个项目。如果您使用 {cmd:projmanager} 命令打开一个已经打开的项目，它会将该项目的窗口置于前面。

{pstd}
请参见 {manhelp project_manager P:项目管理器} 以了解如何使用项目管理器组织和打开 Stata 文件。阅读 {findalias gsmdoedit}、 {findalias gsudoedit} 或 {findalias gswdoedit} 以了解如何使用 Do-file 编辑器创建和执行 do-files。
{p_end}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <projmanager.sthlp>}