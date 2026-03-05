{smcl}
{* *! version 1.1.11  15oct2018}{...}
{viewerdialog copy "dialog copy"}{...}
{vieweralsosee "[D] copy" "mansection D copy"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[D] cd" "help cd_zh"}{...}
{vieweralsosee "[D] dir" "help dir_zh"}{...}
{vieweralsosee "[D] erase" "help erase_zh"}{...}
{vieweralsosee "[D] mkdir" "help mkdir_zh"}{...}
{vieweralsosee "[D] rmdir" "help rmdir_zh"}{...}
{vieweralsosee "[D] shell" "help shell_zh"}{...}
{vieweralsosee "[D] type" "help type_zh"}{...}
{viewerjumpto "Syntax" "copy_zh##syntax"}{...}
{viewerjumpto "Description" "copy_zh##description"}{...}
{viewerjumpto "Links to PDF documentation" "copy_zh##linkspdf"}{...}
{viewerjumpto "Options" "copy_zh##options"}{...}
{viewerjumpto "Examples" "copy_zh##examples"}
{help copy:English Version}
{hline}{...}
{p2colset 1 13 15 2}{...}
{p2col:{bf:[D] copy} {hline 2}}从磁盘或 URL 复制文件{p_end}
{p2col:}({mansection D copy:查看完整的 PDF 手册条目}){p_end}
{p2colreset}{...}


{marker syntax}{...}
{title:语法}

{p 8 13 2}
{cmd:copy} {it:{help filename_zh}1} {it:{help filename_zh}2} [{cmd:,} {it:options}]

{phang}
{it:filename1} 可以是文件名或 URL。 {it:filename2} 可以是文件或目录的名称。
如果 {it:filename2} 是目录名称，则 {it:filename1} 将被复制到该目录。 {it:filename2} 不能是 URL。

{p 4 10 2}
注意：如果文件名包含空格，则可以使用双引号括起来。

{synoptset 11}{...}
{synopthdr}
{synoptline}
{synopt :{opt pub:lic}}使 {it:{help filename_zh}2} 对所有人可读{p_end}
{synopt :{opt t:ext}}将 {it:{help filename_zh}1} 解释为文本文件并转换为本地文本格式{p_end}

{synopt :{opt replace}}可能会覆盖 {it:{help filename_zh}2}{p_end}
{synoptline}
{p2colreset}{...}
{p 4 6 2}
{opt replace} 不会出现在对话框中。{p_end}


{marker description}{...}
{title:描述}

{pstd}
{opt copy} 将现有文件复制到一个新名称的文件。


{marker linkspdf}{...}
{title:PDF 文档链接}

        {mansection D copyQuickstart:快速开始}

        {mansection D copyRemarksandexamples:备注和示例}

{pstd}
以上部分未包含在此帮助文件中。


{marker options}{...}
{title:选项}

{phang}
{opt public} 指定 {it:{help filename_zh}2} 应该对所有人可读；否则，该文件将根据您操作系统的默认权限创建。

{phang}
{opt text} 指定 {it:{help filename_zh}1} 应该被解释为文本文件，并转换为您计算机上文本文件的本地形式。计算机在记录行末时有所不同：Unix 系统记录一个换行符，Windows 计算机记录一个回车/换行组合，而 Mac 计算机只记录一个回车。 {opt text} 指定在复制时应检查 {it:filename1} 以确定其结束行符的记录方式，并将行结束字符切换为适合您的计算机的格式。

{pmore}
在将计算机上已有的文件复制到不同位置时，指定 {opt text} 是没有必要的，因为该文件已经是您计算机的格式。

{pmore}
除非您知道文件是文本文件，否则不要指定 {opt text}；如果文件是二进制文件并且您指定了 {opt text}，则该复制将毫无用处。大多数文字处理器生成的是二进制文件，而不是文本文件。这里所用的文本一词指的是记录文本信息的特定方式。

{pmore}
当 Stata 的其他部分读取文本文件时，它们并不在乎行是如何终止的，因此没有必要在这方面转换行结束字符。您指定 {opt text} 是因为您可能希望使用其他软件查看该文件。

{pstd}
以下选项可与 {cmd:copy} 一起使用，但未在对话框中显示：

{phang}
{opt replace} 指定如果 {it:{help filename_zh}2} 已存在则替换它。


{marker examples}{...}
{title:示例}

{phang}Windows:{p_end}
{phang2}{cmd:. copy orig.dta newcopy.dta}{p_end}
{phang2}{cmd:. copy mydir\orig.dta .}{p_end}
{phang2}{cmd:. copy orig.dta ../../}{p_end}
{phang2}{cmd:. copy "my document" "copy of document"}{p_end}
{phang2}{cmd:. copy ..\mydir\doc.txt document\doc.tex}{p_end}
{phang2}{cmd:. copy https://www.stata.com/examples/simple.dta simple.dta}{p_end}
{phang2}{cmd:. copy https://www.stata.com/examples/simple.txt simple.txt, text}

{phang}Mac:{p_end}
{phang2}{cmd:. copy orig.dta newcopy.dta}{p_end}
{phang2}{cmd:. copy mydir/orig.dta .}{p_end}
{phang2}{cmd:. copy orig.dta ../../}{p_end}
{phang2}{cmd:. copy "my document" "copy of document"}{p_end}
{phang2}{cmd:. copy ../mydir/doc.txt document/doc.tex}{p_end}
{phang2}{cmd:. copy https://www.stata.com/examples/simple.dta simple.dta}{p_end}
{phang2}{cmd:. copy https://www.stata.com/examples/simple.txt simple.txt, text}{p_end}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <copy.sthlp>}