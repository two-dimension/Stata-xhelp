{smcl}
{* *! version 1.1.2  11feb2011}{...}
{vieweralsosee "[R] set" "mansection R set"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[R] query" "help query_zh"}{...}
{viewerjumpto "Syntax" "smoothfonts_zh##syntax"}{...}
{viewerjumpto "Description" "smoothfonts_zh##description"}
{help smoothfonts:English Version}
{hline}{...}
{title:标题}

{phang}设置 Stata 窗口的字体平滑（仅适用于 Mac）


{marker syntax}{...}
{title:语法}

{p 8 22 2}
	{cmd:set} {cmdab:smoothf:onts} {c -(} {cmd:on} | {cmd:off} {c )-}


{marker description}{...}
{title:描述}

{pstd}
{cmd:set smoothfonts} 启用或禁用结果、查看器和数据编辑器窗口中的字体平滑（抗锯齿文本）。

{pstd}
禁用字体平滑并不适用于所有字体。没有斜体变体的字体将会特别渲染不佳，因为操作系统必须通过倾斜文本来模拟斜体。

{pstd}
{cmd:smoothfonts} 的默认值为 {cmd:on}。
{p_end}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <smoothfonts.sthlp>}