{smcl}
{* *! version 1.1.7  19oct2017}{...}
{viewerdialog xtdescribe "dialog xtdescribe"}{...}
{vieweralsosee "[XT] xtdescribe" "mansection XT xtdescribe"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[XT] xtsum" "help xtsum_zh"}{...}
{vieweralsosee "[XT] xttab" "help xttab_zh"}{...}
{viewerjumpto "Syntax" "xtdescribe_zh##syntax"}{...}
{viewerjumpto "Menu" "xtdescribe_zh##menu"}{...}
{viewerjumpto "Description" "xtdescribe_zh##description"}{...}
{viewerjumpto "Links to PDF documentation" "xtdescribe_zh##linkspdf"}{...}
{viewerjumpto "Options" "xtdescribe_zh##options"}{...}
{viewerjumpto "Example" "xtdescribe_zh##example"}
{help xtdescribe:English Version}
{hline}{...}
{p2colset 1 20 22 2}{...}
{p2col:{bf:[XT] xtdescribe} {hline 2}}描述 xt 数据的模式{p_end}
{p2col:}({mansection XT xtdescribe:查看完整 PDF 手册条目}){p_end}
{p2colreset}{...}


{marker syntax}{...}
{title:语法}

{p 8 14 2}
{cmdab:xtdes:cribe} {ifin} [{cmd:,} {it:选项}]

{synoptset 15 tabbed}{...}
{synopthdr}
{synoptline}
{syntab:主要}
{synopt :{opt p:atterns(#)}}报告的最大参与模式数; 默认为 {cmd:patterns(9)}{p_end}
{synopt :{opt w:idth(#)}}显示参与模式的 {it:#} 宽度; 默认为 {cmd:width(100)}{p_end}
{synoptline}
{p2colreset}{...}
{p 4 6 2}
必须指定面板变量和时间变量; 使用 {help xtset_zh}。
{p_end}
{p 4 6 2}
{opt by} 是允许的; 请参见 {manhelp by D}。


{marker menu}{...}
{title:菜单}

{phang}
{bf:统计 > 纵向/面板数据 > 设置和工具 >}
     {bf:描述 xt 数据的模式}


{marker description}{...}
{title:描述}

{pstd}
{cmd:xtdescribe} 描述横断面时间序列 (xt) 数据的参与模式。


{marker linkspdf}{...}
{title:PDF 文档链接}

        {mansection XT xtdescribeQuickstart:快速入门}

        {mansection XT xtdescribeRemarksandexamples:备注和示例}

{pstd}
上述部分未包含在此帮助文件中。


{marker options}{...}
{title:选项}

{dlgtab:主要}

{phang}
{opt patterns(#)} 指定报告的最大参与模式数; 默认为 {cmd:patterns(9)}。
指定 {cmd:patterns(50)} 将列出最多 50 个模式。指定
{cmd:patterns(1000)} 被视为 {cmd:patterns(}无穷大{cmd:)}: 将列出所有模式。

{phang}
{opt width(#)} 指定要显示的参与模式的宽度; 默认为 {cmd:width(100)}。如果次数大于 {cmd:width()}，则参与模式中的每一列表示多个时段，如表底的脚注所示。根据时间变量的跨度和时段的数量，实际宽度可能与请求的宽度略有不同。


{marker example}{...}
{title:示例}

{pstd}设置{p_end}
{phang2}{cmd:. webuse nlswork}{p_end}

{pstd}描述数据的参与模式{p_end}
{phang2}{cmd:. xtdescribe}{p_end}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <xtdescribe.sthlp>}