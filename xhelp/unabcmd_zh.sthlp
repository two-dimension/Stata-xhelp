{smcl}
{* *! version 1.1.3  19oct2017}{...}
{vieweralsosee "[P] unabcmd" "mansection P unabcmd"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[P] findfile" "help findfile_zh"}{...}
{vieweralsosee "[R] which" "help which_zh"}{...}
{viewerjumpto "Syntax" "unabcmd_zh##syntax"}{...}
{viewerjumpto "Description" "unabcmd_zh##description"}{...}
{viewerjumpto "Links to PDF documentation" "unabcmd_zh##linkspdf"}{...}
{viewerjumpto "Examples" "unabcmd_zh##examples"}
{help unabcmd:English Version}
{hline}{...}
{p2colset 1 16 18 2}{...}
{p2col:{bf:[P] unabcmd} {hline 2}}取消命令名称的缩写{p_end}
{p2col:}({mansection P unabcmd:查看完整的PDF手册条目}){p_end}
{p2colreset}{...}


{marker syntax}{...}
{title:语法}

{p 8 16 2}
{cmd:unabcmd}
{it:commandname_or_abbreviation}


{marker description}{...}
{title:描述}

{pstd}
{cmd:unabcmd} 验证 {it:commandname_or_abbreviation} 是否为 Stata 命令名称或 Stata 命令名称的缩写。 {cmd:unabcmd} 通过查看内置命令和 ado 文件来做出此判定。
如果 {it:commandname_or_abbreviation} 是有效命令，{cmd:unabcmd} 会在局部 {cmd:r(cmd)} 中返回未缩写的名称。如果它不是有效命令，{cmd:unabcmd} 将显示适当的错误信息。


{marker linkspdf}{...}
{title:PDF 文档链接}

        {mansection P unabcmdRemarksandexamples:备注和示例}

{pstd}
上述部分不包括在此帮助文件中。


{marker examples}{...}
{title:示例}

    {cmd:. unabcmd gen}
    {cmd:. return list}

    {cmd:. unabcmd kappa}
    {cmd:. return list}

    {cmd:. unabcmd ka}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <unabcmd.sthlp>}