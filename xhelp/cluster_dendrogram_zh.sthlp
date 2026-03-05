{smcl}
{* *! version 1.2.14  19oct2017}{...}
{viewerdialog "cluster dendrogram" "dialog cluster_dendrogram"}{...}
{vieweralsosee "[MV] cluster dendrogram" "mansection MV clusterdendrogram"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[MV] cluster" "help cluster_zh"}{...}
{vieweralsosee "[MV] clustermat" "help clustermat_zh"}{...}
{viewerjumpto "Syntax" "cluster dendrogram##syntax"}{...}
{viewerjumpto "Menu" "cluster dendrogram##menu"}{...}
{viewerjumpto "Description" "cluster dendrogram##description"}{...}
{viewerjumpto "Links to PDF documentation" "cluster_dendrogram_zh##linkspdf"}{...}
{viewerjumpto "Options" "cluster dendrogram##options"}{...}
{viewerjumpto "Examples" "cluster dendrogram##examples"}
{help cluster_dendrogram:English Version}
{hline}{...}
{p2colset 1 28 30 2}{...}
{p2col:{bf:[MV] cluster dendrogram} {hline 2}}用于层次聚类分析的树状图{p_end}
{p2col:}({mansection MV clusterdendrogram:查看完整的 PDF 手册条目}){p_end}


{marker syntax}{...}
{title:语法}

包含帮助 cluster_dendro_optstab


{marker menu}{...}
{title:菜单}

{phang}
{bf:统计 > 多元分析 > 聚类分析 > 聚类后 >}
        {bf:树状图}


{marker description}{...}
{title:描述}

{pstd}
{cmd:cluster dendrogram} 生成树状图（也称聚类树）用于层次聚类。有关可用的 {cmd:cluster} 命令的列表，请参见 {manhelp cluster MV}。

{pstd}
树状图以图形方式展示哪些观察值在不同的（不）相似性水平下聚在一起。在树状图的底部，每个观察值被认为是其自身的聚类。每个观察的垂直线向上延伸，在不同的（不）相似性值下，这些线通过水平线连接到其他观察值的线。观察值继续合并，直到在树状图的顶部，所有观察值聚在一起。

{pstd}
垂直线的高度和（不）相似性轴的范围提供了有关聚类强度的视觉线索。较长的垂直线表示组之间的更明显的分离。树状图顶部的长垂直线表明这些线所代表的组彼此分隔良好。较短的线表示组之间的分离不那么明显。


{marker linkspdf}{...}
{title:链接到 PDF 文档}

        {mansection MV clusterdendrogramQuickstart:快速开始}

        {mansection MV clusterdendrogramRemarksandexamples:备注和示例}

{pstd}
上述部分未包含在此帮助文件中。


{marker options}{...}
{title:选项}

{dlgtab:主要}

{phang}
{opt quick} 切换到另一种树状图样式，其中垂直线直接从观察值向上延伸，而不是在树状图层次中每次合并观察值后重新居中。某些人更喜欢这种表示方式，而且渲染速度更快。

{phang}
{opth labels(varname)} 指定使用 {it:varname} 来替代观察值编号作为树状图底部观察值的标签。

{phang}
{opt cutnumber(#)} 仅显示树状图的前 {it:#} 个分支。对于较大的树状图，树的较低级别可能会显得拥挤。使用 {opt cutnumber()}，可以将视图限制在树状图的上部。另请参见 {opt cutvalue()} 选项。

{phang}
{opt cutvalue(#)} 仅显示在 {it:#}（不）相似性度量之上的树状图分支。对于较大的树状图，树的较低级别可能会显得拥挤。使用 {opt cutvalue()}，可以将视图限制在树状图的上部。另请参见 {opt cutnumber()} 选项。

{phang}
{opt showcount} 请求在每个分支下方显示与之相关的观察值数量。 {cmd:showcount} 在使用 {cmd:cutnumber()} 和 {cmd:cutvalue()} 时最为有用，因为否则每个分支的观察值数量为一。当指定此选项时，每个分支的标签将由前缀字符串、分支计数和后缀字符串组合而成。

{phang}
{opth countprefix:(strings:string)} 指定分支计数标签的前缀字符串。默认值为 {cmd:countprefix(n=)}。此选项意味着使用 {cmd:showcount} 选项。

{phang}
{opth countsuffix:(strings:string)} 指定分支计数标签的后缀字符串。默认值为空字符串。此选项意味着使用 {cmd:showcount} 选项。

{phang}
{opt countinline} 请求将分支计数与相应的分支标签放在同一行。默认情况下，分支计数放在分支标签下方。此选项意味着使用 {cmd:showcount} 选项。

{phang}
{opt vertical} 和 {opt horizontal} 指定在绘图之前是否交换 {it:x} 和 {it:y} 坐标 -- {opt vertical}（默认）不交换坐标，而 {opt horizontal} 会交换。

{dlgtab:绘图}

{phang}
{it:line_options} 影响线的呈现；请参见 {manhelpi line_options G-3}。

{dlgtab:添加图形}

{phang}
{opt addplot(plot)} 允许向图中添加更多的 {cmd:graph} {cmd:twoway} 图形；请参见 {manhelpi addplot_option G-3}。

{dlgtab:Y 轴, X 轴, 标题, 图例, 整体}

{phang}
{it:twoway_options} 是 {manhelpi twoway_options G-3} 中记录的任何选项，不包括 {opt by()}。这些选项包括图形标题（见 {manhelpi title_options G-3}）和保存图形到磁盘的选项（见 {manhelpi saving_option G-3}）。


{marker examples}{...}
{title:示例}

{pstd}设置{p_end}
{phang2}{cmd:. webuse labtech}{p_end}
{phang2}{cmd:. cluster completelinkage x1 x2 x3 x4, name(L2clnk)}{p_end}
{phang2}{cmd:. cluster generate g3 = group(3)}{p_end}

{pstd}绘制树状图{p_end}
{phang2}{cmd:. cluster dendrogram L2clnk, horizontal labels(labt)}{p_end}
{phang2}{cmd:. cluster dendrogram L2clnk, labels(labt) quick}{p_end}

{pstd}树是树状图的同义词；仅显示顶部的 5 个分支{p_end}
{phang2}{cmd:. cluster tree if g3==3, showcount}{p_end}

{pstd}仅显示不相似度大于 75.3 的分支{p_end}
{phang2}{cmd:. cluster dendrogram, cutvalue(75.3)}{p_end}
{phang2}{cmd:. cluster tree, cutvalue(75.3) showcount countinline}{p_end}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <cluster_dendrogram.sthlp>}