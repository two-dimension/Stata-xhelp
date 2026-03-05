{smcl}
{* *! version 1.1.11  19oct2017}{...}
{viewerdialog "cluster single" "dialog cluster_singlelinkage"}{...}
{viewerdialog "cluster average" "dialog cluster_averagelinkage"}{...}
{viewerdialog "cluster complete" "dialog cluster_completelinkage"}{...}
{viewerdialog "cluster wards" "dialog cluster_wardslinkage"}{...}
{viewerdialog "cluster waverage" "dialog cluster_waveragelinkage"}{...}
{viewerdialog "cluster median" "dialog cluster_medianlinkage"}{...}
{viewerdialog "cluster centroid" "dialog cluster_centroidlinkage"}{...}
{viewerdialog "" "--"}{...}
{viewerdialog "clustermat single" "dialog clustermat_singlelinkage"}{...}
{viewerdialog "clustermat average" "dialog clustermat_averagelinkage"}{...}
{viewerdialog "clustermat complete" "dialog clustermat_completelinkage"}{...}
{viewerdialog "clustermat wards" "dialog clustermat_wardslinkage"}{...}
{viewerdialog "clustermat waverage" "dialog clustermat_waveragelinkage"}{...}
{viewerdialog "clustermat median" "dialog clustermat_medianlinkage"}{...}
{viewerdialog "clustermat centroid" "dialog clustermat_centroidlinkage"}{...}
{vieweralsosee "[MV] cluster linkage" "mansection MV clusterlinkage"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[MV] cluster dendrogram" "help cluster_dendrogram_zh"}{...}
{vieweralsosee "[MV] cluster generate" "help cluster_generate_zh"}{...}
{vieweralsosee "[MV] cluster notes" "help cluster_notes_zh"}{...}
{vieweralsosee "[MV] cluster stop" "help cluster_stop_zh"}{...}
{vieweralsosee "[MV] cluster utility" "help cluster_utility_zh"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[MV] cluster" "help cluster_zh"}{...}
{vieweralsosee "[MV] clustermat" "help clustermat_zh"}{...}
{viewerjumpto "Syntax" "cluster linkage##syntax"}{...}
{viewerjumpto "Menu" "cluster linkage##menu"}{...}
{viewerjumpto "Description" "cluster linkage##description"}{...}
{viewerjumpto "Links to PDF documentation" "cluster_linkage_zh##linkspdf"}{...}
{viewerjumpto "Options for cluster linkage commands" "cluster linkage##options_cluster"}{...}
{viewerjumpto "Options for clustermat linkage commands" "cluster linkage##options_clustermat"}{...}
{viewerjumpto "Examples" "cluster linkage##examples"}
{help cluster_linkage:English Version}
{hline}{...}
{p2colset 1 25 27 2}{...}
{p2col:{bf:[MV] cluster linkage} {hline 2}}层次聚类分析{p_end}
{p2col:}({mansection MV clusterlinkage:查看完整PDF手册条目}){p_end}
{p2colreset}{...}


{marker syntax}{...}
{title:语法}

{pstd}
数据的聚类分析

{p 8 33 2}
{cmd:cluster} {it:linkage} [{varlist}] {ifin}
[{cmd:,} {it:cluster_options}]


{pstd}
不相似度矩阵的聚类分析

{p 8 33 2}
{cmd:clustermat} {it:linkage}{space 2}{it:matname}{space 2}{ifin}
[{cmd:,} {it:clustermat_options}]


INCLUDE help clus_linkage

INCLUDE help cluster_hier_optstab

INCLUDE help clustermat_hier_optstab


{marker menu}{...}
{title:菜单}

    {title:cluster singlelinkage}

{phang2}
{bf:统计 > 多变量分析 > 聚类分析 > 聚类数据 >}
      {bf:单链接法}

    {title:cluster averagelinkage}

{phang2}
{bf:统计 > 多变量分析 > 聚类分析 > 聚类数据 >}
       {bf:平均链接法}

    {title:cluster completelinkage}

{phang2}
{bf:统计 > 多变量分析 > 聚类分析 > 聚类数据 >}
       {bf:完整链接法}

    {title:cluster waveragelinkage}

{phang2}
{bf:统计 > 多变量分析 > 聚类分析 > 聚类数据 >}
        {bf:加权平均链接法}

    {title:cluster medianlinkage}

{phang2}
{bf:统计 > 多变量分析 > 聚类分析 > 聚类数据 >}
        {bf:中位数链接法}

    {title:cluster centroidlinkage}

{phang2}
{bf:统计 > 多变量分析 > 聚类分析 > 聚类数据 >}
       {bf:中心链接法}

    {title:cluster wardslinkage}

{phang2}
{bf:统计 > 多变量分析 > 聚类分析 > 聚类数据 >}
        {bf:Ward's链接法}


{marker description}{...}
{title:描述}

{pstd}
{cmd:cluster} 和 {cmd:clustermat}，结合指定的链接方法，执行层次聚合聚类分析。提供以下常见链接方法：单链接法、完整链接法、平均链接法、Ward 方法、中心、 median 和加权平均。


{marker linkspdf}{...}
{title:PDF文档链接}

        {mansection MV clusterlinkageQuickstart:快速入门}

        {mansection MV clusterlinkageRemarksandexamples:备注和示例}

        {mansection MV clusterlinkageMethodsandformulas:方法和公式}

{pstd}
上述部分未包含在此帮助文件中。


{marker options_cluster}{...}
{title:聚类链接命令选项}

{dlgtab:主要}

{phang}
{opt measure(measure)}
指定相似性或不相似性度量。
{cmd:averagelinkage}、{cmd:completelinkage}、{cmd:singlelinkage} 和 {cmd:waveragelinkage} 的默认值为 {cmd:L2}（同义词 {opt Euc:lidean}）。{cmd:centroidlinkage}、{cmd:medianlinkage} 和 {cmd:wardslinkage} 的默认值为 {cmd:L2squared}。此选项不区分大小写。有关这些度量的讨论，请参见 {manhelpi measure_option MV}。

{pmore}
一些作者建议仅在中心、median和Ward链接法中使用 {cmd:L2squared} {it:measure}。请参见
{it:{mansection MV clusterRemarksandexamplesDissimilaritytransformationsandtheLanceandWilliamsformula:不相似性变换和Lance-Williams公式}}
和
{it:{mansection MV clusterRemarksandexamplesWarningconcerningsimilarityordissimilaritychoice:关于相似性或不相似性选择的警告}}
在 {bf:[MV] cluster} 中获取详细信息。

{phang}
{opt name(clname)}
指定附加于结果聚类分析的名称。如果未指定 {cmd:name()}，Stata 会找到一个可用的聚类名称，为您的参考进行显示，并将该名称附加到您的聚类分析中。

{dlgtab:高级}

{phang}
{opt generate(stub)}
提供由 {cmd:cluster} {it:linkage} 创建的变量名称的前缀。默认情况下，变量名称前缀将为 {cmd:name()} 指定的名称。会创建并附加有后缀 {hi:_id}、{hi:_ord} 和 {hi:_hgt} 的三个变量到聚类分析结果中。用户通常不需要直接访问这些变量。

{pmore}
中心链接法和中位数链接法可能会产生反转或交叉；有关详细信息，请参见 {manlink MV cluster}。当发生反转时，{cmd:cluster centroidlinkage} 和 {cmd:cluster medianlinkage} 还会创建一个后缀为 {hi:_pht} 的第四个变量。它是一个伪高度变量，用于某些聚类后命令正确解释 {hi:_hgt} 变量。


{marker options_clustermat}{...}
{title:clustermat链接命令选项}

INCLUDE help clustermat_hier_opts


{marker examples}{...}
{title:示例}

    {hline}
{phang}{cmd:. webuse labtech}{p_end}
{phang}{cmd:. cluster singlelinkage x1 x2 x3 x4, name(L2slnk)}{p_end}
{phang}{cmd:. cluster dendrogram L2slnk, xlabel(, angle(90) labsize(*.75))}
{p_end}
    {hline}
{phang}{cmd:. webuse homework, clear}{p_end}
{phang}{cmd:. cluster averagelinkage a1-a60, measure(matching) name(alink)}{p_end}
{phang}{cmd:. cluster wardslinkage a1-a60, measure(matching) name(wardlink)}{p_end}
{phang}{cmd:. cluster medianlinkage a*, measure(L(1.5))}{p_end}
    {hline}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <cluster_linkage.sthlp>}