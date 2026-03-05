{smcl}
{* *! version 1.1.2  28feb2011}{...}
{vieweralsosee "[R] set" "mansection R set"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[R] query" "help query_zh"}{...}
{viewerjumpto "Syntax" "dockable_zh##syntax"}{...}
{viewerjumpto "Description" "dockable_zh##description"}{...}
{viewerjumpto "Option" "dockable_zh##option"}
{help dockable:English Version}
{hline}{...}
{title:标题}

{phang}
指定是否启用Windows的可停靠窗口行为（仅限Windows）


{marker syntax}{...}
{title:语法}

{p 8 22 2}
	{cmd:set dockable} {c -(} {cmd:on} | {cmd:off} {c )-}
	[{cmd:,} {cmdab:perm:anently}]


{marker description}{...}
{title:描述}

{pstd}
{cmd:set dockable} 指定是否启用在Stata中某些窗口的可停靠窗口特性。具体而言，这包括将窗口停靠或在另一个窗口中选项卡的能力。此命令仅适用于Windows计算机。

{pstd}
{cmd:on} 指定用户可以使用窗口的可停靠特性。{cmd:off} 指定用户无法操作正常的停靠行为。{cmd:dockable} 的默认值是 {cmd:on}。


{marker option}{...}
{title:选项}

{phang}
{cmd:permanently} 指定，除了立即进行更改外，还要记住该设置，并在您启动Stata时将其作为默认设置。
{p_end}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <dockable.sthlp>}