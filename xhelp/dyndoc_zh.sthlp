{smcl}
{* *! version 1.2.0  08may2019}{...}
{vieweralsosee "[RPT] dyndoc" "mansection RPT dyndoc"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[RPT] Dynamic tags" "help dynamic tags"}{...}
{vieweralsosee "[RPT] dyntext" "help dyntext_zh"}{...}
{vieweralsosee "[RPT] markdown" "help markdown_zh"}{...}
{viewerjumpto "语法" "dyndoc_zh##syntax"}{...}
{viewerjumpto "描述" "dyndoc_zh##description"}{...}
{viewerjumpto "PDF 文档链接" "dyndoc_zh##linkspdf"}{...}
{viewerjumpto "选项" "dyndoc_zh##options"}{...}
{viewerjumpto "备注" "dyndoc_zh##remarks"}
{help dyndoc:English Version}
{hline}{...}
{p2colset 1 17 19 2}{...}
{p2col:{bf:[RPT] dyndoc} {hline 2}}将动态 Markdown 文档转换为 HTML 或 Word (.docx) 文档{p_end}
{p2col:}({mansection RPT dyndoc:查看完整 PDF 手册条目}){p_end}
{p2colreset}{...}


{marker syntax}{...}
{title:语法}

{p 8 16 2}
{cmd:dyndoc} {it:srcfile} [{it:arguments}]
[{cmd:,} {it:options}]

{phang}
{it:srcfile} 是一个包含 Markdown 格式文本和 {help Dynamic tags:Stata 动态标签} 的纯文本文件。

{phang}
{it:arguments} 存储在局部宏 {cmd:`1`}, {cmd:`2`}, 等中，供 {it:srcfile} 使用；请参见 {findalias frarg}。

{phang}
您可以用双引号括住 {it:srcfile} 和 {it:targetfile}，如果它们包含空格或其他特殊字符，则必须这样做。

{marker dyndoc_options}{...}
{synoptset 19}{...}
{synopthdr}
{synoptline}
{synopt :{opth sav:ing(filename:targetfile)}}指定要保存的目标 HTML 文件或 Word ({cmd:.docx}) 文档{p_end}
{synopt :{opt rep:lace}}如果目标 HTML 文件或 Word ({cmd:.docx}) 文档已存在，则替换它{p_end}
{synopt :{opt hardwrap}}用 {cmd:<br>} 标签替换 HTML 文件中的硬换行（实际换行），或在 Word ({cmd:.docx}) 文档中替换为换行{p_end}
{synopt :{cmd:nomsg}}抑制带有指向 {it:targetfile} 的链接的消息{p_end}
{synopt :{cmd:nostop}}发生错误时不停止{p_end}
{synopt :{cmd:embedimage}}将图像文件作为 Base64 二进制数据嵌入目标 HTML 文件中{p_end}
{synopt :{cmd:docx}}输出 Word ({cmd:.docx}) 文档，而不是 HTML 文件{p_end}
{synoptline}
{p2colreset}{...}


{marker description}{...}
{title:描述}

{pstd}
{cmd:dyndoc} 将动态 Markdown 文档（即包含格式化文本和 Stata 命令的文档）转换为 HTML 文件或 Word 文档。Stata 处理 Markdown 文本和 Stata 动态标签（参见 {helpb dynamic tags:[RPT] 动态标签}），并创建输出文件。Markdown 是一种简单的标记语言，具有基于纯文本的格式语法。很容易转换为 HTML 等输出格式。Stata 动态标签允许将 Stata 命令、输出和图形与 Markdown 文本交错使用。

{pstd}
如果您想将不包含 Stata 动态标签的 Markdown 文档转换为 HTML 文件或 Word 文档，请参见 {manhelp markdown RPT}。
如果您想将一个包含 Stata 动态标签的纯文本文件转换为纯文本输出文件，请参见 {manhelp dyntext RPT}。如果您想将 HTML 文件转换为 Word 文档，请参见 {manhelp html2docx RPT}。


{marker linkspdf}{...}
{title:PDF 文档链接}

        {mansection RPT dyndocQuickstart:快速入门}
        {mansection RPT dyndocRemarksandexamples:备注和示例}

{pstd}
上述部分未包含在此帮助文件中。


{marker options}{...}
{title:选项}

{phang} 
{opth saving:(filename:targetfile)} 指定要保存的目标文件。如果未指定 {cmd:saving()}，则使用源文件名 ({it:srcfile}) 构造目标文件名，扩展名为 {cmd:.html}，或者如果指定了 {cmd:docx}，则扩展名为 {cmd:.docx}。如果 {it:targetfile} 具有 {cmd:.docx} 扩展名，则假定使用 {cmd:docx} 选项，即使未指定。

{phang}
{cmd:replace} 指定如果目标文件已存在，则替换该文件。

{phang}
{cmd:hardwrap} 指定在 Markdown 文档中的硬换行（实际换行）被替换为 HTML 文件中的 {cmd:<br>} 标签，或者如果指定了 {cmd:docx} 选项则在 Word ({cmd:.docx}) 文档中替换为换行。

{phang}
{cmd:nomsg} 抑制包含指向目标文件的链接的消息。

{phang}
{cmd:nostop} 允许文档继续处理，即使发生错误。默认情况下，如果发生错误，{cmd:dyndoc} 将停止处理文档。错误可能是由于动态标签格式不正确或在标签内执行的 Stata 代码导致。

{phang}
{cmd:embedimage} 允许将图像文件嵌入为数据 URI（Base64 编码的二进制数据）在 HTML 文件中。支持的图像文件类型包括可移植网络图形（{cmd:.png}）、JPEG（{cmd:.jpg}）、标记图像文件格式（{cmd:.tif}）和图形交换格式（{cmd:.gif}）。此选项不能用于嵌入 SVG 和 PDF 图像文件类型。

{pmore}
图像必须在 Markdown 链接中指定；您不能嵌入通过 URL 指定的图像。如果指定了 {cmd:docx}，则忽略此选项。

{phang}
{cmd:docx} 指定将目标文件保存为 Microsoft Word ({cmd:.docx}) 格式。如果目标文件具有 {cmd:.docx} 扩展名，则隐含使用 {cmd:docx} 选项。转换过程包括首先生成 HTML 文件，然后使用 {help html2docx_zh} 生成最终的 Word 文档。


{marker remarks}{...}
{title:备注}

{pstd}
动态文档包含静态叙述和动态标签。动态标签是指令，用于 {cmd:dyndoc} 执行特定操作，例如运行 Stata 代码块，将 Stata 表达式的结果插入文本，将 Stata 图表导出为图像文件，或包含链接到图像文件。数据或 Stata 的任何变化都会在创建文档时改变输出。使用动态文档的主要优点是

{phang2} o 文档中的结果来自执行命令，而不是从 Stata 中复制并粘贴到文档中；

{phang2}o 无需维护平行的 do 文件；以及

{phang2}o 数据或 Stata 的任何更改在创建最终文档时都会反映出来。
{p_end}

{pstd}
假设我们有文件 {cmd:dyndoc_ex.txt}，其中包含包含
{help dynamic tags:Stata 动态标签} 的 Markdown 格式文本。

{pstd}
要在 Stata 中生成目标 HTML 文件，我们输入

{phang2}
{cmd:. dyndoc dyndoc_ex.txt}

{pstd}
HTML 文件 {cmd:dyndoc_ex.html} 被保存。

{pstd}
您可以在下列网址查看这些和相关文件：
{browse "https://www.stata-press.com/data/r16/reporting/"}。
{p_end}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <dyndoc.sthlp>}