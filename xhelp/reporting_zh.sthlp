{smcl}
{* *! version 1.0.0  19jun2019}{...}
{vieweralsosee "[RPT] Intro" "mansection RPT Intro"}{...}
{viewerjumpto "Description" "reporting_zh##description"}{...}
{viewerjumpto "Links to PDF documentation" "reporting_zh##linkspdf"}
{help reporting:English Version}
{hline}{...}
{p2colset 1 16 18 2}{...}
{p2col:{bf:[RPT] Intro} {hline 2}}报告命令简介{p_end}
{p2col:}({mansection RPT Intro:查看完整PDF手册条目}){p_end}
{p2colreset}{...}


{marker description}{...}
{title:描述}

{pstd}
Stata 的命令用于导出估计结果、汇总统计和图表，以多种格式生成格式整齐的文件。此条目提供了用于创建不同类型 Stata 输出文件的命令索引，以及允许您将文件从一种类型转换为另一种类型的命令索引。


{title:导出到 Word (.docx) 文件}

{synoptset 24}{...}
{synopt :{helpb putdocx intro}}生成 Office Open XML (.docx) 文件简介{p_end}
{synopt :{helpb putdocx begin}}向 Office Open XML (.docx) 文件添加分隔符{p_end}
{synopt :{helpb putdocx pagebreak}}创建 Office Open XML (.docx) 文件{p_end}
{synopt :{helpb putdocx paragraph}}向 Office Open XML (.docx) 文件添加文本或图像{p_end}
{synopt :{helpb putdocx table}}向 Office Open XML (.docx) 文件添加表格{p_end}


{title:导出到 PDF 文件}

{synopt :{helpb putpdf intro}}生成 PDF 文件简介{p_end}
{synopt :{helpb putpdf begin}}创建 PDF 文件{p_end}
{synopt :{helpb putpdf pagebreak}}向 PDF 文件添加分隔符{p_end}
{synopt :{helpb putpdf paragraph}}向 PDF 文件添加文本或图像{p_end}
{synopt :{helpb putpdf table}}向 PDF 文件添加表格{p_end}


{title:导出到 Excel 文件}

{synopt :{help putexcel_zh}}将结果导出到 Excel 文件{p_end}
{synopt :{helpb putexcel advanced}}使用高级语法将结果导出到 Excel 文件{p_end}


{title:创建动态文档}

{synopt :{helpb Dynamic documents intro}}动态文档简介{p_end}
{synopt :{helpb Dynamic tags}}文本文件的动态标签{p_end}
{synopt :{help dyndoc_zh}}将动态 Markdown 文档转换为 HTML 或 Word (.docx) 文档{p_end}

{synopt :{help dyntext_zh}}处理文本文件中的 Stata 动态标签{p_end}
{synopt :{help markdown_zh}}将 Markdown 文档转换为 HTML 文件或 Word (.docx) 文档{p_end}


{title:转换文件类型}

{synopt :{help html2docx_zh}}将 HTML 文件转换为 Word (.docx) 文档{p_end}
{synopt :{help docx2pdf_zh}}将 Word (.docx) 文档转换为 PDF 文件{p_end}


{marker linkspdf}{...}
{title:链接到 PDF 文档}

        {mansection RPT IntroRemarksandexamples:备注和示例}

{pstd}
上述部分未包含在此帮助文件中。
{p_end}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <reporting.sthlp>}