{smcl}
{* *! version 1.2.10  15oct2018}{...}
{vieweralsosee "[D] shell" "mansection D shell"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[D] cd" "help cd_zh"}{...}
{vieweralsosee "[D] copy" "help copy_zh"}{...}
{vieweralsosee "[D] dir" "help dir_zh"}{...}
{vieweralsosee "[D] erase" "help erase_zh"}{...}
{vieweralsosee "[D] mkdir" "help mkdir_zh"}{...}
{vieweralsosee "[D] rmdir" "help rmdir_zh"}{...}
{vieweralsosee "[D] type" "help type_zh"}{...}
{viewerjumpto "Syntax" "shell_zh##syntax"}{...}
{viewerjumpto "Description" "shell_zh##description"}{...}
{viewerjumpto "Links to PDF documentation" "shell_zh##linkspdf"}{...}
{viewerjumpto "Remarks" "shell_zh##remarks"}{...}
{viewerjumpto "Examples" "shell_zh##examples"}
{help shell:English Version}
{hline}{...}
{p2colset 1 14 16 2}{...}
{p2col:{bf:[D] shell} {hline 2}}临时调用操作系统{p_end}
{p2col:}({mansection D shell:查看完整的 PDF 手册条目}){p_end}
{p2colreset}{...}


{marker syntax}{...}
{title:语法}

{p 8 12 2}{c -(}{opt sh:ell}|{cmd:!}{c )-} [{it:操作系统命令}]

{p 8 12 2}{opt winexec} {it:程序名称} [{it:程序参数}]

{p 8 12 2}
{c -(}{opt xsh:ell}|{cmd:!}{cmd:!}{c )-} [{it:操作系统命令}]


{pstd}命令可用性:

                 Stata for ...
        命令    Windows    Mac          Unix(GUI)    Unix(console)
        {hline 61}
        {cmd:shell}         X         X            X            X
        {cmd:winexec}       X         X            X            -
        {cmd:xshell}        -         X            X            - 
        {hline 61}


{marker description}{...}
{title:描述}

{pstd}
{opt shell}（同义词：“{cmd:!}”）允许您向操作系统发送命令或进入您的操作系统进行交互式使用。
Stata 将等待 shell 关闭或 {it:操作系统命令} 完成后再继续。

{pstd}
{opt winexec} 允许您从 Stata 的命令行启动其他程序（如浏览器）。
Stata 将在不等待程序完成的情况下继续运行。

{pstd}
{opt xshell}（仅适用于 Stata for Mac 和 Unix(GUI)）会弹出一个 {opt xterm} 以执行命令。


{marker linkspdf}{...}
{title:PDF 文档链接}

        {mansection D shellRemarksandexamples:备注和示例}

{pstd}
上述部分未包含在此帮助文件中。


{marker remarks}{...}
{title:Mac 用户注意事项}

{pstd}
在 macOS 上，当安装了 {it:X11} 时可以使用 {opt xterm}。要安装 {it:X11}，您必须先从
{browse "https://xquartz.macosforge.org/"} 下载 XQuartz。


{marker examples}{...}
{title:示例}

{p2colset 5 39 41 2}{...}
{p2col :{cmd:. shell}}(进入操作系统){p_end}

{p2col :{cmd:. shell erase *.log}}(Windows){p_end}
{p2col :{cmd:. shell rm *.log}}(Unix 和 Mac){p_end}

{p2col :{cmd:. shell edit myfile.ado}}(假设编辑器命名为 {opt edit}){p_end}

{p2col :{cmd:. !}}
{p2colreset}{...}

{phang}{cmd:. !edit myfile.ado}

{phang}{cmd:. winexec notepad}

{phang}{cmd:. winexec notepad c:\dta\myfile.do}

{phang}{cmd:. winexec c:\windows\notepad}

{phang}{cmd:. winexec c:\windows\notepad c:\dta\myfile.do}{p_end}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <shell.sthlp>}