{smcl}
{* *! version 1.1.11  19oct2017}{...}
{vieweralsosee "[D] type" "mansection D type"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[D] cd" "help cd_zh"}{...}
{vieweralsosee "[D] copy" "help copy_zh"}{...}
{vieweralsosee "[D] dir" "help dir_zh"}{...}
{vieweralsosee "[D] erase" "help erase_zh"}{...}
{vieweralsosee "[D] mkdir" "help mkdir_zh"}{...}
{vieweralsosee "[D] rmdir" "help rmdir_zh"}{...}
{vieweralsosee "[D] shell" "help shell_zh"}{...}
{vieweralsosee "[R] translate" "help translate_zh"}{...}
{vieweralsosee "[R] view" "help view_zh"}{...}
{vieweralsosee "[P] viewsource" "help viewsource_zh"}{...}
{viewerjumpto "语法" "type_zh##syntax"}{...}
{viewerjumpto "描述" "type_zh##description"}{...}
{viewerjumpto "PDF 文档链接" "type_zh##linkspdf"}{...}
{viewerjumpto "选项" "type_zh##options"}{...}
{viewerjumpto "示例" "type_zh##examples"}
{help type:English Version}
{hline}{...}
{p2colset 1 13 15 2}{...}
{p2col:{bf:[D] type} {hline 2}}显示文件内容{p_end}
{p2col:}({mansection D type:查看完整 PDF 手册条目}){p_end}
{p2colreset}{...}


{marker syntax}{...}
{title:语法}

{p 8 13 2}{cmdab:ty:pe} [{cmd:"}]{it:{help filename_zh}}[{cmd:"}] [{cmd:,} {it:options}]

{p 4 11 2}注意：如果 {it:filename} 包含空格，则必须使用双引号将其括起来。

{synoptset 10}{...}
{synopthdr}
{synoptline}
{synopt :{opt a:sis}}以原样显示文件；默认情况下，对于后缀为 {hi:.smcl} 或 {hi:.sthlp} 的文件，以 SMCL 显示{p_end}
{synopt :{opt smcl}}以 SMCL 显示文件；默认情况下，对于后缀为 {hi:.smcl} 或 {hi:.sthlp} 的文件{p_end}
{synopt :{opt s:howtabs}}以 {hi:<T>} 的形式显示制表符，而不是被展开{p_end}
{synopt :{opt star:bang}}列出以 "{cmd:*!}" 开头的文件行{p_end}
{synopt:{opt lines(#)}}列出前 {it:#} 行{p_end}
{synoptline}
{p2colreset}{...}


{marker description}{...}
{title:描述}

{pstd}
{cmd:type} 列出存储在磁盘上的文件内容。该命令类似于 Windows 的 {cmd:type} 命令以及 Unix 的 {cmd:more}(1) 或 {cmd:pg}(1) 命令。

{pstd}
在 Stata for Mac 和 Stata for Unix 中，{cmd:cat} 是 {cmd:type} 的同义词。

{pstd}
在所有平台上，Stata 将开头的 "~" 理解为家目录的缩写。


{marker linkspdf}{...}
{title:PDF 文档链接}

        {mansection D typeQuickstart:快速入门}

        {mansection D typeRemarksandexamples:备注和示例}

{pstd}
以上部分不包含在此帮助文件中。


{marker options}{...}
{title:选项}

{phang}
{cmd:asis} 指定文件以原样显示。默认情况下，对于后缀为 {hi:.smcl} 或 {hi:.sthlp} 的文件，以 SMCL 显示，这意味着将解释并正确呈现 SMCL 指令。因此 {cmd:type} 可用于查看由 {cmd:log using} 命令创建的文件。

{phang}
{opt smcl} 指定文件以 SMCL 显示，这意味着将解释并正确呈现 SMCL 指令。这是后缀为 {hi:.smcl} 或 {hi:.sthlp} 的文件的默认值。

{phang}
{opt showtabs} 请求任何制表符以 {hi:<T>} 的形式显示，而不是被展开。

{phang}
{opt starbang} 仅列出指定文件中以 "{cmd:*!}" 开头的行。这类注释行通常用于指示 ado 文件、类文件等的版本号。{opt starbang} 不能与 SMCL 文件一起使用。

{phang}
{opt lines(#)} 列出文件的前 {it:#} 行。 如果文件以 SMCL 显示，或者 {it:#} 小于或等于 0，则忽略 {opt lines()}。


{marker examples}{...}
{title:示例}

    Windows:
	{cmd:. type myfile.dct}
	{cmd:. type ..\dcts\myfile.dct}

    Mac 和 Unix:
	{cmd:. type myfile.dct}
	{cmd:. type ../dcts/myfile.dct}

    {hline}
{pstd}设置{p_end}
{phang2}{cmd:. log using mylog}{p_end}
{phang2}{cmd:. sysuse auto}{p_end}
{phang2}{cmd:. keep make price mpg rep78 foreign}{p_end}
{phang2}{cmd:. keep in 1/10}{p_end}
{phang2}{cmd:. outfile using myout}{p_end}
{phang2}{cmd:. outfile using myout, dictionary}{p_end}
{phang2}{cmd:. log close}

{pstd}显示 {cmd:myout.raw} 的内容{p_end}
{phang2}{cmd:. type myout.raw}

{pstd}显示 {cmd:myout.dct} 的内容{p_end}
{phang2}{cmd:. type myout.dct}

{pstd}显示 {cmd:mylog.smcl} 的内容{p_end}
{phang2}{cmd:. type mylog.smcl}

{pstd}显示 {cmd:mylog.smcl} 的内容，但以原样形式显示{p_end}
{phang2}{cmd:. type mylog.smcl, asis}{p_end}
    {hline}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <type.sthlp>}