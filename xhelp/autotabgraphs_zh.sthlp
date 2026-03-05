{smcl}
{* *! version 1.0.3  11feb2011}{...}
{vieweralsosee "[R] set (autotabgraphs)" "mansection R set"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[G-2] graph" "help graph_zh"}{...}
{vieweralsosee "[R] query" "help query_zh"}{...}
{viewerjumpto "Syntax" "autotabgraphs_zh##syntax"}{...}
{viewerjumpto "Description" "autotabgraphs_zh##description"}{...}
{viewerjumpto "Option" "autotabgraphs_zh##option"}
{help autotabgraphs:English Version}
{hline}{...}
{title:标题}

{pstd}设置多个图形是以标签形式在一个窗口中创建，还是在单独窗口中创建（仅限于 Windows）


{marker syntax}{...}
{title:语法}

{p 8 22 2}
	{cmd:set autotabgraphs} {c -(} {cmd:on} | {cmd:off} {c )-}
	[{cmd:,} {cmdab:perm:anently}]


{marker description}{...}
{title:描述}

{pstd}
{cmd:set autotabgraphs} 设置多个图形是以选项卡的形式在一个窗口中还是在单独窗口中创建。 通过命名图形来获得多个图形（参见 {manhelpi name_option G-3}）。 此命令仅适用于 Windows 下的 Stata。

{pstd}
{cmd:on} 指定命名图形在同一窗口中作为选项卡打开。 {cmd:off} 指定命名图形在单独窗口中打开。  
{cmd:autotabgraphs} 的默认值为 {cmd:off}。


{marker option}{...}
{title:选项}

{phang}
{cmd:permanently} 指定除了立即更改设置外，还要记住该设置，并在调用 Stata 时成为默认设置。
{p_end}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <autotabgraphs.sthlp>}