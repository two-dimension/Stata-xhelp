
{help putexcel_expt_opts:English Version}
{hline}
{* *! 版本 1.0.2  2017年10月25日}{...}
{* *! 此帮助文档适用于 putexcel。如果您在此处进行更改，请检查}{...}
{* *! 是否需要对 putexcela_expt_opts.ihlp 进行类似的更改。}{...}
{phang}
{opt overwritefmt} 使得 {opt putexcel} 删除其写入新输出的单元格或单元格中的任何现有单元格格式。默认情况下，所有现有单元格格式都会被保留。{opt overwritefmt} 结合单元格范围使用时，可以更高效地写入单元格格式。

{phang}
{opt asdate} 告诉 {opt putexcel} 指定的 {it:exp} 是一个 Stata {cmd:%td} 格式的日期，应转换为 Excel 日期，格式为 {it:m}/{it:d}/{it:yyyy}。

{pmore}
如果没有指定 {help exp_zh:{it:exp}} 作为输出类型，则此选项无效。

{phang}
{opt asdatetime} 告诉 {opt putexcel} 指定的 {it:exp} 是一个 Stata {cmd:%tc} 格式的日期时间，应转换为 Excel 日期时间，格式为 {it:m}/{it:d}/{it:yyyy h}:{it:mm}。

{pmore}
如果没有指定 {help exp_zh:{it:exp}} 作为输出类型，则此选项无效。

{phang}
{opt asdatenum} 告诉 {opt putexcel} 指定的 {it:exp} 是一个 Stata {cmd:%td} 格式的日期，应转换为 Excel 日期数字，同时保留单元格的格式。

{pmore}
如果没有指定 {help exp_zh:{it:exp}} 作为输出类型，则此选项无效。

{phang}
{opt asdatetimenum} 告诉 {opt putexcel} 指定的 {it:exp} 是一个 Stata {cmd:%tc} 格式的日期时间，应转换为 Excel 日期时间数字，同时保留单元格的格式。

{pmore}
如果没有指定 {help exp_zh:{it:exp}} 作为输出类型，则此选项无效。

{phang}
{opt names} 指定将矩阵的行名称和列名称写入 Excel 工作表，并与矩阵值一起输出。如果您指定了 {opt names}，则 {it:ul_cell} 将为空，右侧单元格将包含第一列的名称，下方单元格将包含第一行的名称。{opt names} 不能与 {opt rownames} 或 {opt colnames} 一起指定。

{pmore}
如果没有指定 {opt matrix()} 作为输出类型，则此选项无效。

{phang}
{opt rownames} 指定将矩阵的行名称写入 Excel 工作表，并与矩阵值一起输出。如果您指定了 {opt rownames}，则 {it:ul_cell} 将包含第一行的名称。{opt rownames} 不能与 {opt names} 或 {opt colnames} 一起指定。

{pmore}
如果没有指定 {opt matrix()} 作为输出类型，则此选项无效。

{phang}
{opt colnames} 指定将矩阵的列名称写入 Excel 工作表，并与矩阵值一起输出。如果您指定了 {opt colnames}，则 {it:ul_cell} 将包含第一列的名称。{opt colnames} 不能与 {opt names} 或 {opt rownames} 一起指定。

{pmore}
如果没有指定 {opt matrix()} 作为输出类型，则此选项无效。

{phang}
{opt colwise} 指定如果使用了 {help putexcel##returnset:{it:returnset}}，则写入 Excel 工作表的值将以连续列的形式写入。默认情况下，值是以连续行的形式写入。

{pmore}
如果没有指定 {it:returnset} 作为输出类型，则此选项无效。
{p_end}