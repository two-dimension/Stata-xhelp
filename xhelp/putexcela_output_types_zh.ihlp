
{help putexcela_output_types:English Version}
{hline}
{* *! 版本 1.0.3  2019年5月8日}{...}
{* *! 本文档适用于 putexcel 高级功能。如果您在此处进行更改，请检查}{...}
{* *! 是否需要对 putexcel_output_types.ihlp 进行类似的更改。}{...}
{marker expr}{...}
{phang}
{it:exp} 将有效的 Stata 表达式写入单元格；请参见
{help exp_zh:[U] 13 函数与表达式}。 Stata 日期和日期时间
与 Excel 的日期和日期时间不同。 要正确导出日期和日期时间值，请使用 {opt asdate} 和 {opt asdatetime}。

{marker matrix}{...}
{phang}
{opth matrix:(matrix:matname)} 将 Stata 矩阵中的值写入 Excel。
Stata 默认根据矩阵的大小（行数和列数）以及您在 {it:ul_cell} 中指定的位置来确定数据在 Excel 中的位置。 默认情况下，{it:ul_cell} 包含 {it:matname} 的第一个元素，矩阵的行名和列名不会被写入。

{marker picture}{...}
{phang}
{opth image(filename)} 将可移植网络图形文件 ({cmd:.png})、JPEG 文件
({cmd:.jpg})、Windows 元文件 ({cmd:.wmf})、设备无关位图文件
({cmd:.dib})、增强型元文件 ({cmd:.emf}) 或位图文件
({cmd:.bmp}) 写入 Excel 工作表。 图像的左上角与指定的 {it:ul_cell} 的左上角对齐。 图像不会被调整大小。
如果 {it:filename} 包含空格，则必须用双引号括起来。

{marker returnset}{...}
{phang}
{it:returnset} 是用于标识一组 {help return_zh} 值的快捷名称。 {it:returnset} 可以是以下任意一个：

         {it:returnset}
	{hline 25}
         {opt escal:ars}   {opt escalarn:ames}
         {opt rscal:ars}   {opt rscalarn:ames}
         {opt emac:ros}    {opt emacron:ames}
         {opt rmac:ros}    {opt rmacron:ames}
         {opt emat:rices}  {opt ematrixn:ames}
         {opt rmat:rices}  {opt rmatrixn:ames}
         {opt e*}          {opt ena:mes}
         {opt r*}          {opt rna:mes}
	{hline 25}

{marker formula}{...}
{phang}
{opt formula(formula)} 将 Excel 公式写入指定在 {it:ul_cell} 中的单元格。 {it:formula} 可以是任何有效的 Excel 公式。 Stata 不会验证公式；文本将逐字传递到 Excel。

{marker etable}{...}
{phang}
{cmd:etable}[{cmd:(}{it:#}1 {it:#}2 ... {it:#n}{cmd:)}] 将自动生成的表格添加到从 {it:ul_cell} 开始的 Excel 文件中。
该表格可以来自最后一个估计命令的系数表，或者来自上一个 {help margins_zh} 命令后的边际表，
或者来自通过 {helpb estimates table} 显示的一个或多个模型的结果表。

{pmore} 
如果估计命令输出 {it:n} > 1 个系数表，默认情况下会添加所有表并分配相应的表名
{it:tablename}{cmd:1}、{it:tablename}{cmd:2}、...、{it:tablename}_{it:n}。
要指定要添加的表，请将可选的数字列表提供给 {cmd:etable}。
例如，要仅添加估计输出中的第一个和第三个表，请指定 {cmd:etable(1 3)}。 一些估计命令不支持
{cmd:etable} 输出类型。有关不受支持的估计命令的列表，请参见
{mansection RPT AppendixforputdocxDescriptionUnsupportedestimationcommands:{it:不支持的估计命令}}
在 {bf:[RPT] putdocx 附录} 中。
{p_end}