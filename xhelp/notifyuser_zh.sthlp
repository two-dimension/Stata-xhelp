{smcl}
{* *! version 1.1.1  11feb2011}{...}
{vieweralsosee "[R] set" "mansection R set"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[R] query" "help query_zh"}{...}
{viewerjumpto "Syntax" "notifyuser_zh##syntax"}{...}
{viewerjumpto "Description" "notifyuser_zh##description"}{...}
{viewerjumpto "Option" "notifyuser_zh##option"}
{help notifyuser:English Version}
{hline}{...}
{title:标题}

{phang}
设置 Stata 的通知管理器行为（仅限 Mac）


{marker syntax}{...}
{title:语法}

{p 8 22 2}
	{cmd:set notifyuser} {c -(} {cmd:on} | {cmd:off} {c )-}
	[{cmd:,} {cmdab:perm:anently} ]


{marker description}{...}
{title:描述}

{pstd}
{cmd:set notifyuser} 设置 Stata 的通知管理器行为。当 Stata 中的命令执行完成且 Stata 应用程序在后台时，如果启用了 {cmd:notifyuser}，Stata 会通过在 Dock 中弹跳 Stata 图标来提醒用户。当 {cmd:notifyuser} 被禁用时，Stata 不会尝试通过在 Dock 中弹跳 Stata 图标来提醒用户。

{pstd}
{cmd:notifyuser} 的默认值为 {cmd:on}。


{marker option}{...}
{title:选项}

{phang}
{cmd:permanently} 指定除了立即进行更改外，设置会被记住并在你调用 Stata 时成为默认设置。
{p_end}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <notifyuser.sthlp>}