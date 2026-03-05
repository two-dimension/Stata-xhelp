{smcl}
{* *! version 1.1.7  23oct2017}{...}
{vieweralsosee "[R] more" "mansection R more"}{...}
{vieweralsosee "[P] more" "mansection P more"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[P] creturn" "help creturn_zh"}{...}
{vieweralsosee "[P] sleep" "help sleep_zh"}{...}
{vieweralsosee "[R] query" "help query_zh"}{...}
{viewerjumpto "Syntax" "more_zh##syntax"}{...}
{viewerjumpto "Description" "more_zh##description"}{...}
{viewerjumpto "Links to PDF documentation" "more_zh##linkspdf"}{...}
{viewerjumpto "Option" "more_zh##option"}
{help more:English Version}
{hline}{...}
{p2colset 1 13 15 2}{...}
{p2col:{bf:[R] more} {hline 2}}{hline 2}more{hline 2} 消息{p_end}
{p2col:}({mansection R more:查看完整 PDF 手册条目}){p_end}

{p2col :{bf:[P] more} {hline 2}}按任意键暂停{p_end}
{p2col:}({mansection P more:查看完整 PDF 手册条目}){p_end}
{p2colreset}{...}


{marker syntax}{...}
{title:语法}

    more 消息

        {cmdab:mor:e}


    告诉 Stata 暂停或不暂停 {hline 2}more{hline 2} 消息

{p 8 12 2}
{cmd:set}
{cmdab:mo:re}
{c -(}{opt on}{c |}{opt off}{c )-}
[{cmd:,}
{opt perm:anently}]


    设置 {hline 2}more{hline 2} 消息之间的行数

{p 8 12 2}
{cmd:set}
{opt pa:gesize}
{it:#}


{marker description}{...}
{title:描述}

{pstd}
{opt more} 使 Stata 显示 {opt {hline 2}more{hline 2}} 并暂停，
直到按下任意键。

{pstd}
{opt set more off}，这是默认设置，告诉 Stata 不暂停或显示
{opt {hline 2}more{hline 2}} 消息。 {opt set more on} 告诉 Stata 等待
直到您按下某个键然后继续，当显示 {opt {hline 2}more{hline 2}}
消息时。

{pstd}
{opt set pagesize} {it:#} 设置 {opt {hline 2}more{hline 2}} 消息之间的行数。


{marker linkspdf}{...}
{title:链接到 PDF 文档}

        {mansection R moreRemarksandexamples:备注和示例} ({bf:[R] more})
        {mansection P moreRemarksandexamples:备注和示例} ({bf:[P] more})

{pstd}
以上部分未包含在此帮助文件中。


{marker option}{...}
{title:选项}

{phang}
{opt permanently} 指定除了立即进行更改外，
    {opt more} 设置将被记住，并成为您调用 Stata 时的默认设置。
{p_end}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <more.sthlp>}