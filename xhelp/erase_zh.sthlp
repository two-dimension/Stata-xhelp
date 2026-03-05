{smcl}
{* *! version 1.0.11  19oct2017}{...}
{vieweralsosee "[D] erase" "mansection D erase"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[D] cd" "help cd_zh"}{...}
{vieweralsosee "[D] copy" "help copy_zh"}{...}
{vieweralsosee "[D] dir" "help dir_zh"}{...}
{vieweralsosee "[D] mkdir" "help mkdir_zh"}{...}
{vieweralsosee "[D] rmdir" "help rmdir_zh"}{...}
{vieweralsosee "[D] shell" "help shell_zh"}{...}
{vieweralsosee "[D] type" "help type_zh"}{...}
{viewerjumpto "Syntax" "erase_zh##syntax"}{...}
{viewerjumpto "Description" "erase_zh##description"}{...}
{viewerjumpto "Links to PDF documentation" "erase_zh##linkspdf"}{...}
{viewerjumpto "Examples" "erase_zh##examples"}
{help erase:English Version}
{hline}{...}
{p2colset 1 14 16 2}{...}
{p2col:{bf:[D] erase} {hline 2}}删除磁盘文件{p_end}
{p2col:}({mansection D erase:查看完整的 PDF 手册条目}){p_end}
{p2colreset}{...}


{marker syntax}{...}
{title:语法}

{p 8 11 2}
{c -(}{cmd:erase}|{cmd:rm}{c )-} [{cmd:"}]{it:{help filename_zh}}[{cmd:"}]

{p 4 11 2}
注意：如果 {it:filename} 的名称包含空格，必须使用双引号将其括起。


{marker description}{...}
{title:描述}

{pstd}
{cmd:erase} 命令用于删除存储在磁盘上的文件。{cmd:rm} 是 {cmd:erase} 的同义词，方便 Mac 和 Unix 用户使用。

{pstd}
对于 Mac 用户：{cmd:erase} 是永久性的；文件不会移动到废纸篓，而是立即从磁盘中移除。

{pstd}
对于 Windows 用户：{cmd:erase} 是永久性的；文件不会移动到回收站，而是立即从磁盘中移除。


{marker linkspdf}{...}
{title:PDF 文档链接}

        {mansection D eraseQuickstart:快速入门}

        {mansection D eraseRemarksandexamples:备注和示例}

{pstd}
以上部分不包含在此帮助文件中。


{marker examples}{...}
{title:示例}

{phang}
Windows{p_end}
{pmore}
{cmd:. erase oldfile.dta}{p_end}
{pmore}
{cmd:. erase ..\mydata\oldfile.dta}

{phang}
Mac 和 Unix{p_end}
{pmore}
{cmd:. rm oldfile.dta}{p_end}
{pmore}
{cmd:. rm ../mydata/oldfile.dta}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <erase.sthlp>}