
{help putexcel_exptopts_list:English Version}
{hline}
{* *! version 1.0.1  30nov2015}{...}
{synopt :{opt overwr:itefmt}}在导出新内容时覆盖现有单元格格式{p_end}

{synopt :{opt asdate}}将 Stata 日期（{cmd:%td} 格式）{it:exp} 转换为 Excel 日期{p_end}
{synopt :{opt asdatetime}}将 Stata 日期时间（{cmd:%tc} 格式）{it:exp} 转换为 Excel 日期时间{p_end}
{synopt :{opt asdatenum}}将 Stata 日期 {it:exp} 转换为 Excel 日期编号，并保留单元格格式{p_end}
{synopt :{opt asdatetimenum}}将 Stata 日期时间 {it:exp} 转换为 Excel 日期时间编号，并保留单元格格式{p_end}

{synopt :{opt names}}同时为矩阵 {it:name} 写入行名和列名；不能与 {cmd:rownames} 或 {cmd:colnames} 结合使用{p_end}
{synopt :{opt rownames}}同时为矩阵 {it:name} 写入行名；不能与 {cmd:names} 或 {cmd:colnames} 结合使用{p_end}
{synopt :{opt colnames}}同时为矩阵 {it:name} 写入列名；不能与 {cmd:names} 或 {cmd:rownames} 结合使用{p_end}

{synopt :{opt colw:ise}}将 {it:returnset} 中的结果写入连续的列，而不是行{p_end}