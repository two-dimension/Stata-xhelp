{smcl}
{* *! version 1.2.5  15may2018}{...}
{viewerdialog tabodds "dialog tabodds"}{...}
{vieweralsosee "[R] Epitab" "mansection R Epitab"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[R] bitest" "help bitest_zh"}{...}
{vieweralsosee "[R] ci" "help ci_zh"}{...}
{vieweralsosee "[R] tabulate twoway" "help tabulate_twoway_zh"}{...}
{viewerjumpto "Syntax" "tabodds_zh##syntax"}{...}
{viewerjumpto "Menu" "tabodds_zh##menu"}{...}
{viewerjumpto "Description" "tabodds_zh##description"}{...}
{viewerjumpto "Links to PDF documentation" "tabodds_zh##linkspdf"}{...}
{viewerjumpto "Options" "tabodds_zh##options"}{...}
{viewerjumpto "Examples" "tabodds_zh##examples"}{...}
{viewerjumpto "Stored results" "tabodds_zh##results"}{...}
{viewerjumpto "References" "tabodds_zh##references"}
{help tabodds:English Version}
{hline}{...}
{p2colset 1 15 17 2}{...}
{p2col:{bf:[R] Epitab} {hline 2}}流行病学者的表格（tabodds）
{p_end}
{p2col:}({mansection R Epitab:查看完整的 PDF 手册条目}){p_end}
{p2colreset}{...}


{marker syntax}{...}
{title:语法}

{p 8 16 2}{cmd:tabodds} {it:var_case} [{it:expvar}] {ifin}
[{it:{help tabodds##weight:weight}}]
[{cmd:,} {it:{help tabodds##tabodds_options:tabodds_options}}]

{synoptset 21 tabbed}{...}
{marker tabodds_options}{...}
{synopthdr :tabodds_options}
{synoptline}
{syntab:主要}
{synopt :{opth b:inomial(varname)}}样本数量变量{p_end}
{synopt :{opt l:evel(#)}}设定置信水平；默认值为 {cmd:level(95)}{p_end}
{synopt :{opt or}}报告比值比{p_end}
{synopt :{opth adj:ust(varlist)}}报告针对 {it:varlist} 中变量的调整比值比{p_end}
{synopt :{opt base(#)}}比值比的控制变量参考组{p_end}
{synopt :{opt co:rnfield}}使用 Cornfield 近似计算比值比的置信区间{p_end}
{synopt :{opt w:oolf}}使用 Woolf 近似计算比值比的标准误和置信区间{p_end}
{synopt :{opt g:raph}}绘制类别间的比值图{p_end}
{synopt :{opt ci:plot}}与 {opt graph} 选项相同，包含置信区间{p_end}

{syntab:置信区间图}
{synopt :{opth ciop:ts(rcap_options)}}影响置信带的展示{p_end}

{syntab:图形}
{synopt :{it:{help marker_options_zh}}}改变标记的外观（颜色、大小等）{p_end}
{synopt :{it:{help marker_label_options_zh}}}添加标记标签；改变外观或位置{p_end}
{synopt :{it:{help cline_options_zh}}}影响绘制点的线的展示{p_end}

{syntab:添加图形}
{synopt :{opth "addplot(addplot_option:plot)"}}在生成的图中添加其他图形{p_end}

{syntab:Y 轴, X 轴, 标题, 图例, 总体}
{synopt :{it:twoway_options}}文档中描述的任何不包括 {opt by()} 的选项
      {manhelpi twoway_options G-3}{p_end}
{synoptline}
{p2colreset}{...}
{marker weight}{...}
{p 4 6 2}{opt fweight} 允许；见 {help weight_zh}。


{marker menu}{...}
{title:菜单}

{phang}
{bf:统计 > 流行病学及相关 > 流行病学者的表格 >}
    {bf:按类别列出失败的比值}


{marker description}{...}
{title:描述}

{pstd}
{cmd:tabodds} 用于病例对照研究和横断面数据。它将失败的比值与分类解释变量 {it:expvar} 进行列举。如果指定了 {it:expvar}，{cmd:tabodds} 将进行比值的齐性近似卡方检验以及对比值的对数趋势进行线性检验。这两个检验均基于得分统计量及其方差；见 {mansection R EpitabMethodsandformulas:{it:方法与公式}}。当缺少 {it:expvar} 时，将报告总体比值。变量 {it:var_case} 在个体和简单频率记录中编码为 0/1，并等于二项频率记录中的案例数。

{pstd}
可选地，{cmd:tabodds} 列举调整或未调整的比值比，使用 {it:expvar} 的最低水平或用户定义的水平作为参考组。如果指定了 {opth adjust(varlist)}，则将生成针对 {it:varlist} 中变量调整的比值比，同时进行趋势的（得分）检验。


{marker linkspdf}{...}
{title:PDF 文档链接}

        {mansection R EpitabQuickstart:快速入门}

        {mansection R EpitabRemarksandexamples:备注与示例}

        {mansection R EpitabMethodsandformulas:方法与公式}

{pstd}
上述部分未包含在该帮助文件中。


{marker options}{...}
{title:选项}

{dlgtab:主要}

{phang}
{opth binomial(varname)} 提供二项频率记录的样本数量（病例加对照）。对于个体和简单频率记录，此选项不使用。

{phang}
{opt level(#)} 设定置信区间的置信水平，以百分比形式表示。默认值为 {cmd:level(95)} 或通过 {helpb set level} 设置。

{phang}
{opt or} 规定生成比值比；有关选择参考类别的详细信息，请参见 {opt base()}。默认情况下，{cmd:tabodds} 将计算比值。

{phang}
{opth adjust(varlist)} 设定将计算针对 {it:varlist} 中变量调整的比值比。

{phang}
{opt base(#)} 规定将 {it:expvar} 的 {it:#} 类别用作计算比值比的参考组。如果未指定 {opt base()}，则将使用具有 {it:expvar} 最小值的首个类别作为参考组。

{phang}
{opt cornfield} 请求使用 {help tabodds##C1956:Cornfield (1956)} 近似法计算比值比的置信区间。默认情况下，{cmd:tabodds} 报告基于标准误的区间，标准误来自于得分统计量方差的平方根。

{phang}
{opt woolf} 请求使用 {help tabodds##W1955:Woolf (1955)} 近似法，也称为泰勒展开式，计算比值比的标准误和置信区间。默认情况下，{cmd:tabodds} 会报告基于标准误的区间，标准误来自于得分统计量方差的平方根。

{phang}
{opt graph} 在与 {it:expvar} 的类别对应的数值代码上生成比值图。除 {opt connect()} 之外，允许所有图形选项。此选项不允许与 {opt or} 选项或 {opt adjust()} 选项一起使用。

{phang}
{opt ciplot} 生成与 {opt graph} 选项相同的图，但包括置信区间。此选项不得与 {opt or} 选项或 {opt adjust()} 选项一起使用。

{dlgtab:置信区间图}

{marker ciopts()}{...}
{phang}
{opt ciopts(rcap_options)} 仅在使用 {opt ciplot} 选项时允许。它影响置信带的展示；见 {manhelpi rcap_options G-3}。

{dlgtab:图形}

{phang}
{it:marker_options} 影响在绘制点上的标记的显示，包括形状、大小、颜色和轮廓；见 {manhelpi marker_options G-3}。

{phang}
{it:marker_label_options} 指定标记是否以及如何进行标注；见 {manhelpi marker_label_options G-3}。

{phang}
{it:cline_options} 影响连接绘制点的线的是否和显示；见 {manhelpi cline_options G-3}。

{dlgtab:添加图形}

{phang}
{opt addplot(plot)} 提供一种将其他图形添加到生成的图中的方法；见 {manhelpi addplot_option G-3}。

{dlgtab:Y 轴, X 轴, 标题, 图例, 总体}

{phang}
{it:twoway_options} 是 {manhelpi twoway_options G-3} 中描述的任何选项，但不包括 {opt by()}。这些选项包括图形标题的选项（见 {manhelpi title_options G-3}）以及将图形保存到磁盘的选项（见 {manhelpi saving_option G-3}）。


{marker examples}{...}
{title:示例}

{pstd}设置{p_end}
{phang2}{cmd:. webuse bdesop}

{pstd}按酒精消费列出癌症的比值{p_end}
{phang2}{cmd:. tabodds case alcohol [fw=freq]}

{pstd}与上面相同，但报告比值比而非比值{p_end}
{phang2}{cmd:. tabodds case alcohol [fw=freq], or}

{pstd}列举 Mantel-Haenszel 年龄调整的比值比{p_end}
{phang2}{cmd:. tabodds case alcohol [fw=freq], adjust(age)}

{pstd}与上面相同，但调整烟草使用而非年龄{p_end}
{phang2}{cmd:. tabodds case alcohol [fw=freq], adjust(tobacco)}


{marker results}{...}
{title:存储结果}

{pstd}
{cmd:tabodds} 将以下内容存储到 {cmd:r()} 中：

{synoptset 15 tabbed}{...}
{p2col 5 15 19 2: 标量}{p_end}
{synopt:{cmd:r(odds)}}比值{p_end}
{synopt:{cmd:r(lb_odds)}}比值的下界{p_end}
{synopt:{cmd:r(ub_odds)}}比值的上界{p_end}
{synopt:{cmd:r(chi2_hom)}}齐性卡方检验{p_end}
{synopt:{cmd:r(p_hom)}}齐性检验的 p 值{p_end}
{synopt:{cmd:r(df_hom)}}齐性卡方检验的自由度{p_end}
{synopt:{cmd:r(chi2_tr)}}趋势的得分检验的卡方值{p_end}
{synopt:{cmd:r(p_trend)}}趋势的得分检验的 p 值{p_end}


{marker references}{...}
{title:参考文献}

{marker C1956}{...}
{phang}
Cornfield, J. 1956. A statistical problem arising from retrospective studies.
In Vol. 4 of {it:Proceedings of the Third Berkeley Symposium}, ed.
J. Neyman, 135-148. Berkeley, CA: University of California Press.

{marker W1955}{...}
{phang}
Woolf, B. 1955. On estimating the relation between blood group disease.
{it:Annals of Human Genetics} 19: 251-253.
Reprinted in
{it:Evolution of Epidemiologic Ideas: Annotated Readings on Concepts and Methods},
ed. S. Greenland, pp. 108-110. Newton Lower Falls, MA: Epidemiology Resources.
{p_end}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <tabodds.sthlp>}