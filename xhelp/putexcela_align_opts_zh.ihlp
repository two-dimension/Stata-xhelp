
{help putexcela_align_opts:English Version}
{hline}
{* *! version 1.0.0  22oct2015}{...}
{* *! 本帮助文档适用于 putexcel advanced。如果您在这里进行更改，请检查}{...}
{* *! 是否需要对 putexcel_align_opts.ihlp 进行类似的更改。}{...}
{phang}
{opt left} 设置指定单元格的内容在单元格内左对齐。 {opt left} 不能与 {opt right} 或 {opt hcenter} 结合使用。对于数值，右对齐是 Excel 的默认设置，输出数字时无需指定。

{phang}
{opt hcenter} 设置指定单元格的内容在单元格内水平居中。 {opt hcenter} 不能与 {opt left} 或 {opt right} 结合使用。

{phang}
{opt right} 设置指定单元格的内容在单元格内右对齐。 {opt right} 不能与 {opt left} 或 {opt hcenter} 结合使用。对于文本，左对齐是 Excel 的默认设置，输出字符串时无需指定。

{phang}
{opt top} 设置指定单元格的内容在单元格顶部垂直对齐。 {opt top} 不能与 {opt bottom} 或 {opt vcenter} 结合使用。

{phang}
{opt vcenter} 设置指定单元格的内容在单元格中心垂直对齐。 {opt vcenter} 不能与 {opt top} 或 {opt bottom} 结合使用。

{phang}
{opt bottom} 设置指定单元格的内容在单元格底部垂直对齐。 {opt bottom} 不能与 {opt top} 或 {opt vcenter} 结合使用。

{phang}
{opt txtindent(#)} 设置单元格范围内每个单元格的文本缩进。 {it:#} 必须是 0 到 15 之间的整数。

{phang}
{opt txtrotate(#)} 设置单元格范围内每个单元格的文本旋转。 {it:#} 必须是 0 到 180 之间的整数或等于 255。 {cmd:txtrotate(0)} 等于无旋转，默认设置为此。 {cmd:txtrotate(255)} 指定垂直文本。 值 {cmd:1}-{cmd:90} 将文本逆时针旋转 1 到 90 度。 值 {cmd:91}-{cmd:180} 将文本顺时针旋转 1 到 90 度。

{phang}
{opt txtwrap} 和 {opt notxtwrap} 指定文本是否在单元格内或在单元格范围内的每个单元格中换行。 默认设置为不换行。 {cmd:notxtwrap} 仅在单元格之前已格式化为换行时有效。 {opt txtwrap} 不能与 {opt shrinkfit} 结合使用。

{phang}
{opt shrinkfit} 和 {opt noshrinkfit} 指定文本是否应缩小以适应单元格宽度或在单元格范围的每个单元格中。 默认设置为不缩小。 {cmd:noshrinkfit} 仅在单元格之前已格式化为适应文本时有效。 {opt shrinkfit} 不能与 {opt txtwrap} 结合使用。

{phang}
{opt merge} 告诉 Excel 在指定的单元格范围内合并单元格。 {opt merge} 可以与 {opt left}、{opt right}、{opt hcenter}、{opt top}、{opt bottom} 和 {opt vcenter} 结合使用，以格式化合并的单元格。合并包含数据的单元格将保留左上角的数据。

{pmore}
合并单元格后，您可以使用指定的 {help putexcel advanced##cellrange:{it:cellrange}} 中的任一单元格引用合并的单元格。 例如，如果您指定了 {it:cellrange} 为 {cmd:A1:B2}，您可以使用 {cmd:A1}、{cmd:B1}、{cmd:A2} 或 {cmd:B2} 引用合并的单元格。

{phang}
{cmd:unmerge} 告诉 Excel 取消合并之前已合并的单元格。 使用 {cmd:unmerge} 时，只需使用之前指定的合并单元格中的单个单元格即可引用合并的单元格。
{p_end}