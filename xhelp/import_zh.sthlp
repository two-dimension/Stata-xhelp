{smcl}
{* *! version 1.1.20  04may2019}{...}
{vieweralsosee "[D] import" "mansection D import"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[D] edit" "help edit_zh"}{...}
{vieweralsosee "[D] export" "help export_zh"}{...}
{vieweralsosee "[D] input" "help input_zh"}{...}
{viewerjumpto "Description" "import_zh##description"}{...}
{viewerjumpto "Links to PDF documentation" "import_zh##linkspdf"}{...}
{viewerjumpto "Summary of the different methods" "import_zh##summary"}{...}
{viewerjumpto "Video example" "import_zh##video"}
{help import:English Version}
{hline}{...}
{p2colset 1 15 17 2}{...}
{p2col:{bf:[D] import} {hline 2}}导入数据到 Stata 的概述
{p_end}
{p2col:}({mansection D import:查看完整的 PDF 手册条目}){p_end}
{p2colreset}{...}


{marker description}{...}
{title:描述}

{pstd}
此条目提供了快速参考，帮助确定使用哪种方法将非 Stata 数据读入内存。
有关更多详细信息，请参见 {findalias frdatain}。


{marker linkspdf}{...}
{title:PDF 文档链接}

        {mansection D importRemarksandexamples:备注和示例}

{pstd}
上述部分不包含在此帮助文件中。


{marker summary}{...}
{title:不同方法的总结}


{title:import excel}

{phang}
1.  {opt import excel} 用于读取来自 Microsoft Excel ({cmd:.xls}
    和 {cmd:.xlsx}) 文件的工作表。

{phang}
2.  可以读取整个工作表，或读取自定义单元格范围。

{phang}
请参见 {manhelp import_excel D:import excel}。

{title:import delimited}

{phang}
1.  {opt import delimited} 用于读取文本分隔文件。

{phang}
2.  数据可以是制表符分隔或逗号分隔。
也可以指定自定义分隔符。

{phang}
3.  每个观测值必须在一行上。

{phang}
4.  文件的第一行可以选择性地包含变量名称。

{phang}
请参见 {manhelp import_delimited D:import delimited}。

{title:odbc}

{phang}
1.  ODBC，即开放数据库连接，是在程序之间交换数据的标准。Stata 支持使用 {opt odbc} 命令通过 ODBC 标准导入数据，并可以从计算机上的任何 ODBC 数据源读取。

{phang}
请参见 {manhelp odbc D}。

{title:infile (自由格式) -- 无字典的 infile}

{phang}
1.  数据可以是空格分隔、制表符分隔或逗号分隔。

{phang}
2.  包含空格或逗号的字符串必须用引号括起来
（即使是制表符或逗号分隔）。

{phang}
3.  一个观测值可以跨多行，甚至在同一行上也可以有多个观测值。

{phang}
请参见 {help infile1_zh}。

{title:infix (固定格式)}

{phang}
1.  数据必须是固定列格式。

{phang}
2.  一个观测值可以跨多行。

{phang}
3.  {opt infix} 的语法比 {opt infile}（固定格式）更简单。

{phang}
请参见 {manhelp infix D:infix (固定格式)}。

{title:infile (固定格式) -- 有字典的 infile}

{phang}
1.  数据可以是固定列格式。

{phang}
2.  一个观测值可以跨多行。

{phang}
3.  可以读取 ASCII 或 EBCDIC 数据。

{phang}
4.  {opt infile}（固定格式）具有最强的数据读取能力。

{phang}
请参见 {help infile2_zh}。

{title:import sas}

{phang}
1.  {cmd:import sas} 读取版本 7 的 SAS ({cmd:.sas7bdat}) 文件。

{phang}
2.  {cmd:import sas} 也会从 {cmd:.sas7bcat} 文件读取值标签信息。

{phang}
请参见 {manhelp import_sas D:import sas}。

{title:import sasxport5 和 import sasxport8}

{phang}
1.  {cmd:import sasxport5} 读取 SAS XPORT 版本 5 运输格式文件。

{phang}
2.  {cmd:import sasxport5} 也会从 {cmd:formats.xpf} XPORT 文件读取值标签信息。

{phang}
3.  {cmd:import sasxport8} 读取 SAS XPORT 版本 8 运输格式文件。

{phang}
请参见 {manhelp import_sasxport5 D:import sasxport5} 和
{manhelp import_sasxport8 D:import sasxport8}。

{title:import spss}

{phang}
1.  {cmd:import spss} 读取 IBM SPSS Statistics ({cmd:.sav} 和 {cmd:.zsav}) 文件。

{phang}
请参见 {manhelp import_spss D:import spss}。

{title:import fred}

{phang}
1.  {opt import fred} 读取联邦储备经济数据。

{phang}
2.  使用 {opt import fred} 时，必须拥有从
    圣路易斯联邦储备获取的有效 API 密钥。

{phang}
请参见 {manhelp import_fred D:import fred}。

{title:import haver (仅限 Windows)}

{phang}
1.  {opt import haver} 读取 Haver Analytics ({browse "http://www.haver.com/"}) 数据库文件。

{phang}
请参见 {manhelp import_haver D:import haver}。

{title:import dbase}

{phang}
1.  {opt import dbase} 读取版本 III 或版本 IV 的 dBase ({cmd:.dbf}) 文件。

{phang}
请参见 {manhelp import_dbase D:import dbase}。

{title:spshape2dta}

{phang}
1.  {opt spshape2dta} 将 shapefile 的 {cmd:.dbf} 和 {cmd:.shp} 文件翻译为两个 Stata 数据集。

{phang}
请参见 {manhelp spshape2dta SP}。


{marker video}{...}
{title:视频示例}

{phang}
{browse "http://www.youtube.com/watch?v=iCvZ9pvPy-8":从 Excel 复制/粘贴数据到 Stata}
{p_end}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <import.sthlp>}