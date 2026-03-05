{smcl}
{* *! version 1.0.1  26sep2018}{...}
{vieweralsosee undocumented "help undocumented"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[R] set" "help set_zh"}{...}
{viewerjumpto "Syntax" "set_insertmode_zh##syntax"}{...}
{viewerjumpto "Description" "set_insertmode_zh##description"}{...}
{viewerjumpto "Option" "set_insertmode_zh##option"}{...}
{viewerjumpto "Remarks" "set_insertmode_zh##remarks"}
{help set_insertmode:English Version}
{hline}{...}
{p2colset 1 23 25 2}{...}
{p2col:{bf:[R] set insertmode} {hline 2}}设置 Unix（控制台）中命令行编辑的行为{p_end}
{p2colreset}{...}


{marker syntax}{...}
{title:语法}

{p 8 16 2}
{cmd:set}
{cmd:insertmode}
{c -(}{cmd:on} | {cmd:off}{c )-}
[{cmd:,} {cmdab:perm:anently}]


{marker description}{...}
{title:描述}

{pstd}
{cmd:set} {cmd:insertmode} 允许您控制 Unix（控制台）中命令行编辑的行为。默认设置为 {cmd:set} {cmd:insertmode} {cmd:off}，这与覆盖模式相同。


{marker option}{...}
{title:选项}

{phang}
{cmd:permanently} 指定在当前更改的基础上，记住该设置并在您调用 Stata 时将其作为默认设置。


{marker remarks}{...}
{title:备注}

{pstd}
默认情况下，Stata 的命令行在 Unix（控制台）中处于覆盖模式。如果您使用左箭头移动到您输入的命令行的中间，您输入的任何字符都会覆盖光标位置的字符。

{pstd}
如果您 {cmd:set} {cmd:insertmode} {cmd:on}，那么您输入的任何字符都将插入到光标位置，而不覆盖其他字符。

{pstd}
如果您希望插入模式处于开启状态，请指定 {cmd:permanently} 选项，Stata 在每次启动时将自动使用这种模式。
{p_end}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <set_insertmode.sthlp>}