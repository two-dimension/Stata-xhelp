{smcl}
{* *! version 1.2.16  19oct2017}{...}
{viewerdialog corrgram "dialog corrgram"}{...}
{viewerdialog ac "dialog ac"}{...}
{viewerdialog pac "dialog pac"}{...}
{vieweralsosee "[TS] corrgram" "mansection TS corrgram"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[TS] pergram" "help pergram_zh"}{...}
{vieweralsosee "[TS] tsset" "help tsset_zh"}{...}
{vieweralsosee "[TS] wntestq" "help wntestq_zh"}{...}
{viewerjumpto "Syntax" "corrgram_zh##syntax"}{...}
{viewerjumpto "Menu" "corrgram_zh##menu"}{...}
{viewerjumpto "Description" "corrgram_zh##description"}{...}
{viewerjumpto "Links to PDF documentation" "corrgram_zh##linkspdf"}{...}
{viewerjumpto "Options for corrgram" "corrgram_zh##options_corrgram"}{...}
{viewerjumpto "Options for ac and pac" "corrgram_zh##options_ac"}{...}
{viewerjumpto "Examples" "corrgram_zh##examples"}{...}
{viewerjumpto "Video example" "corrgram_zh##video"}{...}
{viewerjumpto "Stored results" "corrgram_zh##results"}
{help corrgram:English Version}
{hline}{...}
{p2colset 1 18 20 2}{...}
{p2col:{bf:[TS] corrgram} {hline 2}}制表和绘制自相关图{p_end}
{p2col:}({mansection TS corrgram:查看完整PDF手册条目}){p_end}
{p2colreset}{...}


{marker syntax}{...}
{title:语法}

{phang}自相关、偏自相关和综合（Q）统计量

{p 8 25 2}
{cmd:corrgram}
{varname}
{ifin}
[{cmd:,} {it:{help corrgram##corrgram_options:corrgram_options}}]


{phang}绘制带置信区间的自相关图

{p 8 25 2}
{cmd:ac}
{varname}
{ifin} 
[{cmd:,} {it:{help corrgram##ac_options:ac_options}}]


{phang}绘制带置信区间的偏自相关图

{p 8 25 2}
{cmd:pac}
{varname}
{ifin}
[{cmd:,} {it:{help corrgram##pac_options:pac_options}}]


{marker corrgram_options}{...}
{synoptset 25 tabbed}{...}
{synopthdr:corrgram_options}
{synoptline}
{syntab:主}
{synopt:{opt l:ags(#)}}计算{it:#}个自相关{p_end}
{synopt:{opt nopl:ot}}抑制基于字符的图{p_end}
{synopt:{opt yw}}使用Yule-Walker方程计算偏自相关{p_end}
{synoptline}

{marker ac_options}{...}
{synopthdr:ac_options}
{synoptline}
{syntab:主}
{synopt:{opt lag:s(#)}}计算{it:#}个自相关{p_end}
{synopt:{opth gen:erate(newvar)}}生成一个变量以保存自相关{p_end}
{synopt:{opt l:evel(#)}}设置置信水平；默认值为{cmd:level(95)}{p_end}
{synopt:{opt fft}}使用傅里叶变换计算自相关{p_end}

{syntab:绘图}
{p2col:{it:{help line_options_zh}}}更改掉线的外观{p_end}
INCLUDE help gr_markopt

{syntab:置信区间图}
{synopt:{opth ciop:ts(area_options)}}影响置信带的表现{p_end}

{syntab:添加图}
{synopt:{opth "addplot(addplot_option:plot)"}}将其他图添加到生成的图中{p_end}

{syntab:Y轴，X轴，标题，图例，整体}
{synopt:{it:twoway_options}}任何不包括在{opt by()}中的选项，详见{manhelpi twoway_options G-3}{p_end}
{synoptline}

{marker pac_options}{...}
{synopthdr:pac_options}
{synoptline}
{syntab:主}
{synopt:{opt lag:s(#)}}计算{it:#}个偏自相关{p_end}
{synopt:{opth gen:erate(newvar)}}生成一个变量以保存偏自相关{p_end}
{synopt:{opt yw}}使用Yule-Walker方程计算偏自相关{p_end}
{synopt:{opt l:evel(#)}}设置置信水平；默认值为{cmd:level(95)}{p_end}

{syntab:绘图}
{p2col:{it:{help line_options_zh}}}更改掉线的外观{p_end}
INCLUDE help gr_markopt

{syntab:置信区间图}
{synopt:{opth ciop:ts(area_options)}}影响置信带的表现{p_end}

{syntab:标准化残差图}
{synopt:{opt srv}}在图中包含标准化残差方差{p_end}
{synopt:{opth srvop:ts(marker_options)}}影响绘制的标准化残差方差（SRV）的表现{p_end}

{syntab:添加图}
{synopt:{opth "addplot(addplot_option:plot)"}}将其他图添加到生成的图中{p_end}

{syntab:Y轴，X轴，标题，图例，整体}
{synopt:{it:twoway_options}}任何不包括在{opt by()}中的选项，详见{manhelpi twoway_options G-3}{p_end}
{synoptline}

{p 4 6 2}
在使用{opt corrgram}、{opt ac}或{opt pac}之前，您必须{opt tsset}您的数据；请参见{manhelp tsset TS}。此外，如果您指定{opt fft}选项，时间序列必须在样本中是密集的（没有缺失且时间变量没有间隔）。
{p_end}
{p 4 6 2}
{it:varname}可以包含时间序列运算符；请参见{help tsvarlist_zh}。


{marker menu}{...}
{title:菜单}

    {title:corrgram}

{phang2}
{bf:统计 > 时间序列 > 图表 > 自相关与偏自相关}

    {title:ac}

{phang2}
{bf:统计 > 时间序列 > 图表 > 自相关图（ac）}

    {title:pac}

{phang2}
{bf:统计 > 时间序列 > 图表 > 偏自相关图（pac）}


{marker description}{...}
{title:描述}

{pstd}
{opt corrgram}生成自相关、偏自相关和综合（Q）统计量的表格。它还显示自相关和偏自相关的基于字符的图。有关Q统计量的更多信息，请参见{manhelp wntestq TS}。

{pstd}
{opt ac}生成自相关图，带有基于巴特利特公式的点置信区间，适用于MA(q)过程。

{pstd}
{opt pac}生成带有置信区间的偏自相关图，置信区间通过使用1/sqrt(n)的标准误差计算。每个滞后的残差方差可以选择性地包含在图中。


{marker linkspdf}{...}
{title:PDF文档链接}

        {mansection TS corrgramQuickstart:快速入门}

        {mansection TS corrgramRemarksandexamples:备注和示例}

        {mansection TS corrgramMethodsandformulas:方法和公式}

{pstd}
上述部分不包含在此帮助文件中。


{marker options_corrgram}{...}
{title:corrgram选项}

{dlgtab:主}

{phang}
{opt lags(#)}指定要计算的自相关数。默认值为min{floor(n/2) - 2, 40}，其中floor(n/2)是小于或等于n/2的最大整数。

{phang}
{opt noplot}防止基于字符的图出现在列出的自相关和偏自相关表中。

{phang}
{opt yw}指定偏自相关使用Yule-Walker方程计算，而不是使用默认的基于回归的技术。如果使用了{opt srv}，则不能使用{opt yw}。


{marker options_ac}{...}
{title:ac和pac选项}

{dlgtab:主}

{phang}
{opt lags(#)}指定要计算的自相关数。默认值为min{floor(n/2) - 2, 40}，其中floor(n/2)是小于或等于n/2的最大整数。

{phang}
{opth generate(newvar)}指定一个新变量以包含自相关（{opt ac}命令）或偏自相关（{opt pac}命令）值。如果使用了{opt nograph}选项，则需要此选项。

{pmore}
   {opt nograph}（在对话框中使用{opt generate()}时暗含）防止{opt ac}和{opt pac}构建图。此选项需要{opt generate()}选项。

{phang}
{opt yw}（仅适用于{cmd:pac}）指定偏自相关使用Yule-Walker方程计算，而不是使用默认的基于回归的技术。如果使用了{opt srv}，则不能使用{opt yw}。

{phang}
{opt level(#)}指定置信水平，作为百分比，用于{opt ac}或{opt pac}图中的置信带。默认值为{cmd:level(95)}或由{helpb set level}设置。

{phang}
{opt fft}（仅适用于{opt ac}）指定通过两个傅里叶变换计算自相关。此技术可能比简单地迭代请求的滞后数更快。

{dlgtab:绘图}

{phang}
{it:line_options}、{it:marker_options}和{it:marker_label_options}影响绘制的自相关（与{cmd:ac}）或偏自相关（与{cmd:pac}）的表现。

{phang2}
{it:line_options} 
    指定掉线的外观，包括图案、宽度和颜色；请参考{manhelpi line_options G-3}。

{phang2}
{it:marker_options}
    指定标记的外观。此外观包括标记符号、标记大小及其颜色和轮廓；请参考{manhelpi marker_options G-3}。

{phang2}
{it:marker_label_options}
    指定标记是否以及如何进行标记；请参考{manhelpi marker_label_options G-3}。

{dlgtab:置信区间图}

{phang}
{opt ciopts(area_options)}影响置信带的表现；见{manhelpi area_options G-3}。

{dlgtab:标准化残差图}

{phang}
{opt srv}（仅适用于{cmd:pac}）指定在偏自相关图中绘制标准化残差方差。{opt srv}不能与{opt yw}同时使用。

{phang}
{opt srvopts(marker_options)}（仅适用于{cmd:pac}）影响绘制的标准化残差方差的表现；请参考{manhelpi marker_options G-3}。此选项隐含了{opt srv}选项。

{dlgtab:添加图}

{phang}
{opt addplot(plot)}将指定图添加到生成的图中；请参考{manhelpi addplot_option G-3}。

{dlgtab:Y轴，X轴，标题，图例，整体}

{phang}
{it:twoway_options}是{manhelpi twoway_options G-3}中文档化的任何选项，不包括{opt by()}。这些包含标题图的选项（见{manhelp title_options G-3}）和将图保存到磁盘的选项（见{manhelpi saving_option G-3}）。
 

{marker examples}{...}
{title:示例}

{pstd}设置{p_end}
{phang2}{cmd:. webuse air2}

{pstd}列出自相关、偏自相关和Q统计量{p_end}
{phang2}{cmd:. corrgram air, lags(20)}

{pstd}绘制自相关图{p_end}
{phang2}{cmd:. ac air}

{pstd}绘制差分系列和季节差分系列的偏自相关{p_end}
{phang2}{cmd:. pac DS12.air, lags(20) srv}


{marker video}{...}
{title:视频示例}

{phang2}{browse "http://www.youtube.com/watch?v=uHqiTjiuL7o":自相关图和偏自相关图}


{marker results}{...}
{title:存储结果}

{pstd}
{cmd:corrgram}在{cmd:r()}中存储以下内容：

{synoptset 15 tabbed}{...}
{p2col 5 15 19 2: 标量}{p_end}
{synopt:{cmd:r(lags)}}滞后的数量{p_end}
{synopt:{cmd:r(ac}{it:#}{cmd:)}}滞后{it:#}的自相关{p_end}
{synopt:{cmd:r(pac}{it:#}{cmd:)}}滞后{it:#}的偏自相关{p_end}
{synopt:{cmd:r(q}{it:#}{cmd:)}}滞后{it:#}的Q统计量{p_end}

{synoptset 15 tabbed}{...}
{p2col 5 15 19 2: 矩阵}{p_end}
{synopt:{cmd:r(AC)}}自相关向量{p_end}
{synopt:{cmd:r(PAC)}}偏自相关向量{p_end}
{synopt:{cmd:r(Q)}}Q统计量向量{p_end}
{p2colreset}{...}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <corrgram.sthlp>}