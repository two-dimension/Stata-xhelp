{smcl}
{* *! version 1.0.0  14jun2019}{...}
{viewerdialog "frames" "dialog frames"}{...}
{vieweralsosee "[D] frame change" "mansection D framechange"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[D] frames intro" "help frames intro"}{...}
{vieweralsosee "[D] frame prefix" "help frame_prefix_zh"}{...}
{viewerjumpto "Syntax" "frame_change_zh##syntax"}{...}
{viewerjumpto "Menu" "frame_change_zh##menu"}{...}
{viewerjumpto "Description" "frame_change_zh##description"}{...}
{viewerjumpto "Links to PDF documentation" "frame_change_zh##linkspdf"}{...}
{viewerjumpto "Examples" "frame_change_zh##examples"}
{help frame_change:English Version}
{hline}{...}
{p2colset 1 21 23 2}{...}
{p2col:{bf:[D] frame change} {hline 2}}更改当前（工作）框架的身份{p_end}
{p2col:}({mansection D framechange:查看完整的 PDF 手册条目}){p_end}
{p2colreset}{...}


{marker syntax}{...}
{title:语法}

{p 8 16 2}
{cmd:frame} {cmd:change} {it:framename}


{p 8 16 2}
{cmd:cwf} {it:framename}


包含帮助菜单_frames


{marker description}{...}
{title:描述}

{pstd}
{cmd:frame} {cmd:change} 使指定的框架成为当前框架。这意味着
在 {cmd:frame} {cmd:change} 之后你输入的任何命令都将在该框架中的数据上执行。

{pstd}
{cmd:cwf}（更改工作框架）是
{cmd:frame} {cmd:change} 的同义词。


{marker linkspdf}{...}
{title:PDF 文档链接}

        {mansection D framechangeRemarksandexamples:备注和示例}

{pstd}
上述部分未包含在此帮助文件中。


{marker examples}{...}
{title:示例}

{pstd}更改为现有框架 {cmd:cars}{p_end}
{phang2}{cmd:. frame change cars}{p_end}

{pstd}查看该框架中的数据{p_end}
{phang2}{cmd:. describe}{p_end}

{pstd}切换回 {cmd:default} 框架{p_end}
{phang2}{cmd:. frame change default}{p_end}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <frame_change.sthlp>}