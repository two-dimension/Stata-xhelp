{smcl}
{* *! version 1.1.13  14may2018}{...}
{viewerdialog symplot "dialog symplot"}{...}
{viewerdialog quantile "dialog quantile"}{...}
{viewerdialog qqplot "dialog qqplot"}{...}
{viewerdialog qnorm "dialog qnorm"}{...}
{viewerdialog pnorm "dialog pnorm"}{...}
{viewerdialog qchi "dialog qchi"}{...}
{viewerdialog pchi "dialog pchi"}{...}
{vieweralsosee "[R] 诊断图" "mansection R Diagnosticplots"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[R] cumul" "help cumul_zh"}{...}
{vieweralsosee "[R] kdensity" "help kdensity_zh"}{...}
{vieweralsosee "[R] logistic postestimation" "help logistic_postestimation_zh"}{...}
{vieweralsosee "[R] lv" "help lv_zh"}{...}
{vieweralsosee "[R] 回归后验诊断图" "help regress_postestimation_plots_zh"}{...}
{viewerjumpto "语法" "diagnostic plots##syntax"}{...}
{viewerjumpto "菜单" "diagnostic plots##menu"}{...}
{viewerjumpto "描述" "diagnostic plots##description"}{...}
{viewerjumpto "PDF 文档链接" "diagnostic_plots_zh##linkspdf"}{...}
{viewerjumpto "symplot、quantile 和 qqplot 的选项" "diagnostic plots##options_symplot"}{...}
{viewerjumpto "qnorm 和 pnorm 的选项" "diagnostic plots##options_qnorm"}{...}
{viewerjumpto "qchi 和 pchi 的选项" "diagnostic plots##options_qchi"}{...}
{viewerjumpto "示例" "diagnostic plots##examples"}
{help diagnostic_plots:English Version}
{hline}{...}
{p2colset 1 25 27 2}{...}
{p2col:{bf:[R] 诊断图} {hline 2}}分布诊断图{p_end}
{p2col:}({mansection R Diagnosticplots:查看完整 PDF 手册条目}){p_end}
{p2colreset}{...}


{marker syntax}{...}
{title:语法}

{phang}对称图

{phang2}
{cmd:symplot}
{varname} 
{ifin}
[{cmd:,} {it:{help diagnostic_plots##options1:options1}}]


{phang}变量名的有序值与均匀分布的分位数之间的关系

{phang2}
{cmd:quantile} 
{varname} 
{ifin}
[{cmd:,} {it:{help diagnostic_plots##options1:options1}}]


{phang}变量名1的分位数与变量名2的分位数之间的关系

{phang2}{cmd:qqplot}
{it:{help varname_zh:varname1}}
{it:{help varname_zh:varname2}}
{ifin}
[{cmd:,} {it:{help diagnostic_plots##options1:options1}}]


{phang}变量名的分位数与正态分布的分位数之间的关系

{phang2}{cmd:qnorm}
{varname}
{ifin}
[{cmd:,} {it:{help diagnostic_plots##options2:options2}}]


{phang}标准化的正态概率图

{phang2}{cmd:pnorm}
{varname}
{ifin}
[{cmd:,} {it:{help diagnostic_plots##options2:options2}}]


{phang}变量名的分位数与卡方分布的分位数之间的关系

{phang2}{cmd:qchi}
{varname}
{ifin}
[{cmd:,} {it:{help diagnostic_plots##options3:options3}}]


{phang}卡方概率图

{phang2}{cmd:pchi}
{varname}
{ifin}
[{cmd:,} {it:{help diagnostic_plots##options3:options3}}]


{synoptset 25 tabbed}{...}
{marker options1}{...}
{synopthdr :options1}
{synoptline}
{syntab :图形}
INCLUDE help gr_markopt2

{syntab:参考线}
{synopt :{opth rlop:ts(cline_options)}}影响参考线的呈现{p_end}

{syntab:添加图形}
{synopt :{opth "addplot(addplot_option:plot)"}}将其他图形添加到生成的图中{p_end}

{syntab:Y 轴, X 轴, 标题, 图例, 整体}
{synopt :{it:twoway_options}}除 {cmd:by()} 外的任何选项，具体见 {manhelpi twoway_options G-3}{p_end}
{synoptline}
{p2colreset}{...}

{synoptset 25 tabbed}{...}
{marker options2}{...}
{synopthdr :options2}
{synoptline}
{syntab :主要}
{synopt :{opt g:rid}}添加网格线{p_end}

{syntab:图}
INCLUDE help gr_markopt2

{syntab:参考线}
{synopt :{opth rlop:ts(cline_options)}}影响参考线的呈现{p_end}

{syntab:添加图形}
{synopt :{opth "addplot(addplot_option:plot)"}}将其他图形添加到生成的图中{p_end}

{syntab:Y 轴, X 轴, 标题, 图例, 整体}
{synopt :{it:twoway_options}}除 {cmd:by()} 外的任何选项，具体见 {manhelpi twoway_options G-3}{p_end}
{synoptline}


{synoptset 25 tabbed}{...}
{marker options3}{...}
{synopthdr :options3}
{synoptline}
{syntab:主要}
{synopt :{opt g:rid}}添加网格线{p_end}
{synopt :{opt df(#)}}卡方分布的自由度；默认值为 {cmd:df(1)}{p_end}

{syntab:图}
INCLUDE help gr_markopt2

{syntab:参考线}
{synopt :{opth rlop:ts(cline_options)}}影响参考线的呈现{p_end}

{syntab:添加图形}
{synopt :{opth "addplot(addplot_option:plot)"}}将其他图形添加到生成的图中{p_end}

{syntab:Y 轴, X 轴, 标题, 图例, 整体}
{synopt :{it:twoway_options}}除 {cmd:by()} 外的任何选项，具体见 {manhelpi twoway_options G-3}{p_end}
{synoptline}
{p2colreset}{...}


{marker menu}{...}
{title:菜单}

    {title:symplot}

{phang2}
{bf:统计 > 摘要、表格和检验 >}
    {bf:分布图和检验 > 对称图}

    {title:quantile}

{phang2}
{bf:统计 > 摘要、表格和检验 >}
     {bf:分布图和检验 > 分位数图}

    {title:qqplot}

{phang2}
{bf:统计 > 摘要、表格和检验 >}
      {bf:分布图和检验 > 分位数-分位数图}

    {title:qnorm}

{phang2}
{bf:统计 > 摘要、表格和检验 >}
      {bf:分布图和检验 > 正态分位数图}

    {title:pnorm}

{phang2}
{bf:统计 > 摘要、表格和检验 >}
     {bf:分布图和检验 > 标准化的正态概率图}

    {title:qchi}

{phang2}
{bf:统计 > 摘要、表格和检验 >}
     {bf:分布图和检验 > 卡方分位数图}

    {title:pchi}

{phang2}
{bf:统计 > 摘要、表格和检验 >}
      {bf:分布图和检验 > 卡方概率图}


{marker description}{...}
{title:描述}

{pstd}
{cmd:symplot} 绘制 {varname} 的对称图。

{pstd}
{cmd:quantile} 将 {it:varname} 的有序值绘制与均匀分布的分位数。

{pstd}
{cmd:qqplot} 将 {it:varname1} 的分位数与 {it:varname2} 的分位数（Q-Q 图）绘制。

{pstd}
{cmd:qnorm} 将 {it:varname} 的分位数与正态分布的分位数绘制（Q-Q 图）。

{pstd}
{cmd:pnorm} 绘制标准化的正态概率图（P-P 图）。

{pstd}
{cmd:qchi} 将 {it:varname} 的分位数与卡方分布的分位数绘制（Q-Q 图）。

{pstd}
{cmd:pchi} 绘制卡方概率图（P-P 图）。

{pstd}
有关回归诊断图，请参见 {manhelp regress_postestimation_plots R:回归后验诊断图}，
有关逻辑回归诊断图，请参见 {manhelp logistic_postestimation R:逻辑回归后验}。


{marker linkspdf}{...}
{title:PDF文档链接}

        {mansection R DiagnosticplotsQuickstart:快速入门}

        {mansection R DiagnosticplotsRemarksandexamples:备注和示例}

        {mansection R DiagnosticplotsMethodsandformulas:方法和公式}

{pstd}
上述部分不包括在此帮助文件中。


{marker options_symplot}{...}
{title:symplot、quantile 和 qqplot 的选项}

{dlgtab:图}

INCLUDE help gr_markoptf

{dlgtab:参考线}

{phang}
{opt rlopts(cline_options)} 影响参考线的呈现；见 {manhelpi cline_options G-3}。

{dlgtab:添加图形}

{phang}
{opt addplot(plot)} 提供将其他图形添加到生成的图中的方法；见 {manhelpi addplot_option G-3}。

{dlgtab:Y 轴, X 轴, 标题, 图例, 整体}

{phang} {it:twoway_options} 是在 {manhelpi twoway_options G-3} 文档中记录的任何选项，不包括 {opt by()}。这些包括用于为图表命名的选项（见 {manhelpi title_options G-3}）和将图形保存到磁盘的选项（见 {manhelpi saving_option G-3}）。


{marker options_qnorm}{...}
{title:qnorm 和 pnorm 的选项}

{dlgtab:主要}

{phang}
{opt grid} 在指定 {cmd:qnorm} 时在 0.05、0.10、0.25、0.50、0.75、0.90 和 0.95 分位数处添加网格线。使用 {cmd:pnorm} 时，{opt grid} 等同于 {cmd:yline(.25, .5, .75)} 
{cmd:xline(.25, .5, .75)}。 

{dlgtab:图}

INCLUDE help gr_markoptf

{dlgtab:参考线}

{phang}
{opt rlopts(cline_options)} 影响参考线的呈现；见 {manhelpi cline_options G-3}。

{dlgtab:添加图形}

{phang}
{opt addplot(plot)} 提供将其他图形添加到生成的图中的方法；见 {manhelpi addplot_option G-3}。

{dlgtab :Y 轴, X 轴, 标题, 图例, 整体}

{phang}
{it:twoway_options} 是在 {manhelpi twoway_options G-3} 文档中记录的任何选项，不包括 {opt by()}。这些包括用于为图表命名的选项（见 {manhelpi title_options G-3}）和将图形保存到磁盘的选项（见 {manhelpi saving_option G-3}）。


{marker options_qchi}{...}
{title:qchi 和 pchi 的选项}

{dlgtab:主要}

{phang}
{opt grid} 在指定 {cmd:qchi} 时在 0.05、0.10、0.25、0.50、0.75、0.90 和 0.95 分位数处添加网格线。使用 {cmd:pchi} 时，{opt grid} 等同于 {cmd:yline(.25, .5, .75)} 
{cmd:xline(.25, .5, .75)}。

{phang}
{opt df(#)} 指定卡方分布的自由度。默认值为 {cmd:df(1)}。

{dlgtab:图}

INCLUDE help gr_markoptf

{dlgtab:参考线}

{phang}
{opt rlopts(cline_options)} 影响参考线的呈现；见 {manhelpi cline_options G-3}。

{dlgtab:添加图形}

{phang}
{opt addplot(plot)} 提供将其他图形添加到生成的图中的方法；见 {manhelpi addplot_option G-3}。

{dlgtab :Y 轴, X 轴, 标题, 图例, 整体}

{phang}
{it:twoway_options} 是在 {manhelpi twoway_options G-3} 文档中记录的任何选项，不包括 {opt by()}。这些包括用于为图表命名的选项（见 {manhelpi title_options G-3}）和将图形保存到磁盘的选项（见 {manhelpi saving_option G-3}）。


{marker examples}{...}
{title:示例}

{pstd}设置{p_end}
{phang2}{cmd:. sysuse auto}{p_end}

{pstd}变量 {cmd:price} 的对称图{p_end}
{phang2}{cmd:. symplot price}{p_end}

{pstd}变量 {cmd:price} 的有序值与均匀分布的分位数之间的关系{p_end}
{phang2}{cmd:. quantile price}{p_end}

{pstd}变量 {cmd:weightd} 的分位数与变量 {cmd:weightf} 的分位数之间的关系{p_end}
{phang2}{cmd:. generate weightd=weight if !foreign}{p_end}
{phang2}{cmd:. generate weightf=weight if foreign}{p_end}
{phang2}{cmd:. qqplot weightd weightf}{p_end}

{pstd}变量 {cmd:price} 的分位数与正态分布的分位数之间的关系{p_end}
{phang2}{cmd:. qnorm price}{p_end}
{phang2}{cmd:. qnorm price, grid}{space 2}(添加网格背景){p_end}

{pstd}变量 {cmd:price} 的标准化正态概率图{p_end}
{phang2}{cmd:. pnorm price}{p_end}
{phang2}{cmd:. pnorm price, grid}{space 2}(添加网格背景){p_end}

{pstd}变量 {cmd:ch} 的分位数与卡方分布的分位数之间的关系{p_end}
{phang2}{cmd:. egen c1 = std(price)}{p_end}
{phang2}{cmd:. egen c2 = std(mpg)}{p_end}
{phang2}{cmd:. generate ch = c1^2 + c2^2}{p_end}
{phang2}{cmd:. qchi ch, df(2) grid}

{pstd}卡方概率图{p_end}
{phang2}{cmd:. pchi ch, df(2) grid}{p_end}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <diagnostic_plots.sthlp>}