{smcl}
{* *! version 1.1.11  11may2018}{...}
{viewerdialog corr2data "dialog corr2data"}{...}
{vieweralsosee "[D] corr2data" "mansection D corr2data"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[D] 数据类型" "help data_types_zh"}{...}
{vieweralsosee "[D] drawnorm" "help drawnorm_zh"}{...}
{viewerjumpto "语法" "corr2data_zh##syntax"}{...}
{viewerjumpto "菜单" "corr2data_zh##menu"}{...}
{viewerjumpto "描述" "corr2data_zh##description"}{...}
{viewerjumpto "PDF 文档链接" "corr2data_zh##linkspdf"}{...}
{viewerjumpto "选项" "corr2data_zh##options"}{...}
{viewerjumpto "示例" "corr2data_zh##examples"}
{help corr2data:English Version}
{hline}{...}
{p2colset 1 18 20 2}{...}
{p2col:{bf:[D] corr2data} {hline 2}}创建具有指定相关结构的数据集{p_end}
{p2col:}({mansection D corr2data:查看完整 PDF 手册条目}){p_end}
{p2colreset}{...}


{marker syntax}{...}
{title:语法}

{p 8 18 2}
{cmd:corr2data}
{it:{help varlist_zh:newvarlist}}
[{cmd:,}
{it:选项}]

{synoptset 23 tabbed}{...}
{synopthdr}
{synoptline}
{syntab :主要}
{synopt :{opt clear}}替换当前数据集{p_end}
{synopt :{opt d:ouble}}将变量类型生成为 {opt double}；默认是 {opt float}{p_end}
{synopt :{opt n(#)}}生成 {it:#} 个观察值；默认是当前数量{p_end}
{synopt :{opt sd:s(vector)}}生成变量的标准差{p_end}
{synopt :{opt corr(matrix|vector)}}相关矩阵{p_end}
{synopt :{opt cov(matrix|vector)}}协方差矩阵{p_end}
{synopt :{cmdab:cs:torage(}{cmdab:f:ull)}}将相关/协方差结构存储为对称的 k*k 矩阵{p_end}
{synopt :{cmdab:cs:torage(}{cmdab:l:ower)}}将相关/协方差结构存储为下三角矩阵{p_end}
{synopt :{cmdab:cs:torage(}{cmdab:u:pper)}}将相关/协方差结构存储为上三角矩阵{p_end}
{synopt :{opt forcepsd}}强制协方差/相关矩阵为半正定{p_end}
{synopt :{opt m:eans(vector)}}生成变量的均值；默认是 {cmd:means(0)}{p_end}

{syntab :选项}
{synopt :{opt seed(#)}}随机数生成器的种子{p_end}
{synoptline}
{p2colreset}{...}


{marker menu}{...}
{title:菜单}

{phang}
{bf:数据 > 创建或修改数据 > 其他变量创建命令 >}
     {bf:创建具有指定相关性的 dataset}


{marker description}{...}
{title:描述}

{pstd}
{opt corr2data} 向现有数据集添加具有指定协方差（相关性）结构的新变量，或创建具有指定协方差（相关性）结构的新数据集。允许奇异的协方差（相关性）结构。这样做的目的是让您在仅知道这些汇总统计数据（相关性/协方差和可能的均值）时，能够进行分析，而这些汇总统计数据足以得出结果。例如，这些汇总统计数据足以进行 t 测试、方差分析、主成分分析、回归分析和因子分析。推荐的过程是

      {cmd:. clear}                             (清除内存)
      {cmd:. corr2data} ...{cmd:,} {opt n(#)} {opt cov(...)} ...  (创建人工数据)
      {cmd:. regress} ...                       (适当地使用人工数据)

{pstd}
但是，对于因子分析和主成分分析，命令 {cmd:factormat} 和 {cmd:pcamat} 允许您跳过使用 {cmd:corr2data} 的步骤；请参见 {manhelp factor MV} 和 {manhelp pca MV}。

{pstd}
由 {cmd:corr2data} 创建的数据是人工的；它们不是原始数据，也不是来自具有指定汇总统计的数据的样本。在样本中，汇总统计数据将与总体值不同，并且一个样本与下一个样本也会有所不同。

{pstd}
{cmd:corr2data} 创建的数据集仅适用于一个目的：在唯一知道汇总统计数据且这些汇总统计数据足以进行当前分析时进行分析。人工数据欺骗分析命令以产生所需结果。由于假设分析命令仅为汇总统计数据的函数，它从人工数据中提取汇总统计数据，这些数据与您指定的汇总统计数据相同，然后基于这些统计数据进行计算。

{pstd}
如果您怀疑分析是否仅依赖于指定的汇总统计数据，可以通过使用随机数生成器的不同种子生成不同的人工数据集（请参阅下面的 {helpb corr2data##seed():种子()} 选项）并比较结果，检查它们应在舍入误差范围内相同。


{marker linkspdf}{...}
{title:PDF 文档链接}

        {mansection D corr2dataQuickstart:快速入门}

        {mansection D corr2dataRemarksandexamples:备注和示例}

        {mansection D corr2dataMethodsandformulas:方法和公式}

{pstd}
上面的部分不包括在此帮助文件中。


{marker options}{...}
{title:选项}

{dlgtab:主要}

{phang}
{opt clear} 指明可以替换内存中的数据集，即使当前数据集未保存到磁盘。

{phang}
{opt double} 指明新变量存储为 Stata {opt double}，即 8 字节实数。如果没有指定 {opt double}，变量将存储为 {opt float}，即 4 字节实数。请参见 {manhelp data_types D:数据类型}。

{phang}
{opt n(#)} 指明要生成的观察值数量；默认是当前观察值数量。如果没有指定 {opt n(#)} 或与当前观察值数量相同，{opt corr2data} 将新变量添加到现有数据集；否则，{opt corr2data} 将替换内存中的数据集。

{phang}{opt sds(vector)} 指定生成变量的标准差。 {opt sds()} 不能与 {opt cov()} 一起指定。

{phang}
{opt corr(matrix|vector)} 指定相关矩阵。如果没有指定 {opt corr()} 或 {opt cov()}，默认是正交数据。

{phang}
{opt cov(matrix|vector)} 指定协方差矩阵。如果没有指定 {opt corr()} 或 {opt cov()}，默认是正交数据。

{phang}
{cmd:cstorage(full}|{cmd:lower}|{cmd:upper)}
指定 {opt corr()} 或 {opt cov()} 中协方差或相关结构的存储模式。支持以下存储模式：

{pmore}
{opt full} 指定相关或协方差结构存储为对称的 k*k 矩阵。

{pmore}
{opt lower} 指定相关或协方差结构存储为下三角矩阵。对于 k 个变量，矩阵应包含 k(k+1)/2 个元素，顺序如下：

{p 16 20 2}
C(11) C(21) C(22) C(31) C(32) C(33) ... C(k1) C(k2) ... C(kk)

{pmore}
{opt upper} 指定相关或协方差结构存储为上三角矩阵。对于 k 个变量，矩阵应包含 k(k+1)/2 个元素，顺序如下：

{p 16 20 2}
C(11) C(12) (C13) ... C(1k) C(22) C(23) ... C(2k) ...
C(k-1k-1) C(k-1k) C(kk)

{pmore}
如果矩阵是方阵，指定 {cmd:cstorage(full)} 是可选的。对于向量存储方法，{cmd:cstorage(lower)} 或 {cmd:cstorage(upper)} 是必需的。请参见 {help storage modes} 获取示例。

{phang}
{opt forcepsd} 修改矩阵 C 为半正定（psd），以便成为适当的协方差矩阵。如果 C 不是半正定的，它将有负特征值。通过将负特征值设置为 0 并重建，我们获得 C 的最小二乘半正定近似。此近似是一个奇异的协方差矩阵。

{phang}
{opt means(vector)} 指定生成变量的均值。默认是 {cmd:means(0)}。

{dlgtab:选项}

{marker seed()}{...}
{phang}
{opt seed(#)} 指定用于生成数据的随机数生成器的种子。 {it:#} 默认值为 0。生成的随机数不会影响标准随机数生成器的种子。


{marker examples}{...}
{title:示例}

{pstd}创建带有 2000 个观察值的新数据集，其中 {cmd:x} 的均值和标准差为 2 和 .5，{cmd:y} 的均值和标准差为 3 和 2{p_end}
{phang2}{cmd:. corr2data x y, n(2000) means(2 3) sds(.5 2)}{p_end}

{pstd}显示汇总统计{p_end}
{phang2}{cmd:. summarize}{p_end}

{pstd}设置{p_end}
{phang2}{cmd:. clear}{p_end}
{phang2}{cmd:. matrix C = (1, .5 \ .5, 1)}{p_end}

{pstd}根据矩阵 {cmd:C} 创建具有 2000 个观察值的新数据集，其中变量 {cmd:x} 和 {cmd:y} 相关{p_end}
{phang2}{cmd:. corr2data x y, n(2000) corr(C)}{p_end}

{pstd}显示相关矩阵{p_end}
{phang2}{cmd:. correlate x y}{p_end}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <corr2data.sthlp>}