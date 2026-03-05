{smcl}
{* *! version 1.2.6  15oct2018}{...}
{vieweralsosee "[G-4] Scheme sj" "mansection G-4 Schemesj"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[G-4] Schemes intro" "help schemes_zh"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[G-2] set scheme" "help set_scheme_zh"}{...}
{vieweralsosee "[G-3] scheme_option" "help scheme_option_zh"}{...}
{vieweralsosee "[R] sj" "help sj_zh"}{...}
{viewerjumpto "Syntax" "scheme_sj_zh##syntax"}{...}
{viewerjumpto "Description" "scheme_sj_zh##description"}{...}
{viewerjumpto "Links to PDF documentation" "scheme_sj_zh##linkspdf"}{...}
{viewerjumpto "Remarks" "scheme_sj_zh##remarks"}
{help scheme_sj:English Version}
{hline}{...}
{p2colset 1 20 22 2}{...}
{p2col:{bf:[G-4] Scheme sj} {hline 2}}方案描述： sj{p_end}
{p2col:}({mansection G-4 Schemesj:查看完整的 PDF 手册条目}){p_end}
{p2colreset}{...}


{marker syntax}{...}
{title:语法}

	{it:schemename}{col 22}前景{col 36}背景{col 48}描述
	{hline 70}
	{cmd:sj}{...}
{col 22}单色{...}
{col 36}白色{...}
{col 48}{it:Stata Journal}
	{hline 70}

{pstd}
例如，您可以输入

{p 8 16 2}
{cmd:. graph}
...{cmd:,}
...
{cmd:scheme(sj)}

{p 8 16 2}
{cmd:. set}
{cmd:scheme}
{cmd:sj}
[{cmd:,}
{cmdab:perm:anently}]

{pstd}
请参阅 {manhelpi scheme_option G-3} 和 {manhelp set_scheme G-2:set scheme}。


{marker description}{...}
{title:描述}

{pstd}
方案决定图形的整体外观；
请参见 {manhelp schemes G-4:方案简介}。

{pstd}
方案 {cmd:sj} 是 {it:Stata} {it:Journal} 的官方方案；请参见
{manhelp sj R}。


{marker linkspdf}{...}
{title:PDF 文档链接}

        {mansection G-4 SchemesjRemarksandexamples:备注和示例}

{pstd}
以上部分未包含在此帮助文件中。


{marker remarks}{...}
{title:备注}

{pstd}
在向 {it:Stata Journal} 提交文章时，图形应使用方案 {cmd:sj} 进行绘制。

{pstd}
在绘制用于提交的图形之前，请确保方案 {cmd:sj} 是最新的。方案与 Stata 的其他部分一起更新，因此您只需要输入

	{cmd:.} {bf:{stata update query}}

{pstd}
并遵循给出的任何说明；请参见 {manhelp update R}。

{pstd}
还请访问 {it:Stata Journal} 网站以获取任何特别说明。
请在浏览器中输入

	{bf:{browse "https://www.stata-journal.com"}}

{pstd}
有关示例，请参见
{mansection G-4 SchemesintroRemarksandexamplesExamplesofschemes:{it:方案示例}} 
在 {it:备注和示例} 中的 {bf:[G-4] 方案简介}。
{p_end}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <scheme_sj.sthlp>}