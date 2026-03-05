{smcl}
{* *! version 1.2.2  19oct2017}{...}
{viewerdialog rocplot "dialog rocplot"}{...}
{vieweralsosee "[R] rocfit postestimation" "mansection R rocfitpostestimation"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[R] rocfit" "help rocfit_zh"}{...}
{viewerjumpto "后估计命令" "rocfit postestimation##description"}{...}
{viewerjumpto "PDF文档链接" "rocfit_postestimation_zh##linkspdf"}{...}
{viewerjumpto "rocplot" "rocfit postestimation##syntax_rocplot"}{...}
{viewerjumpto "示例" "rocfit postestimation##examples"}
{help rocfit_postestimation:English Version}
{hline}{...}
{p2colset 1 30 32 2}{...}
{p2col:{bf:[R] rocfit postestimation} {hline 2}}rocfit的后估计工具{p_end}
{p2col:}({mansection R rocfitpostestimation:查看完整PDF手册条目}){p_end}
{p2colreset}{...}


{marker description}{...}
{title:后估计命令}

{pstd}
以下命令在执行 {opt rocfit} 后特别重要：

{synoptset 17}{...}
{p2coldent:命令}描述{p_end}
{synoptline}
{synopt:{helpb rocfit_postestimation##rocplot:rocplot}}绘制拟合的ROC曲线和同时的置信区间{p_end}
{synoptline}
{p2colreset}{...}

{pstd}
以下标准后估计命令也可用：

{synoptset 17 tabbed}{...}
{p2coldent:命令}描述{p_end}
{synoptline}
INCLUDE help post_estatic
INCLUDE help post_estatsum
INCLUDE help post_estatvce
INCLUDE help post_estimates
{p2coldent:* {help lincom_zh}}线性组合系数的点估计、标准误、检验和推断{p_end}
{p2coldent:* {help test_zh}}简单和复合线性假设的Wald检验{p_end}
{synoptline}
{p2colreset}{...}
{p 4 6 2}
* 请参见 
{mansection R rocfitpostestimationRemarksandexamplesUsinglincomandtest:{it:使用 lincom 和 test}} 在 {bf:[R] rocfit postestimation} 中。


{marker linkspdf}{...}
{title:PDF文档链接}

        {mansection R rocfitpostestimationRemarksandexamples:备注和示例}

{pstd}
上述部分未包含在此帮助文件中。


{marker syntax_rocplot}{...}
{marker rocplot}{...}
{title:rocplot的语法}

{p 8 16 2}
{cmd:rocplot} [{cmd:,} {it:rocplot_options}]

{synoptset 25 tabbed}{...}
{synopthdr:rocplot_options}
{synoptline}
{syntab:主要}
{synopt:{opt conf:band}}显示置信区间{p_end}
{synopt:{opt noref:line}}抑制绘制参考线{p_end}
{synopt:{opt l:evel(#)}}设定置信水平；默认值为 {cmd:level(95)}{p_end}

{syntab:图形}
{synopt:{cmdab:plotop:ts(}{it:{help rocfit_postestimation##plot_options:plot_options}}{cmd:)}}影响
	ROC点的绘制方式{p_end}

{syntab:拟合线}
{synopt:{cmdab:lineop:ts(}{it:{help cline_options_zh}}{cmd:)}}影响
	拟合ROC线的绘制方式{p_end}

{syntab:置信区间图}
{synopt:{opth ciop:ts(area_options)}}影响
	置信区间的绘制方式{p_end}

{syntab:参考线}
{synopt:{opth rlop:ts(cline_options)}}影响参考线的绘制方式{p_end}

{syntab:添加图形}
{synopt:{opth "addplot(addplot_option:plot)"}}向生成的图形中添加其他图形{p_end}

{syntab:Y轴、X轴、标题、图例、整体}
{synopt:{it:twoway_options}}所有除了 {opt by()} 外在 {manhelpi twoway_options G-3} 中记录的选项{p_end}
{synoptline}
{p2colreset}{...}

{marker plot_options}{...}
{synoptset 25}{...}
{synopthdr:plot_options}
{synoptline}
INCLUDE help gr_markopt2
INCLUDE help gr_clopt
{synoptline}


{marker menu_rocplot}{...}
{title:rocplot菜单}

{phang}
{bf:统计 > 流行病学及相关 > ROC分析 >}
         {bf:rocfit后的ROC曲线}


{marker des_rocplot}{...}
{title:rocplot的描述}

{pstd}
{opt rocplot} 绘制拟合的ROC曲线和同时的置信区间。


{marker options_rocplot}{...}
{title:rocplot的选项}

{dlgtab:主要}

{phang}
{opt confband} 指定在ROC曲线周围绘制同时的置信区间。

{phang}
{opt norefline} 抑制在ROC曲线的图形输出中绘制45度参考线。

{phang}
{opt level(#)} 指定置信区间的置信水平，以百分比表示。默认值为 {cmd:level(95)} 或由 {helpb set level} 设置。

{dlgtab:图形}

{phang}
{opt plotopts(plot_options)}
影响绘制的ROC点的样式，包括标记的大小和颜色、是否以及如何标记，以及如何连接这些点。有关可用的完整 {it:plot_options} 列表，请参见 
{manhelpi marker_options G-3}、{manhelpi marker_label_options G-3} 和 
{manhelpi cline_options G-3}。

{dlgtab:拟合线}

{phang}
{opt lineopts(cline_options)} 影响拟合ROC线的绘制方式；请参见 {manhelpi cline_options G-3}。

{dlgtab:置信区间图}

{phang}
{opt ciopts(area_options)} 影响置信区间的绘制方式；请参见 {manhelpi area_options G-3}。

{dlgtab:参考线}

{phang}
{opt rlopts(cline_options)} 影响参考线的绘制方式；请参见 {manhelpi cline_options G-3}。

{dlgtab:添加图形}

{phang}
{opt addplot(plot)} 提供了一种将其他图形添加到生成的图形中的方法；请参见 {manhelpi addplot_option G-3}。

{dlgtab:Y轴、X轴、标题、图例、整体}

{phang}
{it:twoway_options} 是在 {manhelpi twoway_options G-3} 中记录的任何选项，排除 {opt by()}。
这些包括图形标题设置的选项
(参见 {manhelpi title_options G-3}) 和将图形保存到磁盘的选项
(参见 {manhelpi saving_option G-3})。


{marker examples}{...}
{title:示例}

{pstd}设置{p_end}
{phang2}{cmd:. webuse hanley}{p_end}
{phang2}{cmd:. rocfit disease rating}{p_end}

{pstd}检验常数是否等于0{p_end}
{phang2}{cmd:. test [intercept]_cons}{p_end}

{pstd}绘制拟合的ROC曲线并包括置信区间{p_end}
{phang2}{cmd:. rocplot, confband}{p_end}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <rocfit_postestimation.sthlp>}