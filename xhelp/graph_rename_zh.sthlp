{smcl}
{* *! version 1.1.7  19oct2017}{...}
{viewerdialog "graph rename" "dialog graph_rename"}{...}
{vieweralsosee "[G-2] graph rename" "mansection G-2 graphrename"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[G-2] graph manipulation" "help graph_manipulation_zh"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[G-2] graph copy" "help graph_copy_zh"}{...}
{viewerjumpto "Syntax" "graph rename##syntax"}{...}
{viewerjumpto "Menu" "graph rename##menu"}{...}
{viewerjumpto "Description" "graph rename##description"}{...}
{viewerjumpto "Links to PDF documentation" "graph_rename_zh##linkspdf"}{...}
{viewerjumpto "Option" "graph rename##option"}{...}
{viewerjumpto "Remarks" "graph rename##remarks"}
{help graph_rename:English Version}
{hline}{...}
{p2colset 1 23 25 2}{...}
{p2col:{bf:[G-2] graph rename} {hline 2}}重命名内存中的图形{p_end}
{p2col:}({mansection G-2 graphrename:查看完整的 PDF 手册条目}){p_end}
{p2colreset}{...}


{marker syntax}{...}
{title:语法}

{p 8 23 2}
{cmdab:gr:aph}
{cmd:rename}
[{it:oldname}]
{it:newname}
[{cmd:,}
{cmd:replace}]

{pstd}
如果未指定 {it:oldname}，则假定为当前图形的名称。


{marker menu}{...}
{title:菜单}

{phang}
{bf:图形 > 管理图形 > 重命名内存中的图形}


{marker description}{...}
{title:描述}

{pstd}
{cmd:graph} {cmd:rename} 更改存储在内存中的图形的名称。


{marker linkspdf}{...}
{title:PDF 文档链接}

        {mansection G-2 graphrenameQuickstart:快速开始}

        {mansection G-2 graphrenameRemarksandexamples:备注和示例}

{pstd}
上述部分未包含在此帮助文件中。


{marker option}{...}
{title:选项}

{phang}
{cmd:replace}
    指定如果 {it:newname} 已存在，可以被替换。


{marker remarks}{...}
{title:备注}

{pstd}
有关图形操作命令的介绍，请参见 {manhelp graph_manipulation G-2:图形操作}。

{pstd}
{cmd:graph} {cmd:rename} 最常用于重命名当前图形——即当前在图形窗口中显示的图形——以创建用于 {cmd:graph} {cmd:combine} 的部分：

	{cmd:. graph} ...{cmd:,} ...

	{cmd:. graph rename p1}

	{cmd:. graph} ...{cmd:,} ...

	{cmd:. graph rename p2}

	{cmd:. graph combine p1 p2,} ...

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <graph_rename.sthlp>}