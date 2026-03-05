
{help putexcela_text_opts:English Version}
{hline}
{* *! version 1.0.3  30may2019}{...}
{* *! 此帮助文档适用于 putexcel 高级功能。如果您在此处进行更改，请检查}{...}
{* *! 是否需要对 putexcel_text_opts.ihlp 进行类似的更改。}{...}
{marker font}{...}
{phang}
{cmd:font(}{it:fontname} [{cmd:,} {it:size} [{cmd:,} {it:color}]]{cmd:)} 设置单元格范围内每个单元格的字体、字号和字体颜色。如果未指定 {opt font()}，则保留 Excel 默认值。

{phang2}
{it:fontname} 可以是任何有效的 Excel 字体。如果 {it:fontname} 包含空格，则必须用双引号括起来。什么构成有效的 Excel 字体由用户计算机上安装的 Excel 版本决定。

{phang2}
{it:size} 是一个数字值，表示任何有效的 Excel 字号。默认值为 {cmd:12}。

{phang2}
{it:color} 可以是有效的 RGB 值，形式为 {cmd:"}{it:### ### ###}{cmd:"}，或可以是 {bf:[RPT] putexcel} 中 {help putexcel##Colors:{it:附录}} 提供的颜色表中的一种颜色。如果不指定 {it:color}，则使用 Excel 工作簿的默认值。

{phang}
{opt italic} 和 {opt noitalic} 指定是否对单元格或单元格范围内的文本进行斜体或取消斜体。默认情况下，文本为非斜体。 {opt noitalic} 仅在单元格或单元格之前为斜体时有效。

{phang}
{opt bold} 和 {opt nobold} 指定是否对单元格或单元格范围内的文本加粗或取消加粗。默认情况下，文本为非加粗。 {opt nobold} 仅在单元格或单元格之前已格式化为加粗时有效。

{phang}
{opt underline} 和 {opt nounderline} 指定是否对单元格或单元格范围内的文本添加下划线或移除下划线。默认情况下，文本不带下划线。 {opt nounderline} 仅在单元格或单元格之前的文本包含下划线时有效。

{phang}
{opt strikeout} 和 {opt nostrikeout} 指定是否对单元格或单元格范围内的文本添加删除线或移除删除线。默认情况下，文本不带删除线。 {opt nostrikeout} 仅在单元格或单元格之前的文本包含删除线时有效。

{phang}
{cmd:script(sub}|{cmd:super}|{cmd:none)} 更改单元格的脚本样式。{cmd:script(sub)} 将单元格或单元格范围内的所有文本设置为下标。{cmd:script(super)} 将单元格或单元格范围内的所有文本设置为上标。{cmd:script(none)} 移除单元格或单元格范围内的所有下标或上标格式。指定 {cmd:script(none)} 仅在单元格或单元格之前的格式为下标或上标时有效。
{p_end}