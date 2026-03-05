{smcl}
{* *! version 1.1.4  15may2018}{...}
{vieweralsosee "[M-3] mata rename" "mansection M-3 matarename"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[M-3] Intro" "help m3_intro_zh"}{...}
{viewerjumpto "Syntax" "mata_rename_zh##syntax"}{...}
{viewerjumpto "Description" "mata_rename_zh##description"}
{help mata_rename:English Version}
{hline}{...}
{p2colset 1 22 24 2}{...}
{p2col:{bf:[M-3] mata rename} {hline 2}}重命名矩阵或函数
{p_end}
{p2col:}({mansection M-3 matarename:查看完整的 PDF 手册条目}){p_end}
{p2colreset}{...}


{marker syntax}{...}
{title:语法}

{p 8 16 2}
: {cmd:mata} {cmd:rename} 
{it:旧矩阵名称} {it:新矩阵名称}

{p 8 16 2}
: {cmd:mata} {cmd:rename} 
{it:旧函数名称}{cmd:()}{bind:  }{it:新函数名称}{cmd:()}


{p 4 4 2}
此命令用于在 Mata 模式下的 Mata 冒号提示符之后。
要在 Stata 的点提示符下使用此命令，请输入

		. {cmd:mata: mata rename} ...


{marker description}{...}
{title:描述}

{p 4 4 2}
{cmd:mata} {cmd:rename} 更改函数和全局矩阵的名称。
{p_end}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <mata_rename.sthlp>}