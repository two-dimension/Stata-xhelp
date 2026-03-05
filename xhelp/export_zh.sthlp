{smcl}
{* *! version 1.0.11  15jun2019}{...}
{vieweralsosee "[D] export" "mansection D export"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[D] import" "help import_zh"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[M-5] _docx*()" "help mf_docx"}{...}
{vieweralsosee "[RPT] dyndoc" "help dyndoc_zh"}{...}
{vieweralsosee "[RPT] putdocx intro" "help putdocx intro"}{...}
{vieweralsosee "[RPT] putexcel" "help putexcel_zh"}{...}
{vieweralsosee "[RPT] putpdf intro" "help putpdf intro"}{...}
{vieweralsosee "[M-5] xl()" "help mf_xl_zh"}{...}
{viewerjumpto "Description" "export_zh##description"}{...}
{viewerjumpto "Links to PDF documentation" "export_zh##linkspdf"}{...}
{viewerjumpto "Summary of the different methods" "export_zh##summary"}
{help export:English Version}
{hline}{...}
{p2colset 1 15 17 2}{...}
{p2col:{bf:[D] export} {hline 2}}从Stata导出数据的概述
{p_end}
{p2col:}({mansection D export:查看完整的PDF手册条目}){p_end}
{p2colreset}{...}


{marker description}{...}
{title:描述}

{pstd}
该条目提供了一个快速参考，以确定使用哪种方法将Stata数据从内存导出到其他格式。


{marker linkspdf}{...}
{title:PDF文档链接}

        {mansection D exportRemarksandexamples:备注和示例}

{pstd}
以上部分未包含在此帮助文件中。


{marker summary}{...}
{title:不同方法的总结}


{title:导出excel}

{phang}
1.  {opt export excel} 创建Microsoft Excel 工作表为 {cmd:.xls}
    和 {cmd:.xlsx} 文件。

{phang}
2.  可以导出整个工作表，或者覆盖自定义单元格范围。

{phang}
请参见 {manhelp import_excel D:import excel}。

{title:导出分隔文件}

{phang}
1.  {opt export delimited} 创建逗号分隔或制表符分隔的文件
    ，许多其他程序可以读取。

{phang}
2.  还可以指定自定义分隔符。

{phang}
3.  文件的第一行可以选择包含变量的名称。

{phang}
请参见 {manhelp import_delimited D:import delimited}。

{title:odbc}

{phang}
1.  ODBC，即开放数据库连接（Open DataBase Connectivity）的缩写，是一个用于
    在程序之间交换数据的标准。Stata支持通过 {opt odbc} 命令导出数据的ODBC标准，
    并且可以写入计算机上的任何ODBC数据源。

{phang}
请参见 {manhelp odbc D}。

{title:outfile}

{phang}
1.  {cmd:outfile} 创建文本格式的数据集。

{phang}
2.  数据可以以空格分隔或逗号分隔的格式写入。

{phang}
3.  或者，数据可以以固定列格式写入。

{phang}
请参见 {manhelp outfile D}。

{title:export sasxport5 和 export sasxport8}

{phang}
1.  {cmd:export sasxport5} 保存SAS XPORT版本5传输格式文件。

{phang}
2.  {cmd:export sasxport5} 还可以将值标签信息写入
    {cmd:formats.xpf} XPORT文件。

{phang}
3.  {cmd:export sasxport8} 保存SAS XPORT版本8传输格式文件。

{phang}
4.  {cmd:export sasxport8} 还可以将值标签信息写入SAS
    命令 ({cmd:.sas}) 文件。

{phang}
请参见 {manhelp import_sasxport5 D:import sasxport5} 和
{manhelp import_sasxport8 D:import sasxport8}。

{title:导出dbase}

{phang}
1.  {opt export dbase} 保存IV版本的dbase ({cmd:.dbf}) 文件。

{phang}
请参见 {manhelp import_dbase D:import dbase}。
{p_end}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <export.sthlp>}