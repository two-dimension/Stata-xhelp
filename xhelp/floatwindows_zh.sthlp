{smcl}
{* *! version 1.1.3  11feb2011}{...}
{vieweralsosee "[R] set" "mansection R set"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[R] query" "help query_zh"}{...}
{viewerjumpto "Syntax" "floatwindows_zh##syntax"}{...}
{viewerjumpto "Description" "floatwindows_zh##description"}
{help floatwindows:English Version}
{hline}{...}
{title:标题}

{phang}
指定是否启用浮动窗口功能（仅限Windows）


{marker syntax}{...}
{title:语法}

{p 8 22 2}
	{cmd:set floatwindows} {c -(} {cmd:on} | {cmd:off} {c )-}


{marker description}{...}
{title:描述}

{pstd}
{cmd:set floatwindows} 指定是否启用对话框和可停靠窗口的浮动窗口行为。
在此上下文中，“浮动”一词意味着窗口始终悬浮在主 Stata 窗口上方。当窗口浮动时，这些窗口不能置于主 Stata 窗口后面。

{pstd}
{cmd:on} 指定窗口将悬浮在主 Stata 窗口上方。
{cmd:off} 指定窗口不受限制地悬浮在主 Stata 窗口上方。 {cmd:floatwindows} 的默认值为 {cmd:off}。
{p_end}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <floatwindows.sthlp>}