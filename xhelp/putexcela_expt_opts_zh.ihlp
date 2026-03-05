
{smcl}
{* *! version 1.0.2  25oct2017}{...}
{* *! 这个 ihlp 文件是针对 putexcel 高级功能的。如果您在这里进行更改，请检查}{...}
{* *! 是否需要对 putexcel_expt_opts.ihlp 进行类似的更改。}{...}
{help putexcela_expt_opts:English Version}
{hline}
{phang}
{opt overwritefmt} 使得 {opt putexcel} 删除其写入新输出的单元格或单元格中的任何现有单元格格式。默认情况下，所有现有单元格格式都会保留。 {opt overwritefmt} 在与单元格范围结合使用时，以更高效的方式写入单元格格式。

{phang}
{opt asdate} 告诉 {opt putexcel} 指定的 {it:exp} 是 Stata 的 {cmd:%td} 格式日期，应转换为 Excel 日期，使用 {it:m}/{it:d}/{it:yyyy} 的 Excel 日期格式。

{pmore}
此选项在未指定 {help exp_zh:{it:exp}} 作为输出类型之一时没有效果。

{phang}
{opt asdatetime} 告诉 {opt putexcel} 指定的 {it:exp} 是 Stata 的 {cmd:%tc} 格式日期时间，应转换为 Excel 日期时间，使用 {it:m}/{it:d}/{it:yyyy h}:{it:mm} 的 Excel 日期时间格式。

{pmore}
此选项在未指定 {help exp_zh:{it:exp}} 作为输出类型之一时没有效果。

{phang}
{opt asdatenum} 告诉 {opt putexcel} 指定的 {it:exp} 是 Stata 的 {cmd:%td} 格式日期，应转换为 Excel 日期数字，保留单元格的格式。

{pmore}
此选项在未指定 {help exp_zh:{it:exp}} 作为输出类型之一时没有效果。

{phang}
{opt asdatetimenum} 告诉 {opt putexcel} 指定的 {it:exp} 是 Stata 的 {cmd:%tc} 格式日期时间，应转换为 Excel 日期时间数字，保留单元格的格式。

{pmore}
此选项在未指定 {help exp_zh:{it:exp}} 作为输出类型之一时没有效果。

{phang}
{opt names} 指定将矩阵的行名和列名写入 Excel 工作表，以及矩阵的值。如果您指定了 {opt names}，则 {it:ul_cell} 将为空，其右侧的单元格将包含第一列的名称，下方的单元格将包含第一行的名称。 {opt names} 不能与 {opt rownames} 或 {opt colnames} 一起指定。

{pmore}
此选项在未指定 {opt matrix()} 作为输出类型之一时没有效果。

{phang}
{opt rownames} 指定将矩阵的行名写入 Excel 工作表，以及矩阵的值。如果您指定了 {opt rownames}，则 {it:ul_cell} 将包含第一行的名称。 {opt rownames} 不能与 {opt names} 或 {opt colnames} 一起指定。

{pmore}
此选项在未指定 {opt matrix()} 作为输出类型之一时没有效果。

{phang}
{opt colnames} 指定将矩阵的列名写入 Excel 工作表，以及矩阵的值。如果您指定了 {opt colnames}，则 {it:ul_cell} 将包含第一列的名称。 {opt colnames} 不能与 {opt names} 或 {opt rownames} 一起指定。

{pmore}
此选项在未指定 {opt matrix()} 作为输出类型之一时没有效果。

{phang}
{opt colwise} 指定如果使用 {help putexcel##returnset:{it:returnset}}，则写入 Excel 工作表的值应按连续列写入。默认情况下，值是按连续行写入的。

{pmore}
此选项在未指定 {it:returnset} 作为输出类型之一时没有效果。
{p_end}