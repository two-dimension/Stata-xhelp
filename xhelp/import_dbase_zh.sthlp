{smcl}
{* *! version 1.0.7  19oct2017}{...}
{viewerdialog "import dbase" "dialog import_dbase"}{...}
{viewerdialog "export dbase" "dialog export_dbase"}{...}
{vieweralsosee "[D] import dbase" "mansection D importdbase"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[D] export" "help export_zh"}{...}
{vieweralsosee "[D] import" "help import_zh"}{...}
{vieweralsosee "[SP] spshape2dta" "help spshape2dta_zh"}{...}
{viewerjumpto "Syntax" "import_dbase_zh##syntax"}{...}
{viewerjumpto "Menu" "import_dbase_zh##menu"}{...}
{viewerjumpto "Description" "import_dbase_zh##description"}{...}
{viewerjumpto "Links to PDF documentation" "import_dbase_zh##linkspdf"}{...}
{viewerjumpto "Options for import dbase" "import_dbase_zh##import_options"}{...}
{viewerjumpto "Options for export dbase" "import_dbase_zh##export_options"}{...}
{viewerjumpto "Remarks" "import_dbase_zh##remarks"}{...}
{viewerjumpto "Examples" "import_dbase_zh##examples"}
{help import_dbase:English Version}
{hline}{...}
{p2colset 1 21 23 2}{...}
{p2col:{bf:[D] import dbase} {hline 2}}导入和导出 dBase 文件{p_end}
{p2col:}({mansection D importdbase:查看完整 PDF 手册条目}){p_end}
{p2colreset}{...}


{marker syntax}{...}
{title:语法}

{pstd}
加载 dBase 文件

{p 8 32 2}
{cmd:import} {cmd:dbase}
[{cmd:using}] {it:{help filename_zh}}
[{cmd:,} {cmd:clear} {cmd:case(preserve}|{cmd:lower}|{cmd:upper)}]


{pstd}
将内存中的数据保存到 dBase 文件

{p 8 32 2}
{cmd:export} {cmd:dbase}
[{cmd:using}] {it:{help filename_zh}}
{ifin}
[{cmd:,} {opt dataf:mt} {cmd:replace}]


{pstd}
将内存中变量的子集保存到 dBase 文件

{p 8 32 2}
{cmd:export} {cmd:dbase}
[{varlist}] {cmd:using} {it:{help filename_zh}}
{ifin}
[{cmd:,} {opt dataf:mt} {cmd:replace}]


{phang}
如果指定的 {it:{help filename_zh}} 没有扩展名，{cmd:.dbf} 会被假定为 {cmd:import dbase} 和 {cmd:export dbase} 的扩展名。如果 {it:filename} 包含空格，请用双引号括起来。


{marker menu}{...}
{title:菜单}

    {title:导入 dbase}

{phang2}
{bf:文件 > 导入 > dBase (*.dbf)}

    {title:导出 dbase}

{phang2}
{bf:文件 > 导出 > dBase (*.dbf)}


{marker description}{...}
{title:描述}

{pstd}
{cmd:import dbase} 将版本 III 或版本 IV 的 dBase ({cmd:.dbf}) 文件读入内存。{cmd:export dbase} 将内存中的数据导出到版本 IV 的 dBase ({cmd:.dbf}) 文件。

{pstd}
Stata 还有其他导入数据的命令。如果不确定 {cmd:import dbase} 是否能满足需求，请查看 {manhelp import D} 和 {findalias frdatain}。


{marker linkspdf}{...}
{title:PDF 文档链接}

        {mansection D importdbaseQuickstart:快速入门}

{pstd}
上述章节未包含在此帮助文件中。


{marker import_options}{...}
{title:导入 dbase 的选项}

{phang}
{opt clear} 指定可以替换内存中的数据，即使当前数据尚未保存到磁盘。

{phang}
{cmd:case(preserve}|{cmd:lower}|{cmd:upper)} 指定导入后变量名称的大小写。默认值为 {cmd:case(preserve)}。


{marker export_options}{...}
{title:导出 dbase 的选项}

{phang}
{opt datafmt} 指定所有变量均以其显示格式导出。例如，以 {cmd:%7.2f} 显示格式的数字 1000 将被导出为 {cmd:1000.00}，而不是 {cmd:1000}。默认使用未格式化的原始值导出。

{phang}
{opt replace} 指定如果 {it:{help filename_zh}} 已存在则进行替换。


{marker remarks}{...}
{title:备注}

{pstd}
{cmd:import dbase} 将版本 III 或版本 IV 的 dBase ({cmd:.dbf}) 文件读入内存。如果 dBase 文件不是版本 III 或 IV，{cmd:import dbase} 将输出错误。dBase 文件常与用于存储几何位置数据的形状文件配对。要导入形状文件，请参见 {manhelp spshape2dta SP}。

{pstd}
{cmd:export dbase} 将内存中的数据导出到版本 IV 的 dBase ({cmd:.dbf}) 文件。dBase 版本 IV 在导出时有几个文件限制。

        1. 不支持 Unicode。
        2. 数据大小不能超过 2 GB。
        3. 内存中的数据必须少于 1,000,000,000 个观测值。
        4. 内存中的数据必须少于 255 个变量。
        5. 变量名的长度不能超过 10 个字符。
        6. 最大字符串变量长度为 255 个字符。
        7. 数据宽度必须小于 4,000。

{pstd}
如果内存中的数据超过任何这些限制，{cmd:export dbase} 尝试导出数据时将会输出错误。


{marker examples}{...}
{title:示例}

{pstd}
设置

{phang2}{cmd:. webuse autornd}{p_end}

{pstd}
将数据集导出为 dBase 文件 {cmd:auto.dbf}

{phang2}{cmd:. export dbase auto.dbf}{p_end}

{pstd}
将变量 {cmd:make} 和 {cmd:weight} 仅导出到 {cmd:auto2.dbf}

{phang2}{cmd:. export dbase make weight using auto2.dbf}{p_end}

{pstd}
将 {cmd:auto.dbf} 导入回 Stata

{phang2}{cmd:. import dbase auto, clear}

{pstd}
列出从 {cmd:auto.dbf} 加载的数据

{phang2}{cmd:. list}
{p_end}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <import_dbase.sthlp>}