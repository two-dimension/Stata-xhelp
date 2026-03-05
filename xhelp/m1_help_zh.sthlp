{smcl}
{* *! version 1.1.7  16may2018}{...}
{vieweralsosee "[M-1] help" "mansection M-1 help"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[R] help" "help help_zh"}{...}
{vieweralsosee "[M-3] mata help" "help mata_help_zh"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[M-1] Intro" "help m1_intro_zh"}{...}
{viewerjumpto "Syntax" "m1_help_zh##syntax"}{...}
{viewerjumpto "Description" "m1_help_zh##description"}{...}
{viewerjumpto "Links to PDF documentation" "m1_help_zh##linkspdf"}{...}
{viewerjumpto "Remarks" "m1_help_zh##remarks"}
{help m1_help:English Version}
{hline}{...}
{p2colset 1 15 17 2}{...}
{p2col:{bf:[M-1] help} {hline 2}}在 Stata 中获取帮助
{p_end}
{p2col:}({mansection M-1 help:查看完整的 PDF 手册条目}){p_end}
{p2colreset}{...}


{marker syntax}{...}
{title:语法}

{phang2}
{cmd:help} {cmd:m}{it:#}{bind:   }{it:entryname}

{phang2}
{cmd:help} {cmd:mata} {it:functionname}{cmd:()}


{pstd}
{cmd:help} 命令可以在 Stata 的点提示符或 Mata 的冒号提示符下发出。


{marker description}{...}
{title:描述}

{pstd}
在 Stata 中可以获得 Mata 的帮助。此条目描述了如何访问它。


{marker linkspdf}{...}
{title:PDF 文档链接}

        {mansection M-1 helpRemarksandexamples:备注和示例}

{pstd}
上述部分不包含在此帮助文件中。


{marker remarks}{...}
{title:备注}

{pstd}
要在 Stata 中查看此条目，键入 

	. {cmd:help m1 help}

{pstd}
在 Stata 的点提示符或 Mata 的冒号提示符下。  
您输入这个是因为此条目是 {bf:[M-1] help}。

{pstd}
例如，要查看函数 {cmd:max()} 的条目，键入

	. {cmd:help mata max()}

{pstd}
{cmd:max()} 的文档在 
{bf:{help mf_minmax_zh:[M-5] minmax()}}, 但这无关紧要；Stata 会 
找到相应的条目。

{pstd}
要从顶部进入 Mata 帮助系统，您可以单击 
进入任何部分或函数，键入 

	. {cmd:help mata}

{pstd}
要访问 Mata 的 PDF 手册，请点击标题。
{p_end}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <m1_help.sthlp>}