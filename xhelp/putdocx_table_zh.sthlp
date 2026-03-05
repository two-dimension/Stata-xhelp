{smcl}
{* *! version 1.0.0  03jun2019}{...}
{vieweralsosee "[RPT] putdocx table" "mansection RPT putdocxtable"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[RPT] putdocx intro" "help putdocx intro"}{...}
{vieweralsosee "[RPT] putdocx begin" "help putdocx begin"}{...}
{vieweralsosee "[RPT] putdocx pagebreak" "help putdocx pagebreak"}{...}
{vieweralsosee "[RPT] putdocx paragraph" "help putdocx paragraph"}{...}
{vieweralsosee "[RPT] Appendix for putdocx" "help putdocx_appendix_zh"}{...}
{viewerjumpto "语法" "putdocx table##syntax"}{...}
{viewerjumpto "描述" "putdocx table##description"}{...}
{viewerjumpto "PDF文档链接" "putdocx table##linkspdf"}{...}
{viewerjumpto "选项" "putdocx table##options"}{...}
{viewerjumpto "示例" "putdocx table##examples"}{...}
{viewerjumpto "存储结果" "putdocx table##results"}
{help putdocx_table:English Version}
{hline}{...}
{p2colset 1 24 26 2}{...}
{p2col:{bf:[RPT] putdocx table} {hline 2}}向Office Open XML
(.docx)文件添加表格{p_end}
{p2col:}({mansection RPT putdocxtable:查看完整PDF手册条目}){p_end}
{p2colreset}{...}


{marker syntax}{...}
{title:语法}

{phang}
向文档添加表格

{p 8 22 2}
{cmd:putdocx table}
{help putdocx_table##tablename:{it:tablename}}
{cmd:=} {cmd:(}{help putdocx_table##nrows/ncols:{it:nrows}}{cmd:,}
   {help putdocx_table##nrows/ncols:{it:ncols}}{cmd:)}
[{cmd:,} {help putdocx_table##tabopts:{it:table_options}}]

{p 8 22 2}
{cmd:putdocx table}
{help putdocx_table##tablename:{it:tablename}}
{cmd:=} {help putdocx_table##data:{bf:data(}{it:varlist}{bf:)}}
{ifin}
[{cmd:,} {cmd:varnames} {cmd:obsno}
{help putdocx_table##tabopts:{it:table_options}}]

{p 8 22 2}
{cmd:putdocx table}
{help putdocx_table##tablename:{it:tablename}}
{cmd:=} {help putdocx_table##matname:{bf:{ul:mat}rix(}{it:matname}{bf:)}}
[{cmd:,} {opth nfor:mat(%fmt)}
{cmd:rownames}
{cmd:colnames}
{help putdocx_table##tabopts:{it:table_options}}]

{p 8 22 2}
{cmd:putdocx table}
{help putdocx_table##tablename:{it:tablename}}
{cmd:=} {help putdocx_table##mata:{bf:mata(}{it:matname}{bf:)}}
[{cmd:,} {opth nfor:mat(%fmt)}
{help putdocx_table##tabopts:{it:table_options}}]

{p 8 22 2}
{cmd:putdocx table}
{help putdocx_table##tablename:{it:tablename}}
{cmd:=} {help putdocx_table##etable:{bf:etable}}[{cmd:(}{it:#}_1
              {it:#}_2 ... {it:#}_n{cmd:)}]
[{cmd:,}
{help putdocx_table##tabopts:{it:table_options}}]

{p 8 22 2}
{cmd:putdocx table}
{help putdocx_table##tablename:{it:tablename}}
{cmd:=} {help putdocx_table##returnset:{it:returnset}}
[{cmd:,} {help putdocx_table##tabopts:{it:table_options}}]


{phang}
向单元格添加内容

{p 8 22 2}
{cmd:putdocx table}
{help putdocx_table##tablename:{it:tablename}}{cmd:(}{it:i}{cmd:,} {it:j}{cmd:)}
{cmd:=} {cmd:(}{help putdocx_table##expr:{it:exp}}{cmd:)}
[{cmd:,} {help putdocx_table##cellopts:{it:cell_options}}
{cmd:pagenumber} {cmd:totalpages}]

{p 8 22 2}
{cmd:putdocx table}
{help putdocx_table##tablename:{it:tablename}}{cmd:(}{it:i}{cmd:,} {it:j}{cmd:)}
{cmd:=} {help putdocx_table##image:{bf:image(}{it:filename}{bf:)}}
[{cmd:,} {help putdocx_table##imageopts:{it:image_options}}
{help putdocx_table##cellopts:{it:cell_options}}]

{p 8 22 2}
{cmd:putdocx table}
{help putdocx_table##tablename:{it:tablename}}{cmd:(}{it:i}{cmd:,}{it:j}{cmd:)}
{cmd:=} {cmd:table(}{help putdocx_table##mem_tablename:{it:mem_tablename}}{cmd:)}
[{cmd:,} {help putdocx_table##cellopts:{it:cell_options}}]


{phang}
更改表格布局

{p 8 22 2}
{cmd:putdocx table}
{help putdocx_table##tablename:{it:tablename}}{cmd:(}{it:i}{cmd:,} {cmd:.),}
{help putdocx_table##rowcolopts:{it:row_col_options}}

{p 8 22 2}
{cmd:putdocx table}
{help putdocx_table##tablename:{it:tablename}}{cmd:(.,} {it:j}{cmd:),}
{help putdocx_table##rowcolopts:{it:row_col_options}}


{phang}
自定义单元格或表格的格式

{p 8 22 2}
{cmd:putdocx table}
{help putdocx_table##tablename:{it:tablename}}{cmd:(}{it:i}{cmd:,} {it:j}{cmd:),}
{help putdocx_table##cellopts:{it:cell_options}}

{p 8 22 2}
{cmd:putdocx table}
{help putdocx_table##tablename:{it:tablename}}{cmd:(} {help numlist_zh:{it:numlist}}_{it:i}{cmd:, .),}
{help putdocx_table##cellfmtopts:{it:cell_fmt_options}}

{p 8 22 2}
{cmd:putdocx table}
{help putdocx_table##tablename:{it:tablename}}{cmd:(.,} {help numlist_zh:{it:numlist}}_{it:j}{cmd:),}
{help putdocx_table##cellfmtopts:{it:cell_fmt_options}}

{p 8 22 2}
{cmd:putdocx table}
{help putdocx_table##tablename:{it:tablename}}{cmd:(} {help numlist_zh:{it:numlist}}_{it:i}{cmd:,} {help numlist_zh:{it:numlist}}_{it:j}{cmd:),}
{help putdocx_table##cellfmtopts:{it:cell_fmt_options}}

{p 8 22 2}
{cmd:putdocx table}
{help putdocx_table##tablename:{it:tablename}}{cmd:(.,} {cmd:.),}
{help putdocx_table##cellfmtopts:{it:cell_fmt_options}}


{phang}
描述表格

{p 8 22 2}
{cmd:putdocx describe}
{help putdocx_table##tablename:{it:tablename}}


{marker tablename}{...}
{phang}
{it:tablename}指定表格的名称。该名称必须符合Stata的命名规则；见{findalias frnames}。

{marker tabopts}{...}
{synoptset 28}{...}
{synopthdr:table_options}
{synoptline}
{synopt :{opt mem:table}}在内存中保留表格，而不是将其添加到文档{p_end}
{synopt :{cmd:width(}{it:#}[{help putdocx_table##unit:{it:unit}}{c |}{cmd:%}]{cmd:)}}设置表格宽度{p_end}
{synopt :{opth halign:(putdocx_table##table_hvalue:hvalue)}}设置表格的水平对齐方式{p_end}
{synopt :{cmd:indent(}{it:#}[{help putdocx_table##unit:{it:unit}}]{cmd:)}}设置表格的缩进{p_end}
{synopt :{opth layout:(putdocx_table##layouttype:layouttype)}}调整列宽{p_end}
{synopt :{cmdab:cellmar:gin(}{help putdocx_table##cmarg:{it:cmarg}}{cmd:,} {it:#}[{help putdocx_table##unit:{it:unit}}]{cmd:)}}设置每个单元格的边距{p_end}
{synopt :{cmdab:cellsp:acing(}{it:#}[{help putdocx_table##unit:{it:unit}}]{cmd:)}}设置相邻单元格之间及表格边缘的间距{p_end}
{synopt :{opth bord:er(putdocx_table##bspec:bspec)}}设置边框的样式、颜色和宽度{p_end}
{synopt :{opt headerr:ow(#)}}设置构成表格头的顶行数{p_end}
{synopt :{opth title:(strings:string)}}为表格添加标题{p_end}
{synopt :{opth note:(strings:string)}}为表格添加备注{p_end}
{synopt :{opth toheader:(putdocx_table##hname:hname)}}将表格添加到头部 {it:hname}{p_end}
{synopt :{opth tofooter:(putdocx_table##fname:fname)}}将表格添加到页脚 {it:fname}{p_end}
{synoptline}

{marker cellopts}{...}
{synoptset 28}{...}
{synopthdr:cell_options}
{synoptline}
{synopt :{opt append}}将对象附加到单元格的当前内容{p_end}
{synopt :{opt rowspan(#)}}垂直合并单元格{p_end}
{synopt :{opt colspan(#)}}水平合并单元格{p_end}
{synopt :{cmd:span(}{it:#}_1{cmd:,} {it:#}_2{cmd:)}合并单元格{p_end}
{synopt :{cmd:linebreak}[{cmd:(}{it:#}{cmd:)}]}在单元格中添加换行{p_end}
{synopt :{help putdocx_table##cellfmtopts:{it:cell_fmt_options}}}控制单元格内容外观的选项{p_end}
{synoptline}

{marker imageopts}{...}
{synoptset 28}{...}
{synopthdr:image_options}
{synoptline}
{synopt :{cmdab:w:idth(}{it:#}[{help putdocx_table##unit:{it:unit}}]{cmd:)}设置图像宽度{p_end}
{synopt :{cmdab:h:eight(}{it:#}[{help putdocx_table##unit:{it:unit}}]{cmd:)}设置图像高度{p_end}
{synopt :{cmd:linebreak}[{cmd:(}{it:#}{cmd:)}]}在图像后添加换行{p_end}
{synopt :{opt link}}插入指向图像文件的链接{p_end}
{synoptline}

{marker rowcolopts}{...}
{synoptset 28}{...}
{synopthdr:row_col_options}
{synoptline}
{synopt :{opt nosp:lit}}防止行在页面间断裂{p_end}
{synopt :{cmd:addrows(}{it:#} [{cmd:, before}{c |}{cmd:after}]{cmd:)}}在指定位置添加 {it:#} 行{p_end}
{synopt :{cmd:addcols(}{it:#} [{cmd:, before}{c |}{cmd:after}]{cmd:)}}在指定位置添加 {it:#} 列{p_end}
{synopt :{opt drop}}删除指定行或列{p_end}
{synopt :{help putdocx_table##cellfmtopts:{it:cell_fmt_options}}}控制单元格内容外观的选项{p_end}
{synoptline}

{marker cellfmtopts}{...}
{synoptset 28 tabbed}{...}
{synopthdr:cell_fmt_options}
{synoptline}
{synopt :{opth halign:(putdocx_table##cell_hvalue:hvalue)}}设置水平对齐方式{p_end}
{synopt :{opth valign:(putdocx_table##cell_vvalue:vvalue)}}设置垂直对齐方式{p_end}
{synopt :{opth bord:er(putdocx_table##bspec:bspec)}}设置边框的样式、颜色和宽度{p_end}
{synopt :{opth shad:ing(putdocx_table##sspec:sspec)}}设置背景色、前景色和填充模式{p_end}
{synopt :{opth nfor:mat(%fmt)}}指定单元格文本的数字格式{p_end}
{synopt :{opth font:(putdocx_table##fspec:fspec)}}设置字体、字体大小和字体颜色{p_end}
{synopt :{opt bold}}将文本格式化为粗体{p_end}
{synopt :{opt italic}}将文本格式化为斜体{p_end}
{p2coldent: * {cmd:script(sub{c |}super)}}设置文本的下标或上标格式{p_end}
{synopt :{opt strike:out}}删除文本{p_end}
{synopt :{cmdab:underl:ine}[{cmd:(}{help putdocx_table##cell_upattern:{it:upattern}}{cmd:)}]}使用指定模式为文本添加下划线{p_end}
{synopt :{opt allc:aps}}将文本格式化为全大写{p_end}
{synopt :{opt smallc:aps}}将文本格式化为小型大写{p_end}
{synoptline}
{p 4 6 2}
* 仅在格式化单个单元格时可以指定。


{marker unit}{...}
{phang}
包含帮助 put_units

{marker bspec}{...}
{phang}
{it:bspec}是

{pmore}
{it:bordername} [{cmd:,} {it:bpattern} [{cmd:,} {help putdocx_table##color:{it:bcolor}} [{cmd:,} {it:bwidth}]]]

{pmore2}
{it:bordername}指定边框的位置。

{pmore2}
{it:bpattern}是指定边框外观的关键字。最常见的样式是 {cmd:single}, {cmd:dashed}, {cmd:dotted}, 和 {cmd:double}。默认值是 {cmd:single}。有关边框样式的完整列表，请参阅{help putdocx_appendix##Border_patterns:{it:边框模式}}在{help putdocx_appendix_zh:[RPT] putdocx附录}。要移除现有边框，请将 {cmd:nil} 作为 {it:bpattern} 指定。

{pmore2}
{it:bcolor}指定边框颜色。

{pmore2}
{it:bwidth}定义为 {it:#}[{help putdocx_paragraph##unit:{it:unit}}]，指定边框宽度。默认的边框宽度为0.5点。如果 {it:#} 未指定单位，则默认为英寸。如果您指定的宽度超过了用于查看 {cmd:.docx} 文件的程序允许的最大宽度，则可能会忽略{it:bwidth}。建议使用12点或更小的规格。

{marker sspec}{...}
{phang}
{it:sspec}是

{pmore}
{help putdocx_table##color:{it:bgcolor}}
[{cmd:,} {help putdocx_table##color:{it:fgcolor}}
[{cmd:,} {it:fpattern}]]

{pmore2}
{it:bgcolor}指定背景颜色。

{pmore2}
{it:fgcolor}指定前景颜色。默认前景颜色为{cmd:black}。

{marker fpattern}{...}
{pmore2}
{it:fpattern}指定填充模式。最常见的填充模式为 {cmd:solid} 表示固体颜色（由 {it:fgcolor} 决定）， {cmd:pct25} 表示25%灰度， {cmd:pct50} 表示50%灰度， 和 {cmd:pct75} 表示75%灰度。填充模式的完整列表显示在{help putdocx_appendix##Shading_patterns:{it:填充模式}}在{help putdocx_appendix_zh:[RPT] putdocx附录}。

{marker fspec}{...}
{phang}
{it:fspec}是

{pmore}
{it:fontname} [{cmd:,} {it:size}
[{cmd:,} {help putdocx_table##color:{it:color}}]

{marker font}{...}
{pmore2}
{it:fontname}可以是用户计算机上安装的任何有效字体。如果 {it:fontname} 包含空格，则必须用双引号括起来。

{marker size}{...}
{pmore2}
{it:size}是一个以点为单位表示的字体大小的数值。默认值为 {cmd:11}。

{pmore2}
{it:color}设置文本颜色。

{marker color}{...}
{phang}
{it:bcolor}, {it:bgcolor}, {it:fgcolor}, 和 {it:color} 可以是{help putdocx_appendix##Colors:{it:颜色}}在{helpb putdocx appendix:[RPT] putdocs}列出的颜色之一；有效的RGB值格式为 {it:### ### ###}，例如 {cmd:171 248 103}；或有效的RRGGBB十六进制值格式为 {it:######}，例如 {cmd:ABF867}。


{title:表格的输出类型}

{phang}
在使用{cmd:putdocx} {cmd:table} {it:tablename}创建新表时，支持以下输出类型：

{marker nrows/ncols}{...}
{phang2}
{cmd:(}{it:nrows}{cmd:,} {it:ncols}{cmd:)} 创建一个具有{it:nrows}行和{it:ncols}列的空表格。Microsoft Word 中的表格最多允许63列。

{marker data}{...}
{phang2}
{opt data(varlist)}将当前内存中的Stata数据集作为表格添加到活动文档中。{varlist}包含当前内存中数据集的变量名列表。

{marker matname}{...}
{phang2}
{opt matrix(matname)}将一个名为{it:matname}的 {help matrix_zh} 作为表格添加到活动文档中。

{marker mata}{...}
{phang2}
{opt mata(matname)}将一个名为{it:matname}的Mata {help matrix_zh} 作为表格添加到活动文档中。

{marker etable}{...}
{phang2}
{cmd:etable}[{cmd:(}{it:#}_1 {it:#}_2 ...{it:#}_n{cmd:)}] 将自动生成的表格添加到活动文档中。该表格可以源自上一个估计命令的系数表，来自上一个{help margins_zh}命令的边际表，或者来自{helpb estimates table}所显示的一个或多个模型的结果表。

{pmore2}
如果估计命令输出n > 1个系数表，则默认添加所有表，并将相应的表名分配为{it:tablename}{cmd:1}, {it:tablename}{cmd:2}, ..., {it:tablename}_n。要指定要添加的表，请向{cmd:etable}提供可选的数字列表。例如，要仅添加估计输出中的第一和第三个表，请指定{cmd:etable(1 3)}。一些估计命令不支持{cmd:etable}输出类型。有关不支持{cmd:putdocx}的估计命令的列表，请参见{help putdocx_appendix##Unsupported_estcmds:{it:不支持的估计命令}}在{help putdocx_appendix_zh:[RPT] putdocx附录}。

{marker returnset}{...}
{phang2}
{it:returnset}将一组Stata {help return_zh} 值导出到活动文档中的表格中。其主要目的是供程序员使用，以及希望在活动文档中对导出的结果进行进一步处理的人士。{it:returnset}可以是以下之一：

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
在使用{cmd:putdocx table} {it:tablename}{cmd:(}{it:i}{cmd:,} {it:j}{cmd:)}向现有表中添加内容时，支持以下输出类型：

{marker expr}{...}
{phang2}
{cmd:(}{help exp_zh:{it:exp}}{cmd:)}向单元格写入有效的Stata表达式；见{findalias frexp}。

{marker image}{...}
{phang2}
{opth image(filename)}将可移植网络图形文件（{cmd:.png}）、JPEG文件（{cmd:.jpg}）、Windows元文件（{cmd:.wmf}）、设备独立位图（{cmd:.dib}）、增强元文件（{cmd:.emf}）或位图文件（{cmd:.bmp}）添加到表格单元格中。如果{it:filename}包含空格，则必须用双引号括起来。

{marker mem_tablename}{...}
{marker table}{...}
{phang2}
{opt table(mem_tablename)}将先前创建的表格，识别为{it:mem_tablename}的表格，添加到单元格中。

{phang}
以下组合的{it:tablename}{cmd:(}{it:numlist}_{it:i}{cmd:,} {it:numlist}_{it:j}{cmd:)}（有关有效规范，请参见{findalias frnumlist}）可用于格式化现有表中的单元格或单元格范围：

{phang2}
{it:tablename}{cmd:(}{it:i}{cmd:,} {it:j}{cmd:)}指定第{i}行和第{j}列的单元格。

{phang2}
{it:tablename}{cmd:(}{it:i}{cmd:,} {cmd:.)}和{it:tablename}{cmd:(}{it:numlist}_i{cmd:,} {cmd:.)}指定第{i}行或由{it:numlist}_i标识的行中的所有单元格。

{phang2}
{it:tablename}{cmd:(.,} {it:j}{cmd:)}和{it:tablename}{cmd:(.,} {it:numlist}_j{cmd:)}指定第{j}列或由{it:numlist}_j标识的列中的所有单元格。

{phang2}
{it:tablename}{cmd:(.,} {cmd:.)}指定整个表格。


{marker description}{...}
{title:描述}

{pstd}
{cmd:putdocx} {cmd:table} 在活动 {cmd:.docx} 文件中创建和修改表格。表格可以从多种输出类型创建，包括内存中的数据、矩阵和估计结果。

{pstd}
{cmd:putdocx} {cmd:describe} 在活动 {cmd:.docx} 文件中描述一个表格。


{marker linkspdf}{...}
{title:PDF文档链接}

        {mansection RPT putdocxtableQuickstart:快速入门}

        {mansection RPT putdocxtableRemarksandexamples:备注和示例}

{pstd}
以上部分未包含在此帮助文件中。


{marker options}{...}
{title:选项}

{pstd}
选项按以下标题列出：

        {help putdocx_table##table_opts:表格选项}
        {help putdocx_table##cell_opts:单元格选项}
        {help putdocx_table##row_col_opts:行列选项}
        {help putdocx_table##cell_fmt_opts:单元格格式选项}
        {help putdocx_table##image_opts:图像选项}


{marker table_opts}{...}
{title:表格选项}

{phang}
{opt memtable}指定表格应在内存中创建并保留，而不是立即添加到活动文档中。默认情况下，表格在创建后立即添加到文档中。此选项在表格打算添加到另一个表格的单元格中或稍后多次使用时非常有用。

{phang}
{cmd:width(}{it:#}[{help putdocx_table##unit:{it:unit}}{c |}{cmd:%}]{cmd:)}设置表格宽度。{it:#}可以是绝对宽度或默认表格宽度的百分比，该默认宽度由文档的页面宽度决定。例如，{cmd:width(50%)}将表格宽度设置为默认表格宽度的50%。默认值为{cmd:width(100%)}。

{marker table_hvalue}{...}
{phang}
{opt halign(hvalue)}设置表格在页面内的水平对齐方式。{it:hvalue}可以是 {cmd:left}, {cmd:right}, 或 {cmd:center}。默认值为{cmd:halign(left)}。

{phang}
{cmd:indent(}{it:#}[{help putdocx_table##unit:{it:unit}}]{cmd:)}指定表格距离当前文档左边距的缩进。

{marker layouttype}{...}
{phang}
{opt layout(layouttype)}调整表格的列宽。{it:layouttype}可以是 {cmd:fixed}, {cmdab:autofitw:indow}, 或 {cmdab:autofitc:ontents}。{cmd:fixed} 指定所有列的宽度相同。当指定 {cmd:autofitwindow} 时，列宽会自动调整以适应窗口。当指定 {cmd:autofitcontents} 时，表格宽度由整体表格布局算法决定，自动调整列宽以适应内容。默认值为{cmd:layout(autofitwindow)}。

{marker cmarg}{...}
{phang}
{cmd:cellmargin(}{it:cmarg}{cmd:,} {it:#}[{help putdocx_table##unit:{it:unit}}]{cmd:)}设置表格单元格的边距。{it:cmarg}可以是{cmd:top}, {cmd:bottom}, {cmd:left}, 或 {cmd:right}。此选项可以在一个命令中多次指定以适应不同的边距设置。

{phang}
{cmd:cellspacing(}{it:#}[{help putdocx_table##unit:{it:unit}}]{cmd:)}设置相邻单元格之间及表格边缘的间距。

{phang}
{cmd:border(}{it:bordername}
[{cmd:,} {help putdocx_table##bspec:{it:bpattern}}
[{cmd:,} {help putdocx_table##color:{it:bcolor}}
[{cmd:,} {help putdocx_table##bspec:{it:bwidth}}]]]{cmd:)}在{it:bordername}指定的位置添加单个边框，该位置可以是 {cmd:start}, {cmd:end}, {cmd:top}, {cmd:bottom},
{cmd:insideH}（内部水平边框），
{cmd:insideV}（内部垂直边框），或 {cmd:all}。
可以通过指定{it:bpattern}, {it:bcolor}, 和 {it:bwidth}来更改边框的样式、颜色和宽度。

{pmore}
此选项可以在一个命令中多次指定以适应不同的边框设置。如果指定了多个 {cmd:border()} 选项，则它们将按照从左到右的顺序应用。

{phang}
{opt headerrow(#)} 设置顶部的{it:#}行在显示表格的每个页面上重复作为表头行。此设置仅在表格跨越多个页面时可见。

{phang}
{cmd:varnames}指定在使用内存中的数据集创建表格时，变量名应作为表格的第一行包含在内。默认情况下，仅将数据值添加到表格中。

{phang}
{cmd:obsno}指定在使用内存中的数据集创建表格时，观察编号应作为表格的第一列包含在内。默认情况下，仅将数据值添加到表格中。

{phang}
{opth nformat(%fmt)}指定在从Stata或Mata矩阵创建表格时应用于源值的数字格式。默认值为{cmd:nformat(%12.0g)}。

{phang}
{cmd:rownames}指定Stata矩阵的行名应作为表格的第一列包含在内。默认情况下，仅将矩阵值添加到表格中。

{phang}
{cmd:colnames}指定Stata矩阵的列名应作为表格的第一行包含在内。默认情况下，仅将矩阵值添加到表格中。

{phang}
{opth title:(strings:string)}在当前表格上方添加一行无边框的行。添加的行跨越表格的所有列，并包含{it:string}作为文本。添加的行将所有其他表格内容向下移动一行。在后续命令中引用表格单元格时，您应考虑到这一点。

{phang}
{opth note:(strings:string)}在表格底部插入一行无边框的行。添加的行跨越表格的所有列。此选项可以在一个命令中多次指定，以在同一单元格内的新行中添加备注。备注文本按从左到右的顺序插入。

{marker hname}{...}
{phang}
{opt toheader(hname)}指定将表格添加到头部{it:hname}。表格不会添加到文档主体。

{marker fname}{...}
{phang}
{opt tofooter(fname)}指定将表格添加到页脚{it:fname}。表格不会添加到文档主体。


{marker cell_opts}{...}
{title:单元格选项}

{phang}
{cmd:append}指定单元格的新内容将附加到当前内容中。如果未指定{cmd:append}，则当前单元格内容将被新内容替换。

{phang}
{opt rowspan(#)}设置指定单元格向下垂直合并{it:#}个单元格。如果合并超过了表格中的总行数，合并将在最后一行停止。

{phang}
{opt colspan(#)}设置指定单元格向右水平合并{it:#}个单元格。如果合并超过了表格中的总列数，合并将在最后一列停止。

{phang}
{cmd:span(}{it:#}_1{cmd:,} {it:#}_2{cmd:)}设置指定单元格向下合并{it:#}_1单元格并向右合并{it:#}_2单元格。

{phang}
{cmd:linebreak}[{cmd:(}{it:#}{cmd:)}]指定在文本、图像或单元格内的表格后添加一个或{it:#}个换行。

{phang}
{cmd:pagenumber}指定在单元格的新内容末尾附加当前页码。此选项仅适用于向单元格添加表达式时。{cmd:pagenumber}仅适用于添加到页眉或页脚的表格，无法与{cmd:totalpages}结合使用。

{phang}
{cmd:totalpages}指定在单元格的新内容末尾附加总页数。此选项仅适用于向单元格添加表达式时。{cmd:totalpages}仅适用于添加到页眉或页脚的表格，无法与{cmd:pagenumber}结合使用。


{marker row_col_opts}{...}
{title:行列选项}

{phang}
{cmd:nosplit}指定第{it:i}行不跨页。当表格行显示时，页面中断可能会出现在该行某个单元格的内容中，导致该单元格的内容在两个页面上显示。{cmd:nosplit}防止这种行为。如果整行无法放入当前页面，则该行将移动到下一页面的开头。

{phang}
{cmd:addrows(}{it:#} [{cmd:,} {cmd:before}{c |}{cmd:after}]{cmd:)}在当前表中向第{it:i}行之前或之后添加{it:#}行。如果指定了{cmd:before}，则行将在指定行之前添加。默认情况下，行是在指定行之后添加的。

{phang}
{cmd:addcols(}{it:#} [{cmd:,} {cmd:before}{c |}{cmd:after}]{cmd:)}在当前表格中向第{it:j}列的右侧或左侧添加{it:#}列。如果指定了{cmd:before}，则列将在指定列左侧添加。默认情况下，列是在指定列之后添加的。

{phang}
{cmd:drop}从表中删除第{it:i}行或第{it:j}列。


{marker cell_fmt_opts}{...}
{title:单元格格式选项}

{marker cell_hvalue}{...}
{phang}
{opt halign(hvalue)}设置指定单元格或指定行、列或范围内所有单元格的水平对齐方式。{it:hvalue}可以是 {cmd:left}, {cmd:right}, 或 {cmd:center}。默认值为{cmd:halign(left)}。

{marker cell_vvalue}{...}
{phang}
{opt valign(vvalue)}设置指定单元格或指定行、列或范围内所有单元格的垂直对齐方式。{it:vvalue}可以是 {cmd:top}, {cmd:bottom}, 或 {cmd:center}。默认值为{cmd:valign(top)}。

{phang}
{cmd:border(}{it:bordername}
[{cmd:,} {help putdocx_table##bspec:{it:bpattern}}
[{cmd:,} {help putdocx_table##color:{it:bcolor}}
[{cmd:,} {help putdocx_table##bspec:{it:bwidth}}]]]{cmd:)}向指定单元格或给定位置的指定行、列或范围中所有单元格添加单个边框。{it:bordername}可以是 {cmd:start}, {cmd:end}, {cmd:top}, {cmd:bottom}, 或 {cmd:all}。您可以通过指定{it:bpattern}, {it:bcolor}, 和 {it:bwidth}来更改边框的样式、颜色和宽度。

{pmore}
此选项可以在一个命令中多次指定以适应不同的边框设置。如果指定了多个 {cmd:border()} 选项，则它们将按照从左到右的顺序应用。

{phang}
{cmd:shading(}{help putdocx_table##color:{it:bgcolor}}
[{cmd:,} {help putdocx_table##color:{it:fgcolor}}
[{cmd:,} {help putdocx_table##fpattern:{it:fpattern}}]]{cmd:)}设置指定单元格或所有指定行、列或范围内单元格的背景颜色、前景颜色和填充模式。

{phang}
{opth nformat(%fmt)}对指定单元格内的文本或指定行、列或范围内所有单元格中的文本应用Stata数字格式{cmd:%}{it:fmt}。此设置仅在单元格内容为数字值时适用。

{phang}
{cmd:font(}{help putdocx_table##font:{it:fontname}}
[{cmd:,} {help putdocx_table##size:{it:size}}
[{cmd:,} {help putdocx_table##color:{it:color}}]]{cmd:)}为指定单元格内当前文本或所有指定行、列或范围内所有单元格中的文本设置字体、字体大小和字体颜色。字体大小和字体颜色可以单独指定，而不需要指定{it:fontname}。使用{cmd:font("",} {it:size}{cmd:)}仅指定字体大小。使用{cmd:font("", "",} {it:color}{cmd:)}仅指定字体颜色。在这两种情况下，将使用默认字体。

{phang}
{cmd:bold}对指定单元格内当前文本或所有指定行、列或范围内所有单元格中的当前文本应用粗体格式。

{phang}
{cmd:italic}对指定单元格内当前文本或所有指定行、列或范围内所有单元格中的当前文本应用斜体格式。

{phang}
{cmd:script(sub{c |}super)}更改当前文本的脚本样式。{cmd:script(sub)}使文本为下标。{cmd:script(super)}使文本为上标。{cmd:script()}仅在格式化单个单元格时可指定。

{phang}
{cmd:strikeout}向指定单元格内的当前文本或所有指定行、列或范围内所有单元格中的当前文本添加删除线。

{marker cell_upattern}{...}
{phang}
{cmd:underline}向指定单元格内当前文本或所有指定行、列或范围内所有单元格中的当前文本添加下划线。默认使用单一的下划线。可以使用{opt underline(upattern)}更改线条的格式，{it:upattern}可以是{help putdocx_appendix##Underline_patterns:{it:下划线模式}}在{help putdocx_appendix_zh:[RPT] putdocx附录}中列出的任何模式。最常见的模式是 {cmd:double}, {cmd:dash}, 和 {cmd:none}。

{phang}
{cmd:allcaps}将指定单元格内当前文本或所有指定行、列或范围内所有单元格中的当前文本的所有字母格式化为大写字母。

{phang}
{cmd:smallcaps}将指定单元格内当前文本或所有指定行、列或范围内所有单元格中当前文本的所有字母格式化为小型大写。{cmd:smallcaps}对大写字母使用较大的大写字母，对小写字母使用较小的大写字母。


{marker image_opts}{...}
{title:图像选项}

{phang}
{cmd:width(}{it:#}[{help putdocx_table##unit:{it:unit}}]{cmd:)} 设置图像的宽度。如果宽度大于单元格的宽度，则使用该宽度。如果未指定{cmd:width()}，则使用默认大小；默认大小由图像信息和单元格宽度决定。

{phang}
{cmd:height(}{it:#}[{help putdocx_table##unit:{it:unit}}]{cmd:)} 设置图像的高度。如果未指定{cmd:height()}，则图像的高度由图像的宽度和纵横比决定。

{phang}
{cmd:linebreak}[{cmd:(}{it:#}{cmd:)}] 指定在新图像后添加一个或{it:#}个换行。

{phang}
{cmd:link}指定将图像 {it:filename} 的链接插入文档。如果图像是链接的，则引用的文件必须存在，以便文档能够显示该图像。


{marker examples}{...}
{title:示例}

{pstd}设置{p_end}
{phang2}{cmd:. sysuse auto}{p_end}

{pstd}在内存中创建一个 {cmd:.docx} 文档{p_end}
{phang2}{cmd:. putdocx begin}{p_end}

{pstd}
将{cmd:mpg}作为{cmd:weight}和{cmd:foreign}的函数拟合线性回归模型{p_end}
	{cmd:. regress mpg weight foreign}

{pstd}
将估计结果导出到名为{cmd:tbl1}的文档表格中{p_end}
{phang2}{cmd:. putdocx table tbl1 = etable, width(100%)}

{pstd}	
仅保留点估计和置信区间{p_end}
{phang2}{cmd:. putdocx table tbl1(.,5), drop}{p_end}
{phang2}{cmd:. putdocx table tbl1(.,4), drop}{p_end}
{phang2}{cmd:. putdocx table tbl1(.,3), drop}

{pstd}
修改列标题以省略因变量名称{p_end}
{phang2}{cmd:. putdocx table tbl1(1,2) = ("")}

{pstd}
从内存中数据集导出{cmd:make}, {cmd:price}, 和 {cmd:mpg}变量的前15个观察值{p_end}
	{cmd:. putdocx table tbl1 = data("make price mpg") in 1/15, varnames}

{pstd}
将文档保存到磁盘{p_end}
	{cmd:. putdocx save example.docx}


{marker results}{...}
{title:存储结果}

{pstd}
{cmd:putdocx describe} {it:tablename} 将以下内容存储在 {cmd:r()} 中：

{synoptset 20 tabbed}{...}
{p2col 5 20 24 2: 标量}{p_end}
{synopt:{cmd:r(nrows)}}表格中的行数{p_end}
{synopt:{cmd:r(ncols)}}表格中的列数{p_end}
{p2colreset}{...}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <putdocx_table.sthlp>}