{smcl}
{* *! version 1.1.9  19oct2017}{...}
{viewerdialog "cluster kmeans" "dialog cluster_kmeans"}{...}
{viewerdialog "cluster kmedians" "dialog cluster_kmedians"}{...}
{vieweralsosee "[MV] cluster kmeans 和 kmedians" "mansection MV clusterkmeansandkmedians"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[MV] cluster notes" "help cluster_notes_zh"}{...}
{vieweralsosee "[MV] cluster stop" "help cluster_stop_zh"}{...}
{vieweralsosee "[MV] cluster utility" "help cluster_utility_zh"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[MV] cluster" "help cluster_zh"}{...}
{vieweralsosee "[MV] clustermat" "help clustermat_zh"}{...}
{viewerjumpto "语法" "cluster kmeans##syntax"}{...}
{viewerjumpto "菜单" "cluster kmeans##menu"}{...}
{viewerjumpto "描述" "cluster kmeans##description"}{...}
{viewerjumpto "PDF 文档链接" "cluster_kmeans_zh##linkspdf"}{...}
{viewerjumpto "选项" "cluster kmeans##options"}{...}
{viewerjumpto "示例" "cluster kmeans##examples"}
{help cluster_kmeans:English Version}
{hline}{...}
{p2colset 1 37 39 2}{...}
{p2col:{bf:[MV] cluster kmeans 和 kmedians} {hline 2}}Kmeans 和 kmedians
	聚类分析{p_end}
{p2col:}({mansection MV clusterkmeansandkmedians:查看完整的 PDF 手册条目}){p_end}
{p2colreset}{...}


{marker syntax}{...}
{title:语法}

    Kmeans 聚类分析

INCLUDE help cluster_kmeans_syntax

    Kmedians 聚类分析

INCLUDE help cluster_kmedians_syntax

INCLUDE help cluster_kmeans_optstab


{marker menu}{...}
{title:菜单}

    {title:cluster kmeans}

{phang2}
{bf:统计 > 多元分析 > 聚类分析 > 聚类数据 >}
      {bf:Kmeans}

    {title:cluster kmedians}

{phang2}
{bf:统计 > 多元分析 > 聚类分析 > 聚类数据 >}
       {bf:Kmedians}


{marker description}{...}
{title:描述}

{pstd}
{cmd:cluster kmeans} 和 {cmd:cluster kmedians} 分别执行 kmeans 和 kmedians
划分聚类分析。
请参见 {manhelp cluster MV} 以获取 {cmd:cluster} 命令的列表。


{marker linkspdf}{...}
{title:PDF 文档链接}

        {mansection MV clusterkmeansandkmediansQuickstart:快速开始}

        {mansection MV clusterkmeansandkmediansRemarksandexamples:备注和示例}

        {mansection MV clusterkmeansandkmediansMethodsandformulas:方法和公式}

{pstd}
上述部分未包含在此帮助文件中。


{marker options}{...}
{title:选项}

{dlgtab:主}

{phang}
{opt k(#)}
是必需的，表示要通过聚类分析形成的 {it:#} 组。

{phang}
{opt measure(measure)}
指定相似性或不相似性度量。
默认值为 {cmd:measure(L2)}，即欧几里得距离。此选项不区分大小写。有关支持的度量的详细描述，请参见 {manhelpi measure_option MV}。

{phang}
{opt name(clname)}
指定要附加到生成的聚类分析的名称。如果未指定 {cmd:name()}，Stata 将找到一个可用的聚类名称，显示供您参考，并将该名称附加到您的聚类分析中。

{dlgtab:选项}

{marker start()}{...}
{phang}
{opt start(start_option)}
指示 {it:k} 初始组中心应如何获得。可用的 {it:start_option}s 包括

{phang2}
{opt kr:andom}[{cmd:(}{it:seed#}{cmd:)}],
默认为指定随机选择 {it:k} 个独特观测值，从要聚类的观测值中作为 {it:k} 组的起始中心。可选地，可以指定一个随机数种子，以便在选择 {it:k} 个随机观测值之前应用命令 {cmd:set seed} {it:seed#}（参见 {manhelp set_seed R:set seed}）。

{phang2}
{opt f:irstk}[{cmd:,} {opt ex:clude}]
指定利用要聚类的前 {it:k} 个观测值作为 {it:k} 组的起始中心。使用 {cmd:exclude} 选项时，这前 {it:k} 个观测值不包含在要聚类的观测值中。

{phang2}
{opt l:astk}[{cmd:,} {opt ex:clude}]
指定利用要聚类的最后 {it:k} 个观测值作为 {it:k} 组的起始中心。使用 {cmd:exclude} 选项时，这最后 {it:k} 个观测值也不包含在要聚类的观测值中。

{phang2}
{opt r:andom}[{cmd:(}{it:seed#}{cmd:)}]
指定生成 {it:k} 个随机初始组中心。这些值是从数据范围内的均匀分布中随机选择的。可选地，可以指定一个随机数种子，以便在生成 {it:k} 个组中心之前应用命令 {cmd:set seed} {it:seed#}（参见 {manhelp set_seed R:set seed}）。

{phang2}
{opt pr:andom}[{cmd:(}{it:seed#}{cmd:)}]
指定在要聚类的观测值中随机形成 {it:k} 个划分。这些由此划分定义的 {it:k} 组的组均值或中位数将用作起始组中心。可选地，可以指定一个随机数种子，以便在选择 {it:k} 个划分之前应用命令 {cmd:set seed} {it:seed#}（参见 {manhelp set_seed R:set seed}）。

{phang2}
{opt everyk:th}
指定通过将观测值 1、1+{it:k}、1+2{it:k}，… 分配给第一组；将观测值 2、2+{it:k}、2+2{it:k}，… 分配给第二组；依此类推，形成 {it:k} 组。将使用这些 {it:k} 组的组均值或中位数作为起始组中心。

{phang2}
{opt seg:ments}
指定从数据中形成 {it:k} 个几乎相等的划分。大约将前 {hi:N}/{it:k} 个观测值分配给第一组，第二 {hi:N}/{it:k} 个观测值分配给第二组，依此类推。将使用这些 {it:k} 组的组均值或中位数作为起始组中心。

{phang2}
{opth g:roup(varname)}
提供一个初始分组变量 {it:varname}，定义要聚类的观测值之间的 {it:k} 组。将使用这些 {it:k} 组的组均值或中位数作为起始组中心。

{phang}
{opt keepcenters}
指定从生成的 {it:k} 组中产生的组均值或中位数将附加到数据中。

{dlgtab:高级}

{phang}
{opth generate:(varlist:groupvar)}
提供将由 {cmd:cluster kmeans} 或 {cmd:cluster kmedians} 创建的分组变量的名称。默认情况下，这将是 {cmd:name()} 中指定的名称。

{phang}
{opt iterate(#)}
指定在 kmeans 或 kmedians 聚类算法中允许的最大迭代次数。默认值为 {cmd:iterate(10000)}。


{marker examples}{...}
{title:示例}

{pstd}设置{p_end}
{phang2}{cmd:. webuse labtech}

{pstd}执行 kmeans 聚类分析，创建八个组{p_end}
{phang2}{cmd:. cluster kmeans x1 x2 x3 x4, k(8)}

{pstd}与上面相同，但使用绝对值距离而不是欧几里得距离，将聚类分析命名为 {cmd:k8abs}{p_end}
{phang2}{cmd:. cluster kmeans x1 x2 x3 x4, k(8) measure(L1) name(k8abs)}

{pstd}执行 kmedians 聚类分析，使用 Canberra 距离度量创建六个组{p_end}
{phang2}{cmd:. cluster kmedians x1 x2 x3 x4, k(6) measure(Canberra)}

{pstd}创建六个组，使用数据集中的前 6 个观测值作为起始中心{p_end}
{phang2}{cmd:. cluster kmedians x1 x2 x3 x4, k(6) start(firstk)}

{pstd}与上面相同，但不包括前 6 个观测值在聚类分析中{p_end}
{phang2}{cmd:. cluster kmedians x1 x2 x3 x4, k(6) start(firstk, exclude)}
{p_end}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <cluster_kmeans.sthlp>}