{smcl}
{* *! version 1.0.1  26sep2018}{...}
{vieweralsosee undocumented "help undocumented"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[R] set" "help set_zh"}{...}
{viewerjumpto "Syntax" "set_ctrlh_zh##syntax"}{...}
{viewerjumpto "Description" "set_ctrlh_zh##description"}{...}
{viewerjumpto "Option" "set_ctrlh_zh##option"}{...}
{viewerjumpto "Remarks" "set_ctrlh_zh##remarks"}
{help set_ctrlh:English Version}
{hline}{...}
{p2colset 1 18 20 2}{...}
{p2col:{bf:[R] set ctrlh} {hline 2}}设置 Unix（控制台）中命令行编辑的 Ctrl+H 行为{p_end}
{p2colreset}{...}


{marker syntax}{...}
{title:语法}

{p 8 16 2}
{cmd:set}
{cmd:ctrlh}
{c -(}{cmd:default} | {cmd:erase} | {cmd:left}{c )-}
[{cmd:,} {cmdab:perm:anently}]


{marker description}{...}
{title:描述}

{pstd}
{cmd:set} {cmd:ctrlh} 允许您控制 Ctrl+H 在 Unix（控制台）中命令行编辑时的行为。默认设置是
{cmd:set} {cmd:ctrlh} {cmd:erase}，这意味着 Ctrl+H 的行为将与退格键相同。


{marker option}{...}
{title:选项}

{phang}
{cmd:permanently} 指定在当前更改的基础上，该设置将被记住并在您启动 Stata 时成为默认设置。


{marker remarks}{...}
{title:备注}

{pstd}
Unix/Linux 终端在按下 Ctrl+H 时的行为各不相同。Stata 允许您通过
{cmd:set} {cmd:ctrlh} 命令控制 Ctrl+H 的行为。{cmd:set} {cmd:ctrlh} {cmd:erase}，
与 {cmd:set} {cmd:ctrlh} {cmd:default} 相同，使 Ctrl+H 的行为与退格键相同。{cmd:set} {cmd:ctrlh}
{cmd:left} 使 Ctrl+H 的行为与左箭头相同。

{pstd}
如果您更喜欢某种模式，请指定 {cmd:permanently}
选项，Stata for Unix（控制台）将在每次启动 Stata 时自动使用此模式。
{p_end}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <set_ctrlh.sthlp>}