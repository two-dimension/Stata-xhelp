{smcl}
{* *! version 1.1.15  19oct2017}{...}
{viewerdialog outfile "dialog outfile"}{...}
{vieweralsosee "[D] outfile" "mansection D outfile"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[D] export" "help export_zh"}{...}
{vieweralsosee "[D] import" "help import_zh"}{...}
{viewerjumpto "Syntax" "outfile_zh##syntax"}{...}
{viewerjumpto "Menu" "outfile_zh##menu"}{...}
{viewerjumpto "Description" "outfile_zh##description"}{...}
{viewerjumpto "Links to PDF documentation" "outfile_zh##linkspdf"}{...}
{viewerjumpto "Options" "outfile_zh##options"}{...}
{viewerjumpto "Examples" "outfile_zh##examples"}
{help outfile:English Version}
{hline}{...}
{p2colset 1 16 18 2}{...}
{p2col:{bf:[D] outfile} {hline 2}}导出数据集为文本格式{p_end}
{p2col:}({mansection D outfile:查看完整 PDF 手册条目}){p_end}
{p2colreset}{...}


{marker syntax}{...}
{title:语法}

{p 8 16 2}
{cmdab:ou:tfile}
[{varlist}]
{cmd:using}
{it:{help filename_zh}}
{ifin}
[{cmd:,} {it:options}]

{synoptset 15 tabbed}{...}
{synopthdr}
{synoptline}
{syntab :主要选项}
{synopt :{opt d:ictionary}}以 Stata 的字典格式写入文件{p_end}
{synopt :{opt nol:abel}}输出带标签变量的数值（而非标签）；默认情况下，标签以双引号形式写入{p_end}
{synopt :{opt noq:uote}}不使用双引号包围字符串{p_end}
{synopt :{opt c:omma}}以逗号分隔的格式写入文件（而非空格分隔）{p_end}
{synopt :{opt w:ide}}强制每行一个观测值（无论宽度如何）{p_end}

{syntab :高级选项}
{synopt :{opt rjs}}字符串变量右对齐；默认是左对齐{p_end}
{synopt :{opt fjs}}格式宽度 < 0 时左对齐；格式宽度 > 0 时右对齐{p_end}
{synopt :{opt runtogether}}所有内容在一行，无引号，之间无空格，忽略格式{p_end}
{synopt :{opt m:issing}}保留缺失值；仅与 {opt comma} 一起使用{p_end}

{synopt :{opt replace}}覆盖现有文件{p_end}
{synoptline}
{p 4 6 2}
{opt replace} 不会出现在对话框中.{p_end}


{marker menu}{...}
{title:菜单}

{phang}
{bf:文件 > 导出 > 文本数据（固定或自由格式）}


{marker description}{...}
{title:描述}

{pstd}
{opt outfile} 将数据写入磁盘文件，使用普通文本格式，其他程序可以读取。新文件不是 Stata 格式；有关如何将数据保存以便在 Stata 中稍后使用的说明，请参见 {manhelp save D}。

{pstd}
通过 {opt outfile} 保存的数据可以通过 {opt infile} 读取；参见 {manhelp import D}。如果指定的 {it:{help filename_zh}} 没有扩展名，则假定为 {opt .raw}，除非指定了 {opt dictionary} 选项，此时假定为 {opt .dct}。如果您的 {it:filename} 包含嵌入空格，请记得用双引号包围它。


{marker linkspdf}{...}
{title:PDF 文档链接}

        {mansection D outfileQuickstart:快速入门}

        {mansection D outfileRemarksandexamples:备注和示例}

{pstd}
上述部分不包括在此帮助文件中。


{marker options}{...}
{title:选项}

{dlgtab:主要选项}

{phang}{opt dictionary} 以 Stata 的数据字典格式写入文件。有关字典的描述，请参见 {help infile2_zh}。
{opt comma}、{opt missing} 和 {opt wide} 不允许与 {opt dictionary} 一起使用。

{phang}{opt nolabel} 导致 Stata 写入带标签变量的数值。默认情况下，写入的标签以双引号包围。

{phang}{opt noquote} 防止 Stata 在字符串内容周围放置双引号，意味着字符串变量和数值标签。

{phang}{opt comma} 导致 Stata 以逗号分隔值格式写入文件。在这种格式下，值由逗号分隔，而不是由空格分隔。缺失值写为两个连续的逗号，除非指定了 {opt missing}。

{phang}{opt wide} 导致 Stata 以每行 1 个观测值的方式写入数据。默认情况下，将观测值拆分为每行 80 个字符或更少，但长度超过 80 个字符的字符串从不跨行。

{dlgtab:高级选项}

{phang}{opt rjs} 和 {opt fjs} 影响字符串的对齐方式；您可能不想指定这两个选项中的任何一个。默认情况下，{opt outfile} 将字符串左对齐。

{pmore}如果指定了 {opt rjs}，字符串将右对齐。{opt rjs} 代表“右对齐字符串”。

{pmore}如果指定了 {opt fjs}，字符串根据变量的格式左或右对齐：如果格式宽度为负，则左对齐；如果格式宽度为正，则右对齐。{opt fjs} 代表“格式对齐字符串”。

{phang}{opt runtogether} 是一个程序员选项，仅在指定的 {varlist} 的所有变量均为 {cmd:string} 类型时有效。
{opt runtogether} 指定以指定顺序输出变量，无引号，之间无空格，并忽略附加在每个变量上的显示格式。每个观测值以换行符结束。

{phang}{opt missing}，仅在与 {cmd:comma} 一起使用时有效，指定保留缺失值。当 {opt comma} 未指定 {opt missing} 时，缺失值将更改为空字符串 ({cmd:""}).

{pstd}以下选项与 {opt outfile} 一起使用，但未在对话框中显示：

{phang}{opt replace} 允许 {opt outfile} 覆盖现有数据集。


{marker examples}{...}
{title:示例}

{pstd}设置{p_end}
{phang2}{cmd:. sysuse auto}{p_end}
{phang2}{cmd:. keep make price mpg rep78 foreign}{p_end}
{phang2}{cmd:. keep in 1/10}

{pstd}列出数据{p_end}
{phang2}{cmd:. list}

{pstd}将数据以纯文本格式写入 {cmd:myout.raw}{p_end}
{phang2}{cmd:. outfile using myout}

{pstd}显示 {cmd:myout.raw} 的内容{p_end}
{phang2}{cmd:. type myout.raw}

{pstd}更改第 1 到 20 个观测值的 {cmd:mpg} 值{p_end}
{phang2}{cmd:. replace mpg = 20 in 1}

{pstd}将数据以纯文本格式写入 {cmd:myout.raw}，覆盖现有文件 {cmd:myout.raw}{p_end}
{phang2}{cmd:. outfile using myout, replace}

{pstd}将数据以纯文本格式写入 {cmd:myout.raw}，但写入 {cmd:foreign} 的数值而不是标签{p_end}
{phang2}{cmd:. outfile using myout, nolabel replace}

{pstd}显示 {cmd:myout.raw} 的内容{p_end}
{phang2}{cmd:. type myout.raw}

{pstd}以逗号分隔格式将数据写入 {cmd:myout.raw}{p_end}
{phang2}{cmd:. outfile using myout, comma replace}

{pstd}显示 {cmd:myout.raw} 的内容{p_end}
{phang2}{cmd:. type myout.raw}

{pstd}以 Stata 的字典格式写入数据至 {cmd:myout.dct}{p_end}
{phang2}{cmd:. outfile using myout, dictionary}

{pstd}显示 {cmd:myout.dct} 的内容{p_end}
{phang2}{cmd:. type myout.dct}{p_end}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <outfile.sthlp>}