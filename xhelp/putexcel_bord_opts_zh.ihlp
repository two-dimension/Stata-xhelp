
{help putexcel_bord_opts:English Version}
{hline}
{* *! 版本 1.0.4  2019年5月30日}{...}
{* *! 此ihlp适用于putexcel。如果您在此处进行更改，请检查}{...}
{* *!是否需要对putexcela_bord_opts.ihlp进行类似的更改。}{...}
{marker border}{...}
{phang}
{cmd:border(}{it:border} [{cmd:,} {it:style} [{cmd:,} {it:color}]]{cmd:)}
设置单元格或单元格范围的边框、样式和颜色。

{phang2}
{it:border}
可以是 {opt all}、{opt left}、{opt right}、{opt top} 或 {opt bottom}。

{phang2}
{it:style} 是一个关键字，指定边框的外观。最常见的样式有 {opt thin}、{opt medium}、{opt thick} 和 {opt double}。默认值为 {opt thin}。有关边框样式的完整列表，请参见 {help putexcel##style:{it:附录}} 在 {bf:[RPT] putexcel} 中。要移除现有边框，指定 {cmd:none} 作为 {it:style}。

{phang2}
{it:color} 可以是 {help putexcel##Colors:{it:附录}} 中列出的颜色表中的一种，或是以 {cmd:"}{it:### ### ###}{cmd:"} 形式表示的有效 RGB 值。如果未指定 {it:color}，则使用 Excel 工作簿的默认值。

{marker dborder}{...}
{phang}
{cmd:dborder(}{it:direction} [{cmd:,} {it:style} [{cmd:,} {it:color}]]{cmd:)}
设置单元格或单元格范围的对角线边框方向、样式和颜色。

{phang2}
{it:direction} 可以是 {cmd:down}、{cmd:up} 或 {cmd:both}。{cmd:down} 从单元格的左上角绘制一条线到单元格的右下角，或者对于单元格范围，从 {it:ul_cell} 的左上角到 {it:lr_cell} 的右下角。{cmd:up} 从单元格的左下角绘制一条线到单元格的右上角，或者对于单元格范围，从由 {it:ul_cell}{cmd::}{it:lr_cell} 定义的区域的左下角到右上角。

{phang2}
{it:style} 是一个关键字，指定边框的外观。最常见的样式有 {cmd:thin}、{cmd:medium}、{cmd:thick} 和 {cmd:double}。默认值为 {cmd:thin}。有关边框样式的完整列表，请参见 {help putexcel##style:{it:附录}} 在 {bf:[RPT] putexcel} 中。要移除现有边框，指定 {cmd:none} 作为 {it:style}。

{phang2}
{it:color} 可以是 {help putexcel##Colors:{it:附录}} 中列出的颜色表中的一种，或是以 {cmd:"}{it:### ### ###}{cmd:"} 形式表示的有效 RGB 值。如果未指定 {it:color}，则使用 Excel 工作簿的默认值。
{p_end}