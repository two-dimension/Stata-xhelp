
{help putexcel_align_opts:English Version}
{hline}
{* *! version 1.0.0  22oct2015}{...}
{* *! 本帮助文件适用于 putexcel。如果在这里进行更改，请检查}{...}
{* *! 是否需要对 putexcela_align_opts.ihlp 进行类似的更改。}{...}
{phang}
{opt left} 将指定的单元格内容左对齐。 {opt left} 不能与 {opt right} 或 {opt hcenter} 同时使用。数值的右对齐是 Excel 的默认设置，对于输出数字时不需要指定。

{phang}
{opt hcenter} 将指定的单元格内容水平居中。 {opt hcenter} 不能与 {opt left} 或 {opt right} 同时使用。

{phang}
{opt right} 将指定的单元格内容右对齐。 {opt right} 不能与 {opt left} 或 {opt hcenter} 同时使用。文本的左对齐是 Excel 的默认设置，对于输出字符串时不需要指定。

{phang}
{opt top} 将指定的单元格内容在单元格顶部垂直对齐。 {opt top} 不能与 {opt bottom} 或 {opt vcenter} 同时使用。

{phang}
{opt vcenter} 将指定的单元格内容在单元格中心垂直对齐。 {opt vcenter} 不能与 {opt top} 或 {opt bottom} 同时使用。

{phang}
{opt bottom} 将指定的单元格内容在单元格底部垂直对齐。 {opt bottom} 不能与 {opt top} 或 {opt vcenter} 同时使用。

{phang}
{opt txtindent(#)} 设置单元格范围内每个单元格的文本缩进。 {it:#} 必须是介于 0 到 15 之间的整数。

{phang}
{opt txtrotate(#)} 设置单元格范围内每个单元格的文本旋转。 {it:#} 必须是介于 0 到 180 之间的整数或等于 255。 {cmd:txtrotate(0)} 表示不旋转，是默认值。 {cmd:txtrotate(255)} 表示垂直文本。 值 {cmd:1}-{cmd:90} 将文本逆时针旋转 1 到 90 度。 值 {cmd:91}-{cmd:180} 将文本顺时针旋转 1 到 90 度。

{phang}
{opt txtwrap} 和 {opt notxtwrap} 指定文本是否在单元格中或在单元格范围内的每个单元格中换行。 默认设置为不换行。 {cmd:notxtwrap} 仅在单元格或单元格之前已格式化为换行时才有效。 {opt txtwrap} 不能与 {opt shrinkfit} 同时指定。

{phang}
{opt shrinkfit} 和 {opt noshrinkfit} 指定文本是否缩小以适应单元格的宽度或在单元格范围内的每个单元格中。 默认设置为不缩小。 {cmd:noshrinkfit} 仅在单元格或单元格之前已格式化为文本以适应时有效。 {opt shrinkfit} 不能与 {opt txtwrap} 同时指定。

{phang}
{opt merge} 告诉 Excel 指定单元格范围内的单元格应合并。 {opt merge} 可以与 {opt left}、{opt right}、{opt hcenter}、{opt top}、{opt bottom} 和 {opt vcenter} 组合，以格式化合并后的单元格。合并包含数据的单元格将保留左上角的数据。

{pmore}
合并单元格后，可以使用指定的任意单个单元格来引用合并后的单元格
{help putexcel##cellrange:{it:cellrange}}。例如，如果指定了 {it:cellrange} 为 {cmd:A1:B2}，则可以使用 {cmd:A1}、{cmd:B1}、{cmd:A2} 或 {cmd:B2} 来引用合并后的单元格。

{phang}
{cmd:unmerge} 告诉 Excel 取消合并先前合并的单元格。 使用 {cmd:unmerge} 时，只需使用先前指定的合并单元格中的任意单个单元格
{help putexcel##cellrange:{it:cellrange}}。{p_end}