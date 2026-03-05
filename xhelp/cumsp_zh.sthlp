{smcl}
{* *! version 1.1.8  17apr2018}{...}
{viewerdialog cumsp "dialog cumsp"}{...}
{vieweralsosee "[TS] cumsp" "mansection TS cumsp"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[TS] corrgram" "help corrgram_zh"}{...}
{vieweralsosee "[TS] pergram" "help pergram_zh"}{...}
{vieweralsosee "[TS] tsset" "help tsset_zh"}{...}
{viewerjumpto "语法" "cumsp_zh##syntax"}{...}
{viewerjumpto "菜单" "cumsp_zh##menu"}{...}
{viewerjumpto "描述" "cumsp_zh##description"}{...}
{viewerjumpto "PDF 文档链接" "cumsp_zh##linkspdf"}{...}
{viewerjumpto "选项" "cumsp_zh##options"}{...}
{viewerjumpto "示例" "cumsp_zh##example"}
{help cumsp:English Version}
{hline}{...}
{p2colset 1 15 17 2}{...}
{p2col:{bf:[TS] cumsp} {hline 2}}绘制累积谱分布图{p_end}
{p2col:}({mansection TS cumsp:查看完整PDF手册条目}){p_end}
{p2colreset}{...}


{marker syntax}{...}
{title:语法}

{p 8 14 2}
{cmd:cumsp}
{varname}
{ifin}
[{cmd:,} {it:options}]

{synoptset 22 tabbed}{...}
{synopthdr}
{synoptline}
{syntab:主要}
{synopt:{opth gen:erate(newvar)}}创建一个包含分布值的新变量 {it:newvar} {p_end}

{syntab:绘图}
{synopt:{it:{help cline_options_zh}}}影响由线连接的绘制点的呈现 {p_end}
INCLUDE help gr_markopt

{syntab:添加绘图}
{synopt:{opth "addplot(addplot_option:plot)"}}向生成的图形添加其他图 {p_end}

{syntab:Y 轴, X 轴, 标题, 图例, 整体}
{synopt:{it:twoway_options}}除 {opt by()} 外所有在 {manhelpi twoway_options G-3} 中记录的选项 {p_end}
{synoptline}
{p2colreset}{...}
{p 4 6 2}
您必须在使用 {opt cumsp} 之前对您的数据进行 {opt tsset}；请参阅 {manhelp tsset TS}。
此外，所指定的样本中的时间序列必须是密集的（无缺失值且时间变量没有间断）。
{p_end}
{p 4 6 2}
{it:varname} 可以包含时间序列运算符；请参阅 {help tsvarlist_zh}。
{p_end}


{marker menu}{...}
{title:菜单}

{phang}
{bf:统计 > 时间序列 > 图形 > 累积谱分布}


{marker description}{...}
{title:描述}

{pstd}
{opt cumsp} 绘制在自然频率下评估的累积样本谱分布函数（仅限密集时间序列）。


{marker linkspdf}{...}
{title:PDF 文档链接}

        {mansection TS cumspQuickstart:快速入门}

        {mansection TS cumspRemarksandexamples:备注和示例}

        {mansection TS cumspMethodsandformulas:方法和公式}

{pstd}
上述部分未包含在此帮助文件中。


{marker options}{...}
{title:选项}

{dlgtab:主要}

{phang}
{opth generate(newvar)} 指定一个新变量以包含估计的累积谱分布值。

{dlgtab:绘图}

{phang}
{it:cline_options} 影响由线连接的绘制点的呈现；请参阅 {manhelpi cline_options G-3}。

{phang}
{it:marker_options}
    指定标记的外观。此外观包括标记符号、标记大小及其颜色和轮廓；请参阅 {manhelpi marker_options G-3}。

{phang}
{it:marker_label_options}
    指定标记是否以及如何被标注；请参阅 {manhelpi marker_label_options G-3}。

{dlgtab:添加绘图}

{phang}
{opt addplot(plot)} 提供了一种将其他图添加到生成的图中的方式；请参阅 {manhelpi addplot_option G-3}。

{dlgtab:Y 轴, X 轴, 标题, 图例, 整体}

{phang}
{it:twoway_options} 是在 {manhelpi twoway_options G-3} 中记录的任何选项，除了 {opt by()}。这些选项包括图形标题的选项（见 {manhelpi title_options G-3}）和将图形保存到磁盘的选项（见 {manhelpi saving_option G-3}）。


{marker example}{...}
{title:示例}

{pstd}设置{p_end}
{phang2}{cmd:. webuse air2}

{pstd}绘制累积样本谱分布函数，并在频率 1/12 处绘制垂直线{p_end}
{phang2}{cmd:. cumsp air, xline(.083333333)}{p_end}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <cumsp.sthlp>}