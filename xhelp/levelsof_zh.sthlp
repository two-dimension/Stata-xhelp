{smcl}
{* *! version 1.1.11  05sep2018}{...}
{vieweralsosee "[P] levelsof" "mansection P levelsof"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[P] foreach" "help foreach_zh"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[D] codebook" "help codebook_zh"}{...}
{vieweralsosee "[D] format" "help format_zh"}{...}
{vieweralsosee "[D] inspect" "help inspect_zh"}{...}
{vieweralsosee "[R] tabulate oneway" "help tabulate_oneway_zh"}{...}
{viewerjumpto "Syntax" "levelsof_zh##syntax"}{...}
{viewerjumpto "Description" "levelsof_zh##description"}{...}
{viewerjumpto "Links to PDF documentation" "levelsof_zh##linkspdf"}{...}
{viewerjumpto "Options" "levelsof_zh##options"}{...}
{viewerjumpto "Remarks" "levelsof_zh##remarks"}{...}
{viewerjumpto "Examples" "levelsof_zh##examples"}{...}
{viewerjumpto "Stored results" "levelsof_zh##results"}{...}
{viewerjumpto "References" "levelsof_zh##references"}
{help levelsof:English Version}
{hline}{...}
{p2colset 1 17 19 2}{...}
{p2col:{bf:[P] levelsof} {hline 2}}变量的不同水平{p_end}
{p2col:}({mansection P levelsof:查看完整PDF手册条目}){p_end}
{p2colreset}{...}


{marker syntax}{...}
{title:语法}

{p 8 17 2}
{cmd:levelsof}
{varname}
{ifin}
[{cmd:,} {it:选项}]

{synoptset 21}{...}
{synopthdr}
{synoptline}
{synopt:{opt c:lean}}以无复合双引号方式显示字符串值{p_end}
{synopt:{opt l:ocal(macname)}}将值列表插入到本地宏 {it:macname} 中{p_end}
{synopt:{opt miss:ing}}在计算中包括 {varname} 的缺失值{p_end}
{synopt:{opt s:eparate(separator)}}作为返回列表中值的标点符号的分隔符；默认为空格{p_end}
{synopt:{opt matcell(matname)}}将不同值的频率保存在 {it:matname} 中{p_end}
{synopt:{opt matrow(matname)}}将 {varname} 的不同值保存在 {it:matname} 中{p_end}
{synopt:{opt hex:adecimal}}对数值使用十六进制格式{p_end}
{synoptline}
{p2colreset}{...}


{marker description}{...}
{title:描述}

{pstd}
{cmd:levelsof} 显示 {varname} 的不同值的排序列表。


{marker linkspdf}{...}
{title:PDF文档链接}

        {mansection P levelsofRemarksandexamples:备注和示例}

{pstd}
上述部分不包含在此帮助文件中。


{marker options}{...}
{title:选项}

{phang}
{cmd:clean} 以无复合双引号方式显示字符串值。
默认情况下，每个不同的字符串值都用复合双引号显示，因为这是最通用的定界符。如果您知道 {varname} 中的字符串值不包含嵌入空格或嵌入引号，则这是一个适当的选项。{cmd:clean}
不影响数值变量的值显示。

{phang}
{cmd:local(}{it:macname}{cmd:)} 将值列表插入到调用程序空间的本地宏 {it:macname} 中。因此，该宏在 {cmd:levelsof} 完成后可访问。这对后续使用特别有用，尤其是与 {help foreach_zh} 一起使用。

{phang}
{cmd:missing} 指定计算中包括 {varname} 的缺失值。默认情况下，排除它们。

{phang}
{cmd:separate(}{it:separator}{cmd:)} 指定一个分隔符，以作为返回列表中值的标点符号。默认情况下为空格。一个有用的替代方案是逗号。

{phang}
{opt matcell(matname)} 将不同值的频率保存在 {it:matname} 中。

{phang}
{opt matrow(matname)} 将 {varname} 的不同值保存在 {it:matname} 中。
如果 {it:varname} 是字符串，则不能指定 {opt matrow()}。

{phang}
{opt hexadecimal} 指定当 {it:varname} 是数值时使用十六进制格式 {cmd:%21x}。请参见 {manhelp format D}。此选项保证 {opt levelsof} 创建的宏中的值与 {it:varname} 中的值在数值上完全相等。对于整数数据，除了极大的整数（绝对值 {ul:>} 1e19），{opt levelsof} 总是产生在没有此选项的情况下保持相等的值。对于非整数数据或极大的整数，默认情况下可能并不在所有情况下都保持数值上的相等。指定 {opt hexadecimal} 可以保证在所有情况下都保持相等。


{marker remarks}{...}
{title:备注}

{pstd}
{cmd:levelsof} 有两个不同的功能。首先，它提供 {it:varname} 的不同值的紧凑显示。更常见的是，当您希望循环遍历 {it:varname} 的不同值时，它非常有用（例如） {cmd:foreach}；请参见 {help foreach_zh:[P] foreach}。 {cmd:levelsof} 在 {cmd:r(levels)} 中留下一个列表，可以在后续命令中使用。当想获取非整数数据的水平时，可以使用 {opt matrow(matname)} 以获得全精度的水平。

{pstd}
{cmd:levelsof} 可能会受到您 Stata 的 {help limits_zh} 限制。然而，当 {it:varname} 的不同值的数量不是极大时，它通常是用来使用的。

{pstd}
因子水平的术语在实验设计中长期以来一直是标准的。参见
{help levelsof##CC1957:Cochran 和 Cox (1957, 148)},
{help levelsof##F1942:Fisher (1942)}，或
{help levelsof##Y1937:Yates (1937, 5)}。


{marker examples}{...}
{title:示例}

{phang}{cmd:. sysuse auto}

{phang}{cmd:. levelsof rep78}{p_end}
{phang}{cmd:. display "`r(levels)'"}

{phang}{cmd:. levelsof rep78, miss local(mylevs)}{p_end}
{phang}{cmd:. display "`mylevs'"}

{phang}{cmd:. levelsof rep78, sep(,)}{p_end}
{phang}{cmd:. display "`r(levels)'"}

{pstd}当值标签已定义时显示:{p_end}
{pstd}{cmd:. levelsof factor, local(levels)}{break}
{cmd:. foreach l of local levels {c -(}}{break}
{cmd:.{space 8}di "-> factor = `: label (factor) `l''"}{break}
{cmd:.}{space 8}{it:whatever}{cmd: if factor == `l'}{break}
{cmd:. {c )-}}


{marker results}{...}
{title:存储结果}

{pstd}
{cmd:levelsof} 将以下内容存储在 {cmd:r()} 中：

{synoptset 15 tabbed}{...}
{p2col 5 15 19 2: 标量}{p_end}
{synopt:{cmd:r(N)}}观察值数量{p_end}
{synopt:{cmd:r(r)}}不同值的数量{p_end}
{p2colreset}{...}

{synoptset 15 tabbed}{...}
{p2col 5 15 19 2: 宏}{p_end}
{synopt:{cmd:r(levels)}}不同值的列表{p_end}
{p2colreset}{...}


{marker references}{...}
{title:参考文献}

{marker CC1957}{...}
{phang}
Cochran, W. G., 和 G. M. Cox. 1957. {it:实验设计}. 第二版。
纽约：Wiley。

{marker F1942}{...}
{phang}
Fisher, R. A. 1942. 因子实验中混杂的理论与组理论的关系。
{it:优生学年鉴} 11: 341-353。

{marker Y1937}{...}
{phang}
Yates, F. 1937. {it:因子实验的设计与分析}。
英格兰哈朋登：技术通讯 35，土壤科学帝国局。
{p_end}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <levelsof.sthlp>}