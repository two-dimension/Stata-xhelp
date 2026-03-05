{smcl}
{* *! version 1.0.5  11feb2011}{...}
{vieweralsosee undocumented "help undocumented"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[P] display" "help display_zh"}{...}
{viewerjumpto "Syntax" "di_g_zh##syntax"}{...}
{viewerjumpto "Description" "di_g_zh##description"}{...}
{viewerjumpto "Remarks" "di_g_zh##remarks"}
{help di_g:English Version}
{hline}{...}
{title:标题}

{p 4 14 2}
{hi:[G-2] di_g} {hline 2} 显示调试消息


{marker syntax}{...}
{title:语法}

{p 8 13 2}
{cmd:di_g}
{it:{help display_zh:display_syntax}}

{p 8 13 2}
{cmd:set}
{cmd:di_g}
{c -(}{cmd:on}|{cmd:off}{c )-}


{marker description}{...}
{title:描述}

{pstd}
如果 {cmd:set} {cmd:di_g} 处于 {cmd:off} 状态，则 {cmd:di_g} 不执行任何操作（被视为注释），或者它等价于 {cmd:display} 命令（参见 {manhelp display P}）。

{pstd}
{cmd:set} {cmd:di_g} 设置 {cmd:di_g} 的行为。


{marker remarks}{...}
{title:备注}

{pstd}
{cmd:di_g} 用于在 {cmd:graph} 中包含调试消息；参见 {manhelp graph G-2}。

{pstd}
{cmd:di_g} 的设置不会被 {cmd:query} 显示。
{p_end}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <di_g.sthlp>}