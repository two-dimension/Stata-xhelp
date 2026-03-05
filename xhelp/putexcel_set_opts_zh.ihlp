
{help putexcel_set_opts:English Version}
{hline}
{* *! version 1.0.3  08may2019}{...}
{* *! 此帮助文件同时由 putexcel 和 putexcel advanced 调用。}{...}
{phang}
{opt open} 允许 {opt putexcel set} 在内存中打开 Excel 文件进行修改。 当发出 {opt putexcel close} 命令时，Excel 文件被写入磁盘。

{phang} 
{opt modify} 允许 {opt putexcel set} 修改 Excel 文件。

{phang} 
{opt replace} 允许 {opt putexcel set} 覆盖现有的 Excel 工作簿。 当发出第一个 {cmd:putexcel} 命令时，工作簿被覆盖，除非使用了 {cmd:open} 选项。

{phang}
{cmd:sheet(}{it:sheetname} [{cmd:, replace}]{cmd:)} 保存到名为 {it:sheetname} 的工作表。如果工作簿中不存在名为 {it:sheetname} 的工作表，则会创建一个名为 {it:sheetname} 的新工作表。如果未指定此选项，则使用 {cmd:Sheet1}。

{pmore}
{opt replace} 允许 {opt putexcel set} 如果指定的 {it:filename} 中存在 {it:sheetname} 则覆盖它。
{p_end}