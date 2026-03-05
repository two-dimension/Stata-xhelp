{smcl}
{* *! version 1.0.0  08may2019}{...}
{vieweralsosee "[RPT] putdocx begin" "mansection RPT putdocxbegin"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[RPT] putdocx intro" "help putdocx intro"}{...}
{vieweralsosee "[RPT] putdocx pagebreak" "help putdocx pagebreak"}{...}
{vieweralsosee "[RPT] putdocx paragraph" "help putdocx paragraph"}{...}
{vieweralsosee "[RPT] putdocx table" "help putdocx table"}{...}
{vieweralsosee "[RPT] Appendix for putdocx" "help putdocx_appendix_zh"}{...}
{viewerjumpto "Syntax" "putdocx begin##syntax"}{...}
{viewerjumpto "Description" "putdocx begin##description"}{...}
{viewerjumpto "Links to PDF documentation" "putdocx begin##linkspdf"}{...}
{viewerjumpto "Options" "putdocx begin##options"}{...}
{viewerjumpto "Examples" "putdocx begin##examples"}
{help putdocx_begin:English Version}
{hline}{...}
{p2colset 1 24 26 2}{...}
{p2col:{bf:[RPT] putdocx begin} {hline 2}}创建一个 Office Open XML (.docx) 文件{p_end}
{p2col:}({mansection RPT putdocxbegin:查看完整 PDF 手册条目}){p_end}
{p2colreset}{...}


{marker syntax}{...}
{title:语法}

{phang}
创建要导出的文档

{p 8 22 2}
{cmd:putdocx begin}
[{cmd:,}
{help putdocx begin##beginopts:{it:begin_options}}]


{phang}
描述活动文档

{p 8 22 2}
{cmd:putdocx describe}


{phang}
保存并关闭文档

{p 8 22 2}
{cmd:putdocx save} {it:{help filename_zh}}
[{cmd:,}
{help putdocx begin##saveopts:{it:save_options}}]


{phang}
不保存直接关闭

{p 8 22 2}
{cmd:putdocx clear}


{phang}
附加文档的内容

{p 8 22 2}
{cmd:putdocx append} {it:{help filename_zh}}_1
{it:filename}_2 [{it:filename}_3 [...]]
[{cmd:,}
{help putdocx begin##appendopts:{it:append_options}}]


{marker beginopts}{...}
{synoptset 28}{...}
{synopthdr:begin_options}
{synoptline}
{synopt :{opth page:size(putdocx_begin##doc_psize:psize)}}设置文档页面大小{p_end}
{synopt :{opt land:scape}}将文档方向更改为横向{p_end}
{synopt :{opth font:(putdocx_begin##font:fspec)}}为文档设置字体、字体大小和字体颜色{p_end}
{synopt :{opth pagenum:(putdocx_begin##pnspec:pnspec)}}设置页码格式{p_end}
{synopt :{opth header:(putdocx_begin##hname:hname)}}添加页眉{p_end}
{synopt :{opth footer:(putdocx_begin##fname:fname)}}添加页脚{p_end}
{synoptline}

{marker saveopts}{...}
{synopthdr:save_options}
{synoptline}
{synopt :{opt replace}}用活动文档替换 {it:filename}{p_end}
{synopt :{opt append}}将活动文档附加到 {it:filename} 的末尾{p_end}
{synopt :{opth append:(putdocx_begin##apopts:ap_opts)}}将活动文档附加到 {it:filename} 并更改分页、页眉和页脚设置{p_end}
{synoptline}
{p 4 6 2}
只能指定 {cmd:replace}、{cmd:append} 或 
{opt append(ap_opts)} 中的一个。

{marker appendopts}{...}
{synopthdr:append_options}
{synoptline}
{synopt :{cmdab:sav:ing(}{it:filename} [{cmd:, replace}]{cmd:)}}将文档附加到 {it:filename} 并写入新的文档；使用 {cmd:replace} 来覆盖现有的 {it:filename}{p_end}
{synopt :{opt pagebreak}}在每个附加的文件上开始新的一页{p_end}
{synopt :{cmd:headsrc(first{c |}last{c |}own)}}指定要使用页眉和页脚的文档；默认是 {cmd:headsrc(first)}{p_end}
{synopt :{opt pgnumrestart}}在每个附加文档的第一页重新启动页码{p_end}
{synoptline}


{marker description}{...}
{title:描述}

{pstd}
{cmd:putdocx} {cmd:begin} 创建一个 Office Open XML ({cmd:.docx}) 文件。
这是剩余的 {cmd:putdocx} 命令修改的活动文档。

{pstd}
{cmd:putdocx} {cmd:describe} 描述活动的 {cmd:.docx} 文件。

{pstd}
{cmd:putdocx} {cmd:save} 保存并关闭 {cmd:.docx} 文件。

{pstd}
{cmd:putdocx} {cmd:clear} 不保存关闭 {cmd:.docx} 文件。

{pstd}
{cmd:putdocx} {cmd:append} 将一个或多个 {cmd:.docx} 文件的内容附加到另一个 {cmd:.docx} 文件。


{marker linkspdf}{...}
{title:PDF 文档链接}

        {mansection RPT putdocxbeginQuickstart:快速入门}

        {mansection RPT putdocxbeginRemarksandexamples:备注和示例}

{pstd}
上述部分不包含在此帮助文件中。


{marker options}{...}
{title:选项}

{pstd}
选项按照以下标题呈现：

        {help putdocx_begin##opts_putdocx_begin:putdocx begin 的选项}
        {help putdocx_begin##opts_putdocx_save:putdocx save 的选项}
        {help putdocx_begin##opts_putdocx_append:putdocx append 的选项}


{marker opts_putdocx_begin}{...}
{title:putdocx begin 的选项}

{marker doc_psize}{...}
{phang}
{opt pagesize(psize)} 设置文档的页面大小。 {it:psize} 可以是 {cmd:letter}、{cmd:legal}、{cmd:A3}、{cmd:A4} 或 {cmd:B4JIS}。 默认值为 {cmd:pagesize(letter)}。

{phang}
{opt landscape} 将文档方向从纵向（默认）更改为横向。

{marker font}{...}
{phang}
{cmd:font(}{it:fontname} [{cmd:,} {it:size} [{cmd:,}
{it:color}]]{cmd:)} 设置文档的字体、字体大小和字体颜色。  

{phang2}
{it:fontname} 可以是用户计算机上安装的任何有效字体。如果 {it:fontname} 包含空格，则必须用双引号括起来。
如果未指定 {it:fontname}，将使用计算机的默认字体。

{marker size}{...}
{phang2}
{it:size} 是一个表示字号的数值，以点为单位。默认值为 {cmd:11}。

{marker color}{...}
{phang2}
{it:color} 设置文本颜色。
{it:color} 可以是 {help putdocx_appendix##Colors:{it:颜色}} 中列出的颜色；有效的 RGB 值，格式为 {it:### ### ###}，例如 {cmd:171 248 103}；或者有效的 RRGGBB 十六进制值，格式为 {it:######}，例如 {cmd:ABF867}。

{pmore}
字体大小和字体颜色可以单独指定，而无需指定 {it:fontname}。使用 {cmd:font("",} {it:size}{cmd:)} 仅指定字号。 使用 {cmd:font("", "",} {it:color}{cmd:)} 仅指定字体颜色。

{marker pnspec}{...}
{phang}
{cmd:pagenum(}{it:pnformat} [{cmd:,} {it:start} [{cmd:,} {it:chapStyle}
[{cmd:,} {it:chapSep}]]]{cmd:)} 指定页码的格式和起始页码。

{phang2}
{it:pnformat} 指定页码格式，例如用括号括起来的小数或大写罗马数字。有关页码格式的完整列表，请参见 {help putdocx_appendix##Page_number_formats:{it:页码格式}}。

{phang2}
{it:start} 指定起始页码，必须是大于或等于 0 的整数。默认值为 1。

{marker chapstyle}{...}
{phang2}
{it:chapStyle} 指定用于章节标题的样式。默认的 {it:chapStyle} 是 {cmd:Heading1}。有关章节样式的完整列表，请参见 {help putdocx_appendix##Chapter_styles:{it:章节样式}}。

{marker chapsep}{...}
{phang2}
{it:chapSep} 指定用于分隔章节编号和页码的符号。
{it:chapSep} 可以是 {cmd:colon}、{cmd:hyphen}、{cmd:em_dash}、{cmd:en_dash} 或 {cmd:period}。 默认值为 {cmd:hyphen}。

{pmore}
在文档中包含页码时，此选项不是必需的，除非你想同时包含章节编号。要包含章节编号，指定用于指示章节的样式 ({it:chapStyle})，并可选地指定用于分隔章节和页码的符号。

{pmore}
指定 {it:chapStyle} 和 {it:chapSep} 时，章节编号将与页码一起报告。要激活这些选项，必须在 Word 中指定包含标题的多级列表样式。

{marker hname}{...}
{phang}
{opt header(hname)} 向文档添加名为 {it:hname} 的页眉。 {it:hname} 的内容（包括页码）可以通过 {cmd:putdocx paragraph} 或 {cmd:putdocx table} 定义。 {it:hname} 必须是符合 Stata 命名规范的有效名称；见 {findalias frnames}。

{marker fname}{...}
{phang}
{opt footer(fname)} 向文档添加名为 {it:fname} 的页脚。 {it:fname} 的内容（包括页码）可以通过 {cmd:putdocx paragraph} 或 {cmd:putdocx table} 定义。 {it:fname} 必须是符合 Stata 命名规范的有效名称；见 {findalias frnames}。


{marker opts_putdocx_save}{...}
{title:putdocx save 的选项}

{phang}
{cmd:replace} 指定如果 {it:filename} 存在，则使用内存中的文档内容覆盖它。

{phang}
{cmd:append} 指定将内存中的文档内容附加到 {it:filename} 的末尾。

{marker apopts}{...}
{phang}
{opt append(ap_opts)} 指定将内存中的文档内容附加到 {it:filename} 并指示是否在新页面中添加新内容，使用哪个页眉和页脚，以及是否重新启动每个文档的页码。 {it:ap_opts} 为 {cmd:pagebreak}、{cmd:headsrc()} 和 {cmd:pgnumrestart}。

{phang2}
    {cmd:pagebreak} 在新页面开始附加活动文档。 

{phang2}
    {cmd:headsrc(file{c |}active{c |}own)} 指定将用于文档中的页眉和页脚的文件。 

{phang3}
    {cmd:headsrc(file)} 是默认值；它在整个文档中应用 {it:filename} 的页眉和页脚。 

{phang3}
    {cmd:headsrc(active)} 在整个文档中应用来自活动文档的页眉和页脚。

{phang3}
    {cmd:headsrc(own)} 指定附加的每个文档（{it:filename} 和活动文档）使用自己的页眉和页脚。如果活动文档没有页眉或页脚，它将从 {it:filename} 继承页眉或页脚。
    
{phang2}
    {cmd:pgnumrestart} 在每个文档中重新启动页码； {cmd:pagebreak} 必须与 {cmd:pgnumrestart} 一起指定。


{marker opts_putdocx_append}{...}
{title:putdocx append 的选项}

{phang}
{cmd:saving(}{it:{help filename_zh}} [{cmd:, replace}]{cmd:)} 指定将现有文档 {it:filename}_2 的内容附加到 {it:filename}_1 的末尾，并将结果写入新文档 {it:filename}。
如果 {it:filename} 已存在，可以通过指定 {cmd:replace} 来覆盖它。默认情况下， {it:filename}_1 被覆盖为通过附加 {it:filename}_2 的内容创建的文档。

{pmore}
如果指定了两个以上的文件，它们的内容将按照列出的文件顺序附加。例如， {it:filename}_2 附加于 {it:filename}_1， {it:filename}_3 附加于第一次附加的结果，依此类推。

{phang}
{cmd:pagebreak} 在每个附加的文件上开始新的一页。

{phang}
{cmd:headsrc(first{c |}last{c |}own)} 指定要使用的文件的页眉和页脚。 

{phang2}
{cmd:headsrc(first)}，这是默认值，指定来自第一个附加文档 {it:filename}_1 的页眉和页脚在整个文档中应用。 

{phang2}
{cmd:headsrc(last)} 指定来自最后一个附加文档的页眉和页脚在整个文档中应用。 {cmd:headsrc(last)} 不能与 {cmd:pgnumrestart} 一起指定。 

{phang2}
{cmd:headsrc(own)} 指定每个附加的文件使用自己的页眉和页脚。如果任何文件没有页眉或页脚，它将从上一个文档继承页眉或页脚。

{phang}
{cmd:pgnumrestart} 在每个附加文档的第一页重新启动页码。 {cmd:pagebreak} 选项必须与 {cmd:pgnumrestart} 一起指定。 该选项不能与 {cmd:headsrc(last)} 一起指定。


{marker examples}{...}
{title:示例}

    {hline}

{pstd}在内存中创建一个 {cmd:.docx} 文档{p_end}
{phang2}{cmd:. putdocx begin}{p_end}

{pstd}向活动文档添加一个新段落并附加文本{p_end}
{phang2}{cmd:. putdocx paragraph}{p_end}
{phang2}{cmd:. putdocx text ("Fall report")}{p_end}

{pstd}
描述活动文档{p_end}
	{cmd:. putdocx describe}

{pstd}
将文档保存到磁盘{p_end}
	{cmd:. putdocx save report1.docx}

    {hline}

{pstd}创建一个带有页眉 {cmd:header1} 的 {cmd:.docx} 文档{p_end}
{phang2}{cmd:. putdocx begin, header(header1)}{p_end}

{pstd}向页眉 {cmd:header1} 添加内容{p_end}
{phang2}{cmd:. putdocx paragraph, toheader(header1)}{p_end}
{phang2}{cmd:. putdocx text ("Winter report")}{p_end}

{pstd}
将文档保存到磁盘{p_end}
	{cmd:. putdocx save report2.docx}

{pstd}将报告 2 的内容附加到报告 1 的末尾{p_end}
{phang2}{cmd:. putdocx append report1.docx report2.docx}{p_end}

    {hline}

{pstd}创建一个带有横向布局的 {cmd:.docx} 文档{p_end}
{phang2}{cmd:. putdocx begin, landscape}{p_end}

{pstd}不保存直接关闭文档{p_end}
{phang2}{cmd:. putdocx clear}{p_end}

    {hline}



{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <putdocx_begin.sthlp>}