{smcl}
{* *! version 1.0.0  08may2019}{...}
{vieweralsosee "[RPT] putpdf paragraph" "mansection RPT putpdfparagraph"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[RPT] putpdf intro" "help putpdf intro"}{...}
{vieweralsosee "[RPT] putpdf begin" "help putpdf begin"}{...}
{vieweralsosee "[RPT] putpdf pagebreak" "help putpdf pagebreak"}{...}
{vieweralsosee "[RPT] putpdf table" "help putpdf table"}{...}
{vieweralsosee "[RPT] Appendix for putpdf" "help putpdf appendix"}{...}
{viewerjumpto "Syntax" "putpdf paragraph##syntax"}{...}
{viewerjumpto "Description" "putpdf paragraph##description"}{...}
{viewerjumpto "Links to PDF documentation" "putpdf paragraph##linkspdf"}{...}
{viewerjumpto "Options" "putpdf paragraph##options"}{...}
{viewerjumpto "Examples" "putpdf paragraph##examples"}
{help putpdf_paragraph:English Version}
{hline}{...}
{p2colset 1 27 29 2}{...}
{p2col:{bf:[RPT] putpdf paragraph} {hline 2}}向 PDF 文件添加文本或图像{p_end}
{p2col:}({mansection RPT putpdfparagraph:查看完整的 PDF 手册条目}){p_end}
{p2colreset}{...}


{marker syntax}{...}
{title:语法}

{phang}
将段落添加到文档中

{p 8 22 2}
{cmd:putpdf paragraph}
[{cmd:,} {help putpdf_paragraph##paraopts:{it:段落选项}}]


{phang}
向段落添加文本

{p 8 22 2}
{cmd:putpdf text} {cmd:(}{help exp_zh:{it:exp}}{cmd:)}
[{cmd:,} {help putpdf_paragraph##textopts:{it:文本选项}}]


{phang}
向段落添加图像

{p 8 22 2}
{cmd:putpdf image} {help filename_zh:{it:文件名}}
[{cmd:,} {help putpdf_paragraph##imageopts:{it:图像选项}}]

{phang}
{it:filename} 是图像文件的完整路径或当前工作目录的相对路径。


{marker paraopts}{...}
{synoptset 28}{...}
{synopthdr:段落选项}
{synoptline}
{synopt :{opth font:(putpdf_paragraph##fspec:字体规格)}}设置字体、字号和字体颜色{p_end}
{synopt :{opth halign:(putpdf_paragraph##para_hvalue:水平对齐值)}}设置段落对齐{p_end}
{synopt :{opth valign:(putpdf_paragraph##para_vvalue:垂直对齐值)}}设置每行字符的垂直对齐方式{p_end}
{synopt :{cmd:indent(}{help putpdf_paragraph##indenttype:{it:缩进类型}}{cmd:,} {it:#}[{help putdocx_paragraph##unit:{it:单位}}]{cmd:)}}设置段落缩进{p_end}
{synopt :{cmd:spacing(}{help putpdf_paragraph##para_position:{it:位置}}{cmd:,} {it:#}[{help putdocx_paragraph##unit:{it:单位}}]{cmd:)}}设置文本行间距{p_end}
{synopt :{opth bgcolor:(putpdf_paragraph##color:颜色)}}设置背景颜色{p_end}
{synoptline}

{marker textopts}{...}
{synoptset 28}{...}
{synopthdr:文本选项}
{synoptline}
{synopt :{opth nfor:mat(%fmt)}}指定文本的数值格式{p_end}
{synopt :{opth font:(putpdf_paragraph##fspec:字体规格)}}设置字体、字号和字体颜色{p_end}
{synopt :{opt bold}}将文本格式化为粗体{p_end}
{synopt :{opt italic}}将文本格式化为斜体{p_end}
{synopt :{cmd:script(sub{c |}super)}}设置文本的下标或上标格式{p_end}
{synopt :{opt strike:out}}划掉文本{p_end}
{synopt :{opt underl:ine}}为文本加下划线{p_end}
{synopt :{opth bgcolor:(putpdf_paragraph##color:颜色)}}设置背景颜色{p_end}
{synopt :{cmd:linebreak}[{cmd:(}{it:#}{cmd:)}]}在文本后添加换行符{p_end}
{synopt :{opt allc:aps}}将文本格式化为全大写{p_end}
{synoptline}

{marker imageopts}{...}
{synoptset 28}{...}
{synopthdr:图像选项}
{synoptline}
{synopt :{cmdab:w:idth(}{it:#}[{help putdocx_paragraph##unit:{it:单位}}]{cmd:)}}设置图像宽度{p_end}
{synopt :{cmdab:h:eight(}{it:#}[{help putdocx_paragraph##unit:{it:单位}}]{cmd:)}}设置图像高度{p_end}
{synopt :{cmd:linebreak}[{cmd:(}{it:#}{cmd:)}]}在图像后添加换行符{p_end}
{synoptline}

{marker fspec}
{phang}
{it:fspec} 是

{pmore}
{it:字体名称} [{cmd:,} {it:大小} [{cmd:,} {it:颜色}]]

{marker font}{...}
{pmore2}
{it:字体名称} 可以是用户计算机上安装的任何支持的字体。
支持基本 14 种字体、Type 1 字体和扩展名为
{cmd:.ttf} 和 {cmd:.ttc} 的 TrueType 字体。不能嵌入的 TrueType 字体无法使用。如果 {it:字体名称} 包含空格，则必须用双引号括起来。默认字体是 {cmd:Helvetica}。

{marker size}{...}
{pmore2}
{it:大小} 是表示字体大小的数值，以磅为单位。
默认值为 {cmd:11}。

{pmore2}
{it:颜色} 设置文本颜色。

{marker unit}{...}
{phang}
包括帮助 put_units

{marker color}{...}
{phang}
{it:颜色} 可以是{help putpdf_appendix##Colors:{it:颜色}}中列出的
颜色之一；也可以是有效的 RGB 值，形式为 {it:### ### ###}，例如，
{cmd:171 248 103}；或者是有效的 RRGGBB 十六进制值，形式为 {it:######}，例如，{cmd:ABF867}。


{marker description}{...}
{title:描述}

{pstd}
{cmd:putpdf} {cmd:paragraph} 向活动文档添加新段落。新创建的段落成为活动段落。所有后续的文本或图像将附加到活动段落。

{pstd}
{cmd:putpdf} {cmd:text} 向由 {cmd:putpdf} {cmd:paragraph} 创建的段落添加内容。文本可以是普通文本字符串或任何有效的 Stata 表达式（参见 {findalias frexp}）。

{pstd}
{cmd:putpdf} {cmd:image} 将便携式网络图形（{cmd:.png}）或 JPEG（{cmd:.jpg}）文件嵌入到段落中。


{marker linkspdf}{...}
{title:PDF 文档链接}

        {mansection RPT putpdfparagraphQuickstart:快速入门}

        {mansection RPT putpdfparagraphRemarksandexamples:备注和示例}

{pstd}
上述部分未包含在本帮助文件中。


{marker options}{...}
{title:选项}

{pstd}
选项按以下标题列出：

        {help putpdf_paragraph##opts_putpdf_paragraph:putpdf 段落选项}
        {help putpdf_paragraph##opts_putpdf_text:putpdf 文本选项}
        {help putpdf_paragraph##opts_putpdf_image:putpdf 图像选项}


{marker opts_putpdf_paragraph}{...}
{title:putpdf 段落选项}

{phang}
{cmd:font(}{help putpdf_paragraph##font:{it:字体名称}}
[{cmd:,} {help putpdf_paragraph##size:{it:大小}}
[{cmd:,} {help putpdf_paragraph##color:{it:颜色}}]]{cmd:)}
设置段落内文本的字体、字号和字体颜色。
字号和字体颜色可以单独指定，而不必指定 {it:字体名称}。使用 {cmd:font("",} {it:大小}{cmd:)} 仅指定字号。
使用 {cmd:font("", "",} {it:颜色}{cmd:)} 仅指定字体颜色。对于这两种情况，将使用默认字体。

{pmore}
在 {cmd:putpdf paragraph} 中指定 {cmd:font()} 将覆盖使用 {cmd:putpdf begin} 指定的字体设置。

{marker para_hvalue}{...}
{phang}
{opt halign(hvalue)} 设置段落中文本的水平对齐方式。 {it:hvalue} 可以是 {cmd:left}、{cmd:right}、{cmd:center}、{cmd:justified} 或 {cmd:distribute}。 {cmd:distribute} 和 {cmd:justified} 将文本均等地对齐在左右边距之间，但 {cmd:distribute} 还会改变单词和字符之间的间距。默认值为 {cmd:halign(left)}。

{marker para_vvalue}{...}
{phang}
{opt valign(vvalue)} 设置当段落包含不同大小字符时，每行字符的垂直对齐方式。 {it:vvalue} 可以是 {cmd:baseline}、{cmd:bottom}、{cmd:center} 或 {cmd:top}。默认值为 {cmd:valign(baseline)}。

{marker indenttype}{...}
{phang}
{cmd:indent(}{it:缩进类型}{cmd:,} {it:#}[{help putdocx_paragraph##unit:{it:单位}}]{cmd:)}
指定段落缩进 {it:#} {it:单位}。
{it:缩进类型} 可以是 {cmd:left}、{cmd:right} 或 {cmd:para}。 {cmd:left} 和 {cmd:right} 分别从左侧或右侧缩进 {it:#} {it:单位}。 {cmd:para} 使用标准段落缩进，并将第一行缩进 {it:#} 英寸，除非指定了其他 {it:单位}。此选项可以在单个命令中多次指定，以适应不同的缩进设置。

{marker para_position}{...}
{phang}
{cmd:spacing(}{it:位置}{cmd:,} {it:#}[{help putdocx_paragraph##unit:{it:单位}}]{cmd:)}
设置文本行之间的间距。 {it:位置} 可以是 {cmd:before}、{cmd:after} 或 {cmd:line}。 {cmd:before} 指定当前段落第一行之前的空间， {cmd:after} 指定当前段落最后一行之后的空间， {cmd:line} 指定当前段落内部行之间的空间。此选项可以在单个命令中多次指定，以适应不同的间距设置。

{phang}
{opth bgcolor:(putpdf_paragraph##color:颜色)}
设置段落的背景颜色。

{pmore}
在 {cmd:putpdf paragraph} 中指定 {cmd:bgcolor()} 将覆盖来自 {cmd:putpdf begin} 的背景颜色设定。


{marker opts_putpdf_text}{...}
{title:putpdf 文本选项}

{phang}
{opth nformat(%fmt)} 指定当新文本内容为数值时的文本数值格式。此设置对内容为字符串时无效。

{phang}
{cmd:font(}{help putpdf_paragraph##font:{it:字体名称}}
[{cmd:,} {help putpdf_paragraph##size:{it:大小}}
[{cmd:,} {help putpdf_paragraph##color:{it:颜色}}]]{cmd:)}
设置活动段落中新增文本的字体、字号和字体颜色。字号和字体颜色可以单独指定，而不必指定 {it:字体名称}。使用 {cmd:font("",} {it:大小}{cmd:)} 仅指定字号。使用 {cmd:font("", "",} {it:颜色}{cmd:)} 仅指定字体颜色。对于这两种情况，将使用默认字体。

{pmore}
在 {cmd:putpdf text} 中指定 {cmd:font()} 将覆盖所有其他字体设置，包括与 {cmd:putpdf begin} 和 {cmd:putpdf paragraph} 指定的字体设置。

{phang}
{cmd:bold} 指定活动段落中新文本的格式为粗体。

{phang}
{cmd:italic} 指定活动段落中新文本的格式为斜体。

{phang}
{cmd:script(sub{c |}super)} 改变新文本的脚本样式。 {cmd:script(sub)} 使文本为下标。 {cmd:script(super)} 使文本为上标。

{phang}
{cmd:strikeout} 指定活动段落中新文本带有划掉标记。

{phang}
{cmd:underline} 指定活动段落中新文本带有下划线。

{phang}
{opth bgcolor:(putpdf_paragraph##color:颜色)}
设置活动段落的背景颜色。

{pmore}
在 {cmd:putpdf text} 中指定 {cmd:bgcolor()} 将覆盖来自 {cmd:putpdf begin} 和 {cmd:putpdf paragraph} 的背景颜色设定。

{phang}
{cmd:linebreak}[{cmd:(}{it:#}{cmd:)}] 指定在新文本后添加一个或 {it:#} 个换行符。

{phang}
{cmd:allcaps} 指定活动段落中新文本的所有字母为大写。


{marker opts_putpdf_image}{...}
{title:putpdf 图像选项}

{phang}
{cmd:width(}{it:#}[{help putdocx_paragraph##unit:{it:单位}}]{cmd:)} 设置图像的宽度。如果宽度大于文档的主体宽度，则使用主体宽度。如果未指定 {cmd:width()}，则使用默认大小；默认大小由图像信息和文档的主体宽度决定。

{phang}
{cmd:height(}{it:#}[{help putdocx_paragraph##unit:{it:单位}}]{cmd:)} 设置图像的高度。如果未指定 {cmd:height()}，则图像的高度由图像的宽度和纵横比决定。

{phang}
{cmd:linebreak}[{cmd:(}{it:#}{cmd:)}] 指定在新图像后添加一个或 {it:#} 个换行符。


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
{phang2}{cmd:. putpdf text ("在此数据集中，有 `r(N)' 个模型")}{p_end}
{phang2}{cmd:. putpdf text (" 的汽车。其中最大 MPG 值为 ")}{p_end}
{phang2}{cmd:. putpdf text (r(max)), bold}{p_end}
{phang2}{cmd:. putpdf text (".")}{p_end}

{pstd}
{cmd:putpdf text} 可用于将长句子分成几部分，段落中的每一部分可以自定义为不同的样式。上述 {cmd:r(max)} 格式化为粗体。

{pstd}创建散点图并将图形导出为 {cmd:.png} 文件{p_end}
        {cmd:. scatter mpg price}
	{cmd:. graph export auto.png}
	
{pstd}
在一个新段落中添加 {cmd:.png} 文件，且段落水平居中{p_end}
	{cmd:. putpdf paragraph, halign(center)}
	{cmd:. putpdf image auto.png, width(4)}

{pstd}
将文档保存到磁盘{p_end}
	{cmd:. putpdf save example.pdf}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <putpdf_paragraph.sthlp>}