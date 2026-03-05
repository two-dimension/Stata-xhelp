{smcl}
{* *! version 1.2.3  23apr2019}{...}
{vieweralsosee "[R] which" "mansection R which"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[P] findfile" "help findfile_zh"}{...}
{vieweralsosee "[P] version" "help version_zh"}{...}
{viewerjumpto "语法" "which_zh##syntax"}{...}
{viewerjumpto "描述" "which_zh##description"}{...}
{viewerjumpto "PDF文档链接" "which_zh##linkspdf"}{...}
{viewerjumpto "选项" "which_zh##option"}{...}
{viewerjumpto "示例" "which_zh##examples"}
{help which:English Version}
{hline}{...}
{p2colset 1 14 16 2}{...}
{p2col:{bf:[R] which} {hline 2}}显示 ado 文件的位置和版本{p_end}
{p2col:}({mansection R which:查看完整的 PDF 手册条目}){p_end}
{p2colreset}{...}


{marker syntax}{...}
{title:语法}

{p 8 20 2}
{cmd:which} {it:fname}[{cmd:.}{it:ftype}] [{cmd:,} {cmd:all}]


{marker description}{...}
{title:描述}

{pstd}
{cmd:which} 在 {hi:S_ADO} 路径中查找文件 {it:fname}{cmd:.}{it:ftype}。如果 Stata 找到该文件，{cmd:which} 将显示完整的路径和文件名，并且如果文件是文本格式，会显示所有以 "{hi:*!}" 开头的行。如果 Stata 找不到该文件，{cmd:which} 会发出消息 "{err:未在 ado 路径中找到文件}"，并将返回代码设置为 111。{it:ftype} 必须是 Stata 通常在 ado 路径中查找的文件类型。允许的 {it:ftypes} 包括：

{p 8 8}
{cmd:.ado}, {cmd:.class}, {cmd:.dlg}, {cmd:idlg}, {cmd:.sthlp}, {cmd:.ihlp},
{cmd:.hlp}, {cmd:.jar}, {cmd:.key}, {cmd:.maint}, {cmd:.mata}, {cmd:.mlib},
{cmd:.mo}, {cmd:.mnu}, {cmd:.plugin}, {cmd:.png}, {cmd:.py}, {cmd:.scheme},
{cmd:.stbcal} 和 {cmd:.style}

{pstd}
如果省略 {it:ftype}，则 {cmd:which} 默认为 {hi:.ado}。在查找 {hi:.ado} 文件时，如果 Stata 找不到该文件，Stata 将检查 {it:fname} 是否是内置的 Stata 命令，允许有效的缩写。如果是，将显示消息 "{res:内置命令}"；如果不是，将显示消息 "{err:命令未找到，既不是内置命令也不是 ado 文件}"，并将返回代码设置为 111。

{pstd}
有关内部版本控制的信息，请参见 {manhelp version P}。


{marker linkspdf}{...}
{title:PDF文档链接}

        {mansection R whichRemarksandexamples:备注和示例}

{pstd}
上述部分未包含在此帮助文件中。


{marker option}{...}
{title:选项}

{phang}
{cmd:all} 强制 {cmd:which} 报告在搜索路径中找到的所有与 {it:fname}{cmd:.}{it:ftype} 匹配的文件的位置。默认情况下，仅报告找到的第一个文件。


{marker examples}{...}
{title:示例}

{pstd}
{cmd:which} 命令显示 {cmd:filename.ado} 的路径及代码中所有以 "{cmd:*!}" 开头的行。

        {cmd:. which test}
        C:\Program Files\Stata16\ado\base\t\test.ado
        *! version 2.3.4  14apr2016

{pstd}
如果我们输入 {cmd:which} {it:command}，其中 {it:command} 是内置命令而不是 ado 文件，Stata 将响应：

        {cmd:. which summarize}
        内置命令:  summarize

{pstd}
如果 {it:command} 既不是内置命令也不是 ado 文件，Stata 将响应：

        {cmd:. which junk}
        命令 junk 未找到，既不是内置命令也不是 ado 文件
        r(111);

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <which.sthlp>}