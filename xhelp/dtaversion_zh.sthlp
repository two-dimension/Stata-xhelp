{smcl}
{* *! version 1.1.2  19apr2019}{...}
{vieweralsosee undocumented "help undocumented"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[R] dtaverify" "help dtaverify_zh"}{...}
{viewerjumpto "语法" "dtaversion_zh##syntax"}{...}
{viewerjumpto "描述" "dtaversion_zh##description"}{...}
{viewerjumpto "备注" "dtaversion_zh##remarks"}{...}
{viewerjumpto "存储结果" "dtaversion_zh##results"}
{help dtaversion:English Version}
{hline}{...}
{title:标题}

{p 4 22 2}
{hi:[R] dtaversion} {hline 2} 报告 .dta 文件的格式和版本


{marker syntax}{...}
{title:语法}

	{cmd:dtaversion} {it:{help filename_zh}}


{marker description}{...}
{title:描述}

{p 4 4 2}
{cmd:dtaversion} 报告与指定的 {cmd:.dta} 文件相关的 {cmd:.dta} 格式和 Stata 版本。


{marker remarks}{...}
{title:备注}

{p 4 4 2}
{cmd:dtaversion} 是 StataCorp 使用的认证工具。

{p 4 4 2} 
一个相关命令 {help dtaverify_zh} 具有除认证之外的其他用途。

{p 4 4 2}
Stata 将数据存储在 {cmd:.dta} 文件中。这些文件的格式随时间而变化。

        Stata 版本     .dta 文件格式
	{hline 40}
               1               102
            2, 3               103
               4               104
               5               105
               6               108
               7            110 和 111
            8, 9            112 和 113
          10, 11               114
              12               115
              13               117
              14, 15, 和 16   118 (变量数 <= 32,767)
              15 和 16        119 (变量数 > 32,767, Stata/MP 仅限)
	{hline 40}
        文件格式 103, 106, 107, 109 和 116
        从未在任何正式发布中使用。

{p 4 4 2}
许多用户并不清楚文件格式曾经改变，因为
每个版本的 Stata 都可以读取当时的当前格式和以前的格式。

{p 4 4 2}
有关格式的文档可在线获得；请参见
{manhelp dta P:File formats .dta}。


{marker results}{...}
{title:存储结果}

{p 4 4 2}
{cmd:dtaversion} 将 {cmd:.dta} 文件格式存储在标量 {cmd:r(version)} 中，有时称为 {cmd:.dta} 文件的版本号，不应与 Stata 的版本号混淆。
{p_end}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <dtaversion.sthlp>}