{smcl}
{* *! version 1.0.4  11may2018}{...}
{viewerdialog Sp "dialog sp"}{...}
{vieweralsosee "[SP] spdistance" "mansection SP spdistance"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[SP] Intro" "mansection SP Intro"}{...}
{vieweralsosee "[SP] spset" "help spset_zh"}{...}
{viewerjumpto "语法" "spdistance_zh##syntax"}{...}
{viewerjumpto "菜单" "spdistance_zh##menu"}{...}
{viewerjumpto "描述" "spdistance_zh##description"}{...}
{viewerjumpto "PDF文档链接" "spdistance_zh##linkspdf"}{...}
{viewerjumpto "示例" "spdistance_zh##example"}{...}
{viewerjumpto "存储结果" "spdistance_zh##results"}
{help spdistance:English Version}
{hline}{...}
{p2colset 1 20 22 2}{...}
{p2col:{bf:[SP] spdistance} {hline 2}}地点间距离计算器{p_end}
{p2col:}({mansection SP spdistance:查看完整的PDF手册条目}){p_end}
{p2colreset}{...}

{marker syntax}{...}
{title:语法}

{p 8 14 2}
{cmd:spdistance} {it:#1} {it:#2}

{phang}
{it:#1} 和 {it:#2} 是两个 {cmd:_ID} 值。

INCLUDE help menu_spatial

{marker description}{...}
{title:描述}

{pstd}
{cmd:spdistance} {it:#1} {it:#2} 报告区域 {cmd:_ID} = {it:#1} 和 {cmd:_ID} = {it:#2} 之间的距离。

{marker linkspdf}{...}
{title:PDF文档链接}

        {mansection SP spdistanceQuickstart:快速入门}

        {mansection SP spdistanceRemarksandexamples:备注和示例}

        {mansection SP spdistanceMethodsandformulas:方法和公式}

{pstd}
上述部分不包含在此帮助文件中。

{marker example}{...}
{title:示例}

{pstd}
在一个城市数据集中，洛杉矶和纽约的 {cmd:_ID} 值分别为 1 和 79，获取它们之间的距离{p_end}
{phang2}
{cmd:. spdistance 1 79}

{marker results}{...}
{title:存储结果}

{pstd}
{cmd:spdistance} 将以下内容存储在 {cmd:r()} 中：

{synoptset 15 tabbed}{...}
{p2col 5 15 19 2: 标量}{p_end}
{synopt:{cmd:r(dist)}}两者之间的距离{p_end}

{p2col 5 15 19 2: 宏}{p_end}
{synopt:{cmd:r(coordsys)}}{cmd:planar} 或 {cmd:latlong}{p_end}
{synopt:{cmd:r(dunits)}}{cmd:miles} 或 {cmd:kilometers} 如果
   {cmd:r(coordsys)} = {cmd:latlong}{p_end}
{p2colreset}{...}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <spdistance.sthlp>}