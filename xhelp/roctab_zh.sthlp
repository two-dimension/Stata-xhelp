{smcl}
{* *! version 1.3.9  19oct2017}{...}
{viewerdialog roctab "dialog roctab"}{...}
{vieweralsosee "[R] roctab" "mansection R roctab"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[R] logistic postestimation" "help logistic postestimation"}{...}
{vieweralsosee "[R] roc" "help roc_zh"}{...}
{vieweralsosee "[R] roccomp" "help roccomp_zh"}{...}
{vieweralsosee "[R] rocfit" "help rocfit_zh"}{...}
{vieweralsosee "[R] rocreg" "help rocreg_zh"}{...}
{viewerjumpto "Syntax" "roctab_zh##syntax"}{...}
{viewerjumpto "Menu" "roctab_zh##menu"}{...}
{viewerjumpto "Description" "roctab_zh##description"}{...}
{viewerjumpto "Links to PDF documentation" "roctab_zh##linkspdf"}{...}
{viewerjumpto "Options" "roctab_zh##options"}{...}
{viewerjumpto "Examples" "roctab_zh##examples"}{...}
{viewerjumpto "Stored results" "roctab_zh##results"}{...}
{viewerjumpto "References" "roctab_zh##references"}
{help roctab:English Version}
{hline}{...}
{p2colset 1 15 17 2}{...}
{p2col:{bf:[R] roctab} {hline 2}}非参数ROC分析
{p_end}
{p2col:}({mansection R roctab:查看完整PDF手册条目}){p_end}
{p2colreset}{...}


{marker syntax}{...}
{title:语法}

{p 8 16 2}
{cmd:roctab}{space 1}
{it:refvar}
{it:classvar}
{ifin}
[{it:{help roctab##weight:权重}}]
[{cmd:,} {it:选项}]

{synoptset 25 tabbed}{...}
{synopthdr:选项}
{synoptline}
{syntab:主要}
{synopt:{opt lor:enz}}报告Gini和Pietra指数{p_end}
{synopt:{opt bino:mial}}计算确切的二项式置信区间{p_end}
{synopt:{opt nolab:el}}显示数字代码而不是值标签{p_end}
{synopt:{opt d:etail}}显示每个临界点的灵敏度/特异性的详细信息{p_end}
{synopt:{opt tab:le}}以2 x k列联表的形式显示原始数据{p_end}
{synopt:{opt bam:ber}}通过Bamber方法计算标准误{p_end}
{synopt:{opt han:ley}}通过Hanley方法计算标准误{p_end}
{synopt:{opt g:raph}}绘制ROC曲线{p_end}
{synopt:{opt noref:line}}抑制绘制45度参考线{p_end}
{synopt:{opt sum:mary}}报告ROC曲线下的区域{p_end}
{synopt:{opt spec:ificity}}绘制灵敏度与特异性的图{p_end}
{synopt:{opt l:evel(#)}}设置信心级别；默认值是{cmd:level(95)}{p_end}

{syntab:图表}
{synopt:{cmdab:plotop:ts(}{it:{help roctab##plot_options:绘图选项}}{cmd:)}}影响
	ROC曲线的表现{p_end}

{syntab:参考线}
{synopt:{opth rlop:ts(cline_options)}}影响参考线的表现{p_end}

{syntab:添加图形}
{synopt:{opth "addplot(addplot_option:图形)"}}将其他图形添加到生成的图中{p_end}

{syntab:Y轴、X轴、标题、图例、总体}
{synopt:{it:twoway_options}}任何除{opt by()}以外的选项，详见{manhelpi twoway_options G-3}{p_end}
{synoptline}
{p2colreset}{...}
{marker weight}{...}
{p 4 6 2}
{opt fweight}被允许；参见{help weight_zh}。


{marker plot_options}{...}
{synoptset 25}{...}
{synopthdr:绘图选项}
{synoptline}
包括帮助 gr_markopt2
包括帮助 gr_clopt
{synoptline}


{marker menu}{...}
{title:菜单}

{phang}
{bf:统计 > 流行病学及相关 > ROC分析 >}
        {bf:没有协变量的非参数ROC分析}


{marker description}{...}
{title:描述}

{pstd}
上述命令用于执行接收者操作特征(ROC)分析，涉及评级和离散分类数据。

{pstd}
两个变量{it:refvar}和{it:classvar}必须为数值型。参考变量指示观察的真实情况，例如生病和不生病或正常和异常，并且必须编码为0和1。诊断测试或测试方式的评分或结果记录在{it:classvar}中，后者必须至少为有序型，值越高表示风险越高。

{pstd}
{opt roctab}执行非参数ROC分析。默认情况下，{opt roctab}计算ROC曲线下的面积。可选地，{opt roctab}可以绘制ROC曲线，以表格形式显示数据，并生成类似Lorenz的图。

{pstd}
有关拟合最大似然ROC模型的命令，请参见{manhelp rocfit R}。


{marker linkspdf}{...}
{title:PDF文档链接}

        {mansection R roctabQuickstart:快速入门}

        {mansection R roctabRemarksandexamples:备注和示例}

        {mansection R roctabMethodsandformulas:方法和公式}

{pstd}
上述部分不包含在此帮助文件中。


{marker options}{...}
{title:选项}

{dlgtab:主要}

{phang}
{opt lorenz}指定报告Gini和Pietra指数。可选地，{opt graph}将绘制类似Lorenz的曲线。

{phang}
{opt binomial}指定计算确切的二项式置信区间。

{phang}
{opt nolabel}指定显示数字代码而不是值标签。

{phang}
{opt detail}输出一个表，显示灵敏度、特异性、正确分类的受试者百分比，以及每个可能的{it:classvar}临界点两个似然比。

{phang}
{opt table}输出一个2 x k列联表，显示原始数据。

{phang}
{opt bamber}指定使用{help roctab##B1975:Bamber (1975)}建议的方法来计算ROC曲线下区域的标准误。否则，标准误将采用{help roctab##DDC1988:DeLong, DeLong, and Clarke-Pearson (1988)}建议的方法。

{phang}
{opt hanley}指定使用{help roctab##HM1982:Hanley and McNeil (1982)}建议的方法来计算ROC曲线下区域的标准误。否则，标准误将采用{help roctab##DDC1988:DeLong, DeLong, and Clarke-Pearson (1988)}建议的方法。

{phang}
{opt graph}生成ROC曲线的图形输出。如果指定了{opt lorenz}，则会生成类似Lorenz的曲线的图形输出。

{phang}
{opt norefline}抑制从ROC曲线的图形输出中绘制45度参考线。

{phang}
{opt summary}报告ROC曲线下的区域、其标准误和置信区间。如果指定了{opt lorenz}，则报告Lorenz指数。此选项仅在同时指定{opt graph}时需要。

{phang}
{opt specificity}生成灵敏度与特异性图，而不是灵敏度与(1 - 特异性)的图。{opt specificity}隐含着{opt graph}。

{phang}
{opt level(#)}指定置信区间的置信水平，作为百分比。默认是{cmd:level(95)}或由{helpb set level}设置。

{dlgtab:图表}

{phang}
{opt plotopts(plot_options)}影响绘制的ROC曲线的表现--曲线的点通过线连接。{it:plot_options}可以影响标记的大小和颜色，标记是否以及如何标记，以及点是否以及如何连接；参见{manhelpi marker_options G-3}、{manhelpi marker_label_options G-3}和{manhelpi cline_options G-3}。

{dlgtab:参考线}

{phang}
{opt rlopts(cline_options)}影响参考线的表现；请参见{manhelpi cline_options G-3}。

{dlgtab:添加图形}

{phang}
{opt addplot(plot)}提供了一种将其他图形添加到生成图中的方法；参见{manhelpi addplot_option G-3}。

{dlgtab:Y轴、X轴、标题、图例、总体}

{phang}
{it:twoway_options}是{manhelpi twoway_options G-3}中记录的任何选项，除了{opt by()}。这些包括图形标题的选项（见{manhelpi title_options G-3}）和将图形保存到磁盘的选项（见{manhelpi saving_option G-3}）。


{marker examples}{...}
{title:示例}

    非参数ROC分析示例
{phang2}{cmd:. webuse hanley}{p_end}
{phang2}{cmd:. roctab disease rating}{p_end}
{phang2}{cmd:. roctab disease rating, graph}{p_end}
{phang2}{cmd:. roctab disease rating, graph summary}{p_end}
{phang2}{cmd:. roctab disease rating [fw=pop]}{p_end}
{phang2}{cmd:. roctab disease rating, table detail}{p_end}
{phang2}{cmd:. roctab disease rating, lorenz}{p_end}
{phang2}{cmd:. roctab disease rating, lorenz graph}{p_end}


{marker results}{...}
{title:存储的结果}

{pstd}
{cmd:roctab}将以下内容存储在{cmd:r()}中：

{synoptset 15 tabbed}{...}
{p2col 5 15 19 2: 标量}{p_end}
{synopt:{cmd:r(N)}}观察数{p_end}
{synopt:{cmd:r(se)}}ROC曲线下区域的标准误{p_end}
{synopt:{cmd:r(lb)}}ROC曲线下区域置信区间的下限{p_end}
{synopt:{cmd:r(ub)}}ROC曲线下区域置信区间的上限{p_end}
{synopt:{cmd:r(level)}}置信水平{p_end}
{synopt:{cmd:r(area)}}ROC曲线下的区域{p_end}
{synopt:{cmd:r(pietra)}}Pietra指数{p_end}
{synopt:{cmd:r(gini)}}Gini指数{p_end}

{p2col 5 15 19 2: 宏}{p_end}
{synopt:{cmd:r(cutpoints)}}切点的描述（仅{cmd:detail}）{p_end}

{p2col 5 15 19 2: 矩阵}{p_end}
{synopt:{cmd:r(detail)}}包括每个切点的灵敏度和特异性的详细信息的矩阵（仅{cmd:detail}）{p_end}


{marker references}{...}
{title:参考文献}

{marker B1975}{...}
{phang}
Bamber, D. 1975. 在序数优势图上的面积和接收者操作特征图下的面积。
{it:数学心理学杂志} 12: 387-415。

{marker DDC1988}{...}
{phang}
DeLong, E. R., D. M. DeLong, 和 D. L. Clarke-Pearson. 1988. 比较两个或多个相关接收者操作特征曲线下的面积：
一种非参数方法。{it:生物统计学} 44: 837-845。

{marker HM1982}{...}
{phang}
Hanley, J. A., 和 B. J. McNeil. 1982. 接收者操作特征(ROC)曲线下方的面积的意义和用途。{it:放射学} 143: 29-36。
{p_end}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <roctab.sthlp>}