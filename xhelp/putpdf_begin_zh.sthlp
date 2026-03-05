{smcl}
{* *! version 1.0.0  08may2019}{...}
{vieweralsosee "[RPT] putpdf begin" "mansection RPT putpdfbegin"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[RPT] putpdf intro" "help putpdf intro"}{...}
{vieweralsosee "[RPT] putpdf pagebreak" "help putpdf pagebreak"}{...}
{vieweralsosee "[RPT] putpdf paragraph" "help putpdf paragraph"}{...}
{vieweralsosee "[RPT] putpdf table" "help putpdf table"}{...}
{vieweralsosee "[RPT] Appendix for putpdf" "help putpdf appendix"}{...}
{viewerjumpto "Syntax" "putpdf begin##syntax"}{...}
{viewerjumpto "Description" "putpdf begin##description"}{...}
{viewerjumpto "Links to PDF documentation" "putpdf begin##linkspdf"}{...}
{viewerjumpto "Options" "putpdf begin##options"}{...}
{viewerjumpto "Examples" "putpdf begin##examples"}
{help putpdf_begin:English Version}
{hline}{...}
{p2colset 1 23 25 2}{...}
{p2col:{bf:[RPT] putpdf begin} {hline 2}}创建 PDF 文件{p_end}
{p2col:}({mansection RPT putpdfbegin:查看完整 PDF 手册条目}){p_end}
{p2colreset}{...}


{marker syntax}{...}
{title:语法}

{phang}
创建导出文档

{p 8 22 2}
{cmd:putpdf begin}
[{cmd:,} {help putpdf_begin##beginopts:{it:begin_options}}]


{phang}
描述活动文档

{p 8 22 2}
{cmd:putpdf describe}


{phang}
保存并关闭文档

{p 8 22 2}
{cmd:putpdf save} {help filename_zh:{it:filename}}
[{cmd:, replace}]


{phang}
不保存而关闭

{p 8 22 2}
{cmd:putpdf clear}


{marker beginopts}{...}
{synoptset 28}{...}
{synopthdr:begin_options}
{synoptline}
{synopt :{opth page:size(putpdf_begin##psize:psize)}}设置文档页面大小{p_end}
{synopt :{opt land:scape}}将文档方向更改为横向{p_end}
{synopt :{opth font:(putpdf_begin##fspec:fspec)}}设置文档的字体、字号和字体颜色{p_end}
{synopt :{opth halign:(putpdf_begin##hvalue:hvalue)}}设置文档的水平对齐方式{p_end}
{synopt :{cmd:margin(}{help putpdf_begin##type:{it:type}}{cmd:,} {it:#}[{help putdocx_paragraph##unit:{it:unit}}]{cmd:)}}设置文档的页面边距{p_end}
{synopt :{opth bgcolor:(putpdf_begin##color:color)}}设置背景颜色{p_end}
{synoptline}


{marker description}{...}
{title:描述}

{pstd}
{cmd:putpdf begin} 创建一个 PDF 文件。此为活动文档，其余 {cmd:putpdf} 命令将对其进行修改。

{pstd}
{cmd:putpdf} {cmd:describe} 描述活动 PDF 文件。

{pstd}
{cmd:putpdf} {cmd:save} 保存并关闭 PDF 文件。

{pstd}
{cmd:putpdf} {cmd:clear} 在不保存的情况下关闭 PDF 文件。


{marker linkspdf}{...}
{title:PDF 文档链接}

        {mansection RPT putpdfbeginQuickstart:快速入门}

        {mansection RPT putpdfbeginRemarksandexamples:备注和示例}

{pstd}
以上部分不包含在此帮助文件中。


{marker options}{...}
{title:选项}

{pstd}
选项按照以下标题呈现：

        {help putpdf_begin##opts_putpdf_begin:putpdf begin 的选项}
        {help putpdf_begin##opts_putpdf_save:putpdf save 的选项}


{marker opts_putpdf_begin}{...}
{title:putpdf begin 的选项}

{marker psize}{...}
{phang}
{opt pagesize(psize)} 设置文档的页面大小。{it:psize} 可以是 {cmd:letter}、{cmd:legal}、{cmd:A3}、{cmd:A4}、{cmd:A5}、{cmd:B4} 或 {cmd:B5}。默认值为 {cmd:pagesize(letter)}。

{phang}
{cmd:landscape} 将文档方向从纵向（默认）更改为横向。

{phang}
{cmd:font(}{it:fontname}
[{cmd:,} {it:size}
[{cmd:,} {it:color}]]{cmd:)} 设置文档的字体、字号和字体颜色。

{marker fspec}{...}
{phang2}
{it:fontname} 可以是用户计算机上安装的任何支持字体。支持基础 14 字体、Type 1 字体以及扩展名为 {cmd:.ttf} 和 {cmd:.ttc} 的 TrueType 字体。不能嵌入的 TrueType 字体不能使用。如果 {it:fontname} 包含空格，则必须用双引号括起来。默认字体为 {cmd:Helvetica}。

{marker size}{...}
{phang2}
{it:size} 是一个表示字体大小的数值，以磅为单位。默认值为 {cmd:11}。

{marker color}{...}
{phang2}
{it:color} 设置文本颜色。{it:color} 可以是在 {help putpdf_appendix##Colors:{it:Colors}} 中列出的一种颜色；有效的 RGB 值，如 {it:### ### ###}，例如 {cmd:171 248 103}；或有效的 RRGGBB 十六进制值，如 {it:######}，例如 {cmd:ABF867}。

{pmore}
字体大小和字体颜色可以在不指定 {it:fontname} 的情况下单独指定。使用 {cmd:font("",} {it:size}{cmd:)} 仅指定字体大小。使用 {cmd:font("", "",} {it:color}{cmd:)} 仅指定字体颜色。在这两种情况下，将使用默认字体。

{marker hvalue}{...}
{phang}
{opt halign(hvalue)} 设置文档在段落、图像和表格中的水平对齐方式。{it:hvalue} 可以是 {cmd:left}、{cmd:right} 或 {cmd:center}。默认值为 {cmd:halign(left)}。

{phang}
{opt margin(type, unit)} 设置文档的页面边距。可以在单个命令中多次指定此选项，以适应不同的边距设置。

{marker type}{...}
{pmore}
{it:type} 指定边距在文档中的位置。{it:type} 可以是 {cmd:top}、{cmd:left}、{cmd:bottom} 或 {cmd:right}。

{marker unit}{...}
{pmore}
INCLUDE help put_units

{phang}
{opt bgcolor(color)} 设置文档的背景颜色。{it:color} 可以是在 {help putpdf_appendix##Colors:{it:Colors}} 中列出的一种颜色；有效的 RGB 值，如 {it:### ### ###}，例如 {cmd:171 248 103}；或有效的 RRGGBB 十六进制值，如 {it:######}，例如 {cmd:ABF867}。


{marker opts_putpdf_save}{...}
{title:putpdf save 的选项}

{phang}
{opt replace} 指定如果 {it:filename} 存在，则用内存中文档的内容覆盖它。


{marker examples}{...}
{title:示例}


    {hline}
{pstd}设置{p_end}
{phang2}{cmd:. sysuse auto}{p_end}

{pstd}在内存中创建 {cmd:.pdf} 文档{p_end}
{phang2}{cmd:. putpdf begin}{p_end}

{pstd}
拟合 {cmd:mpg} 作为 {cmd:weight} 和 {cmd:foreign} 的函数的线性回归模型{p_end}
	{cmd:. regress mpg weight foreign}

{pstd}
将估计结果作为名为 {cmd:tbl1} 的表导出到文档中{p_end}
{phang2}{cmd:. putpdf table tbl1 = etable, width(100%)} 

{pstd}
描述活动文档{p_end}
	{cmd:. putpdf describe}

{pstd}
将文档保存到磁盘{p_end}
	{cmd:. putpdf save example.pdf}

    {hline}
{pstd}在内存中创建 {cmd:.pdf} 文档，使用横向布局{p_end}
{phang2}{cmd:. putpdf begin, landscape}{p_end}

{pstd}不保存而关闭文档{p_end}
{phang2}{cmd:. putpdf clear}

    {hline}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <putpdf_begin.sthlp>}