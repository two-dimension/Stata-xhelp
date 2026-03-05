{smcl}
{* *! version 1.2.4  15oct2018}{...}
{vieweralsosee "[R] net" "help net_zh"}{...}
{vieweralsosee "[R] search" "help search_zh"}{...}
{vieweralsosee "[R] sj" "help sj_zh"}{...}
{vieweralsosee "[R] update" "help update_zh"}{...}
{vieweralsosee "whatsnew" "help whatsnew_zh"}{...}
{viewerjumpto "Description" "stb_zh##description"}{...}
{viewerjumpto "Obtaining community-contributed additions from the STB" "stb_zh##software"}{...}
{viewerjumpto "STB Reprints" "stb_zh##reprints"}{...}
{viewerjumpto "Obtaining STB Reprints" "stb_zh##obtain_reprints"}
{help stb:English Version}
{hline}{...}
{title:标题}

{phang}
Stata 技术公报


{marker description}{...}
{title:描述}

{pstd}
{hi:Stata 技术公报}（STB）是 {hi:Stata Journal}（SJ）的前身；请参见 {manhelp sj R}。有关 STB 的描述如下。

{pstd}
STB 是一本面向 Stata 用户的出版物；它为各个学科和不同水平的用户提供了一个论坛。STB 的再版以纸质和电子形式提供。
STB 的再版包含 StataCorp、Stata 用户及其他人撰写的文章。这些文章包括对 Stata 的增强（ado 文件）、编程策略的教程、数据分析技术的演示、统计教学的讨论、关于合适统计技术的辩论、其他程序的报告，以及有趣的数据集、公告、问题和建议。

{pstd}
如果您想要 STB 的再版，必须向 StataCorp 订购（相关信息见下文）。然而，软件可以在我们的网站上免费下载 {browse "https://www.stata.com"}。

{pstd}
双月刊 STB 于 1991 年 5 月首次出版，并持续了十年（至 2001 年 5 月）。STB 是统计软件用户首次出版的此类文献。
{browse "https://www.stata-journal.com":Stata Journal} 在 2001 年第四季度开始出版，进一步扩展了这一基础。

{pstd}
作为 STB 中可用内容的示例，2000 年 3 月 STB 期刊的目录如下：

{center:{hline 70}}
{center:使用 stcurve 命令绘制多条曲线 . . . . . . . . . . .  2}
{center:在网页上搜索可安装的软件包 . . . . . . . . . . . . . . .  4}
{center:分类变量的对比：更新 . . . . . . . . . . . .  7}
{center:ICD-9 诊断和程序代码 . . . . . . . . . . . . . . .  8}
{center:在数据集中删除重复观测 . . . . . . . . . . . 16}
{center:关于绘制维恩图的更新 . . . . . . . . . . . . . . . . 17}
{center:叠加图形 . . . . . . . . . . . . . . . . . . . . . . . . . 19}
{center:用户编写贡献的元数据：扩展 . . . . . . . . 21}
{center:从公共卫生监测数据中自动检测疫情 . 23}
{center:一致性相关系数：Stata 6 的更新 . . . . . . 25}
{center:热装填插补的更新 . . . . . . . . . . . . . . . . . . 26}
{center:对 roccomp 命令的更正 . . . . . . . . . . . . . . . . . . . 26}
{center:Box–Cox 回归模型 . . . . . . . . . . . . . . . . . . . . 27}
{center:关于 Box–Cox 回归模型中 Wald 检验的可操控性 . 36}
{center:从摘要统计中进行方差分析 . . . . . . . . . . . 42}
{center:顺序及逐项丢弃的似然比检验 . . . . . . . . 46}
{center:使用 Akaike 信息准则进行模型选择 . . . . . . 47}
{center:平衡块内随机分配处理：更新 . . . . 49}
{center:{hline 70}}

{pstd}
要查看任何 STB 的目录，可以按照下面的步骤进行。

{marker software}{...}
{title:获取来自 STB 的社区贡献}

{pstd}
STB 社区贡献的附加内容易于获取。
您可以 {net "from https://www.stata.com/stb":点击这里}

{p 4 15 2}或者 {space 4} 1) 选择 {bf:Help > SJ 和社区贡献程序}{p_end}
{p 12 15 2}2) 点击 STB {p_end}

{pstd}
或者使用命令行并输入

	    {inp:. net from https://www.stata.com/stb}

{pstd}
请参见 {help net_zh}。接下来的步骤将是显而易见的。


{marker reprints}{...}
{title:STB 再版}

{pstd}
十年的 Stata 技术公报已再版为十本书系列——{hi:Stata 技术公报再版}。每本再版包含了一年的 STB 内容。

{center:{c TLC}{hline 11}{c TT}{hline 13}{c TT}{hline 34}{c TRC}}
{center:{c |}  再版  {c |}{space 13}{c |}{space 34}{c |}}
{center:{c |}  卷   {c |}   编辑    {c |}       包含 STB 期刊内容        {c |}}
{center:{c LT}{hline 11}{c +}{hline 13}{c +}{hline 34}{c RT}}
{center:{c |}  1 (1992) {c |} J. Hilbe    {c |}  1 (1991 年 5 月) --  6 (1992 年 3 月) {c |}}
{center:{c |}  2 (1993) {c |} J. Hilbe    {c |}  7 (1992 年 5 月) -- 12 (1993 年 3 月) {c |}}
{center:{c |}  3 (1994) {c |} S. Becketti {c |} 13 (1993 年 5 月) -- 18 (1994 年 3 月) {c |}}
{center:{c |}  4 (1995) {c |} S. Becketti {c |} 19 (1994 年 5 月) -- 24 (1995 年 3 月) {c |}}
{center:{c |}  5 (1996) {c |} S. Becketti {c |} 25 (1995 年 5 月) -- 30 (1996 年 3 月) {c |}}
{center:{c |}  6 (1997) {c |} H.J. Newton {c |} 31 (1996 年 5 月) -- 36 (1997 年 3 月) {c |}}
{center:{c |}  7 (1998) {c |} H.J. Newton {c |} 32 (1997 年 5 月) -- 42 (1998 年 3 月) {c |}}
{center:{c |}  8 (1999) {c |} H.J. Newton {c |} 43 (1998 年 5 月) -- 48 (1999 年 3 月) {c |}}
{center:{c |}  9 (2000) {c |} H.J. Newton {c |} 49 (1999 年 5 月) -- 54 (2000 年 3 月) {c |}}
{center:{c |} 10 (2001) {c |} H.J. Newton {c |} 55 (2000 年 5 月) -- 61 (2001 年 5 月) {c |}}
{center:{c BLC}{hline 11}{c BT}{hline 13}{c BT}{hline 34}{c BRC}}

{pstd}
每本 STB 再版卷的目录已发布在我们的官方网站：{browse "https://www.stata.com/bookstore/stbj.html"}。


{marker obtain_reprints}{...}
{title:获取 STB 再版}

{pstd}
STB 再版可从 StataCorp 获取。

	    StataCorp
	    4905 Lakeway Drive
	    College Station, Texas 77845

	    {browse "https://www.stata.com"}
	    {browse "https://www.stata.com/bookstore/stbr.html"}
	    {browse "mailto:stata@stata.com":stata@stata.com}

	    800-782-8272  (800-STATAPC, USA)
	    800-248-8272  (Canada)
	    979-696-4600  (Worldwide)
	    979-696-4601  (传真)

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <stb.sthlp>}