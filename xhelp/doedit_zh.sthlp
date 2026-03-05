{smcl}
{* *! version 1.1.7  19oct2017}{...}
{viewerdialog doedit "stata doedit"}{...}
{vieweralsosee "[R] doedit" "mansection R doedit"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[R] do" "help do_zh"}{...}
{viewerjumpto "Syntax" "doedit_zh##syntax"}{...}
{viewerjumpto "Menu" "doedit_zh##menu"}{...}
{viewerjumpto "Description" "doedit_zh##description"}{...}
{viewerjumpto "Links to PDF documentation" "doedit_zh##linkspdf"}{...}
{viewerjumpto "Remarks" "doedit_zh##remarks"}
{help doedit:English Version}
{hline}{...}
{p2colset 1 15 17 2}{...}
{p2col:{bf:[R] doedit} {hline 2}}编辑 do 文件和其他文本文件{p_end}
{p2col:}({mansection R doedit:查看完整 PDF 手册条目}){p_end}
{p2colreset}{...}


{marker syntax}{...}
{title:语法}

	{cmdab:doed:it} [{it:{help filename_zh}}]


{marker menu}{...}
{title:菜单}

{phang}
{bf:窗口 > Do-file 编辑器}


{marker description}{...}
{title:描述}

{pstd}
{cmd:doedit} 打开 Do-file 编辑器。这个文本编辑器让您创建和编辑 do 文件，通常包含一系列 Stata 命令。
如果您指定了 {it:filename}，{cmd:doedit} 将打开一个文本文件，例如保存到磁盘上的 do 文件或 ado 文件。


{marker linkspdf}{...}
{title:PDF 文档链接}

        {mansection R doeditQuickstart:快速入门}

        {mansection R doeditRemarksandexamples:备注和示例}

{pstd}
以上部分不包括在此帮助文件中。


{marker remarks}{...}
{title:备注}

{pstd}
点击 {bf:Do-file 编辑器} 按钮等同于输入 {cmd:doedit}。

{pstd}
单独输入 {cmd:doedit} 将调用一个空文档的编辑器。
如果您指定了 {it:filename}，该文件将在编辑器中显示。

{pstd}
您可以同时打开多个 Do-file 编辑器。每次提交 {cmd:doedit} 命令时，都会打开一个新窗口。

{pstd}
关于 {cmd:doedit} 的教程讨论可以在 {it:Stata 入门} 手册中找到。阅读 {findalias frdofiles} 以了解 do 文件的解释，然后阅读 {findalias gsmdoedit}、{findalias gsudoedit} 或 {findalias gswdoedit} 以了解如何使用 Do-file 编辑器创建和执行 do 文件。
{p_end}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <doedit.sthlp>}