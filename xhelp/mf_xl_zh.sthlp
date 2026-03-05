{smcl}
{* *! version 1.1.16  12jun2019}{...}
{vieweralsosee "[M-5] xl()" "mansection M-5 xl()"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[M-5] _docx*()" "help mf__docx_zh"}{...}
{vieweralsosee "[M-5] Pdf*()" "help mf pdf"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[M-4] IO" "help m4_io_zh"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[D] import excel" "help import excel"}{...}
{vieweralsosee "[RPT] putdocx intro" "help putdocx intro"}{...}
{vieweralsosee "[RPT] putexcel" "help putexcel_zh"}{...}
{vieweralsosee "[RPT] putpdf intro" "help putpdf intro"}{...}
{viewerjumpto "Syntax" "mf_xl_zh##syntax"}{...}
{viewerjumpto "Description" "mf_xl_zh##description"}{...}
{viewerjumpto "Links to PDF documentation" "mf_xl_zh##linkspdf"}{...}
{viewerjumpto "Remarks" "mf_xl_zh##remarks"}{...}
{viewerjumpto "Appendix" "mf_xl_zh##appendix"}
{help mf_xl:English Version}
{hline}{...}
{p2colset 1 15 17 2}{...}
{p2col:{bf:[M-5] xl()} {hline 2}}Excel 文件输入/输出类
{p_end}
{p2col:}({mansection M-5 xl():查看完整的 PDF 手册条目}){p_end}
{p2colreset}{...}


{marker syntax}{...}
{title:语法}

{pstd}
如果你第一次看到此条目，请跳至 
{help mf_xl##description:描述}。 如果你想将 Excel 文件导入或导出到 Stata，请参见
{manhelp import_excel D:import excel}。
如果你想将 Stata 创建的表导出到 Excel，请参见
{manhelp putexcel RPT}。

{pstd}
下面的语法图描述了一个 Mata 类。有关 Mata 中类编程的帮助，请参见 {manhelp m2_class M-2:类}。

{p 4 4 2}
语法在以下标题下呈现：

	{help mf_xl##syn_step1:步骤 1：初始化}
	{help mf_xl##syn_step2:步骤 2：创建并打开 Excel 工作簿}
	{help mf_xl##syn_step3:步骤 3：设置 Excel 工作表}
	{help mf_xl##syn_step4:步骤 4：从 Excel 工作表读取和写入数据}
	{help mf_xl##syn_step5:步骤 5：格式化 Excel 工作表中的单元格}
	{help mf_xl##syn_step6:步骤 6：格式化 Excel 工作表中的文本}
	{help mf_xl##syn_step7:步骤 7：格式化 Excel 工作表中的单元格范围}
	{help mf_xl##syn_utility:所有步骤中使用的实用函数}


{marker syn_step1}{...}
    {title:步骤 1：初始化}

{p 8 25 1}
{bind:               }
{it:{help mf_xl##def_B:B}}
{cmd:=}
{cmd:xl()}


{marker syn_step2}{...}
    {title:步骤 2：创建并打开 Excel 工作簿}

{p 8 45 2}
{it:(void)}{bind:           }
{help mf_xl##create_book:{it:B}{bf:.create_book(}{bf:"}{it:filename}{bf:",} {bf:"}{it:sheetname}{bf:"} [{bf:,} {c -(}{bf:"xls"} | {bf:"xlsx"}{c )-}{bf:, "}{it:locale}{bf:"}]{bf:)}}

{p 8 25 1}
{it:(void)}{bind:           }
{help mf_xl##load_book:{it:B}{bf:.load_book(}{bf:"}{it:filename}{bf:"} [{bf:, "}{it:locale}{bf:"}]{bf:)}}

{p 8 25 1}
{it:(void)}{bind:           }
{help mf_xl##clear_book:{it:B}{bf:.clear_book(}{bf:"}{it:filename}{bf:"}{bf:)}}

{p 8 25 1}
{it:(void)}{bind:           }
{help mf_xl##set_mode:{it:B}{bf:.set_mode(}{bf:"open"}|{bf:"closed"}{bf:)}}

{p 8 25 1}
{it:(void)}{bind:           }
{help mf_xl##close_book:{it:B}{bf:.close_book()}}


{marker syn_step3}{...}
    {title:步骤 3：设置 Excel 工作表}

{p 8 25 1}
{it:(void)}{bind:           }
{help mf_xl##add_sheet:{it:B}{bf:.add_sheet(}{bf:"}{it:sheetname}{bf:"}{bf:)}}

{p 8 25 1}
{it:(void)}{bind:           }
{help mf_xl##set_sheet:{it:B}{bf:.set_sheet(}{bf:"}{it:sheetname}{bf:"}{bf:)}}

{p 8 45 2}
{it:(void)}{bind:           }
{help mf_xl##set_sheet_gridlines:{it:B}{bf:.set_sheet_gridlines(}{bf:"}{it:sheetname}{bf:"}{bf:,} {c -(}{bf:"on"}|{bf:"off"}{c )-}{bf:)}}

{p 8 45 2}
{it:(void)}{bind:           }
{help mf_xl##set_sheet_merge:{it:B}{bf:.set_sheet_merge(}{bf:"}{it:sheetname}{bf:"}{bf:,} {it:real vector row}{bf:,} {it:real vector col}{bf:)}}

{p 8 25 1}
{it:(void)}{bind:           }
{help mf_xl##clear_sheet:{it:B}{bf:.clear_sheet(}{bf:"}{it:sheetname}{bf:"}{bf:)}}

{p 8 25 1}
{it:(void)}{bind:           }
{help mf_xl##delete_sheet:{it:B}{bf:.delete_sheet(}{bf:"}{it:sheetname}{bf:"}{bf:)}}

{p 8 45 2}
{it:(void)}{bind:           }
{help mf_xl##delete_sheet_merge:{it:B}{bf:.delete_sheet_merge(}{bf:"}{it:sheetname}{bf:"}{bf:,} {it:real scalar row}{bf:,} {it:real scalar col}{bf:)}}

{p 8 25 1}
{it:string colvector}{bind: }
{help mf_xl##get_sheets:{it:B}{bf:.get_sheets()}}


{marker syn_step4}{...}
    {title:步骤 4：从 Excel 工作表读取和写入数据}

{p 8 45 2}
{it:string matrix}{bind:    }
{help mf_xl##get_string:{it:B}{bf:.get_string(}{it:real vector row}{bf:,} }{it:real vector col}{bf:)}}

{p 8 45 2}
{it:real matrix}{bind:      }
{help mf_xl##get_number:{it:B}{bf:.get_number(}{it:real vector row}{bf:,} {it:real vector col} [{bf:,} {c -(}{bf:"asdate"} | {bf:"asdatetime"}{c )-}]{bf:)}}

{p 8 45 2}
{it:string matrix}{bind:    }
{help mf_xl##get_cell_type:{it:B}{bf:.get_cell_type(}{it:real vector row}{bf:,} {it:real vector col}{bf:)}}

{p 8 45 2}
{it:(void)}{bind:           }
{help mf_xl##put_string:{it:B}{bf:.put_string(}{it:real scalar row}{bf:,} {it:real scalar col}{bf:,} {it:string matrix s}{bf:)}}

{p 8 45 2}
{it:(void)}{bind:           }
{help mf_xl##put_number:{it:B}{bf:.put_number(}{it:real scalar row}{bf:,} {it:real scalar col}{bf:,} {it:real matrix r} [{bf:,} {c -(}{bf:"asdate"} | {bf:"asdatetime"} | {bf:"asdatenum"} | {bf:"asdatetimenum"}{c )-}]{bf:)}}

{p 8 45 2}
{it:(void)}{bind:           }
{help mf_xl##put_formula:{it:B}{bf:.put_formula(}{it:real scalar row}{bf:,} {it:real scalar col}{bf:,} {it:string matrix s}{bf:)}}

{p 8 45 2}
{it:(void)}{bind:           }
{help mf_xl##put_picture:{it:B}{bf:.put_picture(}{it:real scalar row}{bf:,} {it:real scalar col}{bf:,} {bf:"}{it:filename}{bf:"}{bf:)}}

{p 8 45 1}
{it:(void)}{bind:           }
{help mf_xl##set_missing:{it:B}{bf:.set_missing(}[{it:real scalar num}|{it:string scalar val}]{bf:)}}


{marker syn_step5}{...}
    {title:步骤 5：格式化 Excel 工作表中的单元格}

{p 8 45 2}
{it:(void)}{bind:           }
{help mf_xl##set_number_format:{it:B}{bf:.set_number_format(}{it:real vector row}{bf:,} {it:real vector col}{bf:,} {bf:"}{it:format}{bf:"}{bf:)}}

{p 8 45 2}
{it:(void)}{bind:           }
{help mf_xl##set_vertical_align:{it:B}{bf:.set_vertical_align(}{it:real vector row}{bf:,} {it:real vector col}{bf:,} {bf:"}{it:align}{bf:"}{bf:)}}

{p 8 45 2}
{it:(void)}{bind:           }
{help mf_xl##set_horizontal_align:{it:B}{bf:.set_horizontal_align(}{it:real vector row}{bf:,} {it:real vector col}{bf:,} {bf:"}{it:align}{bf:"}{bf:)}}

{p 8 45 2}
{it:(void)}{bind:           }
{help mf_xl##set_border:{it:B}{bf:.set_border(}{it:real vector row}{bf:,} {it:real vector col}{bf:,} {bf:"}{it:style}{bf:"} [{bf:,} {bf:"}{it:color}{bf:"}]{bf:)}}

{p 8 45 2}
{it:(void)}{bind:           }
{help mf_xl##set_left_border:{it:B}{bf:.set_left_border(}{it:real vector row}{bf:,} {it:real vector col}{bf:,} {bf:"}{it:style}{bf:"} [{bf:,} {bf:"}{it:color}{bf:"}]{bf:)}}

{p 8 45 2}
{it:(void)}{bind:           }
{help mf_xl##set_right_border:{it:B}{bf:.set_right_border(}{it:real vector row}{bf:,} {it:real vector col}{bf:,} {bf:"}{it:style}{bf:"} [{bf:,} {bf:"}{it:color}{bf:"}]{bf:)}}

{p 8 45 2}
{it:(void)}{bind:           }
{help mf_xl##set_top_border:{it:B}{bf:.set_top_border(}{it:real vector row}{bf:,} {it:real vector col}{bf:,} {bf:"}{it:style}{bf:"} [{bf:,} {bf:"}{it:color}{bf:"}]{bf:)}}

{p 8 45 2}
{it:(void)}{bind:           }
{help mf_xl##set_bottom_border:{it:B}{bf:.set_bottom_border(}{it:real vector row}{bf:,} {it:real vector col}{bf:,} {bf:"}{it:style}{bf:"} [{bf:,} {bf:"}{it:color}{bf:"}]{bf:)}}

{p 8 45 2}
{it:(void)}{bind:           }
{help mf_xl##set_diagonal_border:{it:B}{bf:.set_diagonal_border(}{it:real vector row}{bf:,} {it:real vector col}{bf:,} {bf:"}{it:direction}{bf:"}{bf:,} {bf:"}{it:style}{bf:"} [{bf:,} {bf:"}{it:color}{bf:"}]{bf:)}}

{p 8 45 2}
{it:(void)}{bind:           }
{help mf_xl##set_fill_pattern:{it:B}{bf:.set_fill_pattern(}{it:real vector row}{bf:,} {it:real vector col}{bf:,} {bf:"}{it:pattern}{bf:"}{bf:,} {bf:"}{it:fgcolor}{bf:"} [{bf:,} {bf:"}{it:bgcolor}{bf:"}]{bf:)}}

{p 8 45 2}
{it:(void)}{bind:           }
{help mf_xl##set_column_width:{it:B}{bf:.set_column_width(}{it:real scalar col1}{bf:,} {it:real scalar col2}{bf:,} {it:real scalar width}{bf:)}}

{p 8 45 2}
{it:(void)}{bind:           }
{help mf_xl##set_row_height:{it:B}{bf:.set_row_height(}{it:real scalar row1}{bf:,} {it:real scalar row2}{bf:,} {it:real scalar height}{bf:)}}


{marker syn_step6}{...}
    {title:步骤 6：格式化 Excel 工作表中的文本}

{p 8 45 2}
{it:(void)}{bind:           }
{help mf_xl##set_font:{it:B}{bf:.set_font(}{it:real vector row}{bf:,} {it:real vector col}{bf:,} {bf:"}{it:fontname}{bf:"}{bf:,} {it:real scalar size} [{bf:,} {bf:"}{it:color}{bf:"}]{bf:)}}

{p 8 45 2}
{it:(void)}{bind:           }
{help mf_xl##set_font_bold:{it:B}{bf:.set_font_bold(}{it:real vector row}{bf:,} {it:real vector col}{bf:,} {c -(}{bf:"on"}|{bf:"off"}{c )-}{bf:)}}

{p 8 45 2}
{it:(void)}{bind:           }
{help mf_xl##set_font_italic:{it:B}{bf:.set_font_italic(}{it:real vector row}{bf:,} {it:real vector col}{bf:,} {c -(}{bf:"on"}|{bf:"off"}{c )-}{bf:)}}

{p 8 45 2}
{it:(void)}{bind:           }
{help mf_xl##set_font_strikeout:{it:B}{bf:.set_font_strikeout(}{it:real vector row}{bf:,} {it:real vector col}{bf:,} {c -(}{bf:"on"}|{bf:"off"}{c )-}{bf:)}}

{p 8 45 2}
{it:(void)}{bind:           }
{help mf_xl##set_font_underline:{it:B}{bf:.set_font_underline(}{it:real vector row}{bf:,} {it:real vector col}{bf:,} {c -(}{bf:"on"}|{bf:"off"}{c )-}{bf:)}}

{p 8 45 2}
{it:(void)}{bind:           }
{help mf_xl##set_font_script:{it:B}{bf:.set_font_script(}{it:real vector row}{bf:,} {it:real vector col}{bf:,} {c -(}{bf:"sub"}|{bf:"super"}|{bf:"normal"}{c )-}{bf:)}}

{p 8 45 2}
{it:(void)}{bind:           }
{help mf_xl##set_text_wrap:{it:B}{bf:.set_text_wrap(}{it:real vector row}{bf:,} {it:real vector col}{bf:,} {c -(}{bf:"on"}|{bf:"off"}{c )-}{bf:)}}

{p 8 45 2}
{it:(void)}{bind:           }
{help mf_xl##set_shrink_to_fit:{it:B}{bf:.set_shrink_to_fit(}{it:real vector row}{bf:,} {it:real vector col}{bf:,} {c -(}{bf:"on"}|{bf:"off"}{c )-}{bf:)}}

{p 8 45 2}
{it:(void)}{bind:           }
{help mf_xl##set_text_rotate:{it:B}{bf:.set_text_rotate(}{it:real vector row}{bf:,} {it:real vector col}{bf:,} {it:real scalar rotation}{bf:)}}

{p 8 45 2}
{it:(void)}{bind:           }
{help mf_xl##set_text_indent:{it:B}{bf:.set_text_indent(}{it:real vector row}{bf:,} {it:real vector col}{bf:,} {it:real scalar indent}{bf:)}}

{p 8 45 2}
{it:(void)}{bind:           }
{help mf_xl##set_format_lock:{it:B}{bf:.set_format_lock(}{it:real vector row}{bf:,} {it:real vector col}{bf:,} {c -(}{bf:"on"}|{bf:"off"}{c )-}{bf:)}}

{p 8 45 2}
{it:(void)}{bind:           }
{help mf_xl##set_format_hidden:{it:B}{bf:.set_format_hidden(}{it:real vector row}{bf:,} {it:real vector col}{bf:,} {c -(}{bf:"on"}|{bf:"off"}{c )-}{bf:)}}


{marker syn_step7}{...}
    {title:步骤 7：格式化 Excel 工作表中的单元格范围}

{p 8 45 2}
{it:real scalar}{bind:      }
{help mf_xl##add_fmtid:{it:B}{bf:.add_fmtid()}}

{p 8 45 2}
{it:(void)}{bind:           }
{help mf_xl##set_fmtid:{it:B}{bf:.set_fmtid(}{it:real vector row}{bf:,} {it:real vector col}{bf:,} {it:real scalar fmtid}{bf:)}}

{p 8 45 2}
{it:(void)}{bind:           }
{help mf_xl##fmtid_set_number_format:{it:B}{bf:.fmtid_set_number_format(}{it:real scalar fmtid}{bf:,} {bf:"}{it:format}{bf:")}}

{p 8 45 2}
{it:(void)}{bind:           }
{help mf_xl##fmtid_set_vertical_align:{it:B}{bf:.fmtid_set_vertical_align(}{it:real scalar fmtid}{bf:,} {bf:"}{it:align}{bf:")}}

{p 8 45 2}
{it:(void)}{bind:           }
{help mf_xl##fmtid_set_horizontal_align:{it:B}{bf:.fmtid_set_horizontal_align(}{it:real scalar fmtid}{bf:,} {bf:"}{it:align}{bf:")}}

{p 8 45 2}
{it:(void)}{bind:           }
{help mf_xl##fmtid_set_border:{it:B}{bf:.fmtid_set_border(}{it:real scalar fmtid}{bf:,} {bf:"}{it:style}{bf:"} [{bf:,} {bf:"}{it:color}{bf:"}]{bf:)}}

{p 8 45 2}
{it:(void)}{bind:           }
{help mf_xl##fmtid_set_left_border:{it:B}{bf:.fmtid_set_left_border(}{it:real scalar fmtid}{bf:,} {bf:"}{it:style}{bf:"} [{bf:,} {bf:"}{it:color}{bf:"}]{bf:)}}

{p 8 45 2}
{it:(void)}{bind:           }
{help mf_xl##fmtid_set_right_border:{it:B}{bf:.fmtid_set_right_border(}{it:real scalar fmtid}{bf:,} {bf:"}{it:style}{bf:"} [{bf:,} {bf:"}{it:color}{bf:"}]{bf:)}}

{p 8 45 2}
{it:(void)}{bind:           }
{help mf_xl##fmtid_set_top_border:{it:B}{bf:.fmtid_set_top_border(}{it:real scalar fmtid}{bf:,} {bf:"}{it:style}{bf:"} [{bf:,} {bf:"}{it:color}{bf:"}]{bf:)}}

{p 8 45 2}
{it:(void)}{bind:           }
{help mf_xl##fmtid_set_bottom_border:{it:B}{bf:.fmtid_set_bottom_border(}{it:real scalar fmtid}{bf:,} {bf:"}{it:style}{bf:"} [{bf:,} {bf:"}{it:color}{bf:"}]{bf:)}}

{p 8 45 2}
{it:(void)}{bind:           }
{help mf_xl##fmtid_set_diagonal_border:{it:B}{bf:.fmtid_set_diagonal_border(}{it:real scalar fmtid}{bf:,} {bf:"}{it:direction}{bf:",} {bf:"}{it:style}{bf:"} [{bf:,} {bf:"}{it:color}{bf:"}]{bf:)}}

{p 8 45 2}
{it:(void)}{bind:           }
{help mf_xl##fmtid_set_fill_pattern:{it:B}{bf:.fmtid_set_fill_pattern(}{it:real scalar fmtid}{bf:,} {bf:"}{help mf_xl##pattern:{it:pattern}}{bf:",} {bf:"}{it:fgcolor}{bf:"} [{bf:,} {bf:"}{it:bgcolor}{bf:"}]{bf:)}}

{p 8 45 2}
{it:(void)}{bind:           }
{help mf_xl##fmtid_set_column_width:{it:B}{bf:.fmtid_set_column_width(}{it:real scalar fmtid}{bf:,} {it:real scalar col1}{bf:,} {it:real scalar col2}{bf:,} {it:real scalar width}{bf:)}}

{p 8 45 2}
{it:(void)}{bind:           }
{help mf_xl##fmtid_set_row_height:{it:B}{bf:.fmtid_set_row_height(}{it:real scalar fmtid}{bf:,} {it:real scalar row1}{bf:,} {it:real scalar row2}{bf:,} {it:real scalar height}{bf:)}}

{p 8 45 2}
{it:(void)}{bind:           }
{help mf_xl##fmtid_set_text_wrap:{it:B}{bf:.fmtid_set_text_wrap(}{it:real scalar fmtid}{bf:,} {c -(}{bf:"on"}{c |}{bf:"off"}{c )-}{bf:)}}

{p 8 45 2}
{it:(void)}{bind:           }
{help mf_xl##fmtid_set_shrink_to_fit:{it:B}{bf:.fmtid_set_shrink_to_fit(}{it:real scalar fmtid}{bf:,} {c -(}{bf:"on"}{c |}{bf:"off"}{c )-}{bf:)}}

{p 8 45 2}
{it:(void)}{bind:           }
{help mf_xl##fmtid_set_text_rotate:{it:B}{bf:.fmtid_set_text_rotate(}{it:real scalar fmtid}{bf:,} {it:real scalar rotation}{bf:)}}

{p 8 45 2}
{it:(void)}{bind:           }
{help mf_xl##fmtid_set_text_indent:{it:B}{bf:.fmtid_set_text_indent(}{it:real scalar fmtid}{bf:,} {it:real scalar indent}{bf:)}}

{p 8 45 2}
{it:(void)}{bind:           }
{help mf_xl##fmtid_set_format_lock:{it:B}{bf:.fmtid_set_format_lock(}{it:real scalar fmtid}{bf:,} {c -(}{bf:"on"}{c |}{bf:"off"}{c )-}{bf:)}}

{p 8 45 2}
{it:(void)}{bind:           }
{help mf_xl##fmtid_set_format_hidden:{it:B}{bf:.fmtid_set_format_hidden(}{it:real scalar fmtid}{bf:,} {c -(}{bf:"on"}{c |}{bf:"off"}{c )-}{bf:)}}

{marker syn_util_funcs}{...}
    {title:实用函数}

{p 4 4 2}
以下函数可以在你拥有 {cmd:xl()} 类的实例时使用。

{marker query}{...}
{p 4 4 2}
{cmd:query()} 返回有关 {cmd:xl()} 类的信息。
这里是 {cmd:query()} 的语法：

	{it:void} 			{it:{help mf_xl##def_B:B}}{cmd:.query(}{cmd:)}
	{it:string scalar}		{it:{help mf_xl##def_B:B}}{cmd:.query(}{cmd:"filename"}{cmd:)}
	{it:real scalar}		{it:{help mf_xl##def_B:B}}{cmd:.query(}{cmd:"mode"}{cmd:)}
	{it:real scalar}		{it:{help mf_xl##def_B:B}}{cmd:.query(}{cmd:"filetype"}{cmd:)}
	{it:string scalar}		{it:{help mf_xl##def_B:B}}{cmd:.query(}{cmd:"sheetname"}{cmd:)}
	{it:transmorphic scalar}	{it:{help mf_xl##def_B:B}}{cmd:.query(}{cmd:"missing"}{cmd:)}


{p 8 12 2}
{it:{help mf_xl##def_B:B}}{cmd:.query(}{cmd:)}
	列出类的当前值和设置。

{p 8 12 2}
{it:{help mf_xl##def_B:B}}{cmd:.query(}{cmd:"filename"}{cmd:)}
	返回当前工作簿的文件名。

{p 8 12 2}
{it:{help mf_xl##def_B:B}}{cmd:.query(}{cmd:"mode"}{cmd:)}
	如果工作簿总是被成员函数关闭，则返回 {cmd:0}，否则如果当前工作簿是打开的，则返回 {cmd:1}。

{p 8 12 2}
{it:{help mf_xl##def_B:B}}{cmd:.query(}{cmd:"filetype"}{cmd:)}
	如果工作簿的类型是 {cmd:.xls}，则返回 {cmd:0}，否则如果工作簿的类型是 {cmd:.xlsx}，则返回 {cmd:1}。

{p 8 12 2}
{it:{help mf_xl##def_B:B}}{cmd:.query(}{cmd:"sheetname"}{cmd:)}
	返回活动的表名称，类型为字符串标量。

{p 8 12 2}
{it:{help mf_xl##def_B:B}}{cmd:.query(}{cmd:"missing"}{cmd:)}
	根据设置的内容（使用 {helpb mf_xl##set_missing:set_missing()}），返回 {cmd:J(1,0,.)}（如果设置为 {cmd:blanks}），一个 {cmd:string scalar}，或一个 {cmd:real scalar}。

{p 4 4 2}
在使用不同的 Excel 文件类型时，你需要知道你正在使用的 Excel 文件类型，因为这两种文件类型具有不同的列和行限制。你可以使用 {cmd:xl.query("filetype")} 来获取该信息。

	{cmd}...
	if (xl.query("filetype")) {
		...
	}
	else {
		...
	}{txt}

{marker get_colnum}{...}
{p 8 12 2}
{it:{help mf_xl##def_B:B}}{cmd:.get_colnum()} 返回一个向量，包含基于字符串向量参数中的 Excel 列标签的列号。

{p 4 4 2}
要获取 Excel 列 {cmd:AA} 和 {cmd:AD} 的列号，代码如下：

	: {cmd:mycol = ("AA","AD")}
	: {cmd:col = b.get_colnum(mycol)}
	: {cmd:col}
	{txt}       {txt} 1    2
	    {c TLC}{hline 11}{c TRC}
	  1 {c |}  {res}27   30{txt}  {c |}
	    {c BLC}{hline 11}{c BRC}

{marker get_colletter}{...}
{p 8 12 2}
{it:{help mf_xl##def_B:B}}{cmd:.get_colletter()}
    返回一个基于实数向量参数中的列编号的列字母向量。

{pstd}
要获取 Excel 列 {cmd:1} 和 {cmd:29} 的列字母，代码如下：

	: {cmd:mycol = (1, 29)}
	: {cmd:col = b.get_colletter(mycol)}
	: {cmd:col}
	{txt}       {txt} 1    2
	    {c TLC}{hline 11}{c TRC}
	  1 {c |}  {res} A   AC{txt}  {c |}
	    {c BLC}{hline 11}{c BRC}

{p 4 4 2}
以下函数用于处理单元格格式和样式。

{marker set_keep_cell_format}{...}
{p 8 12 2}
{it:{help mf_xl##def_B:B}}{cmd:.set_keep_cell_format(}{cmd:"on"}|{cmd:"off"}{cmd:)}
     设置 {cmd:put_number()} 类成员函数在写入值时是否保留单元格的样式和格式。默认情况下，保留单元格的样式和格式为 {cmd:off}。

{p 4 4 2}
以下函数用于处理具有 {cmd:xl} 类实例的错误处理。

{marker set_error_mode}{...}
{p 8 12 2}
{it:{help mf_xl##def_B:B}}{cmd:.set_error_mode(}{cmd:"on"}|{cmd:"off"}{cmd:)}
     设置 {cmd:xl()} 类成员函数是否发出错误。默认情况下，错误打开 {cmd:on}。

{marker get_last_error}{...}
{p 8 12 2}
{it:{help mf_xl##def_B:B}}{cmd:.get_last_error(}{cmd:)}
     返回 {cmd:xl()} 类发出的最后一个错误代码，如果 {cmd:set_error_mode()} 设置为 {cmd:off}。

{marker get_last_error_message}{...}
{p 8 12 2}
{it:{help mf_xl##def_B:B}}{cmd:.get_last_error_message(}{cmd:)}
     返回 {cmd:xl()} 类发出的最后一条错误信息，如果 {cmd:set_error_mode()} 设置为 {cmd:off}。


{marker syn_util_error}{...}
    {title:处理错误}

{p 4 4 2}
将错误关闭对于 {cmd:xl()} 类的实例在使用 {help m1_ado_zh:ado-file} 时非常有用。你应该在 ado 文件中发出 Stata 错误代码，而不是 Mata 错误代码。例如，在 Mata 中，当尝试加载一个不存在的文件时，你将收到错误代码 {cmd:r(16103)}：

	{cmd:: b = xl()}
	{cmd:: b.load_book("zzz")}
	无法加载文件 zzz.xls
	r(16103);

{p 4 4 2}
这种类型错误的正确 Stata 错误代码是 {cmd:603}，而不是 {cmd:16103}。要发出正确的错误，代码如下：

	{cmd}b = xl()
	b.set_error_mode("off")
	b.load_book("zzz")
	if (b.get_last_error()==16103) {
		error(603)
	}{txt}

{p 4 4 2}
如果你 
{helpb mf_xl##set_mode:set_mode("open")}，你也应该关闭错误，因为在退出 ado 文件之前，你需要关闭你的 Excel 文件。你应该编写

	{cmd}b = xl()
	b.set_mode("open")
	b.set_error_mode("off")
	b.load_book("zzz")
	...
	b.put_string(1,300, "test")
	if (b.get_last_error()==16116) {
		b.close_book()
		error(603)
	}{txt}

{p 4 4 2}
如果使用了 {cmd:set_mode("closed")}，你无需担心关闭 Excel 文件，因为会自动完成。


{marker syn_error_codes}{...}
    {title:错误代码}

{p 4 4 2}
与 {cmd:xl()} 类相关的错误代码如下：

	 代码    含义
	{hline 67}
	 16101    找不到文件
	 16102    文件已存在
	 16103    文件无法打开
	 16104    文件无法关闭
	 16105    文件太大
	 16106    无法保存文件
	 16111    找不到工作表
	 16112    工作表已存在
	 16113    无法清除工作表
	 16114    无法添加工作表
	 16115    无法从工作表读取 
	 16116    无法写入工作表
	 16121    语法无效
	 16122    范围无效
         16130    无法读取单元格格式
         16131    无法写入单元格格式
         16132    列格式无效
         16133    列宽无效
         16134    行格式无效
         16135    行高无效
         16136    颜色无效
         16140    数字格式无效
         16141    对齐格式无效
         16142    边框样式格式无效
         16143    边框方向格式无效
         16144    填充模式样式格式无效
         16145    字体格式无效
         16146    字体大小格式无效
         16147    字体名称格式无效
         16148    单元格格式无效
	{hline 67}


{marker appendix}{...}
{title:附录}

{marker nformat}{...}
    {title:数字格式的代码}

	     {it:format}                      示例
 	     {hline 35}
	     {cmd:number}                         1000
	     {cmd:number_d2}                   1000.00
	     {cmd:number_sep}                  100,000
	     {cmd:number_sep_d2}            100,000.00
	     {cmd:number_sep_negbra}           (1,000)
	     {cmd:number_sep_negbrared}        {err:(1,000)}
	     {cmd:number_d2_sep_negbra}     (1,000.00)
	     {cmd:number_d2_sep_negbrared}  {err:(1,000.00)}
	     {cmd:currency_negbra}             ($4000)
	     {cmd:currency_negbrared}          {err:($4000)}
	     {cmd:currency_d2_negbra}       ($4000.00)
	     {cmd:currency_d2_negbrared}    {err:($4000.00)}
	     {cmd:account}                       5,000
	     {cmd:accountcur}              $     5,000
	     {cmd:account_d2}                 5,000.00
	     {cmd:account_d2_cur}          $  5,000.00
	     {cmd:percent}                         75%
	     {cmd:percent_d2}                   75.00%
	     {cmd:scientific_d2}              10.00E+1
	     {cmd:fraction_onedig}              10 1/2
	     {cmd:fraction_twodig}            10 23/95
	     {cmd:date}                      3/18/2007
	     {cmd:date_d_mon_yy}             18-Mar-07
	     {cmd:date_d_mon}                   18-Mar
	     {cmd:date_mon_yy}                  Mar-07
	     {cmd:time_hmm_AM}                 8:30 AM
	     {cmd:time_HMMSS_AM}            8:30:00 AM
	     {cmd:time_HMM}                       8:30
	     {cmd:time_HMMSS}                  8:30:00
	     {cmd:time_MMSS}                     30:55
	     {cmd:time_H0MMSS}                20:30:55
	     {cmd:time_MMSS0}                  30:55.0
	     {cmd:date_time}            3/18/2007 8:30
	     {cmd:text}                   this is text
 	     {hline 35}


{marker syn_format_custom}{...}
    {title:自定义格式}

{p 4 4 2}
{it:format} 也可以是由部分组成的自定义代码字符串。可以指定多达四个部分的格式代码，格式代码用分号分隔，定义正数、负数、零值和文本的格式，顺序为正数、负数、零值和文本。如果只指定两个部分，第一个用于正数和零值，第二个用于负数。如果只指定一个部分，则用于所有数字。以下是一个四个部分的示例：

{phang2}
{cmd:#,###.00_);[Red](#,###.00);0.00;"销售 "@}

{p 4 4 2}
以下表描述自定义数字格式中可用的不同符号：

                                                   单元格      格式      单元格
     符号        描述                    值     代码  显示
     {hline 70}
     {cmd:0}             数位占位符（添加零）    8.9     {cmd:#.00}      8.90
     {cmd:#}             数位占位符（不添加零）     8.9     {cmd:#.##}       8.9
     {cmd:?}             数位占位符（添加空格）    8.9     {cmd:0.0?}      8.9 
     {cmd:.}             小数点
     {cmd:%}             百分比                        .1        {cmd:%}       10%
     {cmd:,}             千位分隔符
     {cmd:E- E+ e- e+}   科学格式           12200000  {cmd:0.00E+00} 1.22E+07
     {cmd:$-+/():space}  显示符号                12     {cmd:(000)}    (012)
     {cmd:\}             转义字符                   3       {cmd:0\!}       3!
     {cmd:*}             重复字符                   3        {cmd:3*}   3xxxxx
                     （填充单元格宽度）                           
     {cmd:_}             跳过下一个字符的宽度    -1.2      {cmd:_0.0}      1.2
     {cmd:"text"}        显示引号中的文本          1.23  {cmd:0.00 "a"}   1.23 a
     {cmd:@}             文本占位符                    b   {cmd:"a"@"c"}      abc
     {hline 70}

{p 4 4 2}
以下表描述可用于自定义日期时间格式的不同代码：

     格式                          单元格
     代码          描述    显示
     {hline 46}
     {cmd:m}             月份         1-12
     {cmd:mm}            月份         01-12
     {cmd:mmm}           月份         Jan-Dec        
     {cmd:mmmm}          月份         January-December       
     {cmd:mmmmm}         月份         J-D   
     {cmd:d}             天           1-31
     {cmd:dd}            天           01-31
     {cmd:ddd}           天           Sun-Sat
     {cmd:dddd}          天           Sunday-Saturday
     {cmd:yy}            年份          00-99
     {cmd:yyyy}          年份          1909-9999
     {cmd:h}             小时          0-23
     {cmd:hh}            小时          00-23
     {cmd:m}             分钟        0-59
     {cmd:mm}            分钟        00-59
     {cmd:s}             秒        0-59
     {cmd:ss}            秒        0-59
     {cmd:h AM/PM}       时间           5 AM
     {cmd:h:mm AM/PM}    时间           5:36 PM
     {cmd:h:mm:ss A/P}   时间           5:36:03 P
     {cmd:h:mm:ss.00}    时间           5:34:03.75
     [{cmd:h}]{cmd::mm}        经历的时间   1:22
     [{cmd:mm}]{cmd::ss}       经历的时间   64:16
     [{cmd:ss}]{cmd:.00}       经历的时间   3733.71
     {hline 46}


{marker syn_format_text_color}{...}
    {title:自定义格式：文本颜色}

{p 4 4 2}
要为格式的一个部分设置文本颜色，请在部分中方括号内键入下表中列出的颜色名之一。颜色必须是部分中的第一个项目。


{marker syn_format_cond}{...}
    {title:自定义格式：条件格式}

{p 4 4 2}
要设置仅在数字满足特定条件时应用的数字格式，请将条件用方括号括起来。条件包括一个比较操作符和一个值。比较操作符包括以下内容：

	 代码          描述             
	 {hline 40}
	 {cmd:=}             等于                 
	 {cmd:>}             大于
	 {cmd:<}             小于
	 {cmd:>=}            大于或等于
	 {cmd:<=}            小于或等于
	 {cmd:<>}            不等于
	 {hline 40}

{p 4 4 2}
例如，以下格式显示小于或等于 100 的数字为红色字体，而大于 100 的数字为蓝色字体： 

	[Red][<=100];[Blue][>100]

{p 4 4 2}
如果单元格值不满足任何条件，则将显示井号 ({cmd:#})，并跨越单元格的宽度。

{marker style}{...}
    {title:边框样式的代码}

	     {it:style}
	     {hline 22} 
	     {cmd:none}
	     {cmd:thin}
	     {cmd:medium}
	     {cmd:dashed}
	     {cmd:dotted}
             {cmd:thick}
             {cmd:double}
             {cmd:hair}
             {cmd:medium_dashed}
             {cmd:dash_dot}
             {cmd:medium_dash_dot}
             {cmd:dash_dot_dot}
             {cmd:medium_dash_dot_dot}
             {cmd:slant_dash_dot}
 	     {hline 22}


{marker pattern}{...}
    {title:填充模式样式的代码}

	     {it:pattern}
	     {hline 25} 
	     {cmd:none}
	     {cmd:solid}
	     {cmd:gray50}
	     {cmd:gray75}
	     {cmd:gray25}
	     {cmd:horstripe}
	     {cmd:verstripe}
	     {cmd:revdiagstripe}
	     {cmd:diagstripe}
	     {cmd:diagcrosshatch}
	     {cmd:thickdiagcrosshatch}
	     {cmd:thinhorstripe}
	     {cmd:thinverstripe}
	     {cmd:thinrevdiagstripe}
	     {cmd:thindiagstripe}
	     {cmd:thinhorcrosshatch}
	     {cmd:thindiagcrosshatch}
	     {cmd:gray12p5}
	     {cmd:gray6p25}
	     {hline 25}


{marker rotation}{...}
    {title:文本旋转的代码}

  	      旋转     意义 
    	      {hline 58} 
	      {cmd:0}-{cmd:90}         文本逆时针旋转 0 至 90 度
	      {cmd:91}-{cmd:180}       文本顺时针旋转 1 至 90 度
	      {cmd:255}          垂直文本        
	      {hline 58}


{marker syn_format_colors}{...}
    {title:格式颜色}

{p 4 4 2}
{it:color} 可以是下表中列出的任何颜色名称或用双引号指定的 RGB（红、绿、蓝）值 ({cmd:"255 255 255"}).

	{it:color}
        {hline 25} 
	{cmd:aliceblue}
	{cmd:antiquewhite}
	{cmd:aqua}
	{cmd:aquamarine}
	{cmd:azure}
	{cmd:beige}
	{cmd:bisque}
	{cmd:black}
	{cmd:blanchedalmond}
	{cmd:blue}
	{cmd:blueviolet}
	{cmd:brown}
	{cmd:burlywood}
	{cmd:cadetblue}
	{cmd:chartreuse}
	{cmd:chocolate}
	{cmd:coral}
	{cmd:cornflowerblue}
	{cmd:cornsilk}
	{cmd:crimson}
	{cmd:cyan}
	{cmd:darkblue}
	{cmd:darkcyan}
	{cmd:darkgoldenrod}
	{cmd:darkgray}
	{cmd:darkgreen}
	{cmd:darkkhaki}
	{cmd:darkmagenta}
	{cmd:darkolivegreen}
	{cmd:darkorange}
	{cmd:darkorchid}
	{cmd:darkred}
	{cmd:darksalmon}
	{cmd:darkseagreen}
	{cmd:darkslateblue}
	{cmd:darkslategray}
	{cmd:darkturquoise}
	{cmd:darkviolet}
	{cmd:deeppink}
	{cmd:deepskyblue}
	{cmd:dimgray}
	{cmd:dodgerblue}
	{cmd:firebrick}
	{cmd:floralwhite}
	{cmd:forestgreen}
	{cmd:fuchsia}
	{cmd:gainsboro}
	{cmd:ghostwhite}
	{cmd:gold}
	{cmd:goldenrod}
	{cmd:gray}
	{cmd:green}
	{cmd:greenyellow}
	{cmd:honeydew}
	{cmd:hotpink}
	{cmd:indianred }
	{cmd:indigo }
	{cmd:ivory}
	{cmd:khaki}
	{cmd:lavender}
	{cmd:lavenderblush}
	{cmd:lawngreen}
	{cmd:lemonchiffon}
	{cmd:lightblue}
	{cmd:lightcoral}
	{cmd:lightcyan}
	{cmd:lightgoldenrodyellow}
	{cmd:lightgray}
	{cmd:lightgreen}
	{cmd:lightpink}
	{cmd:lightsalmon}
	{cmd:lightseagreen}
	{cmd:lightskyblue}
	{cmd:lightslategray}
	{cmd:lightsteelblue}
	{cmd:lightyellow}
	{cmd:lime}
	{cmd:limegreen}
	{cmd:linen}
	{cmd:magenta}
	{cmd:maroon}
	{cmd:mediumaquamarine}
	{cmd:mediumblue}
	{cmd:mediumorchid}
	{cmd:mediumpurple}
	{cmd:mediumseagreen}
	{cmd:mediumslateblue}
	{cmd:mediumspringgreen}
	{cmd:mediumturquoise}
	{cmd:mediumvioletred}
	{cmd:midnightblue}
	{cmd:mintcream}
	{cmd:mistyrose}
	{cmd:moccasin}
	{cmd:navajowhite}
	{cmd:navy}
	{cmd:oldlace}
	{cmd:olive}
	{cmd:olivedrab}
	{cmd:orange}
	{cmd:orangered}
	{cmd:orchid}
	{cmd:palegoldenrod}
	{cmd:palegreen}
	{cmd:paleturquoise}
	{cmd:palevioletred}
	{cmd:papayawhip}
	{cmd:peachpuff}
	{cmd:peru}
	{cmd:pink}
	{cmd:plum}
	{cmd:powderblue}
	{cmd:purple}
	{cmd:red}
	{cmd:rosybrown}
	{cmd:royalblue}
	{cmd:saddlebrown}
	{cmd:salmon}
	{cmd:sandybrown}
	{cmd:seagreen}
	{cmd:seashell}
	{cmd:sienna}
	{cmd:silver}
	{cmd:skyblue}
	{cmd:slateblue}
	{cmd:slategray}
	{cmd:snow}
	{cmd:springgreen}
	{cmd:steelblue}
	{cmd:tan}
	{cmd:teal}
	{cmd:thistle}
	{cmd:tomato}
	{cmd:turquoise}
	{cmd:violet}
	{cmd:wheat}
	{cmd:white}
	{cmd:whitesmoke}
	{cmd:yellow}
	{cmd:yellowgreen}
        {hline 25} 

{p 4 4 2}
注意：{cmd:.xls} 文件最多只能包含 56 种唯一颜色。

{marker fgcolor}{...}
{pstd}
{it:fgcolor} 可以是 {help mf_xl##syn_format_colors:{it:color}} 中指定的任何颜色名称或用双引号指定的 RGB（红、绿、蓝）值 ({cmd:"255 255 255"})。

{marker bgcolor}{...}
{pstd}
{it:bgcolor} 可以是 {help mf_xl##syn_format_colors:{it:color}} 中指定的任何颜色名称或用双引号指定的 RGB（红、绿、蓝）值 ({cmd:"255 255 255"})。
{p_end}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <mf_xl.sthlp>}