{smcl}
{* *! version 2.0.1  15may2018}{...}
{viewerdialog xmlsave "dialog xmlsave"}{...}
{viewerdialog xmluse "dialog xmluse"}{...}
{vieweralsosee prdocumented "help prdocumented"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[D] compress" "help compress_zh"}{...}
{vieweralsosee "[D] export" "help export_zh"}{...}
{vieweralsosee "[D] File formats .dta" "help dta_zh"}{...}
{vieweralsosee "[D] import" "help import_zh"}{...}
{viewerjumpto "Syntax" "xmlsave_zh##syntax"}{...}
{viewerjumpto "Description" "xmlsave_zh##description"}{...}
{viewerjumpto "Options for xmlsave" "xmlsave_zh##options_xmlsave"}{...}
{viewerjumpto "Options for xmluse" "xmlsave_zh##options_xmluse"}{...}
{viewerjumpto "Examples" "xmlsave_zh##examples"}
{help xmlsave:English Version}
{hline}{...}
{pstd}
{cmd:xmlsave} 继续可用，但自 Stata 15 起，不再是 Stata 的官方部分。 这是原始帮助文件，我们将不再更新，因此某些链接可能无法正常工作。


{title:标题}

{p2colset 5 20 22 2}{...}
{p2col :{hi:[D] xmlsave} {hline 2}}以 XML 格式导出或导入数据集{p_end}
{p2colreset}{...}


{marker syntax}{...}
{title:语法}

{phang}
将内存中的数据集导出为 XML 格式

{p 8 32 2}
{cmdab:xmlsav:e} {it:{help filename_zh}} {ifin} [{cmd:,} 
{it:{help xmlsave##xmlsave_options:xmlsave_options}}]


{phang}
将内存中的数据集子集导出为 XML 格式

{p 8 32 2}
{cmdab:xmlsav:e} {varlist} {cmd:using} {it:{help filename_zh}} {ifin}
[{cmd:,} {it:{help xmlsave##xmlsave_options:xmlsave_options}}]


{phang}
导入 XML 格式数据集

{p 8 31 2}
{cmd:xmluse} {it:{help filename_zh}} [{cmd:,} 
{it:{help xmlsave##xmluse_options:xmluse_options}}]


{synoptset 31 tabbed}{...}
{marker xmlsave_options}{...}
{synopthdr :xmlsave_options}
{synoptline}
{syntab :主要}
{synopt :{cmdab:doc:type(dta)}}以 Stata 的 {cmd:.dta} 格式保存 XML 文件{p_end}
{synopt :{cmdab:doc:type(excel)}}以 Excel XML 格式保存 XML 文件{p_end}
{synopt :{opt dtd}}在 XML 文件中包含 Stata DTD{p_end}
{synopt :{opt leg:ible}}将 XML 格式化为更易读{p_end}
{synopt :{opt replace}}覆盖现有的 {it:{help filename_zh}}{p_end}
{synoptline}
{p2colreset}{...}

{synoptset 31}{...}
{marker xmluse_options}{...}
{synopthdr :xmluse_options}
{synoptline}
{synopt :{cmdab:doc:type(dta)}}以 Stata 的 {cmd:dta} 格式加载 XML 文件{p_end}
{synopt :{cmdab:doc:type(excel)}}以 Excel XML 格式加载 XML 文件{p_end}
{synopt :{cmd:sheet("}{it:sheetname}{cmd:")}}要加载的 Excel 工作表{p_end}
{synopt :{opt cell:s(upper-left:lower-right)}}要加载的 Excel 单元格范围{p_end}
{synopt :{opt date:string}}将 Excel 日期作为字符串导入{p_end}
{synopt :{opt all:string}}将所有 Excel 数据作为字符串导入{p_end}
{synopt :{opt first:row}}将 Excel 数据的第一行视为变量名称{p_end}
{synopt :{opt miss:ing}}将不一致的 Excel 类型视为缺失{p_end}
{synopt :{opt nocomp:ress}}导入 Excel 数据时不进行压缩{p_end}
{synopt :{opt clear}}在内存中替换数据{p_end}
{synoptline}
{p2colreset}{...}


{marker description}{...}
{title:描述}

{pstd}
{cmd:xmlsave} 和 {cmd:xmluse} 允许以 XML 文件格式导出或导入数据集，支持 Stata 的 {cmd:.dta} 格式和 Microsoft Excel 的 SpreadsheetML 格式。 XML 文件的优点在于它们是结构化文本文件，能够在理解 XML 的应用程序之间高度可移植。

{pstd}
Stata 可以直接导入 Microsoft Excel 的 {cmd:.xls} 或 {cmd:.xlsx} 格式文件。如果你有该格式的文件，或者希望将文件导出为该格式，请参见 {helpb import excel:[D] import excel}。

{pstd}
默认情况下，{cmd:xmlsave} 以 {cmd:dta} XML 格式导出内存中的数据。要导出数据，输入

{phang}{cmd:. xmlsave} {it:filename}

{pstd}
尽管有时你可能希望通过输入以下内容来明确指定要使用的文档类型定义 (DTD)

{phang}{cmd:. xmlsave} {it:filename}{cmd:, doctype(}{cmd:dta}{cmd:)}

{pstd}
{cmd:xmluse} 可以将 Excel 格式的 XML 或 Stata 格式的 XML 文件读取到 Stata 中。输入

{phang}{cmd:. xmluse} {it:filename}

{pstd}
Stata 将读入 XML 文件 {it:{help filename_zh}}{cmd:.xml}，在确定文件的文档类型为 {cmd:dta} 或 {cmd:excel} 之后，将数据加载到内存中。与 {cmd:xmlsave} 命令一样，文档类型也可以通过 {opt doctype()} 选项显式指定。

{phang}{cmd:. xmluse} {it:filename}{cmd:, doctype(}{cmd:dta}{cmd:)}

{pstd}
指定文档类型永远是有益的；实际上，推荐这么做，因为没有保证 Stata 能够根据 XML 文件内容确定文档类型。每当省略 {opt doctype()} 选项时，将显示一条注释，以识别 Stata 用于加载数据集的文档类型。

{pstd}
如果 {it:filename} 未指定扩展名，则假定为 {cmd:.xml}。

{pstd}
{cmd:xmlsave} 无法保存 {helpb data types:strL} 类型的数据。


{marker options_xmlsave}{...}
{title:xmlsave 选项}

{dlgtab:主要}

{phang}
{cmd:doctype(dta}{c |}{cmd:excel)} 指定导出数据集时使用的 DTD。

{pmore}
{cmd:doctype(dta)}，默认值，指定 XML 文件将使用 Stata 的 {cmd:.dta} 格式导出（见 {manhelp dta P:File formats .dta}）。这类似于 Stata 的二进制 {cmd:dta} 格式数据集。所有可以在正常的 {cmd:dta} 文件中表示的数据将由此文档类型表示。

{pmore}
{cmd:doctype(excel)} 指定将使用 Microsoft 的 SpreadsheetML DTD 导出 XML 文件。SpreadsheetML 是 Microsoft 对 Excel XML 格式的称谓。指定此文档类型会生成一个通用电子表格，变量名称作为第一行，后面跟着数据。任何支持 Microsoft 的 SpreadsheetML 格式的 Microsoft Excel 版本都可以导入它。

{phang}
{opt dtd} 结合使用 {cmd:doctype(dta)} 时，会将必要的 DTD 嵌入 XML 文件中，以便其他应用程序的验证解析器可以验证 {cmd:dta} XML 格式。 然而，这个选项很少使用，因为它会增加文件大小并包含纯粹是可选的信息。

{phang}
{opt legible} 向 XML 文件添加缩进和其他可选格式，使其对人类可读性更高。然而，这种额外的格式在较大的数据集中是多余的，可能显著增大文件大小。

{phang}
{opt replace} 允许 {cmd:xmlsave} 覆盖现有的 {it:{help filename_zh}}{cmd:.xml}。


{marker options_xmluse}{...}
{title:xmluse 选项}

{phang}
{cmd:doctype(dta}{c |}{cmd:excel)} 指定从 {it:{help filename_zh}}{cmd:.xml} 加载数据时使用的 DTD。虽然这是可选的，但建议使用 {opt doctype()}。如果此选项与 {cmd:xmluse} 一起省略，将自动确定 {it:filename}{cmd:.xml} 的文档类型。当发生这种情况时，将显示一条注释，显示用于转换 {it:filename}{cmd:.xml} 的文档类型。此种文档类型的自动确定保证并不可靠，建议使用此选项以防止不同 XML 格式之间的歧义。显式指定文档类型也提高了速度，因为数据仅传输一次即可加载，而不是在确定文档类型时传输两次。在较大的数据集中，这种优势可能会显著。

{pmore}
{cmd:doctype(dta)} 指定将使用 Stata 的 {cmd:dta} 格式加载 XML 文件。该文档类型与 Stata 的二进制 {cmd:.dta} 格式密切相关（见 {manhelp dta P:File formats .dta}）。

{pmore}
{cmd:doctype(excel)} 指定将使用 Microsoft 的 SpreadsheetML DTD 加载 XML 文件。SpreadsheetML 是 Microsoft 对 Excel XML 格式的称谓。

{phang}
{cmd:sheet("}{it:sheetname}{cmd:")} 导入名为 {it:sheetname} 的工作表。Excel 文件可以包含一个文档中的多个工作表，因此使用 {opt sheet()} 选项可以指定要加载其中的哪个。默认情况下，会导入 {it:{help filename_zh}}{cmd:.xml} 中出现的第一个工作表。

{phang}
{opt "cells(upper-left:lower-right)"} 指定要加载的 Excel 工作表中的单元格范围。默认范围为工作表的整个范围，即使某些部分为空。通常使用 {opt cells()} 是必要的，因为数据可能在电子表格中偏移，或者仅需加载部分数据。单元格范围符号遵循所有电子表格应用程序中流行的字母-列和数字-行约定。以下是有效的示例：

{phang2}{cmd:. xmluse} {it:filename}{cmd:, doctype(excel) cells(A1:D100)}

{phang2}{cmd:. xmluse} {it:filename}{cmd:, doctype(excel) cells(C23:AA100)}

{phang}
{cmd:datestring} 强制所有 Excel SpreadsheetML 日期格式作为字符串导入，以保留在自动转换为 Stata 日期格式时会丢失的时间信息。使用此选项后，可以在加载数据后从字符串中解析时间信息。

{phang}
{cmd:allstring} 强制 Stata 将所有 Excel SpreadsheetML 数据作为字符串数据导入。虽然数据类型信息由 SpreadsheetML 决定，但没有约束可以确保列内数据类型的一致性。当发生这种不一致时，唯一的解决方案是将数据作为字符串数据导入。

{phang}
{cmd:firstrow} 指定 Excel 工作表中的第一行数据为变量名称。默认行为是生成通用名称。如果任何名称不是有效的 Stata 变量名称，将用通用名称替代。

{phang}
{cmd:missing} 强制在 SpreadsheetML 列中任何不一致的数据类型作为缺失数据导入。这可能出于各种原因是必要的，但通常会在某个单元格的公式导致错误时发生，从而将类型为 {cmd:ERROR} 的单元格插入到主要为 {cmd:NUMERIC} 类型的列中。

{phang}
{cmd:nocompress} 指定从 Excel SpreadsheetML 文件加载后不进行数据压缩。由于 SpreadsheetML 中的数据类型信息可能模糊，因此 Stata 最初以广义数据类型导入数据，并在所有数据加载后执行 {help compress_zh}，以将数据类型减少到更适当的大小。以下表显示了压缩前使用的数据类型转换与使用 {opt nocompress} 后的结果数据类型：

	  SpreadsheetML 类型     初始 Stata 类型 
	 {hline 43}
          字符串                 {cmd:str2045}
          数字                   {cmd:double}
          布尔值                 {cmd:double}
          日期时间               {cmd:double}
          错误                   {cmd:str2045}
	 {hline 43}

{phang}
{cmd:clear} 在从 {it:{help filename_zh}}{cmd:.xml} 加载之前清除内存中的数据。


{marker examples}{...}
{title:导出 XML 文件的示例}

{pstd}
要将当前 Stata 数据集导出到文件 {cmd:auto.xml}，输入

{phang2}{cmd:. xmlsave auto} 

{pstd}
要用包含变量 {cmd:make}、{cmd:mpg} 和 {cmd:weight} 的新文件覆盖现有的 XML 数据集，输入

{phang2}{cmd:. xmlsave make mpg weight using auto, replace}

{pstd}
要将数据集导出为适用于 Microsoft Excel 的 XML 文件，输入

{phang2}{cmd:. xmlsave auto, doctype(excel) replace}


{title:使用 XML 文件的示例}

{pstd}
假设我们有一个名为 {cmd:auto.xml} 的文件，使用 {cmd:doctype(dta)} 选项通过 {cmd:xmlsave} 导出，我们可以用命令读入这个数据集

{phang2}{cmd:. xmluse auto, doctype(dta) clear}	

{pstd}
如果文件是从 Microsoft Excel 导出到名为 {cmd:auto.xml} 的文件中，并且该文件包含工作表 {cmd:Rollover Data}，其中第一行代表列标题（或变量名称），我们可以通过输入以下内容导入该工作表

{phang2}{cmd:. xmluse auto, doctype(excel) sheet("Rollover Data") firstrow clear}

{pstd}
继续前面的示例，如果我们只想要该工作表中的第一列数据，并且知道只有 75 行，包括一个变量名称行，我们可以输入

{phang2}{cmd:. xmluse auto, doc(excel) sheet("Rollover Data") cells(A1:A75) first clear}
{p_end}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <xmlsave.sthlp>}