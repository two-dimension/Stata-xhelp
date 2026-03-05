{smcl}
{* *! version 1.0.5  11feb2011}{...}
{vieweralsosee undocumented "help undocumented"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[P] rmsg" "help rmsg_zh"}{...}
{vieweralsosee "[P] timer" "help timer_zh"}{...}
{vieweralsosee "[P] trace" "help trace_zh"}{...}
{viewerjumpto "Syntax" "profiler_zh##syntax"}{...}
{viewerjumpto "Description" "profiler_zh##description"}{...}
{viewerjumpto "Examples" "profiler_zh##examples"}
{help profiler:English Version}
{hline}{...}
{title:标题}

{p 4 22 2}
{hi:[P] profiler} {hline 2} 通过记录和报告每个程序所花费的时间来分析 Stata 程序


{marker syntax}{...}
{title:语法}

	{cmd:profiler} {cmd:on}

	{cmd:profiler} {cmd:off}

	{cmd:profiler} {cmd:clear}

	{cmd:profiler} {cmd:report}


{marker description}{...}
{title:描述}

{pstd}
{cmd:profiler} 是一个程序员命令，可以帮助优化 ado 文件和其他 Stata 程序。当分析开启时，{cmd:profiler on}，Stata 开始记录每次程序运行的时间，以及花费的时间。记录只包括直接在程序中花费的时间，而不包括在程序中调用的其他程序中花费的时间——这些后者的时间与被调用程序一起记录。

{pstd}
{cmd:profiler report} 生成每个程序被调用次数的报告，以及在启用分析时该程序所花费的时间的总和。

{pstd}
{cmd:profiler off} 关闭分析，计数程序调用和时间，但不清除寄存器。如果在关闭分析后输入 {cmd:profiler on}，则保留原始记录并将新的计时添加到该记录中。

{pstd}
{cmd:profiler clear} 清除分析记录；即将所有计时和计数器设置为 0。如果分析开启，则保持开启；如果分析关闭，则保持关闭。


{marker examples}{...}
{title:示例}

{pstd}要分析 heckman.ado 及其调用的所有程序：

{phang2}{cmd:. profiler on}{p_end}
{phang2}{cmd:. heckman ...}{p_end}
{phang2}{cmd:. profiler off}{p_end}
{phang2}{cmd:. profiler report}{p_end}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <profiler.sthlp>}