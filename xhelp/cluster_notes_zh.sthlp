{smcl}
{* *! version 1.1.9  22mar2018}{...}
{viewerdialog "cluster notes" "dialog cluster_note"}{...}
{vieweralsosee "[MV] cluster notes" "mansection MV clusternotes"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[MV] cluster programming utilities" "help cluster_programming_zh"}{...}
{vieweralsosee "[MV] cluster utility" "help cluster_utility_zh"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[MV] cluster" "help cluster_zh"}{...}
{vieweralsosee "[MV] clustermat" "help clustermat_zh"}{...}
{vieweralsosee "[D] notes" "help notes_zh"}{...}
{vieweralsosee "[D] save" "help save_zh"}{...}
{viewerjumpto "Syntax" "cluster notes##syntax"}{...}
{viewerjumpto "Menu" "cluster notes##menu"}{...}
{viewerjumpto "Description" "cluster notes##description"}{...}
{viewerjumpto "Links to PDF documentation" "cluster_notes_zh##linkspdf"}{...}
{viewerjumpto "Examples" "cluster notes##examples"}
{help cluster_notes:English Version}
{hline}{...}
{p2colset 1 23 25 2}{...}
{p2col:{bf:[MV] cluster notes} {hline 2}}聚类分析笔记{p_end}
{p2col:}({mansection MV clusternotes:查看完整的 PDF 手册条目}){p_end}
{p2colreset}{...}


{marker syntax}{...}
{title:语法}

INCLUDE help cluster_notes_syntax


{marker menu}{...}
{title:菜单}

{phang}
{bf:统计 > 多元分析 > 聚类分析 > 聚类后 >}
      {bf:聚类分析笔记}


{marker description}{...}
{title:描述}

{pstd}
{cmd:cluster} {cmd:notes} 是一组命令，用于管理先前运行的聚类分析的笔记。您可以附加笔记，这些笔记将成为数据的一部分，并在保存数据时被保存，在使用数据时被检索。 {cmd:cluster} {cmd:notes} 也可用于列出所有定义的聚类分析的笔记或特定聚类分析名称的笔记。

{pstd}
{cmd:cluster notes drop} 允许您删除聚类笔记。


{marker linkspdf}{...}
{title:PDF 文档链接}

        {mansection MV clusternotesRemarksandexamples:备注和示例}

{pstd}
上述部分未包含在此帮助文件中。


{marker examples}{...}
{title:示例}

{phang}{cmd:. cluster notes myclus: 第 9 组看起来很奇怪。请仔细检查。}{p_end}
{phang}{cmd:. cluster notes ageclus: 考虑删除单例组。}{p_end}
{phang}{cmd:. cluster notes}{p_end}
{phang}{cmd:. cluster notes myclus}{p_end}
{phang}{cmd:. cluster notes drop clusxyz in 3 6/8}{p_end}
{phang}{cmd:. cluster notes drop ageclus}{p_end}
{phang}{cmd:. cluster notes}{p_end}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <cluster_notes.sthlp>}