{smcl}
{* *! version 1.0.3  19oct2017}{...}
{viewerdialog estat "dialog estat"}{...}
{vieweralsosee "[TS] estat sbcusum" "mansection TS estatsbcusum"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[TS] estat sbknown" "help estat sbknown"}{...}
{vieweralsosee "[TS] estat sbsingle" "help estat sbsingle"}{...}
{vieweralsosee "[TS] tsset" "help tsset_zh"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[R] regress" "help regress_zh"}{...}
{viewerjumpto "Syntax" "estat sbcusum##syntax"}{...}
{viewerjumpto "Menu for estat" "estat sbcusum##menu_estat"}{...}
{viewerjumpto "Description" "estat sbcusum##description"}{...}
{viewerjumpto "Links to PDF documentation" "estat_sbcusum_zh##linkspdf"}{...}
{viewerjumpto "Options" "estat sbcusum##options"}{...}
{viewerjumpto "Examples" "estat sbcusum##examples"}{...}
{viewerjumpto "Stored results" "estat sbcusum##results"}
{help estat_sbcusum:English Version}
{hline}{...}
{p2colset 1 23 25 2}{...}
{p2col:{bf:[TS] estat sbcusum} {hline 2}}参数稳定性累积和检验{p_end}
{p2col:}({mansection TS estatsbcusum:查看完整的 PDF 手册条目}){p_end}
{p2colreset}{...}


{marker syntax}{...}
{title:语法}

{p 8 16 2}
        {cmd:estat sbcusum}
	[{cmd:,} {it:options}]

{synoptset 34 tabbed}{...}
{synopthdr}
{synoptline}
{synopt :{opt rec:ursive}}使用递归残差的累积和; 默认值{p_end}
{synopt :{opt ols}}使用普通最小二乘（OLS）残差的累积和{p_end}
{synopt :{opth gen:erate(newvar)}}创建包含残差累积和的新变量 {it:newvar}{p_end}
{synopt :{opt l:evel(#)}}设置置信水平; 默认值为 {cmd:level(95)}{p_end}

{syntab:绘图}
{synopt :{opth recast:(graph twoway:plottype)}}使用 {it:plottype} 绘制累积和统计量{p_end}
{synopt :{it:{help cline_options_zh}}}影响绘制累积和统计量的线的表现{p_end}

{syntab:置信区间}
{synopt :{opth cbopts:(area_options:area_options)}}影响置信区间的表现{p_end}

{syntab :添加图形}
{synopt :{opth "addplot(addplot_option:plot)"}}将其他图形添加到累积和图形中{p_end}

{syntab :Y轴, X轴, 标题, 图例, 整体, 按}
{synopt :{it:twoway_options}}在 {manhelpi twoway_options G-3} 中记录的任何选项{p_end}
{synoptline}
{p2colreset}{...}
{p 4 6 2}
在使用 {cmd:estat sbcusum} 之前，您必须 {cmd:tsset} 数据; 参见 {help tsset_zh:[TS] tsset}。

包含帮助菜单_estat


{marker description}{...}
{title:描述}

{pstd}
{opt estat sbcusum} 进行检验，以确定时间序列回归中的系数是否随时间稳定。测试统计量由递归残差或普通最小二乘（OLS）残差的累积和构成。

{pstd}
{cmd:estat sbcusum} 要求当前的估计结果来自 {help regress_zh}。


{marker linkspdf}{...}
{title:PDF 文档链接}

        {mansection TS estatsbcusumQuickstart:快速开始}

        {mansection TS estatsbcusumRemarksandexamples:备注和实例}

        {mansection TS estatsbcusumMethodsandformulas:方法和公式}

{pstd}
上述部分未包含在此帮助文件中。


{marker options}{...}
{title:选项}

{phang}
{opt recursive} 
    计算使用递归残差的累积和（cusum）检验统计量，并绘制 cusum 图。这是默认选项。

{phang}
{opt ols} 
    计算使用 OLS 残差的 cusum 检验统计量，并绘制 cusum 图。

{phang}
{opth generate(newvar)} 创建一个新变量，其中包含每个时间段残差的 cusum。

{phang}
{opt level(#)} 指定置信区间的默认置信水平，％形式，当报告时计算。默认值为 {cmd:level(95)}，或者通过 {helpb set level} 设置。

{dlgtab:绘图}

{phang}
{opt recast(plottype)}
     指定使用 {it:plottype} 绘制 cusum 统计量。
     {it:plottype} 可以是 {cmd:scatter}, {cmd:line}, {cmd:connected},
     {cmd:area}, {cmd:bar}, {cmd:spike}, 或 {cmd:dropline}; 参见
     {manhelp graph_twoway G-2:graph twoway}。

{phang}
{it:cline_options} 
    影响绘制的 cusum 统计量的表现。{it:cline_options}
    如在 {manhelpi cline_options G-3} 中描述。
    当指定 {opt recast(plottype)} 时，绘图选项为适用于所指定的 {it:plottype} 的任何选项。

{dlgtab:置信区间}

{phang}
{opt cbopts(area_options)} 
    影响 cusum 统计量的置信区间的表现。{it:area_options} 如在
    {manhelpi area_options G-3} 中描述。

{dlgtab:添加图形}

{phang}
{opt addplot(plot)} 
    允许将更多 {opt graph twoway} 图形添加到图中；参见
    {manhelpi addplot_option G-3}。

{dlgtab:Y轴, X轴, 标题, 图例, 整体}

{phang}
{it:twoway_options} 
为在 {manhelpi twoway_options G-3} 中记录的任何选项，除了 {cmd:by()}。这些选项包括为图形命名的选项（见
{manhelpi title_options G-3}）和将图形保存到磁盘的选项（见
{manhelpi saving_option G-3}）。


{marker examples}{...}
{title:示例}

{pstd}设置{p_end}
{phang2}{cmd:. webuse wpi1}{p_end}
{phang2}{cmd:. regress D.ln_wpi}{p_end}

{pstd}使用递归残差的 cusum 检验均值稳定性{p_end}
{phang2}{cmd:. estat sbcusum}{p_end}

{pstd}使用 OLS 残差的 cusum 检验稳定性{p_end}
{phang2}{cmd:. estat sbcusum, ols}{p_end}


{marker results}{...}
{title:存储结果}

{pstd}
{cmd:estat sbcusum} 将以下内容存储在 {cmd:r()} 中：

{synoptset 15 tabbed}{...}
{p2col 5 15 19 2: 标量}{p_end}
{synopt:{cmd:r(cusum)}}检验统计量的值{p_end}
{synopt:{cmd:r(level)}}置信区间的置信水平{p_end}
{synopt:{cmd:r(df)}}自由度{p_end}

{p2col 5 15 19 2: 宏}{p_end}
{synopt:{cmd:r(statistic)}}使用的统计量名称; {cmd:recursive} 或
{cmd:ols}{p_end}
{synopt:{cmd:r(tmins)}}格式化后的最小时间{p_end}
{synopt:{cmd:r(tmaxs)}}格式化后的最大时间{p_end}

{p2col 5 15 19 2: 矩阵}{p_end}
{synopt:{cmd:r(cvalues)}}临界值向量{p_end}
{p2colreset}{...}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <estat_sbcusum.sthlp>}