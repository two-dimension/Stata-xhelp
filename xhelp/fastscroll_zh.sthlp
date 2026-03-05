{smcl}
{* *! version 1.1.2  11feb2011}{...}
{vieweralsosee "[R] set" "mansection R set"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[R] query" "help query_zh"}{...}
{viewerjumpto "语法" "fastscroll_zh##syntax"}{...}
{viewerjumpto "描述" "fastscroll_zh##description"}{...}
{viewerjumpto "选项" "fastscroll_zh##option"}
{help fastscroll:English Version}
{hline}{...}
{title:标题}

{phang}
设定结果窗口的滚动方式


{marker syntax}{...}
{title:语法}

{p 8 12 2}{cmd:set fastscroll} { c -(} {cmd:on} | {cmd:off} {c )-}
		[{cmd:,} {cmdab:perm:anently}]


{marker description}{...}
{title:描述}

{pstd}
{cmd:set fastscroll} 设置结果窗口中新输出的滚动方式，仅在您使用 Windows 或 Unix 的 X-Windows 版本的 Stata 时有效。Mac 版 Stata 始终使用 {cmd:fastscroll} 滚动方式，且无法关闭。{cmd:fastscroll} 的默认值为 {cmd:on}。

{pstd}
将 {cmd:fastscroll} 设置为 {cmd:on} 会导致 Stata 一次绘制多行新输出，从而实现非常快速但跳动的输出。将 {cmd:fastscroll} 设置为 {cmd:off} 会导致 Stata 一次绘制一行新输出，从而实现平滑但较慢的输出。

{pstd}
如果 {cmd:fastscroll} 设置为 {cmd:on}，Stata 的性能提升可达 5 到 10 倍，因为 Stata 花费更少的时间等待输出显示。


{marker option}{...}
{title:选项}

{phang}
{cmd:permanently} 指定除了现在立即生效外，还要记住该设置，当您启动 Stata 时将成为默认设置。{p_end}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <fastscroll.sthlp>}