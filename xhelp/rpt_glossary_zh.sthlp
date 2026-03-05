{smcl}
{* *! version 1.0.0  08may2019}{...}
{vieweralsosee "[RPT] Glossary" "mansection RPT Glossary"}{...}
{viewerjumpto "Description" "rpt_glossary_zh##description"}{...}
{viewerjumpto "Glossary" "rpt_glossary_zh##glossary"}
{help rpt_glossary:English Version}
{hline}{...}
{p2colset 1 19 21 2}{...}
{p2col:{bf:[RPT] Glossary} {hline 2}}术语表{p_end}
{p2col:}({mansection RPT Glossary:查看完整的 PDF 手册条目}){p_end}
{p2colreset}{...}


{marker description}{...}
{title:描述}

{pstd}此处定义了常用术语。


{marker glossary}{...}
{title:术语表}

{phang}
{bf:动态文档}。
动态文档包含静态叙述和动态标签。数据或 Stata 的任何变化会在文档创建时改变输出。使用动态文档的主要优点是：1）文档中的结果来自执行命令，而不是从 Stata 复制并粘贴到文档中；2）无需维护并行的 do 文件；3）数据或 Stata 的任何变化都将在文档创建时反映在最终文档中。

{phang}
{bf:动态标签}。
动态标签是出现在生成动态文档的源文件中的指令。这些动态标签指定在 Stata 的动态文档命令 {help dyndoc_zh} 和 {help dyntext_zh} 处理源文件时所采取的操作。例如，动态标签可以指示运行一段 Stata 代码，可以插入 Stata 表达式的结果到文本中，还可以导出 Stata 图形到图像文件，并在动态文档中包含指向图像文件的链接；有关可用动态标签的完整列表，请参见 {helpb dynamic tags:[RPT] Dynamic tags}。

{phang}
{bf:动态文本文件}。
动态文本文件包含普通文本和动态标签。动态文本文件可以通过 {help dyntext_zh} 处理，以创建一个包含 Stata 结果的文本文件。

{phang}
{bf:Markdown}。
Markdown 是一种易读的、纯文本的轻量级标记语言。有关 Markdown 的详细讨论和语法，请参见 {browse "https://en.wikipedia.org/wiki/Markdown":Markdown Wikipedia 页面}。

{pmore}
Markdown 可以轻松转换为 HTML 等输出格式。Stata 使用 Flexmark 的 Pegdown 模拟作为其默认的 Markdown 文档处理引擎。有关 Pegdown 的 Markdown 语法信息，请参见 {browse "https://github.com/sirthias/pegdown":Pegdown GitHub 页面}。
{p_end}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <rpt_glossary.sthlp>}