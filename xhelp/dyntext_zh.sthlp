{smcl}
{* *! version 1.2.0  08may2019}{...}
{vieweralsosee "[RPT] dyntext" "mansection RPT dyntext"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[RPT] Dynamic documents intro" "help dynamic documents intro"}{...}
{vieweralsosee "[RPT] Dynamic tags" "help dynamic tags"}{...}
{vieweralsosee "[RPT] dyndoc" "help dyndoc_zh"}{...}
{vieweralsosee "[RPT] markdown" "help markdown_zh"}{...}
{viewerjumpto "Syntax" "dyntext_zh##syntax"}{...}
{viewerjumpto "Description" "dyntext_zh##description"}{...}
{viewerjumpto "Links to PDF documentation" "dyntext_zh##linkspdf"}{...}
{viewerjumpto "Options" "dyntext_zh##options"}{...}
{viewerjumpto "Remarks" "dyntext_zh##remarks"}
{help dyntext:English Version}
{hline}{...}
{p2colset 1 18 20 2}{...}
{p2col:{bf:[RPT] dyntext} {hline 2}}处理 Stata 动态标签于文本文件{p_end}
{p2col:}({mansection RPT dyntext:查看完整 PDF 手册条目}){p_end}
{p2colreset}{...}


{marker syntax}{...}
{title:语法}

{p 8 16 2}
{cmd:dyntext} {it:srcfile} [{it:arguments}]{cmd:,}
{opth sav:ing(filename:targetfile)}
[{it:options}]

{phang}
{it:srcfile} 是一个包含 {help dynamic tags:Stata 动态标签} 的纯文本文件。{it:srcfile} 和 {it:targetfile} 可以是任何文本格式（{cmd:.txt}，{cmd:.html}，{cmd:.do}）。

{phang}
{it:arguments} 存储在局部宏 {cmd:`1`}、{cmd:`2`} 等中，可以在 {it:srcfile} 中使用；请参阅 {findalias frarg}。

{phang}
如果 {it:srcfile} 和 {it:targetfile} 包含空格或其他特殊字符，您必须将它们用双引号括起来。


{marker dyntext_options}{...}
{synoptset 22 tabbed}{...}
{synopthdr}
{synoptline}
{p2coldent :* {opth sav:ing(filename:targetfile)}}指定要保存的目标文件{p_end}
{synopt :{opt rep:lace}}如果目标文件已存在，则替换该文件{p_end}
{synopt :{opt norem:ove}}不处理 {cmd:<<dd_remove>>} 和 {cmd:<</dd_remove>>} {help dynamic tags:动态标签}{p_end}
{synopt :{cmd:nostop}}出错时不停止处理{p_end}
{synoptline}
{p2colreset}{...}
{p 4 6 2}
* {opt saving(targetfile)} 是必需的。


{marker description}{...}
{title:描述}

{pstd}
{cmd:dyntext} 将一个动态文本文件（同时包含纯文本和 Stata 命令的文件）转换为文本格式的输出文件。Stata 处理动态文本文件中的 Stata 动态标签（参见 {helpb dynamic tags:[RPT] 动态标签}），并创建输出文本文件。

{pstd}
如果您想将动态文本文件转换为 HTML 或 Word ({cmd:.docx}) 文档，请参见 {manhelp dyndoc RPT}。如果您想将 Markdown 文档转换为 HTML 或 Word 文档，请参见 {manhelp markdown RPT}。


{marker linkspdf}{...}
{title:PDF 文档链接}

        {mansection RPT dyntextQuickstart:快速入门}
        {mansection RPT dyntextRemarksandexamples:备注和示例}

{pstd}
上述部分不包括在此帮助文件中。


{marker options}{...}
{title:选项}

{phang} 
{opth saving:(filename:targetfile)} 指定要保存的目标文件。{cmd:saving()} 是必需的。

{phang}
{opt replace} 指定如果目标文件已存在，则替换该文件。

{phang}
{opt noremove} 指定不处理 {cmd:<<dd_remove>>} 和 {cmd:<</dd_remove>>} 标签。  

{phang}
{opt nostop} 允许即使在出现错误的情况下也继续处理文档。默认情况下，如果出现错误，{cmd:dyntext} 将停止处理文档。错误可能是由于动态标签格式不正确或在标签内执行 Stata 代码造成的。  


{marker remarks}{...}
{title:备注}

{pstd}
动态文档包含静态叙述和动态标签。动态标签是给 {cmd:dyntext} 的指令，以执行某个操作，例如运行一段 Stata 代码、将 Stata 表达式的结果插入文本、将 Stata 图形导出为图像文件，或包含指向图像文件的链接。数据或 Stata 的任何更改将在文档创建时改变输出。使用动态文档的主要优点是

{phang2}o 文档中的结果来自执行命令，而不是从 Stata 复制并粘贴到文档中；

{phang2}o 不需要维护并行的 do-files； 

{phang2}o 数据或 Stata 的任何更改都会在文档创建时反映到最终文档中。 

{pstd}
假设我们有文件 {cmd:dyntext_ex.txt}，其中包含包括 {help dynamic tags:Stata 动态标签} 的文本。

{pstd}
要在 Stata 中生成输出文件，我们输入

{phang2}
{cmd:. dyntext dyntext_ex.txt, saving(dyntext_res.txt)}

{pstd}
文件 {cmd:dyntext_res.txt} 被保存。

{pstd}
您可以在以下网址查看这些文件
{browse "https://www.stata-press.com/data/r16/reporting/"}。
{p_end}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <dyntext.sthlp>}