{smcl}
{* *! version 1.2.2  11feb2011}{...}
{vieweralsosee "[R] set" "mansection R set"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[R] query" "help query_zh"}{...}
{viewerjumpto "Syntax" "doublebuffer_zh##syntax"}{...}
{viewerjumpto "Description" "doublebuffer_zh##description"}
{help scrollbufsize:English Version}
{hline}{...}
{title:标题}

{phang}
设置结果窗口的滚动缓冲区大小{p_end}


{marker syntax}{...}
{title:语法}

	{cmd:set scrollbufsize} {it:#}

	{cmd:10000} <= {it:#} <= {cmd:2000000}


{marker description}{...}
{title:描述}

{pstd}
{cmd:set scrollbufsize} 设置结果窗口的滚动缓冲区大小（以字节为单位）。默认值为 {cmd:scrollbufsize} 是 200,000，可以设置在 10,000 到 2,000,000 的范围内。

{pstd}
{cmd:scrollbufsize} 决定了你在结果窗口中可以向后滚动的距离。

{pstd}
缓冲区大小的变化不会在当前的 Stata 会话中生效；相反，新缓冲区大小将在 Stata 下次启动时生效。
{p_end}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <scrollbufsize.sthlp>}