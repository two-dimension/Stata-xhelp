{smcl}
{* *! version 1.1.0  08may2019}{...}
{vieweralsosee "[RPT] markdown" "mansection RPT markdown"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[RPT] Dynamic tags" "help dynamic tags"}{...}
{vieweralsosee "[RPT] dyndoc" "help dyndoc_zh"}{...}
{vieweralsosee "[RPT] dyntext" "help dyntext_zh"}{...}
{viewerjumpto "Syntax" "markdown_zh##syntax"}{...}
{viewerjumpto "Description" "markdown_zh##description"}{...}
{viewerjumpto "Links to PDF documentation" "markdown_zh##linkspdf"}{...}
{viewerjumpto "Options" "markdown_zh##options"}{...}
{viewerjumpto "Remarks" "markdown_zh##remarks"}
{help markdown:English Version}
{hline}{...}
{p2colset 1 19 21 2}{...}
{p2col:{bf:[RPT] markdown} {hline 2}}将Markdown文档转换为HTML文件或Word (.docx)文档{p_end}
{p2col:}({mansection RPT markdown:查看完整的PDF手册条目}){p_end}
{p2colreset}{...}


{marker syntax}{...}
{title:语法}

{p 8 16 2}
{cmd:markdown} {it:srcfile}{cmd:,}
{opth sav:ing(filename:targetfile)}
[{it:options}]

{phang}
{it:srcfile} 是要转换的Markdown文档。

{phang}
如果 {it:srcfile} 和 {it:targetfile} 包含空格或特殊字符，可以用双引号括起来。

{marker markdown_options}{...}
{synoptset 22 tabbed}{...}
{synopthdr}
{synoptline}
{p2coldent :* {opth sav:ing(filename:targetfile)}}要保存的HTML文件或Word
({cmd:.docx})文档{p_end}
{synopt :{opt rep:lace}}如果目标HTML文件或Word ({cmd:.docx})文档已存在，则替换之{p_end}
{synopt :{opt hardwrap}}在HTML文件中将硬换行（实际换行）替换为{cmd:<br>}标签，或在Word ({cmd:.docx})文档中换行{p_end}
{synopt :{opt nomsg}}抑制与{it:targetfile}的链接消息{p_end}
{synopt :{opt embedimage}}将图像文件作为Base64二进制数据嵌入目标HTML文件{p_end}
{synopt :{opth basedir:(strings:string)}}指定{it:srcfile}中相对链接的基目录{p_end}
{synopt :{cmd:docx}}输出Word {cmd:.docx}文档而不是HTML文件{p_end}
{synoptline}
{p2colreset}{...}
{p 4 6 2}
* {opt saving(targetfile)} 是必需的。


{marker description}{...}
{title:描述}

{pstd}
{cmd:markdown} 将Markdown文档转换为HTML文件或Word文档。


{marker linkspdf}{...}
{title:PDF文档链接}

        {mansection RPT markdownQuickstart:快速开始}
        {mansection RPT markdownRemarksandexamples:备注和示例}

{pstd}
以上部分不包括在此帮助文件中。


{marker options}{...}
{title:选项}

{phang}
{opth saving:(filename:targetfile)} 指定要保存的目标文件。如果 {it:targetfile} 具有 {cmd:.docx} 扩展名，则假定使用 {cmd:docx} 选项，尽管未指定。{cmd:saving()} 是必需的。

{phang}
{cmd:replace} 指定如果目标文件已存在，则替换之。

{phang}
{cmd:hardwrap} 指定在Markdown文档中的硬换行（实际换行）在HTML文件中替换为 {cmd:<br>} 标签，或在指定 {cmd:docx} 选项时在Word ({cmd:.docx})文件中换行。

{phang}
{cmd:nomsg} 抑制包含对目标文件链接的消息。

{phang}
{cmd:embedimage} 允许将图像文件嵌入为数据URI（Base64编码的二进制数据）到HTML文件中。支持的图像文件类型包括便携式网络图形（{cmd:.png}）、JPEG（{cmd:.jpg}）、标记图像文件格式（{cmd:.tif}）和图形交换格式（{cmd:.gif}）。此选项不能用于嵌入SVG和PDF图像文件类型。

{pmore}
必须在Markdown链接中指定图像；不能嵌入通过URL指定的图像。如果指定了 {cmd:docx}，则此选项将被忽略。

{phang}
{opth basedir:(strings:string)} 指定 {it:srcfile} 中相对链接的基目录。此选项仅在指定 {cmd:docx} 选项或 {cmd:embedimage} 选项时适用；否则，将忽略此选项。

{phang}
{cmd:docx} 指定目标文件以Microsoft Word ({cmd:.docx})格式保存。如果目标文件具有 {cmd:.docx} 扩展名，则隐含使用 {cmd:docx} 选项。转换过程首先生成HTML文件，然后使用 {help html2docx_zh} 生成最终的Word文档。


{marker remarks}{...}
{title:备注}

{pstd}
{cmd:markdown} 将Markdown文档转换为HTML文件或Word ({cmd:.docx})文档。Markdown文档使用易读的纯文本轻量级标记语言编写。有关Markdown的详细讨论和语法，请参见
{browse "https://en.wikipedia.org/wiki/Markdown":Markdown维基百科页面}。

{pstd}
Stata使用Flexmark的Pegdown仿真作为其默认的Markdown文档处理引擎。有关Pegdown的Markdown风格的信息，请参见
{browse "https://github.com/sirthias/pegdown":Pegdown GitHub页面}。

{pstd}
请参见 {manhelp dyndoc RPT} 和 {manhelp dyntext RPT} 以获取Stata动态文档生成命令的完整描述。 {cmd:markdown} 被 {cmd:dyndoc} 使用，但程序员也可以直接使用它。
{p_end}

{pstd}
假设我们有包含Markdown格式文本的文件 {cmd:markdown1.txt}。

{pstd}
在Stata中生成目标HTML文件，我们输入

{phang2}
{cmd:. markdown markdown1.txt, saving(tips.html)}

{pstd}
HTML文件 {cmd:tips.html} 已保存。

{pstd}
您可以在此查看这些相关文件
{browse "https://www.stata-press.com/data/r16/reporting/"}。
{p_end}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <markdown.sthlp>}