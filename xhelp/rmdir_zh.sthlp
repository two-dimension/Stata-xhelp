{smcl}
{* *! version 1.1.5  19oct2017}{...}
{vieweralsosee "[D] rmdir" "mansection D rmdir"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[D] cd" "help cd_zh"}{...}
{vieweralsosee "[D] copy" "help copy_zh"}{...}
{vieweralsosee "[D] dir" "help dir_zh"}{...}
{vieweralsosee "[D] erase" "help erase_zh"}{...}
{vieweralsosee "[D] mkdir" "help mkdir_zh"}{...}
{vieweralsosee "[D] shell" "help shell_zh"}{...}
{vieweralsosee "[D] type" "help type_zh"}{...}
{viewerjumpto "Syntax" "rmdir_zh##syntax"}{...}
{viewerjumpto "Description" "rmdir_zh##description"}{...}
{viewerjumpto "Links to PDF documentation" "rmdir_zh##linkspdf"}{...}
{viewerjumpto "Examples" "rmdir_zh##examples"}
{help rmdir:English Version}
{hline}{...}
{p2colset 1 14 16 2}{...}
{p2col:{bf:[D] rmdir} {hline 2}}删除目录
{p_end}
{p2col:}({mansection D rmdir:查看完整 PDF 手册条目}){p_end}
{p2colreset}{...}


{marker syntax}{...}
{title:语法}

{p 8 13 2}{cmd:rmdir} {it:directory_name}


{pstd}
可以使用双引号来包围目录名称，如果目录名称包含空格，则必须使用引号。


{marker description}{...}
{title:描述}

{pstd}{cmd:rmdir} 删除一个空目录（文件夹）。


{marker linkspdf}{...}
{title:PDF 文档链接}

        {mansection D rmdirQuickstart:快速开始}

        {mansection D rmdirRemarksandexamples:备注和示例}

{pstd}
以上部分不包含在本帮助文件中。


{marker examples}{...}
{title:示例}

{pstd}适用于 Windows 的 Stata：

{phang2}{cmd:. rmdir myproj}{p_end}
{phang2}{cmd:. rmdir c:\projects\myproj}{p_end}
{phang2}{cmd:. rmdir "c:\My Projects\Project 1"}

{pstd}适用于 Mac 和 Unix 的 Stata：

{phang2}{cmd:. rmdir myproj}{p_end}
{phang2}{cmd:. rmdir ~/projects/myproj}{p_end}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <rmdir.sthlp>}