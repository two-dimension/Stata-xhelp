{smcl}
{* *! version 1.1.2  08jan2015}{...}
{vieweralsosee "[R] set" "mansection R set"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[R] query" "help query_zh"}{...}
{viewerjumpto "Syntax" "linegap_zh##syntax"}{...}
{viewerjumpto "Description" "linegap_zh##description"}
{help linegap:English Version}
{hline}{...}
{title:标题}

{phang}
设置结果窗口中行之间的间距，以像素为单位


{marker syntax}{...}
{title:语法}

	{cmd:set linegap} {it:#}


{marker description}{...}
{title:描述}

{pstd}
{cmd:set linegap} 设置结果窗口中行之间的间距，以像素为单位。

{pstd}
{cmd:linegap} 的默认值因操作系统而异。根据您在结果窗口中使用的字体，较小或较大的 {cmd:linegap} 值可能会使输出更易读。

{pstd}
您也可以通过在 Windows 和 Unix(GUI) 中选择 {bf:Edit > Preferences... > General preferences...}，或在 Mac 中从 Stata 菜单选择 {bf:Preferences > General preferences...} 来 {cmd:set} {cmd:linegap}。{p_end}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <linegap.sthlp>}