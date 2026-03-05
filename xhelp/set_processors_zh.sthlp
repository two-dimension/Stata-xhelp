{smcl}
{* *! version 1.1.1  11feb2011}{...}
{vieweralsosee "[R] set" "mansection R set"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[R] query" "help query_zh"}{...}
{viewerjumpto "Syntax" "set_processors_zh##syntax"}{...}
{viewerjumpto "Description" "set_processors_zh##description"}
{help set_processors:English Version}
{hline}{...}
{title:标题}

{phang}设置 Stata/MP 使用的处理器数量


{marker syntax}{...}
{title:语法}

{p 8 22 2}
	{cmd:set} {cmdab:processors} {it:#}


{marker description}{...}
{title:描述}

{pstd}
{cmd:set processors} 设置 {help statamp_zh:Stata/MP} 将使用的处理器或核心数量。默认值为计算机上可用的处理器数量，或 Stata/MP 许可允许的处理器数量，以较小者为准。

{pstd}
大多数用户通常不需要更改此设置。仅在您不希望使用计算机上所有可用处理器时使用。例如，如果两个用户同时尝试使用一台8个处理器的系统，他们可能希望分别输入 {cmd:set processors 4}，以便不在所有8个处理器上相互竞争处理器时间。
{p_end}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <set_processors.sthlp>}