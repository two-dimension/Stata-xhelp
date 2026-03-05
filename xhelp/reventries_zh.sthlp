{smcl}
{* *! version 1.1.2  29jan2019}{...}
{vieweralsosee "[R] set" "mansection R set"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[R] query" "help query_zh"}{...}
{viewerjumpto "Syntax" "reventries_zh##syntax"}{...}
{viewerjumpto "Description" "reventries_zh##description"}{...}
{viewerjumpto "Option" "reventries_zh##option"}
{help reventries:English Version}
{hline}{...}
{title:标题}

{phang}
设置历史窗口存储的命令数量{p_end}

{marker syntax}{...}
{title:语法}

	{cmd:set} {cmd:reventries} {it:#} [{cmd:,} {cmdab:perm:anently}]

	5 <= {it:#} <= 32000; 默认值是 5,000


{marker description}{...}
{title:描述}

{pstd}
{cmd:set reventries} 设置历史窗口存储的命令最大数量。历史窗口将在 Stata 会话中记住最后 {it:#} 个交互式命令。


{marker option}{...}
{title:选项}

{phang}
{cmd:permanently} 指定除了立即生效外，该设置还将被记住并在您调用 Stata 时成为默认设置。{p_end}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <reventries.sthlp>}