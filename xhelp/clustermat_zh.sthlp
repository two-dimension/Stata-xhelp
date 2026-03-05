{smcl}
{* *! version 1.1.7  19oct2017}{...}
{vieweralsosee "[MV] clustermat" "mansection MV clustermat"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[MV] cluster" "help cluster_zh"}{...}
{vieweralsosee "[MV] cluster programming subroutines" "help cluster_subroutines_zh"}{...}
{vieweralsosee "[MV] cluster programming utilities" "help cluster_programming_zh"}{...}
{viewerjumpto "Syntax" "clustermat_zh##syntax"}{...}
{viewerjumpto "Description" "clustermat_zh##description"}{...}
{viewerjumpto "Links to PDF documentation" "clustermat_zh##linkspdf"}{...}
{viewerjumpto "Examples" "clustermat_zh##examples"}
{help clustermat:English Version}
{hline}{...}
{p2colset 1 20 22 2}{...}
{p2col:{bf:[MV] clustermat} {hline 2}}clustermat 命令简介
{p_end}
{p2col:}({mansection MV clustermat:查看完整 PDF 手册条目}){p_end}
{p2colreset}{...}


{marker syntax}{...}
{title:语法}

{p 8 19 2}
{cmd:clustermat} {it:linkage} {it:matname}  ...

包含帮助 clus_linkage
    参见 {manhelp cluster_linkage MV:cluster linkage}。

{pstd}
{cmd:clustermat stop} 的语法与 {cmd:cluster stop} 相似；参见 {manhelp cluster_stop MV:cluster stop}。对于其余的后聚类子命令和用户工具，您可以指定 {cmd:cluster} 或 {cmd:clustermat} -- 这两者没有区别。


{marker description}{...}
{title:描述}

{pstd}
{cmd:clustermat} 对不相似性矩阵 {it:matname} 执行层次聚类分析。 {cmd:clustermat} 是 {cmd:cluster} 命令集的一部分；参见 {manhelp cluster MV}。所有 Stata 层次聚类方法均适用于 {cmd:clustermat}。分区聚类方法（{cmd:kmeans} 和 {cmd:kmedians}）不被允许，因为它们需要数据。

{pstd}
有关所有 {cmd:cluster} 和 {cmd:clustermat} 命令的列表，请参见 {manhelp cluster MV}。{cmd:cluster dendrogram} 命令 ({manhelp cluster_dendrogram MV:cluster dendrogram}) 将显示生成的树状图，{cmd:clustermat stop} 命令（参见 {manhelp clustermat_stop MV:clustermat stop}）将帮助确定组的数量，而 {cmd:cluster generate} 命令（参见 {manhelp cluster_generate MV:cluster generate}）将生成分组变量。其他有用的 {cmd:cluster} 子命令包括 {cmd:notes}、{cmd:dir}、{cmd:list}、{cmd:drop}、{cmd:use}、{cmd:rename} 和 {cmd:renamevar}；参见 {manhelp cluster_notes MV:cluster notes} 和 {manhelp cluster_utility MV:cluster utility}。


{marker linkspdf}{...}
{title:PDF 文档链接}

        {mansection MV clustermatRemarksandexamples:备注和示例}

{pstd}
上述部分不包括在此帮助文件中。


{marker examples}{...}
{title:示例}

{pstd}设置{p_end}
{phang2}{cmd:. webuse wclub}{p_end}
{phang2}{cmd:. matrix dissimilarity clubD = , variables Jaccard}
          {cmd:dissim(oneminus)}

{pstd}检查不相似性矩阵的一部分{p_end}
{phang2}{cmd:. matlist clubD[1..5, 1..5]}

{pstd}进行单链接层次聚类，清除内存中的数据集{p_end}
{phang2}{cmd:. clustermat singlelinkage clubD, name(singlink) clear}{p_end}
{phang2}{cmd:. cluster dendrogram singlink}

{pstd}执行沃德法层次聚类，添加到内存中的结果{p_end}
{phang2}{cmd:. clustermat wardslinkage clubD, name(wardslink) add}{p_end}
{phang2}{cmd:. cluster dendrogram wardslink}{p_end}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <clustermat.sthlp>}