{smcl}
{* *! version 1.1.3  13jun2019}{...}
{vieweralsosee "[R] set" "mansection R set"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[R] query" "help query_zh"}{...}
{viewerjumpto "Syntax" "pinnable_zh##syntax"}{...}
{viewerjumpto "Description" "pinnable_zh##description"}{...}
{viewerjumpto "Option" "pinnable_zh##option"}
{help pinnable:English Version}
{hline}{...}
{title:标题}

{phang}指定是否为 Windows 启用可固定窗口行为（仅限 Windows）


{marker syntax}{...}
{title:语法}

{p 8 22 2}
	{cmd:set pinnable} {c -(} {cmd:on} | {cmd:off} {c )-}
	[{cmd:,} {cmdab:perm:anently}]


{marker description}{...}
{title:描述}

{pstd}
{cmd:set pinnable} 指定是否启用某些 Stata 窗口的可固定窗口特性。该命令仅适用于 Windows 计算机。

{pstd}
{cmd:on} 指定用户可以固定或取消固定某些窗口。
{cmd:off} 指定用户无法固定或取消固定窗口。{cmd:pinnable} 的默认值为 {cmd:on}。


{marker option}{...}
{title:选项}

{phang}
{cmd:permanently} 指定除了立即做出更改外，该设置还会被记住，并成为您启动 Stata 时的默认设置。
{p_end}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <pinnable.sthlp>}