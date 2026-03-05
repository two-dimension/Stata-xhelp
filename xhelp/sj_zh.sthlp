{smcl}
{* *! version 1.2.14  15oct2018}{...}
{vieweralsosee "[R] sj" "mansection R sj"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[R] net" "help net_zh"}{...}
{vieweralsosee "[R] net search" "help net_search_zh"}{...}
{vieweralsosee "[R] search" "help search_zh"}{...}
{vieweralsosee "stb" "help stb_zh"}{...}
{vieweralsosee "[R] update" "help update_zh"}{...}
{vieweralsosee "whatsnew" "help whatsnew_zh"}{...}
{findalias asfrstb}{...}
{viewerjumpto "Description" "sj_zh##description"}{...}
{viewerjumpto "Links to PDF documentation" "sj_zh##linkspdf"}{...}
{viewerjumpto "Obtaining community-contributed additions from the SJ" "sj_zh##software"}{...}
{viewerjumpto "Subscribing to the SJ" "sj_zh##subscribe"}
{help sj:English Version}
{hline}{...}
{p2colset 1 11 13 2}{...}
{p2col:{bf:[R] sj} {hline 2}}Stata Journal 安装说明{p_end}
{p2col:}({mansection R sj:查看完整的 PDF 手册条目}){p_end}
{p2colreset}{...}


{marker description}{...}
{title:描述}

{pstd}
{bf:Stata Journal} (SJ) 是一本季度期刊，包含关于统计、数据分析、教学方法以及有效使用 Stata 语言的文章。SJ 发布经过评审的论文，以及短篇笔记和评论、定期栏目、提示、书评以及其他对应用统计的研究人员感兴趣的材料。您可以通过访问 {browse "https://www.stata-journal.com"} 阅读所有关于 Stata Journal 的内容。

{pstd}
Stata Journal 是一本印刷和电子期刊，配有相应的软件。如果您想要期刊，必须订阅，但软件可以从我们的网站 {browse "https://www.stata-journal.com"} 免费获得。三年前的 SJ 文章 PDF 版本可在 {browse "https://www.stata-journal.com/archives.html"} 免费下载。最近的文章可以单独购买。

{pstd}
Stata Journal 第一卷第一期于 2001 年第四季度开始出版。Stata Journal 的前身是 Stata 技术公报 (STB)；请参见 {help stb_zh}。STB 于 1991 年 5 月开始出版，是统计软件用户的第一本此类出版物。

{pstd}
要查看最新 SJ（或任何 SJ）的目录，请访问 {browse "https://www.stata-journal.com/archives.html"}。


{marker linkspdf}{...}
{title:PDF 文档链接}

        {mansection R sjRemarksandexamples:备注和示例}

{pstd}
上述部分不包含在本帮助文件中。


{marker software}{...}
{title:从 SJ 获取社区贡献的附加内容}

{pstd}
SJ 社区贡献的附加内容很容易获得。
您可以 {net "from https://www.stata-journal.com/software":点击这里}

{p 4 15 2}或者 {space 4} 1) 选择 {bf:帮助 > SJ 和社区贡献命令}{p_end}
{p 12 15 2}2) 点击 Stata Journal{p_end}

{pstd}
或者使用命令行并输入

	    {inp:. net from https://www.stata-journal.com/software}

{pstd}
请参见 {manhelp net R}。接下来该做什么将是显而易见的。


{marker subscribe}{...}
{title:订阅 SJ}

{pstd}
可以从 StataCorp 进行 Stata Journal 的订阅和往期版本购买；请访问 {browse "https://www.stata.com/bookstore/subscribe-stata-journal/"}。
{p_end}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <sj.sthlp>}