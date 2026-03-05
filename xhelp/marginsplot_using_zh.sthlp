{smcl}
{* *! version 1.0.0  15jan2015}{...}
{vieweralsosee undocumented "help undocumented"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[R] marginsplot" "help margins_zh"}{...}
{viewerjumpto "Syntax" "marginsplot_using_zh##syntax"}{...}
{viewerjumpto "Description" "marginsplot_using_zh##description"}
{help marginsplot_using:English Version}
{hline}{...}
{title:标题}

{p2colset 4 26 28 2}{...}
{p2col:{hi:[R] marginsplot using}}{hline 2} 从数据集中绘制边际结果图
{p_end}


{marker syntax}{...}
{title:语法}

{p 8 16 2}
{cmd:marginsplot}
[{cmd:using} {it:文件名}]
[{cmd:,} {it:{help marginsplot##options:选项}}] 


{marker description}{...}
{title:描述}

{pstd}
{cmd:marginsplot using} {it:文件名} 绘制保存在 {it:文件名} 中的 {cmd:margins} 结果。
{p_end}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <marginsplot_using.sthlp>}