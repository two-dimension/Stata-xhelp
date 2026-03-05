{smcl}
{* *! version 1.0.0  08may2019}{...}
{vieweralsosee "[RPT] putdocx pagebreak" "mansection RPT putdocxpagebreak"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[RPT] putdocx intro" "help putdocx intro"}{...}
{vieweralsosee "[RPT] putdocx begin" "help putdocx begin"}{...}
{vieweralsosee "[RPT] putdocx paragraph" "help putdocx paragraph"}{...}
{vieweralsosee "[RPT] putdocx table" "help putdocx table"}{...}
{vieweralsosee "[RPT] Appendix for putdocx" "help putdocx_appendix_zh"}{...}
{viewerjumpto "Syntax" "putdocx pagebreak##syntax"}{...}
{viewerjumpto "Description" "putdocx pagebreak##description"}{...}
{viewerjumpto "Links to PDF documentation" "putdocx pagebreak##linkspdf"}{...}
{viewerjumpto "Options" "putdocx pagebreak##options"}{...}
{viewerjumpto "Examples" "putdocx pagebreak##examples"}
{help putdocx_pagebreak:English Version}
{hline}{...}
{p2colset 1 28 30 2}{...}
{p2col:{bf:[RPT] putdocx pagebreak} {hline 2}}向 Office Open XML
(.docx) 文件添加分页符{p_end}
{p2col:}({mansection RPT putdocxpagebreak:查看完整 PDF 手册条目}){p_end}
{p2colreset}{...}


{marker syntax}{...}
{title:语法}

{phang}
向文档添加分页符

{p 8 22 2}
{cmd:putdocx pagebreak}


{phang}
向文档添加章节分隔符

{p 8 22 2}
{cmd:putdocx sectionbreak}
[{cmd:,} {help putdocx_pagebreak##opts:{it:选项}}]


{marker opts}{...}
{synoptset 20}{...}
{synopthdr}
{synoptline}
{synopt :{opth page:size(putdocx_pagebreak##psize:psize)}}设置章节的页面大小{p_end}
{synopt :{opt land:scape}}对章节使用横向方向{p_end}
{synopt :{opth pagenum:(putdocx_pagebreak##pnspec:pnspec)}}设置页码格式{p_end}
{synopt :{opth header:(putdocx_pagebreak##hname:hname)}}添加页眉{p_end}
{synopt :{opth footer:(putdocx_pagebreak##fname:fname)}}添加页脚{p_end}
{synoptline}


{marker description}{...}
{title:描述}

{pstd}
{cmd:putdocx pagebreak} 向文档添加分页符，将后续内容放置在文档的下一页面。

{pstd}
{cmd:putdocx} {cmd:sectionbreak} 向文档添加新章节，并在下一页开始该章节。这允许您在单个文档中变化页面的格式。此命令在您希望混合纵向和横向布局或在文档的不同章节间应用不同的页眉和页脚时最为有用。


{marker linkspdf}{...}
{title:PDF 文档链接}

        {mansection RPT putdocxpagebreakQuickstart:快速开始}

        {mansection RPT putdocxpagebreakRemarksandexamples:备注和示例}

{pstd}
上述部分未包含在此帮助文件中。



{marker options}{...}
{title:选项}

{marker psize}{...}
{phang}
{opt pagesize(psize)} 设置章节的页面大小。{it:psize} 可以为 {cmd:letter}、{cmd:legal}、{cmd:A3}、{cmd:A4} 或 {cmd:B4JIS}。默认值为 {cmd:pagesize(letter)}。

{phang}
{cmd:landscape} 将章节方向从纵向（默认）更改为横向。

{marker pnspec}{...}
{phang}
{cmd:pagenum(}{it:pnformat} [{cmd:,} {it:start} [{cmd:,} {it:chapStyle}
[{cmd:,} {it:chapSep}]]]{cmd:)} 指定页码的格式和起始页码。

{phang2}
{it:pnformat} 指定页码格式，例如用括号括起的十进制数字或大写罗马数字。完整列表见 {help putdocx appendix##Page_number_formats:{it:页码格式}} 的 {helpb putdocx appendix:[RPT] putdocx 附录}。

{phang2}
{it:start} 指定起始页码，必须是大于或等于 0 的整数。默认值为 1。

{marker chapstyle}{...}
{phang2}
{it:chapStyle} 指示章节标题使用的样式。默认的 {it:chapStyle} 为 {cmd:Heading1}。完整的章节样式列表见 {help putdocx appendix##Chapter_styles:{it:章节样式}} 的 {helpb putdocx appendix:[RPT] putdocx 附录}。

{marker chapsep}{...}
{phang2}
{it:chapSep} 指定用于分隔章节编号和页码的符号。{it:chapSep} 可以为 {cmd:colon}、{cmd:hyphen}、{cmd:em_dash}、{cmd:en_dash} 或 {cmd:period}。默认值为 {cmd:hyphen}。

{pmore}
此选项不是在您的文档中包含页码所必需的，除非您还想包括章节编号。要包含章节编号，请指定用于指示章节的样式（{it:chapStyle}），并可选地，指定用于分隔章节和页码的符号。

{pmore}
当指定 {it:chapStyle} 和 {it:chapSep} 时，章节编号也将与页码一起呈现。要激活这些选项，您必须在 Word 中指定包含标题的多级列表样式。

{marker hname}{...}
{phang}
{opt header(hname)} 向章节添加页眉 {it:hname}。{it:hname} 的内容，包括页码，可以通过 {cmd:putdocx paragraph} 或 {cmd:putdocx table} 定义。{it:hname} 必须根据 Stata 的命名约定是有效名称；请参阅 {findalias frnames}。

{marker fname}{...}
{phang}
{opt footer(fname)} 向章节添加页脚 {it:fname}。{it:fname} 的内容，包括页码，可以通过 {cmd:putdocx paragraph} 或 {cmd:putdocx table} 定义。{it:fname} 必须根据 Stata 的命名约定是有效名称；请参阅 {findalias frnames}。


{marker examples}{...}
{title:示例}

{pstd}设置{p_end}
{phang2}{cmd:. sysuse auto}{p_end}

{pstd}在内存中创建一个 {cmd:.docx} 文档{p_end}
{phang2}{cmd:. putdocx begin}{p_end}

{pstd}使用 {cmd:summarize} 获取 {cmd:mpg} 的摘要统计信息{p_end}
{phang2}{cmd:. summarize mpg}{p_end}

{pstd}向活动文档添加新段落并附加文本{p_end}
{phang2}{cmd:. putdocx paragraph}{p_end}
{phang2}{cmd:. putdocx text ("在此数据集中，有 `r(N)' 辆汽车模型。")}{p_end}

{pstd}以页眉 "估计结果" 开始一个章节{p_end}
{phang2}{cmd:. putdocx sectionbreak, header(estimates)}{p_end}
{phang2}{cmd:. putdocx paragraph, toheader(estimates)}{p_end}
{phang2}{cmd:. putdocx text ("估计结果")}{p_end}

{pstd}
拟合 {cmd:mpg} 作为 {cmd:weight} 和 {cmd:foreign} 的函数的线性回归模型{p_end}
	{cmd:. regress mpg weight foreign}

{pstd}
将估计结果作为名为 {cmd:tbl1} 的表导出到文档{p_end}
{phang2}{cmd:. putdocx table tbl1 = etable, width(100%)}

{pstd}以无页眉开始一个章节{p_end}
{phang2}{cmd:. putdocx sectionbreak, header(none)}{p_end}
{phang2}{cmd:. putdocx paragraph, toheader(none)}{p_end}
{phang2}{cmd:. putdocx text (" ")}{p_end}

{pstd}向活动文档添加新段落并附加文本{p_end}
{phang2}{cmd:. putdocx paragraph}{p_end}
{phang2}{cmd:. putdocx text (" 上面我们拟合了一个线性回归。 ")}{p_end}

{pstd}
将文档保存到磁盘{p_end}
	{cmd:. putdocx save example.docx}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <putdocx_pagebreak.sthlp>}