{smcl}
{* *! version 1.1.4  19oct2017}{...}
{viewerdialog printer "dialog printer"}{...}
{vieweralsosee "[R] translate" "mansection R translate"}{...}
{viewerjumpto "Syntax" "printer_zh##syntax"}{...}
{viewerjumpto "Description" "printer_zh##description"}{...}
{viewerjumpto "Links to PDF documentation" "printer_zh##linkspdf"}
{help printer:English Version}
{hline}{...}
{p2colset 1 18 20 2}{...}
{p2col:{bf:[R] translate} {hline 2}}打印文件 (仅限Unix)
{p_end}
{p2col:}({mansection R translate:查看完整的PDF手册条目}){p_end}
{p2colreset}{...}


{marker syntax}{...}
{title:语法}

{p 8 16 2}{cmd:printer} {cmdab:def:ine} {it:printername} [{{cmd:ps}|{cmd:txt}}
{cmd:"}{it:Unix命令与} {cmd:@"} ]

{p 8 16 2}{cmd:printer} {cmdab:q:uery} [{it:printername}]


{marker description}{...}
{title:描述}

{pstd}
{help print_zh} 命令假设您在 Unix 计算机上连接了一台 PostScript 打印机，并且可以使用 Unix 命令 lpr(1) 将 PostScript 文件发送到该打印机，但您可以更改此设置。 可能在您的 Unix 系统上，输入

{phang2}mycomputer$ {cmd:lpr <} {it:filename}

{pstd}
不足以打印 PostScript 文件。 例如，您可能需要输入

{phang2}mycomputer$ {cmd:lpr -Plexmark <} {it:filename}

{pstd}或者您可能需要

{phang2}mycomputer$ {cmd:lpr -Plexmark} {it:filename}

{pstd}或者您可能需要其他命令。 要将打印命令设置为 {cmd:lpr -Plexmark} {it:filename} 并说明打印机期望接收 PostScript 文件，请输入

{phang2}{cmd:. printer define prn ps "lpr -Plexmark @"}

{pstd}
也就是说，只需输入将文件发送到您的打印机所需的命令，并在文件名应替换的地方包含一个 {cmd:@} 符号。 默认为出厂设置为

{phang2}{cmd:. printer define prn ps "lpr < @"}

{pstd}您可以定义多个打印机。 默认情况下，{cmd:print} 使用名为 {hi:prn} 的打印机，但 {help print_zh} 有选项 {cmd:printer(}{it:printername}{cmd:)}，因此，如果您定义多个打印机，可以将输出路由到它们。

{pstd}
您设置的任何打印机都会在会话之间记住。 您可以使用 {cmd:printer define} {it:printername} 命令后跟没有参数来删除打印机。 您可能不希望删除 {hi:prn} 打印机的定义。

{pstd}
您可以通过输入 {cmd:printer query} 列出所有已定义的打印机，并且可以通过输入 {cmd:printer query prn} 列出特定打印机的定义，比如 {hi:prn}。
{p_end}


{marker linkspdf}{...}
{title:PDF文档链接}

        {mansection R translateQuickstart:快速入门}

        {mansection R translateRemarksandexamples:备注和示例}

{pstd}
上述部分不包含在此帮助文件中。

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <printer.sthlp>}