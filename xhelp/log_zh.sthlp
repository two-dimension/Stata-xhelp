{smcl}
{* *! version 1.3.8  19oct2017}{...}
{viewerdialog log "dialog log_dlg"}{...}
{vieweralsosee "[R] log" "mansection R log"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[R] query" "help query_zh"}{...}
{vieweralsosee "[R] translate" "help translate_zh"}{...}
{viewerjumpto "语法" "log_zh##syntax"}{...}
{viewerjumpto "菜单" "log_zh##menu"}{...}
{viewerjumpto "描述" "log_zh##description"}{...}
{viewerjumpto "PDF 文档链接" "log_zh##linkspdf"}{...}
{viewerjumpto "适用于 log 和 cmdlog 的选项" "log_zh##options_both"}{...}
{viewerjumpto "适用于 log 的选项" "log_zh##options_log"}{...}
{viewerjumpto "用于设置 logtype 的选项" "log_zh##option_set_logtype"}{...}
{viewerjumpto "备注" "log_zh##remarks"}{...}
{viewerjumpto "示例" "log_zh##examples"}{...}
{viewerjumpto "存储结果" "log_zh##results"}
{help log:English Version}
{hline}{...}
{p2colset 1 12 14 2}{...}
{p2col:{bf:[R] log} {hline 2}}将会话的副本回显到文件{p_end}
{p2col:}({mansection R log:查看完整 PDF 手册条目}){p_end}
{p2colreset}{...}


{marker syntax}{...}
{title:语法}

{phang}
报告日志文件状态

{p 8 13 2}
{opt log}

{p 8 13 2}
{opt log} {cmd:query} [{it:logname} | {cmd:_all}]


{phang}
打开日志文件

{p 8 13 2}
{opt log} {cmd:using} {it:{help filename_zh}} [{cmd:,} {cmd:append}
{cmd:replace} [{opt t:ext}{c |}{opt s:mcl}] {opt name(logname)} {cmd:nomsg}]


{phang}
关闭日志

{p 8 13 2}
{opt log} {opt c:lose} [{it:logname} | {cmd:_all}]


{phang}
暂时暂停记录或恢复记录

{p 8 13 2}
{opt log} {c -(}{opt of:f}{c |}{opt on}{c )-} [{it:logname}]


{phang}
报告命令日志文件的状态

{p 8 16 2}
{cmd:cmdlog}


{phang}
打开命令日志文件

{p 8 16 2}
{cmd:cmdlog} {cmd:using} {it:{help filename_zh}} [{cmd:,} {cmd:append}
       {cmd:replace}]


{phang}
关闭命令日志、暂时暂停记录或恢复记录

{p 8 16 2}
{cmd:cmdlog} {c -(}{opt c:lose}{c |}{opt on}{c |}{opt of:f}{c )-}


{phang}
设置日志的默认格式

{p 8 16 2}
{cmd:set logtype} {c -(}{opt t:ext}{c |}{opt s:mcl}{c )-}
[{cmd:,} {opt perm:anently}]


{phang}
指定屏幕宽度

{p 8 16 2}
{ul:{cmd:set}} {opt li:nesize} {it:#}


{phang}
除了使用 {cmd:log} 命令外，您可以通过从菜单选择 {bf:File > Log} 来访问 {cmd:log} 的功能，并选择列表中的一个选项。


{marker menu}{...}
{title:菜单}

{phang}
{bf:File > Log}


{marker description}{...}
{title:描述}

{pstd}
{cmd:log} 及其子命令告诉 Stata 打开日志文件，并记录您输入的内容以及在结果窗口中出现的任何输出，暂停或恢复记录，检查记录状态，并关闭日志文件。默认格式为 Stata 标记和控制语言 (SMCL)，但也可以是纯文本。您可以同时打开最多五个 SMCL 日志和五个文本日志。 {cmd:cmdlog} 及其子命令类似于 {cmd:log}，但只记录您输入的命令，并且只能是纯文本。您一次只能打开一个命令日志。

{pstd}
{cmd:set logtype} 和 {cmd:set linesize} 是控制与日志相关的系统参数的命令。


{marker linkspdf}{...}
{title:PDF 文档链接}

        {mansection R logQuickstart:快速入门}

        {mansection R logRemarksandexamples:备注和示例}

{pstd}
上述部分未包含在此帮助文件中。


{marker options_both}{...}
{title:适用于 log 和 cmdlog 的选项}

{phang}
{opt append} 指定将结果附加到现有文件。如果文件尚不存在，则会创建一个新文件。

{phang}
{opt replace} 指定如果 {it:{help filename_zh}} 已存在，则将其覆盖。当您未指定 {opt replace} 或 {opt append} 时，系统假定文件是新文件。如果指定的文件已存在，将发出错误消息，并且不会开始记录。


{marker options_log}{...}
{title:适用于 log 的选项}

{phang}
{opt text} 和 {opt smcl} 指定日志记录的格式。默认格式比较复杂，但正如您所期望的那样：

{pmore}
如果您将文件指定为 {it:{help filename_zh}}{cmd:.smcl}，则默认将日志写入 SMCL 格式（无论 {cmd:set logtype} 的值如何）。

{pmore}
如果您将文件指定为 {it:filename}{cmd:.log}，则默认将日志写入文本格式（无论 {cmd:set logtype} 的值如何）。

{pmore}
如果您输入 {it:filename} 而没有扩展名，并且未指定 {opt smcl} 选项或 {opt text} 选项，默认情况下将根据 {cmd:set logtype} 的值写入文件。如果您未 {cmd:set logtype}，则默认格式为 SMCL。此外，如果正在创建 SMCL 日志，则您指定的 {it:filename} 将被固定为 {it:filename}{cmd:.smcl}；如果正在创建文本日志，则将为 {it:filename}{cmd:.log}。

{pmore}
如果您指定了 {cmd:text} 或 {cmd:smcl} 选项，则您指定的格式决定日志的写入方式。如果 {it:filename} 没有指定扩展名，则会为您添加适当的扩展名。

{pmore}
如果您打开多个日志文件，您可以为每个文件选择不同的格式。

{phang}
{opt name(logname)} 指定一个可选名称，您可以在日志打开时使用它进行引用。您可以启动多个日志文件，为每个文件赋予不同的 {it:logname}，然后分别关闭、暂时暂停或恢复它们。默认的 {it:logname} 为 {cmd:<unnamed>}。

{phang}
{opt nomsg} 抑制日志文件顶部和底部显示的默认消息。此消息由日志名称（如果在 {cmd:name()} 中指定，否则为 {cmd:unnamed}）、日志路径、日志类型和打开或关闭的日期组成。


{marker option_set_logtype}{...}
{title:用于设置 logtype 的选项}

{phang}
{opt permanently} 指定除了立即进行更改外，还要记住 {cmd:logtype} 设置，并使其成为调用 Stata 时的默认设置。


{marker remarks}{...}
{title:备注}

{pstd}
完整日志是一个包含您输入的内容和 Stata 的输出（显示在结果窗口中的内容）的文件。要开始记录您的会话，您输入 {cmd:log} {cmd:using} {it:filename}。如果 {it:filename} 包含嵌入空格，请记得用双引号括起来。

{pstd}
当默认日志格式为 SMCL 时，如果 {it:filename} 在没有扩展名的情况下指定，{cmd:log} 将添加扩展名 {cmd:.smcl}。如果指定了 {cmd:text} 或将默认日志类型更改为文本，则 {cmd:log} 添加扩展名 {cmd:.log}。

{pstd}
我们推荐使用 SMCL，因为它保留了字体和颜色。SMCL 日志可以像任何文本文件一样在查看器窗口中查看和打印；请参见 {manhelp view R}。控制台 Stata 的用户可以使用 {cmd:translate} 生成可打印的日志文件版本。 {cmd:translate} 还将 SMCL 日志转换为文本或其他格式，例如 PostScript 或 PDF；请参见 {manhelp translate R}。


{marker examples}{...}
{title:示例}

{phang}{cmd:. log using mylog}

{phang}{cmd:. log close}

{phang}{cmd:. log using mylog, append}

{phang}{cmd:. log close}

{phang}{cmd:. log using "filename containing spaces"}

{phang}{cmd:. log using firstfile, name(log1) text}

{phang}{cmd:. log using secondfile, name(log2) smcl}

{phang}{cmd:. log using thirdfile, name(log3) smcl}

{phang}{cmd:. log query _all}

{phang}{cmd:. log close log1}

{phang}{cmd:. log close _all}


{marker results}{...}
{title:存储结果}

{pstd}
{cmd:log} 和 {cmd:cmdlog} 将以下内容存储在 {cmd:r()} 中：

{synoptset 20 tabbed}{...}
{p2col 5 20 24 2: 宏}{p_end}
{synopt:{cmd:r(name)}}{it:logname}{p_end}
{synopt:{cmd:r(filename)}}文件的名称{p_end}
{synopt:{cmd:r(status)}}{cmd:on} 或 {cmd:off}{p_end}
{synopt:{cmd:r(type)}}{cmd:smcl} 或 {cmd:text}{p_end}
{p2colreset}{...}

{pstd}
{cmd:log} {cmd:query} {cmd:_all} 将以下内容存储在 {cmd:r()} 中：

{synoptset 20 tabbed}{...}
{p2col 5 20 24 2: 标量}{p_end}
{synopt:{cmd:r(numlogs)}}打开的日志文件数量{p_end}

{pstd}
对于每个打开的日志文件，{cmd:log} {cmd:query} {cmd:_all} 还存储

{synoptset 20 tabbed}{...}
{p2col 5 20 24 2: 宏}{p_end}
{synopt:{cmd:r(name}{it:#}{cmd:)}}{it:logname}{p_end}
{synopt:{cmd:r(filename}{it:#}{cmd:)}}文件的名称{p_end}
{synopt:{cmd:r(status}{it:#}{cmd:)}}{cmd:on} 或 {cmd:off}{p_end}
{synopt:{cmd:r(type}{it:#}{cmd:)}}{cmd:smcl} 或 {cmd:text}{p_end}
{p2colreset}{...}

{pstd}
其中 {it:#} 的值在 {cmd:1} 和 {cmd:r(numlogs)} 之间变化。请注意，{it:#} 不一定表示日志文件首次打开的顺序，对于多次调用 {cmd:log} {cmd:query}，它也不一定保持不变。{p_end}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <log.sthlp>}