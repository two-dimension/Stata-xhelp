{smcl}
{* *! version 1.1.10  19oct2017}{...}
{viewerdialog wntestb "dialog wntestb"}{...}
{vieweralsosee "[TS] wntestb" "mansection TS wntestb"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[TS] corrgram" "help corrgram_zh"}{...}
{vieweralsosee "[TS] cumsp" "help cumsp_zh"}{...}
{vieweralsosee "[TS] pergram" "help pergram_zh"}{...}
{vieweralsosee "[TS] tsset" "help tsset_zh"}{...}
{vieweralsosee "[TS] wntestq" "help wntestq_zh"}{...}
{viewerjumpto "Syntax" "wntestb_zh##syntax"}{...}
{viewerjumpto "Menu" "wntestb_zh##menu"}{...}
{viewerjumpto "Description" "wntestb_zh##description"}{...}
{viewerjumpto "Links to PDF documentation" "wntestb_zh##linkspdf"}{...}
{viewerjumpto "Options" "wntestb_zh##options"}{...}
{viewerjumpto "Examples" "wntestb_zh##examples"}{...}
{viewerjumpto "Stored results" "wntestb_zh##results"}
{help wntestb:English Version}
{hline}{...}
{p2colset 1 17 19 2}{...}
{p2col:{bf:[TS] wntestb} {hline 2}}巴特利特基于周期图的白噪声检验{p_end}
{p2col:}({mansection TS wntestb:查看完整的 PDF 手册条目}){p_end}
{p2colreset}{...}


{marker syntax}{...}
{title:语法}

{p 8 17 2}{cmd:wntestb} {varname} {ifin} 
[{cmd:,} {it:options}]

{synoptset 25 tabbed}{...}
{synopthdr}
{synoptline}
{syntab:Main}
{synopt :{opt ta:ble}}以表格而非图形输出结果{p_end}
{synopt :{opt l:evel(#)}}设置置信水平；默认为
  {cmd:level(95)}{p_end}

{syntab:Plot}
{synopt :{it:{help marker_options_zh}}}改变标记样式（颜色、大小等）{p_end}
{synopt :{it:{help marker_label_options_zh}}}添加标记标签； 
	改变样式或位置{p_end}
{synopt :{it:{help cline_options_zh}}}添加连接线；改变样式{p_end}

{syntab:Add plots}
{synopt :{opth "addplot(addplot_option:plot)"}}向生成的图形添加其他图{p_end}

{syntab:Y axis, X axis, Titles, Legend, Overall}
{synopt :{it:twoway_options}}任何在 {manhelpi twoway_options G-3} 中记录的，除{cmd:by()} 以外的选项{p_end}
{synoptline}
{p2colreset}{...}
{p 4 6 2} 在使用 {cmd:wntestb} 之前，您必须 {cmd:tsset} 数据；见 {help tsset_zh:[TS] tsset}。此外，指定样本中的时间序列必须是稠密的（时间变量没有缺失和间隔）。{p_end}
{p 4 6 2}{it:varname} 可以包含时间序列运算符；请见 {help tsvarlist_zh}。
{p_end}


{marker menu}{...}
{title:菜单}

{phang}
{bf:统计 > 时间序列 > 检验 > 巴特利特基于周期图的白噪声检验}


{marker description}{...}
{title:描述}

{pstd}
{cmd:wntestb} 执行巴特利特基于周期图的白噪声检验。结果默认以图形方式呈现，但可以选择以文本表格的形式呈现。


{marker linkspdf}{...}
{title:PDF 文档链接}

        {mansection TS wntestbQuickstart:快速入门}

        {mansection TS wntestbRemarksandexamples:备注和示例}

        {mansection TS wntestbMethodsandformulas:方法和公式}

{pstd}
上述部分未包含在此帮助文件中。


{marker options}{...}
{title:选项}

{dlgtab:Main}

{phang}
{opt table} 以表格形式显示检验结果，而不是默认的图形形式。

{phang}
{opt level(#)} 指定置信水平，以百分比表示，用于图中的置信带。默认值为 {cmd:level(95)} 或作为 {helpb set level} 所设置。

{dlgtab:Plot}

{phang}
{it:marker_options}
    指定标记的样式。样式包括标记符号、标记大小、颜色和轮廓；见 {manhelpi marker_options G-3}。

{phang}
{it:marker_label_options}
    指定标记是否及如何被标记； 
    见 {manhelpi marker_label_options G-3}。

{phang}
{it:cline_options} 
    指定点是否用线连接，以及这些线的样式；见 {manhelpi line_options G-3}。

{dlgtab:Add plots}

{phang}
{opt addplot(plot)} 向生成的图形添加指定的图；见 {manhelpi addplot_option G-3}。

{dlgtab:Y axis, X axis, Titles, Legend, Overall}

{phang}
{it:twoway_options} 是在 {manhelpi twoway_options G-3} 中记录的任何选项，排除 {opt by()}。这些包括图形标题选项（见 {manhelpi title_options G-3}）和将图形保存到磁盘的选项（见 {manhelpi saving_option G-3}）。


{marker examples}{...}
{title:示例}
 
{pstd}设置{p_end}
{phang2}{cmd:. drop _all}{p_end}
{phang2}{cmd:. set obs 100}{p_end}
{phang2}{cmd:. generate x1 = rnormal()}{p_end}
{phang2}{cmd:. generate time = _n}{p_end}
{phang2}{cmd:. tsset time}{p_end}

{pstd}对系列 {cmd:x1} 执行巴特利特基于周期图的白噪声检验{p_end}
{phang2}{cmd:. wntestb x1}{p_end}

{pstd}与上述相同，但将结果以表格形式呈现，而不是图形{p_end}
{phang2}{cmd:. wntestb x1, table}{p_end}


{marker results}{...}
{title:存储的结果}

{pstd}
{cmd:wntestb} 将以下内容存储在 {cmd:r()} 中：

{synoptset 15 tabbed}{...}
{p2col 5 15 19 2: 标量}{p_end}
{synopt:{cmd:r(stat)}}巴特利特统计量{p_end}
{synopt:{cmd:r(p)}}概率值{p_end}
{p2colreset}{...}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <wntestb.sthlp>}