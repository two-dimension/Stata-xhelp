{smcl}
{* *! version 1.1.8  15may2018}{...}
{vieweralsosee "[G-4] Scheme s1" "mansection G-4 Schemes1"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[G-4] Schemes intro" "help schemes_zh"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[G-3] scheme_option" "help scheme_option_zh"}{...}
{viewerjumpto "Syntax" "scheme_s1_zh##syntax"}{...}
{viewerjumpto "Description" "scheme_s1_zh##description"}{...}
{viewerjumpto "Links to PDF documentation" "scheme_s1_zh##linkspdf"}{...}
{viewerjumpto "Remarks" "scheme_s1_zh##remarks"}
{help scheme_s1:English Version}
{hline}{...}
{p2colset 1 20 22 2}{...}
{p2col:{bf:[G-4] Scheme s1} {hline 2}}方案描述： s1 家族{p_end}
{p2col:}({mansection G-4 Schemes1:查看完整的 PDF 手册条目}){p_end}
{p2colreset}{...}


{marker syntax}{...}
{title:语法}

	{cmd:s1} 家族{col 22}前景{col 36}背景{col 48}描述
	{hline 70}
	{cmd:s1rcolor}{...}
{col 22}颜色{...}
{col 36}黑色{...}
{col 48}黑色背景上的颜色
{...}
	{cmd:s1color}{...}
{col 22}颜色{...}
{col 36}白色{...}
{col 48}白色背景上的颜色
{...}
	{cmd:s1mono}{...}
{col 22}单色{...}
{col 36}白色{...}
{col 48}白色背景上的灰色
{...}
	{cmd:s1manual}{...}
{col 22}单色{...}
{col 36}白色{...}
{col 48}{cmd:s1mono}，但是更小
	{hline 70}

{pstd}
例如，你可以输入

{p 8 16 2}
{cmd:. graph}
...{cmd:,}
...
{cmd:scheme(s1color)}

{p 8 16 2}
{cmd:. set}
{cmd:scheme}
{cmd:s1rcolor}
[{cmd:,}
{cmdab:perm:anently}]

{pstd}
请参见 {manhelpi scheme_option G-3} 和 {manhelp set_scheme G-2:set scheme}。


{marker description}{...}
{title:描述}

{pstd}
方案决定图形的整体外观；请参见
{manhelp schemes G-4:方案简介}。

{pstd}
{s1} 家族的方案与 {cmd:s2}
家族相似 — 请参见 {manhelp scheme_s2 G-4:方案 s2} — 不同的是 {cmd:s1} 使用的是简单背景，意味着任何部分的背景都没有涂色。


{marker linkspdf}{...}
{title:PDF 文档链接}

        {mansection G-4 Schemes1Remarksandexamples:备注和示例}

{pstd}
上述部分未包含在此帮助文件中。


{marker remarks}{...}
{title:备注}

{pstd}
{cmd:s1} 是一个保守的方案家族，一些人更喜欢它而不是 {cmd:s2}。

{pstd}
特别值得注意的是 {cmd:s1rcolor}，它在黑色背景上显示图形。由于像素渗漏，当背景为黑色而非白色时，显示器具有更高的分辨率。此外，许多用户在黑色背景下观看图形时，眼睛感到更少的疲劳。方案 {cmd:s1rcolor} 打印效果较好，但其他方案的效果更佳。

{pstd}
方案 {cmd:s1color} 和 {cmd:s1mono} 源于 {cmd:s1rcolor}。这两种方案都会提供更好的打印效果。
{cmd:s1color} 和 {cmd:s1mono} 之间的重要区别在于
{cmd:s1color} 使用不同颜色的实线连接点，而 {cmd:s1mono} 则变化线型样式。

{pstd}
方案 {cmd:s1manual} 与 {cmd:s1mono} 相同，但图形整体尺寸更小。
{p_end}

{pstd}
有关示例，请参见
{mansection G-4 SchemesintroRemarksandexamplesExamplesofschemes:{it:方案示例}} 
在 {it:备注和示例} 的 {bf:[G-4] 方案简介} 中。
{p_end}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <scheme_s1.sthlp>}