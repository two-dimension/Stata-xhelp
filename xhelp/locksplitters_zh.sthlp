{smcl}
{* *! version 1.1.1  11feb2011}{...}
{vieweralsosee "[R] set" "mansection R set"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[R] query" "help query_zh"}{...}
{viewerjumpto "Syntax" "locksplitters_zh##syntax"}{...}
{viewerjumpto "Description" "locksplitters_zh##description"}{...}
{viewerjumpto "Option" "locksplitters_zh##option"}
{help locksplitters:English Version}
{hline}{...}
{title:标题}

{phang}
指定是否防止分隔条改变窗口大小
（仅限Windows）


{marker syntax}{...}
{title:语法}

{p 8 22 2}
	{cmd:set locksplitters} {c -(} {cmd:on} | {cmd:off} {c )-}
	[{cmd:,} {cmdab:perm:anently}]


{marker description}{...}
{title:描述}

{pstd}
{cmd:set locksplitters} 指定是否防止分隔条（分隔停靠窗口的边缘）改变停靠窗口的大小。此命令仅适用于Windows计算机。

{pstd}
当分隔条处于活动状态时，当光标悬停在分隔条上时会出现一个分隔条图标。分隔条图标呈现为两条平行线和相对的垂直箭头。拖动分隔条将调整相邻的可停靠窗口的大小。只有可停靠窗口可以有分隔条。

{pstd}
{cmd:on} 表示分隔条被锁定，无法调整相邻窗口的大小。{cmd:off} 表示分隔条被解锁，可以调整相邻窗口的大小。{cmd:locksplitters} 的默认值为 {cmd:off}。


{marker option}{...}
{title:选项}

{phang}
{cmd:permanently} 指定除了立即进行更改外，还将记住该设置并在您调用Stata时成为默认设置。
{p_end}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <locksplitters.sthlp>}