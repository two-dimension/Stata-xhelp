
{help putexcel_fill_opt:English Version}
{hline}
{* *! version 1.0.2  30may2019}{...}
{* *! 本帮助文档适用于 putexcel。如果您在此进行更改，请检查}{...}
{* *! 是否需要对 putexcela_fill_opts.ihlp 进行类似更改。}{...}
{marker fpattern}{...}
{phang}
{cmd:fpattern(}{it:pattern} [{cmd:,} {it:fgcolor} [{cmd:,}
{it:bgcolor}]]{cmd:)} 用于设置单元格或单元格范围的填充模式、前景颜色和背景颜色。

{phang2}
{it:pattern} 是一个关键字，指定填充模式。最常见的填充模式有 {opt solid} 代表实心颜色（由 {it:fgcolor} 决定），{opt gray25} 代表25%的灰度，{opt gray50} 代表50%的灰度，以及 {opt gray75} 代表75%的灰度。完整的填充模式列表在 {help putexcel##pattern:{it:附录}} 中的 {bf:[RPT] putexcel} 中展示。
要从单元格或多个单元格中移除现有的填充模式，可以指定 {opt none} 作为 {it:pattern}。

{phang2}
{it:fgcolor} 指定前景颜色。默认的前景颜色是 {opt black}。{it:fgcolor} 可以是 
在 {help putexcel##Colors:{it:附录}} 中的 {bf:[RPT] putexcel} 列表中的任何颜色，或者是一个有效的 RGB 值，格式为 {cmd:"}{it:### ### ###}{cmd:"}。

{phang2}
{it:bgcolor} 指定背景颜色。{it:bgcolor} 可以是 
在 {help putexcel##Colors:{it:附录}} 中的 {bf:[RPT] putexcel} 列表中的任何颜色，或者是一个有效的 RGB 值，格式为 {cmd:"}{it:### ### ###}{cmd:"}。
如果未指定 {it:bgcolor}，则使用 Excel 工作簿的默认值。
{p_end}