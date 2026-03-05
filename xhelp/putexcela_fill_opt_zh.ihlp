
{help putexcela_fill_opt:English Version}
{hline}
{* *! version 1.0.3  30may2019}{...}
{* *! 此帮助文档适用于 putexcel 高级功能。如果您在此处进行更改，请检查}{...}
{* *! 是否需要对 putexcel_fill_opts.ihlp 进行类似的更改。}{...}
{marker fpattern}{...}
{phang}
{cmd:fpattern(}{it:pattern} [{cmd:,} {it:fgcolor} [{cmd:,}
{it:bgcolor}]]{cmd:)} 设置单元格或单元格范围的填充图案、前景颜色和背景颜色。

{phang2}
{it:pattern} 是指定填充图案的关键词。最常用的填充图案有 {opt solid} 表示实心颜色（由 {it:fgcolor} 确定）、{opt gray25} 表示 25% 灰度、{opt gray50} 表示 50% 灰度和 {opt gray75} 表示 75% 灰度。完整的填充图案列表可在 {help putexcel##pattern:{it:附录}} 中查看 {bf:[RPT] putexcel}。
要从单元格或单元格中移除现有的填充图案，请指定 {opt none} 作为 {it:pattern}。

{phang2}
{it:fgcolor} 指定前景颜色。默认前景颜色为 {opt black}。 {it:fgcolor} 可以是
以 {cmd:"}{it:### ### ###}{cmd:"} 形式表示的有效 RGB 值，或
可以是 {bf:[RPT] putexcel} 中 {help putexcel##Colors:{it:附录}} 的颜色表中列出的任何颜色。

{phang2}
{it:bgcolor} 指定背景颜色。 {it:bgcolor} 可以是
以 {cmd:"}{it:### ### ###}{cmd:"} 形式表示的有效 RGB 值，或
可以是 {bf:[RPT] putexcel} 中 {help putexcel##Colors:{it:附录}} 的颜色表中列出的任何颜色。
如果未指定 {it:bgcolor}，则使用 Excel 工作簿的默认值。
{p_end}