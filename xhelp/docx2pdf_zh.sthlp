{smcl}
{* *! version 1.0.0  08may2019}{...}
{vieweralsosee "[RPT] docx2pdf" "mansection RPT docx2pdf"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[RPT] html2docx" "help html2docx_zh"}{...}
{vieweralsosee "[RPT] putdocx intro" "help putdocx intro"}{...}
{viewerjumpto "Syntax" "docx2pdf_zh##syntax"}{...}
{viewerjumpto "Description" "docx2pdf_zh##description"}{...}
{viewerjumpto "Links to PDF documentation" "docx2pdf_zh##linkspdf"}{...}
{viewerjumpto "Options" "docx2pdf_zh##options"}{...}
{viewerjumpto "Remarks" "docx2pdf_zh##remarks"}
{help docx2pdf:English Version}
{hline}{...}
{p2colset 1 19 21 2}{...}
{p2col:{bf:[RPT] docx2pdf} {hline 2}}将Word（.docx）文档转换为PDF文件{p_end}
{p2col:}({mansection RPT docx2pdf:查看完整的PDF手册条目}){p_end}
{p2colreset}{...}


{marker syntax}{...}
{title:语法}

{p 8 16 2}
{cmd:docx2pdf} {it:srcfile}
[{cmd:,} {it:options}]

{phang}
{it:srcfile} 是一个 {cmd:.docx} 文件。
如果 {it:srcfile} 没有指定扩展名，则默认假定为 {cmd:.docx}。
如果 {it:srcfile} 包含嵌入空格或其他特殊字符，请使用双引号括起来。

{marker docx2pdf_options}{...}
{synoptset 22}{...}
{synopthdr}
{synoptline}
{synopt :{opth sav:ing(filename:targetfile)}}指定要保存的目标PDF文件{p_end}
{synopt :{opt rep:lace}}如果目标PDF文件已存在，则替换该文件{p_end}
{synopt :{opt nomsg}}抑制与 {it:targetfile} 的链接消息{p_end}
{synoptline}
{p2colreset}{...}


{marker description}{...}
{title:描述}

{pstd}
{cmd:docx2pdf} 将Word ({cmd:.docx}) 文档转换为PDF文件。


{marker linkspdf}{...}
{title:PDF文档链接}

        {mansection RPT docx2pdfQuickstart:快速入门}
        {mansection RPT docx2pdfRemarksandexamples:备注和示例}

{pstd}
以上部分不包含在此帮助文件中。


{marker options}{...}
{title:选项}

{phang}
{opth saving:(filename:targetfile)} 指定要保存的目标PDF文件。如果 {it:targetfile} 没有指定扩展名，则默认假定为 {cmd:.pdf}。如果 {it:targetfile} 包含嵌入空格或其他特殊字符，请使用双引号括起来。如果未指定 {cmd:saving()}，则目标文件名使用源文件名 ({it:srcfile}) 加上 {cmd:.pdf} 扩展名构造。

{phang}
{cmd:replace} 指定如果目标PDF文件已存在，则替换该文件。

{phang}
{cmd:nomsg} 抑制包含目标文件链接的消息。


{marker remarks}{...}
{title:备注}

{pstd}
{cmd:docx2pdf} 将Word ({cmd:.docx}) 文档转换为PDF文件。此命令对于想要将HTML文件转换为PDF文件时最为有用；在这种情况下，您可以首先使用 {help html2docx_zh} 将HTML文件转换为Word文档，然后再使用 {cmd:docx2pdf} 将其转换为PDF文件。如果您想将动态Markdown文档转换为PDF文件，可以使用 {help dyndoc_zh} 创建Word文档，然后使用 {cmd:docx2pdf} 将该Word文档转换为PDF文件。

{pstd}
如果您想在PDF文件中嵌入Stata结果和图形，您也可以使用 {cmd:putpdf} 套件；请参见 {helpb putpdf intro:[RPT] putpdf intro}。

{pstd}
假设我们有Word文档 {cmd:graphs.docx}。
要将此文件转换为PDF文件，我们输入

{phang2}
{cmd:. docx2pdf graphs.docx}

{pstd}
文件 {cmd:graphs.pdf} 被保存。

{pstd}
您可以在这里查看这些文件
{browse "https://www.stata-press.com/data/r16/reporting/"}。
{p_end}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <docx2pdf.sthlp>}