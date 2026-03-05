{smcl}
{* *! version 1.1.12  19dec2012}{...}
{viewerdialog insheet "dialog insheet"}{...}
{vieweralsosee "以前记录的内容" "help prdocumented_zh"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[D] export" "help export_zh"}{...}
{vieweralsosee "[D] import" "help import_zh"}{...}
{vieweralsosee "[D] rename" "help rename_zh"}{...}
{viewerjumpto "语法" "insheet_zh##syntax"}{...}
{viewerjumpto "菜单" "insheet_zh##menu"}{...}
{viewerjumpto "描述" "insheet_zh##description"}{...}
{viewerjumpto "选项" "insheet_zh##options"}{...}
{viewerjumpto "示例" "insheet_zh##examples"}
{help insheet:English Version}
{hline}{...}
{pstd}
{cmd:insheet} 已被 {helpb import delimited} 取代。{cmd:insheet} 仍然可以使用，但从 Stata 13 开始，不再作为 Stata 的官方部分。此为原始帮助文件，我们将不再对其进行更新，因此某些链接可能不再有效。

{title:标题}

{p2colset 5 20 22 2}{...}
{p2col :{bf:[D] insheet} {hline 2}}读取由电子表格创建的文本数据{p_end}
{p2colreset}{...}

{marker syntax}{...}
{title:语法}

{p 8 16 2}
{cmd:insheet}
[{varlist}]
{cmd:using}
{it:{help filename_zh}}
[{cmd:,} {it:options}]

{synoptset 21}{...}
{synopthdr}
{synoptline}
{synopt :[{cmdab:no:}]{opt d:ouble}}覆盖默认存储类型{p_end}
{synopt :{opt t:ab}}制表符分隔的数据{p_end}
{synopt :{opt c:omma}}逗号分隔的数据{p_end}
{synopt :{cmdab:delim:iter("}{it:char}{cmd:")}}使用 {it:char} 作为分隔符{p_end}
{synopt :{opt clear}}替换内存中的数据{p_end}
{synopt :{opt case}}保留变量名称的大小写{p_end}

{synopt :[{cmd:{ul:no}}]{opt n:ames}}变量名称包含在文件的第一行{p_end}
{synoptline}
{p2colreset}{...}
{p 4 6 2}[{opt no}]{opt names} 不会出现在对话框中{p_end}

{marker menu}{...}
{title:菜单}

{phang}
{bf:文件 > 导入 > 由电子表格创建的文本数据}

{marker description}{...}
{title:描述}

{pstd}
{opt insheet} 从磁盘读取不是 Stata 格式的数据集。{opt insheet} 旨在读取由电子表格或数据库程序创建的文件。无论文件的创建者是谁，{opt insheet} 都会读取文本（ASCII）文件，其中每一行代表一个观察值，值由制表符或逗号分隔。另外，文件的第一行可以包含变量名称。如果您输入

{phang2}{cmd:. insheet using} {it:filename}

{pstd}
{opt insheet} 读取您的数据，这就是它的全部。

{pstd}
如果 {it:{help filename_zh}} 未指定扩展名，则默认假定为 {cmd:.raw}。如果您的 {it:filename} 包含空格，请记得用双引号将其括起来。

{pstd}
Stata 还有其他命令用于读取数据。如果您不确定 {opt insheet} 能否完成您要做的事情，请参见 {manhelp import D} 和 {findalias frdatain}。如果您想将数据以电子表格风格的文本格式保存，请参见 {manhelp outsheet D}。然而，{cmd:export} {cmd:excel} 可能是更好的选择；请参见 {helpb import excel:[D] import excel}。

{marker options}{...}
{title:选项}

{phang}
[{opt no}]{opt double} 影响 Stata 处理浮点变量的存储方式。如果默认存储类型（参见 {manhelp generate D}）设置为 {opt float}，则指定 {opt double} 选项会强制 Stata 将浮点变量存储为 {opt double} 而不是 {opt float}。如果默认存储类型已设置为 {opt double}，则必须指定 {opt nodouble} 以将浮点变量存储为 {opt float} 而非 {opt double}；参见 {manhelp data_types D:data types}。

{phang}
{opt tab} 告诉 Stata 值是以制表符分隔的。指定此选项将加快 {opt insheet} 的处理速度，前提是您是正确的。{opt insheet} 可以自行判断分隔字符是制表符还是逗号。

{phang}
{opt comma} 告诉 Stata 值是以逗号分隔的。指定此选项将加快 {opt insheet} 的处理速度，前提是您是正确的。{opt insheet} 可以自行判断分隔字符是逗号还是制表符。

{phang}
{cmd:delimiter("}{it:char}{cmd:")} 允许您指定其他分隔字符。例如，如果文件中的值是用分号分隔的，则请指定 {cmd:delimiter(";")}。

{phang}
{opt clear} 指定允许新数据替换当前内存中的数据。为了确保不丢失重要信息，{opt insheet} 会拒绝在内存中已有数据时读取新数据。{opt clear} 允许 {opt insheet} 替换内存中的数据。您也可以在读取新数据之前通过输入 {cmd:drop _all} 自行删除数据。

{phang}
{opt case} 保留变量名称的大小写。默认情况下，所有变量名称都以小写方式导入。

{pstd}
以下选项在 {opt insheet} 中可用，但不会显示在对话框中：

{phang}
[{opt no}]{opt names} 告诉 Stata 文件的第一行是否包含变量名称。指定此选项将加快 {opt insheet} 的处理速度，前提是您是正确的。{opt insheet} 可以自行判断文件是否包含变量名称。

{marker examples}{...}
{title:示例}

{phang}{cmd:. insheet using auto.raw}{p_end}

{phang}{cmd:. insheet using auto.raw, clear}{p_end}

{phang}{cmd:. insheet using auto.raw, clear double}{p_end}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <insheet.sthlp>}