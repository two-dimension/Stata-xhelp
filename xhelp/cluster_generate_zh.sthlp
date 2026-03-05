{smcl}
{* *! version 1.1.10  22mar2018}{...}
{viewerdialog "cluster generate" "dialog cluster_generate"}{...}
{vieweralsosee "[MV] cluster generate" "mansection MV clustergenerate"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[MV] cluster" "help cluster_zh"}{...}
{vieweralsosee "[MV] clustermat" "help clustermat_zh"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[D] egen" "help egen_zh"}{...}
{vieweralsosee "[D] generate" "help generate_zh"}{...}
{viewerjumpto "Syntax" "cluster generate##syntax"}{...}
{viewerjumpto "Menu" "cluster generate##menu"}{...}
{viewerjumpto "Description" "cluster generate##description"}{...}
{viewerjumpto "Links to PDF documentation" "cluster_generate_zh##linkspdf"}{...}
{viewerjumpto "Options" "cluster generate##options"}{...}
{viewerjumpto "Examples" "cluster generate##examples"}
{help cluster_generate:English Version}
{hline}{...}
{p2colset 1 26 28 2}{...}
{p2col:{bf:[MV] cluster generate} {hline 2}}从聚类分析生成分组变量{p_end}
{p2col:}({mansection MV clustergenerate:查看完整的 PDF 手册条目}){p_end}
{p2colreset}{...}


{marker syntax}{...}
{title:语法}

包含 help cluster_generate_optstab


{marker menu}{...}
{title:菜单}

{phang}
{bf:统计 > 多变量分析 > 聚类分析 > 后聚类 >}
      {bf:聚类分析的摘要变量}


{marker description}{...}
{title:描述}

{pstd}
{cmd:cluster} {cmd:generate} 从层次聚类分析创建摘要或分组变量；结果取决于函数的具体操作。可以创建一个包含基于请求的组数或者在指定的（不）相似性值上切割树状图的组号的单一变量。如果指定了一系列组大小，可以创建一组新变量。

{pstd}
用户可以添加更多 {cmd:cluster} {cmd:generate} 函数；请参见 {manhelp cluster_programming MV:聚类编程工具}。


{marker linkspdf}{...}
{title:PDF 文档链接}

        {mansection MV clustergenerateQuickstart:快速入门}

        {mansection MV clustergenerateRemarksandexamples:备注和示例}

{pstd}
上述部分不包括在此帮助文件中。


{marker options}{...}
{title:选项}

{phang}
{cmd:name(}{it:clname}{cmd:)} 指定用于生成新变量的聚类分析的名称。默认值为最后进行的聚类分析的名称，可以使用 {cmd:cluster use} 命令重置；请参见 {manhelp cluster_utility MV:聚类工具}。

{phang}
{cmd:ties(}{cmd:error} | {cmd:skip} | {cmd:fewer} | {cmd:more}{cmd:)} 表示处理 {cmd:groups()} 函数中重复值的方式。如果在某个（不）相似性值生成多个组，则发生层次聚类分析的重复。如果您可以唯一地生成两个、三个和四个组，但下一个可能的分组由于重复生成八个组。

{pmore}
{cmd:ties(error)}，默认情况下，生成错误消息，不生成请求的变量。

{pmore}
{cmd:ties(skip)} 指定忽略有问题的请求。没有生成错误消息，仅满足生成唯一分组的请求。如果在 {cmd:groups()} 函数中指定了多个值， {cmd:ties(skip)} 将处理那些生成唯一分组的请求，并忽略其余请求。

{pmore}
{cmd:ties(fewer)} 生成小于或等于请求的最大数量的组的结果。在上述例子中，使用 {cmd:groups(6)} 和 {cmd:ties(fewer)}，您将得到使用 {cmd:groups(4)} 产生的相同结果。

{pmore}
{cmd:ties(more)} 生成大于或等于请求的最小数量的组的结果。在上述例子中，使用 {cmd:groups(6)} 和 {cmd:ties(more)}，您将得到使用 {cmd:groups(8)} 产生的相同结果。


{marker examples}{...}
{title:示例}

{pstd}设置{p_end}
{phang2}{cmd:. webuse labtech}{p_end}
{phang2}{cmd:. cluster completelinkage x1 x2 x3 x4, name(L2clnk)}

{pstd}为两个组生成分组变量{p_end}
{phang2}{cmd:. cluster generate g2 = groups(2), name(L2clnk)}{p_end}

{pstd}通过在不相似性度量为 227.3 时切割树状图来生成分组变量{p_end}
{phang2}{cmd:. cluster gen g2cut = cut(227.3)}{p_end}

{pstd}生成三到十二个组的分组变量集{p_end}
{phang2}{cmd:. cluster gen gp = gr(3/12), name(L2clnk)}{p_end}

{pstd}如果出现重复，则创建多于请求的四个组{p_end}
{phang2}{cmd:. cluster gen more4 = gr(4), ties(more)}{p_end}

{pstd}如果出现重复，则创建少于请求的四个组{p_end}
{phang2}{cmd:. cluster gen less4 = gr(4), ties(fewer)}{p_end}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <cluster_generate.sthlp>}