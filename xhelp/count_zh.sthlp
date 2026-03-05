{smcl}
{* *! version 1.1.7  19oct2017}{...}
{viewerdialog count "dialog count"}{...}
{vieweralsosee "[D] count" "mansection D count"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[R] tabulate oneway" "help tabulate_oneway_zh"}{...}
{viewerjumpto "Syntax" "count_zh##syntax"}{...}
{viewerjumpto "Menu" "count_zh##menu"}{...}
{viewerjumpto "Description" "count_zh##description"}{...}
{viewerjumpto "Links to PDF documentation" "count_zh##linkspdf"}{...}
{viewerjumpto "Examples" "count_zh##examples"}{...}
{viewerjumpto "Stored results" "count_zh##results"}
{help count:English Version}
{hline}{...}
{p2colset 1 14 16 2}{...}
{p2col:{bf:[D] count} {hline 2}}计算满足特定条件的观测值{p_end}
{p2col:}({mansection D count:查看完整的 PDF 手册条目}){p_end}
{p2colreset}{...}


{marker syntax}{...}
{title:语法}

{p 8 14 2}
{opt cou:nt}
{ifin}

{p 4 6 2}
{opt by} 允许使用；请参阅 {manhelp by D}。


{marker menu}{...}
{title:菜单}

{phang}
{bf:数据 > 数据工具 > 计算满足条件的观测值}


{marker description}{...}
{title:描述}

{pstd}
{opt count} 计算满足指定条件的观测值数量。如果没有指定条件，{opt count} 将显示数据中观测值的数量。


{marker linkspdf}{...}
{title:PDF 文档链接}

        {mansection D countQuickstart:快速入门}

        {mansection D countRemarksandexamples:备注和示例}

{pstd}
上述部分未包含在此帮助文件中。


{marker examples}{...}
{title:示例}

{pstd}设置{p_end}
{phang2}{cmd:. sysuse auto}{p_end}

{pstd}计算满足 {cmd:rep78>4} 的观测值数量{p_end}
{phang2}{cmd:. count if rep78>4}{p_end}

{pstd}按 {cmd:foreign} 分类，计算满足 {cmd:rep78>4} 的观测值数量{p_end}
{phang2}{cmd:. by foreign: count if rep78>4}{p_end}


{marker results}{...}
{title:存储结果}

{pstd}
{cmd:count} 在 {cmd:r()} 中存储以下内容：

{synoptset 15 tabbed}{...}
{p2col 5 15 19 2: 标量}{p_end}
{synopt:{cmd:r(N)}}观测值数量{p_end}
{p2colreset}{...}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <count.sthlp>}