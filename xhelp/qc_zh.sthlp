{smcl}
{* *! version 1.1.12  18sep2018}{...}
{viewerdialog cchart "dialog cchart"}{...}
{viewerdialog pchart "dialog pchart"}{...}
{viewerdialog rchart "dialog rchart"}{...}
{viewerdialog xchart "dialog xchart"}{...}
{viewerdialog shewhart "dialog shewhart"}{...}
{vieweralsosee "[R] QC" "mansection R QC"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[R] serrbar" "help serrbar_zh"}{...}
{viewerjumpto "Syntax" "qc_zh##syntax"}{...}
{viewerjumpto "Menu" "qc_zh##menu"}{...}
{viewerjumpto "Description" "qc_zh##description"}{...}
{viewerjumpto "Links to PDF documentation" "qc_zh##linkspdf"}{...}
{viewerjumpto "Options" "qc_zh##options"}{...}
{viewerjumpto "Examples" "qc_zh##examples"}{...}
{viewerjumpto "Stored results" "qc_zh##results"}
{help qc:English Version}
{hline}{...}
{p2colset 1 11 13 2}{...}
{p2col:{bf:[R] QC} {hline 2}}质量控制图{p_end}
{p2col:}({mansection R QC:查看完整PDF手册条目}){p_end}
{p2colreset}{...}


{marker syntax}{...}
{title:语法}

{phang}
绘制 c 图

{p 8 15 2}
{cmd:cchart} {it:defect_var} {it:unit_var} [{cmd:,} {it:{help qc##cchart_options:cchart_options}}]


{phang}
绘制 p（不合格品比例）图

{p 8 15 2}
{cmd:pchart} {it:reject_var} {it:unit_var} {it:ssize_var}
	[{cmd:,} {it:{help qc##pchart_options:pchart_options}}]


{phang}
绘制 R（范围或分散）图

{p 8 15 2}
{cmd:rchart} {varlist} {ifin} [{cmd:,} {it:{help qc##rchart_options:rchart_options}}]


{phang}
绘制 X-bar（控制线）图

{p 8 15 2}
{cmd:xchart} {varlist} {ifin} [{cmd:,} {it:{help qc##xchart_options:xchart_options}}]


{phang}
绘制垂直对齐的 X-bar 和 R 图

{p 8 17 2}
{cmd:shewhart} {varlist} {ifin} [{cmd:,} {it:{help qc##shewhart_options:shewhart_options}}]


{synoptset 25 tabbed}{...}
{marker cchart_options}{...}
{synopthdr :cchart_options}
{synoptline}
{syntab :主要}
{synopt :{opt nogr:aph}}抑制图形{p_end}

{syntab :绘图}
{synopt :{it:{help connect_options_zh}}}影响绘制点的渲染{p_end}
INCLUDE help gr_markopt

{syntab :控制限}
{synopt :{opth clop:ts(cline_options)}}影响控制限的渲染{p_end}

{syntab :添加图形}
{synopt :{opth "addplot(addplot_option:plot)"}}向生成的图形添加其他图形{p_end}

{syntab :Y 轴, X 轴, 标题, 图例, 整体}
{synopt :{it:twoway_options}}文档中除 {opt by()} 以外的任何选项
     {manhelpi twoway_options G-3}{p_end}
{synoptline}
{p2colreset}{...}

{synoptset 25 tabbed}{...}
{marker pchart_options}{...}
{synopthdr :pchart_options}
{synoptline}
{syntab :主要}
{synopt :{opt sta:bilized}}当样本量不等时，稳定 p 图{p_end}
{synopt :{opt nogr:aph}}抑制图形{p_end}
{synopt:{opth g:enerate(newvar:newvar_f newvar_lcl newvar_ucl)}}存储缺陷元素的比例及上下控制限{p_end}

{syntab :绘图}
{synopt :{it:{help connect_options_zh}}}影响绘制点的渲染{p_end}
INCLUDE help gr_markopt

{syntab :控制限}
{synopt :{opth clop:ts(cline_options)}}影响控制限的渲染{p_end}

{syntab :添加图形}
{synopt :{opth "addplot(addplot_option:plot)"}}向生成的图形添加其他图形{p_end}

{syntab :Y 轴, X 轴, 标题, 图例, 整体}
{synopt :{it:twoway_options}}文档中除 {opt by()} 以外的任何选项
      {manhelpi twoway_options G-3}{p_end}
{synoptline}
{p2colreset}{...}

{synoptset 25 tabbed}{...}
{marker rchart_options}{...}
{synopthdr :rchart_options}
{synoptline}
{syntab :主要}
{synopt :{opt st:d(#)}}用户指定的标准差{p_end}
{synopt :{opt nogr:aph}}抑制图形{p_end}

{syntab :绘图}
{synopt :{it:{help connect_options_zh}}}影响绘制点的渲染{p_end}
INCLUDE help gr_markopt

{syntab :控制限}
{synopt :{opth clop:ts(cline_options)}}影响控制限的渲染{p_end}

{syntab :添加图形}
{synopt :{opth "addplot(addplot_option:plot)"}}向生成的图形添加其他图形{p_end}

{syntab :Y 轴, X 轴, 标题, 图例, 整体}
{synopt :{it:twoway_options}}文档中除 {opt by()} 以外的任何选项
     {manhelpi twoway_options G-3}{p_end}
{synoptline}
{p2colreset}{...}

{synoptset 25 tabbed}{...}
{marker xchart_options}{...}
{synopthdr :xchart_options}
{synoptline}
{syntab :主要}
{synopt :{opt st:d(#)}}用户指定的标准差{p_end}
{synopt :{opt m:ean(#)}}用户指定的均值{p_end}
{synopt :{opt lo:wer(#)} {opt up:per(#)}}X-bar 控制限的上下限{p_end}
{synopt :{opt nogr:aph}}抑制图形{p_end}

{syntab :绘图}
{synopt :{it:{help connect_options_zh}}}影响绘制点的渲染{p_end}
INCLUDE help gr_markopt

{syntab :控制限}
{synopt :{opth clop:ts(cline_options)}}影响控制限的渲染{p_end}

{syntab :添加图形}
{synopt :{opth "addplot(addplot_option:plot)"}}向生成的图形添加其他图形{p_end}

{syntab :Y 轴, X 轴, 标题, 图例, 整体}
{synopt :{it:twoway_options}}文档中除 {opt by()} 以外的任何选项
     {manhelpi twoway_options G-3}{p_end}
{synoptline}
{p2colreset}{...}

{synoptset 25 tabbed}{...}
{marker shewhart_options}{...}
{synopthdr :shewhart_options}
{synoptline}
{syntab :主要}
{synopt :{opt st:d(#)}}用户指定的标准差{p_end}
{synopt :{opt m:ean(#)}}用户指定的均值{p_end}
{synopt :{opt nogr:aph}}抑制图形{p_end}

{syntab :绘图}
{synopt :{it:{help connect_options_zh}}}影响绘制点的渲染{p_end}
INCLUDE help gr_markopt

{syntab :控制限}
{synopt :{opth clop:ts(cline_options)}}影响控制限的渲染{p_end}

{syntab :Y 轴, X 轴, 标题, 图例, 整体}
{synopt :{it:combine_options}}文档中记录的任何选项
   {manhelp graph_combine G-2:图形组合}{p_end}
{synoptline}
{p2colreset}{...}


{marker menu}{...}
{title:菜单}

    {title:cchart}

{phang2}
{bf:统计 > 其他 > 质量控制 > C 图}

    {title:pchart}

{phang2}
{bf:统计 > 其他 > 质量控制 > P 图}

    {title:rchart}

{phang2}
{bf:统计 > 其他 > 质量控制 > R 图}

    {title:xchart}

{phang2}
{bf:统计 > 其他 > 质量控制 > X-bar 图}

    {title:shewhart}

{phang2}
{bf:统计 > 其他 > 质量控制 > 垂直对齐的 X-bar 和 R 图}


{marker description}{...}
{title:描述}

{pstd}
这些命令提供标准的质量控制图。{cmd:cchart} 绘制 c 图； {cmd:pchart} 绘制 p（不合格品比例）图； {cmd:rchart} 绘制 R（范围或分散）图； {cmd:xchart} 绘制 X-bar（控制线）图； {cmd:shewhart} 绘制垂直对齐的 X-bar 和 R 图。


{marker linkspdf}{...}
{title:PDF 文档链接}

        {mansection R QCQuickstart:快速入门}

        {mansection R QCRemarksandexamples:备注和示例}

        {mansection R QCMethodsandformulas:方法和公式}

{pstd}
上述部分未包含在此帮助文件中。


{marker options}{...}
{title:选项}

{dlgtab:主要}

{phang}{opt stabilized} 当样本量不等时，稳定 p 图。

{phang}{opt std(#)} 指定过程的标准差。如果不指定此选项，则基于范围计算 R 图。

{phang}{opt mean(#)} 指定总体均值，若未指定则进行计算。

{phang}{opt lower(#)} 和 {opt upper(#)} 必须一起指定，或完全不指定。它们指定 X-bar 图的上下限。否则将使用基于均值和标准差（无论是通过选项指定或计算）的计算值。

{phang}{opt nograph} 抑制图形。

{phang}{opth "generate(newvar:newvar_f newvar_lcl newvar_ucl)"} 将绘图值存储在 p 图中。{it:newvar_f} 将包含不合格元素的比例； 
{it:newvar_lcl} 和 {it:newvar_ucl} 将分别包含下限和上限控制限。

{dlgtab:绘图}

{phang}
{it:connect_options} 影响是否连接绘制点的线和这些线的渲染；请参阅 {manhelpi connect_options G-3}。

INCLUDE help gr_markoptf

{dlgtab:控制限}

{phang}
{opt clopts(cline_options)} 影响控制限的渲染；见 {manhelpi cline_options G-3}。

{dlgtab:添加图形}

{phang}
{opt addplot(plot)} 提供向生成的图形添加其他图形的方法；请参阅 {manhelpi addplot_option G-3}。

{dlgtab:Y 轴, X 轴, 标题, 图例, 整体}

{phang}
{it:twoway_options} 是记录在 
{manhelpi twoway_options G-3} 中的任何选项，排除 {cmd:by()}。这些包括图形标题的选项（见 {manhelpi title_options G-3}）和将图形保存到磁盘的选项（见 {manhelpi saving_option G-3}）。

{phang}
{it:combine_options}（仅适用于 {cmd:shewhart}）是记录在 {helpb graph combine:[G-2] graph combine} 中的任何选项。这些包括图形标题的选项（见 {manhelpi title_options G-3}）和将图形保存到磁盘的选项（见 {manhelpi saving_option G-3}）。


{marker examples}{...}
{title:示例:  {cmd:cchart}}

{pstd}
假设变量 {cmd:day} 包含样本标识号，变量 {cmd:defects} 包含样本中的缺陷数量：

{phang2}{cmd:. webuse ncu}{p_end}
{phang2}{cmd:. cchart defects day, title(C 图用于子组件)}


{title:示例:  {cmd:pchart}}

{pstd}
假设变量 {cmd:day} 包含检查的日子（1, 2，...），变量 {cmd:rejects} 包含被拒绝的数量，变量 {cmd:ssize} 包含检查的数量：

{phang2}{cmd:. webuse ncu2}{p_end}
{phang2}{cmd:. pchart rejects day ssize}


{title:示例:  {cmd:rchart}}

{pstd}
假设我们取五个样本，每个样本有5个观测值。变量 {cmd:m1} 到 {cmd:m5} 包含每个样本的测量值：

{phang2}{cmd:. webuse rchartxmpl}{p_end}
{phang2}{cmd:. rchart m1-m5, connect(l)}


{title:示例:  {cmd:xchart}}

{pstd}
使用与 {cmd:rchart} 相同的数据：

{phang2}
{cmd:. xchart m1-m5, connect(l)}


{title:示例:  {cmd:shewhart}}

{pstd}
使用与 {cmd:rchart} 相同的数据：

{phang2}
{cmd:. shewhart m1-m5, connect(l)}


{marker results}{...}
{title:存储结果}

{pstd}
{cmd:cchart} 在 {cmd:r()} 中存储以下内容：

{synoptset 17 tabbed}{...}
{p2col 5 17 19 2: 标量}{p_end}
{synopt:{cmd:r(cbar)}}期望的不合格数{p_end}
{synopt:{cmd:r(lcl_c)}}下控制限{p_end}
{synopt:{cmd:r(ucl_c)}}上控制限{p_end}
{synopt:{cmd:r(N)}}观察次数{p_end}
{synopt:{cmd:r(out_c)}}超出控制的单位数{p_end}
{synopt:{cmd:r(below_c)}}低于下限的单位数{p_end}
{synopt:{cmd:r(above_c)}}高于上限的单位数{p_end}
{p2colreset}{...}

{pstd}
{cmd:pchart} 在 {cmd:r()} 中存储以下内容：

{synoptset 17 tabbed}{...}
{p2col 5 17 19 2: 标量}{p_end}
{synopt:{cmd:r(pbar)}}不合格比例的平均值{p_end}
{synopt:{cmd:r(lcl_p)}}下控制限{p_end}
{synopt:{cmd:r(ucl_p)}}上控制限{p_end}
{synopt:{cmd:r(N)}}观察次数{p_end}
{synopt:{cmd:r(out_p)}}超出控制的单位数{p_end}
{synopt:{cmd:r(below_p)}}低于下限的单位数{p_end}
{synopt:{cmd:r(above_p)}}高于上限的单位数{p_end}
{p2colreset}{...}


{pstd}
{cmd:rchart} 在 {cmd:r()} 中存储以下内容：

{synoptset 17 tabbed}{...}
{p2col 5 17 19 2: 标量}{p_end}
{synopt:{cmd:r(central_line)}}中央线的纵坐标{p_end}
{synopt:{cmd:r(lcl_r)}}下控制限{p_end}
{synopt:{cmd:r(ucl_r)}}上控制限{p_end}
{synopt:{cmd:r(N)}}观察次数{p_end}
{synopt:{cmd:r(out_r)}}超出控制的单位数{p_end}
{synopt:{cmd:r(below_r)}}低于下限的单位数{p_end}
{synopt:{cmd:r(above_r)}}高于上限的单位数{p_end}
{p2colreset}{...}

{pstd}
{cmd:xchart} 在 {cmd:r()} 中存储以下内容：

{synoptset 17 tabbed}{...}
{p2col 5 17 19 2: 标量}{p_end}
{synopt:{cmd:r(xbar)}}总体均值{p_end}
{synopt:{cmd:r(lcl_x)}}下控制限{p_end}
{synopt:{cmd:r(ucl_x)}}上控制限{p_end}
{synopt:{cmd:r(N)}}观察次数{p_end}
{synopt:{cmd:r(out_x)}}超出控制的单位数{p_end}
{synopt:{cmd:r(below_x)}}低于下限的单位数{p_end}
{synopt:{cmd:r(above_x)}}高于上限的单位数{p_end}
{p2colreset}{...}

{pstd}
{cmd:shewhart} 在 {cmd:r()} 中存储来自 {cmd:xchart} 和 {cmd:rchart} 的结果的组合。
{p_end}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <qc.sthlp>}