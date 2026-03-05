{smcl}
{* *! version 1.1.10  19oct2017}{...}
{viewerdialog pergram "dialog pergram"}{...}
{vieweralsosee "[TS] pergram" "mansection TS pergram"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[TS] corrgram" "help corrgram_zh"}{...}
{vieweralsosee "[TS] cumsp" "help cumsp_zh"}{...}
{vieweralsosee "[TS] tsset" "help tsset_zh"}{...}
{vieweralsosee "[TS] wntestb" "help wntestb_zh"}{...}
{viewerjumpto "语法" "pergram_zh##syntax"}{...}
{viewerjumpto "菜单" "pergram_zh##menu"}{...}
{viewerjumpto "描述" "pergram_zh##description"}{...}
{viewerjumpto "PDF文档链接" "pergram_zh##linkspdf"}{...}
{viewerjumpto "选项" "pergram_zh##options"}{...}
{viewerjumpto "示例" "pergram_zh##examples"}
{help pergram:English Version}
{hline}{...}
{p2colset 1 17 19 2}{...}
{p2col:{bf:[TS] pergram} {hline 2}}周期图 {p_end}
{p2col:}({mansection TS pergram:查看完整的PDF手册条目}){p_end}
{p2colreset}{...}


{marker syntax}{...}
{title:语法}

{p 8 16 2}
{cmd:pergram}
{varname}
{ifin}
[{cmd:,}
{it:options}]

{synoptset 22 tabbed}{...}
{synopthdr}
{synoptline}
{syntab:主要}
{synopt:{opth gen:erate(newvar)}}生成 {it:newvar} 以包含原始周期图值{p_end}

{syntab:绘图}
{synopt:{it:{help cline_options_zh}}}影响通过线连接的绘图点的表现{p_end}
包含帮助 gr_markopt

{syntab:添加图形}
{synopt:{opth "addplot(addplot_option:plot)"}}将其他图形添加到生成的图表中{p_end}

{syntab:Y轴、X轴、标题、图例、整体}
{synopt:{it:twoway_options}}所有不包括 {opt by()} 的选项，详见 {manhelpi twoway_options G-3}{p_end}
{synopt :{opt nograph}}抑制图形{p_end}
{synoptline}
{p 4 6 2}
在使用 {opt pergram} 之前，必须先 {cmd:tsset} 数据；请参见 {help tsset_zh:[TS] tsset}。
此外，所指定样本中的时间序列必须是密集的（时间变量无缺失且没有间隔）。
{p_end}
{p 4 6 2}
{it:varname} 可以包含时间序列运算符；请参见 {help tsvarlist_zh}。
{p_end}
{p 4 6 2}{opt nograph} 不会出现在对话框中。{p_end}


{marker menu}{...}
{title:菜单}

{phang}
{bf:统计 > 时间序列 > 图形 > 周期图}


{marker description}{...}
{title:描述}

{pstd}
{opt pergram} 绘制密集时间序列的对数标准化周期图。


{marker linkspdf}{...}
{title:PDF文档链接}

        {mansection TS pergramQuickstart:快速开始}

        {mansection TS pergramRemarksandexamples:备注和示例}

        {mansection TS pergramMethodsandformulas:方法和公式}

{pstd}
上述部分未包含在此帮助文件中。


{marker options}{...}
{title:选项}

{dlgtab:主要}

{phang}
{opth generate(newvar)} 指定一个新变量以包含原始周期图值。生成的图形对这些值进行对数变换和样本方差缩放，然后在绘图前将其截断到 [-6,6] 区间。

{dlgtab:绘图}

{phang}
{it:cline_options} 影响通过线连接的绘图点的表现；详见 {manhelpi cline_options G-3}。

{phang}
{it:marker_options}
    指定标记的外观。此外观包括标记符号、标记大小及其颜色和轮廓；详见 {manhelpi marker_options G-3}。

{phang}
{it:marker_label_options}
    指定是否以及如何给标记打上标签；见 {manhelpi marker_label_options G-3}。

{dlgtab:添加图形}

{phang}
{opt addplot(plot)} 将指定图形添加到生成的图表中；详见 {manhelpi addplot_option G-3}。

{dlgtab:Y轴、X轴、标题、图例、整体}

{phang}
{it:twoway_options} 为在 {manhelpi twoway_options G-3} 中记录的任何选项，不包括 {opt by()}。这些选项包括图表标题（见 {manhelpi title_options G-3}）和将图表保存到磁盘（见 {manhelpi saving_option G-3}）。

{pstd}
以下选项可与 {opt pergram} 一起使用，但未在对话框中显示：

{phang}
{opt nograph} 防止 {opt pergram} 构建图形。


{marker examples}{...}
{title:示例}

    {hline}
{phang}{cmd:. webuse air2}{p_end}
{phang}{cmd:. pergram air}{p_end}
    {hline}
{phang}{cmd:. webuse lynx2}{p_end}
{phang}{cmd:. pergram lynx}{p_end}
    {hline}
{phang}{cmd:. webuse cos4}{p_end}
{phang}{cmd:. pergram sumfc, generate(ordinate)}{p_end}
    {hline}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <pergram.sthlp>}