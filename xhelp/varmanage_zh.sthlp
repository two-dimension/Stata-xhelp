{smcl}
{* *! version 1.0.7  19oct2017}{...}
{viewerdialog "Variables Manager" "stata varmanage"}{...}
{vieweralsosee "[D] varmanage" "mansection D varmanage"}{...}
{vieweralsosee "" "--"}{...}
{findalias asgsmvarman}{...}
{findalias asgsuvarman}{...}
{findalias asgswvarman}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[D] drop" "help drop_zh"}{...}
{vieweralsosee "[D] edit" "help edit_zh"}{...}
{vieweralsosee "[D] format" "help format_zh"}{...}
{vieweralsosee "[D] label" "help label_zh"}{...}
{vieweralsosee "[D] notes" "help notes_zh"}{...}
{vieweralsosee "[D] rename" "help rename_zh"}{...}
{viewerjumpto "Syntax" "varmanage_zh##syntax"}{...}
{viewerjumpto "Menu" "varmanage_zh##menu"}{...}
{viewerjumpto "Description" "varmanage_zh##description"}{...}
{viewerjumpto "Links to PDF documentation" "varmanage_zh##linkspdf"}{...}
{viewerjumpto "Remarks" "varmanage_zh##remarks"}
{help varmanage:English Version}
{hline}{...}
{p2colset 1 18 20 2}{...}
{p2col:{bf:[D] varmanage} {hline 2}}管理变量标签、格式和其他属性{p_end}
{p2col:}({mansection D varmanage:查看完整PDF手册条目}){p_end}
{p2colreset}{...}


{marker syntax}{...}
{title:语法}

{p 8 13 2}
{opt varm:anage}


{marker menu}{...}
{title:菜单}

{phang}
{bf:数据 > 变量管理器}


{marker description}{...}
{title:描述}

{pstd} {cmd:varmanage} 打开变量管理器。变量管理器允许对变量进行排序和过滤，以便一次性设置一个或多个变量的属性。变量属性包括名称、标签、存储类型、格式、值标签和注释。变量管理器还可用于为命令窗口创建 {varlist}。

{marker linkspdf}{...}
{title:PDF文档链接}

        {mansection D varmanageRemarksandexamples:备注和示例}

{pstd}
以上部分不包含在此帮助文件中。


{marker remarks}{...}
{title:备注}

{pstd}
关于 {cmd:varmanage} 的教程讨论可以在《{it:Stata 入门}》手册中找到。
{p_end}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <varmanage.sthlp>}