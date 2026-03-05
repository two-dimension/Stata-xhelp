{smcl}
{* *! version 1.1.3  30may2019}{...}
{viewerdialog "putexcel" "dialog putexcel"}{...}
{vieweralsosee "[RPT] putexcel advanced" "mansection RPT putexceladvanced"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[RPT] putexcel" "help putexcel_zh"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[D] export" "help export_zh"}{...}
{vieweralsosee "[D] import" "help import_zh"}{...}
{vieweralsosee "[P] postfile" "help postfile"}{...}
{vieweralsosee "[RPT] putdocx intro" "help putdocx intro"}{...}
{vieweralsosee "[RPT] putpdf intro" "help putpdf intro"}{...}
{vieweralsosee "[P] return" "help return_zh"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[M-5] _docx*()" "help mf__docx_zh"}{...}
{vieweralsosee "[M-5] xl()" "help mf_xl_zh"}{...}
{viewerjumpto "Syntax" "putexcel advanced##syntax"}{...}
{viewerjumpto "Menu" "putexcel advanced##menu"}{...}
{viewerjumpto "Description" "putexcel advanced##description"}{...}
{viewerjumpto "Links to PDF documentation" "putexcel_advanced_zh##linkspdf"}{...}
{viewerjumpto "Options" "putexcel advanced##options"}{...}
{viewerjumpto "Examples" "putexcel advanced##examples"}{...}
{viewerjumpto "Technical note" "putexcel advanced##technote1"}
{help putexcel_advanced:English Version}
{hline}{...}
{p2colset 1 28 30 2}{...}
{p2col:{bf:[RPT] putexcel advanced} {hline 2}}使用高级语法将结果导出到Excel文件{p_end}
{p2col:}({mansection RPT putexceladvanced:查看完整PDF手册条目}){p_end}
{p2colreset}{...}


{marker syntax}{...}
{title:语法}

{phang}
设置要导出的工作簿

{p 8 32 2}
{cmd:putexcel set}
{help filename_zh:{it:filename}}
[{cmd:,} {help putexcel advanced##setopts:{it:set_options}}]


{phang}
指定格式和输出

{p 8 32 2}
{cmd:putexcel} {help putexcel advanced##spec:{it:spec}}_1
[{it:spec_2} [...]]
[{cmd:,}
{help putexcel advanced##exptopts:{it:export_options}}
{help putexcel advanced##fmtopts:{it:format_options}}]


{phang}
关闭并保存当前Excel文件

{p 8 32 2}
{cmd:putexcel save}


{phang}
描述当前导出设置

{p 8 32 2}
{cmd:putexcel describe}


{phang}
清除当前导出设置

{p 8 32 2}
{cmd:putexcel clear}


{marker spec}{...}
{marker cellrange}{...}
{phang}
{it:spec} 可能是 
    {it:ul_cell} 或形式为
    {it:ul_cell}{cmd::}{it:lr_cell}的{it:cellrange}
如果不写出任何输出，也可能是以下之一 
{help putexcel advanced##output:output types}:

            {it:ul_cell} {cmd:=} {it:exp} 

            {it:ul_cell}{cmd::}{it:lr_cell} {cmd:=} {it:exp}

            {it:ul_cell} {cmd:=} {opt ma:trix(matname)}

            {it:ul_cell} {cmd:=} {opth image(filename)}

            {it:ul_cell} {cmd:=} {it:returnset}

            {it:ul_cell} {cmd:=} {opt formula(formula)}

            {it:ul_cell} {cmd:=} {cmd:etable}[{cmd:(}{it:#}1 {it:#}2 ... {it:#}{it:n}{cmd:)}]

{marker ulcell}{...}
{phang}
{it:ul_cell} 是使用标准Excel表示法指定的有效Excel左上角单元格，{it:lr_cell} 是有效的Excel右下角单元格。  
如果您多次指定{it:ul_cell}作为输出位置，则最右边的指定是写入Excel文件的内容。 

{marker setopts}{...}
{synoptset 42}{...}
{synopthdr:set_options}
{synoptline}
INCLUDE help putexcel_setopts_list.ihlp
{synoptline}

{marker exptopts}{...}
{synoptset 42 tabbed}{...}
{synopthdr:export_options}
{synoptline}
{syntab:Main}
INCLUDE help putexcel_exptopts_list.ihlp
{synoptline}

{marker fmtopts}{...}
{synoptset 42 tabbed}{...}
{synopthdr:format_options}
{synoptline}
{syntab:Number}
{synopt :{opth nfor:mat(putexcel_advanced##nformat:excelnfmt)}}指定数字格式{p_end}

{syntab:Alignment}
INCLUDE help putexcel_alignopts_list.ihlp

{syntab:Font}
{synopt :{cmd:font(}{help putexcel_advanced##font:{it:fontname}} [{cmd:,} {help putexcel_advanced##font:{it:size}} [{cmd:,} {help putexcel_advanced##font:{it:color}}]]{cmd:)}}指定字体、字体大小和字体颜色{p_end}
INCLUDE help putexcel_textopts_list.ihlp

{syntab:Border}
INCLUDE help putexcel_bordopts_list.ihlp

{syntab:Fill}
INCLUDE help putexcel_fillopt_list.ihlp
{synoptline}
 

{marker output}{...}
    {bf:输出类型}

INCLUDE help putexcela_output_types.ihlp


{marker menu}{...}
{title:菜单}

{phang}
{bf:文件 > 导出 > 结果到Excel电子表格 (*.xls;*.xlsx)}


{marker description}{...}
{title:描述}

{pstd}
带有高级语法的 {opt putexcel} 可同时将Stata {help expressions:表达式}、{help matrix_zh:矩阵}、图像以及 {help return_zh:存储结果} 写入Excel文件。它还可以用于格式化工作表中单元格的现有内容。此语法旨在由在后台调用 {cmd:putexcel} 的命令程序员以及其他高级用户使用。支持Excel 1997/2003（{cmd:.xls}）文件和Excel 2007/2010及更高版本（{cmd:.xlsx}）文件。语法的简化版本记录在 {manhelp putexcel RPT} 中。

{pstd}
{opt putexcel} {opt set} 设置要创建、修改或替换的Excel文件，用于后续的 {opt putexcel} 命令。您必须在使用任何其他 {opt putexcel} 命令之前设置目标文件。{cmd:putexcel save}
关闭通过命令 {cmd:putexcel set} ...{cmd:, open} 打开的文件，并将内存中的文件保存到磁盘。{opt putexcel clear} 清除由 {opt putexcel set} 设置的文件信息。{opt putexcel describe} 显示由 {opt putexcel set} 设置的文件信息。


{marker linkspdf}{...}
{title:链接到PDF文档}

        {mansection RPT putexceladvancedQuickstart:快速开始}

        {mansection RPT putexceladvancedRemarksandexamples:备注和示例}

{pstd}
上述部分未包含在此帮助文件中。


{marker options}{...}
{title:选项}

{dlgtab:Set}

INCLUDE help putexcel_set_opts.ihlp

{dlgtab:Main}

INCLUDE help putexcela_expt_opts.ihlp

{dlgtab:Number}

INCLUDE help putexcel_num_opt.ihlp

{dlgtab:Alignment}

INCLUDE help putexcela_align_opts.ihlp

{dlgtab:Font}

INCLUDE help putexcela_text_opts.ihlp

{dlgtab:Border}

INCLUDE help putexcela_bord_opts.ihlp

{dlgtab:Fill}

INCLUDE help putexcela_fill_opt.ihlp


{marker examples}{...}
{title:示例}

{pstd}
将 {cmd:results.xlsx} 的第一页声明为后续 {cmd:putexcel} 命令的目标{p_end}
{phang2}{cmd:. putexcel set results}

{pstd}
将文本“变量”、“均值”和“标准差”写入单元格 A1、B1 和 C1，并在单元格下方添加细边框{p_end}
{phang2}{cmd:. putexcel A1 = "变量" B1 = "均值" C1 = "标准差", border(bottom)}

{pstd}
总结 {cmd:mpg} 变量来自 {cmd:auto.dta}{p_end}
{phang2}{cmd:. sysuse auto, clear}{p_end}
{phang2}{cmd:. summarize mpg}

{pstd}
获取均值和标准差的返回结果名称，{cmd:r(mean)} 和 {cmd:r(sd)}{p_end}
{phang2}{cmd:. return list}

{pstd}
在单元格 A2、B2 和 C2 中写入变量名称、均值和标准差。为均值和标准差指定两位小数的格式{p_end}
{phang2}{cmd:. putexcel A2 = "mpg" B2 = `r(mean)' C2 = `r(sd)', nformat(number_d2)}


{marker technote1}{...}
{title:技术说明：Excel数据大小限制以及日期和时间}

{pstd}
您可以在 {helpb import_excel##technote1:help import excel} 中阅读有关Excel数据大小限制和两种不同Excel日期系统的信息。
{p_end}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <putexcel_advanced.sthlp>}