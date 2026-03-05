{smcl}
{* *! version 1.2.5  25sep2018}{...}
{vieweralsosee "[R] exit" "mansection R exit"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[P] exit" "help exit_program_zh"}{...}
{viewerjumpto "Syntax" "exit_zh##syntax"}{...}
{viewerjumpto "Description" "exit_zh##description"}{...}
{viewerjumpto "Links to PDF documentation" "exit_zh##linkspdf"}{...}
{viewerjumpto "Option" "exit_zh##option"}{...}
{viewerjumpto "Examples" "exit_zh##examples"}
{help exit:English Version}
{hline}{...}
{p2colset 1 13 15 2}{...}
{p2col:{bf:[R] exit} {hline 2}}退出 Stata{p_end}
{p2col:}({mansection R exit:查看完整的 PDF 手册条目}){p_end}
{p2colreset}{...}


{marker syntax}{...}
{title:语法}

{p 8 13 2}{cmdab:e:xit} [{cmd:,} {cmd:clear}]


{marker description}{...}
{title:描述}

{pstd}
输入 {cmd:exit} 会导致 Stata 停止处理并将控制权返回给操作系统。如果自上次 {cmd:save} 命令以来内存中的数据集发生了变化，则必须指定 {opt clear} 选项才能退出 Stata。

{pstd}
如果您希望在 do 文件或程序中使用 {cmd:exit} 来设置返回代码或终止程序，请参见 {help exit_program_zh:[P] exit}。

{pstd}
Windows 用户还可以通过单击 {bf:Close} 按钮或按 {bf:Alt}+{bf:F4} 来退出 Stata。

{pstd}
Mac 用户可以通过按 {bf:Command}+{bf:Q} 来退出 Stata。

{pstd}Unix(GUI) 用户还可以通过单击 {bf:Close} 按钮来退出 Stata。


{marker linkspdf}{...}
{title:PDF 文档链接}

        {mansection R exitRemarksandexamples:备注和示例}

{pstd}
上述部分未包含在此帮助文件中。


{marker option}{...}
{title:选项}

{phang}{opt clear} 允许您退出，即使当前数据集尚未保存。


{marker examples}{...}
{title:示例}

    {hline}
    设置
{phang2}{cmd:. sysuse auto}{p_end}
{phang2}{cmd:. regress price mpg rep78 foreign}{p_end}

    退出 Stata
{phang2}{cmd:. exit}

    {hline}
    设置
{phang2}{cmd:. sysuse auto}{p_end}
{phang2}{cmd:. drop if rep78==.}{p_end}

{pstd}即使数据集已更改且尚未保存，也退出 Stata{p_end}
{phang2}{cmd:. exit, clear}{p_end}
    {hline}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <exit.sthlp>}