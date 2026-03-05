{smcl}
{* *! version 1.1.5  19oct2017}{...}
{vieweralsosee "[P] pause" "mansection P pause"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[P] program" "help program_zh"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[P] more" "help more_zh"}{...}
{vieweralsosee "[P] trace" "help trace_zh"}{...}
{viewerjumpto "Syntax" "pause_zh##syntax"}{...}
{viewerjumpto "Description" "pause_zh##description"}{...}
{viewerjumpto "Links to PDF documentation" "pause_zh##linkspdf"}{...}
{viewerjumpto "Remarks" "pause_zh##remarks"}
{help pause:English Version}
{hline}{...}
{p2colset 1 14 16 2}{...}
{p2col:{bf:[P] pause} {hline 2}}程序调试命令{p_end}
{p2col:}({mansection P pause:查看完整PDF手册条目}){p_end}
{p2colreset}{...}


{marker syntax}{...}
{title:语法}

{p 8 14 2}{cmd:pause} {c -(} {cmd:on} | {cmd:off} | [{it:message}] {c )-}


{marker description}{...}
{title:描述}

{pstd}如果暂停功能开启，{cmd:pause} [{it:message}] 命令将显示
{it:message} 并暂时挂起程序的执行，将控制权返回给键盘。在您输入 {cmd:end} 或 {cmd:q} 之前，键盘命令的执行将持续进行，此时程序执行将恢复。
在暂停模式下输入 {cmd:BREAK}（而不是按 {hi:Break} 键）也将恢复程序的执行，但中断信号会发送给调用程序。

{pstd}如果暂停功能关闭，{cmd:pause} 不会执行任何操作。

{pstd}默认情况下暂停功能是关闭的。输入 {cmd:pause on} 将开启暂停功能。输入 {cmd:pause off} 将其关闭。


{marker linkspdf}{...}
{title:链接到PDF文档}

        {mansection P pauseRemarksandexamples:备注和示例}

{pstd}
上述部分未包含在此帮助文件中。


{marker remarks}{...}
{title:备注}

{pstd}
{cmd:pause} 有助于调试 Stata 程序。将 {cmd:pause} 或
{cmd:pause} {it:message} 放置在程序中可疑出错的行（可以在程序中放置多个 {cmd:pause}）。例如，您有一个程序无法正常工作。这个程序的一部分读取

        {cmd:gen `tmp'=exp(`1')/`2'}
        {cmd:summarize `tmp'}
        {cmd:local mean=r(mean)}

{pstd}
您认为错误可能出在 {cmd:`tmp'} 的创建上。您将程序修改为

        {cmd:gen `tmp'=exp(`1')/`2'}
        {cmd:pause 刚创建 tmp}        /* 这一行是新加的 */
        {cmd:summarize `tmp'}
        {cmd:local mean=r(mean)}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <pause.sthlp>}