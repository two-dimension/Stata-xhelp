{smcl}
{* *! version 1.1.12  15may2018}{...}
{vieweralsosee "[G-4] Scheme s2" "mansection G-4 Schemes2"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[G-4] Schemes intro" "help schemes_zh"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[G-3] scheme_option" "help scheme_option_zh"}{...}
{viewerjumpto "Syntax" "scheme_s2_zh##syntax"}{...}
{viewerjumpto "Description" "scheme_s2_zh##description"}{...}
{viewerjumpto "Links to PDF documentation" "scheme_s2_zh##linkspdf"}{...}
{viewerjumpto "Remarks" "scheme_s2_zh##remarks"}
{help scheme_s2:English Version}
{hline}{...}
{p2colset 1 20 22 2}{...}
{p2col:{bf:[G-4] Scheme s2} {hline 2}}方案描述： s2 系列{p_end}
{p2col:}({mansection G-4 Schemes2:查看完整的PDF手册条目}){p_end}
{p2colreset}{...}


{marker syntax}{...}
{title:语法}

	{it:schemename}{col 21}前景色{col 34}背景色{col 46}描述
	{hline 70}
	{cmd:s2color}{...}
{col 21}颜色{...}
{col 34}白色{...}
{col 46}{bf:工厂设置}
{...}
	{cmd:s2mono}{...}
{col 21}单色{...}
{col 34}白色{...}
{col 46}{cmd:s2color} 的单色版本
{...}
	{cmd:s2gcolor}{...}
{col 21}颜色{...}
{col 34}白色{...}
{col 46}用于 Stata 手册中
	{cmd:s2manual}{...}
{col 21}单色{...}
{col 34}白色{...}
{col 46}{cmd:s2gcolor} 的单色版本
	{cmd:s2gmanual}{...}
{col 21}单色{...}
{col 34}白色{...}
{col 46}以前在 [G] 手册中使用
	{hline 70}

{pstd}
例如，您可以输入

{p 8 16 2}
{cmd:. graph}
...{cmd:,}
...
{cmd:scheme(s2mono)}

{p 8 16 2}
{cmd:. set}
{cmd:scheme}
{cmd:s2mono}
[{cmd:,}
{cmdab:perm:anently}]

{pstd}
有关更多信息，请参见 {manhelpi scheme_option G-3} 和 {manhelp set_scheme G-2:set scheme}。


{marker description}{...}
{title:描述}

{pstd}
方案决定图表的整体外观；参见 {manhelp schemes G-4:方案简介}。

{pstd}
{cmd:s2} 系列方案是 Stata 的默认方案。


{marker linkspdf}{...}
{title:PDF文档链接}

        {mansection G-4 Schemes2Remarksandexamples:备注和示例}

{pstd}
上述部分不包含在此帮助文件中。


{marker remarks}{...}
{title:备注}

{pstd}
{cmd:s2} 是我们喜欢用于显示数据的方案系列。它提供了淡背景色调，使图表更具定义感，并使其在视觉上更具吸引力。另一方面，如果您觉得这种色调分散了注意力，请参见 {manhelp scheme_s1 G-4:方案 s1}；{cmd:s1} 系列几乎与 {cmd:s2} 相同，但去除了额外的色调。

{pstd}
特别建议考虑方案 {cmd:s1rcolor}；参见 {manhelp scheme_s1 G-4:方案 s1}。{cmd:s1rcolor} 使用黑色背景，在监视器上使用时，很难找到更好的选择。

{pstd}
无论如何，方案 {cmd:s2color} 是 Stata 的默认方案。它在屏幕上显示良好，打印在彩色打印机上时也效果良好，在单色打印机上打印时也绰绰有余。

{pstd}
方案 {cmd:s2mono} 针对在单色打印机上打印进行了优化。此外，{cmd:s2mono} 不再重复使用相同的符号并变量颜色，而是将符号的形状变化，而在连接点时，{cmd:s2mono} 变化线条模式（{cmd:s2color} 变化颜色）。

{pstd}
方案 {cmd:s2gcolor} 是在 Stata 手册中使用的方案。它与 {cmd:s2color} 相同，只是在图表大小上较小。

{pstd}
方案 {cmd:s2manual} 是在 Stata 13 之前的手册中使用的方案。它基本上是 {cmd:s2mono}，但是更小。

{pstd}
方案 {cmd:s2gmanual} 是在 Stata 13 之前的 Stata 图形手册中使用的方案。它与 {cmd:s2manual} 相似，只是连接线是实线且为灰度，而不是图案化和黑色。

{pstd}
请参见示例，见 {mansection G-4 SchemesintroRemarksandexamplesExamplesofschemes:{it:方案示例}} 在 {it:备注和示例} 的 {bf:[G-4] 方案简介}。
{p_end}

{pin}
{it:技术说明：}{break}
{cmd:s2color} 方案中使用的颜色在 Stata 8 之后稍作更改，以改善在彩色喷墨打印机和印刷机上的打印效果——某些颜色中的青色数量减少，以防止不必要的偏紫色。您可能不会注意到差异，但如果您想要原始颜色，可以在方案 {cmd:s2color8} 中找到。{p_end}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <scheme_s2.sthlp>}