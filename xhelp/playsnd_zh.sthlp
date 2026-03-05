{smcl}
{* *! version 1.1.1  11feb2011}{...}
{vieweralsosee "[R] set" "mansection R set"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[R] query" "help query_zh"}{...}
{viewerjumpto "语法" "doublebuffer_zh##syntax"}{...}
{viewerjumpto "描述" "doublebuffer_zh##description"}{...}
{viewerjumpto "选项" "doublebuffer_zh##option"}
{help playsnd:English Version}
{hline}{...}
{title:标题}

{phang}设置 Stata 中通知管理器的声音行为
（仅限 Mac）


{title:语法}

{p 8 22 2}
	{cmd:set playsnd} {c -(} {cmd:on} | {cmd:off} {c )-}
	[{cmd:,} {cmdab:permanently} ]


{title:描述}

{pstd}
{cmd:set playsnd} 设置 Stata 中通知管理器的声音行为。当 Stata 中的命令执行完毕而 Stata 应用程序在后台时，Stata 使用通知管理器通过在 Dock 中弹跳 Stata 图标来提醒用户。当启用 {cmd:playsnd} 时，Stata 除了弹跳 Stata 图标外，还会播放声音。

{pstd}
{cmd:playsnd} 的默认值为 {cmd:on}。


{title:选项}

{phang}
{cmd:permanently} 指定除了立即进行更改外，该设置将被记住并成为您调用 Stata 时的默认设置。
{p_end}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <playsnd.sthlp>}