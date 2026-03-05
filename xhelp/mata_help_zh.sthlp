{smcl}
{* *! version 1.1.6  15may2018}{...}
{vieweralsosee "[M-3] mata help" "mansection M-3 matahelp"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[M-1] help" "help m1_help_zh"}{...}
{vieweralsosee "[R] help" "help help_zh"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[M-3] Intro" "help m3_intro_zh"}{...}
{viewerjumpto "Syntax" "mata_help_zh##syntax"}{...}
{viewerjumpto "Description" "mata_help_zh##description"}{...}
{viewerjumpto "Links to PDF documentation" "mata_help_zh##linkspdf"}{...}
{viewerjumpto "Remarks" "mata_help_zh##remarks"}
{help mata_help:English Version}
{hline}{...}
{p2colset 1 20 22 2}{...}
{p2col:{bf:[M-3] mata help} {hline 2}}在 Stata 中获取帮助
{p_end}
{p2col:}({mansection M-3 matahelp:查看完整的 PDF 手册条目}){p_end}
{p2colreset}{...}


{marker syntax}{...}
{title:语法}

{p 8 16 2}
: {cmd:mata} {cmd:help} ...

{p 8 16 2}
: {cmd:help} ...


{p 4 4 2}
{cmd:help} 不必之前以 {cmd:mata} 开头。


{marker description}{...}
{title:描述}

{p 4 4 2}
{cmd:mata help} 
是 Stata 的 {cmd:help} 命令。因此，您不必退出 Mata 即可使用 {cmd:help}。


{marker linkspdf}{...}
{title:PDF 文档链接}

        {mansection M-3 matahelpRemarksandexamples:备注和示例}

{pstd}
上述部分不包含在此帮助文件中。


{marker remarks}{...}
{title:备注}

{p 4 4 2}
请参见 {bf:{help m1_help_zh:[M-1] help}}。

{p 4 4 2}
您不必输入 Mata 前缀：

	: {cmd:mata help mata}
	  {it:(输出将显示在 Stata 的查看器中)}

	: {cmd:help mata}
	  {it:(效果相同)}

{p 4 4 2}
{cmd:help} 可用于获取 Mata 或 Stata 的帮助：

	: {cmd:help mata missing()}

	: {cmd:help missing()}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <mata_help.sthlp>}