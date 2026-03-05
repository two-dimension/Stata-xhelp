{smcl}
{* *! version 1.0.0  08may2019}{...}
{vieweralsosee "[RPT] putpdf intro" "mansection RPT putpdfintro"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[RPT] putpdf begin" "help putpdf begin"}{...}
{vieweralsosee "[RPT] putpdf pagebreak" "help putpdf pagebreak"}{...}
{vieweralsosee "[RPT] putpdf paragraph" "help putpdf paragraph"}{...}
{vieweralsosee "[RPT] putpdf table" "help putpdf table"}{...}
{viewerjumpto "Description" "putpdf intro##description"}{...}
{viewerjumpto "Links to PDF documentation" "putpdf intro##linkspdf"}
{help putpdf_intro:English Version}
{hline}{...}
{p2colset 1 23 25 2}{...}
{p2col:{bf:[RPT] putpdf intro} {hline 2}}生成 PDF 文件简介{p_end}
{p2col:}({mansection RPT putpdfintro:查看完整的 PDF 手册条目}){p_end}
{p2colreset}{...}


{marker description}{...}
{title:描述}

{pstd}
{cmd:putpdf} 命令集创建包含文本、格式化图像和 Stata 估计结果及汇总统计表的 PDF 文档。以下命令用于创建、格式化、添加内容到 PDF 文档并保存这些文档。


{synoptset 22 tabbed}{...}
{p2coldent:{bf:创建和保存 PDF 文件} (参见 {helpb putpdf begin:[RPT] putpdf begin})}{p_end}

{synopt :{cmd:putpdf begin}}创建一个用于导出的 PDF 文件{p_end}
{synopt :{cmd:putpdf describe}}描述活动 PDF 文件的内容{p_end}
{synopt :{cmd:putpdf save}}保存并关闭 PDF 文件{p_end}
{synopt :{cmd:putpdf clear}}在不保存更改的情况下关闭 PDF 文件{p_end}


{p2coldent :{bf:在 PDF 文件中插入分页} (参见 {helpb putpdf pagebreak:[RPT] putpdf pagebreak})}{p_end}

{synopt :{cmd:putpdf pagebreak}}向文档添加分页{p_end}
{synopt :{cmd:putpdf sectionbreak}}向文档添加新节{p_end}


{p2coldent :{bf:添加包含文本和图像的段落} (参见 {helpb putpdf paragraph:[RPT] putpdf paragraph})}{p_end}

{synopt :{cmd:putpdf paragraph}}向活动文档添加新段落{p_end}
{synopt :{cmd:putpdf text}}向活动段落添加文本{p_end}
{synopt :{cmd:putpdf image}}向活动段落附加图像{p_end}


{p2coldent :{bf:向 PDF 文件中添加表格} (参见 {helpb putpdf table:[RPT] putpdf table})}{p_end}

{synopt :{opt putpdf table}}在 PDF 文件中创建一个包含估计结果、汇总统计或内存中数据的新表格{p_end}
{p2colreset}{...}


{marker linkspdf}{...}
{title:PDF 文档链接}

        {mansection RPT putpdfintroRemarksandexamples:备注和示例}

{pstd}
上述部分未包含在此帮助文件中。
{p_end}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <putpdf_intro.sthlp>}