{smcl}
{* *! version 1.2.4  15may2018}{...}
{vieweralsosee "[G-2] graph" "mansection G-2 graph"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[G-1] 图形简介" "help graph_intro_zh"}{...}
{vieweralsosee "[G-2] 图形其他" "help graph_other_zh"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[G-2] 图形导出" "help graph_export_zh"}{...}
{vieweralsosee "[G-2] 图形打印" "help graph_print_zh"}{...}
{vieweralsosee "[G-2] graph7" "help graph7_zh"}{...}
{viewerjumpto "语法" "graph_zh##syntax"}{...}
{viewerjumpto "描述" "graph_zh##description"}{...}
{viewerjumpto "PDF文档链接" "graph_zh##linkspdf"}{...}
{viewerjumpto "备注" "graph_zh##remarks"}
{help graph:English Version}
{hline}{...}
{p2colset 1 16 18 2}{...}
{p2col:{bf:[G-2] 图形} {hline 2}}图形命令{p_end}
{p2col:}({mansection G-2 graph:查看完整PDF手册条目}){p_end}
{p2colreset}{...}


{marker syntax}{...}
{title:语法}

{pin}
{cmdab:gr:aph} ...

{pstd}
绘制图形的命令有

{p2colset 9 33 35 2}{...}
{p2col :命令}描述{p_end}
{p2line}
{p2col :{helpb twoway:graph twoway}}散点图、线图等{p_end}
{p2col :{helpb graph matrix}}散点图矩阵{p_end}
{p2col :{helpb graph bar}}条形图{p_end}
{p2col :{helpb graph dot}}点图{p_end}
{p2col :{helpb graph box}}箱形图{p_end}
{p2col :{helpb graph pie}}饼图{p_end}
{p2col :{it:{help graph_other_zh:其他}}}绘制统计图形的更多命令{p_end}
{p2line}
{p2colreset}{...}

{pstd}
保存先前绘制的图形、重新显示先前保存的图形以及合并图形的命令有

{p2colset 9 33 35 2}{...}
{p2col :命令}描述{p_end}
{p2line}
{p2col :{helpb graph save}}将图形保存到磁盘{p_end}
{p2col :{helpb graph use}}重新显示存储在磁盘上的图形{p_end}
{p2col :{helpb graph display}}重新显示存储在内存中的图形{p_end}
{p2col :{helpb graph combine}}合并多个图形{p_end}
{p2col :{helpb graph replay}}重新显示存储在内存和磁盘上的图形{p_end}
{p2line}
{p2colreset}{...}

{pstd}
打印图形的命令有

{p2colset 9 33 35 2}{...}
{p2col :命令}描述{p_end}
{p2line}
{p2col :{helpb graph print}}打印当前显示的图形{p_end}
{p2col :{helpb set printcolor}}设置颜色的打印方式{p_end}
{p2col :{helpb graph export}}将.gph文件导出为PostScript等{p_end}
{p2line}
{p2colreset}{...}

{pstd}
处理当前存储在内存中的图形的命令有

{p2colset 9 33 35 2}{...}
{p2col :命令}描述{p_end}
{p2line}
{p2col :{helpb graph display}}显示图形{p_end}
{p2col :{helpb graph dir}}列出名称{p_end}
{p2col :{helpb graph describe}}描述内容{p_end}
{p2col :{helpb graph rename}}重命名内存中的图形{p_end}
{p2col :{helpb graph copy}}将内存中的图形复制到新名称{p_end}
{p2col :{helpb graph drop}}丢弃内存中的图形{p_end}
{p2col :{helpb graph close}}关闭图形窗口{p_end}
{p2line}
{p2colreset}{...}
{pin}
另请参阅 {manhelp graph_manipulation G-2:图形操作}。

{pstd}
描述可用方案并允许您识别和设置默认方案的命令有

{p2colset 9 33 35 2}{...}
{p2col :命令}描述{p_end}
{p2line}
{p2col :{helpb graph query:graph query, schemes}}列出可用方案{p_end}
{p2col :{helpb set scheme:query graphics}}识别默认方案{p_end}
{p2col :{helpb set scheme:set scheme}}设置默认方案{p_end}
{p2line}
{p2colreset}{...}
{pin}
另请参阅
{manhelp schemes G-4:方案简介}。

{pstd}
列出可用样式的命令是

{p2colset 9 33 35 2}{...}
{p2col :命令}描述{p_end}
{p2line}
{p2col :{helpb graph query}}列出可用样式{p_end}
{p2line}
{p2colreset}{...}

{pstd}
设置打印和导出图形选项的命令是

{p2colset 9 33 35 2}{...}
{p2col :命令}描述{p_end}
{p2line}
{p2col :{helpb graph set}}设置图形选项{p_end}
{p2line}
{p2colreset}{...}

{pstd}
允许您绘制图形而不显示它们的命令是

{p2colset 9 33 35 2}{...}
{p2col :命令}描述{p_end}
{p2line}
{p2col :{helpb set graphics}}设置是否显示图形{p_end}
{p2line}
{p2colreset}{...}


{marker description}{...}
{title:描述}

{pstd}
{cmd:graph} 绘制图形。


{marker linkspdf}{...}
{title:PDF文档链接}

        {mansection G-2 graphRemarksandexamples:备注与示例}

{pstd}
上述部分不包括在此帮助文件中。


{marker remarks}{...}
{title:备注}

{pstd}
见 {manhelp graph_intro G-1:图形简介}。
{p_end}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <graph.sthlp>}