{smcl}
{* *! version 1.1.6  19oct2017}{...}
{viewerdialog "graph copy" "dialog graph_copy"}{...}
{vieweralsosee "[G-2] graph copy" "mansection G-2 graphcopy"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[G-2] graph manipulation" "help graph_manipulation_zh"}{...}
{vieweralsosee "[G-2] graph rename" "help graph_rename_zh"}{...}
{viewerjumpto "Syntax" "graph_copy_zh##syntax"}{...}
{viewerjumpto "Menu" "graph_copy_zh##menu"}{...}
{viewerjumpto "Description" "graph_copy_zh##description"}{...}
{viewerjumpto "Links to PDF documentation" "graph_copy_zh##linkspdf"}{...}
{viewerjumpto "Option" "graph_copy_zh##option"}{...}
{viewerjumpto "Remarks" "graph_copy_zh##remarks"}
{help graph_copy:English Version}
{hline}{...}
{p2colset 1 21 23 2}{...}
{p2col:{bf:[G-2] graph copy} {hline 2}}复制内存中的图形{p_end}
{p2col:}({mansection G-2 graphcopy:查看完整PDF手册条目}){p_end}
{p2colreset}{...}


{marker syntax}{...}
{title:语法}

{p 8 23 2}
{cmdab:gr:aph}
{cmd:copy}
[{it:oldname}]
{it:newname}
[{cmd:,}
{cmd:replace}]

{pstd}
如果未指定 {it:oldname}，则假定当前图形的名称。

{marker menu}{...}
{title:菜单}

{phang}
{bf:图形 > 管理图形 > 复制内存中的图形}


{marker description}{...}
{title:描述}

{pstd}
{cmd:graph} {cmd:copy} 在内存中以新名称复制已存储的图形。


{marker linkspdf}{...}
{title:PDF文档链接}

        {mansection G-2 graphcopyQuickstart:快速入门}

        {mansection G-2 graphcopyRemarksandexamples:相关说明及示例}

{pstd}
上述部分不包括在此帮助文件中。


{marker option}{...}
{title:选项}

{phang}
{cmd:replace}
    指定如果 {it:newname} 已存在，可以替换它。


{marker remarks}{...}
{title:备注}

{pstd}
有关图形操作命令的介绍，请参见 {manhelp graph_manipulation G-2:图形操作}。

{pstd}
{cmd:graph} {cmd:copy} 很少使用。
也许您在图形窗口中显示了一个图形（称为当前图形），您希望使用 {cmd:graph} {cmd:display} 命令尝试更改其纵横比或方案。在开始实验之前，您可以复制原始图形：

	{cmd:. graph copy backup}

	{cmd:. graph display} ...

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <graph_copy.sthlp>}