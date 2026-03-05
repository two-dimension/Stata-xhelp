{smcl}
{* *! version 1.1.9  12jun2019}{...}
{vieweralsosee "[M-5] _docx*()" "mansection M-5 _docx*()"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[M-5] Pdf*()" "help mf pdf"}{...}
{vieweralsosee "[M-5] xl()" "help mf xl"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[M-4] IO" "help m4 io"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[RPT] putdocx intro" "help putdocx intro"}{...}
{vieweralsosee "[RPT] putexcel" "help putexcel_zh"}{...}
{vieweralsosee "[RPT] putpdf intro" "help putpdf intro"}{...}
{viewerjumpto "Syntax" "mf__docx_zh##syntax"}{...}
{viewerjumpto "Description" "mf__docx_zh##description"}{...}
{viewerjumpto "Links to PDF documentation" "mf__docx_zh##linkspdf"}{...}
{viewerjumpto "Remarks" "mf__docx_zh##remarks"}{...}
{viewerjumpto "Diagnostics" "mf__docx_zh##diagnostics"}{...}
{viewerjumpto "Source code" "mf__docx_zh##source"}
{help mf__docx:English Version}
{hline}{...}
{p2colset 1 19 21 2}{...}
{p2col:{bf:[M-5] _docx*()} {hline 2}}生成 Office Open XML (.docx) 文件 
{p_end}
{p2col:}({mansection M-5 _docx*():查看完整的 PDF 手册条目}){p_end}
{p2colreset}{...}


{marker syntax}{...}
{title:语法}

{p 4 4 2}
语法以以下标题呈现：

	{help mf__docx##syn_file:创建和保存 .docx 文件}
	{help mf__docx##syn_para:添加段落和文本}
	{help mf__docx##syn_image:添加图像文件}
	{help mf__docx##syn_table:添加表格}
	{help mf__docx##syn_table_edit:编辑表格}
	{help mf__docx##syn_query:查询例程}


{marker syn_file}{...}
    {title:创建和保存 .docx 文件}

{p 8 25 1}
{it:real scalar}{bind: }
{help mf__docx##remarks_file:{bf:_docx_new()}}

{marker dh}{...}
{p 4 4 2}
在帮助文件的其余部分中，{it:dh} 是由
{cmd:_docx_new()} 返回的值。

{p 8 25 1}
{it:real scalar}{bind: }
{help mf__docx##remarks_file:{bf:_docx_save(}{it:dh}{bf:,} {it:string scalar filename} [{bf:,} {it:real scalar replace}]{bf:)}}

{p 8 25 1}
{it:real scalar}{bind: }
{help mf__docx##remarks_file:{bf:_docx_append(}{it:dh}{bf:,} {it:string scalar filename}{bf:)}}

{p 8 25 1}
{it:real scalar}{bind: }
{help mf__docx##remarks_file:{bf:_docx_close(}{it:dh}{bf:)}}

{p 8 25 1}
{it:void}{bind:        }
{help mf__docx##remarks_file:{bf:_docx_closeall()}}


{marker syn_para}{...}
    {title:添加段落和文本}

{p 8 25 1}
{it:real scalar}{bind: }
{help mf__docx##remarks_para:{bf:_docx_paragraph_new(}{it:dh}{bf:,} {it:string scalar s}{bf:)}}

{p 8 25 1}
{it:real scalar}{bind: }
{help mf__docx##remarks_para:{bf:_docx_paragraph_new_styledtext(}{it:dh}{bf:,} {it:string scalar s}{bf:,} {it:style}{bf:)}}

{p 8 25 1}
{it:real scalar}{bind: }
{help mf__docx##remarks_para:{bf:_docx_paragraph_add_text(}{it:dh}{bf:,} {it:string scalar s} [{bf:,} {it:real scalar nospace}]{bf:)}}

{p 8 25 1}
{it:real scalar}{bind: }
{help mf__docx##remarks_para:{bf:_docx_text_add_text(}{it:dh}{bf:,} {it:string scalar s} [{bf:,} {it:real scalar nospace}]{bf:)}}

{marker syn_image}{...}
    {title:添加图像文件}

{p 8 25 1}
{it:real scalar}{bind: }
{help mf__docx##remarks_image:{bf:_docx_image_add(}{it:dh}{bf:,} {it:string scalar filepath} [{bf:,} {it:real scalar link}{bf:,} {it:cx}{bf:,} {it:cy}]{bf:)}}


{marker syn_table}{...}
    {title:添加表格}

{p 8 25 1}
{it:real scalar}{bind: }
{help mf__docx##remarks_table:{bf:_docx_new_table(}{it:dh}{bf:,} {it:real scalar row}{bf:,} {it:col} [{bf:,} {it:noadd}]{bf:)}}

{p 8 25 1}
{it:real scalar}{bind: }
{help mf__docx##remarks_table:{bf:_docx_add_matrix(}{it:dh}{bf:,} {it:string scalar name}{bf:,} {it:fmt}{bf:,} {it:real scalar colnames}{bf:,} {it:rownames} [{bf:,} {it:noadd}]{bf:)}}

{p 8 25 1}
{it:real scalar}{bind: }
{help mf__docx##remarks_table:{bf:_docx_add_mata(}{it:dh}{bf:,} {it:real matrix m}{bf:,} {it:string scalar fmt} [{bf:,} {it:real scalar noadd}]{bf:)}}

{p 8 25 1}
{it:real scalar}{bind: }
{help mf__docx##remarks_table:{bf:_docx_add_data(}{it:dh}{bf:,} {it:real scalar varnames}{bf:,} {it:obsno}{bf:,} {it:real matrix i}{bf:,} {it:rowvector j} [{bf:,} {it:real scalar noadd}{bf:,} {it:scalar selectvar}]{bf:)}}

{marker tid}{...}
{p 4 4 2}
{cmd:_docx_new_table()}, {cmd:_docx_add_matrix()}, {cmd:_docx_add_mata()}, 和
{cmd:_docx_add_data()} 返回新表的整数 ID {it:tid} 以供将来使用。在帮助文件的其余部分中，{it:tid} 用来表示由 {cmd:_docx_new_table()},
{cmd:_docx_add_matrix()}, {cmd:_docx_add_mata()} 或 {cmd:_docx_add_data()} 返回的表的整数 ID。 


{marker syn_table_edit}{...}
    {title:编辑表格}

{p 4 4 2}
成功创建表格后，可以使用以下函数编辑由 {it:tid} 标识的表格：

{p 8 25 1}
{it:real scalar}{bind: }
{help mf__docx##remarks_table_edit:{bf:_docx_table_add_row(}{it:dh}{bf:,} {it:tid}{bf:,} {it:real scalar i}{bf:,} {it:count}{bf:)}}

{p 8 25 1}
{it:real scalar}{bind: }
{help mf__docx##remarks_table_edit:{bf:_docx_table_del_row(}{it:dh}{bf:,} {it:tid}{bf:,} {it:real scalar i}{bf:)}}

{p 8 25 1}
{it:real scalar}{bind: }
{help mf__docx##remarks_table_edit:{bf:_docx_table_add_cell(}{it:dh}{bf:,} {it:tid}{bf:,} {it:real scalar i}{bf:,} {it:j} [{bf:,} {it:string scalar s}]{bf:)}}

{p 8 25 1}
{it:real scalar}{bind: }
{help mf__docx##remarks_table_edit:{bf:_docx_table_del_cell(}{it:dh}{bf:,} {it:tid}{bf:,} {it:real scalar i}{bf:,} {it:j}{bf:)}}

{p 8 25 1}
{it:real scalar}{bind: }
{help mf__docx##remarks_table_edit:{bf:_docx_cell_set_colspan(}{it:dh}{bf:,} {it:tid}{bf:,} {it:real scalar i}{bf:,} {it:j}{bf:,} {it:count}{bf:)}}

{p 8 25 1}
{it:real scalar}{bind: }
{help mf__docx##remarks_table_edit:{bf:_docx_cell_set_rowspan(}{it:dh}{bf:,} {it:tid}{bf:,} {it:real scalar i}{bf:,} {it:j}{bf:,} {it:count}{bf:)}}

{p 8 25 1}
{it:real scalar}{bind: }
{help mf__docx##remarks_table_edit:{bf:_docx_cell_set_span(}{it:dh}{bf:,} {it:tid}{bf:,} {it:real scalar i}{bf:,} {it:j}{bf:,} {it:rowcount}{bf:,} {it:colcount}{bf:)}}

{p 8 25 1}
{it:real scalar}{bind: }
{help mf__docx##remarks_table_edit:{bf:_docx_table_mod_cell(}{it:dh}{bf:,} {it:tid}{bf:,} {it:real scalar i}{bf:,} {it:j}{bf:,} {it:string scalar s} [{bf:,} {it: real scalar append}]{bf:)}}

{p 8 25 1}
{it:real scalar}{bind: }
{help mf__docx##remarks_table_edit:{bf:_docx_table_mod_cell_table(}{it:dh}{bf:,} {it:tid}{bf:,} {it:real scalar i}{bf:,} {it:j}{bf:,} {it:append}{bf:,} {it:src_tid}{bf:)}}

{p 8 25 1}
{it:real scalar}{bind: }
{help mf__docx##remarks_table_edit:{bf:_docx_table_mod_cell_image(}{it:dh}{bf:,} {it:tid}{bf:,} {it:real scalar i}{bf:,} {it:j}{bf:,} {it:string scalar filepath} [{bf:,} {it:real scalar link}{bf:,} {it:append}{bf:,} {it:cx}{bf:,} {it:cy}]{bf:)}}


{marker syn_query}{...}
    {title:查询例程}

{p 8 25 1}
{it:real scalar}{bind: }
{help mf__docx##remarks_query:{bf:_docx_query(}{it:real matrix doc_ids}{bf:)}}

{p 8 25 1}
{it:real scalar}{bind: }
{help mf__docx##remarks_query:{bf:_docx_query_table(}{it:dh}{bf:,} {it:tid}{bf:)}}

{p 8 25 1}
{it:real scalar}{bind: }
{help mf__docx##remarks_query:{bf:_docx_table_query_row(}{it:dh}{bf:,} {it:tid}{bf:,} {it:real scalar i}{bf:)}}


{marker description}{...}
{title:描述}

{pstd}
语法图描述了一组 Mata 函数，用于生成与 Microsoft Word 2007 及更高版本兼容的 Office Open XML ({cmd:.docx}) 文件。  


{marker linkspdf}{...}
{title:PDF 文档链接}

        {mansection M-5 _docx*()备注和示例:备注和示例}

{pstd}
上述部分不包含在此帮助文件中。


{marker remarks}{...}
{title:备注}

{pstd}
以下各节描述了 Mata 函数的用途、输入参数和返回代码。

{p 4 4 2}
备注以以下标题呈现：

	{help mf__docx##detailed_desc:详细描述}
	{help mf__docx##remarks_error:错误代码}
	{help mf__docx##remarks_functions:函数}
  	    {help mf__docx##remarks_file:创建和保存 .docx 文件}
	    {help mf__docx##remarks_para:添加段落和文本}
	    {help mf__docx##remarks_image:添加图像}
	    {help mf__docx##remarks_table:添加表格}
	    {help mf__docx##remarks_table_edit:编辑表格}
	    {help mf__docx##remarks_query:查询例程}
	{help mf__docx##remarks_save:将文档保存到磁盘文件}
	{help mf__docx##remarks_cur:当前段落和文本}
	{help mf__docx##remarks_img:支持的图像类型}
	{help mf__docx##remarks_link:链接和嵌入的图像}
	{help mf__docx##remarks_style:样式}
	{help mf__docx##remarks_per:性能}
	{help mf__docx##examples:示例}
	    {help mf__docx##example_open:在内存中创建 .docx 文档}
	    {help mf__docx##example_para:添加段落和文本}
	    {help mf__docx##example_data:显示数据}
	    {help mf__docx##example_table:显示回归结果}
	    {help mf__docx##example_image:添加图像}
	    {help mf__docx##example_nest_table:显示嵌套表格}
	    {help mf__docx##example_table_image:将图像添加到表格单元格}
	    {help mf__docx##example_save:将内存中的 .docx 文档保存到磁盘文件}


{marker detailed_desc}{...}
{title:详细描述}

{p 4 4 2}
{cmd:_docx_new()} 在内存中创建一个空的 {cmd:.docx} 文档。

{p 4 4 2}
{cmd:_docx_save(}{it:dh}{cmd:,} {it:filename} [{cmd:,} {it:replace}]{cmd:)}
将由 ID {it:dh} 标识的文档保存到磁盘文件 {it:filename}。如果指定了 {it:replace} 且不为 {cmd:0}，则将覆盖文件 {it:filename}。

{p 4 4 2}
{cmd:_docx_append(}{it:dh}{cmd:,} {it:filename}{cmd:)}
将由 ID {it:dh} 标识的文档追加到磁盘文件 {it:filename}。

{p 4 4 2}
{cmd:_docx_close(}{it:dh}{cmd:)} 关闭内存中由 ID {it:dh} 标识的文档。

{p 4 4 2}
{cmd:_docx_closeall()} 关闭内存中的所有 {cmd:.docx} 文档。

{p 4 4 2}
{cmd:_docx_paragraph_new(}{it:dh}{cmd:,} {it:s}{cmd:)} 使用 {it:string scalar s} 中指定的内容创建一个新段落。

{p 4 4 2}
{cmd:_docx_paragraph_new_styledtext(}{it:dh}{cmd:,} {it:s}{cmd:,}
{it:style}{cmd:)} 创建一个新段落，内容为 {it:string scalar s} 中指定的内容，文本具有在 {it:style} 中指定的样式。样式可以是 {cmd:"Title"}, {cmd:"Heading1"}, {cmd:"Heading2"} 等。请参见 {browse "https://www.stata.com/docx_styles.html"} 获取关于样式的更多讨论。

{p 4 4 2}
{cmd:_docx_paragraph_add_text(}{it:dh}{cmd:,} {it:s} [{cmd:,}
{it:nospace}]{cmd:)} 向当前段落添加文本 {it:s}。如果指定了 {it:nospace} 并且不为 {cmd:0}，则会裁剪 {it:s} 中的前导空格；否则，保留 {it:s} 中的前导空格。

{p 4 4 2}
{cmd:_docx_text_add_text(}{it:dh}{cmd:,} {it:s} [{cmd:,}
{it:nospace}]{cmd:)} 向当前文本添加文本 {it:s}。如果指定了 {it:nospace} 并且不为 {cmd:0}，则会裁剪 {it:s} 中的前导空格；否则，保留 {it:s} 中的前导空格。

{p 4 4 2}
{cmd:_docx_image_add(}{it:dh}{cmd:,} {it:path} [{cmd:,} {it:link}{cmd:,}
{it:cx}{cmd:,} {it:cy}]{cmd:)} 向文档中添加图像文件。{it:filepath} 是图像文件的路径。

{p 4 4 2}
{cmd:_docx_new_table(}{it:dh}{cmd:,} {it:row}{cmd:,} {it:col} [{cmd:,}
{it:noadd}]{cmd:)} 创建一个大小为 {it:row} x {it:col} 的空表格。

{p 4 4 2}
{cmd:_docx_add_matrix(}{it:dh}{cmd:,} {it:name}{cmd:,} {it:fmt}{cmd:,}
{it:colnames}{cmd:,} {it:rownames} [{cmd:,} {it:noadd}]{cmd:)} 在文档中以表格形式添加一个 {help matrix_zh:matrix}，并返回表 ID {it:tid} 以供将来使用。

{p 4 4 2}
{cmd:_docx_add_mata(}{it:dh}{cmd:,} {it:m}{cmd:,} {it:fmt} [{cmd:,}
{it:noadd}]{cmd:)} 在文档中以表格形式添加一个 Mata 矩阵，并返回表 ID {it:tid} 以供将来使用。

{p 4 4 2}
{cmd:_docx_add_data(}{it:dh}{cmd:,} {it:varnames}{cmd:,} {it:obsno}{cmd:,}
{it:i}{cmd:,} {it:j} [{cmd:,} {it:noadd}{cmd:,} {it:selectvar}]{cmd:)} 在文档中以表格形式添加当前内存中的 Stata 数据集，并返回表 ID {it:tid} 以供将来使用。

{p 4 4 2}
{cmd:_docx_table_add_row(}{it:dh}{cmd:,} {it:tid}{cmd:,} {it:i}{cmd:,}
{it:count}{cmd:)} 向表 ID {it:tid} 添加一行，列数为 {it:count}，并放置在第 {it:i} 行后面。

{p 4 4 2}
{cmd:_docx_table_del_row(}{it:dh}{cmd:,} {it:tid}{cmd:,} {it:i}{cmd:)} 删除表中的第 {it:i} 行。

{p 4 4 2}
{cmd:_docx_table_add_cell(}{it:dh}{cmd:,} {it:tid}{cmd:,} {it:i}{cmd:,} {it:j}
[{cmd:,} {it:s}]{cmd:)} 在表 ID {it:tid} 中的第 {it:i} 行的第 {it:j} 列后添加一个单元格。

{p 4 4 2}
{cmd:_docx_table_del_cell(}{it:dh}{cmd:,} {it:tid}{cmd:,} {it:i}{cmd:,}
{it:j}{cmd:)} 删除表 ID {it:tid} 中的第 {it:i} 行和第 {it:j} 列的单元格。

{p 4 4 2}
{cmd:_docx_cell_set_colspan(}{it:dh}{cmd:,} {it:tid}{cmd:,}
{it:i}{cmd:,} {it:j}{cmd:,} {it:count}{cmd:)} 将第 {it:i} 行的第 {it:j} 列单元格的列跨度设置为 {it:count} 个单元格。

{p 4 4 2}
{cmd:_docx_cell_set_rowspan(}{it:dh}{cmd:,} {it:tid}{cmd:,}
{it:i}{cmd:,} {it:j}{cmd:,} {it:count}{cmd:)} 将第 {it:i} 行的第 {it:j} 列单元格的行跨度设置为 {it:count} 个单元格。

{p 4 4 2}
{cmd:_docx_cell_set_span(}{it:dh}{cmd:,} {it:tid}{cmd:,}
{it:i}{cmd:,} {it:j}{cmd:,} {it:rowcount}{cmd:,} {it:colcount}{cmd:)} 将第 {it:i} 行的第 {it:j} 列单元格的行跨度设置为 {it:rowcount} 个单元格，并将列跨度设置为 {it:colcount} 个单元格。

{p 4 4 2}
{cmd:_docx_table_mod_cell(}{it:dh}{cmd:,} {it:tid}{cmd:,} {it:i}{cmd:,}
{it:j}{cmd:,} {it:s} [{cmd:,} {it:append}]{cmd:)} 用文本 {it:s} 修改第 {it:i} 行第 {it:j} 列的单元格。

{p 4 4 2}
{cmd:_docx_table_mod_cell_table(}{it:dh}{cmd:,} {it:tid}{cmd:,} {it:i}{cmd:,}
{it:j}{cmd:,} {it:append}{cmd:,} {it:src_tid}{cmd:)} 使用表格 ID {it:src_tid} 修改第 {it:i} 行和第 {it:j} 列的单元格。

{p 4 4 2}
{cmd:_docx_table_mod_cell_image(}{it:dh}{cmd:,} {it:tid}{cmd:,} {it:i}{cmd:,}
{it:j}{cmd:,} {it:filepath} [{cmd:,} {it:link}{cmd:,} {it:append}{cmd:,} 
{it:cx}{cmd:,} {it:cy}]{cmd:)} 使用图像修改第 {it:i} 行和第 {it:j} 列的单元格。{it:filepath} 是图像文件的路径。

{marker remarks_error}{...}
    {title:错误代码}

{p 4 4 2}
如果输入参数不符合规范，函数只能中止；例如，当需要实数标量时使用了字符串标量。在出现错误时，函数返回负的错误代码。具体针对 {cmd:_docx_*()} 函数的代码如下：

	 代码    含义
	{hline 67}
	-16510    发生错误；文档未更改
	-16511    发生错误；文档已更改
	-16512    发生错误 
	-16513    文档 ID 超出范围
	-16514    文档 ID 无效
	-16515    表 ID 超出范围
	-16516    表 ID 无效
	-16517    行号超出范围
	-16518    列号超出范围
	-16519    当前没有段落 
	-16520    无效的属性值
	-16521    打开文档数量过多 
	-16522    表的最后一行不能被删除
	-16523    行的最后一列不能被删除
	-16524    无效的图像文件格式或图像文件过大
	-16525    此平台不支持函数
	-16526    列数过多
	-16527    当前没有文本 
	{hline 67}

{p 4 4 2}
任何函数，如果使用文档 ID {it:{help mf__docx##dh:dh}} 作为参数，可能返回错误代码 -16513或 -16514。

{p 4 4 2}
任何函数，如果使用表 ID {it:{help mf__docx##tid:tid}} 作为参数，可能返回错误代码 -16515 或 -16516。

{p 4 4 2}
任何函数，如果将行号作为参数，可能返回错误代码 -16517。任何函数，如果将列号作为参数，可能返回错误代码 -16518。

{p 4 4 2}
错误代码 -16511 意味着在一批更改应用到文档时发生了错误。例如，在向文档添加矩阵时可能发生错误。出现这种情况时，文档已更改，但矩阵的所有条目并没有完全成功添加。


{marker remarks_functions}{...}
    {title:函数}

{marker remarks_file}{...}
    {title:创建和保存 .docx 文件}

{phang}
{cmd:_docx_new()}
创建一个空的 {cmd:.docx} 文档在内存中。该函数返回一个整数 ID {it:{help mf__docx##dh:dh}}，用于标识该文档以备将来使用。如果发生错误，该函数返回负的错误代码。如果打开的文档过多，该函数将返回 -16521。如果发生这种情况，可以使用 {cmd:_docx_close()} 或 {cmd:_docx_closeall()} 来关闭一个或所有内存中的文档以修复问题。

{phang}
{cmd:_docx_save(}{it:{help mf__docx##dh:dh}}{cmd:,} {it:string scalar filename}
[{cmd:,} {it:real scalar replace}]{cmd:)}
将由 ID {it:dh} 标识的文档保存到磁盘文件 {it:filename}。如果指定了 {it:replace} 且不为 {cmd:0}，则会覆盖文件 {it:filename}。

{p 4 4 2}
除了针对无效或超出范围的文档 ID {it:dh} 的错误代码 -16513 和 -16514，函数可能返回以下错误代码，如果 {it:replace} 未指定或指定为 {cmd:0}：

	 代码    含义
	{hline 67}
	-602     文件已存在 
	-3602    无效的文件名
	{hline 67}

{p 4 4 2}
如果指定了 {it:replace} 且不为 {cmd:0}，函数可能返回以下错误代码：

	 代码    含义
	{hline 67}
	-3621    尝试写入只读文件
	-3602    无效的文件名
	{hline 67}

{phang}
{cmd:_docx_append(}{it:{help mf__docx##dh:dh}}{cmd:,} {it:string scalar filename}{cmd:)}
将由 ID {it:dh} 标识的文档追加到磁盘文件 {it:filename}。

{p 4 4 2}
除了针对无效或超出范围的文档 ID {it:dh} 的错误代码 -16513 和 -16514，函数可能返回以下错误代码：

	 代码    含义
	{hline 67}
	-601	 找不到或无法读取文件
	-3621    尝试写入只读文件
	-3602    无效的文件名
	{hline 67}

{phang}
{cmd:_docx_close(}{it:{help mf__docx##dh:dh}}{cmd:)} 
关闭内存中由 ID {it:dh} 标识的文档。如果 ID {it:dh} 超出范围，函数返回错误代码 -16513。

{phang}
{cmd:_docx_closeall()} 
关闭内存中的所有 {cmd:.docx} 文档。 


{marker remarks_para}{...}
    {title:添加段落和文本}

{phang}
{cmd:_docx_paragraph_new(}{it:{help mf__docx##dh:dh}}{cmd:,} {it:string scalar s}{cmd:)}
创建一个新段落，内容为 {it:string scalar s} 中指定的内容。函数返回 {cmd:0} 表示成功；如果失败，则返回负的错误代码。

{phang}
{cmd:_docx_paragraph_new_styledtext(}{it:{help mf__docx##dh:dh}}{cmd:,} {it:string scalar s}{cmd:,} {it:style}{cmd:)}
创建一个新段落，内容为 {it:string scalar s} 中指定的内容，文本具有在 {it:style} 中指定的样式。样式可以是 {cmd:"Title"},
{cmd:"Heading1"} 和 {cmd:"Heading2"} 等。请参见 {browse "https://www.stata.com/docx_styles.html"} 获取关于样式的更多讨论。

{p 4 4 2}
在 {cmd:_docx_paragraph_new()} 和 {cmd:_docx_paragraph_new_styledtext()} 之后，新创建的段落成为当前段落。

{phang}
{cmd:_docx_paragraph_add_text(}{it:{help mf__docx##dh:dh}}{cmd:,} {it:string scalar s} [{cmd:,} {it:real scalar nospace}]{cmd:)}
向当前段落添加文本 {it:s}。如果指定了 {it:nospace} 且不为 {cmd:0}，则会裁剪 {it:s} 中的前导空格；否则，保留 {it:s} 中的前导空格。函数返回 {cmd:0} 表示成功，如果失败，则返回负的错误代码。函数可能返回 -16519 如果当前没有段落。此情况通常发生在调用 {cmd:_docx_paragraph_new()} 或
{cmd:_docx_paragraph_new_styledtext()} 函数之前。

{phang}
{cmd:_docx_text_add_text(}{it:{help mf__docx##dh:dh}}{cmd:,} {it:string scalar s} [{cmd:,} {it:real scalar nospace}]{cmd:)}
向当前文本添加文本 {it:s}。如果指定了 {it:nospace} 且不为 {cmd:0}，则会裁剪 {it:s} 中的前导空格；否则，保留 {it:s} 中的前导空格。函数返回 {cmd:0} 表示成功，如果失败，则返回负的错误代码。函数可能返回 -16527 如果当前没有文本。此情况通常发生在调用 {cmd:_docx_paragraph_add_text()} 函数之前。

{p 4 4 2}
这是一个方便的例程，以便新添加的文本可以与当前文本具有相同的样式。


{marker remarks_image}{...}
    {title:添加图像}

{phang}
{cmd:_docx_image_add(}{it:{help mf__docx##dh:dh}}{cmd:,} {it:string scalar filepath} [{cmd:,} {it:real scalar link}{cmd:,} {it:cx}{cmd:,} {it:cy}]{cmd:)}
向文档中添加图像文件。{it:filepath} 是图像文件的路径。可以是完整路径，也可以是当前工作目录的相对路径。如果指定了 {it:link} 且不为 {cmd:0}，则图像文件是链接的；否则，图像文件是嵌入的。

{p 4 4 2}
图像的宽度由 {it:cx} 控制。图像的高度由 {it:cy} 控制。{it:cx} 和 {it:cy} 的单位为 twips。一个 twip 等于 1/20 个点，1/1440 英寸，或大约 1/567 厘米。

{p 4 4 2}
如果未指定 {it:cx} 或 {it:cx} 不大于 {cmd:0}，则使用由图像信息和文档的页面宽度决定的默认大小。如果 {it:cx} 大于文档的页面宽度，则使用页面宽度。否则，宽度为 {it:cx} 的 twips。

{p 4 4 2}
如果未指定 {it:cy} 或 {it:cy} 不大于 {cmd:0}，则图像的高度由宽度和图像的纵横比决定；否则，添加的图像高度为 {it:cy} 的 twips。

{p 4 4 2}
该函数成功时返回 {cmd:0}，如果失败则返回负的错误代码。函数可能返回错误代码 -601，如果指定的 {it:filepath} 的图像文件无法找到或读取。函数可能返回错误代码 -16524，如果指定的 {it:filepath} 的图像文件类型不受支持或文件过大。

{p 4 4 2}
该函数在运行 OS X 10.9（Mavericks）或控制台 Stata for Mac 的 Stata 中不受支持。如果在上述平台上指定，则该函数返回错误代码 -16525。


{marker remarks_table}{...}
    {title:添加表格}

{phang}
{cmd:_docx_new_table(}{it:{help mf__docx##dh:dh}}{cmd:,} {it:real scalar row}{cmd:,} {it:col} [{cmd:,} {it:noadd}]{cmd:)}
创建一个大小为 {it:row} x {it:col} 的空表格。如果成功，该函数返回表 ID {it:{help mf__docx##tid:tid}}，该 ID 是大于或等于 {cmd:0} 的整数，以供将来使用。如果该函数失败，则返回负的错误代码。如果 {it:noadd} 被指定且不为 {cmd:0}，则创建表格但不添加到文档中。如果表格旨在添加到另一表格的单元格中，这将很有用。

{p 4 4 2}
Microsoft Word 2007/2010 允许表格中最多有 63 列。如果 {it:col} 大于 63，则返回错误代码 -16526。

{phang}
{cmd:_docx_add_matrix(}{it:{help mf__docx##dh:dh}}{cmd:,} {it:string scalar name}{cmd:,} {it:fmt}{cmd:,} {it:real scalar colnames}{cmd:,} {it:rownames} [{cmd:,} {it:noadd}]{cmd:)}
在文档中以表格形式添加矩阵，并返回表 ID {it:{help mf__docx##tid:tid}} 以供将来使用。矩阵的元素使用 {it:{help format_zh:fmt}} 进行格式化。如果 {it:fmt} 不是有效的 Stata 数字格式，则使用 {cmd:%12.0g}。如果 {it:colnames} 不为 {cmd:0}，则表格的第一行填充 {help matrix_rownames_zh:matrix colnames}。如果 {it:rownames} 不为 {cmd:0}，则表格的第一列填充 {help matrix_rownames_zh:matrix rownames}。如果 {it:noadd} 被指定且不为 {cmd:0}，则创建表格但不添加到文档中。如果表格旨在添加到另一表格的单元格中，这将很有用。

{p 4 4 2}
如果函数失败，则返回负的错误代码。如果指定的矩阵 {it:name} 找不到，该函数可能返回 -111。如果表格已经添加并且在填充表格时发生错误，该函数可能返回错误代码 -16511。在这种情况下，文档已更改，但操作并未完全成功。如果矩阵的列数大于 63，则函数返回错误代码 -16526。

{phang}
{cmd:_docx_add_mata(}{it:{help mf__docx##dh:dh}}{cmd:,} {it:real matrix m}{cmd:,} {it:string scalar fmt} [{cmd:,} {it:real scalar noadd}]{cmd:)}
在文档中以表格形式添加 Mata 矩阵，并返回表 ID {it:{help mf__docx##tid:tid}} 以供将来使用。Mata 矩阵的元素使用 {it:{help format_zh:fmt}} 进行格式化。如果 {it:fmt} 不是有效的 Stata 数字格式，则使用 {cmd:%12.0g}。如果 {it:noadd} 被指定且不为 {cmd:0}，则创建表格但不添加到文档中。如果表格旨在添加到另一表格的单元格中，这将很有用。

{p 4 4 2}
如果函数失败，则返回负的错误代码。如果表格已经添加并且在填充表格时发生错误，则该函数可能返回错误代码 -16511。在这种情况下，文档已更改，但操作并未完全成功。如果矩阵的列数大于 63，则函数返回错误代码 -16526。

{phang}
{cmd:_docx_add_data(}{it:{help mf__docx##dh:dh}}{cmd:,} {it:real scalar varnames}{cmd:,} {it:obsno}{cmd:,} {it:real matrix i}{cmd:,} {it:rowvector j} [{cmd:,} {it:real scalar noadd}{cmd:,} {it:scalar selectvar}]{cmd:)}
将当前内存中的 Stata 数据集以表格形式添加到文档中，并返回表 ID {it:{help mf__docx##tid:tid}} 以供将来使用。如果变量附有值标签，则变量将根据值标签显示。否则，变量将根据其格式显示。{it:i}、{it:j} 和 {it:selectvar} 的指定方式与 {help mf_st_data_zh:st_data()} 相同。因子变量和时间序列操作变量不被允许。如果 {it:varnames} 不为 {cmd:0}，则表格的第一行填充变量名。如果 {it:obsno} 不为 {cmd:0}，则表格的第一列填充观察编号。如果 {it:noadd} 被指定且不为 {cmd:0}，则创建表格但不添加到文档中。如果表格旨在添加到另一表格的单元格中，这将很有用。

{p 4 4 2}
如果函数失败，则返回负的错误代码。如果表格已经添加并且在填充表格时发生错误，则该函数可能返回错误代码 -16511。在这种情况下，文档已更改，但操作并未完全成功。如果 {it:i} 或 {it:j} 超出范围，函数输出缺失值 {cmd:.} 或空字符串 {cmd:""}，而不是中止并显示错误。该函数返回错误代码 -16526 如果变量数大于 63。


{marker remarks_table_edit}{...}
    {title:编辑表格}

{phang}
{cmd:_docx_table_add_row(}{it:{help mf__docx##dh:dh}}{cmd:,} {it:{help mf__docx##tid:tid}}{cmd:,} {it:real scalar i}{cmd:,} {it:count}{cmd:)}
将 {it:count} 列的行添加到表 ID {it:tid} 的第 {it:i} 行之后。{it:i} 的范围从 0 到 {it:r}，其中 {it:r} 是表的行数。将 {it:i} 指定为 {cmd:0} 会在第一行之前添加一行，相当于添加新第一行；将 {it:i} 指定为 {it:r} 会在最后一行之后添加一行，相当于添加新最后一行。如果 {it:i} 超出范围，函数返回错误代码 -16517。

{phang}
{cmd:_docx_table_del_row(}{it:{help mf__docx##dh:dh}}{cmd:,} {it:{help mf__docx##tid:tid}}{cmd:,} {it:real scalar i}{cmd:)}
从表中删除第 {it:i} 行。{it:i} 的范围从 1 到 {it:r}，其中 {it:r} 是表的行数。如果 {it:i} 超出范围，函数返回错误代码 -16517。如果表只有一行，函数返回错误代码 -16522，则该行不会被删除。这是为了确保文档可以在 Microsoft Word 中正确显示。

{phang}
{cmd:_docx_table_add_cell(}{it:{help mf__docx##dh:dh}}{cmd:,} {it:{help mf__docx##tid:tid}}{cmd:,} {it:real scalar i}{cmd:,} {it:j}[{cmd:,} {it:string scalar s}]{cmd:)}
将单元格添加到 表 ID {it:tid} 中的第 {it:i} 行的第 {it:j} 列后。{it:i} 的范围从 1 到 {it:r}，其中 {it:r} 是表的行数。{it:j} 的范围从 0 到 {it:c}，其中 {it:c} 是第 {it:i} 行的列数。将 {it:j} 指定为 {cmd:0} 会在该行的第一列添加单元格；将 {it:j} 指定为 {it:c} 会在该行的最后一列添加单元格。如果 {it:i} 超出范围，函数返回错误代码 -16517。如果 {it:j} 超出范围，函数返回错误代码 -16518。

{phang}
{cmd:_docx_table_del_cell(}{it:{help mf__docx##dh:dh}}{cmd:,} {it:{help mf__docx##tid:tid}}{cmd:,} {it:real scalar i}{cmd:,} {it:j}{cmd:)}
从表 ID {it:tid} 的第 {it:i} 行和第 {it:j} 列中删除单元格。{it:i} 的范围从 1 到 {it:r}，其中 {it:r} 是表的行数。{it:j} 的范围从 1 到 {it:c}，其中 {it:c} 是第 {it:i} 行的列数。如果 {it:i} 超出范围，函数返回错误代码 -16517。如果 {it:j} 超出范围，函数返回错误代码 -16518。如果该行只有一列，则函数返回错误代码 -16523，则该列不会被删除。这是为了确保文档可以在 Microsoft Word 中正确显示。

{phang}
{cmd:_docx_cell_set_colspan(}{it:{help mf__docx##dh:dh}}{cmd:,} {it:{help mf__docx##tid:tid}}{cmd:,} {it:real scalar i}{cmd:,} {it:j}{cmd:,} {it:count}{cmd:)}
将第 {it:i} 行的第 {it:j} 列单元格的列跨度设置为 {it:count} 个单元格。这相当于将右侧的 {it:count}-1 个单元格合并到同一行的该单元格中。如果 {it:j+count-1} 大于 {it:c}，其中 {it:c} 是第 {it:i} 行的总列数，则跨度就在最后一列停止。如果 {it:i} 超出范围，函数返回错误代码 -16517。如果 {it:j} 超出范围或 {it:count} 小于 1，函数返回错误代码 -16518。

{phang}
{cmd:_docx_cell_set_rowspan(}{it:{help mf__docx##dh:dh}}{cmd:,} {it:{help mf__docx##tid:tid}}{cmd:,} {it:real scalar i}{cmd:,} {it:j}{cmd:,} {it:count}{cmd:)}
将第 {it:i} 行的第 {it:j} 列单元格的行跨度设置为 {it:count} 个单元格。这相当于将下面的 {it:count}-1 个单元格合并到同一列下的该单元格中。如果 {it:i+count-1} 大于 {it:r}，其中 {it:r} 是表的总行数，则跨度在最后一行停止。如果 {it:i} 超出范围或 {it:count} 小于 1，函数返回错误代码 -16517。 如果 {it:j} 超出范围，函数返回错误代码 -16518。

{phang}
{cmd:_docx_cell_set_span(}{it:{help mf__docx##dh:dh}}{cmd:,} {it:{help mf__docx##tid:tid}}{cmd:,} {it:real scalar i}{cmd:,} {it:j}{cmd:,} {it:rowcount}{cmd:,} {it:colcount}{cmd:)}
将第 {it:i} 行的第 {it:j} 列单元格的行跨度设置为 {it:rowcount} 个单元格，并将列跨度设置为 {it:colcount} 个单元格。如果 {it:i} 超出范围，函数返回错误代码 -16517。如果 {it:j} 超出范围，函数返回错误代码 -16518。

{phang}
{cmd:_docx_table_mod_cell(}{it:{help mf__docx##dh:dh}}{cmd:,} {it:{help mf__docx##tid:tid}}{cmd:,} {it:real scalar i}{cmd:,} {it:j}{cmd:,} {it:string scalar s} [{cmd:,} {it: real scalar append}]{cmd:)}
用文本 {it:s} 修改第 {it:i} 行和第 {it:j} 列的单元格。如果指定了 {it:append} 且不为 {cmd:0}，文本 {it:s} 将附加到单元格的当前内容；否则，文本 {it:s} 将替代单元格中的当前内容。函数返回 {cmd:0} 表示成功，并返回负的错误代码如果出现失败。

{phang}
{cmd:_docx_table_mod_cell_table(}{it:{help mf__docx##dh:dh}}{cmd:,} {it:{help mf__docx##tid:tid}}{cmd:,} {it:real scalar i}{cmd:,} {it:j}{cmd:,} {it:append}{cmd:,} {it:src_tid}{cmd:)}
用表 ID {it:src_tid} 修改第 {it:i} 行和第 {it:j} 列的单元格。如果 {it:append} 不为 {cmd:0}，则表 {it:src_tid} 将附加到单元格的当前内容；否则，表 {it:src_tid} 将替代单元格中的当前内容。如果 {it:src_id} 超出范围或无效，函数返回错误代码 -16515 或 -16516。

{phang} 
{cmd:_docx_table_mod_cell_image(}{it:{help mf__docx##dh:dh}}{cmd:,}
{it:{help mf__docx##tid:tid}}{cmd:,} {it:real scalar i}{cmd:,} {it:j}{cmd:,}
{it:string scalar filepath} [{cmd:,} {it:real scalar link}{cmd:,}
{it:append}{cmd:,} {it:cx}{cmd:,} {it:cy}]{cmd:)} 用图像修改第 {it:i} 行和第 {it:j} 列的单元格。{it:filepath} 是图像文件的路径。可以是完整路径，也可以是当前工作目录的相对路径。如果 {it:link} 被指定且不为 {cmd:0}，该图像文件是链接的；否则，该图像文件是嵌入的。

{marker remarks_query}{...}
    {title:查询例程}

{phang}
{cmd:_docx_query(}{it:real matrix doc_ids}{cmd:)} 
函数返回内存中所有文档的数量。它将文档 ID 存储在 {it:doc_ids} 中，作为行向量。如果内存中没有文档，函数返回 {cmd:0}，且 {it:doc_ids} 不变。

{phang}
{cmd:_docx_query_table(}{it:{help mf__docx##dh:dh}}{cmd:,} {it:{help mf__docx##tid:tid}}{cmd:)}
返回文档 ID {it:dh} 中表 ID {it:tid} 的总行数。如果 {it:dh} 或 {it:tid} 无效，则函数返回负的错误代码。

{phang}
{cmd:_docx_table_query_row(}{it:{help mf__docx##dh:dh}}{cmd:,} {it:{help mf__docx##tid:tid}}{cmd:,} {it:real scalar i}{cmd:)} 
返回文档 ID {it:dh} 中表 ID {it:tid} 的第 {it:i} 行的列数。如果 {it:dh} 或 {it:tid} 无效，则函数返回负的错误代码。如果 {it:i} 超出范围，则函数返回负的错误代码。


{marker remarks_save}{...}
    {title:将文档保存到磁盘文件}

{p 4 4 2}
内存中的文档可以被保存和重新保存。它保留在内存中，并且可以被修改，只要文档不被关闭。目前我们不支持从磁盘加载和修改现有的 Word 文档到内存中。


{marker remarks_cur}{...}
    {title:当前段落和文本}

{p 4 4 2}
添加段落后，它成为当前段落。后续的 {cmd:_docx_paragraph_add_text()} 调用将文本添加到当前段落。当调用 {cmd:_docx_paragraph_add_text()} 时，新添加的文本成为当前文本。改变段落样式的函数适用于当前段落。改变文本样式的函数适用于当前文本。

{p 4 4 2}
当当前段落和文本变化时，没有办法返回。我们没有在文档中移动的函数。唯一的例外是表格。表格由其 ID 标识，可以随时访问。

{p 4 4 2}
当添加表格或图像时，始终创建一个新段落。该表格被添加到新段落中，该段落成为当前段落。


{marker remarks_img}{...}
    {title:支持的图像类型}

{p 4 4 2}
支持 {cmd:.emf}、{cmd:.png} 和 {cmd:.tiff} 类型的图像。不支持 {cmd:.wmf}、{cmd:.pdf}、{cmd:.ps} 和 {cmd:.eps} 类型的图像。 


{marker remarks_link}{...}
    {title:链接和嵌入的图像}

{p 4 4 2}
如果在 {cmd:_docx_image_add()} 和 {cmd:_docx_table_mod_cell_image()} 中指定了 {it:link} 参数，并且不为 0，则图像将在文档中被链接；否则，图像将被嵌入。

{p 4 4 2}
如果图像被嵌入，则它成为文档的一部分，并与磁盘上的原始图像没有进一步关系。如果图像被链接，则只插入指向图像文件的链接。图像文件必须存在，以便 Word 文档能够显示图像。

{p 4 4 2}
如果将 Word 文档移动到其他机器上，所有嵌入的图像将能正确显示；而所有链接的图像将需要将图像文件移动到新机器上 Word 文档的相同目录中才能正确显示。

{p 4 4 2}
如果磁盘上的原始图像文件已更新，则 Word 文档中的链接图像将反映该更改；而嵌入的图像则不会。


{marker remarks_style}{...}
    {title:样式}

{p 4 4 2}
支持广泛的样式，例如字体、颜色、文本大小、表格宽度、对齐方式等。有关与样式相关的函数列表，请参见 {browse "https://www.stata.com/docx_styles.html"}。


{marker remarks_per}{...}
    {title:性能}

{p 4 4 2}
在 Stata 的新会话中创建新文档可能会导致一些明显的延迟，通常为几秒钟。  


{marker examples}{...}
    {title:示例}

{marker example_open}{...}
    {title:在内存中创建 .docx 文档}

{p 4 4 2}
在以下示例中，我们使用 Stata 数据、Stata 估计命令的结果和 Stata 图形创建一个 Microsoft Word 文档。

{p 4 4 2}
我们通过调用 {cmd:_docx_new()} 创建一个新的 {cmd:.docx} 文档在内存中。

	{cmd}mata:
	dh = _docx_new()
	end{txt}

{p 4 4 2}
检查 {it:{help mf__docx##dh:dh}} 是否为负数是一个好习惯，这意味着文档未成功创建。   


{marker example_para}{...}
    {title:添加段落和文本}

{p 4 4 2}
文档成功创建后，我们可以向其添加段落和文本。我们首先添加标题、副标题和标题。

	{cmd}mata:
	_docx_paragraph_new_styledtext(dh, "示例文档", "标题")
	_docx_paragraph_new_styledtext(dh, "由 Stata 提供", "副标题")
	_docx_paragraph_new_styledtext(dh, "添加", "Heading1")
	end{txt}

{p 4 4 2}
文档 ID {it:dh} 是通过先前调用 {cmd:_docx_new()} 返回的。

{p 4 4 2}
每个函数返回一个实数标量。返回负值表示函数失败。如果您希望抑制返回代码的显示，只需在函数前加上 {cmd:(void)}。

{p 4 4 2}
现在我们向文档中添加一个常规段落和一些文本。

	{cmd}mata:
	_docx_paragraph_new(dh, "使用自动数据集。 ")
	_docx_paragraph_add_text(dh, "使用 -regress- 和 ")
	_docx_paragraph_add_text(dh, "变量 -mpg price foreign-。")
	end{txt}

{p 4 4 2}
函数 {cmd:_docx_paragraph_add_text()} 可用于将长句子分成几部分。 


{marker example_data}{...}
    {title:显示数据}

{p 4 4 2}
在其余示例中，我们使用 {cmd:auto.dta}。

	{cmd:. sysuse auto}

{p 4 4 2}
我们可以使用 {cmd:_docx_add_data()} 将变量 {cmd:mpg}、{cmd:price} 和 {cmd:foreign} 的观测值 1-10 以表格形式添加到文档中。

	{cmd}mata:
	_docx_add_data(dh, 1, 1, (1,10), ("mpg", "price", "foreign"))
	end{txt}

{p 4 4 2}
表的第一行包含变量名，第一列包含观察编号。 


{marker example_table}{...}
    {title:显示回归结果}

{p 4 4 2}
运行回归后，

	{cmd:. regress mpg price foreign}

{p 4 4 2}
输出中包含以下内容：

	{txt}观测数量 ={res}      74
	{txt}F(  2,    71) ={res}   23.01
	{txt}概率 > F      = {res} 0.0000
	{txt}R 平方     = {res} 0.3932
	{txt}调整 R 平方 = {res} 0.3761
	{txt}根均方误差      = {res} 4.5696{txt}

{p 4 4 2}
回归表格如下所示：

{txt}{hline 13}{c TT}{hline 11}{hline 11}{hline 9}{hline 8}{hline 13}{hline 12}
{col 1}         mpg{col 14}{c |}      Coef.{col 26}   Std. Err.{col 38}      t{col 46}   P>|t|{col 54}     [95% Con{col 67}f. Interval]
{hline 13}{c +}{hline 11}{hline 11}{hline 9}{hline 8}{hline 13}{hline 12}
{space 7}price {c |}{col 14}{res}{space 2} -.000959{col 26}{space 2} .0001815{col 37}{space 1}   -5.28{col 46}{space 3}0.000{col 54}{space 4} -.001321{col 67}{space 3} -.000597
{txt}{space 5}foreign {c |}{col 14}{res}{space 2} 5.245271{col 26}{space 2} 1.163592{col 37}{space 1}    4.51{col 46}{space 3}0.000{col 54}{space 4} 2.925135{col 67}{space 3} 7.565407
{txt}{space 7}_cons {c |}{col 14}{res}{space 2} 25.65058{col 26}{space 2} 1.271581{col 37}{space 1}   20.17{col 46}{space 3}0.000{col 54}{space 4} 23.11512{col 67}{space 3} 28.18605
{txt}{hline 13}{c BT}{hline 11}{hline 11}{hline 9}{hline 8}{hline 13}{hline 12}

{p 4 4 2}
我们希望将输出复制为两个表格。

{p 4 4 2}
首先，我们复制表头。我们通过使用 {cmd:_docx_new_table()} 添加一个空的 6x2 表，然后使用 {cmd:_docx_table_mod_cell()} 修改表的每个单元格，填充存储的 {cmd:e()} 结果以复制上面的输出。请注意 {cmd:概率 > F} 并未被存储，而是通过以下方式计算：

	{cmd}Ftail(e(df_m), e(df_r), e(F)){txt}  

{p 4 4 2}
还要注意使用 {cmd:sprintf()} 格式化数字值为字符串。 

	{cmd}mata:
	tid = _docx_new_table(dh, 6, 2)

	_docx_table_mod_cell(dh, tid, 1, 1, "观测数量")
	result = sprintf("%g", st_numscalar("e(N)"))
	_docx_table_mod_cell(dh, tid, 1, 2, result)

	result = sprintf("F(%g, %g)", 
				st_numscalar("e(df_m)"), 
				st_numscalar("e(df_r)"))
	_docx_table_mod_cell(dh, tid, 2, 1, result)
	result = sprintf("%8.2g", st_numscalar("e(F)"))
	_docx_table_mod_cell(dh, tid, 2, 2, result)

	_docx_table_mod_cell(dh, tid, 3, 1, "概率 > F")
	prob = Ftail(st_numscalar("e(df_m)"), 
				  st_numscalar("e(df_r)"), 
				  st_numscalar("e(F)"))
	result = sprintf("%10.4g", prob)
	_docx_table_mod_cell(dh, tid, 3, 2, result)

	_docx_table_mod_cell(dh, tid, 4, 1, "R 平方")
	result = sprintf("%10.4g", st_numscalar("e(r2)"))
	_docx_table_mod_cell(dh, tid, 4, 2, result)

	_docx_table_mod_cell(dh, tid, 5, 1, "调整 R 平方")
	result = sprintf("%10.4g", st_numscalar("e(r2_a)"))
	_docx_table_mod_cell(dh, tid, 5, 2, result)

	_docx_table_mod_cell(dh, tid, 6, 1, "根均方误差")
	result = sprintf("%10.4g", st_numscalar("e(rmse)"))
	_docx_table_mod_cell(dh, tid, 6, 2, result)
	end{txt}

{p 4 4 2}
要复制回归表格，我们将数值存储在 {cmd:r(table)} 中。但是 {cmd:r(table)} 是转置形式，包含多余的行，所有行和列名也并不是我们想要的。我们通过输入

	{cmd}mat define r_table = r(table)' 
	mat r_table = r_table[1..3, 1..6]{txt}
 
{p 4 4 2}
然后我们通过使用 {cmd:_docx_add_matrix} 将提取的矩阵 {cmd:r_table} 添加到文档中：

	{cmd}mata:
	tid = _docx_add_matrix(dh, "r_table", "%10.0g", 1, 1)
	end{txt}

{p 4 4 2}
请注意，尽管我们包含了行和列名称，但它们并不是我们想要的。我们使用 {cmd:_docx_table_mod_cell()} 来修改它们：

	{cmd}mata:
	_docx_table_mod_cell(dh, tid, 1, 1, "mpg")
	_docx_table_mod_cell(dh, tid, 1, 2, "Coef.")
	_docx_table_mod_cell(dh, tid, 1, 3, "Std. Err.")
	_docx_table_mod_cell(dh, tid, 1, 4, "t")
	_docx_table_mod_cell(dh, tid, 1, 5, "P>|t|")
	_docx_table_mod_cell(dh, tid, 1, 6, "[95% Conf. Interval]")
	end{txt}

{p 4 4 2}
我们设置回归表格中第一行最后一列的列跨度为 2，以匹配 Stata 输出：

	{cmd}mata:
	_docx_cell_set_colspan(dh, tid, 1, 6, 2)
	end{txt}


{marker example_image}{...}
    {title:添加图像}

{p 4 4 2}
要向文档中添加图表，我们首先需要将 Stata 图表导出为 {cmd:.emf}、{cmd:.png} 或 {cmd:.tif} 类型的图像文件。

	{cmd}. scatter mpg price}
	{cmd}. graph export auto.png}

{p 4 4 2}
然后，我们可以通过使用 {cmd:_docx_image_add()} 将图像添加到文档中：

	{cmd}mata:
	_docx_image_add(dh, "auto.png")
	end{txt}


{marker example_nest_table}{...}
    {title:显示嵌套表格}

{p 4 4 2}
如果我们想在文档中输出如下所示的表格，

	{txt}{center:{hline 22}}
	{center:{txt}{lalign 9:}{txt}{center 11:{cmd:mpg}}}
	{txt}{center:{hline 22}}
	{center:{txt}{lalign 9:{cmd:price}}{res}{center 11:-0.001}}
	{center:{txt}{lalign 9:}{res}{center 11:(5.28)**}}
	{center:{txt}{lalign 9:{cmd:foreign}}{res}{center 11:5.245}}
	{center:{txt}{lalign 9:}{res}{center 11:(4.51)**}}
	{center:{txt}{lalign 9:{cmd:_cons}}{res}{center 11:25.651}}
	{center:{txt}{lalign 9:}{res}{center 11:(20.17)**}}
	{center:{txt}{lalign 9:{cmd:R2}}{res}{center 11:0.39}}
	{center:{txt}{lalign 9:{cmd:N}}{res}{center 11:74}}
	{txt}{center:{hline 22}}
	{txt}{center:* p<0.05; ** p<0.01}

{p 4 4 2}
我们可以创建一个 10x2 的表格并填写内容，也可以分开构建每个部分并组合这些部分。

{p 4 4 2}
请注意每个变量的表格中间部分具有相似的模式。首先，我们运行回归并获取保存的表格。

	{cmd}. regress mpg price foreign}

{p 4 4 2}
然后在 Mata 中，我们可以通过编码构建每个变量的 2x2 表格。

	{cmd}mata:
	mr_table = st_matrix("r(table)")
	colnames = st_matrixcolstripe("r(table)") 
	tids = J(1, cols(mr_table), .)

	for(i=1; i<=cols(mr_table); i++) {
		tids[i] = _docx_new_table(dh, 2, 2, 1)
		_docx_table_mod_cell(dh, tids[i], 1, 1, colnames[i, 2])
		output = sprintf("%10.0g", mr_table[1, i])

		_docx_table_mod_cell(dh, tids[i], 1, 2, output)
		if(mr_table[1, i]<0) {
			output = sprintf("(%10.0g)", mr_table[3, i])
		}
		else {
			output = sprintf("%10.0g", mr_table[3, i])
		}

		if(mr_table[4, i]<0.05) {
			output = output +"*"
		}

		if(mr_table[4, i]<0.01) {
			output = output +"*"
		}

		_docx_table_mod_cell(dh, tids[i], 2, 2, output)
		_docx_cell_set_rowspan(dh, tids[i], 1, 1, 2)
	}
	end{txt}

{p 4 4 2}
现在我们可以将它们与表头和底部的三行组合在一起。

	{cmd}mata:
	tid = _docx_new_table(dh, cols(mr_table)+4, 2)
	_docx_table_mod_cell(dh, tid, 1, 2, "mpg")

	for(i=2; i<=cols(mr_table)+1; i++) {
		_docx_cell_set_colspan(dh, tid, i, 1, 2)
		_docx_table_mod_cell_table(dh, tid, i, 1, 
			0, tids[i-1])
	}

	_docx_table_mod_cell(dh, tid, cols(mr_table)+2, 1, "R 平方")
	output = sprintf("%10.4g", st_numscalar("e(r2)"))
	_docx_table_mod_cell(dh, tid, cols(mr_table)+2, 2, output)

	_docx_table_mod_cell(dh, tid, cols(mr_table)+3, 1, "N")
	output = sprintf("%10.4g", st_numscalar("e(N)"))
	_docx_table_mod_cell(dh, tid, cols(mr_table)+3, 2, output)

	_docx_table_mod_cell(dh, tid, cols(mr_table)+4, 1, 
		"* p<0.05; ** p<0.01")
	_docx_cell_set_colspan(dh, tid, cols(mr_table)+4, 1, 2)
	end{txt}


{marker example_table_image}{...}
    {title:将图像添加到表格单元格}

{p 4 4 2}
我们还可以将图像添加到表格单元格中。首先，我们创建图像：

	{cmd}. histogram price, title("价格")}
	{cmd}. graph export prices.png}
	{cmd}. histogram mpg, title("每加仑英里数")}
	{cmd}. graph export mpg.png}

{p 4 4 2}
我们可以使用 {cmd:_docx_table_mod_cell_image()} 将 {cmd:auto0.png} 和 {cmd:auto1.png} 添加到表格的不同单元格中。

	{cmd}mata:
	tid = _docx_new_table(dh, 1, 2) 
	_docx_table_mod_cell_image(dh, tid, 1, 1, "prices.png")
	_docx_table_mod_cell_image(dh, tid, 1, 2, "mpg.png")
	end{txt}


{marker example_save}{...}
    {title:将内存中的 .docx 文档保存到磁盘文件}

{p 4 4 2}
我们使用 {cmd:_docx_save()} 将文档保存到磁盘文件：

	{cmd}mata:
	res = _docx_save(dh, "example.docx")
	end{txt}

{p 4 4 2}
请注意，我们没有指定第三个参数 {it:replace}；因此，如果 {cmd:example.docx} 已经存在于当前工作目录中，则函数可能会失败。检查 {cmd:_docx_save()} 的返回代码始终是良好的实践。


{marker diagnostics}{...}
{title:诊断}

{p 4 4 2}
请参见 {help mf__docx##remarks:备注}。


{marker source}{...}
{title:源代码}

{p 4 4 2}
函数是内置的。
{p_end}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <mf__docx.sthlp>}