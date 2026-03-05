{smcl}
{* *! version 1.2.12  19dec2012}{...}
{viewerdialog outsheet "dialog outsheet"}{...}
{vieweralsosee "previously documented" "help prdocumented_zh"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[D] export" "help export_zh"}{...}
{vieweralsosee "[D] import" "help import_zh"}{...}
{viewerjumpto "Syntax" "outsheet_zh##syntax"}{...}
{viewerjumpto "Menu" "outsheet_zh##menu"}{...}
{viewerjumpto "Description" "outsheet_zh##description"}{...}
{viewerjumpto "Options" "outsheet_zh##options"}{...}
{viewerjumpto "Examples" "outsheet_zh##examples"}
{help outsheet:English Version}
{hline}{...}
{pstd}
{cmd:outsheet} 已被 {helpb import delimited} 取代。虽然 {cmd:outsheet} 仍然有效，但自 Stata 13 起，它不再是 Stata 的官方组成部分。这是原始帮助文件，我们将不再更新，因此某些链接可能无法使用。


{title:标题}

{p2colset 5 21 23 2}{...}
{p2col :{bf:[D] outsheet} {hline 2}}以电子表格风格写出数据集{p_end}
{p2colreset}{...}


{marker syntax}{...}
{title:语法}

{p 8 17 2}
{cmdab:outs:heet}
[{varlist}]
{cmd:using}
{it:{help filename_zh}}
{ifin}
[{cmd:,} {it:options}]


{synoptset 21 tabbed}{...}
{synopthdr}
{synoptline}
{syntab :主要}
{synopt :{opt c:omma}}以逗号分隔的格式输出（而不是默认的制表符分隔格式）{p_end}
{synopt :{cmdab:delim:iter("}{it:char}{cmd:")}}使用 {it:char} 作为分隔符{p_end}
{synopt :{opt non:ames}}在第一行不写变量名{p_end}
{synopt :{opt nol:abel}}输出标记变量的数值（而不是标签）{p_end}
{synopt :{opt noq:uote}}字符串不被双引号括起来{p_end}

{synopt:{opt replace}}以 {it:{help filename_zh}} 替换已存在的文件{p_end}
{synoptline}
{p 4 6 2}
如果 {it:filename} 没有后缀，则假定为 .out{p_end}
{p 4 6 2}
如果你的 {it:filename} 包含嵌入空格，请记得用双引号括起来。{p_end}
{p 4 6 2}
{opt replace} 不会出现在对话框中。{p_end}


{marker menu}{...}
{title:菜单}

{phang}
{bf:文件 > 导出 > 逗号或制表符分隔的数据}


{marker description}{...}
{title:描述}

{pstd}
{opt outsheet} 默认情况下，将数据写入制表符分隔格式的文件。{cmd:outsheet} 还允许用户指定逗号分隔格式或他们喜欢的任何分隔字符。如果你要将数据导出到可以读取 Excel 文件的程序，{cmd:export} {cmd: excel} 可能是更好的选择；见 {helpb import excel:[D] import excel}。


{marker options}{...}
{title:选项}

{dlgtab:主要}

{phang}{opt comma} 指定逗号分隔格式，而不是默认的制表符分隔格式。

{phang}
{cmd:delimiter("}{it:char}{cmd:")} 允许你指定其他分隔字符。例如，如果你希望文件中的值用分号分隔，请指定 {cmd:delimiter(";")}。

{phang}{opt nonames} 指定文件的第一行中不写变量名；文件仅包含数据值。

{phang}{opt nolabel} 指定将标记变量的数值写入文件，而不是每个值关联的标签。

{phang}{opt noquote} 指定字符串变量不被双引号括起来。

{pstd}
以下选项可与 {opt outsheet} 一起使用，但不显示在对话框中：

{phang}{opt replace} 指定如果 {it:{help filename_zh}} 已存在，则将其替换。


{marker examples}{...}
{title:示例}

{pstd}设置{p_end}
{phang2}{cmd:. sysuse auto}{p_end}
{phang2}{cmd:. keep make price mpg rep78 foreign}{p_end}
{phang2}{cmd:. keep in 1/10}

{pstd}将内存中的数据写入文件 {cmd:myauto.out}，格式为制表符分隔文本{p_end}
{phang2}{cmd:. outsheet using myauto}

{pstd}显示 {cmd:myauto.out} 的内容{p_end}
{phang2}{cmd:. type myauto.out}

{pstd}与上面的 {cmd:outsheet} 命令相同，但不在文件的第一行中放置变量名并替换现有的 {cmd:myauto.out} 文件{p_end}
{phang2}{cmd:. outsheet using myauto, nonames replace}

{pstd}显示 {cmd:myauto.out} 的内容{p_end}
{phang2}{cmd:. type myauto.out}

{pstd}与上面的 {cmd:outsheet} 命令相同，但不将字符串用引号括起来{p_end}
{phang2}{cmd:. outsheet using myauto, nonames noquote replace}

{pstd}显示 {cmd:myauto.out} 的内容{p_end}
{phang2}{cmd:. type myauto.out}

{pstd}与上面的 {cmd:outsheet} 命令相同，但输出标记变量的数值{p_end}
{phang2}{cmd:. outsheet using myauto, nonames noquote nolabel replace}

{pstd}显示 {cmd:myauto.out} 的内容{p_end}
{phang2}{cmd:. type myauto.out}{p_end}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <outsheet.sthlp>}