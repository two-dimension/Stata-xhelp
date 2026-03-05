{smcl}
{* *! version 1.1.18  19oct2017}{...}
{viewerdialog canon "dialog canon"}{...}
{vieweralsosee "[MV] canon" "mansection MV canon"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[MV] canon postestimation" "help canon postestimation"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[MV factor" "help factor_zh"}{...}
{vieweralsosee "[MV] mvreg" "help mvreg_zh"}{...}
{vieweralsosee "[MV] pca" "help pca_zh"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[R] correlate" "help correlate_zh"}{...}
{vieweralsosee "[R] pcorr" "help pcorr_zh"}{...}
{vieweralsosee "[R] regress" "help regress_zh"}{...}
{viewerjumpto "Syntax" "canon_zh##syntax"}{...}
{viewerjumpto "Menu" "canon_zh##menu"}{...}
{viewerjumpto "Description" "canon_zh##description"}{...}
{viewerjumpto "Links to PDF documentation" "canon_zh##linkspdf"}{...}
{viewerjumpto "Options" "canon_zh##options"}{...}
{viewerjumpto "Examples" "canon_zh##examples"}{...}
{viewerjumpto "Stored results" "canon_zh##results"}
{help canon:English Version}
{hline}{...}
{p2colset 1 15 17 2}{...}
{p2col:{bf:[MV] canon} {hline 2}}典型相关{p_end}
{p2col:}({mansection MV canon:查看完整的 PDF 手册条目}){p_end}
{p2colreset}{...}


{marker syntax}{...}
{title:语法}

{p 8 15 2}{cmd:canon} {cmd:(}{it:{help varlist_zh:varlist1}}{cmd:)}
{cmd:(}{it:{help varlist_zh:varlist2}}{cmd:)}
{ifin}
[{it:{help canon##weight:权重}}]
[{cmd:,} {it:选项}]

{synoptset 14 tabbed}{...}
{synopthdr}
{synoptline}
{syntab :模型}
{synopt :{opt lc(#)}}计算典型相关的线性组合 {it:#}{p_end}
{synopt :{opt fir:st(#)}}计算前 {it:#} 个典型相关的线性组合{p_end}
{synopt :{opt nocons:tant}}计算相关时不减去均值{p_end}

{syntab :报告}
{synopt :{opt stdc:oef}}输出标准化系数的矩阵{p_end}
{synopt :{opt stde:rr}}显示原始系数和条件估计的标准误差{p_end}
{synopt :{opt l:evel(#)}}设定置信水平；默认是 {cmd:level(95)}{p_end}
{synopt :{opth test(numlist)}}显示指定典型相关的显著性检验{p_end}
{synopt :{opt notest:s}}不显示检验{p_end}
{synopt :{opth f:ormat(%fmt)}}系数矩阵的数字格式；默认是 {cmd:format(%8.4f)}{p_end}
{synoptline}
{p2colreset}{...}
{p 4 6 2}{cmd:by} 和 {cmd:statsby} 是允许的；请参阅 {help prefix_zh}.{p_end}
{marker weight}{...}
{p 4 6 2}{opt aweight}s 和 {opt fweight}s 是允许的；请参阅 {help weight_zh}.{p_end}
{p 4 6 2}请参阅 {manhelp canon_postestimation MV:canon postestimation} 获取估计后可用的功能。


{marker menu}{...}
{title:菜单}

{phang}
{bf:统计 > 多元分析 >}
     {bf:MANOVA、多元回归及相关 > 典型相关}


{marker description}{...}
{title:描述}

{pstd}
{cmd:canon} 估计典型相关并提供计算与这些相关相对应的适当线性组合的系数。

{pstd}
未带参数输入的 {cmd:canon} 会重新显示先前的估计结果。


{marker linkspdf}{...}
{title:PDF 文档链接}

        {mansection MV canonQuickstart:快速入门}

        {mansection MV canonRemarksandexamples:说明和示例}

        {mansection MV canonMethodsandformulas:方法和公式}

{pstd}
上述部分不包括在此帮助文件中。


{marker options}{...}
{title:选项}

{dlgtab:模型}

{phang}{opt lc(#)} 指定计算典型相关 {it:#} 的线性组合。默认情况下，所有的都被计算。

{phang}{opt first(#)} 指定计算前 {it:#} 个典型相关的线性组合。默认情况下，所有的都被计算。

{phang}{cmd:noconstant} 指定在计算相关时不减去均值。

{dlgtab:报告}

{phang}{cmd:stdcoef} 指定输出的第一部分包含典型相关的标准系数矩阵形式。默认是以矩阵形式呈现典型相关的原始系数。

{phang}{cmd:stderr} 指定输出的第一次部分包含典型相关的原始系数、条件估计的标准误差，以及条件估计的置信区间标准估计表。默认是以矩阵形式呈现典型相关的原始系数。

{phang}{opt level(#)} 指定置信区间系数的置信水平，表示为百分比。默认值为 {cmd:level(95)} 或由 {helpb set level} 设置。 这些 "置信区间" 是近似计算的结果；参见 {mansection MV canonRemarksandexamplestechnote:技术说明} 在 {bf:[MV] canon} 中。

{phang}{opth test(numlist)} 指定显示 {it:numlist} 中典型相关的显著性检验。由于显著性检验的性质，如果有三个典型相关，{cmd:test(1)} 将测试所有三个相关的显著性，{cmd:test(2)} 将测试典型相关 2 和 3 的显著性，{cmd:test(3)} 将仅测试第三个典型相关的显著性。

{phang}{cmd:notests} 指定不显示典型相关的显著性检验。

{phang}{opth format(%fmt)} 指定系数矩阵数字的显示格式。默认是 {cmd:format(%8.4f)}。 {cmd:format()} 不能与 {cmd:stderr} 一起指定。


{marker examples}{...}
{title:示例}

{pstd}设置{p_end}
{phang2}{cmd:. sysuse auto}{p_end}

{pstd}估计典型相关{p_end}
{phang2}{cmd:. canon (length weight headroom trunk) (displ mpg gear_ratio turn)}{p_end}

{pstd}与上面相同，但显示标准化系数{p_end}
{phang2}{cmd:. canon (length weight headroom trunk) (displ mpg gear_ratio turn), stdcoef}{p_end}

{pstd}在标准估计表中显示原始系数和条件标准误差{p_end}
{phang2}{cmd:. canon (length weight headroom trunk) (displ mpg gear_ratio turn), stderr}{p_end}


{marker results}{...}
{title:存储结果}

{pstd}
{cmd:canon} 将以下内容存储在 {cmd:e()} 中：

{synoptset 25 tabbed}{...}
{p2col 5 25 29 2:标量}{p_end}
{synopt:{cmd:e(N)}}观察数量{p_end}
{synopt:{cmd:e(df_r)}}残差自由度{p_end}
{synopt:{cmd:e(df)}}自由度{p_end}
{synopt:{cmd:e(df1)}}显著性检验的分子自由度{p_end}
{synopt:{cmd:e(df2)}}显著性检验的分母自由度{p_end}
{synopt:{cmd:e(n_lc)}}计算的线性组合{p_end}
{synopt:{cmd:e(n_cc)}}计算的典型相关数量{p_end}
{synopt:{cmd:e(rank)}}{cmd:e(V)} 的秩{p_end}

{synoptset 25 tabbed}{...}
{p2col 5 25 29 2:宏}{p_end}
{synopt:{cmd:e(cmd)}}{cmd:canon}{p_end}
{synopt:{cmd:e(cmdline)}}输入的命令{p_end}
{synopt:{cmd:e(wtype)}}权重类型{p_end}
{synopt:{cmd:e(wexp)}}权重表达式{p_end}
{synopt:{cmd:e(properties)}}{cmd:b V}{p_end}
{synopt:{cmd:e(estat_cmd)}}用于实现 {cmd:estat} 的程序{p_end}
{synopt:{cmd:e(predict)}}用于实现 {cmd:predict} 的程序{p_end}
{synopt:{cmd:e(marginsnotok)}}被 {cmd:margins} 禁止的预测{p_end}

{synoptset 25 tabbed}{...}
{p2col 5 25 29 2:矩阵}{p_end}
{synopt:{cmd:e(b)}}系数向量{p_end}
{synopt:{cmd:e(stat_}{it:#}{cmd:)}}典型相关 {it:#} 的统计量{p_end}
{synopt:{cmd:e(stat_m)}}整体模型的统计量{p_end}
{synopt:{cmd:e(canload11)}} {it:varlist_1} 的典型载荷{p_end}
{synopt:{cmd:e(canload22)}} {it:varlist_2} 的典型载荷{p_end}
{synopt:{cmd:e(canload12)}} {it:varlist_1} 和来自 {it:varlist_2} 的典型变量之间的相关性{p_end}
{synopt:{cmd:e(canload21)}} {it:varlist_2} 和来自 {it:varlist_1} 的典型变量之间的相关性{p_end}
{synopt:{cmd:e(rawcoef_var1)}} {it:varlist_1} 的原始系数{p_end}
{synopt:{cmd:e(rawcoef_var2)}} {it:varlist_2} 的原始系数{p_end}
{synopt:{cmd:e(stdcoef_var1)}} {it:varlist_1} 的标准系数{p_end}
{synopt:{cmd:e(stdcoef_var2)}} {it:varlist_2} 的标准系数{p_end}
{synopt:{cmd:e(ccorr)}}典型相关系数{p_end}
{synopt:{cmd:e(ccorr_var1)}} {it:varlist_1} 的相关矩阵{p_end}
{synopt:{cmd:e(ccorr_var2)}} {it:varlist_2} 的相关矩阵{p_end}
{synopt:{cmd:e(ccorr_mixed)}} {it:varlist_1} 和 {it:varlist_2} 之间的相关矩阵{p_end}
{synopt:{cmd:e(V)}}估计量的方差-协方差矩阵{p_end}

{synoptset 25 tabbed}{...}
{p2col 5 25 29 2:函数}{p_end}
{synopt:{cmd:e(sample)}}标记估计样本{p_end}
{p2colreset}{...}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <canon.sthlp>}