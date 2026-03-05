{smcl}
{* *! version 1.1.1  11feb2011}{...}
{findalias asgsmprofile}{...}
{findalias asgsuprofile}{...}
{findalias asgswprofile}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[R] do" "help do_zh"}{...}
{vieweralsosee "[R] doedit" "help doedit_zh"}
{help profile:English Version}
{hline}{...}
{title:标题}

{p 4 16 2}{findalias gsmprofile}{p_end}
{p 4 16 2}{findalias gsuprofile}{p_end}
{p 4 16 2}{findalias gswprofile}{p_end}


{title:描述}

{pstd}
Stata 首先查找 sysprofile.do 文件，在调用时会执行它。之后，
Stata 会查找 profile.do 文件。如果找到其中任何一个文件，Stata
将执行它们所包含的命令。

{pstd}
有关特定于操作系统的信息，请参见

{p 10 34 2}help {help profilem_zh} {space 8} (Stata for Mac){p_end}
{p 10 34 2}help {help profileu_zh} {space 8} (Stata for Unix){p_end}
{p 10 34 2}help {help profilew_zh} {space 8} (Stata for Windows){p_end}

{pstd}
有关 do 文件的解释，请参见 {findalias frdofiles}。它们只是包含一系列供 Stata 执行的命令的文本（ASCII）文件。
{p_end}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <profile.sthlp>}