
{smcl}
{* *! version 1.0.3  08may2019}{...}
{* *! 本帮助文档适用于 putexcel。如果您在这里进行更改，请检查}{...}
{* *! 是否需要对 putexcela_output_types.ihlp 进行类似更改。}{...}
{help putexcel_output_types:English Version}
{hline}
{marker expr}{...}
{phang}
{it:exp} 将有效的 Stata 表达式写入单元格；请参见
{help exp_zh:[U] 13 函数和表达式}。 Stata 的日期和日期时间
与 Excel 的日期和日期时间不同。 为了正确导出日期和日期时间
值，请使用 {opt asdate} 和 {opt asdatetime}。

{marker matrix}{...}
{phang}
{opth matrix:(matrix:matname)} 将 Stata 矩阵的值写入 Excel。
Stata 根据矩阵的大小（行数和列数）以及您在
{it:ul_cell} 中指定的位置默认确定数据在 Excel 中放置的位置。 默认情况下，{it:ul_cell} 包含
{it:matname} 的第一个元素，矩阵行名和列名不会被写入。

{marker picture}{...}
{phang}
{opth image(filename)} 将可移植网络图形（{cmd:.png}）、JPEG
（{cmd:.jpg}）、Windows 元文件（{cmd:.wmf}）、设备无关位图
（{cmd:.dib}）、增强元文件（{cmd:.emf}）或位图（{cmd:.bmp}）文件写入
Excel 工作表。 图像的左上角与指定的
{it:ul_cell} 的左上角对齐。 图像不会被调整大小。
如果 {it:filename} 包含空格，则必须用双引号括起来。

{marker returnset}{...}
{phang}
{it:returnset} 是用于标识一组
{help return_zh} 值的快捷名称。 主要供程序员和
那些打算在 Excel 中进一步处理其导出结果的用户使用。
{it:returnset} 可以是以下任意一个：

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
{opt formula(formula)} 将 Excel 公式写入指定的
{it:ul_cell} 中。 {it:formula} 可以是任何有效的 Excel 公式。 Stata 不会
验证公式；文本将原样传递给 Excel。

{marker etable}{...}
{phang}
{cmd:etable}[{cmd:(}{it:#}1 {it:#}2 ... {it:#n}{cmd:)}] 向从
{it:ul_cell} 开始的 Excel 文件中添加自动生成的表格。
该表可从最后一个估计命令的系数表中获取，从最后一个
{help margins_zh} 命令之后的边际表中获取，
或从一个或多个模型的结果表中获取，这些模型由
{helpb estimates table} 显示。

{pmore} 
如果估计命令输出 {it:n} > 1 个系数表，默认情况下会添加所有表格，并分配
相应的表名 {it:tablename}{cmd:1}、{it:tablename}{cmd:2}、...、{it:tablename}_{it:n}。
要指定要添加的表格，请向 {cmd:etable} 提供可选的 numlist。
例如，要仅添加估计输出中的第一和第三个表，指定 {cmd:etable(1 3)}。 一些估计命令不支持 {cmd:etable} 输出类型。 请参阅
{mansection RPT AppendixforputdocxDescriptionUnsupportedestimationcommands:{it:不支持的估计命令}}
在 {bf:[RPT] putdocx 附录} 中获取不支持
{cmd:putexcel} 的估计命令列表。
{p_end}