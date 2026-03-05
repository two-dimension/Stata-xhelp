{smcl}
{* *! version 1.0.8  12jun2019}{...}
{vieweralsosee "[M-5] Pdf*()" "mansection M-5 Pdf*()"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[M-5] _docx*()" "help mf docx"}{...}
{vieweralsosee "[M-5] xl()" "help mf xl"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[M-4] IO" "help m4 io"}{...}
{vieweralsosee "[RPT] putdocx intro" "help putdocx intro"}{...}
{vieweralsosee "[RPT] putexcel" "help putexcel_zh"}{...}
{vieweralsosee "[RPT] putpdf intro" "help putpdf intro"}{...}
{viewerjumpto "Syntax" "mf_pdf_zh##syntax"}{...}
{viewerjumpto "Description" "mf_pdf_zh##description"}{...}
{viewerjumpto "Links to PDF documentation" "mf_pdf_zh##linkspdf"}{...}
{viewerjumpto "Remarks" "mf_pdf_zh##remarks"}{...}
{viewerjumpto "Examples" "mf_pdf_zh##examples"}
{help mf_pdf:English Version}
{hline}{...}
{p2colset 1 17 19 2}{...}
{p2col:{bf:[M-5] Pdf*()} {hline 2}}创建 PDF 文件 
{p_end}
{p2col:}({mansection M-5 Pdf*():查看完整 PDF 手册条目}){p_end}
{p2colreset}{...}


{marker syntax}{...}
{title:语法}

{p 4 4 2}
语法图描述了一组用于创建 PDF 文件的 Mata 类。
有关 Mata 类编程的帮助，请参见 {manhelp m2_class M-2:class}。

{p 4 4 2}
语法根据以下标题呈现：

    {help mf_pdf##syn_document:PdfDocument}
    {help mf_pdf##syn_paragraph:PdfParagraph}
    {help mf_pdf##syn_text:PdfText}
    {help mf_pdf##syn_table:PdfTable}


{marker syn_document}{...}
    {title:PdfDocument}

{p 8 8 2}
{helpb mf_pdf##remarks_document:PdfDocument} 类是创建 PDF 文件的基础。
使用 {cmd:PdfDocument} 类是必须的，但其他类则不是。

{p 8 25 2}
{help mf_pdf##des_document_new:{bf:PdfDocument()}}

{p 8 25 2}
{it:void}{bind: }
{help mf_pdf##des_document_save:{bf:save(}}{it:string scalar filename}{help mf_pdf##des_document_save:{bf:)}}

{p 8 25 2}
{it:void}{bind: }
{help mf_pdf##des_document_close:{bf:close()}}

{p 8 25 2}
{it:void}{bind: }
{help mf_pdf##des_document_pgsize:{bf:setPageSize(}}{it:string scalar sz}{help mf_pdf##des_document_pgsize:{bf:)}}

{p 8 25 2}
{it:void}{bind: }
{help mf_pdf##des_document_landscape:{bf:setLandscape(}}{it:real scalar landscape}{help mf_pdf##des_document_landscape:{bf:)}}

{p 8 25 2}
{it:void}{bind: }
{help mf_pdf##des_document_margins:{bf:setMargins(}}{it:real scalar left}{cmd:,}
{it:real scalar top}{cmd:,}
{it:real scalar right}{cmd:,}
{it:real scalar bottom}{help mf_pdf##des_document_margins:{bf:)}}

{p 8 25 2}
{it:void}{bind: }
{help mf_pdf##des_document_halign:{bf:setHAlignment(}}{it:string scalar a}{help mf_pdf##des_document_halign:{bf:)}}

{p 8 25 2}
{it:void}{bind: }
{help mf_pdf##des_document_linesp:{bf:setLineSpace(}}{it:real scalar sz}{help mf_pdf##des_document_linesp:{bf:)}}

{p 8 25 2}
{it:void}{bind: }
{help mf_pdf##des_document_bgcolor:{bf:setBgColor(}}{it:real scalar r}{cmd:,} 
{it:real scalar g}{cmd:,}
{it:real scalar b}{help mf_pdf##des_document_bgcolor:{bf:)}}

{p 8 25 2}
{it:void}{bind: }
{help mf_pdf##des_document_color:{bf:setColor(}}{it:real scalar r}{cmd:,} 
{it:real scalar g}{cmd:,} {it:real scalar b}{help mf_pdf##des_document_color:{bf:)}}

{p 8 25 2}
{it:void}{bind: }
{help mf_pdf##des_document_font:{bf:setFont(}}{it:string scalar fontname}[{cmd:,} 
{it:string scalar style}]{help mf_pdf##des_document_font:{bf:)}}

{p 8 25 2}
{it:void}{bind: }
{help mf_pdf##des_document_fontsize:{bf:setFontSize(}}{it:real scalar sz}{help mf_pdf##des_document_fontsize:{bf:)}}

{p 8 25 2}
{it:void}{bind: }
{help mf_pdf##des_document_image:{bf:addImage(}}{it:string scalar filename}[{cmd:,} 
{it:real scalar cx}{cmd:,} {it:real scalar cy}]{help mf_pdf##des_document_image:{bf:)}}

{p 8 25 2}
{it:void}{bind: }
{help mf_pdf##des_document_para:{bf:addParagraph(}}{it:class}
{helpb mf_pdf##remarks_paragraph:PdfParagraph}
{it:scalar p}{help mf_pdf##des_document_para:{bf:)}}

{p 8 25 2}
{it:void}{bind: }
{help mf_pdf##des_document_table:{bf:addTable(}}{it:class}
{helpb mf_pdf##remarks_table:PdfTable}
{it:scalar t}{help mf_pdf##des_document_table:{bf:)}}

{p 8 25 2}
{it:void}{bind: }
{help mf_pdf##des_document_page:{bf:addNewPage()}}

{p 8 25 2}
{it:void}{bind: }
{help mf_pdf##des_document_line:{bf:addLineBreak()}}


{marker syn_paragraph}{...}
    {title:PdfParagraph}

{p 8 8 2}
{helpb mf_pdf##remarks_paragraph:PdfParagraph} 类可用于向 {helpb mf_pdf##remarks_document:PdfDocument} 或 {helpb mf_pdf##remarks_table:PdfTable} 添加段落。

{p 8 25 2}
{help mf_pdf##des_paragraph_new:{bf:PdfParagraph()}}

{p 8 25 2}
{it:void}{bind: }
{help mf_pdf##des_paragraph_str:{bf:addString(}}{it:string scalar s}{help mf_pdf##des_paragraph_str:{bf:)}}

{p 8 25 2}
{it:void}{bind: }
{help mf_pdf##des_paragraph_text:{bf:addText(}}{it:class}
{helpb mf_pdf##remarks_text:PdfText}
{it:scalar t}{help mf_pdf##des_paragraph_text:{bf:)}}

{p 8 25 2}
{it:void}{bind: }
{help mf_pdf##des_paragraph_lb:{bf:addLineBreak()}}

{p 8 25 2}
{it:void}{bind: }
{help mf_pdf##des_paragraph_clear_content:{bf:clearContent()}}

{p 8 25 2}
{it:void}{bind: }
{help mf_pdf##des_paragraph_findent:{bf:setFirstIndent(}}{it:real scalar sz}{help mf_pdf##des_paragraph_findent:{bf:)}}

{p 8 25 2}
{it:void}{bind: }
{help mf_pdf##des_paragraph_leftindent:{bf:setLeftIndent(}}{it:real scalar sz}{help mf_pdf##des_paragraph_leftindent:{bf:)}}

{p 8 25 2}
{it:void}{bind: }
{help mf_pdf##des_paragraph_rightindent:{bf:setRightIndent(}}{it:real scalar sz}{help mf_pdf##des_paragraph_rightindent:{bf:)}}

{p 8 25 2}
{it:void}{bind: }
{help mf_pdf##des_paragraph_ts:{bf:setTopSpacing(}}{it:real scalar sz}{help mf_pdf##des_paragraph_ts:{bf:)}}

{p 8 25 2}
{it:void}{bind: }
{help mf_pdf##des_paragraph_bs:{bf:setBottomSpacing(}}{it:real scalar sz}{help mf_pdf##des_paragraph_bs:{bf:)}}

{p 8 25 2}
{it:void}{bind: }
{help mf_pdf##des_paragraph_bgcolor:{bf:setBgColor(}}{it:real scalar r}{cmd:,} 
{it:real scalar g}{cmd:,}
{it:real scalar b}{help mf_pdf##des_paragraph_bgcolor:{bf:)}}

{p 8 25 2}
{it:void}{bind: }
{help mf_pdf##des_paragraph_color:{bf:setColor(}}{it:real scalar r}{cmd:,} 
{it:real scalar g}{cmd:,}
{it:real scalar b}{help mf_pdf##des_paragraph_color:{bf:)}}

{p 8 25 2}
{it:void}{bind: }
{help mf_pdf##des_paragraph_font:{bf:setFont(}}{it:string scalar fontname}[{cmd:,} 
{it:string scalar style}]{help mf_pdf##des_paragraph_font:{bf:)}}

{p 8 25 2}
{it:void}{bind: }
{help mf_pdf##des_paragraph_fontsize:{bf:setFontSize(}}{it:real scalar sz}{help mf_pdf##des_paragraph_fontsize:{bf:)}}

{p 8 25 2}
{it:void}{bind: }
{help mf_pdf##des_paragraph_underline:{bf:setUnderline()}}

{p 8 25 2}
{it:void}{bind: }
{help mf_pdf##des_paragraph_strike:{bf:setStrikethru()}}

{p 8 25 2}
{it:void}{bind: }
{help mf_pdf##des_paragraph_halign:{bf:setHAlignment(}}{it:string scalar a}{help mf_pdf##des_paragraph_halign:{bf:)}}

{p 8 25 2}
{it:void}{bind: }
{help mf_pdf##des_paragraph_valign:{bf:setVAlignment(}}{it:string scalar a}{help mf_pdf##des_paragraph_valign:{bf:)}}

{p 8 25 2}
{it:void}{bind: }
{help mf_pdf##des_paragraph_linesp:{bf:setLineSpace(}}{it:real scalar sz}{help mf_pdf##des_paragraph_linesp:{bf:)}}


{marker syn_text}{...}
    {title:PdfText}

{p 8 8 2}
{helpb mf_pdf##remarks_text:PdfText} 类可用于向 {helpb mf_pdf##remarks_paragraph:PdfParagraph} 添加自定义文本。

{p 8 25 2}
{help mf_pdf##des_text_new:{bf:PdfText()}}

{p 8 25 2}
{it:void}{bind: }
{help mf_pdf##des_text_bgcolor:{bf:setBgColor(}}{it:real scalar r}{cmd:,} 
{it:real scalar g}{cmd:,}
{it:real scalar b}{help mf_pdf##des_text_bgcolor:{bf:)}}

{p 8 25 2}
{it:void}{bind: }
{help mf_pdf##des_text_color:{bf:setColor(}}{it:real scalar r}{cmd:,} 
{it:real scalar g}{cmd:,}
{it:real scalar b}{help mf_pdf##des_text_color:{bf:)}}

{p 8 25 2}
{it:void}{bind: }
{help mf_pdf##des_text_font:{bf:setFont(}}{it:string scalar fontname}[{cmd:,} 
{it:string scalar style}]{help mf_pdf##des_text_font:{bf:)}}

{p 8 25 2}
{it:void}{bind: }
{help mf_pdf##des_text_fontsize:{bf:setFontSize(}}{it:real scalar sz}{help mf_pdf##des_text_fontsize:{bf:)}}

{p 8 25 2}
{it:void}{bind: }
{help mf_pdf##des_text_underline:{bf:setUnderline()}}

{p 8 25 2}
{it:void}{bind: }
{help mf_pdf##des_text_strike:{bf:setStrikethru()}}

{p 8 25 2}
{it:void}{bind: }
{help mf_pdf##des_text_superscript:{bf:setSuperscript()}}

{p 8 25 2}
{it:void}{bind: }
{help mf_pdf##des_text_subscript:{bf:setSubscript()}}

{p 8 25 2}
{it:void}{bind: }
{help mf_pdf##des_text_str:{bf:addString(}}{it:string scalar s}{help mf_pdf##des_text_str:{bf:)}}

{p 8 25 2}
{it:void}{bind: }
{help mf_pdf##des_text_clear:{bf:clearContent()}}


{marker syn_table}{...}
    {title:PdfTable}
    
{p 8 8 2}
{helpb mf_pdf##remarks_table:PdfTable} 类可用于向 {helpb mf_pdf##remarks_document:PdfDocument} 添加表格。

{p 8 25 2}
{help mf_pdf##des_table_new:{bf:PdfTable()}}
	
{p 8 25 2}
{it:void}{bind: }
{help mf_pdf##des_table_init:{bf:init(}}{it:real scalar rows}{cmd:,}
{it:real scalar cols}{help mf_pdf##des_table_init:{bf:)}}

{p 8 25 2}
{it:void}{bind: }
{help mf_pdf##des_table_totalwidth:{bf:setTotalWidth(}}{it:real scalar sz}{help mf_pdf##des_table_totalwidth:{bf:)}}

{p 8 25 2}
{it:void}{bind: }
{help mf_pdf##des_table_colwidth:{bf:setColumnWidths(}}{it:real rowvector pct_v}{help mf_pdf##des_table_colwidth:{bf:)}}

{p 8 25 2}
{it:void}{bind: }
{help mf_pdf##des_table_widthpct:{bf:setWidthPercent(}}{it:real scalar pct}{help mf_pdf##des_table_widthpct:{bf:)}}

{p 8 25 2}
{it:void}{bind: }
{help mf_pdf##des_table_indent:{bf:setIndentation(}}{it:real scalar sz}{help mf_pdf##des_table_indent:{bf:)}}

{p 8 25 2}
{it:void}{bind: }
{help mf_pdf##des_table_halign:{bf:setHAlignment(}}{it:string scalar a}{help mf_pdf##des_table_halign:{bf:)}}

{p 8 25 2}
{it:void}{bind: }
{help mf_pdf##des_table_bwidth:{bf:setBorderWidth(}}{it:real scalar sz}[{cmd:,} {it:string scalar bordername}]{help mf_pdf##des_table_bwidth:{bf:)}}

{p 8 25 2}
{it:void}{bind: }
{help mf_pdf##des_table_bcolor:{bf:setBorderColor(}}{it:real scalar r}{cmd:,}
{it:real scalar g}{cmd:,} 
{it:real scalar b}[{cmd:,} {it:string scalar bordername}]{help mf_pdf##des_table_bcolor:{bf:)}}

{p 8 25 2}
{it:void}{bind: }
{help mf_pdf##des_table_topspace:{bf:setTopSpacing(}}{it:real scalar sz}{help mf_pdf##des_table_topspace:{bf:)}}

{p 8 25 2}
{it:void}{bind: }
{help mf_pdf##des_table_btmspace:{bf:setBottomSpacing(}}{it:real scalar sz}{help mf_pdf##des_table_btmspace:{bf:)}}

{p 8 25 2}
{it:void}{bind: }
{help mf_pdf##des_table_cell_string:{bf:setCellContentString(}}{it:real scalar i}{cmd:,}
{it:real scalar j}{cmd:,} 
{it:string scalar s}{help mf_pdf##des_table_cell_string:{bf:)}}

{p 8 25 2}
{it:void}{bind: }
{help mf_pdf##des_table_cell_paragraph:{bf:setCellContentParagraph(}}{it:real scalar i}{cmd:,}
{it:real scalar j}{cmd:,} 
{it:class} {helpb mf_pdf##remarks_paragraph:PdfParagraph}
{it:scalar p}{help mf_pdf##des_table_cell_paragraph:{bf:)}}

{p 8 25 2}
{it:void}{bind: }
{help mf_pdf##des_table_cell_image:{bf:setCellContentImage(}}{it:real scalar i}{cmd:,}
{it:real scalar j}{cmd:,} 
{it:string scalar filename}{help mf_pdf##des_table_cell_image:{bf:)}}

{p 8 25 2}
{it:void}{bind: }
{help mf_pdf##des_table_cell_table:{bf:setCellContentTable(}}{it:real scalar i}{cmd:,}
{it:real scalar j}{cmd:,} 
{it:class} {helpb mf_pdf##remarks_table:PdfTable}
{it:scalar tbl}{help mf_pdf##des_table_cell_table:{bf:)}}

{p 8 25 2}
{it:void}{bind: }
{help mf_pdf##des_table_cell_halign:{bf:setCellHAlignment(}}{it:real scalar i}{cmd:,}
{it:real scalar j}{cmd:,} 
{it:string scalar a}{help mf_pdf##des_table_cell_halign:{bf:)}}

{p 8 25 2}
{it:void}{bind: }
{help mf_pdf##des_table_cell_valign:{bf:setCellVAlignment(}}{it:real scalar i}{cmd:,}
{it:real scalar j}{cmd:,} 
{it:string scalar a}{help mf_pdf##des_table_cell_valign:{bf:)}}

{p 8 25 2}
{it:void}{bind: }
{help mf_pdf##des_table_cell_bgcolor:{bf:setCellBgColor(}}{it:real scalar i}{cmd:,}
{it:real scalar j}{cmd:,} 
{it:real scalar r}{cmd:,}
{it:real scalar g}{cmd:,}
{it:real scalar b}{help mf_pdf##des_table_cell_bgcolor:{bf:)}}

{p 8 25 2}
{it:void}{bind: }
{help mf_pdf##des_table_cell_bwidths:{bf:setCellBorderWidth(}}{it:real scalar i}{cmd:,}
{it:real scalar j}{cmd:,} 
{it:real scalar sz}[{cmd:,} {it:string scalar bordername}]{help mf_pdf##des_table_cell_bwidths:{bf:)}}

{p 8 25 2}
{it:void}{bind: }
{help mf_pdf##des_table_cell_bcolor:{bf:setCellBorderColor(}}{it:real scalar i}{cmd:,} 
{it:real scalar j}{cmd:,}
{it:real scalar r}{cmd:,}
{it:real scalar g}{cmd:,}
{it:real scalar b}[{cmd:,} {it:string scalar bordername}]{help mf_pdf##des_table_cell_bcolor:{bf:)}}

{p 8 25 2}
{it:void}{bind: }
{help mf_pdf##des_table_cell_margin:{bf:setCellMargin(}}{it:real scalar i}{cmd:,}
{it:real scalar j}{cmd:,}
{it:real scalar sz}[{cmd:,} {it:string scalar marginname}]{help mf_pdf##des_table_cell_margin:{bf:)}}

{p 8 25 2}
{it:void}{bind: }
{help mf_pdf##des_table_cell_font:{bf:setCellFont(}}{it:real scalar i}{cmd:,}
{it:real scalar j}{cmd:,} 
{it:string scalar fontname}[{cmd:,}
{it:string scalar style}]{help mf_pdf##des_table_cell_font:{bf:)}}

{p 8 25 2}
{it:void}{bind: }
{help mf_pdf##des_table_cell_fontsize:{bf:setCellFontSize(}}{it:real scalar i}{cmd:,}
{it:real scalar j}{cmd:,} 
{it:real scalar size}{help mf_pdf##des_table_cell_fontsize:{bf:)}}

{p 8 25 2}
{it:void}{bind: }
{help mf_pdf##des_table_cell_color:{bf:setCellColor(}}{it:real scalar i}{cmd:,}
{it:real scalar j}{cmd:,} 
{it:real scalar r}{cmd:,}
{it:real scalar g}{cmd:,}
{it:real scalar b}{help mf_pdf##des_table_cell_color:{bf:)}}

{p 8 25 2}
{it:void}{bind: }
{help mf_pdf##des_table_cell_span:{bf:setCellSpan(}}{it:real scalar i}{cmd:,}
{it:real scalar j}{cmd:,} 
{it:real scalar rowcount}{cmd:,}
{it:real scalar colcount}{help mf_pdf##des_table_cell_span:{bf:)}}

{p 8 25 2}
{it:void}{bind: }
{help mf_pdf##des_table_cell_rspan:{bf:setCellRowSpan(}}{it:real scalar i}{cmd:,}
{it:real scalar j}{cmd:,} 
{it:real scalar count}{help mf_pdf##des_table_cell_rspan:{bf:)}}

{p 8 25 2}
{it:void}{bind: }
{help mf_pdf##des_table_cell_cspan:{bf:setCellColSpan(}}{it:real scalar i}{cmd:,}
{it:real scalar j}{cmd:,} 
{it:real scalar count}{help mf_pdf##des_table_cell_cspan:{bf:)}}

{p 8 25 2}
{it:void}{bind: }
{help mf_pdf##des_table_row_split:{bf:setRowSplit(}}{it:real scalar i}{cmd:,}
{it:real scalar split}{help mf_pdf##des_table_row_split:{bf:)}}

{p 8 25 2}
{it:void}{bind: }
{help mf_pdf##des_table_add_row:{bf:addRow(}}{it:real scalar i}{help mf_pdf##des_table_add_row:{bf:)}}

{p 8 25 2}
{it:void}{bind: }
{help mf_pdf##des_table_del_row:{bf:delRow(}}{it:real scalar i}{help mf_pdf##des_table_del_row:{bf:)}}

{p 8 25 2}
{it:void}{bind: }
{help mf_pdf##des_table_add_col:{bf:addColumn(}}{it:real scalar j}{help mf_pdf##des_table_add_col:{bf:)}}

{p 8 25 2}
{it:void}{bind: }
{help mf_pdf##des_table_del_col:{bf:delColumn(}}{it:real scalar j}{help mf_pdf##des_table_del_col:{bf:)}}

{p 8 25 2}
{it:void}{bind: }
{help mf_pdf##des_table_matrix:{bf:fillStataMatrix(}}{it:string scalar name}{cmd:,} 
{it:real scalar colnames}{cmd:,}
{it:real scalar rownames}[{cmd:,} {it:string scalar fmt}]{help mf_pdf##des_table_matrix:{bf:)}}

{p 8 25 2}
{it:void}{bind: }
{help mf_pdf##des_table_mata:{bf:fillMataMatrix(}}{it:real matrix name}[{cmd:,} 
{it: real scalar i}{cmd:,}
{it:real scalar j}{cmd:,} {it:string scalar fmt}]{help mf_pdf##des_table_mata:{bf:)}}

{p 8 25 2}
{it:void}{bind: }
{help mf_pdf##des_table_data:{bf:fillData(}}{it:real matrix i}{cmd:,}
{it:rowvector j}{cmd:,} 
{it:real scalar vnames}{cmd:,}
{it:real scalar obsno}[{cmd:,} 
{it: scalar selectvar}]{help mf_pdf##des_table_data:{bf:)}}


{marker description}{...}
{title:描述}

{pstd}
{cmd:Pdf*()} 类用于以编程方式创建 PDF 文件。 
{cmd:PdfDocument} 类创建整体文件，是必需的。其他类分别是 {cmd:PdfParagraph}，用于向 {cmd:PdfDocument} 添加段落；{cmd:PdfText}，用于添加自定义文本；以及 {cmd:PdfTable}，用于添加表格。


{marker linkspdf}{...}
{title:PDF 文档链接}

        {mansection M-5 Pdf*()Remarksandexamples:备注和示例}

{pstd}
上述部分未包含在此帮助文件中。


{marker remarks}{...}
{title:备注}

{p 4 4 2}
备注按以下标题呈现：

        {help mf_pdf##remarks_document:PdfDocument}
        {help mf_pdf##remarks_paragraph:PdfParagraph}
        {help mf_pdf##remarks_text:PdfText}
        {help mf_pdf##remarks_table:PdfTable}
        {help mf_pdf##remarks_error:错误代码}
        {help mf_pdf##examples:示例}


{marker remarks_document}{...}
    {title:PdfDocument}
    
{pstd}
{cmd:PdfDocument} 类是创建 PDF 文件的基础。
使用 {cmd:PdfDocument} 类是创建 PDF 文件所必需的。除非另有说明，所有大小均以点为单位测量，其中 1 点 = 1/72 英寸。
	
{phang}
{marker des_document_new}{...}
{cmd:PdfDocument()}
是 {cmd:PdfDocument} 类的构造函数。

{phang2}
{marker des_document_save}{...}
{cmd:save(}{it:filename}{cmd:)}
执行 PDF 文件的最后渲染并将其保存到磁盘。

{phang2}
{marker des_document_close}{...}
{cmd:close()}
关闭 {cmd:PdfDocument()} 并释放相关内存。

{phang2}
{marker des_document_pgsize}{...}
{cmd:setPageSize(}{it:sz}{cmd:)}
设置 PDF 文件的页面大小。{it:size} 的可能值为 {cmd:Letter}、{cmd:Legal}、{cmd:A3}、{cmd:A4}、{cmd:A5}、{cmd:B4} 和 {cmd:B5}。

{phang2}
{marker des_document_landscape}{...}
{opt setLandscape(landscape)}
将 PDF 文件的页面方向设置为 {cmd:landscape} 或 {cmd:portrait}。默认情况下，页面方向为 {cmd:portrait}。如果 {it:landscape} 为 {cmd:1}，则方向设置为 {cmd:landscape}。

{phang2}
{marker des_document_margins}{...}
{cmd:setMargins(}{it:left}{cmd:,} {it:top}{cmd:,} {it:right}{cmd:,} {it:bottom}{cmd:)}
设置页面边距 {it:left}、{it:top}、{it:right} 和 {it:bottom}。
边距用于定义所有文本、图像、表格等的画布，该画布基于 ({it:left}, {it:top}) 的绝对坐标绘制。画布高度等于 {page height - ({it:top} + {it:bottom})}，画布宽度等于 {page width - ({it:left} + {it:right})}。

{phang2}
{marker des_document_halign}{...}
{cmd:setHAlignment(}{it:a}{cmd:)}
设置页面的水平对齐方式。可能的对齐值为 {cmd:left}、{cmd:right}、{cmd:center}、{cmd:justified} 和 {cmd:stretch}。默认情况下为 {cmd:left} 对齐。

{phang2}
{marker des_document_linesp}{...}
{cmd:setLineSpace(}{it:sz}{cmd:)}
设置文档中行与行之间的距离。

{phang2}
{marker des_document_bgcolor}{...}
{cmd:setBgColor(}{it:r}{cmd:,} {it:g}{cmd:,} {it:b}{cmd:)}
根据指定的 RGB 值设置文档的背景颜色，范围为 [0,255]。请注意，仅可使用整数值。

{phang2}
{marker des_document_color}{...}
{cmd:setColor(}{it:r}{cmd:,} {it:g}{cmd:,} {it:b}{cmd:)}
使用指定的 RGB 值设置文档的文本颜色，范围为 [0,255]。请注意，仅可使用整数值。

{phang2}
{marker des_document_font}{...}
{cmd:setFont(}{it:fontname}[{cmd:,} {it:style}]{cmd:)}
设置文档的字体。可以选择指定字体样式。{it:style} 的可能值为 {cmd:Regular}、{cmd:Bold}、{cmd:Italic} 和 {cmd:Bold Italic}。如果未指定 {it:style}，则默认为 {cmd:Regular}。

{phang2}
{marker des_document_fontsize}{...}
{cmd:setFontSize(}{it:sz}{cmd:)}
设置文档中的文本大小，以点为单位。

{phang2}
{marker des_document_image}{...}
{cmd:addImage(}{it:file}[{cmd:,} {it:cx}{cmd:,} {it:cy}]{cmd:)}
向文档添加图像。图像的 {it:filename} 可以是绝对路径或相对于当前工作目录的相对路径。{it:cx} 和 {it:cy} 分别指定图像的宽度和高度，以点为单位。

{pmore2}
如果未指定 {it:cx}，则图像的宽度由图像信息和文档的画布宽度决定。如果 {it:cx} 大于画布宽度，则使用画布宽度。

{pmore2}
如果未指定 {it:cy}，则图像的高度由图像的宽度和纵横比决定。

{pmore2}
支持的图像类型为 {cmd:.jpeg} 和 {cmd:.png}。

{phang2}
{marker des_document_para}{...}
{cmd:addParagraph(}{it:class}
{helpb mf_pdf##remarks_paragraph:PdfParagraph} {it:p}{cmd:)}
向文档添加一个新段落。

{phang2}
{marker des_document_table}{...}
{cmd:addTable(}{it:class} 
{helpb mf_pdf##remarks_table:PdfTable} {it:t}{cmd:)}
向文档添加一个新表格。

{phang2}
{marker des_document_page}{...}
{cmd:addNewPage()}
向文档添加分页符，并将当前位置移动到新页面的左上角。

{phang2}
{marker des_document_line}{...}
{cmd:addLineBreak()}
向文档添加换行符，并将当前位置移动到下一行。


{marker remarks_paragraph}{...}
    {title:PdfParagraph}

{pstd}
{cmd:PdfParagraph} 类可用于向 {helpb mf_pdf##remarks_document:PdfDocument} 添加段落。
{cmd:PdfParagraph} 从 {cmd:PdfDocument} 继承基本属性，例如背景颜色、文本颜色和字体。除非另有说明，所有大小均以点为单位测量，其中 1 点 = 1/72 英寸。

{phang}
{marker des_paragraph_new}{...}
{cmd:PdfParagraph()}
是 {cmd:PdfParagraph} 的构造函数。

{phang2}
{marker des_paragraph_str}{...}
{cmd:addString(}{it:s}{cmd:)}
将字符串追加到段落的末尾。

{phang2}
{marker des_paragraph_text}{...}
{cmd:addText(}{it:class}
{helpb mf_pdf##remarks_text:PdfText} {it:t}{cmd:)}
将 {cmd:PdfText} 对象追加到段落的末尾。

{phang2}
{marker des_paragraph_lb}{...}
{cmd:addLineBreak()}
在段落末尾添加换行符。这会将当前位置移动到下一行的开头。

{phang2}
{marker des_paragraph_clear_content}{...}
{cmd:clearContent()}
清除段落的内容。如果段落对象已添加到文档，并且您打算使用其属性与新内容一起重复使用，这非常有用。

{phang2}
{marker des_paragraph_findent}{...}
{cmd:setFirstIndent(}{it:sz}{cmd:)}
设置段落第一行的缩进。

{phang2}
{marker des_paragraph_leftindent}{...}
{cmd:setLeftIndent(}{it:sz}{cmd:)}
设置段落的左缩进，适用于所有行。

{phang2}
{marker des_paragraph_rightindent}{...}
{cmd:setRightIndent(}{it:sz}{cmd:)}
设置段落的右缩进，适用于所有行。如果左缩进和右缩进的总和大于画布宽度，则左缩进将占主导地位，而右缩进将被覆盖并设置为 0。

{phang2}
{marker des_paragraph_ts}{...}
{cmd:setTopSpacing(}{it:sz}{cmd:)}
设置段落上方的间距。

{phang2}
{marker des_paragraph_bs}{...}
{cmd:setBottomSpacing(}{it:sz}{cmd:)}
设置段落下方的间距。

{phang2}
{marker des_paragraph_bgcolor}{...}
{cmd:setBgColor(}{it:r}{cmd:,} {it:g}{cmd:,} {it:b}{cmd:)}
设置段落的背景颜色，指定的 RGB 值范围为 [0,255]。请注意，仅可使用整数值。

{phang2}
{marker des_paragraph_color}{...}
{cmd:setColor(}{it:r}{cmd:,} {it:g}{cmd:,} {it:b}{cmd:)}
设置段落的文本颜色，指定的 RGB 值范围为 [0,255]。请注意，仅可使用整数值。

{phang2}
{marker des_paragraph_font}{...}
{cmd:setFont(}{it:fontname}[{cmd:,} {it:style}]{cmd:)}
设置段落的字体。可以选择指定字体样式。{it:style} 的可能值为 {cmd:Regular}、{cmd:Bold}、{cmd:Italic} 和 {cmd:Bold Italic}。

{phang2}
{marker des_paragraph_fontsize}{...}
{cmd:setFontSize(}{it:sz}{cmd:)}
设置段落的文本大小，以点为单位。

{phang2}
{marker des_paragraph_underline}{...}
{cmd:setUnderline()}
为整个段落的文本添加下划线。

{phang2}
{marker des_paragraph_strike}{...}
{cmd:setStrikethru()}
为整个段落的文本添加删除线。

{phang2}
{marker des_paragraph_halign}{...}
{cmd:setHAlignment(}{it:a}{cmd:)}
设置段落的水平对齐方式。可能的对齐值为 {cmd:left}、{cmd:right}、{cmd:center}、{cmd:justified} 和 {cmd:stretch}。

{phang2}
{marker des_paragraph_valign}{...}
{cmd:setVAlignment(}{it:a}{cmd:)}
设置段落的垂直对齐方式。可能的对齐值为 {cmd:top}、{cmd:center}、{cmd:baseline} 和 {cmd:bottom}。当段落包含具有不同字体的字符时，该设置会有明显效果。

{phang2}
{marker des_paragraph_linesp}{...}
{cmd:setLineSpace(}{it:sz}{cmd:)}
设置段落中行与行之间的距离。


{marker remarks_text}{...}
    {title:PdfText}

{pstd}
{cmd:PdfText} 类可用于向段落添加自定义文本。{cmd:PdfText} 类可以设置背景颜色、文本颜色、字体等属性。除非另有说明，所有大小均以点为单位测量，其中 1 点 = 1/72 英寸。

{phang}
{marker des_text_new}{...}
{cmd:PdfText()}
是 {cmd:PdfText} 对象的构造函数。

{phang2}
{marker des_text_bgcolor}{...}
{cmd:setBgColor(}{it:r}{cmd:,} {it:g}{cmd:,} {it:b}{cmd:)}
设置文本的背景颜色，指定的 RGB 值范围为 [0,255]。请注意，仅可使用整数值。

{phang2}
{marker des_text_color}{...}
{cmd:setColor(}{it:r}{cmd:,} {it:g}{cmd:,} {it:b}{cmd:)}
设置文本的颜色，指定的 RGB 值范围为 [0,255]。请注意，仅可使用整数值。

{phang2}
{marker des_text_font}{...}
{cmd:setFont(}{it:fontname}[{cmd:,} {it:style}]{cmd:)}
设置文本的字体。可以选择指定字体样式。{it:style} 的可能值为 {cmd:Regular}、{cmd:Bold}、{cmd:Italic} 和 {cmd:Bold Italic}。

{phang2}
{marker des_text_fontsize}{...}
{cmd:setFontSize(}{it:sz}{cmd:)}
设置文本的大小，以点为单位。

{phang2}
{marker des_text_underline}{...}
{cmd:setUnderline()}
为文本添加下划线。

{phang2}
{marker des_text_strike}{...}
{cmd:setStrikethru()}
为文本添加删除线。

{phang2}
{marker des_text_superscript}{...}
{cmd:setSuperscript()}
将文本设置为上标。

{phang2}
{marker des_text_subscript}{...}
{cmd:setSubscript()}
将文本设置为下标。

{phang2}
{marker des_text_str}{...}
{cmd:addString(}{it:s}{cmd:)}
将字符串添加到文本中。

{phang2}
{marker des_text_clear}{...}
{cmd:clearContent()}
清除文本内容。如果文本对象已添加到段落，并且您打算使用其属性与新内容一起重复使用，这将非常有用。


{marker remarks_table}{...}
    {title:PdfTable}
    
{pstd}
{cmd:PdfTable} 类可用于向 {helpb mf_pdf##remarks_document:PdfDocument} 添加表格。{cmd:PdfTable} 继承基本属性，如背景颜色、文本颜色和字体。一个 {cmd:PdfTable} 最多可以包含 65,535 行和 50 列。除非另有说明，所有大小均以点为单位测量，其中 1 点 = 1/72 英寸。

{phang}
{marker des_table_new}{...}
{cmd:PdfTable()}
是 {cmd:PdfTable} 的构造函数。
	
{phang2}
{marker des_table_init}{...}
{cmd:init(}{it:rows}{cmd:,} {it:cols}{cmd:)}
必须在编辑表格或其属性之前调用，除非使用 {helpb mf_pdf##des_table_matrix:fillStataMatrix()}、{helpb mf_pdf##des_table_mata:fillMataMatrix()} 或 {helpb mf_pdf##des_table_data:fillData()}。

{phang2}
{marker des_table_totalwidth}{...}
{cmd:setTotalWidth(}{it:sz}{cmd:)}
设置表格的总宽度。默认情况下，表格的宽度等于画布宽度。

{phang2}
{marker des_table_colwidth}{...}
{cmd:setColumnWidths(}{it:pct_v}{cmd:)}
设置表格中每一列的宽度。默认情况下，每列的宽度相等。列宽作为总表格宽度的一部分给出。行向量的长度必须等于表格中的列数。所有分数之和必须为 1。

{phang2}
{marker des_table_widthpct}{...}
{cmd:setWidthPercent(}{it:pct}{cmd:)}
设置表格所占的画布宽度的分数。值可以是范围为 (0,1] 的数字。

{phang2}
{marker des_table_indent}{...}
{cmd:setIndentation(}{it:sz}{cmd:)}
设置表格的缩进。如果表格宽度等于画布宽度，则设置缩进没有明显效果。

{phang2}
{marker des_table_halign}{...}
{cmd:setHAlignment(}{it:a}{cmd:)}
设置表格的水平对齐方式。可能的对齐值为 {cmd:left}、{cmd:right} 和 {cmd:center}。默认情况下为 {cmd:left}。当表格宽度小于画布宽度时，该设置会有明显效果。

{phang2}
{marker des_table_bwidth}{...}
{cmd:setBorderWidth(}{it:sz} [{cmd:,} {it:bordername}]{cmd:)}
设置表格边框的宽度。{it:bordername} 的可选值为 {cmd:top}、{cmd:left}、{cmd:bottom}、{cmd:right}、{cmd:insideH}、{cmd:insideV} 和 {cmd:all}，分别标识顶部边框、左边框、底部边框、右边框、内部水平边和内部垂直边，以及所有边框。如果未指定 {it:bordername}，则使用 {cmd:all}。

{phang2}
{marker des_table_bcolor}{...}
{cmd:setBorderColor(}{it:r}{cmd:,} {it:g}{cmd:,} {it:b}
[{cmd:,} {it:bordername}]{cmd:)}
使用指定的 RGB 值设置表格边框的颜色，范围为 [0,255]。请注意，仅可使用整数值。{it:bordername} 的可选值为 {cmd:top}、{cmd:left}、{cmd:bottom}、{cmd:right} 和 {cmd:all}，分别标识顶部边框、左边框、底部边框、右边框以及所有边框。如果未指定 {it:bordername}，则使用 {cmd:all}。

{phang2}
{marker des_table_topspace}{...}
{cmd:setTopSpacing(}{it:sz}{cmd:)}
设置表格上方的间距。

{phang2}
{marker des_table_btmspace}{...}
{cmd:setBottomSpacing(}{it:sz}{cmd:)}
设置表格下方的间距。

{phang2}
{marker des_table_cell_string}{...}
{cmd:setCellContentString(}{it:i}{cmd:,} {it:j}{cmd:,} {it:s}{cmd:)}
设置第 {it:i} 行和第 {it:j} 列的单元格内容为文本 {it:s}。

{phang2}
{marker des_table_cell_paragraph}{...}
{cmd:setCellContentParagraph(}{it:i}{cmd:,} {it:j}{cmd:,} 
{it:class} {helpb mf_pdf##remarks_paragraph:PdfParagraph} {it:p}{cmd:)}
设置第 {it:i} 行和第 {it:j} 列的单元格内容为 {cmd:PdfParagraph}。

{phang2}
{marker des_table_cell_image}{...}
{cmd:setCellContentImage(}{it:i}{cmd:,} {it:j}{cmd:,} {it:filename}{cmd:)}
设置第 {it:i} 行和第 {it:j} 列的单元格内容为 {it:filename} 指定的图像。图像的宽度与单元格宽度相符，而图像的高度由图像的宽度和纵横比决定。

{phang2}
{marker des_table_cell_table}{...}
{cmd:setCellContentTable(}{it:i}{cmd:,} {it:j}{cmd:,} 
{it:class} {helpb mf_pdf##remarks_table:PdfTable} {it:tbl}{cmd:)}
设置第 {it:i} 行和第 {it:j} 列的单元格内容为 {cmd:PdfTable}。

{phang2}
{marker des_table_cell_halign}{...}
{cmd:setCellHAlignment(}{it:i}{cmd:,} {it:j}{cmd:,} {it:a}{cmd:)}
设置第 {it:i} 行和第 {it:j} 列的单元格的水平对齐方式。{it:a} 的可能值为 {cmd:left}、{cmd:right}、{cmd:center}、{cmd:justified} 和 {cmd:stretch}。默认情况下为 {cmd:left}。

{phang2}
{marker des_table_cell_valign}{...}
{cmd:setCellVAlignment(}{it:i}{cmd:,} {it:j}{cmd:,} {it:a}{cmd:)}
设置第 {it:i} 行和第 {it:j} 列的单元格的垂直对齐方式。{it:a} 的可能值为 {cmd:top}、{cmd:middle} 和 {cmd:bottom}。默认情况下为 {cmd:top}。

{phang2}
{marker des_table_cell_bgcolor}{...}
{cmd:setCellBgColor(}{it:i}{cmd:,} {it:j}{cmd:,}
{it:r}{cmd:,} {it:g}{cmd:,} {it:b}{cmd:)}
设置第 {it:i} 行和第 {it:j} 列的单元格背景颜色为指定的 RGB 值，范围为 [0,255]。请注意，仅可使用整数值。

{phang2}
{marker des_table_cell_bwidths}{...}
{cmd:setCellBorderWidth(}{it:i}{cmd:,} {it:j}{cmd:,} {it:sz}
[{cmd:,} {it:bordername}]{cmd:)}
设置第 {it:i} 行和第 {it:j} 列单元格指定边框的宽度。{it:bordername} 的可能值为 {cmd:top}、{cmd:left}、{cmd:bottom}、{cmd:right} 和 {cmd:all}，分别表示顶边框、左边框、底边框、右边框和所有边框。如果 {it:sz} 等于 0，则该单元格的边框不显示。如果未指定 {it:bordername}，则默认使用 {cmd:all}。

{phang2}
{marker des_table_cell_bcolor}{...}
{cmd:setCellBorderColor(}{it:i}{cmd:,} {it:j}{cmd:,} {it:r}{cmd:,}
{it:g}{cmd:,} {it:b} [{cmd:,} {it:bordername}]{cmd:)}
设置第 {it:i} 行和第 {it:j} 列单元格指定边框的颜色，使用指定的 RGB 值，范围为 [0,255]。{it:bordername} 的可能值为 {cmd:top}、{cmd:left}、{cmd:bottom}、{cmd:right} 和 {cmd:all}，分别表示顶边框、左边框、底边框、右边框和所有边框。如果未指定 {it:bordername}，则默认使用 {cmd:all}。

{phang2}
{marker des_table_cell_margin}{...}
{cmd:setCellMargin(}{it:i}{cmd:,} {it:j}{cmd:,} {it:sz}
[{cmd:,} {it:marginname}]{cmd:)}
设置第 {it:i} 行和第 {it:j} 列单元格的内容边距。{it:marginname} 的可能值为 {cmd:top}、{cmd:left}、{cmd:bottom}、{cmd:right} 和 {cmd:all}，分别表示上边距、左边距、下边距、右边距和所有边距。如果未指定 {it:marginname}，则默认使用 {cmd:all}。

{phang2}
{marker des_table_cell_font}{...}
{cmd:setCellFont(}{it:i}{cmd:,} {it:j}{cmd:,} {it:fontname}[{cmd:,}
{it:style}]{cmd:)}
设置第 {it:i} 行和第 {it:j} 列单元格的字体。可以选择指定字体样式。{it:style} 的可能值为 {cmd:Regular}、{cmd:Bold}、{cmd:Italic} 和 {cmd:Bold Italic}。如果未指定 {it:style}，则默认使用 {cmd:Regular}。

{phang2}
{marker des_table_cell_fontsize}{...}
{cmd:setCellFontSize(}{it:i}{cmd:,} {it:j}{cmd:,} {it:size}{cmd:)}
设置第 {it:i} 行和第 {it:j} 列单元格的文本大小，以点为单位。

{phang2}
{marker des_table_cell_color}{...}
{cmd:setCellColor(}{it:i}{cmd:,} {it:j}{cmd:,} {it:r}{cmd:,} {it:g}{cmd:,}
{it:b}{cmd:)}
设置第 {it:i} 行和第 {it:j} 列单元格的文本颜色，使用指定的 RGB 值，范围为 [0,255]。请注意，仅可使用整数值。

{phang2}
{marker des_table_cell_span}{...}
{cmd:setCellSpan(}{it:i}{cmd:,} {it:j}{cmd:,} {it:rowcount}{cmd:,}
{it:colcount}{cmd:)}
设置第 {it:i} 行和第 {it:j} 列的单元格跨越 {it:rowcount} 个单元格向下和 {it:colcount} 个单元格向右。这相当于将跨越范围内的所有单元格合并到原始单元格 ({it:i},{it:j}) 中。跨越范围内原始单元格以外的任何内容将被丢弃。

{phang2}
{marker des_table_cell_rspan}{...}
{cmd:setCellRowSpan(}{it:i}{cmd:,} {it:j}{cmd:,} {it:count}{cmd:)}
设置第 {it:i} 行和第 {it:j} 列的单元格跨越 {it:count} 个单元格向下。这相当于将垂直跨越范围内的所有单元格合并到原始单元格 ({it:i},{it:j}) 中。跨越范围内原始单元格以外的任何内容将被丢弃。此函数相当于 {cmd:setCellSpan(}{it:i}{cmd:,} {it:j}{cmd:,} {it:count}{cmd:, 1)}。

{phang2}
{marker des_table_cell_cspan}{...}
{cmd:setCellColSpan(}{it:i}{cmd:,} {it:j}{cmd:,} {it:count}{cmd:)}
设置第 {it:i} 行和第 {it:j} 列的单元格跨越 {it:count} 个单元格向右。这相当于将水平跨越范围内的所有单元格合并到原始单元格 ({it:i},{it:j}) 中。跨越范围内原始单元格以外的任何内容将被丢弃。此函数相当于 {cmd:setCellSpan(}{it:i}{cmd:,} {it:j}{cmd:, 1,} {it:count}{cmd:)}。

{phang2}
{marker des_table_row_split}{...}
{cmd:setRowSplit(}{it:i}{cmd:,} {it:split}{cmd:)}
设置第 {it:i} 行在 {it:split} 不为 {cmd:0} 时跨越多个页面。否则，第 {it:i} 行将从下一页顶部开始显示。当第 {it:i} 行可以完整显示在一页上时，此设置没有效果。

{phang2}
{marker des_table_add_row}{...}
{cmd:addRow(}{it:i}{cmd:)}
在第 {it:i} 行之后向表格添加一行。{it:i} 的范围为 0 到 {it:rows}，其中 {it:rows} 是表格的行数。如果 {it:i} 指定为 {cmd:0}，则将行添加到第一行之前。否则，将行添加到第 {it:i} 行之后。

{phang2}
{marker des_table_del_row}{...}
{cmd:delRow(}{it:i}{cmd:)}
从表格中删除第 {it:i} 行。{it:i} 的范围为 1 到 {it:rows}，其中 {it:rows} 是表格的行数。

{phang2}
{marker des_table_add_col}{...}
{cmd:addColumn(}{it:j}{cmd:)}
在第 {it:j} 列的右侧向表格添加一列。{it:j} 的范围为 0 到 {it:cols}，其中 {it:cols} 是表格的列数。如果 {it:j} 指定为 {cmd:0}，则列将添加到第一列的左侧，相当于添加一个新的第一列。否则，列将添加到第 {it:j} 列的右侧。

{phang2}
{marker des_table_del_col}{...}
{cmd:delColumn(}{it:j}{cmd:)}
从表格中删除第 {it:j} 列。{it:j} 的范围为 1 到 {it:cols}，其中 {it:cols} 是表格的列数。

{phang2}
{marker des_table_matrix}{...}
{cmd:fillStataMatrix(}{it:name}{cmd:,} {it:colnames}{cmd:,}
{it:rownames}[{cmd:,} {it:fmt}]{cmd:)}
使用 {help matrix_zh:Stata matrix} 填充表格。如果 {it:colnames} 不是 {cmd:0}，则表格的第一行将填充 {help matrix_rownames_zh:matrix colnames}。如果 {it:rownames} 不是 {cmd:0}，则表格的第一列将填充 {help matrix_rownames_zh:matrix rownames}。矩阵的元素将使用 {help format_zh:{it:fmt}} 格式化（如果指定）。否则，将使用 {cmd:%12.0g}。矩阵的标识由 {it:name} 确定。如果矩阵不存在，将返回错误代码。

{phang2}
{marker des_table_mata}{...}
{cmd:fillMataMatrix(}{it:name}[{cmd:,} {it:i}{cmd:,} {it:j}]{cmd:)}
使用 Mata 矩阵填充表格。矩阵由 {it:name} 标识。如果指定了 {it:i}，矩阵从第 {it:i} 行开始填充表格。如果指定了 {it:j}，矩阵从第 {it:j} 列开始填充表格。矩阵的元素将使用 {help format_zh:{it:fmt}} 格式化（如果指定）。否则，将使用 {cmd:%12.0g}。如果矩阵不存在，将返回错误代码。

{phang2}
{marker des_table_data}{...}
{cmd:fillData(}{it:i}{cmd:,} {it:j}{cmd:,} {it:vnames}{cmd:,}
{it:obsno}[{cmd:,} {it:selectvar}]{cmd:)}
使用内存中的当前 Stata 数据集填充表格。如果变量附加了值标签，则将根据值标签显示数据。否则，将根据显示格式显示数据。{it:i}、{it:j} 和 {it:selectvar} 的指定与 {help mf_st_data_zh:st_data()} 相同。
不允许因子变量和时间序列变量。如果 {it:vnames} 不是 {cmd:0}，则表格的第一行将填充变量名称。如果 {it:obsno} 不是 {cmd:0}，则表格的第一列将填充观察编号。


{marker remarks_error}{...}
    {title:错误代码}

{p 4 4 2}
仅当输入参数之一不符合规范时，函数才会中止；例如，在需要实数标量时使用字符串标量。出现错误时，函数返回负错误代码：

	 代码    含义
	{hline 67}
	-17100    发生错误 
	-17101    PDF 文件未创建
	-17102    值缺失
	-17103    属性设置失败
	-17104    文件未保存
	-17105    图像未添加
	-17106    表未添加
	-17107    段落未添加 
	-17108    添加新页面失败
	-17109    添加换行符失败
	-17110    PDF 文件未关闭
	
	-17120    表未创建
	-17121    表设置表维度失败
	-17122    表未初始化 
	-17123    单元格索引超出范围
	-17124    表设置单元格值失败
	-17125    表填充 Stata 矩阵失败
	-17126    表填充 Mata 矩阵失败
	-17127    表填充数据失败
	
	-17130	  段落未创建
	-17131	  段落添加文本失败
	-17132    段落清除内容失败
	{hline 67}


{marker examples}{...}
    {title:示例}
	
{pstd}
示例按以下标题呈现：

	{help mf_pdf##example_text:添加段落}
	{help mf_pdf##example_text2:添加自定义文本段落}
	{help mf_pdf##example_table_simple:添加表格（简单示例）}
	{help mf_pdf##example_table_header_footer:添加表格（带有表头和表尾的表格）}
	{help mf_pdf##example_table_graph:添加表格（带有图形的表格）}


{marker example_text}{...}
    {title:添加段落}

	{cmd}mata:
        pdf = PdfDocument()

        p = PdfParagraph() 
        p.addString("这是我们第一个段落的示例。 ")
        p.addString("我们再添加一句话。 ")
        p.addString("现在我们将结束我们的第一个段落。")
        pdf.addParagraph(p)

        p = PdfParagraph() 
        p.setFirstIndent(36)
        p.setFontSize(14)
        p.setTopSpacing(10)
        p.addString("这是我们的第二个段落。 ")
        p.addString("这个段落的第一行有 ")
        p.addString("36 磅或 1/2 英寸的缩进。这个段落的字体大小为 ")
        p.addString("14。")
        pdf.addParagraph(p)

        p = PdfParagraph() 
        p.setTopSpacing(10)
        p.setFontSize(14)
        p.setHAlignment("justified")
        p.addString("这是我们的第三个段落。 ")
        p.addString("注意我们已经切换回块模式，这 ")
        p.addString("意味着没有任何缩进。 ")
        p.addString("你还应该注意，这个段落将 ")
        p.addString("对齐设置为两端对齐。")
        pdf.addParagraph(p)
 
 	pdf.save("paragraph1.pdf")
 	pdf.close()
 	
 	// 清理
 	mata drop p
	mata drop pdf
	end{txt}


{marker example_text2}{...}
    {title:添加自定义文本段落}

	{cmd}mata:
	pdf = PdfDocument()
	
	t1 = PdfText()
	t1.setSuperscript()
	t1.addString("这是上标文本。")
	
	t2 = PdfText()
	t2.setSubscript()
	t2.addString("这是下标文本。")

	p = PdfParagraph() 
	p.addString("你好，这是我们段落的正常文本。 ")
	p.addText(t1)
	p.addText(t2)
	p.addString("这里有更多使用段落属性的文本。 ")
	
	t = PdfText()
	t.setFont("Courier New")
	t.setFontSize(18) 
	t.setColor(255, 0, 0)
	t.addString("这是使用大号 ")
	t.addString("Courier New 字体的文本示例。它的文本颜色为红色。 ")
	p.addText(t)
	
	
	p.addString("我们可以在这里使用段落的 ")
	p.addString("正常属性插入更多文本。 ")

	t = PdfText()
	t.setFontSize(30) 
	t.setColor(0, 0, 255)
	t.setStrikethru()
	t.addString("这是再一个将修改过的文本 ")
	t.addString("添加到段落的示例。 ")
	p.addText(t)
	
	p.addString("现在我们将以正常文本结束这一段。")
	pdf.addParagraph(p)
 
	pdf.save("text1.pdf")
	pdf.close()
	
	// 清理
	mata drop t
	mata drop t1
	mata drop t2
	mata drop p
	mata drop pdf
	end{txt}


{marker example_table_simple}{...}
    {title:添加表格}（简单示例）

        {cmd}mata:
	pdf = PdfDocument()

	t = PdfTable()
	t.init(5, 4)

	A = (0.2,0.5,0.15,0.15)
	t.setColumnWidths(A)

	for(i=1; i<=5; i++) {
		for(j=1; j<=4; j++) {
		结果 = sprintf("这是单元格(%g, %g)", i, j) ;
			t.setCellContentString(i, j, 结果)
		}
	}

	pdf.addTable(t) 

	pdf.save("table1.pdf")
	pdf.close()

	// 清理
	mata drop t
	mata drop pdf
        end{txt}


{marker example_table_header_footer}{...}
    {title:添加表格}（带有表头和表尾的表格）

        {cmd}mata:
	pdf = PdfDocument()

	t = PdfTable()
	t.init(5, 4)

	A = (0.2,0.5,0.15,0.15)
	t.setColumnWidths(A)

	t.setCellContentString(1, 1, "这是表头")
	t.setCellHAlignment(1, 1, "center")
	t.setCellColSpan(1, 1, 4)

	for(i=2; i<=4; i++) {
		for(j=1; j<=4; j++) {
		结果 = sprintf("这是单元格(%g, %g)", i, j) ;
			t.setCellContentString(i, j, 结果)
		}
	}

	t.setCellContentString(5, 1, "这是表尾")
	t.setCellHAlignment(5, 1, "center")
	t.setCellColSpan(5, 1, 4)

	pdf.addTable(t) 

	pdf.save("table2.pdf")
	pdf.close()

	// 清理
	mata drop t
	mata drop pdf
        end{txt}


{marker example_table_graph}{...}
    {title:添加表格}（带有图形的表格）
 
	{cmd}sysuse citytemp, clear
	tabulate division, matcell(freq) matrow(vlabel)
	local tabvar division

	histogram `tabvar', discrete frequency addlabel scheme(sj)
	graph export census.png, replace width(2000)

	mata:
	freq = st_matrix("freq")
	vlabel = st_matrix("vlabel")
	svlabel = st_vlmap(st_varvaluelabel(st_local("tabvar")), vlabel)
	colheader = ("人口普查区","频率","百分比","累计")
	
	nrows = rows(freq)+2
	ncols = cols(colheader)
	percent = 0
	cum = 0 
	
	pdf = PdfDocument()
    
    	t1 = PdfTable()
    	t1.init(nrows, ncols)
	
	for(i=1;i<=ncols;i++) {
		t1.setCellContentString(1,i,colheader[1,i])
	}
	
	for(i=1;i<=rows(freq);i++) {
		t1.setCellContentString(i+1,1,svlabel[i,1])
		
		output = sprintf("%9.0g", freq[i,1])
		t1.setCellHAlignment(i+1,2,"right")
		t1.setCellContentString(i+1,2,output)
		
		percent = freq[i,1]/sum(freq)*100
		output = sprintf("%9.2f", percent)
		t1.setCellHAlignment(i+1,3,"right")
		t1.setCellContentString(i+1,3,output)

		cum = cum + percent
		output = sprintf("%9.2f", cum)
		t1.setCellHAlignment(i+1,4,"right")
		t1.setCellContentString(i+1,4,output)		
	}
	
	t1.setCellContentString(nrows,1, "总计")
	output = sprintf("%9.0g", sum(freq))
	t1.setCellHAlignment(nrows,2,"right")
	t1.setCellContentString(nrows,2,output)
	t1.setCellHAlignment(nrows,3,"right")
	t1.setCellContentString(nrows,3,"100.00")
	
	t2 = PdfTable()
	t2.init(1,2)
	
	t2.setCellContentTable(1,1,t1)
	t2.setCellContentImage(1,2,"census.png")
	t2.setCellVAlignment(1,2,"bottom")
	t2.setBorderWidth(0)
	
	pdf.addTable(t2)
	
	pdf.save("table3.pdf")
	pdf.close()
	
	// 清理
	mata drop t1
	mata drop t2
	mata drop pdf
	end{txt}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <mf_pdf.sthlp>}