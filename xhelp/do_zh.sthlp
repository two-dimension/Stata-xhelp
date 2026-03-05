{smcl}
{* *! version 1.1.8  19jun2019}{...}
{viewerdialog do "dialog do_dlg"}{...}
{vieweralsosee "[R] do" "mansection R do"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[R] doedit" "help doedit_zh"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[P] include" "help include_zh"}{...}
{findalias asfrlogs}{...}
{findalias asfrdofiles}{...}
{viewerjumpto "Syntax" "do_zh##syntax"}{...}
{viewerjumpto "Menu" "do_zh##menu"}{...}
{viewerjumpto "Description" "do_zh##description"}{...}
{viewerjumpto "Links to PDF documentation" "do_zh##linkspdf"}{...}
{viewerjumpto "Option" "do_zh##option"}
{help do:English Version}
{hline}{...}
{p2colset 1 11 13 2}{...}
{p2col:{bf:[R] do} {hline 2}}从文件执行命令{p_end}
{p2col:}({mansection R do:查看完整的 PDF 手册条目}){p_end}
{p2colreset}{...}


{marker syntax}{...}
{title:语法}

{phang2}
{{cmd:do}|{cmdab:ru:n}}
{it:{help filename_zh}}
[{it:arguments}] 
[{cmd:,} {opt nostop}]

{phang}
{it:filename}（称为 do-file）可以使用 Stata 的 Do-file 编辑器创建；见 {manhelp doedit R}。该文件将是一个标准文本文件。
{it:filename} 也可以通过使用非 Stata 文本编辑器创建；见 {manhelp shell D} 以获取从 Stata 内部调用您最喜欢的编辑器的方法。
确保将文件保存为 ASCII 或 UTF-8 格式。

{phang}
如果没有指定扩展名，则默认为 {cmd:.do}。

{phang}
如果路径或 {it:filename} 包含空格，则应将其用双引号括起来。

{phang}
有关 do-files 的完整讨论，包括 {it:arguments} 的信息，请参见 {findalias frdofiles}。


{marker menu}{...}
{title:菜单}

{phang}
{bf:文件 > Do...}


{marker description}{...}
{title:描述}

{pstd}
{cmd:do} 和 {cmd:run} 会使 Stata 执行存储在 {it:{help filename_zh}} 中的命令，就好像它们是从键盘输入的一样。 {cmd:do} 会在执行命令时回显这些命令，而 {cmd:run} 则是静默执行。


{marker linkspdf}{...}
{title:PDF文档链接}

        {mansection R doQuickstart:快速入门}

{pstd}
上述部分不包括在此帮助文件中。


{marker option}{...}
{title:选项}

{phang}
{opt nostop} 允许即使发生错误，do-file 也继续执行。
通常，当 Stata 检测到错误（非零返回代码）时，会停止执行 do-file。
{p_end}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <do.sthlp>}