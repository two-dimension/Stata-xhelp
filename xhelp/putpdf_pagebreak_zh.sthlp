{smcl}
{* *! version 1.0.0  10may2019}{...}
{vieweralsosee "[RPT] putpdf pagebreak" "mansection RPT putpdfpagebreak"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[RPT] putpdf intro" "help putpdf intro"}{...}
{vieweralsosee "[RPT] putpdf begin" "help putpdf begin"}{...}
{vieweralsosee "[RPT] putpdf paragraph" "help putpdf paragraph"}{...}
{vieweralsosee "[RPT] putpdf table" "help putpdf table"}{...}
{vieweralsosee "[RPT] Appendix for putpdf" "help putpdf appendix"}{...}
{viewerjumpto "Syntax" "putpdf pagebreak##syntax"}{...}
{viewerjumpto "Description" "putpdf pagebreak##description"}{...}
{viewerjumpto "Links to PDF documentation" "putpdf pagebreak##linkspdf"}{...}
{viewerjumpto "Options" "putpdf pagebreak##options"}{...}
{viewerjumpto "Examples" "putpdf pagebreak##examples"}
{help putpdf_pagebreak:English Version}
{hline}{...}
{p2colset 1 27 29 2}{...}
{p2col:{bf:[RPT] putpdf pagebreak} {hline 2}}向PDF文件添加分页{p_end}
{p2col:}({mansection RPT putpdfpagebreak:查看完整的PDF手册条目}){p_end}
{p2colreset}{...}


{marker syntax}{...}
{title:语法}

{phang}
向文档添加分页

{p 8 22 2}
{cmd:putpdf pagebreak}


{phang}
向文档添加节分隔

{p 8 22 2}
{cmd:putpdf sectionbreak}
[{cmd:,} {help putpdf_pagebreak##sectionopts:{it:section_options}}]


{marker sectionopts}{...}
{synoptset 28}{...}
{synopthdr:节选项}
{synoptline}
{synopt :{opth page:size(putpdf_pagebreak##section_psize:psize)}}设置节的页面大小{p_end}
{synopt :{opt land:scape}}将节方向设置为横向{p_end}
{synopt :{opth font:(putpdf_pagebreak##fspec:fspec)}}设置字体、字体大小和字体颜色{p_end}
{synopt :{opth halign:(putpdf_pagebreak##section_hvalue:hvalue)}}设置节的水平对齐方式{p_end}
{synopt :{cmd:margin(}{help putpdf_pagebreak##section_marg_type:{it:type}}{cmd:,} {it:#}[{help putdocx_paragraph##unit:{it:unit}}]{cmd:)}}设置节的页面边距{p_end}
{synopt :{opth bgcolor:(putpdf_pagebreak##color:color)}}设置背景颜色{p_end}
{synoptline}


{marker description}{...}
{title:描述}

{pstd}
{cmd:putpdf pagebreak} 在文档中添加分页，将后续内容放置在文档的下一页。

{pstd}
{cmd:putpdf} {cmd:sectionbreak} 在活动文档中添加一个新的节，该节将在下一页开始。它允许您在单个文档中变更页面大小、方向、边距和其他页面属性。当您希望混合纵向和横向布局时，这种节的格式化特别有用。


{marker linkspdf}{...}
{title:PDF文档链接}

        {mansection RPT putpdfpagebreakQuickstart:快速入门}

        {mansection RPT putpdfpagebreakRemarksandexamples:备注和示例}

{pstd}
上述部分未包含在本帮助文件中。


{marker options}{...}
{title:选项}

{marker section_psize}{...}
{phang}
{opt pagesize(psize)} 设置节的页面大小。 {it:psize} 可以是 {cmd:letter}、{cmd:legal}、{cmd:A3}、{cmd:A4}、{cmd:A5}、{cmd:B4} 或 {cmd:B5}。 默认值为 {cmd:pagesize(letter)}。

{phang}
{cmd:landscape} 将节方向从竖向（默认）更改为横向。

{phang}
{cmd:font(}{it:fontname}
[{cmd:,} {it:size}
[{cmd:,} {it:color}]]{cmd:)}
设置文档的字体、字体大小和字体颜色。

{marker fspec}{...}
{phang2}
{it:fontname} 可以是用户计算机上安装的任何受支持字体。支持基础的14种字体、Type 1字体以及扩展名为 {cmd:.ttf} 和 {cmd:.ttc} 的TrueType字体。无法嵌入的TrueType字体不能使用。如果 {it:fontname} 包含空格，则必须使用双引号括起来。默认字体为 {cmd:Helvetica}。

{marker size}{...}
{phang2}
{it:size} 是以点为单位表示的字体大小的数值。 默认值为 {cmd:11}。

{marker color}{...}
{phang2}
{it:color} 设置文本颜色。 {it:color} 可以是
{help putpdf_appendix##Colors:{it:颜色}} 中列出的颜色；
有效的RGB值，格式为 {it:### ### ###}，例如 {cmd:171 248 103}；
或有效的RRGGBB十六进制值，格式为 {it:######}，例如 {cmd:ABF867}。

{pmore}
字体大小和字体颜色可以单独指定，而不必指定 {it:fontname}。 使用 {cmd:font("",} {it:size}{cmd:)} 仅指定字体大小。 使用 {cmd:font("", "",} {it:color}{cmd:)} 仅指定字体颜色。在这两种情况下，系统将使用默认字体。

{marker section_hvalue}{...}
{phang}
{opt halign(hvalue)} 设置节内段落、图像和表格的水平对齐方式。 {it:hvalue} 可以是 {cmd:left}、{cmd:right} 或 {cmd:center}。 默认值为 {cmd:halign(left)}。

{marker section_marg_type}{...}
{phang}
{cmd:margin(}{it:type}{cmd:,} {it:#}[{help putdocx_paragraph##unit:{it:unit}}]{cmd:)}
设置文档的页面边距。此选项可以在单个命令中多次指定，以考虑不同的边距设置。

{marker type}{...}
{phang2}
{it:type} 确定文档内部边距的位置。 {it:type} 可以是 {cmd:top}、{cmd:left}、{cmd:bottom} 或 {cmd:right}。

{marker unit}{...}
{phang2}
包括帮助 put_units

{phang}
{opt bgcolor(color)}
设置文档的背景颜色。 {it:color} 可以是
{help putpdf_appendix##Colors:{it:颜色}} 中列出的颜色；
有效的RGB值，格式为 {it:### ### ###}，例如 {cmd:171 248 103}；
或有效的RRGGBB十六进制值，格式为 {it:######}，例如 {cmd:ABF867}。


{marker examples}{...}
{title:示例}

{pstd}设置{p_end}
{phang2}{cmd:. sysuse auto}{p_end}

{pstd}在内存中创建 {cmd:.pdf} 文档{p_end}
{phang2}{cmd:. putpdf begin}{p_end}

{pstd}使用 {cmd:summarize} 获取 {cmd:mpg} 的摘要统计{p_end}
{phang2}{cmd:. summarize mpg}{p_end}

{pstd}向活动文档添加新段落并附加文本{p_end}
{phang2}{cmd:. putpdf paragraph}{p_end}
{phang2}{cmd:. putpdf text ("在这个数据集中，有 `r(N)' 款汽车。")}{p_end}

{pstd}以页边距为1英寸的新节开始{p_end}
	{cmd:. putpdf sectionbreak, margin(left, 1) margin(right, 1)}

{pstd}
适配 {cmd:mpg} 关于 {cmd:weight} 和 {cmd:foreign} 的线性回归模型{p_end}
	{cmd:. regress mpg weight foreign}

{pstd}
将估计结果导出为名为 {cmd:tbl1} 的文档表格{p_end}
{phang2}{cmd:. putpdf table tbl1 = etable, width(100%)} 

{pstd}
将文档保存到磁盘{p_end}
	{cmd:. putpdf save example.pdf}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <putpdf_pagebreak.sthlp>}