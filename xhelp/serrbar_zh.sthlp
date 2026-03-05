{smcl}
{* *! version 1.1.11  18sep2018}{...}
{viewerdialog serrbar "dialog serrbar"}{...}
{vieweralsosee "[R] serrbar" "mansection R serrbar"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[R] QC" "help qc_zh"}{...}
{viewerjumpto "语法" "serrbar_zh##syntax"}{...}
{viewerjumpto "菜单" "serrbar_zh##menu"}{...}
{viewerjumpto "描述" "serrbar_zh##description"}{...}
{viewerjumpto "PDF文档链接" "serrbar_zh##linkspdf"}{...}
{viewerjumpto "选项" "serrbar_zh##options"}{...}
{viewerjumpto "示例" "serrbar_zh##examples"}
{help serrbar:English Version}
{hline}{...}
{p2colset 1 16 18 2}{...}
{p2col:{bf:[R] serrbar} {hline 2}}绘制标准误差条形图{p_end}
{p2col:}({mansection R serrbar:查看完整的 PDF 手册条目}){p_end}
{p2colreset}{...}


{marker syntax}{...}
{title:语法}

{p 8 16 2}
{cmd:serrbar}
{it:mvar}
{it:svar}
{it:xvar}
{ifin}
[{cmd:,} {it:options}]

{synoptset 27 tabbed}
{synopthdr}
{synoptline}
{syntab:主}
{synopt:{opt sc:ale(#)}}控制图形条形的长度；默认值为
{cmd:scale(1)}{p_end}

{syntab:误差条}
{synopt:{it:{help twoway_rcap_zh:rcap_options}}}影响带帽尖峰的呈现{p_end}

{syntab:绘制的点}
{synopt:{opth mvop:ts(scatter:scatter_options)}}影响绘制的点的呈现{p_end}

{syntab:添加图形}
{synopt:{opth "addplot(addplot_option:plot)"}}向生成的图形添加其他图形{p_end}

{syntab:Y轴，X轴，标题，图例，总体}
{synopt:{it:twoway_options}}在 {manhelpi twoway_options G-3} 中记录的所有选项，除了 {opt by()}{p_end}
{synoptline}
{p2colreset}{...}


{marker menu}{...}
{title:菜单}

{phang}
{bf:统计 > 其他 > 质量控制 > 标准误差条形图}


{marker description}{...}
{title:描述}

{pstd}
{opt serrbar} 通常与包含均值、标准偏差或标准误差的数据集以及一个 {it:xvar} 一起使用。{cmd:serrbar} 使用这些数据创建标准误差条形图。均值相对于 {it:xvar} 绘制，均值周围的误差条宽度由标准偏差或标准误差决定。虽然通常使用 {cmd:serrbar} 与此类数据，但 {cmd:serrbar} 也可用于为其他类型数据创建带误差条的散点图。


{marker linkspdf}{...}
{title:PDF文档链接}

        {mansection R serrbarQuickstart:快速开始}

        {mansection R serrbarRemarksandexamples:备注与示例}

{pstd}
上述部分未包含在此帮助文件中。


{marker options}{...}
{title:选项}

{dlgtab:主}

{phang}
{opt scale(#)} 控制条形的长度。条形的上限和下限将为 {it:mvar} + {opt scale()} * {it:svar} 和 {it:mvar} - {opt scale()} * {it:svar}。默认值为 {cmd:scale(1)}。

{dlgtab:误差条}

{phang}
{it:rcap_options} 影响绘制的误差条（带帽尖峰）的呈现。请参见 {manhelp twoway_rcap G-2:graph twoway rcap}。

{dlgtab:绘制的点}

{phang}
{opt mvopts(scatter_options)} 影响绘制的点的呈现（{it:mvar} 对 {it:xvar}）。请参见 {manhelp scatter G-2:graph twoway scatter}。

{dlgtab:添加图形}

{phang}
{opt addplot(plot)} 提供了一种向生成的图形添加其他图形的方法；见 {manhelpi addplot_option G-3}。

{dlgtab:Y轴，X轴，标题，图例，总体}

{phang}
{it:twoway_options} 是在 {manhelpi twoway_options G-3} 中记录的任何选项，不包括 {opt by()}。这些包括图形标题的选项（见 {manhelpi title_options G-3}）和将图形保存到磁盘的选项（见 {manhelpi saving_option G-3}）。


{marker examples}{...}
{title:示例}

{phang}{cmd:. webuse assembly}{p_end}
{phang}{cmd:. serrbar mean std date, scale(2) yline(195)}{p_end}
{phang}{cmd:. serrbar mean std date, scale(2) title("观察到的重量变化") sub("旧金山工厂，1/8 到 1/6") yline(195) yaxis(1 2) ylab(195, axis(2)) ytitle("", axis(2))}
{p_end}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <serrbar.sthlp>}