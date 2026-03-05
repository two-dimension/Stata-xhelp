{smcl}
{* *! version 1.0.0  13may2019}{...}
{vieweralsosee "[RPT] 动态文档简介" "mansection RPT Dynamicdocumentsintro"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[RPT] 动态标签" "help dynamic tags"}{...}
{vieweralsosee "[RPT] dyndoc" "help dyndoc_zh"}{...}
{vieweralsosee "[RPT] dyntext" "help dyntext_zh"}{...}
{vieweralsosee "[RPT] markdown" "help markdown_zh"}{...}
{viewerjumpto "描述" "dynamic_intro_zh##description"}{...}
{viewerjumpto "PDF 文档链接" "dynamic_intro_zh##linkspdf"}
{help dynamic_intro:English Version}
{hline}{...}
{p2colset 1 34 31 2}{...}
{p2col:{bf:[RPT] 动态文档简介} {hline 2}}动态文档的介绍{p_end}
{p2col:}({mansection RPT Dynamicdocumentsintro:查看完整 PDF 手册条目}){p_end}
{p2colreset}{...}


{marker description}{...}
{title:描述}

{pstd}
Stata 的动态文档命令创建包含 Stata 结果的文本文件、Word ({cmd:.docx}) 文档和 HTML 文件。使用这些命令，您可以创建结合文本、摘要统计、回归结果、图形和其他 Stata 结果的文档。您可以包括 Stata 命令的完整输出，或纳入命令结果中的单个值。Word 文档和 HTML 文件可以使用 Markdown 文本格式语言轻松自定义。

{pstd}
有关动态文档的详细信息，请参见以下手册条目：

{synoptset 22 tabbed}{...}
{synopt :{manhelp Dynamic_tags RPT:动态标签}}文本文件的动态标签{p_end}

{synopt :{manhelp dyndoc RPT}}将动态 Markdown 文档转换为 HTML 或 Word (.docx) 文档{p_end}

{synopt :{manhelp dyntext RPT}}处理文本文件中的 Stata 动态标签{p_end}

{synopt :{manhelp markdown RPT}}将 Markdown 文档转换为 HTML 文件或 Word (.docx) 文档{p_end}
{p2colreset}{...}

{pstd}
这些文档是动态的，因为随着您的数据变化，您只需重新运行创建动态文档的 {cmd:dyndoc} 或 {cmd:dyntext} 命令，HTML 文件、Word 文档或文本文件将使用新结果进行更新。


{marker linkspdf}{...}
{title:PDF 文档链接}

        {mansection RPT DynamicdocumentsintroRemarksandexamples:备注和示例}

{pstd}
上述部分不包括在此帮助文件中。
{p_end}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <dynamic_intro.sthlp>}