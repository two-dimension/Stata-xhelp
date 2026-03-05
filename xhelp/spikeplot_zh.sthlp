{smcl}
{* *! version 1.1.8  19oct2017}{...}
{viewerdialog spikeplot "dialog spikeplot"}{...}
{vieweralsosee "[R] spikeplot" "mansection R spikeplot"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[R] histogram" "help histogram_zh"}{...}
{viewerjumpto "语法" "spikeplot_zh##syntax"}{...}
{viewerjumpto "菜单" "spikeplot_zh##menu"}{...}
{viewerjumpto "描述" "spikeplot_zh##description"}{...}
{viewerjumpto "PDF文档链接" "spikeplot_zh##linkspdf"}{...}
{viewerjumpto "选项" "spikeplot_zh##options"}{...}
{viewerjumpto "示例" "spikeplot_zh##examples"}
{help spikeplot:English Version}
{hline}{...}
{p2colset 1 18 20 2}{...}
{p2col:{bf:[R] spikeplot} {hline 2}}尖峰图和根图{p_end}
{p2col:}({mansection R spikeplot:查看完整的 PDF 手册条目}){p_end}
{p2colreset}{...}


{marker syntax}{...}
{title:语法}

{p 8 18 2}
{cmd:spikeplot}
{varname}
{ifin}
[{it:{help spikeplot##weight:weight}}]
[{cmd:,} {it:options}]

{synoptset 18 tabbed}{...}
{synopthdr}
{synoptline}
{syntab:主要}
{synopt:{opt r:ound(#)}}将 {varname} 四舍五入到 {it:#} 的最接近倍数（箱宽）{p_end}
{synopt:{opt frac:tion}}使垂直尺度为总值的比例；默认是频率{p_end}
{synopt:{opt root}}使垂直尺度显示频率的平方根{p_end}

{syntab:绘图}
{synopt:{it:{help twoway_spike_zh:spike_options}}}影响绘制的尖峰的表现{p_end}

{syntab:添加图表}
{synopt:{opth "addplot(addplot_option:plot)"}}向生成的图形中添加其他图表{p_end}

{syntab:Y 轴, X 轴, 标题, 图例, 整体, 按}
{synopt:{it:twoway_options}}任何在 {manhelpi twoway_options G-3} 中记录的选项{p_end}
{synoptline}
{p2colreset}{...}
{marker weight}{...}
{p 4 6 2}
允许使用 {opt fweight}s, {opt aweight}s 和 {opt iweight}s；见 {help weight_zh}。


{marker menu}{...}
{title:菜单}

{phang}
{bf:图形 > 分布图 > 尖峰图和根图}


{marker description}{...}
{title:描述}

{pstd}
{opt spikeplot} 为变量生成频率图，其中频率表示为从零开始的垂直线。频率可以是计数、分数或计数的平方根（Tukey的根图，约1965年）。垂直线也可以从用户选择的非零基线开始。


{marker linkspdf}{...}
{title:PDF文档链接}

        {mansection R spikeplotQuickstart:快速入门}

        {mansection R spikeplotRemarksandexamples:备注和示例}

{pstd}
上述章节不包括在此帮助文件中。


{marker options}{...}
{title:选项}

{dlgtab:主要}

{phang}
{opt round(#)} 将 {varname} 的值四舍五入到 {it:#} 的最接近倍数。此操作有效地指定了箱宽。

{phang}
{opt fraction} 指定垂直尺度为总值的比例（百分比）而不是计数。

{phang}
{opt root} 指定垂直尺度显示平方根。 如果指定了 {opt fraction}，则不可再指定此选项。

{dlgtab:绘图}

{phang}
{it:spike_options} 影响绘制尖峰的表现；见 {manhelp twoway_spike G-2:图形 twoway spike}。

{dlgtab:添加图表}

{phang}
{opt addplot(plot)} 提供一种将其他图表添加到生成的图形中的方法；见 {manhelpi addplot_option G-3}。

{dlgtab:Y 轴, X 轴, 标题, 图例, 整体, 按}

{phang}
{it:twoway_options} 是在 {manhelpi twoway_options G-3} 中记录的选项。这些包括图表标题选项（见 {manhelpi title_options G-3}）、将图形保存到磁盘的选项（见 {manhelpi saving_option G-3}）以及 {opt by()} 选项（见 {manhelpi by_option G-3}）。


{marker examples}{...}
{title:示例}

    {hline}
{pstd}设置{p_end}
{phang2}{cmd:. webuse ghanaage}{p_end}

{pstd}尖峰图{p_end}
{phang2}{cmd:. spikeplot age [fw=pop], ytitle("以千为单位的人口")}
                {cmd:xlab(0(10)90) xmtick(5(10)85)}
		
    {hline}
{pstd}设置{p_end}
{phang2}{cmd:. webuse splotxmpl}{p_end}

{pstd}根图{p_end}
{phang2}{cmd:. spikeplot normal, round(.10) xlab(-4(1)4) root}{p_end}
    {hline}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <spikeplot.sthlp>}