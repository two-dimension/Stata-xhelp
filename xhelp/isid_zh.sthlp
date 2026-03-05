{smcl}
{* *! version 1.1.8  19oct2017}{...}
{viewerdialog isid "dialog isid"}{...}
{vieweralsosee "[D] isid" "mansection D isid"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[D] describe" "help describe_zh"}{...}
{vieweralsosee "[D] ds" "help ds_zh"}{...}
{vieweralsosee "[D] duplicates" "help duplicates_zh"}{...}
{vieweralsosee "[D] lookfor" "help lookfor_zh"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[D] codebook" "help codebook_zh"}{...}
{vieweralsosee "[D] inspect" "help inspect_zh"}{...}
{viewerjumpto "Syntax" "isid_zh##syntax"}{...}
{viewerjumpto "Menu" "isid_zh##menu"}{...}
{viewerjumpto "Description" "isid_zh##description"}{...}
{viewerjumpto "Links to PDF documentation" "isid_zh##linkspdf"}{...}
{viewerjumpto "Options" "isid_zh##options"}{...}
{viewerjumpto "Examples" "isid_zh##examples"}
{help isid:English Version}
{hline}{...}
{p2colset 1 13 15 2}{...}
{p2col:{bf:[D] isid} {hline 2}}检查唯一标识符{p_end}
{p2col:}({mansection D isid:查看完整PDF手册条目}){p_end}
{p2colreset}{...}


{marker syntax}{...}
{title:语法}

{p 8 15 2}
{cmd:isid}
{varlist}
[{cmd:using} {it:{help filename_zh}}]
[{cmd:,}
{opt s:ort}
{opt m:issok}]


{marker menu}{...}
{title:菜单}

{phang}
{bf:数据 > 数据工具 > 检查唯一标识符}


{marker description}{...}
{title:描述}

{pstd}
{opt isid} 检查指定的变量是否唯一标识观察值。


{marker linkspdf}{...}
{title:PDF文档链接}

        {mansection D isidQuickstart:快速入门}

        {mansection D isidRemarksandexamples:备注和示例}

{pstd}
上述部分不包含在此帮助文件中。


{marker options}{...}
{title:选项}

{phang}{opt sort} 表示按 {varlist} 对数据集进行排序。

{phang}{opt missok} 表示 {varlist} 中允许有缺失值。


{marker examples}{...}
{title:示例}

    {hline}
    设置
{phang2}{cmd:. sysuse auto}

{pstd}检查 {cmd:mpg} 是否唯一标识观察值{p_end}
{phang2}{cmd:. isid mpg}

{pstd}检查 {cmd:make} 是否唯一标识观察值{p_end}
{phang2}{cmd:. isid make}

    设置
{phang2}{cmd:. replace make = "" in 1}

{pstd}检查 {cmd:make} 是否唯一标识观察值{p_end}
{phang2}{cmd:. isid make}

{pstd}与上述命令相同，但允许 {cmd:make} 中的缺失值{p_end}
{phang2}{cmd:. isid make, missok}

    {hline}
    设置
{phang2}{cmd:. webuse grunfeld, clear}

{pstd}检查面板和时间变量是否唯一标识观察值{p_end}
{phang2}{cmd:. isid company year}{p_end}
    {hline}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <isid.sthlp>}