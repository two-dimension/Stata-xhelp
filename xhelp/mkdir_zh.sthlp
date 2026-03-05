{smcl}
{* *! version 1.1.4  19oct2017}{...}
{vieweralsosee "[D] mkdir" "mansection D mkdir"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[D] cd" "help cd_zh"}{...}
{vieweralsosee "[D] copy" "help copy_zh"}{...}
{vieweralsosee "[D] dir" "help dir_zh"}{...}
{vieweralsosee "[D] erase" "help erase_zh"}{...}
{vieweralsosee "[D] rmdir" "help rmdir_zh"}{...}
{vieweralsosee "[D] shell" "help shell_zh"}{...}
{vieweralsosee "[D] type" "help type_zh"}{...}
{viewerjumpto "Syntax" "mkdir_zh##syntax"}{...}
{viewerjumpto "Description" "mkdir_zh##description"}{...}
{viewerjumpto "Links to PDF documentation" "mkdir_zh##linkspdf"}{...}
{viewerjumpto "Option" "mkdir_zh##option"}{...}
{viewerjumpto "Examples" "mkdir_zh##examples"}
{help mkdir:English Version}
{hline}{...}
{p2colset 1 14 16 2}{...}
{p2col:{bf:[D] mkdir} {hline 2}}创建目录{p_end}
{p2col:}({mansection D mkdir:查看完整的 PDF 手册条目}){p_end}
{p2colreset}{...}


{marker syntax}{...}
{title:语法}

{p 8 13 2}{cmd:mkdir} {it:directoryname} [{cmd:,} {cmdab:pub:lic}]


{phang}
可以使用双引号将 {it:directoryname} 括起来，如果 {it:directoryname} 包含空格，则必须使用引号。


{marker description}{...}
{title:描述}

{pstd}
{cmd:mkdir} 创建一个新的目录（文件夹）。


{marker linkspdf}{...}
{title:PDF 文档链接}

        {mansection D mkdirQuickstart:快速开始}

        {mansection D mkdirRemarksandexamples:备注和示例}

{pstd}
上述部分未包含在此帮助文件中。


{marker option}{...}
{title:选项}

{phang}
{cmd:public} 指定 {it:directoryname} 对所有人可读；否则，目录将根据操作系统的默认权限创建。


{marker examples}{...}
{title:示例}

{pstd}
Windows 下的 Stata:

{phang2}{cmd:. mkdir myproj}{p_end}
{phang2}{cmd:. mkdir c:\projects\myproj}{p_end}
{phang2}{cmd:. mkdir "c:\My Projects\Project 1"}

{pstd}
Mac 和 Unix 下的 Stata:

{phang2}{cmd:. mkdir myproj}{p_end}
{phang2}{cmd:. mkdir ~/projects/myproj}{p_end}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <mkdir.sthlp>}