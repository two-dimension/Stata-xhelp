{smcl}
{* *! version 1.0.0  10may2019}{...}
{vieweralsosee "[RPT] putpdf table" "mansection RPT putpdftable"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[RPT] putpdf intro" "help putpdf intro"}{...}
{vieweralsosee "[RPT] putpdf begin" "help putpdf begin"}{...}
{vieweralsosee "[RPT] putpdf pagebreak" "help putpdf pagebreak"}{...}
{vieweralsosee "[RPT] putpdf paragraph" "help putpdf paragraph"}{...}
{vieweralsosee "[RPT] Appendix for putpdf" "help putpdf appendix"}{...}
{viewerjumpto "Syntax" "putpdf table##syntax"}{...}
{viewerjumpto "Description" "putpdf table##description"}{...}
{viewerjumpto "Links to PDF documentation" "putpdf table##linkspdf"}{...}
{viewerjumpto "Options" "putpdf table##options"}{...}
{viewerjumpto "Examples" "putpdf table##examples"}{...}
{viewerjumpto "Stored results" "putpdf table##results"}
{help putpdf_table:English Version}
{hline}{...}
{p2colset 1 23 25 2}{...}
{p2col:{bf:[RPT] putpdf table} {hline 2}}将表格添加到 PDF 文件中{p_end}
{p2col:}({mansection RPT putpdftable:查看完整的 PDF 手册条目}){p_end}
{p2colreset}{...}


{marker syntax}{...}
{title:语法}

{phang}
向文档中添加表格

{p 8 22 2}
{cmd:putpdf table}
{help putpdf_table##tablename:{it:tablename}}
{cmd:=} {cmd:(}{help putpdf_table##nrows/ncols:{it:nrows}}{cmd:,}
   {help putpdf_table##nrows/ncols:{it:ncols}}{cmd:)}
[{cmd:,} {help putpdf_table##tabopts:{it:table_options}}]

{p 8 22 2}
{cmd:putpdf table}
{help putpdf_table##tablename:{it:tablename}}
{cmd:=} {help putpdf_table##data:{bf:data(}{it:varlist}{bf:)}}
{ifin} [{cmd:,} {cmd:varnames} {cmd:obsno}
{help putpdf_table##tabopts:{it:table_options}}]

{p 8 22 2}
{cmd:putpdf table}
{help putpdf_table##tablename:{it:tablename}}
{cmd:=} {help putpdf_table##matname:{bf:{ul:mat}rix(}{it:matname}{bf:)}}
[{cmd:,} {opth nfor:mat(%fmt)}
{cmd:rownames} {cmd:colnames}
{help putpdf_table##tabopts:{it:table_options}}]

{p 8 22 2}
{cmd:putpdf table}
{help putpdf_table##tablename:{it:tablename}}
{cmd:=} {help putpdf_table##mata:{bf:mata(}{it:matname}{bf:)}}
[{cmd:,} {opth nfor:mat(%fmt)}
{help putpdf_table##tabopts:{it:table_options}}]

{p 8 22 2}
{cmd:putpdf table}
{help putpdf_table##tablename:{it:tablename}}
{cmd:=} {help putpdf_table##etable:{bf:etable}}[{cmd:(}{it:#}_1
    {it:#}_2 ... {it:#}_n{cmd:)}]
[{cmd:,} {help putpdf_table##tabopts:{it:table_options}}]

{p 8 22 2}
{cmd:putpdf table}
{help putpdf_table##tablename:{it:tablename}}
{cmd:=} {help putpdf_table##returnset:{it:returnset}}
[{cmd:,} {help putpdf_table##tabopts:{it:table_options}}]


{phang}
向单元格添加内容

{p 8 22 2}
{cmd:putpdf table}
{help putpdf_table##tablename:{it:tablename}}{cmd:(}{it:i}{cmd:,} {it:j}{cmd:)}
{cmd:=} {cmd:(}{help exp_zh:{it:exp}}{cmd:)}
[{cmd:,} {help putpdf_table##cellopts:{it:cell_options}}]

{p 8 22 2}
{cmd:putpdf table}
{help putpdf_table##tablename:{it:tablename}}{cmd:(}{it:i}{cmd:,} {it:j}{cmd:)}
{cmd:=} {cmd:image:{bf:image(}{it:filename}{bf:)}}
[{cmd:,} {help putpdf_table##cellopts:{it:cell_options}}]

{p 8 22 2}
{cmd:putpdf table}
{help putpdf_table##tablename:{it:tablename}}{cmd:(}{it:i}{cmd:,} {it:j}{cmd:)}
{cmd:=} {cmd:table(}{help putpdf_table##mem_tablename:{it:mem_tablename}}{cmd:)}
[{cmd:,} {help putpdf_table##cellopts:{it:cell_options}}]


{phang}
更改表格布局

{p 8 22 2}
{cmd:putpdf table}
{help putpdf_table##tablename:{it:tablename}}{cmd:(}{it:i}{cmd:,} {cmd:.),}
{help putpdf_table##rowcolopts:{it:row_col_options}}

{p 8 22 2}
{cmd:putpdf table}
{help putpdf_table##tablename:{it:tablename}}{cmd:(.,} {it:j}{cmd:),}
{help putpdf_table##rowcolopts:{it:row_col_options}}


{phang}
自定义单元格或表格的格式

{p 8 22 2}
{cmd:putpdf table}
{help putpdf_table##tablename:{it:tablename}}{cmd:(}{it:i}{cmd:,} {it:j}{cmd:),}
{help putpdf_table##cellopts:{it:cell_options}}

{p 8 22 2}
{cmd:putpdf table}
{help putpdf_table##tablename:{it:tablename}}{cmd:(} {help numlist_zh:{it:numlist}}_{it:i} {cmd:,} {cmd:.),}
{help putpdf_table##cellfmtopts:{it:cell_fmt_options}}

{p 8 22 2}
{cmd:putpdf table}
{help putpdf_table##tablename:{it:tablename}}{cmd:(.,} {help numlist_zh:{it:numlist}}_{it:j}{cmd:),}
{help putpdf_table##cellfmtopts:{it:cell_fmt_options}}

{p 8 22 2}
{cmd:putpdf table}
{help putpdf_table##tablename:{it:tablename}}{cmd:(} {help numlist_zh:{it:numlist}}_{it:i} {cmd:,} {help numlist_zh:{it:numlist}}_{it:j}{cmd:),}
{help putpdf_table##cellfmtopts:{it:cell_fmt_options}}

{p 8 22 2}
{cmd:putpdf table}
{help putpdf_table##tablename:{it:tablename}}{cmd:(.,} {cmd:.),}
{help putpdf_table##cellfmtopts:{it:cell_fmt_options}}


{phang}
描述表格

{p 8 22 2}
{cmd:putpdf describe}
{help putpdf_table##tablename:{it:tablename}}


{marker tablename}{...}
{phang}
{it:tablename} 指定新表格的名称。名称必须符合 Stata 的命名规则；参见 {findalias frnames}。

{marker tabopts}{...}
{synoptset 28}{...}
{synopthdr:表格选项}
{synoptline}
{synopt :{opt mem:table}}将表格保存在内存中，而不是添加到文档{p_end}
{synopt :{cmd:width(}{it:#}[{help putdocx_paragraph##unit:{it:unit}}{c |}{cmd:%}] {c |} {help putpdf_table##matname:{it:matname}}{cmd:)}}设置表格宽度{p_end}
{synopt :{opth halign:(putpdf_table##table_hvalue:hvalue)}}设置表格的水平对齐方式{p_end}
{synopt :{cmd:indent(}{it:#}[{help putdocx_paragraph##unit:{it:unit}}]{cmd:)}}设置表格缩进{p_end}
{synopt :{cmd:spacing(}{help putpdf_table##table_position:{it:position}}{cmd:,}  {it:#}[{help putdocx_paragraph##unit:{it:unit}}]{cmd:)}}设置表格前后间距{p_end}
{synopt :{opth bord:er(putpdf_table##bspec:bspec)}}设置边框的样式和颜色{p_end}
{synopt :{opth title:(strings:string)}}为表格添加标题{p_end}
{synopt :{opth note:(strings:string)}}为表格添加注释{p_end}
{synoptline}

{marker cellopts}{...}
{synoptset 28}{...}
{synopthdr:单元格选项}
{synoptline}
{synopt :{cmd:append}}将对象附加到单元格的当前内容{p_end}
{synopt :{opt rowspan(#)}}将单元格垂直合并{p_end}
{synopt :{opt colspan(#)}}将单元格水平合并{p_end}
{synopt :{cmd:span(}{it:#}_1{cmd:,} {it:#}_2{cmd:)}在水平和垂直上合并单元格{p_end}
{synopt :{cmd:linebreak}[{cmd:(}{it:#}{cmd:)}]}在单元格内添加换行符{p_end}
{synopt :{help putpdf_table##cellfmtopts:{it:cell_fmt_options}}}控制单元格内容外观的选项{p_end}
{synoptline}

{marker rowcolopts}{...}
{synoptset 28}{...}
{synopthdr:行列选项}
{synoptline}
{synopt :{opt nosp:lit}}防止行在页面之间断裂{p_end}
{synopt :{cmd:addrows(}{it:#} [{cmd:, before}{c |}{cmd:after}]{cmd:)}}在指定位置添加{it:#}行{p_end}
{synopt :{cmd:addcols(}{it:#} [{cmd:, before}{c |}{cmd:after}]{cmd:)}}在指定位置添加{it:#}列{p_end}
{synopt :{opt drop}}删除指定的行或列{p_end}
{synopt :{help putpdf_table##cellfmtopts:{it:cell_fmt_options}}}控制单元格内容外观的选项{p_end}
{synoptline}

{marker cellfmtopts}{...}
{synoptset 28 tabbed}{...}
{synopthdr:单元格格式选项}
{synoptline}
{synopt :{cmd:margin(}{help putpdf_table##cell_marg_type:{it:type}}{cmd:,} {it:#}[{help putdocx_paragraph##unit:{it:unit}}]{cmd:)}设置边距{p_end}
{synopt :{opth halign:(putpdf_table##cell_hvalue:hvalue)}}设置水平对齐{p_end}
{synopt :{opth valign:(putpdf_table##cell_vvalue:vvalue)}}设置垂直对齐{p_end}
{synopt :{opth bord:er(putpdf_table##bspec:bspec)}}设置边框的样式和颜色{p_end}
{synopt :{opth bgcolor:(putpdf_table##color:color)}}设置背景颜色{p_end}
{synopt :{opth nfor:mat(%fmt)}}为单元格文本指定数字格式{p_end}
{synopt :{cmd:font(}{help putpdf_table##fspec:{it:fspec}}{cmd:)}}设置字体、字体大小和字体颜色{p_end}
{synopt :{opt bold}}将文本格式化为粗体{p_end}
{synopt :{opt italic}}将文本格式化为斜体{p_end}
{p2coldent :* {cmd:script(sub{c |}super)}}设置文本的下标或上标格式{p_end}
{synopt :{opt strike:out}}删除文本{p_end}
{synopt :{opt underl:ine}}为文本添加下划线{p_end}
{synopt :{opt allc:aps}}将文本格式化为全大写{p_end}
{synoptline}
{p2colreset}{...}
{p 4 6 2}
* 仅在格式化单个单元格时可以指定。

{marker fspec}{...}
{phang}
{it:fspec} 是

{pmore}
{it:fontname} [{cmd:,} {it:size} [{cmd:,} {it:color}]]

{marker font}{...}
{pmore2}
{it:fontname} 可以是用户计算机上安装的任何支持的字体。
支持基本 14 种字体、Type 1 字体以及扩展名为
{cmd:.ttf} 和 {cmd:.ttc} 的 TrueType 字体。不能嵌入的 TrueType 字体不能使用。如果 {it:fontname} 包含空格，则必须用双引号括起来。默认字体为 {cmd:Helvetica}。

{marker size}{...}
{pmore2}
{it:size} 是一个数值，表示以点为单位的字体大小。
默认值为 {cmd:11}。

{pmore2}
{it:color} 设置文本颜色。

{marker bspec}{...}
{phang}
{it:bspec} 是

{pmore}
{it:bordername} [{cmd:,} {it:bpattern} [{cmd:,} {it:bcolor}]]

{pmore2}
{it:bordername} 指定边框的位置。

{pmore2}
{it:bpattern} 是一个关键字，用于指定边框的外观。
可能的样式有 {cmd:nil} 和 {cmd:single}。 默认值为 {cmd:single}。
要删除现有边框，作为 {it:bpattern} 指定 {cmd:nil}。

{pmore2}
{it:bcolor} 指定边框颜色。

{marker unit}{...}
{phang}
INCLUDE help put_units

{marker color}{...}
{phang}
{it:color} 和 {it:bcolor} 可以是以下颜色之一：
在 {help putpdf_appendix##Colors:{it:Colors}} 中列出的颜色
{helpb putpdf appendix:[RPT] putpdf 附录}；有效的 RGB 值，格式为 {it:### ### ###}，例如，
{cmd:171 248 103}；或有效的 RRGGBB 十六进制值，格式为 {it:######}，
例如，{cmd:ABF867}。

{bf:表格的输出类型}

{phang}
使用 {cmd:putpdf} {cmd:table} {it:tablename} 创建新表格时，支持以下输出类型：

{marker nrows/ncols}{...}
{phang2}
{cmd:(}{it:nrows}{cmd:,} {it:ncols}{cmd:)} 创建一个空表格，包含 {it:nrows} 行和 {it:ncols} 列。表格允许最多 50 列。

{marker data}{...}
{phang2}
{opt data(varlist)} 将当前内存中的 Stata 数据集作为表格添加到活动文档中。 {varlist} 包含当前内存中数据集的变量名称列表。

{marker matname}{...}
{phang2}
{opt matrix(matname)} 将名为 {it:matname} 的 {help matrix_zh} 添加为活动文档中的表格。 

{marker mata}{...}
{phang2}
{opt mata(matname)} 将名为 {it:matname} 的 Mata
{help matrix_zh} 添加为活动文档中的表格。  

{marker etable}{...}
{phang2}
{cmd:etable}[{cmd:(}{it:#}_1 {it:#}_2 ... {it:#}_n{cmd:)}] 将自动生成的表格添加到活动文档中。
该表格可以来源于最后估计命令的系数表、最后一个 {help margins_zh} 命令后的边际表，
或由 {helpb estimates table} 显示的一个或多个模型的结果表。

{pmore2}
如果估计命令输出 n > 1 个系数表，则默认将所有表格添加并分配相应的表格名称
{it:tablename}{cmd:1}、{it:tablename}{cmd:2}、…、{it:tablename}_n。要指定要添加哪些表格，请向 {cmd:etable} 提供可选的数字列表。例如，
要仅添加估计输出的第一张和第三张表格，请指定 {cmd:etable(1 3)}。
一些估计命令不支持 {cmd:etable} 输出类型。有关不受 {cmd:putpdf} 支持的估计命令的列表，请参见
{help putdocx_appendix##Unsupported_estcmds:{it:不支持的估计命令}} 的 {help putdocx_appendix_zh:[RPT] putdocx 附录}。

{marker returnset}{...}
{phang2}
{it:returnset} 将一组 Stata
{help return_zh} 值导出到活动文档中的表格。它主要供程序员和希望在活动文档中进一步处理导出结果的人使用。
{it:returnset} 可以是以下之一：

                 {it:returnset}    描述
                {hline 57}
                 {opt escal:ars}     所有返回的标量
                 {opt rscal:ars}     所有返回的标量
                 {opt emac:ros}      所有返回的宏
                 {opt rmac:ros}      所有返回的宏
                 {opt emat:rices}    所有返回的矩阵
                 {opt rmat:rices}    所有返回的矩阵
                 {opt e*}           所有返回的标量、宏和矩阵
                 {opt r*}           所有返回的标量、宏和矩阵
                {hline 57}


{phang}
当使用 {cmd:putpdf table} {it:tablename}{cmd:(}{it:i}{cmd:,} {it:j}{cmd:)} 向现有表格添加内容时，支持以下输出类型：

{marker expr}{...}
{phang2}
{cmd:(}{help exp_zh:{it:exp}}{cmd:)} 将有效的 Stata 表达式写入单元格；参见 {findalias frexp}。

{marker image}{...}
{phang2}
{cmd:image} {help filename_zh:{it:filename}} 将便携式网络图形
({cmd:.png}) 或 JPEG ({cmd:.jpg}) 文件添加到表格单元格中。 {it:filename} 是
图像文件的路径。它可以是完整路径或当前工作目录的相对路径。

{marker mem_tablename}{...}
{marker table}{...}
{phang2}
{opt table(mem_tablename)} 将先前创建的表格添加到单元格中，由 {it:mem_tablename} 确定。

{phang}
可以使用以下组合的
{it:tablename}{cmd:(}{it:numlist}_{it:i}{cmd:,} {it:numlist}_{it:j}{cmd:)}
（参见 {findalias frnumlist} 获取有效规格）来格式化已有表格中的单元格或单元格范围：

{phang2}
{it:tablename}{cmd:(}{it:i}{cmd:,} {it:j}{cmd:)} 指定第 {it:i} 行和第 {it:j} 列的单元格。

{phang2}
{it:tablename}{cmd:(}{it:i}{cmd:,} {cmd:.)}
和
{it:tablename}{cmd:(}{it:numlist}_{it:i}{cmd:,} {cmd:.)}
指定第 {it:i} 行或由 {it:numlist}_{it:i} 指定的行上的所有单元格。

{phang2}
{it:tablename}{cmd:(.,} {it:j}{cmd:)}
和
{it:tablename}{cmd:(.,} {it:numlist}_{it:j}{cmd:)}
指定第 {it:j} 列或由 {it:numlist}_{it:j} 指定的列中的所有单元格。

{phang2}
{it:tablename}{cmd:(., .)} 指定整个表格。


{marker description}{...}
{title:描述}

{pstd}
{cmd:putpdf} {cmd:table} 在活动 PDF 文件中创建新表格。可以从多种输出类型创建表格，包括内存中的数据、矩阵和估计结果。


{marker linkspdf}{...}
{title:PDF 文档链接}

        {mansection RPT putpdftableQuickstart:快速入门}

        {mansection RPT putpdftableRemarksandexamples:备注和示例}

{pstd}
上述章节不包括在此帮助文件中。


{marker options}{...}
{title:选项}

{pstd}
选项按以下标题列出：

        {help putpdf_table##opts_table:表格选项}
        {help putpdf_table##opts_cell:单元格选项}
        {help putpdf_table##opts_row_col:行列选项}
        {help putpdf_table##opts_cell_fmt:单元格格式选项}


{marker opts_table}{...}
{title:表格选项}

{phang}
{opt memtable} 指定表格在创建时保存在内存中，而不是立即添加到活动文档中。默认情况下，表格在创建后立即添加到文档中。如果计划将表格添加到另一个表格的单元格中或在稍后使用，则此选项非常有用。

{phang}
{cmd:width(}{it:#}[{help putdocx_paragraph##unit:{it:unit}}{c |}{cmd:%}]{cmd:)} 和
{opt width(matname)} 设置表格宽度。可以组合使用两种宽度规格。

{pmore}
{cmd:width(}{it:#}[{help putdocx_paragraph##unit:{it:unit}}{c |}{cmd:%}]{cmd:)} 基于指定值设置宽度。 {it:#} 可以是绝对宽度或默认表格宽度的百分比，默认表格宽度由文档的页面宽度确定。例如，{cmd:width(50%)} 将表格宽度设置为默认表格宽度的 50%。默认值为 {cmd:width(100%)}。

{pmore}
{opt width(matname)} 基于 Stata 矩阵 {it:matname} 中指定的维度设置表格宽度，该矩阵的内容为 ({it:#}_1,
{it:#}_2, ..., {it:#}_n) 来表示每列的默认表格宽度的百分比。n 是表格的列数，{it:#}_1 到 {it:#}_n 的总和必须等于 100。

{marker table_hvalue}{...}
{phang}
{opt halign(hvalue)} 设置表格在页面中的水平对齐方式。 {it:hvalue} 可以是 {cmd:left}、{cmd:right} 或 {cmd:center}。默认值为 {cmd:halign(left)}。

{phang}
{cmd:indent(}{it:#}[{help putdocx_paragraph##unit:{it:unit}}]{cmd:)} 指定表格从当前文档的左边距的缩进。

{marker table_position}{...}
{phang}
{cmd:spacing(}{it:position}{cmd:,} {it:#}[{help putdocx_paragraph##unit:{it:unit}}]{cmd:)} 设置表格前后间距。 {it:position} 可为 {cmd:before} 或 {cmd:after}。 {cmd:before} 指定当前表格顶部的空间，{cmd:after} 指定当前表格底部的空间。此选项可以在单个命令中多次指定，以适应不同的空间设置。

{phang}
{cmd:border(}{it:bordername}
[{cmd:,} {help putpdf_table##bspec:{it:bpattern}}
[{cmd:,} {help putpdf_table##color:{it:bcolor}}]]{cmd:)} 在 {it:bordername} 指定的位置添加一个边框，该位置可以是 {cmd:start}、{cmd:end}、{cmd:top}、{cmd:bottom}、
{cmd:insideH}（内部水平边框）、{cmd:insideV}（内部垂直边框）或 {cmd:all}。可选择地，通过指定 {it:bpattern} 和 {it:bcolor} 更改边框的样式和颜色。

{pmore}
此选项可以在单个命令中多次指定，以适应不同的边框设置。如果指定了多个 {cmd:border()} 选项，则按从左到右的顺序应用它们。

{phang}
{cmd:varnames} 指定在使用内存中的数据集创建表格时将变量名称作为表格的第一行包含在内。默认情况下，仅将数据值添加到表格中。

{phang}
{cmd:obsno} 指定在使用内存中的数据集创建表格时将观察号码作为表格的第一列包含在内。默认情况下，仅将数据值添加到表格中。

{phang}
{opth nformat(%fmt)} 指定在从 Stata 或 Mata 矩阵创建表格时应用于源值的数字格式。默认值为 {cmd:nformat(%12.0g)}。

{phang}
{cmd:rownames} 指定将 Stata 矩阵的行名称作为表格的第一列包含在内。默认情况下，仅将矩阵的值添加到表格中。

{phang}
{cmd:colnames} 指定将 Stata 矩阵的列名称作为表格的第一行包含在内。默认情况下，仅将矩阵的值添加到表格中。

{phang}
{opth title:(strings:string)} 在当前表格上方插入一行无边框的行。添加的行跨越表格的所有列，包含 {it:string} 作为文本。添加的行将所有其他表格内容向下移动一行。您在后续命令中引用表格单元格时，应考虑这一点。

{phang}
{opth note:(strings:string)} 在表格的底部插入一行无边框的行。添加的行跨越表格的所有列。此选项可以在单个命令中多次指定，以便在同一个单元格内添加新行的注释。注释文本按从左到右指定的顺序插入。


{marker opts_cell}{...}
{title:单元格选项}

{phang}
{cmd:append} 指定将单元格的新内容附加到单元格的当前内容。如果未指定 {cmd:append}，则用新内容替换单元格的当前内容。与 {helpb putdocx} 命令不同，此选项用于在单元格中追加新字符串，当原始单元格内容也是字符串时。

{phang}
{opt rowspan(#)} 设置指定的单元格向下垂直跨越 {it:#} 个单元格。如果跨度超过表格的总行数，则跨度停止在最后一行。

{phang}
{opt colspan(#)} 设置指定的单元格向右水平跨越 {it:#} 个单元格。如果跨度超过表格的总列数，则跨度停止在最后一列。

{phang}
{cmd:span(}{it:#}_1{cmd:,} {it:#}_2{cmd:)} 设置指定的单元格向下跨越 {it:#}_1 个单元格并向右跨越 {it:#}_2 个单元格。

{phang}
{cmd:linebreak}[{cmd:(}{it:#}{cmd:)}] 指定在单元格内的文本后添加一行或 {it:#} 行换行符。


{marker opts_row_col}{...}
{title:行列选项}

{phang}
{cmd:nosplit} 指定行 {it:i} 不在页面之间拆分。当表格行显示时，页面换行可能会落在该行中的单元格内容内，导致该单元格的内容显示在两个页面上。 {cmd:nosplit} 可以防止这种情况。如果整行无法适应当前页面，则该行将移到下一页面的开始处。

{phang}
{cmd:addrows(}{it:#} [{cmd:, before}{c |}{cmd:after}]{cmd:)} 在指定的行 {it:i} 之前或之后添加 {it:#} 行。如果指定了 {cmd:before}，则在指定的行之前添加行。默认情况下，在指定的行之后添加行。

{phang}
{cmd:addcols(}{it:#} [{cmd:, before}{c |}{cmd:after}]{cmd:)} 在指定的列 {it:j} 的左侧或右侧向当前表中添加 {it:#} 列。如果指定了 {cmd:before}，则在指定列的左侧添加列。默认情况下，列在指定列之后或右侧添加。

{phang}
{cmd:drop} 从表格中删除行 {it:i} 或列 {it:j}。


{marker opts_cell_fmt}{...}
{title:单元格格式选项}

{marker cell_marg_type}{...}
{phang}
{cmd:margin(}{it:type}{cmd:,} {it:#}[{help putdocx_paragraph##unit:{it:unit}}]{cmd:)} 设置指定单元格或所选的行、列或范围中所有单元格的边距。 {it:type} 可为 {cmd:top}、{cmd:left}、{cmd:bottom} 或 {cmd:right}，分别表示单元格的上边距、左边距、下边距或右边距。此选项可以在单个命令中多次指定，以适应不同的边距设置。

{marker cell_hvalue}{...}
{phang}
{opt halign(hvalue)} 设置指定单元格或所选行、列或范围中所有单元格的水平对齐方式。 {it:hvalue} 可以是 {cmd:left}、{cmd:right} 或 {cmd:center}。默认值为 {cmd:halign(left)}。

{marker cell_vvalue}{...}
{phang}
{opt valign(vvalue)} 设置指定单元格或所选行、列或范围中所有单元格的垂直对齐方式。 {it:vvalue} 可以是 {cmd:top}、{cmd:bottom} 或 {cmd:center}。默认值为 {cmd:valign(top)}。

{phang}
{cmd:border(}{it:bordername} [{cmd:,} {help putpdf_table##bspec:{it:bpattern}}
[{cmd:,} {help putpdf_table##color:{it:bcolor}}]]{cmd:)} 在指定的单元格或所选行、列或范围的指定位置添加单个边框。 {it:bordername} 可以是 {cmd:start}、{cmd:end}、{cmd:top}、{cmd:bottom} 或 {cmd:all}。可选择地，通过指定 {it:bpattern} 和 {it:bcolor} 更改边框的样式和颜色。

{pmore}
此选项可以在单个命令中多次指定，以适应不同的边框设置。如果指定了多个 {cmd:border()} 选项，则按从左到右的顺序应用它们。

{phang}
{cmd:bgcolor(}{help putpdf_table##color:{it:color}}{cmd:)} 为指定单元格或所选行、列或范围中的所有单元格设置背景颜色。

{phang}
{opth nformat(%fmt)} 将 Stata 数字格式 {cmd:%}{it:fmt} 应用到指定单元格或所选行、列或范围中的所有单元格中的文本。此设置仅在单元格内容为数字值时适用。

{phang}
{cmd:font(}{help putpdf_table##font:{it:fontname}}
[{cmd:,} {help putpdf_table##size:{it:size}}
[{cmd:,} {help putpdf_table##color:{it:color}}]]{cmd:)} 为指定单元格或所选行、列或范围中的所有单元格中的文本设置字体、字体大小和字体颜色。可以单独指定字体大小和字体颜色，而不指定 {it:fontname}。使用 {cmd:font("",} {it:size}{cmd:)} 来仅指定字体大小。使用 {cmd:font("", "",} {it:color}{cmd:)} 来仅指定字体颜色。
在这两种情况下，都将使用默认字体。

{phang}
{cmd:bold} 对指定单元格或所选行、列或范围中的所有单元格中的文本应用粗体格式。

{phang}
{cmd:italic} 对指定单元格或所选行、列或范围中的所有单元格中的文本应用斜体格式。

{phang}
{cmd:script(sub{c |}super)} 更改文本的脚本样式。 {cmd:script(sub)} 将文本设置为下标。 {cmd:script(super)} 将文本设置为上标。 {cmd:script()} 仅在格式化单个单元格时可指定。

{phang}
{cmd:strikeout} 为指定单元格或所选行、列或范围中的所有单元格中的当前文本添加删除线。

{phang}
{cmd:underline} 为指定单元格或所选行、列或范围中的所有单元格中的当前文本添加下划线。

{phang}
{cmd:allcaps} 将当前单元格或所选行、列或范围中的所有单元格中的当前文本格式化为大写字母。



{marker examples}{...}
{title:示例}

{pstd}设置{p_end}
{phang2}{cmd:. sysuse auto}{p_end}

{pstd}在内存中创建 {cmd:.pdf} 文档{p_end}
{phang2}{cmd:. putpdf begin}{p_end}

{pstd}
拟合线性回归模型，{cmd:mpg} 作为 
{cmd:weight} 和 {cmd:foreign} 的函数{p_end}
	{cmd:. regress mpg weight foreign}

{pstd}
将估计结果作为名为 {cmd:tbl1} 的表格导出到文档中{p_end}
{phang2}{cmd:. putpdf table tbl1 = etable, width(100%)} 

{pstd}	
仅保留点估计和置信区间{p_end}
{phang2}{cmd:. putpdf table tbl1(.,5), drop}{p_end}
{phang2}{cmd:. putpdf table tbl1(.,4), drop}{p_end}
{phang2}{cmd:. putpdf table tbl1(.,3), drop}

{pstd}
修改列标题以省略因变量名称{p_end}
{phang2}{cmd:. putpdf table tbl1(1,2) = ("")}

{pstd}
将内存中数据集的前 15 个观察值的 {cmd:make}、{cmd:price} 和 {cmd:mpg} 变量导出{p_end}
	{cmd:. putpdf table tbl1 = data("make price mpg") in 1/15, varnames}

{pstd}
将文档保存到磁盘{p_end}
	{cmd:. putpdf save example.pdf}


{marker results}{...}
{title:存储结果}

{pstd}
{cmd:putpdf describe} {it:tablename} 将以下内容存储在 {cmd:r()} 中：

{synoptset 20 tabbed}{...}
{p2col 5 20 24 2: 标量}{p_end}
{synopt:{cmd:r(nrows)}}表格中的行数{p_end}
{synopt:{cmd:r(ncols)}}表格中的列数{p_end}
{p2colreset}{...}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <putpdf_table.sthlp>}