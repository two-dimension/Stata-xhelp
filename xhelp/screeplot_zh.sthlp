{smcl}
{* *! version 1.2.9  22mar2018}{...}
{viewerdialog screeplot "dialog screeplot"}{...}
{vieweralsosee "[MV] screeplot" "mansection MV screeplot"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[MV] factor" "help factor_zh"}{...}
{vieweralsosee "[MV] mds" "help mds_zh"}{...}
{vieweralsosee "[MV] pca" "help pca_zh"}{...}
{viewerjumpto "Syntax" "screeplot_zh##syntax"}{...}
{viewerjumpto "Menu" "screeplot_zh##menu"}{...}
{viewerjumpto "Description" "screeplot_zh##description"}{...}
{viewerjumpto "Links to PDF documentation" "screeplot_zh##linkspdf"}{...}
{viewerjumpto "Options" "screeplot_zh##options"}{...}
{viewerjumpto "Examples" "screeplot_zh##examples"}{...}
{viewerjumpto "Stored results" "screeplot_zh##results"}
{help screeplot:English Version}
{hline}{...}
{p2colset 1 19 21 2}{...}
{p2col:{bf:[MV] screeplot} {hline 2}}特征值的碎石图{p_end}
{p2col:}({mansection MV screeplot:查看完整的PDF手册条目}){p_end}
{p2colreset}{...}


{marker syntax}{...}
{title:语法}

{p 8 18 2}{cmd:screeplot} [{it:eigvals}] [{cmd:,} {it:options}]

{pstd}
{cmd:scree} 是 {cmd:screeplot} 的同义词。

{synoptset 26 tabbed}{...}
{synopthdr}
{synoptline}
{syntab:主要}
{synopt:{opt n:eigen(#)}}仅绘制最大的 {it:#} 个特征值; 默认是绘制所有特征值{p_end}

{syntab:均值}
{synopt:{opt me:an}}在特征值的均值处绘制水平线{p_end}
{synopt:{opth meanl:opts(cline_options)}}影响均值线的呈现{p_end}

{syntab:置信区间}
{synopt:{cmd:ci}[{cmd:(}{it:{help screeplot##ciopts:ci_options}}{cmd:)}]}绘制置信区间（仅适用于 {help pca_zh}）； {opt ci} 是 {cmd:ci(asymptotic)} 的同义词{p_end}

{syntab:绘图}
{synopt:{it:{help cline_options_zh}}}影响连接点的线的呈现{p_end}
{synopt :{it:{help marker_options_zh}}}更改标记的外观（颜色、大小等）{p_end}

{syntab:添加绘图}
{synopt:{opth "addplot(addplot_option:plot)"}}向生成的图形添加其他图形{p_end}

{syntab:Y轴, X轴, 标题, 图例, 总体}
{synopt:{it:twoway_options}}除 {cmd:by()} 外，任何在 {manhelpi twoway_options G-3} 中记录的选项{p_end}
{synoptline}

{synoptset 26}{...}
{marker ciopts}{...}
{synopthdr:ci_options}
{synoptline}
{synopt:{opt as:ymptotic}}计算渐近置信区间; 默认值{p_end}
{synopt:{opt he:teroskedastic}}计算异方差自助法置信区间{p_end}
{synopt:{opt ho:moskedastic}}计算同方差自助法置信区间{p_end}
{synopt:{it:{help area_options_zh}}}影响置信带的呈现{p_end}
{synopt:{opt tab:le}}生成置信区间的表格{p_end}
{synopt:{opt l:evel(#)}}设置置信水平; 默认值为 {cmd:level(95)}{p_end}
{synopt:{opt r:eps(#)}}自助法模拟次数; 默认值为 {cmd:reps(200)}{p_end}
{synopt:{opt seed(str)}}用于自助模拟的随机数 {help seed}{p_end}
{synoptline}
{p2colreset}{...}


{marker menu}{...}
{title:菜单}

{phang}
{bf:统计 > 多变量分析 >}
      {bf:因子与主成分分析 > 后验估计 >}
      {bf:特征值的碎石图}


{marker description}{...}
{title:描述}

{pstd}
{cmd:screeplot} 生成协方差或相关矩阵的特征值的碎石图。

{pstd}
{cmd:screeplot} 在 {help candisc_zh}、{helpb discrim lda}、{help factor_zh}、{helpb factormat}、{help pca_zh} 和 {helpb pcamat} 之后自动获取特征值。
{cmd:screeplot} 还自动用于在 {help ca_zh} 和 {helpb camat} 之后绘制奇异值，在 {help canon_zh} 之后绘制典范相关，在 {help manova_zh}、{help mca_zh}、{help mds_zh}、{help mdsmat_zh} 和 {help mdslong_zh} 之后绘制特征值。

{pstd}
{cmd:screeplot} 通过直接指定 {it:eigvals}（包含特征值的向量）让你在其他情况下获得碎石图。


{marker linkspdf}{...}
{title:PDF文档链接}

        {mansection MV screeplotQuickstart:快速开始}

        {mansection MV screeplotRemarksandexamples:备注和示例}

{pstd}
以上部分不包含在此帮助文件中。


{marker options}{...}
{title:选项}

{dlgtab:主要}

{phang}
{opt neigen(#)}
指定要绘制的特征值的数量。 默认值是绘制所有特征值。

{dlgtab:均值}

{phang}
{opt mean}
在特征值的均值处显示一条水平线。

{phang}
{opt meanlopts(cline_options)}
影响使用 {opt mean} 选项添加的均值参考线的呈现；见 {manhelpi cline_options G-3}。

{dlgtab:置信区间}

{phang}
{opt ci}[{cmd:(}{it:ci_options}{cmd:)}] 显示特征值的置信区间。选项 {opt ci} 是 {cmd:ci(asymptotic)} 的同义词。可用的置信区间估计方法如下：

{phang2}
{cmd:ci(asymptotic)}
指定特征值的渐近分布为中心温莎特征值的分布，即来自多元正态分布样本的协方差矩阵的分布。应用于相关矩阵的渐近理论并不完全正确，可能会给出稍微过窄的置信区间。

{phang2}
{cmd:ci(heteroskedastic)}
通过使用百分位法进行参数自助法，并假设特征值来自于一个与观察到的特征值相同的多元正态矩阵。

{phang2}
{cmd:ci(homoskedastic)}
通过使用百分位法进行参数自助法，并假设特征值来自于一个多元正态矩阵，且所有特征值都等于观察特征值的均值。对于相关矩阵的主成分分析，此均值为 1。

{phang2}
{opt ci(area_options)}
影响置信带的呈现；见 {manhelpi area_options G-3}。

{phang2}
{cmd:ci(table)}
生成一个包含置信区间的表格。

{phang2}
{cmd:ci(level(}{it:#}{cmd:))}
指定置信区间的置信水平，作为一个百分比。默认值为 {cmd:level(95)} 或通过 {helpb set level} 设置的值。

{phang2}
{cmd:ci(reps(}{it:#}{cmd:))}
指定用于估计置信区间的模拟次数。此选项仅在指定 {opt heteroskedastic} 或 {opt homoskedastic} 时有效。默认值为 {cmd:reps(200)}。

{phang2}
{cmd:ci(seed(}{it:str}{cmd:))}
设置用于参数自助法的随机数种子。设置种子可确保结果可重复。见 {cmd:set seed} 在 {manhelp set_seed R:set seed} 中。此选项仅在指定 {opt heteroskedastic} 或 {opt homoskedastic} 时有效。

{pmore}
置信区间未调整为 "同时推断"（参见 {manhelp _mtest P}）。

{dlgtab:绘图}

{phang}
{it:cline_options} 
影响连接绘制点的线的呈现；见 {manhelpi cline_options G-3}。

{phang}
{it:marker_options} 影响在绘制点上绘制的标记的呈现，包括其形状、大小、颜色和轮廓；见 {manhelpi marker_options G-3}。

{dlgtab:添加绘图}

{phang}
{opt addplot(plot)}
提供将其他图形添加到生成图形的方式；见 {manhelpi addplot_option G-3}。

{dlgtab:Y轴, X轴, 标题, 图例, 总体}

{phang}
{it:twoway_options}
是在 {manhelpi twoway_options G-3} 中记录的任何选项，排除 {cmd:by()}。这些选项包括为图形命名的选项（见 {manhelpi title_options G-3}）和将图形保存到磁盘的选项（见 {manhelpi saving_option G-3}）。


{marker examples}{...}
{title:示例}

{pstd}设置{p_end}
{phang2}{cmd:. webuse bg2}{p_end}
{phang2}{cmd:. factor bg2cost1-bg2cost6}

{pstd}绘制碎石图{p_end}
{phang2}{cmd:. screeplot}

{pstd}设置{p_end}
{phang2}{cmd:. pca bg2cost1-bg2cost6}

{pstd}绘制带有渐近置信区间的碎石图{p_end}
{phang2}{cmd:. screeplot, ci(asymptotic)}


{marker results}{...}
{title:存储的结果}

{pstd}
{cmd:screeplot} 在 {cmd:r()} 中存储以下内容：

{synoptset 15 tabbed}{...}
{p2col 5 15 19 2: 标量}{p_end}
{synopt:{cmd:r(level)}}置信区间的置信水平{p_end}

{p2col 5 15 19 2: 宏}{p_end}
{synopt:{cmd:r(Ctype)}}{cmd:correlation} 或 {cmd:covariance}{p_end}
{synopt:{cmd:r(ci)}}置信区间估计的方法{p_end}
{synopt:{cmd:r(rngstate)}}用于参数自助法的随机数状态{p_end}

{p2col 5 15 19 2: 矩阵}{p_end}
{synopt:{cmd:r(ci)}}置信区间{p_end}
{synopt:{cmd:r(eigvals)}}特征值{p_end}
{p2colreset}{...}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <screeplot.sthlp>}