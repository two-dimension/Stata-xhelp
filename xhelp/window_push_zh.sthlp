{smcl}
{* *! version 1.2.4  29jan2019}{...}
{vieweralsosee "[P] window push" "mansection P windowpush"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[R] #review" "help review_zh"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[P] window programming" "help window_programming_zh"}{...}
{viewerjumpto "Syntax" "window_push_zh##syntax"}{...}
{viewerjumpto "Description" "window_push_zh##description"}{...}
{viewerjumpto "Links to PDF documentation" "window_push_zh##linkspdf"}{...}
{viewerjumpto "Remarks" "window_push_zh##remarks"}
{help window_push:English Version}
{hline}{...}
{p2colset 1 20 22 2}{...}
{p2col:{bf:[P] window push} {hline 2}}将命令复制到历史窗口{p_end}
{p2col:}({mansection P windowpush:查看完整的PDF手册条目}){p_end}
{p2colreset}{...}


{marker syntax}{...}
{title:语法}

{p 8 18 2}
{opt win:dow} {opt push} {it:命令行}


{marker description}{...}
{title:描述}

{pstd}
{cmd:window} {cmd:push} 将指定的 {it:命令行} 复制到命令历史的末尾。 {it:命令行} 将作为最近的命令出现在 {cmd:#review} 列表中，并在历史窗口中作为最后一个命令显示。


{marker linkspdf}{...}
{title:PDF文档链接}

        {mansection P windowpushRemarksandexamples:备注和示例}

{pstd}
以上部分未包含在此帮助文件中。


{marker remarks}{...}
{title:备注}

{pstd}
{cmd:window} {cmd:push} 在一个 Stata 命令创建另一个 Stata 命令并执行时非常有用。通常，ado 文件中的命令不会添加到命令历史中，但某些 ado 文件（例如 Stata 命令的对话界面）可能仅用于创建并执行另一个 Stata 命令。

{pstd}
{cmd:window} {cmd:push} 允许接口在执行命令后将创建的命令添加到命令历史（因此添加到历史窗口）中。

     {hline 50} 开始 example.do {hline 4}
     {cmd}program example
         version {ccl stata_version}
         display "此显示命令未添加到命令历史中"
         display "此显示命令已添加到命令历史中"
         window push display "此显示命令已添加到命令 /*
             */历史中"
     end{txt}
     {hline 50} 结束 example.do {hline 6}

     {cmd}. example
     此显示命令未添加到命令历史中
     此显示命令已添加到命令历史中

     . #review
     3
     2 example
     1 display "此显示命令已添加到命令历史中"

     .{txt}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <window_push.sthlp>}