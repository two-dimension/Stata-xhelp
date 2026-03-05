{smcl}
{* *! version 1.1.2  04feb2013}{...}
{vieweralsosee undocumented "help undocumented"}{...}
{viewerjumpto "Syntax" "floatresults_zh##syntax"}{...}
{viewerjumpto "Description" "floatresults_zh##description"}
{help floatresults:English Version}
{hline}{...}
{title:标题}

{phang}
指定是否启用浮动结果窗口（仅适用于Windows）


{marker syntax}{...}
{title:语法}

{p 8 22 2}
	{cmd:set floatresults} {c -(} {cmd:on} | {cmd:off} {c )-}


{marker description}{...}
{title:描述}

{pstd}
{cmd:set floatresults} 指定是否启用结果窗口的浮动窗口行为。在这个上下文中，“浮动”一词意味着结果窗口将始终悬浮在主Stata窗口上。当浮动时，结果窗口不能被放置在主Stata窗口的后面，但并不受主Stata窗口的边界限制。

{pstd}
{cmd:on} 指定结果窗口悬浮在主Stata窗口上方。{cmd:off} 指定结果窗口不会悬浮在主Stata窗口上方。{cmd:floatresults} 的默认值是 {cmd:off}。
{p_end}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <floatresults.sthlp>}