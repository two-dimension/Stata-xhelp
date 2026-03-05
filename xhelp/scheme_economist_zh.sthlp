{smcl}
{* *! version 1.1.8  15oct2018}{...}
{vieweralsosee "[G-4] Scheme economist" "mansection G-4 Schemeeconomist"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[G-4] Schemes intro" "help schemes_zh"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[G-2] set scheme" "help set_scheme_zh"}{...}
{vieweralsosee "[G-3] scheme_option" "help scheme_option_zh"}{...}
{viewerjumpto "Syntax" "scheme_economist_zh##syntax"}{...}
{viewerjumpto "Description" "scheme_economist_zh##description"}{...}
{viewerjumpto "Links to PDF documentation" "scheme_economist_zh##linkspdf"}{...}
{viewerjumpto "Remarks" "scheme_economist_zh##remarks"}
{help scheme_economist:English Version}
{hline}{...}
{p2colset 1 27 29 2}{...}
{p2col:{bf:[G-4] Scheme economist} {hline 2}}方案描述：经济学家{p_end}
{p2col:}({mansection G-4 Schemeeconomist:查看完整PDF手册条目}){p_end}
{p2colreset}{...}


{marker syntax}{...}
{title:语法}

	{it:schemename}{col 22}前景{col 36}背景{col 48}描述
	{hline 70}
	{cmd:economist}{...}
{col 22}颜色{...}
{col 36}白色{...}
{col 48}{it:经济学人}杂志
	{hline 70}

{pstd}
例如，你可以输入

{p 8 16 2}
{cmd:. graph}
...{cmd:,}
...
{cmd:scheme(economist)}

{p 8 16 2}
{cmd:. set}
{cmd:scheme}
{cmd:economist}
[{cmd:,}
{cmdab:perm:anently}]

{pstd}
参见{manhelpi scheme_option G-3}和{manhelp set_scheme G-2:设置方案}。


{marker description}{...}
{title:描述}

{pstd}
方案决定了图形的整体外观；请参见{manhelp schemes G-4:方案介绍}。

{pstd}
方案 {cmd:economist} 指定了一种类似于{it:经济学人}杂志使用的外观。


{marker linkspdf}{...}
{title:PDF文档链接}

        {mansection G-4 SchemeeconomistRemarksandexamples:备注和示例}

{pstd}
上述部分未包含在此帮助文件中。


{marker remarks}{...}
{title:备注}

{pstd}
{it:经济学人}杂志（{browse "https://www.economist.com"}）使用一种独特且简洁的图形风格，值得效仿，并且与通常的风格有很大的不同，提供了一个出色的示例，展示了方案的不同之处。

{pstd}
在散点图中，{it:经济学人}将 {it:y} 轴放在右侧，而不是左侧。
{p_end}

{pstd}
有关示例，请参阅{mansection G-4 SchemesintroRemarksandexamplesExamplesofschemes:{it:方案示例}}中的{it:备注和示例}部分，位于{bf:[G-4] 方案介绍}。
{p_end}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <scheme_economist.sthlp>}