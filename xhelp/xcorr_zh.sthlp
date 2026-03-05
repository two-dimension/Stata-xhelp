{smcl}
{* *! version 1.1.10  19oct2017}{...}
{viewerdialog xcorr "dialog xcorr"}{...}
{vieweralsosee "[TS] xcorr" "mansection TS xcorr"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[TS] corrgram" "help corrgram_zh"}{...}
{vieweralsosee "[TS] pergram" "help pergram_zh"}{...}
{vieweralsosee "[TS] tsset" "help tsset_zh"}{...}
{viewerjumpto "Syntax" "xcorr_zh##syntax"}{...}
{viewerjumpto "Menu" "xcorr_zh##menu"}{...}
{viewerjumpto "Description" "xcorr_zh##description"}{...}
{viewerjumpto "Links to PDF documentation" "xcorr_zh##linkspdf"}{...}
{viewerjumpto "Options" "xcorr_zh##options"}{...}
{viewerjumpto "Examples" "xcorr_zh##examples"}
{help xcorr:English Version}
{hline}{...}
{p2colset 1 15 17 2}{...}
{p2col:{bf:[TS] xcorr} {hline 2}}双变量时间序列的交叉相关图{p_end}
{p2col:}({mansection TS xcorr:查看完整的PDF手册条目}){p_end}
{p2colreset}{...}


{marker syntax}{...}
{title:语法}

{p 4 17 2}
{cmd:xcorr} {it:{help varname_zh:varname1}} {it:{help varname_zh:varname2}} {ifin}
[{cmd:,} {it:options}]

{synoptset 24 tabbed}{...}
{synopthdr}
{synoptline}
{syntab:主选项}
{synopt :{opth gen:erate(newvar)}}创建包含交叉相关值的 {it:newvar}{p_end}
{synopt :{opt tab:le}}以表格形式显示结果而不是图形输出{p_end}
{synopt :{opt noplot}}在表格输出中不包含基于字符的图{p_end}
{synopt :{opt lag:s(#)}}在图中包含 {it:#} 个滞后和前导{p_end}

{syntab:图形}
{p2col:{opt base(#)}}要丢弃的值；默认是 0{p_end}
{p2col:{it:{help marker_options_zh}}}改变标记的外观（颜色、大小等）{p_end}
{p2col:{it:{help marker_label_options_zh}}}添加标记标签；改变外观或位置{p_end}
{p2col:{it:{help line_options_zh}}}改变丢弃线条的外观{p_end}

{syntab:添加图形}
{synopt :{opth "addplot(addplot_option:plot)"}}向生成的图形添加其他图形{p_end}

{syntab:Y轴, X轴, 标题, 图例, 总体}
{synopt :{it:twoway_options}}除 {opt by()} 外的任何选项在 {manhelpi twoway_options G-3} 中有说明{p_end}
{synoptline}
{p2colreset}{...}
{p 4 6 2}在使用 {cmd:xcorr} 之前必须 {cmd:tsset} 数据；见 {help tsset_zh:[TS] tsset}.{p_end}
{p 4 6 2}{it:varname1} 和 {it:varname2} 可以包含时间序列运算符；见 {help tsvarlist_zh}.{p_end}


{marker menu}{...}
{title:菜单}

{phang}
{bf:统计 > 时间序列 > 图形 > 双变量时间序列的交叉相关图}


{marker description}{...}
{title:描述}

{pstd}
{cmd:xcorr} 绘制样本交叉相关函数。


{marker linkspdf}{...}
{title:PDF文档链接}

        {mansection TS xcorrQuickstart:快速入门}

        {mansection TS xcorrRemarksandexamples:备注和示例}

        {mansection TS xcorrMethodsandformulas:方法和公式}

{pstd}
以上部分不包括在此帮助文件中。


{marker options}{...}
{title:选项}

{dlgtab:主选项}

{phang}
{opth generate(newvar)} 指定一个新变量以包含交叉相关值。

{phang}
{opt table} 请求以表格形式呈现结果，而不是默认的图形。

{phang}
{opt noplot} 请求表格中不包含交叉相关的基于字符的图。

{phang}
{opt lags(#)} 指定在图中包含的滞后和前导数的数量。
默认值是使用 min{floor(n/2) - 2, 20}。

{dlgtab:图形}

{phang}
{opt base(#)} 指定线条应该延伸的值。
默认是 {cmd:base(0)}。

{phang}
{it:marker_options}、{it:marker_label_options} 和 {it:line_options} 影响绘制交叉相关的外观。

{phang2}
{it:marker_options}
    指定标记的外观。这个外观包括标记符号、大小及其颜色和轮廓；见 {manhelpi marker_options G-3}。

{phang2}
{it:marker_label_options}
    指定标记是否以及如何被标记；见 {manhelpi marker_label_options G-3}。

{phang2}
{it:line_options} 
    指定丢弃线条的外观，包括图案、宽度和颜色；见 {manhelpi line_options G-3}。

{dlgtab:添加图形}

{phang}
{opt addplot(plot)} 提供了一种将其他图形添加到生成的图形中的方法；见 {manhelpi addplot_option G-3}。

{dlgtab:Y轴, X轴, 标题, 图例, 总体}

{phang}
{it:twoway_options} 是在 {manhelpi twoway_options G-3} 中有文档记录的任何选项，排除 {opt by()}。这些选项包括图形标题的选项（见 {manhelpi title_options G-3}）和将图形保存到磁盘的选项（见 {manhelpi saving_option G-3}）。


{marker examples}{...}
{title:示例}

{pstd}设置{p_end}
{phang2}{cmd:. webuse furnace}

{pstd}绘制交叉相关函数{p_end}
{phang2}{cmd:. xcorr input output}

{pstd}与上述相同，但在 5 处画竖线{p_end}
{phang2}{cmd:. xcorr input output, xline(5)}

{pstd}与上述相同，但在图中包含 30 个滞后和前导{p_end}
{phang2}{cmd:. xcorr input output, xline(5) lags(30)}

{pstd}获取自相关表和交叉相关的基于字符的图{p_end}
{phang2}{cmd:. xcorr input output, table}{p_end}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <xcorr.sthlp>}