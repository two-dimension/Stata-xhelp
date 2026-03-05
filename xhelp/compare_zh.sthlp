{smcl}
{* *! version 1.1.7  19oct2017}{...}
{viewerdialog compare "dialog compare"}{...}
{vieweralsosee "[D] compare" "mansection D compare"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[D] cf" "help cf_zh"}{...}
{vieweralsosee "[D] codebook" "help codebook_zh"}{...}
{vieweralsosee "[D] inspect" "help inspect_zh"}{...}
{viewerjumpto "Syntax" "compare_zh##syntax"}{...}
{viewerjumpto "Menu" "compare_zh##menu"}{...}
{viewerjumpto "Description" "compare_zh##description"}{...}
{viewerjumpto "Links to PDF documentation" "compare_zh##linkspdf"}{...}
{viewerjumpto "Example" "compare_zh##example"}
{help compare:English Version}
{hline}{...}
{p2colset 1 16 18 2}{...}
{p2col:{bf:[D] compare} {hline 2}}比较两个变量{p_end}
{p2col:}({mansection D compare:查看完整的 PDF 手册条目}){p_end}
{p2colreset}{...}


{marker syntax}{...}
{title:语法}

{p 8 16 2}
{cmd:compare}
{it:{help varname_zh}1}
{it:{help varname_zh}2}
{ifin}

{pstd}
允许使用 {opt by}；请参见 {manhelp by D}。


{marker menu}{...}
{title:菜单}

{phang}
{bf:数据 > 数据工具 > 比较两个变量}


{marker description}{...}
{title:描述}

{pstd}
{opt compare} 报告 {it:{help varname_zh}1} 和 {it:varname2} 之间的差异和相似之处。


{marker linkspdf}{...}
{title:PDF 文档链接}

        {mansection D compareQuickstart:快速开始}

        {mansection D compareRemarksandexamples:备注和示例}

{pstd}
上述部分未包含在此帮助文件中。


{marker example}{...}
{title:示例}

{pstd}设置{p_end}
{phang2}{cmd:. webuse fullauto}{p_end}

{pstd}报告 {cmd:rep77} 和 {cmd:rep78} 之间的差异{p_end}
{phang2}{cmd:. compare rep77 rep78}{p_end}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <compare.sthlp>}