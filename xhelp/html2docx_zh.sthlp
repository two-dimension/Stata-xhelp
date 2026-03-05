{smcl}
{* *! version 1.0.0  08may2019}{...}
{vieweralsosee "[RPT] html2docx" "mansection RPT html2docx"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[RPT] docx2pdf" "help docx2pdf_zh"}{...}
{vieweralsosee "[RPT] dyndoc" "help dyndoc_zh"}{...}
{vieweralsosee "[RPT] markdown" "help markdown_zh"}{...}
{vieweralsosee "[RPT] putdocx intro" "help putdocx intro"}{...}
{viewerjumpto "Syntax" "html2docx_zh##syntax"}{...}
{viewerjumpto "Description" "html2docx_zh##description"}{...}
{viewerjumpto "Links to PDF documentation" "html2docx_zh##linkspdf"}{...}
{viewerjumpto "Options" "html2docx_zh##options"}{...}
{viewerjumpto "Remarks" "html2docx_zh##remarks"}
{help html2docx:English Version}
{hline}{...}
{p2colset 1 20 31 2}{...}
{p2col:{bf:[RPT] html2docx} {hline 2}}将 HTML 文件转换为 Word (.docx) 文档{p_end}
{p2col:}({mansection RPT html2docx:查看完整的 PDF 手册条目}){p_end}
{p2colreset}{...}


{marker syntax}{...}
{title:语法}

{p 8 16 2}
{cmd:html2docx} {it:srcfile}
[{cmd:,} {it:options}]

{phang}
{it:srcfile} 是一个 HTML 文件，可以是本地文件或远程网站的 URL。
如果 {it:srcfile} 指定时没有扩展名，则假定为 {cmd:.html}。
如果 {it:srcfile} 包含嵌入空格或其他特殊字符，
请用双引号将其括起来。

{marker html2docx_options}{...}
{synoptset 22}{...}
{synopthdr}
{synoptline}
{synopt :{opth sav:ing(filename:targetfile)}}指定要保存的目标 Word
({cmd:.docx}) 文档{p_end}
{synopt :{opt rep:lace}}如果目标 Word ({cmd:.docx}) 文档已存在，则替换它{p_end}
{synopt :{cmd:nomsg}}抑制包含链接到 {it:targetfile} 的消息{p_end}
{synopt :{opth base:(strings:string)}}指定 {it:srcfile} 中相对链接的基目录或基 URL{p_end}
{synoptline}
{p2colreset}{...}


{marker description}{...}
{title:描述}

{pstd}
{cmd:html2docx} 将 HTML 文件转换为 Word ({cmd:.docx}) 文档。 HTML 文件可以是本地磁盘上的文件，也可以是远程网站上的 URL。


{marker linkspdf}{...}
{title:PDF 文档链接}

        {mansection RPT html2docxQuickstart:快速开始}
        {mansection RPT html2docxRemarksandexamples:备注和示例}

{pstd}
上述部分未包含在此帮助文件中。


{marker options}{...}
{title:选项}

{phang}
{opth saving:(filename:targetfile)} 指定要保存的目标 Word ({cmd:.docx}) 文档文件。如果 {it:targetfile} 指定时没有扩展名，则假定为 {cmd:.docx}。如果 {it:targetfile} 包含嵌入空格或其他特殊字符，请用双引号将其括起来。如果未指定 {cmd:saving()}，则目标文件名是使用源文件名 ({it:srcfile}) 和 {cmd:.docx} 扩展名构造的。如果 {it:srcfile} 是 URL，则需要 {cmd:saving()}。

{phang}
{cmd:replace} 指定如果目标 Word ({cmd:.docx}) 文档已存在，则替换它。

{phang}
{cmd:nomsg} 抑制链接到目标文件的消息。

{phang}
{opth base:(strings:string)} 指定 {it:srcfile} 中相对链接的基目录或基 URL。


{marker remarks}{...}
{title:备注}

{pstd}
{cmd:html2docx} 将 HTML 文件转换为 Word ({cmd:.docx}) 文档。它尝试保留 {cmd:.docx} 文件中各种 HTML 元素的样式。然而，对于某些 HTML 元素，没有直接的转换到 {cmd:.docx} 文件。例如，HTML 文件中的撇号可能会在 {cmd:.docx} 文件中被替换为其他字符。因此，您的目标 Word 文档在 {cmd:html2docx} 转换后可能需要进行一些清理。

{pstd}
{cmd:html2docx} 期望一个有效的 HTML 文件——一个包含基本 HTML 元素的文件，如 {cmd:<!DOCTYPE html>}、{cmd:<html>}、{cmd:<head>} 和 {cmd:<body>}。如果 HTML 文件无效，{cmd:html2docx} 将进行整理以尝试使其有效。如果此整理过程失败，则 {cmd:html2docx} 将产生错误消息。您可以通过使用 W3C 在线标记验证服务检查 HTML 文件是否有效，网址为
{browse "https://validator.w3.org/#validate_by_upload+with_options"}。

{pstd}
如果您正在处理 Markdown 格式的文本文件，可以通过在 {cmd:markdown} 中指定 {cmd:docx} 选项直接将该文件转换为 Word 文档；参见 {manhelp markdown RPT}。同样，您可以使用 {cmd:dyndoc} 将包含 Stata 命令和 Markdown 格式文本的文本文件转换为包含 Stata 输出的 Word 文档；参见 {manhelp dyndoc RPT}。

{pstd}
假设我们有 HTML 文件 {cmd:graphs.html}。
要将此文件转换为 Word 文档，我们输入

{phang2}
{cmd:. html2docx graphs.html}

{pstd}
文件 {cmd:graphs.docx} 被保存。

{pstd}
您可以在以下地址查看这些文件
{browse "https://www.stata-press.com/data/r16/reporting/"}。
{p_end}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <html2docx.sthlp>}