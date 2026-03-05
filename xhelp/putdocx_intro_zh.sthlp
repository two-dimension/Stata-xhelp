{smcl}
{* *! version 1.0.0  08may2019}{...}
{vieweralsosee "[RPT] putdocx intro" "mansection RPT putdocxintro"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[RPT] putdocx begin" "help putdocx begin"}{...}
{vieweralsosee "[RPT] putdocx pagebreak" "help putdocx pagebreak"}{...}
{vieweralsosee "[RPT] putdocx paragraph" "help putdocx paragraph"}{...}
{vieweralsosee "[RPT] putdocx table" "help putdocx table"}{...}
{viewerjumpto "Description" "putdocx intro##description"}{...}
{viewerjumpto "Links to PDF documentation" "putdocx intro##linkspdf"}
{help putdocx_intro:English Version}
{hline}{...}
{p2colset 1 24 26 2}{...}
{p2col:{bf:[RPT] putdocx intro} {hline 2}}生成 Office Open XML (.docx) 文件的介绍{p_end}
{p2col:}({mansection RPT putdocxintro:查看完整 PDF 手册条目}){p_end}
{p2colreset}{...}


{marker description}{...}
{title:描述}

{pstd}
{cmd:putdocx} 命令集创建包含文本、格式化图像和 Stata 估计结果及汇总统计表的 Office Open XML ({cmd:.docx}) 文档。以下命令用于创建、格式化、添加内容到以及保存与 Microsoft Word 2007 及更高版本兼容的 {cmd:.docx} 文件：

{synoptset 22 tabbed}{...}
{p2coldent:{bf:创建、保存和附加 .docx 文件} (参见 {helpb putdocx begin:[RPT] putdocx begin})}{p_end}

{synopt :{cmd:putdocx begin}}创建一个用于导出的 {cmd:.docx} 文件{p_end}
{synopt :{cmd:putdocx describe}}描述活动 {cmd:.docx} 文件的内容{p_end}
{synopt :{cmd:putdocx save}}保存并关闭 {cmd:.docx} 文件{p_end}
{synopt :{cmd:putdocx clear}}在不保存更改的情况下关闭 {cmd:.docx} 文件{p_end}
{synopt :{cmd:putdocx append}}附加多个 {cmd:.docx} 文件的内容{p_end}


{p2coldent :{bf:在 .docx 文件中插入分页符} (参见 {helpb putdocx pagebreak:[RPT] putdocx pagebreak})}{p_end}

{synopt :{cmd:putdocx pagebreak}}在文档中添加分页符{p_end}
{synopt :{cmd:putdocx sectionbreak}}在文档中添加新章节{p_end}


{p2coldent :{bf:添加包含文本和图像的段落} (参见 {helpb putdocx paragraph:[RPT] putdocx paragraph})}{p_end}

{synopt :{cmd:putdocx paragraph}}向活动文档添加新段落{p_end}
{synopt :{cmd:putdocx text}}向活动段落添加文本{p_end}
{synopt :{cmd:putdocx textblock}}向活动段落或新段落添加一段文本{p_end}
{synopt :{cmd:putdocx textfile}}以预定义样式向新段落添加一段格式化文本{p_end}
{synopt :{cmd:putdocx image}}向活动段落附加一张图像{p_end}
{synopt :{cmd:putdocx pagenumber}}向页眉或页脚中的段落添加页码{p_end}


{p2coldent :{bf:向 .docx 文件中添加表格} (参见 {helpb putdocx table:[RPT] putdocx table})}{p_end}

{synopt :{opt putdocx table}}在 {cmd:.docx} 文件中创建一张包含估计结果、汇总统计或内存数据的新表{p_end}
{p2colreset}{...}


{marker linkspdf}{...}
{title:PDF 文档链接}

        {mansection RPT putdocxintroRemarksandexamples:备注和示例}

{pstd}
上述部分不包含在此帮助文件中。
{p_end}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <putdocx_intro.sthlp>}