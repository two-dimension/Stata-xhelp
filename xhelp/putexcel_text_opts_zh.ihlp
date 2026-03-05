
{help putexcel_text_opts:English Version}
{hline}
{* *! version 1.0.3  30may2019}{...}
{* *! 本文档适用于 putexcel。如果您在此处进行更改，请检查}{...}
{* *! 是否需要对 putexcela_text_opts.ihlp 进行类似更改。}{...}
{marker font}{...}
{phang}
{cmd:font(}{it:fontname} [{cmd:,} {it:size} [{cmd:,} {it:color}]]{cmd:)} 设置单元格范围内每个单元格的字体、字体大小和字体颜色。如果未指定 {opt font()}，则保留 Excel 的默认值。

{phang2}
{it:fontname} 可以是任何有效的 Excel 字体。如果 {it:fontname} 包含空格，则必须用双引号括起来。有效 Excel 字体的定义取决于用户计算机上安装的 Excel 版本。

{phang2}
{it:size} 是代表任何有效 Excel 字体大小的数值。默认值为 {cmd:12}。

{phang2}
{it:color} 可以是 {bf:[RPT] putexcel} 中 {help putexcel##Colors:{it:附录}} 列表中的颜色之一，也可以是形式为 {cmd:"}{it:### ### ###}{cmd:"} 的有效 RGB 值。如果未指定 {it:color}，则使用 Excel 工作簿的默认值。

{phang}
{opt italic} 和 {opt noitalic} 指定是否将单元格或单元格范围内的文本设置为斜体或取消斜体。默认情况下，文本不为斜体。{opt noitalic} 仅在单元格或单元格之前为斜体时生效。

{phang}
{opt bold} 和 {opt nobold} 指定是否将单元格或单元格范围内的文本加粗或取消加粗。默认情况下，文本不加粗。{opt nobold} 仅在单元格或单元格之前已加粗时生效。

{phang}
{opt underline} 和 {opt nounderline} 指定是否将文本下划线或取消文本的下划线。默认情况下，文本没有下划线。{opt nounderline} 仅在单元格或单元格之前包含下划线文本时生效。

{phang}
{opt strikeout} 和 {opt nostrikeout} 指定是否将文本中划线或取消文本的中划线。默认情况下，文本不带中划线。{opt nostrikeout} 仅在单元格或单元格之前具有中划线时生效。

{phang}
{cmd:script(sub}|{cmd:super}|{cmd:none)} 更改单元格的脚本样式。{cmd:script(sub)} 将单元格或单元格范围内的所有文本设置为下标。{cmd:script(super)} 将单元格或单元格范围内的所有文本设置为上标。{cmd:script(none)} 从单元格或单元格范围中移除所有下标或上标格式。指定 {cmd:script(none)} 仅在单元格或单元格之前被格式化为下标或上标时生效。
{p_end}