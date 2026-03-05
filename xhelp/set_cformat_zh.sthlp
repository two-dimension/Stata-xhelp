{smcl}
{* *! version 1.0.15  25sep2018}{...}
{vieweralsosee "[R] set cformat" "mansection R setcformat"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[R] Estimation options" "help estimation options"}{...}
{vieweralsosee "[R] query" "help query_zh"}{...}
{vieweralsosee "[R] set" "help set_zh"}{...}
{viewerjumpto "Syntax" "set_cformat_zh##syntax"}{...}
{viewerjumpto "Description" "set_cformat_zh##description"}{...}
{viewerjumpto "Links to PDF documentation" "set_cformat_zh##linkspdf"}{...}
{viewerjumpto "Option" "set_cformat_zh##option"}{...}
{viewerjumpto "Remarks" "set_cformat_zh##remarks"}{...}
{viewerjumpto "Example" "set_cformat_zh##example"}
{help set_cformat:English Version}
{hline}{...}
{p2colset 1 20 22 2}{...}
{p2col:{bf:[R] set cformat} {hline 2}}系数表的格式设置{p_end}
{p2col:}({mansection R setcformat:查看完整PDF手册条目}){p_end}
{p2colreset}{...}


{marker syntax}{...}
{title:语法}

{p 8 16 2}
{cmd:set}
{cmd:cformat}
[{it:fmt}]
[{cmd:,} {cmdab:perm:anently}]

{p 8 16 2}
{cmd:set}
{cmd:pformat}
[{it:fmt}]
[{cmd:,} {cmdab:perm:anently}]

{p 8 16 2}
{cmd:set}
{cmd:sformat}
[{it:fmt}]
[{cmd:,} {cmdab:perm:anently}]

{pstd}
其中 {it:fmt} 是一个 {help format_zh:numerical format}。


{marker description}{...}
{title:描述}

{pstd}
{cmd:set} {cmd:cformat} 指定系数表中系数、标准误差和置信区间的输出格式。

{pstd}
{cmd:set} {cmd:pformat} 指定系数表中 p 值的输出格式。

{pstd}
{cmd:set} {cmd:sformat} 指定系数表中检验统计量的输出格式。


{marker linkspdf}{...}
{title:PDF文档链接}

        {mansection R setcformatRemarksandexamples:备注和示例}

{pstd}
上述部分不包含在此帮助文件中。


{marker option}{...}
{title:选项}

{phang}
{cmd:permanently} 指定除了立即进行更改外，还要记住该设置，并在调用 Stata 时将其作为默认设置。


{marker remarks}{...}
{title:备注}

{pstd}
系数表中 {cmd:set cformat}、{cmd:set pformat} 和 
{cmd:set sformat} 的最大格式宽度分别为 9、5 和 8。


{marker example}{...}
{title:示例}

{pstd}
为系数、标准误差和置信区间使用 {cmd:%9.2f} 格式

{phang2}
{cmd:. set cformat %9.2f}

{pstd}
将格式重置为特定命令的默认值

{phang2}
{cmd:. set cformat}
{p_end}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <set_cformat.sthlp>}