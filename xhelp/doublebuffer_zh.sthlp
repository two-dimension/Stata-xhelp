{smcl}
{* *! version 1.1.1  11feb2011}{...}
{vieweralsosee "[R] set" "mansection R set"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[R] query" "help query_zh"}{...}
{viewerjumpto "Syntax" "doublebuffer_zh##syntax"}{...}
{viewerjumpto "Description" "doublebuffer_zh##description"}{...}
{viewerjumpto "Option" "doublebuffer_zh##option"}
{help doublebuffer:English Version}
{hline}{...}
{title:标题}

{phang}
为 Stata 窗口设置双缓冲（仅限 Windows）


{marker syntax}{...}
{title:语法}

{p 8 22 2}
	{cmd:set} {cmdab:doublebuffer} {c -(} {cmd:on} | {cmd:off} {c )-}
	[{cmd:,} {cmdab:perm:anently}]


{marker description}{...}
{title:描述}

{pstd}
{cmd:set doublebuffer} 启用或禁用结果窗口、查看器和数据编辑器窗口的双缓冲。双缓冲可以防止窗口在重绘或调整大小时出现闪烁。遇到性能问题，如结果窗口输出非常缓慢的用户应禁用双缓冲。

{pstd}
{cmd:doublebuffer} 的默认值为 {cmd:on}。


{marker option}{...}
{title:选项}

{phang}
{cmd:permanently} 指定除了立即进行更改外，还要记住该设置，并在您调用 Stata 时成为默认设置。
{p_end}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <doublebuffer.sthlp>}