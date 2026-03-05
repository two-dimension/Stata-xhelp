{smcl}
{* *! version 1.0.4  14may2018}{...}
{vieweralsosee "[P] exit" "mansection P exit"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[P] capture" "help capture_zh"}{...}
{vieweralsosee "[P] class exit" "help class_exit_zh"}{...}
{vieweralsosee "[P] continue" "help continue_zh"}{...}
{vieweralsosee "[P] error" "help error_zh"}{...}
{vieweralsosee "[R] Error messages" "help error messages"}{...}
{vieweralsosee "[R] exit" "help exit_zh"}{...}
{viewerjumpto "Syntax" "exit_program_zh##syntax"}{...}
{viewerjumpto "Description" "exit_program_zh##description"}{...}
{viewerjumpto "Links to PDF documentation" "exit_program_zh##linkspdf"}{...}
{viewerjumpto "Options" "exit_program_zh##options"}{...}
{viewerjumpto "Remarks" "exit_program_zh##remarks"}{...}
{viewerjumpto "Examples" "exit_program_zh##examples"}
{help exit_program:English Version}
{hline}{...}
{p2colset 1 13 15 2}{...}
{p2col:{bf:[P] exit} {hline 2}}退出程序或 do-file{p_end}
{p2col:}({mansection P exit:查看完整的PDF手册条目}){p_end}
{p2colreset}{...}


{marker syntax}{...}
{title:语法}

{p 8 13 2}{cmdab:e:xit} [[{cmd:=}]{it:{help exp_zh}}] [{cmd:,} {it:选项}]

{synoptset 9}{...}
{synopthdr}
{synoptline}
{synopt :{opt clear}}退出 Stata，即使当前数据集尚未保存{p_end}
{synopt :{opt STATA}}退出 Stata并将控制权返回给操作系统{p_end}
{synoptline}
{p2colreset}{...}


{marker description}{...}
{title:描述}

{pstd}
从键盘输入的 {cmd:exit} 命令使 Stata 终止处理并将控制权返回给操作系统。如果自上次 {cmd:save} 命令以来内存中的数据集已更改，则必须在 Stata 允许你退出之前指定 {cmd:clear} 选项。以这种方式使用该命令的内容在 {help exit_zh:[R] exit} 中有讨论。

{pstd}
更一般来说，{cmd:exit} 会使 Stata 终止当前进程，并将控制权返回给调用进程。返回码设置为表达式的值，如果未指定表达式，则设置为零。因此，{cmd:exit} 可用于退出程序或 do-file，并将控制权返回给 Stata。带有选项的 {cmd:exit} 甚至可以在程序或 do-file 中退出 Stata。这种 {cmd:exit} 的使用是本条目的主题。


{marker linkspdf}{...}
{title:PDF 文档链接}

        {mansection P exitRemarksandexamples:备注和示例}

{pstd}
上述部分不包括在此帮助文件中。


{marker options}{...}
{title:选项}

{phang}{opt clear} 允许您退出，即使当前数据集尚未保存。

{phang}{opt STATA} 退出 Stata，并将控制权返回给操作系统，即使是在 do-file 或程序中给出的情况下。如果从键盘发出 {cmd:exit} 命令，则隐含了 {opt STATA} 选项。


{marker remarks}{...}
{title:备注}

{pstd}
如果在循环内包含 {cmd:exit} 以中断执行，则应谨慎使用。更合适的命令是 {help continue_zh} 或 {help continue_zh:continue, break}。
{cmd:continue} 用于显式中断当前循环迭代的执行，除非指定了 {cmd:break} 选项，此时执行将在循环命令后的命令处恢复。


{marker examples}{...}
{title:示例}

    {hline}
{pstd}以下是一个无用的程序，将告诉您变量是否存在：

        {cmd}. program check
          1. capture confirm variable `1'
          2. if _rc!=0 {
          3.    display "`1' not found"
          4.    exit
          5. }
          6. display "The variable `1' exists."
          7. end{txt}

        {cmd:. check median_age}
        变量 median_age 存在。

        {cmd:. check age}
        age 未找到

{pstd}
{cmd:exit} 没有关闭 Stata 并导致返回操作系统；它只是终止了该程序。

    {hline}
    设置
{phang2}{cmd:. sysuse auto}{p_end}
{phang2}{cmd:. drop if rep78==.}{p_end}

{pstd}即使数据集已更改并且尚未保存，仍然退出 Stata{p_end}
{phang2}{cmd:. exit, clear}{p_end}
    {hline}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <exit_program.sthlp>}