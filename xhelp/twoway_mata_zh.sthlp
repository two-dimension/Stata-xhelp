{smcl}
{* *! version 1.0.2  04nov2014}{...}
{vieweralsosee "未记录" "help undocumented_zh"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[G-2] 图形 twoway" "help twoway"}{...}
{viewerjumpto "语法" "twoway_mata_zh##syntax"}{...}
{viewerjumpto "描述" "twoway_mata_zh##description"}{...}
{viewerjumpto "备注" "twoway_mata_zh##remarks"}{...}
{viewerjumpto "示例" "twoway_mata_zh##examples"}
{help twoway_mata:English Version}
{hline}{...}
{title:标题}

{p2colset 5 26 28 2}{...}
{p2col :{bf:[G-2] twoway mata} {hline 2}}二元图形的 Mata 矩阵{p_end}
{p2colreset}{...}


{marker syntax}{...}
{title:语法}

{p 8 23 2}
[{cmdab:图:形}]
{cmdab:二:元图}
{it:绘图} [{it:绘图} ...]
{ifin}
[{cmd:,}
{it:{help twoway_options_zh}}]

{pstd}
这里的 {it:绘图} 语法为

{pin}
[{cmd:(}]
{it:绘图类型} {it:mata_matrix_name} [{it:列名}]...{cmd:,} {it:选项}
[{cmd:)}] [{cmd:||}]

{synoptset 20}{...}
{p2col :{it:绘图类型}}描述{p_end}
{p2line}
{p2col :{helpb 散点图}}散点图{p_end}
{p2col :{helpb 线}}折线图{p_end}
{p2col :{help twoway_connected_zh:连接}}连接线图{p_end}

{marker barplots}{...}
{p2col :{help twoway_area_zh:区域}}带阴影的折线图{p_end}
{p2col :{help twoway_bar_zh:条}}条形图{p_end}
{p2col :{help twoway_spike_zh:尖}}尖峰图{p_end}
{p2col :{help twoway_dropline_zh:下沉线}}下沉线图{p_end}
{p2col :{help twoway_dot_zh:点}}点图{p_end}

{marker rangeplots}{...}
{p2col :{help twoway_rarea_zh:区域}}带区域阴影的范围图{p_end}
{p2col :{help twoway_rbar_zh:条形}}带条形的范围图{p_end}
{p2col :{help twoway_rspike_zh:尖峰}}带尖峰的范围图{p_end}
{p2col :{help twoway_rcap_zh:钳制}}带钳制尖峰的范围图{p_end}
{p2col :{help twoway_rcapsym_zh:钳制符号}}带符号钳制尖峰的范围图{p_end}
{p2col :{help twoway_rscatter_zh:散点}}带标记的范围图{p_end}
{p2col :{help twoway_rline_zh:线}}带线的范围图{p_end}
{p2col :{help twoway_rconnected_zh:连接}}带线和标记的范围图{p_end}
{p2line}
{p2colreset}{...}

{pstd}
{it:绘图} 也可以是来自当前数据集的任何绘图数据的语法，如在 {helpb graph twoway} 中所描述。多个 Mata 矩阵图和数据图可以在一个 {cmd:graph twoway} 命令中叠加。

{pstd}
前面的 {cmd:graph} 是可选的。
如果第一个（或唯一）{it:绘图} 是 {cmd:scatter}，则可以省略
{cmd:twoway}，语法为

{p 8 20 2}
{cmdab:散:点} ... [{cmd:,} {it:散点选项}]
[ {cmd:||}
{it:绘图} [{it:绘图} [...]]]

{pstd}
对于 {cmd:line} 同样适用。其他
{it:绘图类型} 必须由 {cmd:twoway} 开头。

{pstd}
无论如何指定命令，
{it:twoway_options}
可以在
{it:散点选项}、{it:线选项} 等中指定，它们将被视为在
{cmd:graph} {cmd:twoway} 命令的 {it:twoway_options} 中指定的选项。


{marker description}{...}
{title:描述}

{pstd}
{cmd:twoway} 是一系列图形，全部使用数字 {it:y} 和
{it:x} 刻度。这些图形的数据通常来自当前数据集，如在 {helpb graph twoway} 中所描述。这里我们记录将 Mata 矩阵的列绘图，就像它们是数据集变量一样，使用相同的 {cmd:twoway} 命令。


{marker remarks}{...}
{title:备注}

{pstd}
备注假设您熟悉 {helpb graph twoway} 以及那里描述的二元图的概念。这里我们仅扩展标准的 {cmd:twoway} 语法，以支持将 Mata 矩阵的列绘制为变量，就像它们是数据集中的变量一样。

{pstd}
这个扩展语法与使用 {helpb getmata:putmata} 或 {help mf_st_store_zh:st_store()} 将 Mata 矩阵放入数据集相比，其优势在于速度和空间。这里记录的语法使来自 Mata 矩阵的数据直接放入图形系统，而不必首先在您的 Stata 数据集中创建变量。这个优势通常只在您有大量观察值的数据集时才重要。

{pstd}
除了将 Mata 矩阵作为数据外，{cmd:twoway} 的语法保持不变。让我们创建两个 Mata 矩阵来演示。

{phang2}{cmd:. mata:  amat = 1,2  \  3,4 \ 4,5 \ 5,6}{p_end}
{phang2}{cmd:. mata:  bmat = .9,1.1,2  \  2.8,3.4,4 \ 3.7,4.5,5 \ 4.6,6,6}

{pstd}
我们通过输入

{phang2}{cmd:. twoway scatter matamatrix(amat)}

来绘制 {cmd:amat} 第一列与其第二列的散点图。

{pstd}
{cmd:amat} 的第一列将是 y 变量，默认情况下标记为 "amat1"。第二列将是 x 变量，默认情况下标记为 "x"。我们可以通过在 {cmd:matamatrix()} 后指定名称列表来更改这两个名称：

{phang2}{cmd:. twoway scatter matamatrix(amat) yvarname xvarname}

{pstd}
当矩阵有超过两列时，假设有 k 列，第 1 到 k-1 列被视为要绘制的 y 变量，而第 k 列是每个要绘制的 x 变量。这与 {cmd:twoway} 处理变量列表的说明是相同的：

{phang2}{cmd:. twoway scatter y1 y2 x}

{pstd}
使用我们的 {cmd:bmat}，输入
    
{phang2}{cmd:. twoway scatter matamatrix(bmat)}

{pstd}
得到两个散点图，一个是 {cmd:bmat} 的第一列，另一个是第二列。

{pstd}
我们可以通过输入

{phang2}{cmd:. twoway scatter matamatrix(bmat) y1 y2}

来重命名这两个图。

{pstd}
我们也可以通过输入

{phang2}{cmd:. twoway scatter matamatrix(bmat) y1 y2 ourx}

来重命名 x 变量。

{pstd}
与其他二元图一样，我们可以叠加 Mata 矩阵的图：

{phang2}{cmd:. twoway scatter matamatrix(amat) || scatter matamatrix(bmat)}

{pstd}
我们可以将 {cmd:bmat} 的前两列视为范围图：

{phang2}{cmd:. twoway scatter matamatrix(amat) || rcap matamatrix(bmat)}

{pstd}
并且我们可以将 Mata 矩阵图与 Stata 变量图混合：

{phang2}{cmd:. sysuse auto}{p_end}
{phang2}{cmd:. twoway scatter matamatrix(amat) || scatter gear_ratio rep78}

{pstd}
这是一个无意义的图，但它显示了语法。

{pstd}
当您的矩阵有很多列时，{cmd:twoway} 要做的事情取决于绘图类型。{cmd:scatter}、{cmd:line} 和 {cmd:connected} 为 k-1 列创建图，其中 k 是矩阵的列数。所有其他绘图类型要求矩阵具有确切数量的所需列—— {cmd:area}、{cmd:bar}、{cmd:spike}、{cmd:dropline} 和 {cmd:dot} 类型需要两列；{cmd:rarea}、{cmd:rbar}、{cmd:rspike}、{cmd:rcap}、{cmd:rcapsym}、{cmd:rline} 和 {cmd:rconnected} 绘图类型需要三列。如果您的 Mata 矩阵有多余的列而您不想图示，使用标准的 Mata 列引用创建一个包含更少列的矩阵：

{phang2}{cmd:mata:  b = a[., 1..3]}

{pstd}
创建 b，包含 a 的前 3 列；

{phang2}{cmd:mata:  b = a[., 5..6]}

{pstd}
创建 b，包含 a 的第 5 列和第 6 列；以及

{phang2}{cmd:mata:  b = a[., (2,7,3)]}

{pstd}
创建 b，包含 a 的第 2 列、第 7 列和第 3 列，其中 a 的第 2 列成为 b 的第 1 列，a 的第 7 列成为 b 的第 2 列，a 的第 3 列成为 b 的第 3 列。


{marker examples}{...}
{title:示例}

{p 4 4 2}
    创建一个名为 {cmd:mymat} 的 Mata 矩阵，具有三列

{p 8 8 2}
    {cmd:mata:  mymat = 1,1.1,2  \  3,3.4,4 \ 4,4.5,5 \ 5,6,6}

{p 4 4 2}
    创建 {cmd:mymat} 中数据的散点图，将第一列视为第一个图的 y 值，将第二列视为第二个图的 y 值，将第三列作为两个图的 x 值

{p 8 8 2}
	{cmd:twoway scatter matamatrix(mymat)}

{p 4 4 2}
    如上，命名前两列（图）为 {cmd:plot1} 和 {cmd:plot2}

{p 8 8 2}
	{cmd:twoway scatter matamatrix(mymat) plot1 plot2}

{p 4 4 2}
    创建 {cmd:mymat} 中数据的范围尖峰图，将第一列视为尖峰的下 y 值，将第二列视为尖峰的上 y 值，并将第三列视为尖峰的 x 值

{p 8 8 2}
	{cmd:twoway rspike matamatrix(mymat)}

{p 4 4 2}
     如上，添加来自当前数据集的变量 {cmd:yvar} 和 {cmd:xvar} 的散点图

{p 8 8 2}
	{cmd:twoway rspike matamatrix(mymat) || scatter yvar xvar}
{p_end}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <twoway_mata.sthlp>}