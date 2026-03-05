{smcl}
{* *! version 1.0.3  19oct2017}{...}
{vieweralsosee "[MV] cluster programming subroutines" "mansection MV clusterprogrammingsubroutines"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[MV] cluster" "help cluster_zh"}{...}
{vieweralsosee "[MV] clustermat" "help clustermat_zh"}{...}
{vieweralsosee "[MV] cluster programming utilities" "help cluster_programming_zh"}{...}
{viewerjumpto "Description" "cluster subroutines##description"}{...}
{viewerjumpto "Links to PDF documentation" "cluster_subroutines_zh##linkspdf"}{...}
{viewerjumpto "Remarks" "cluster subroutines##remarks"}
{help cluster_subroutines:English Version}
{hline}{...}
{p2colset 1 41 43 2}{...}
{p2col:{bf:[MV] cluster programming subroutines} {hline 2}}添加聚类分析例程{p_end}
{p2col:}({mansection MV clusterprogrammingsubroutines:查看完整的PDF手册条目}){p_end}
{p2colreset}{...}


{marker description}{...}
{title:描述}

{pstd}
本条目描述如何扩展 Stata 的 {cmd:cluster} 命令；请参见 {manhelp cluster MV}。程序员可以向 {cmd:cluster} 添加子命令，向 {cmd:cluster} {cmd:generate} 添加函数（请参见 {manhelp cluster_generate MV:cluster generate}），向 {cmd:cluster} {cmd:stop} 添加停止规则（请参见 {manhelp cluster_stop MV:cluster stop}），以及设置在调用 {cmd:cluster} {cmd:dendrogram} 时执行的替代命令（请参见 {manhelp cluster_dendrogram MV:cluster dendrogram}）。

{pstd}
{cmd:cluster} 命令还提供了程序员的实用工具；请参见 {manhelp cluster_programming MV:cluster programming utilities} 以了解更多信息。


{marker linkspdf}{...}
{title:PDF文档链接}

        {mansection MV clusterprogrammingsubroutinesRemarksandexamples:备注和示例}

{pstd}
上述部分不包含在此帮助文件中。


{marker remarks}{...}
{title:备注}

{p 4 4 2}
通过创建名称为 {hi:cluster_}{it:subcmdname} 的 Stata 程序来添加聚类。例如，如果我想将子命令 {cmd:xyz} 添加到 {cmd:cluster}，我将创建 {cmd:cluster_xyz.ado}。用户可以通过以下方式执行我的 {cmd:xyz} 子命令：

{p 8 12 2}{cmd:cluster xyz} {it:...}。

{p 4 4 2}
在 {bind:{cmd:cluster xyz}} 后输入的所有内容将传递给 {cmd:cluster_xyz}。

{p 4 4 2}
程序员可以向 {bind:{cmd:cluster generate}} 命令添加函数。这是通过创建一个名为 {cmd:clusgen_}{it:name} 的命令实现的。例如，如果我想向 {bind:{cmd:cluster generate}} 添加一个名为 {cmd:abc()} 的函数，我将创建 {cmd:clusgen_abc.ado}。用户可以执行：

{p 8 12 2}{cmd:cluster generate} {it:varname} {cmd:= abc(}{it:...}{cmd:)} {it:...}

{p 4 4 2}
在 {bind:{cmd:cluster gen}} 后输入的所有内容将传递给 {cmd:clusgen_abc}。

{p 4 4 2}
新的停止规则可以添加到 {bind:{cmd:cluster stop}} 命令。通过创建一个名为 {cmd:clstop_}{it:name} 的命令来实现。例如，如果我创建了 {cmd:clstop_xyz.ado}，则 {bind:{cmd:cluster stop}} 命令将获得选项 {cmd:rule(xyz)}。

{p 8 12 2}{cmd:cluster stop} [{it:clname}] {cmd:, rule(xyz)} {it:...}

{p 4 4 2}
{cmd:clstop_xyz} 接收用户输入的聚类名称（{it:clname}），如果未指定，则为当前聚类结果的名称，后跟一个逗号和用户输入的所有选项，但不包括 {cmd:rule(xyz)} 选项。

{p 4 4 2}
程序员可以更改 {bind:{cmd:cluster dendrogram}} 命令（别名 {bind:{cmd:cluster tree}}）的行为。这是通过在 {bind:{cmd:cluster set}} 命令中使用 {cmd:other()} 选项实现的，带有 {it:tag} 为 {cmd:treeprogram}，并且 {it:text} 给出用来替代标准 Stata 程序的命令名称以生成树图。例如，如果我创建了一种新的层次聚类分析方法，需要不同的算法来生成树图，则可以使用以下命令：

{p 8 12 2}{cmd:cluster set} {it:clname} {cmd:, other(treeprogram} {it:progname}{cmd:)}

{p 4 4 2}
以设置 {it:progname} 作为调用 {bind:{cmd:cluster dendrogram}} 时要执行的程序。
{p_end}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <cluster_subroutines.sthlp>}