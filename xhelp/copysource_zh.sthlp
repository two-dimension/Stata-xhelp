{smcl}
{* *! version 1.0.5  15may2018}{...}
{vieweralsosee undocumented "help undocumented"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[P] findfile" "help findfile_zh"}{...}
{vieweralsosee "[M-1] Source" "help m1_source_zh"}{...}
{vieweralsosee "[P] viewsource" "help viewsource_zh"}{...}
{viewerjumpto "Syntax" "copysource_zh##syntax"}{...}
{viewerjumpto "Description" "copysource_zh##description"}{...}
{viewerjumpto "Remarks" "copysource_zh##remarks"}
{help copysource:English Version}
{hline}{...}
{title:标题}

{p 4 20 2}
{hi:[P] copysource} {hline 2} 将源代码复制到当前目录


{marker syntax}{...}
{title:语法}

{phang}
{cmd:copysource} 
{it:filename}


{marker description}{...}
{title:描述}

{pstd}
{cmd:copysource} 在 {help sysdir_zh:adopath} 中搜索 {it:filename}，如果找到，则将其复制到当前（工作）目录。


{marker remarks}{...}
{title:备注}

{pstd}
{cmd:copysource} 类似于 {help viewsource_zh}，但它不是在查看器中显示文件，而是将文件复制到当前目录。
{p_end}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <copysource.sthlp>}