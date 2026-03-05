{smcl}
{* *! version 1.1.13  11may2018}{...}
{viewerdialog drawnorm "dialog drawnorm"}{...}
{vieweralsosee "[D] drawnorm" "mansection D drawnorm"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[D] corr2data" "help corr2data_zh"}{...}
{vieweralsosee "[R] set seed" "help set_seed_zh"}{...}
{viewerjumpto "Syntax" "drawnorm_zh##syntax"}{...}
{viewerjumpto "Menu" "drawnorm_zh##menu"}{...}
{viewerjumpto "Description" "drawnorm_zh##description"}{...}
{viewerjumpto "Links to PDF documentation" "drawnorm_zh##linkspdf"}{...}
{viewerjumpto "Options" "drawnorm_zh##options"}{...}
{viewerjumpto "Examples" "drawnorm_zh##examples"}
{help drawnorm:English Version}
{hline}{...}
{p2colset 1 17 20 2}{...}
{p2col:{bf:[D] drawnorm} {hline 2}}从多元正态分布中抽样{p_end}
{p2col:}({mansection D drawnorm:查看完整的 PDF 手册条目}){p_end}
{p2colreset}{...}


{marker syntax}{...}
{title:语法}

{p 8 17 2}{cmd:drawnorm} {it:{help newvarlist_zh}}
[{cmd:,} {it:options}]

{synoptset 22 tabbed}{...}
{synopthdr}
{synoptline}
{syntab :主选项}
{synopt :{opt clear}}替换当前数据集{p_end}
{synopt :{opt d:ouble}}生成变量类型为 {opt double}; 默认是 {opt float}{p_end}
{synopt :{opt n(#)}}生成 {it:#} 个观测值; 默认是当前数量{p_end}
{synopt :{opt sd:s(vector)}}生成变量的标准差{p_end}
{synopt :{opt corr(matrix|vector)}}相关矩阵{p_end}
{synopt :{opt cov(matrix|vector)}}协方差矩阵{p_end}
{synopt :{cmdab:cs:torage:(}{cmdab:f:ull)}}以对称 k*k 矩阵存储相关/协方差结构{p_end}
{synopt :{cmdab:cs:torage:(}{cmdab:l:ower)}}以下三角矩阵存储相关/协方差结构{p_end}
{synopt :{cmdab:cs:torage:(}{cmdab:u:pper}{cmd:)}}以上三角矩阵存储相关/协方差结构{p_end}
{synopt :{opt forcepsd}}强制协方差/相关矩阵为半正定{p_end}
{synopt :{opt m:eans(vector)}}生成变量的均值; 默认是 {cmd:means(0)}{p_end}

{syntab :选项}
{synopt :{opt seed(#)}}随机数生成器的种子{p_end}
{synoptline}
{p2colreset}{...}


{marker menu}{...}
{title:菜单}

{phang}
{bf:数据 > 创建或更改数据 > 其他变量创建命令 >}
         {bf:从正态分布中抽样}


{marker description}{...}
{title:描述}

{pstd}
{cmd:drawnorm} 从具有所需均值和协方差矩阵的多元正态分布中抽取样本。默认情况下是均值为0且方差为1的正交数据。协方差矩阵可以是奇异的。生成的值是当前随机数种子或使用 {cmd:set seed()} 指定的数字的函数；请参见 {manhelp set_seed R:set seed}。


{marker linkspdf}{...}
{title:PDF 文档链接}

        {mansection D drawnormQuickstart:快速开始}

        {mansection D drawnormRemarksandexamples:备注和示例}

        {mansection D drawnormMethodsandformulas:方法和公式}

{pstd}
上述部分未包含在此帮助文件中。


{marker options}{...}
{title:选项}

{dlgtab:主选项}

{phang}
{opt clear} 指定替换内存中的数据集，即使当前数据集尚未保存到磁盘。

{phang}
{opt double} 指定新变量存储为 Stata {opt double}，即8字节实数。如果未指定 {opt double}，则变量存储为 {opt float}，即4字节实数。请参见 {manhelp data_types D:数据类型}。

{phang}
{opt n(#)} 指定要生成的观测值数量。默认是当前观测值数量。如果未指定 {opt n(#)} 或与当前观测值数量相同，则 {opt drawnorm} 会将新变量添加到现有数据集中；否则，{opt drawnorm} 会替换内存中的数据。

{phang}
{opt sds(vector)} 指定生成变量的标准差。{opt sds()} 不能与 {opt cov()} 一起指定。

{phang}
{opt corr(matrix|vector)} 指定相关矩阵。如果未指定 {opt corr()} 或 {opt cov()}，则默认情况下为正交数据。

{phang}
{opt cov(matrix|vector)} 指定协方差矩阵。如果未指定 {opt cov()} 或 {opt corr()}，则默认情况下为正交数据。

{phang}
{cmd:cstorage(full}|{cmd:lower}|{cmd:upper)}
指定 {opt corr()} 或 {opt cov()} 中的相关或协方差结构的存储方式。支持以下存储方式：

{phang2}
{opt full} 指定将相关或协方差结构存储为对称 k*k 矩阵。

{phang2}
{opt lower} 指定将相关或协方差结构记录为下三角矩阵。对于k个变量，矩阵应具有k(k+1)/2个元素，顺序如下：

{p 16 20 2}
C(11) C(21) C(22) C(31) C(32) C(33) ... C(k1) C(k2) ... C(kk)

{phang2}
{opt upper} 指定将相关或协方差结构记录为上三角矩阵。对于k个变量，矩阵应具有k(k+1)/2个元素，顺序如下：

{p 16 20 2}
C(11) C(12) C(13) ... C(1k) C(22) C(23) ... C(2k) ...
C(k-1k-1) C(k-1k) C(kk)

{pmore}
如果矩阵是方阵，指定 {cmd:cstorage(full)} 是可选的。{cmd:cstorage(lower)} 或 {cmd:cstorage(upper)} 是向量化存储方法所必需的。请参见 {help storage modes} 获取示例。

{phang}
{opt forcepsd} 修改矩阵 C 使其为半正定（psd），因此是一个适当的协方差矩阵。如果 C 不是半正定的，将具有负特征值。通过将负特征值设置为0并重构，我们获得C的最小二乘正半定逼近。该逼近是一个奇异的协方差矩阵。

{phang}
{opt means(vector)} 指定生成变量的均值。默认是 {cmd:means(0)}。

{dlgtab:选项}

{phang}
{opt seed(#)} 指定 {opt runiform()} 函数使用的随机数种子的初始值。默认是当前随机数种子。指定 {opt seed(#)} 相当于在执行 {cmd:drawnorm} 命令之前输入 {cmd:set seed} {it:#}。
{p_end}


{marker examples}{...}
{title:示例}

{pstd}
生成 2,000 个独立观测值（{cmd:x},{cmd:y}）；
{cmd:x} 的均值为 2，标准差为 0.5；
{cmd:y} 的均值为 3，标准差为 2

{phang2}{cmd:. matrix m = (2,3)}{p_end}
{phang2}{cmd:. matrix sd = (.5,2)}{p_end}
{phang2}{cmd:. drawnorm x y, n(2000) means(m) sds(sd)}{p_end}
{phang2}{cmd:. summarize}

{pstd}
从二元标准正态分布中抽取 1,000 个观测值，相关性为 0.5

{phang2}{cmd:. clear}{p_end}
{phang2}{cmd:. matrix C = (1, .5 \ .5, 1)}{p_end}
{phang2}{cmd:. drawnorm x y, n(1000) corr(C)}{p_end}
{phang2}{cmd:. summarize}{p_end}

{pstd}
等效地，

{phang2}{cmd:. clear}{p_end}
{phang2}{cmd:. matrix C = (1, .5, 1)}{p_end}
{phang2}{cmd:. drawnorm x y, n(1000) corr(C) cstorage(lower)}{p_end}
{phang2}{cmd:. summarize}{p_end}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <drawnorm.sthlp>}