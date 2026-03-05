{smcl}
{* *! version 1.1.7  15may2018}{...}
{vieweralsosee "[G-2] set scheme" "mansection G-2 setscheme"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[G-3] scheme_option" "help scheme_option_zh"}{...}
{vieweralsosee "[G-4] Schemes intro" "help schemes_zh"}{...}
{viewerjumpto "语法" "set_scheme_zh##syntax"}{...}
{viewerjumpto "描述" "set_scheme_zh##description"}{...}
{viewerjumpto "PDF文档链接" "set_scheme_zh##linkspdf"}{...}
{viewerjumpto "选项" "set_scheme_zh##option"}{...}
{viewerjumpto "备注" "set_scheme_zh##remarks"}
{help set_scheme:English Version}
{hline}{...}
{p2colset 1 21 23 2}{...}
{p2col:{bf:[G-2] set scheme} {hline 2}}设置默认方案{p_end}
{p2col:}({mansection G-2 setscheme:查看完整的PDF手册条目}){p_end}
{p2colreset}{...}


{marker syntax}{...}
{title:语法}

{p 8 16 2}
{cmdab:q:uery}
{cmdab:graph:ics}

{p 8 16 2}
{cmd:set}
{cmd:scheme}
{it:{help schemes intro:方案名称}}
[{cmd:,} {cmdab:perm:anently}]


{marker description}{...}
{title:描述}

{pstd}
{cmd:query} {cmd:graphics} 显示图形设置，包括图形方案。

{pstd}
{cmd:set} {cmd:scheme} 允许您设置要使用的图形方案。默认设置为 {cmd:s2color}。


{marker linkspdf}{...}
{title:PDF文档链接}

        {mansection G-2 setschemeQuickstart:快速入门}

        {mansection G-2 setschemeRemarksandexamples:备注和示例}

{pstd}
上述部分不包括在此帮助文件中。


{marker option}{...}
{title:选项}

{phang}
{cmd:permanently}
指定除了立即进行更改外，{cmd:scheme} 设置还将被记住，并成为您调用 Stata 时的默认设置。


{marker remarks}{...}
{title:备注}

{pstd}
图形方案指定图形的整体外观。您可以通过在 {cmd:graph} 命令中指定 {cmd:scheme()} 选项为单个图形指定要使用的方案，或者通过使用 {cmd:set scheme} 一次性设置此方案。

{pstd}
请参见 {manhelp schemes G-4:方案介绍} 以获取方案的描述和可用 {it:方案名称} 的列表。

{pstd}
可用的 {it:方案名称} 之一是 {cmd:economist}，大致对应于 {it:The Economist} 杂志使用的风格。如果您想将 {cmd:economist} 方案设为该会话的默认值，可以输入

	{cmd:. set scheme economist}

{pstd}
如果您希望将 {cmd:economist} 设置为即使在后续会话中的默认值，可以输入

	{cmd:. set scheme economist, permanently}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <set_scheme.sthlp>}