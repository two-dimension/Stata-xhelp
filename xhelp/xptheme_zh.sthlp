{smcl}
{* *! version 1.0.4  11feb2011}{...}
{vieweralsosee undocumented "help undocumented"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[R] set" "help set_zh"}{...}
{viewerjumpto "Syntax" "xptheme_zh##syntax"}{...}
{viewerjumpto "Description" "xptheme_zh##description"}{...}
{viewerjumpto "Option" "xptheme_zh##option"}
{help xptheme:English Version}
{hline}{...}
{title:标题}

{pstd}确定在 Windows XP 上 (仅限 Windows) 如何实现视觉样式


{marker syntax}{...}
{title:语法}

{p 8 22 2}
	{cmd:set xptheme} {c -(} {cmd:on} | {cmd:off} {c )-}
	{cmd:,} {cmdab:perm:anently}


{marker description}{...}
{title:描述}

{pstd}
{cmd:set xptheme} 决定在 Windows XP 运行 Stata 时如何实现视觉样式。该命令仅适用于 Windows 计算机，并且对 Windows XP 之前的版本没有影响。

{pstd}
{cmd:on} 指定将 XP 视觉样式应用于 Stata。
{cmd:off} 指定将 Windows Classic 视觉样式应用于 Stata，这使可编程对话框加载更快。

{pstd}
必须重启 Stata 以使设置生效。


{marker option}{...}
{title:选项}

{phang}
{cmd:permanently} 指定在立即进行更改的同时，记住该设置并在你调用 Stata 时成为默认设置。{cmd:permanently} 是必需的。
{p_end}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <xptheme.sthlp>}