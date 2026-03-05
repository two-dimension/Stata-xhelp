{smcl}
{* *! version 1.1.6  19oct2017}{...}
{vieweralsosee "[P] rmsg" "mansection P rmsg"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[P] error" "help error_zh"}{...}
{vieweralsosee "[P] profiler" "help profiler_zh"}{...}
{vieweralsosee "[R] query" "help query_zh"}{...}
{vieweralsosee "[P] timer" "help timer_zh"}{...}
{viewerjumpto "Syntax" "rmsg_zh##syntax"}{...}
{viewerjumpto "Description" "rmsg_zh##description"}{...}
{viewerjumpto "Links to PDF documentation" "rmsg_zh##linkspdf"}{...}
{viewerjumpto "Option" "rmsg_zh##option"}{...}
{viewerjumpto "Remarks" "rmsg_zh##remarks"}
{help rmsg:English Version}
{hline}{...}
{p2colset 1 13 15 2}{...}
{p2col:{bf:[P] rmsg} {hline 2}}返回消息{p_end}
{p2col:}({mansection P rmsg:查看完整的 PDF 手册条目}){p_end}
{p2colreset}{...}


{marker syntax}{...}
{title:语法}

{p 8 17 2}{cmd:set} {cmdab:r:msg} {c -(} {cmd:on} | {cmd:off} {c )-}
	[{cmd:,} {cmdab:perm:anently}]


{marker description}{...}
{title:描述}

{pstd}
{cmd:set rmsg} 用于确定是否在每个命令完成时显示返回消息。 初始设置为 {cmd:off}。
返回消息显示命令执行所花费的时间和执行完成的时间。


{marker linkspdf}{...}
{title:链接到 PDF 文档}

        {mansection P rmsgRemarksandexamples:备注和示例}

{pstd}
上述部分不包括在此帮助文件中。


{marker option}{...}
{title:选项}

{phang}
{cmd:permanently} 指定除了立即进行更改外，{cmd:rmsg} 设置将被记住，并在您调用 Stata 时成为默认设置。


{marker remarks}{...}
{title:备注}

{pstd}
请参阅 {findalias frrc} 以获取关于返回消息和使用此命令的描述。
{p_end}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <rmsg.sthlp>}