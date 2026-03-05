{smcl}
{* *! version 1.0.0  10may2019}{...}
{vieweralsosee "[RPT] putdocx paragraph" "mansection RPT putdocxparagraph"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[RPT] putdocx intro" "help putdocx intro"}{...}
{vieweralsosee "[RPT] putdocx pagebreak" "help putdocx pagebreak"}{...}
{vieweralsosee "[RPT] putdocx paragraph" "help putdocx paragraph"}{...}
{vieweralsosee "[RPT] putdocx table" "help putdocx table"}{...}
{vieweralsosee "[RPT] Appendix for putdocx" "help putdocx_appendix_zh"}{...}
{viewerjumpto "Syntax" "putdocx paragraph##syntax"}{...}
{viewerjumpto "Description" "putdocx paragraph##description"}{...}
{viewerjumpto "Links to PDF documentation" "putdocx paragraph##linkspdf"}{...}
{viewerjumpto "Options" "putdocx paragraph##options"}{...}
{viewerjumpto "Examples" "putdocx paragraph##examples"}
{help putdocx_paragraph:English Version}
{hline}{...}
{p2colset 1 28 30 2}{...}
{p2col:{bf:[RPT] putdocx paragraph} {hline 2}}向 Office Open XML (.docx) 文件添加文本或图像{p_end}
{p2col:}({mansection RPT putdocxparagraph:查看完整的 PDF 手册条目}){p_end}
{p2colreset}{...}


{marker syntax}{...}
{title:语法}

{phang}
向文档添加段落

{p 8 22 2}
{cmd:putdocx paragraph}
[{cmd:,}
{help putdocx_paragraph##paraopts:{it:段落选项}}]


{phang}
向段落添加文本

{p 8 22 2}
{cmd:putdocx text} {cmd:(}{help exp_zh:{it:表达式}}{cmd:)}
[{cmd:,}
{help putdocx_paragraph##textopts:{it:文本选项}}]


{phang}
用一块文本添加一个段落

{p 8 22 2}
{cmd:putdocx textblock begin}


{phang}
向活动段落附加一块文本

{p 8 22 2}
{cmd:putdocx textblock append}


{phang}
结束用 {cmd:putdocx} {cmd:textblock} {cmd:begin} 或 {cmd:putdocx} {cmd:textblock} {cmd:append} 启动的文本块

{p 8 22 2}
{cmd:putdocx textblock end}


{phang}
向段落添加页码（将加入页眉或页脚）

{p 8 22 2}
{cmd:putdocx pagenumber}
[{cmd:,}
{help putdocx_paragraph##textopts:{it:文本选项}}
{cmd:totalpages}]


{phang}
将文本文件作为预格式化文本块添加

{p 8 22 2}
{cmd:putdocx textfile} {it:文本文件}
[{cmd:,} {cmd:append}
{cmd:stopat(}{help strings_zh:{it:字符串}} [{cmd:,}
{help putdocx_paragraph##opt_putdocx_textfile:{it:stopatopt}}]{cmd:)}]


{phang}
向段落添加图像

{p 8 22 2}
{cmd:putdocx image} {it:{help 文件名}}
[{cmd:,} {help putdocx_paragraph##imageopts:{it:图像选项}}]

{phang}
{it:文件名} 是指向图像文件的完整路径或相对于当前工作目录的路径。


{marker paraopts}{...}
{synoptset 28}{...}
{synopthdr:段落选项}
{synoptline}
{synopt :{opth style:(putdocx_paragraph##pstyle:pstyle)}}使用特定样式设置段落文本{p_end}
{synopt :{opth font:(putdocx_paragraph##fspec:fspec)}}设置字体、字体大小和字体颜色{p_end}
{synopt :{opth halign:(putdocx_paragraph##para_hvalue:hvalue)}}设置段落对齐{p_end}
{synopt :{opth valign:(putdocx_paragraph##para_vvalue:vvalue)}}设置每行字符的垂直对齐{p_end}
{synopt :{cmd:indent(}{help putdocx_paragraph##indenttype:{it:缩进类型}}{cmd:,} {it:#}[{help putdocx_paragraph##unit:{it:单位}}]{cmd:)}}设置段落缩进{p_end}
{synopt :{cmd:spacing(}{help putdocx_paragraph##position:{it:位置}}{cmd:,} {it:#}[{help putdocx_paragraph##unit:{it:单位}}]{cmd:)}}设置文本行间距{p_end}
{synopt :{opth shading(putdocx_paragraph##sspec:sspec)}}设置背景色、前景色和填充样式{p_end}
{synopt :{opth toheader:(putdocx_paragraph##hname:hname)}}将段落内容添加到页眉 {it:hname}{p_end}
{synopt :{opth tofooter:(putdocx_paragraph##fname:fname)}}将段落内容添加到页脚 {it:fname}{p_end}
{synoptline}

{marker textopts}{...}
{synoptset 28 tabbed}{...}
{synopthdr:文本选项}
{synoptline}
{p2coldent :* {opth nfor:mat(%fmt)}}指定文本的数字格式{p_end}
{synopt :{opth font:(putdocx_paragraph##fspec:fspec)}}设置字体、字体大小和字体颜色{p_end}
{synopt :{opt bold}}将文本格式化为粗体{p_end}
{synopt :{opt italic}}将文本格式化为斜体{p_end}
{synopt :{cmd:script(sub{c |}super)}}设置文本的下标或上标格式{p_end}
{synopt :{opt strike:out}}删除文本{p_end}
{synopt :{cmdab:underl:ine}[{cmd:(}{help putdocx paragraph##upattern:{it:下划线样式}}{cmd:)}]}使用指定的样式为文本添加下划线{p_end}
{synopt :{opth shading(putdocx_paragraph##sspec:sspec)}}设置背景色、前景色和填充样式{p_end}
{synopt :{cmd:linebreak}[{cmd:(}{it:#}{cmd:)}]}在文本后添加换行{p_end}
{synopt :{opt allc:aps}}将文本格式化为全大写{p_end}
{p2coldent :* {opt smallc:aps}}将文本格式化为小型大写{p_end}
{synoptline}
{p 4 6 2}
* 不能与 {cmd:putdocx pagenumber} 一并指定。

{marker imageopts}{...}
{synoptset 28}{...}
{synopthdr:图像选项}
{synoptline}
{synopt :{cmdab:w:idth(}{it:#}[{help putdocx_paragraph##unit:{it:单位}}]{cmd:)}设置图像宽度{p_end}
{synopt :{cmdab:h:eight(}{it:#}[{help putdocx_paragraph##unit:{it:单位}}]{cmd:)}设置图像高度{p_end}
{synopt :{cmd:linebreak}[{cmd:(}{it:#}{cmd:)}]}在图像后添加换行{p_end}
{synopt :{opt link}}插入指向图像文件的链接{p_end}
{synoptline}

{marker fspec}{...}
{phang}
{it:fspec} 为

{pmore}
{it:字体名} [{cmd:,} {it:大小} [{cmd:,} {it:颜色}]]

{marker font}{...}
{pmore2}
{it:字体名} 可以是用户计算机上安装的任何有效字体。如果 {it:字体名} 包含空格，则必须用双引号括起来。

{marker size}{...}
{pmore2}
{it:大小} 是代表字体大小的数值，单位为磅。默认值为 {cmd:11}。

{pmore2}
{it:颜色} 设置文本颜色。

{marker sspec}{...}
{phang}
{it:sspec} 为

{pmore}
{it:bgcolor} [{cmd:,} {it:fgcolor} [{cmd:,} {it:fpattern}]]

{pmore2}
{it:bgcolor} 指定背景颜色。

{pmore2}
{it:fgcolor} 指定前景颜色。默认前景色为 {cmd:black}。

{marker fpattern}{...}
{pmore2}
{it:fpattern} 指定填充样式。最常见的填充样式有 {cmd:solid}（由 {it:fgcolor} 确定的纯色）、{cmd:pct25}（25% 灰度）、{cmd:pct50}（50% 灰度）和 {cmd:pct75}（75% 灰度）。完整的填充样式列表见 {help putdocx_appendix##Shading_patterns:{it:填充样式}} 在 {help putdocx_appendix_zh:[RPT] putdocx 附录}。

{marker color}{...}
{phang}
{it:颜色}、{it:bgcolor} 和 {it:fgcolor} 可以是 {help putdocx_appendix##Colors:{it:颜色}} 在 {help putdocx_appendix_zh:[RPT] putdocx 附录} 中列出的颜色，也可以是形式为 {it:### ### ###} 的有效 RGB 值，例如 {cmd:171 248 103}；或者是形式为 {it:######} 的有效 RRGGBB 十六进制值，例如 {cmd:ABF867}。

{marker upattern}{...}
{phang}
{it:upattern} 可为 {help putdocx_appendix##Underline_patterns:{it:下划线样式}} 中列出的任何样式。最常见的下划线样式有 {cmd:double}、{cmd:dash} 和 {cmd:none}。

{marker unit}{...}
{phang}
包括 {help put_units_zh}

{marker description}{...}
{title:描述}

{pstd}
{cmd:putdocx} {cmd:paragraph} 向文档添加一个新段落。新创建的段落成为活动段落。所有后续文本或图像将附加到活动段落。

{pstd}
{cmd:putdocx} {cmd:text} 向通过 {cmd:putdocx} {cmd:paragraph} 创建的段落添加文本。文本可以是简单的文本字符串或任何有效的 Stata 表达式（请参见 {findalias frexp}）。

{pstd}
{cmd:putdocx} {cmd:textblock} {cmd:begin} 添加一个新段落，可以向其中添加一块文本。

{pstd}
{cmd:putdocx} {cmd:textblock} {cmd:append} 将一块文本附加到活动段落。

{pstd}
{cmd:putdocx} {cmd:textblock} {cmd:end} 结束由 {cmd:putdocx} {cmd:textblock} {cmd:begin} 或 {cmd:putdocx} {cmd:textblock} {cmd:append} 启动的文本块。

{pstd}
{cmd:putdocx} {cmd:textfile} 向一个具有预定义样式的新段落添加一块预格式化文本。

{pstd}
{cmd:putdocx} {cmd:pagenumber} 向将加入页眉或页脚的段落添加页码。

{pstd}
{cmd:putdocx image} 在活动段落中嵌入便携式网络图形（{cmd:.png}）、JPEG（{cmd:.jpg}）、增强型图元文件（{cmd:.emf}）或标记图像文件格式（{cmd:.tif}）。在 Mac 的控制台 Stata 中不支持添加图像。


{marker linkspdf}{...}
{title:PDF 文档链接}

        {mansection RPT putdocxparagraphQuickstart:快速入门}

        {mansection RPT putdocxparagraphRemarksandexamples:备注和示例}

{pstd}
上述部分不包含在此帮助文件中。


{marker options}{...}
{title:选项}

{pstd}
选项按以下标题呈现：

        {help putdocx_paragraph##opt_putdocx_paragraph:putdocx 段落选项}
        {help putdocx_paragraph##opt_putdocx_text:putdocx 文本选项}
        {help putdocx_paragraph##opt_putdocx_pagenumber:putdocx 页码选项}
        {help putdocx_paragraph##opt_putdocx_textfile:putdocx 文本文件选项}
        {help putdocx_paragraph##opt_putdocx_image:putdocx 图像选项}


{marker opt_putdocx_paragraph}{...}
{title:putdocx 段落选项}

{marker pstyle}{...}
{phang}
{opt style(pstyle)}
指定段落中的文本使用样式 {it:pstyle} 格式化。 {it:pstyle} 的常见值有 {cmd:Title}、{cmd:Subtitle} 和 {cmd:Heading1}。完整的段落样式列表见 {help putdocx_appendix##Paragraph_styles:{it:段落样式}} 在 {help putdocx_appendix_zh:putdocx 附录}。

{phang}
{cmd:font(}{help putdocx_paragraph##font:{it:字体名}}
[{cmd:,} {help putdocx_paragraph##size:{it:大小}}
[{cmd:,} {help putdocx_paragraph##color:{it:颜色}}]]{cmd:)}
设置段落内文本的字体、字体大小和字体颜色。字体大小和字体颜色可以单独指定，而不必指定 {it:字体名}。使用 {cmd:font("",} {it:大小}{cmd:)} 只指定字体大小。使用 {cmd:font("", "",} {it:颜色}{cmd:)} 只指定字体颜色。在这两种情况下，将使用默认字体。

{pmore}
与 {cmd:putdocx paragraph} 一起指定 {cmd:font()} 将覆盖与 {cmd:putdocx begin} 指定的字体属性。

{marker para_hvalue}{...}
{phang}
{opt halign(hvalue)} 设置段落内文本的水平对齐。 {it:hvalue} 可以为 {cmd:left}、{cmd:right}、{cmd:center}、{cmd:both} 或 {cmd:distribute}。 {cmd:distribute} 和 {cmd:both} 使文本在左右边缘之间平均对齐，但 {cmd:distribute} 还会更改单词和字符之间的间距。默认值为 {cmd:halign(left)}。

{marker para_vvalue}{...}
{phang}
{opt valign(vvalue)} 设置段落中每行字符的垂直对齐方式。当段落包含大小不同的字符时， {it:vvalue} 可以为 {cmd:auto}、{cmd:baseline}、{cmd:bottom}、{cmd:center} 或 {cmd:top}。默认值为 {cmd:valign(baseline)}。

{marker indenttype}{...}
{phang}
{cmd:indent(}{it:缩进类型}{cmd:,} {it:#}[{help putdocx_paragraph##unit:{it:单位}}]{cmd:)}
指定段落缩进 {it:#} {it:单位}。 {it:缩进类型} 可以为 {cmd:left}、{cmd:right}、{cmd:hanging} 或 {cmd:para}。 {cmd:left} 和 {cmd:right} 从左或右缩进 {it:#} {it:单位}。 {cmd:hanging} 使用悬挂缩进，并在第一行之后的行缩进 {it:#} 英寸，除非指定其他 {it:单位}。 {cmd:para} 使用标准段落缩进，并在第一行缩进 {it:#} 英寸，除非指定其他 {it:单位}。可以在单个命令中多次指定此选项，以适应不同的缩进设置。如果同时指定了 {cmd:indent(hanging)} 和 {cmd:indent(para)}，则只使用 {cmd:indent(hanging)}。

{marker position}{...}
{phang}
{cmd:spacing(}{it:position}{cmd:,} {it:#}[{help putdocx_paragraph##unit:{it:单位}}]{cmd:)}
设置文本行之间的间距。 {it:position} 可以为 {cmd:before}、{cmd:after} 或 {cmd:line}。 {cmd:before} 指定当前段落的第一行之前的空格， {cmd:after} 指定当前段落的最后一行之后的空格， {cmd:line} 指定当前段落内的行之间的空格。可以在单个命令中多次指定此选项，以适应不同的间距设置。

{phang}
{cmd:shading(}{help putdocx_paragraph##color:{it:bgcolor}}
[{cmd:,} {help putdocx_paragraph##color:{it:fgcolor}}
[{cmd:,} {help putdocx_paragraph##fpattern:{it:fpattern}}]]{cmd:)}
设置段落的背景色、前景色和填充样式。

{marker hname}{...}
{phang}
{opt toheader(hname)}
指定将段落添加到页眉 {it:hname}。该段落将不会添加到文档正文中。

{marker fname}{...}
{phang}
{opt tofooter(fname)}
指定将段落添加到页脚 {it:fname}。该段落将不会添加到文档正文中。


{marker opt_putdocx_text}{...}
{title:putdocx 文本选项}

{phang}
{opth nformat(%fmt)} 当新文本附加到段落的内容为数值时，指定文本的数字格式。当内容为字符串时，此设置无效。

{phang}
{cmd:font(}{help putdocx_paragraph##font:{it:字体名}}
[{cmd:,} {help putdocx_paragraph##size:{it:大小}}
[{cmd:,} {help putdocx_paragraph##color:{it:颜色}}]]{cmd:)}
设置活动段落内新文本的字体、字体大小和字体颜色。字体大小和字体颜色可以单独指定，而不必指定 {it:字体名}。使用 {cmd:font("",} {it:大小}{cmd:)} 只指定字体大小。使用 {cmd:font("", "",} {it:颜色}{cmd:)} 只指定字体颜色。对于这两种情况，默认字体将被使用。

{pmore}
与 {cmd:putdocx text} 一起指定 {cmd:font()} 将覆盖所有其他字体设置，包括 {cmd:putdocx begin} 和 {cmd:putdocx paragraph} 指定的设置。

{phang}
{cmd:bold} 指定活动段落中的新文本格式化为粗体。

{phang}
{cmd:italic} 指定活动段落中的新文本格式化为斜体。

{phang}
{cmd:script(sub{c |}super)} 更改新文本的脚本样式。{cmd:script(sub)} 使文本为下标，{cmd:script(super)} 使文本为上标。

{phang}
{cmd:strikeout} 指定活动段落中的新文本带删除线标记。

{phang}
{cmd:underline}[{cmd:(}{help putdocx_paragraph##upattern:{it:upattern}}{cmd:)}]
指定活动段落中的新文本带下划线，并可以选择指定线条的样式。默认情况下使用单下划线。

{phang}
{cmd:shading(}{help putdocx_paragraph##color:{it:bgcolor}}
[{cmd:,} {help putdocx_paragraph##color:{it:fgcolor}}
[{cmd:,} {help putdocx_paragraph##fpattern:{it:fpattern}}]]{cmd:)}
设置活动段落的背景色、前景色和填充样式。使用 {cmd:putdocx text} 指定的 {cmd:shading()} 将覆盖 {cmd:putdocx paragraph} 中的填充规范。

{phang}
{cmd:linebreak}[{cmd:(}{it:#}{cmd:)}] 指定在新文本后添加一个或 {it:#} 个换行。

{phang}
{cmd:allcaps} 指定活动段落中的新文本的所有字母为大写。

{phang}
{cmd:smallcaps} 指定活动段落中的新文本的所有字母为大写，但大写字母的尺寸较大，小写字母的尺寸较小。


{marker opt_putdocx_pagenumber}{...}
{title:putdocx 页码选项}

{phang}
{cmd:font(}{help putdocx_paragraph##font:{it:字体名}}
[{cmd:,} {help putdocx_paragraph##size:{it:大小}}
[{cmd:,} {help putdocx_paragraph##color:{it:颜色}}]]{cmd:)}
设置页码的字体、字体大小和字体颜色。字体大小和字体颜色可以单独指定，而不必指定 {it:字体名}。使用 {cmd:font("",} {it:大小}{cmd:)} 只指定字体大小。使用 {cmd:font("", "",} {it:颜色}{cmd:)} 只指定字体颜色。在这两种情况下，将使用默认字体。

{pmore}
与 {cmd:putdocx pagenumber} 一起指定 {cmd:font()} 将覆盖所有其他字体设置，包括 {cmd:putdocx begin} 和 {cmd:putdocx paragraph} 指定的设置。

{phang}
{cmd:bold} 指定页码格式为粗体。

{phang}
{cmd:italic} 指定页码格式为斜体。

{phang}
{cmd:script(sub{c |}super)} 改变页码的脚本样式。 {cmd:script(sub)} 使页码为下标，{cmd:script(super)} 使页码为上标。

{phang}
{cmd:strikeout} 指定页码带删除线标记。

{phang}
{cmd:underline}[{cmd:(}{help putdocx_paragraph##upattern:{it:upattern}}{cmd:)}]
指定页码带下划线，并可以选择指定线条的样式。默认情况下使用单下划线。

{phang}
{cmd:shading(}{help putdocx_paragraph##color:{it:bgcolor}}
[{cmd:,} {help putdocx_paragraph##color:{it:fgcolor}}
[{cmd:,} {help putdocx_paragraph##fpattern:{it:fpattern}}]]{cmd:)}
设置页码的背景色、前景色和填充样式。使用 {cmd:putdocx pagenumber} 指定的 {cmd:shading()} 将覆盖 {cmd:putdocx paragraph} 中的填充规范。

{phang}
{cmd:linebreak}[{cmd:(}{it:#}{cmd:)}] 指定在页码后添加一个或 {it:#} 个换行。

{phang}
{cmd:allcaps} 指定页码为大写字母；这仅适用于页码格式 {cmd:lower_letter}、{cmd:lower_roman}、{cmd:cardinal_text} 和 {cmd:ordinal_text}。

{phang}
{cmd:totalpages} 指定显示总页数，而不是当前页的页码。


{marker opt_putdocx_textfile}{...}
{title:putdocx 文本文件选项}

{phang}
{cmd:append} 指定将文本文件附加到当前段落，而不是作为新段落添加。

{phang}
{cmd:stopat(}{it:字符串}[{cmd:,} {it:stopatopt}]{cmd:)} 指定仅包含文本文件的一部分，并使用指定字符串作为结束点。

{pmore} 
{it:stopatopt} 必须为 {cmd:begin}、{cmd:end} 或 {cmd:contain} 之一。默认值为 {cmd:begin}，匹配行首的字符串。{cmd:contain} 在行内匹配字符串。{cmd:end} 匹配行尾的字符串。如果行匹配该字符串，则文本文件的其余部分（包括该行）将不会被包含在文档中。


{marker opt_putdocx_image}{...}
{title:putdocx 图像选项}

{phang}
{cmd:width(}{it:#}[{help putdocx_paragraph##unit:{it:单位}}]{cmd:)} 设置图像的宽度。如果宽度大于文档的正文宽度，则使用正文宽度。如果未指定 {cmd:width()}，则使用默认大小；默认值由图像信息和文档的正文宽度决定。

{phang}
{cmd:height(}{it:#}[{help putdocx_paragraph##unit:{it:单位}}]{cmd:)} 设置图像的高度。如果未指定 {cmd:height()}，则根据图像的宽度和纵横比确定图像的高度。

{phang}
{cmd:linebreak}[{cmd:(}{it:#}{cmd:)}] 指定在新图像后添加一个或 {it:#} 个换行。

{phang}
{cmd:link} 指定插入指向图像 {it:文件名} 的链接。如果图像是链接的，则引用的文件必须存在，以便文档可以显示该图像。


{marker examples}{...}
{title:示例}

{pstd}设置{p_end}
{phang2}{cmd:. sysuse auto}{p_end}

{pstd}在内存中创建一个 {cmd:.docx} 文档{p_end}
{phang2}{cmd:. putdocx begin}{p_end}

{pstd}使用 {cmd:summarize} 获取 {cmd:mpg} 的摘要统计{p_end}
{phang2}{cmd:. summarize mpg}{p_end}

{pstd}向活动文档添加新段落并附加文本{p_end}
{phang2}{cmd:. putdocx paragraph}{p_end}
{phang2}{cmd:. putdocx text ("在该数据集中，有 `r(N)' 个模型")}{p_end}
{phang2}{cmd:. putdocx text (" 汽车。其中，最大 MPG 为 ")}{p_end}
{phang2}{cmd:. putdocx text (r(max)), bold}{p_end}
{phang2}{cmd:. putdocx text (".")}{p_end}

{pstd}
{cmd:putdocx text} 可用于将长句子拆分为几部分，而段落中的每一部分可以自定义为不同的样式。上述内容中，{cmd:r(max)} 被格式化为粗体。

{pstd}创建散点图并将图形导出为 {cmd:.png} 文件{p_end}
        {cmd:. scatter mpg price}
	{cmd:. graph export auto.png}
	
{pstd}
在新的段落中将 {cmd:.png} 文件添加到文档中，且水平居中{p_end}
	{cmd:. putdocx paragraph, halign(center)}
	{cmd:. putdocx image auto.png, width(4)}

{pstd}
将文档保存到磁盘{p_end}
	{cmd:. putdocx save example.docx}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <putdocx_paragraph.sthlp>}