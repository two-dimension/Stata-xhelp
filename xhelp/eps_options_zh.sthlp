{smcl}
{* *! version 1.2.10  15oct2018}{...}
{vieweralsosee "[G-3] eps_options" "mansection G-3 eps_options"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[G-2] graph export" "help graph_export_zh"}{...}
{vieweralsosee "[G-2] graph set" "help graph_set_zh"}{...}
{vieweralsosee "[G-3] ps_options" "help ps_options_zh"}{...}
{viewerjumpto "语法" "eps_options_zh##syntax"}{...}
{viewerjumpto "描述" "eps_options_zh##description"}{...}
{viewerjumpto "链接到 PDF 文档" "eps_options_zh##linkspdf"}{...}
{viewerjumpto "选项" "eps_options_zh##options"}{...}
{viewerjumpto "备注" "eps_options_zh##remarks"}
{help eps_options:English Version}
{hline}{...}
{p2colset 1 22 24 2}{...}
{p2col:{bf:[G-3]} {it:eps_options} {hline 2}}导出到封装的 PostScript 的选项{p_end}
{p2col:}({mansection G-3 eps_options:查看完整 PDF 手册条目}){p_end}
{p2colreset}{...}

{marker syntax}{...}
{title:语法}

{synoptset 30}{...}
{p2col:{it:eps_options}}描述{p_end}
{p2line}
{p2col:{cmd:logo(on)|{cmd:off)}}是否包含 Stata 标志{p_end}
{p2col:{cmd:cmyk(on)|{cmd:off)}}是否使用 CMYK 而不是 RGB 颜色
      {p_end}
{p2col:{cmdab:pre:view:(on)|{cmd:off)}}是否包含 TIFF 预览{p_end}
{p2col:{cmd:mag(}{it:#}{cmd:)}}放大/缩小因子；默认值为 100
      {p_end}
{p2col:{cmdab:font:face:(}{it:fontname}{cmd:)}}使用的默认字体{p_end}
{p2col:{cmd:fontfacesans(}{it:fontname}{cmd:)}}用于文本的字体
      {cmd:{c -(}stSans{c )-}} "字体"{p_end}
{p2col:{cmd:fontfaceserif(}{it:fontname}{cmd:)}}用于文本的字体
      {cmd:{c -(}stSerif{c )-}} "字体"{p_end}
{p2col:{cmd:fontfacemono(}{it:fontname}{cmd:)}}用于文本的字体
      {cmd:{c -(}stMono{c )-}} "字体"{p_end}
{p2col:{cmd:fontfacesymbol(}{it:fontname}{cmd:)}}用于文本的字体
      {cmd:{c -(}stSymbol{c )-}} "字体"{p_end}
{p2col:{cmd:fontdir(}{it:directory}{cmd:)}}（仅适用于 Unix）存储
      TrueType 字体的目录{p_end}
{p2col:{cmdab:or:ientation:(portrait}|}{p_end}
{p2col 21 37 37 2:{cmd:landscape)}}是否为纵向或横向{p_end}
{p2line}
{p2colreset}{...}

{p 4 6 2}
其中 {it:fontname} 可以是有效的字体名称或 {cmd:default} 以恢复
默认设置，而 {it:directory} 可以是有效的目录或
{cmd:default} 以恢复默认设置。

{pstd}
可以通过输入

	{cmd:. graph set eps}

{pstd}
列出当前的默认值，并可以通过输入

{p 8 16 2}
{cmd:. graph set}
{cmd:eps}
{it:name}
{it:value}

{pstd}
设置默认值，其中 {it:name} 是 {it:eps_option} 的名称，省略
括号。

{marker description}{...}
{title:描述}

{pstd}
这些 {it:eps_options} 在创建封装的 PostScript 文件时与 {cmd:graph} {cmd:export} 一起使用；请参见
{manhelp graph_export G-2:graph export}。

{marker linkspdf}{...}
{title:链接到 PDF 文档}

        {mansection G-3 eps_optionsRemarksandexamples:备注和示例}

{pstd}
上述部分未包含在此帮助文件中。

{marker options}{...}
{title:选项}

{phang}
{cmd:logo(on)} 和 {cmd:logo(off)}
    指定是否在图表底部包含 Stata 标志。

{phang}
{cmd:cmyk(on)} 和 {cmd:cmyk(off)}
    指定输出文件中的颜色是否应作为 CMYK 值而不是 RGB 值指定。

{phang}
{cmd:preview(on)} 和 {cmd:preview(off)}
    指定是否在封装的 PostScript 文件中包含图表的 TIFF 预览。该选项使得无法解释 PostScript 的文字处理软件可以显示文件的预览。预览通常在打印到非 PostScript 打印机时替代封装的 PostScript 文件。此选项在 Stata 控制台中不可用，并要求图形窗口可见。

{phang}
{cmd:mag(}{it:#}{cmd:)}
    指定图表绘制时比默认情况下缩小或放大。
    {cmd:mag(100)} 为默认值，表示普通大小。
    {cmd:mag(110)} 会使图表比通常大 10%，而
    {cmd:mag(90)} 会使图表比通常小 10%。
    {it:#} 必须是一个整数。

{phang}
{cmd:fontface(}{it:fontname}{cmd:)}
    指定用于渲染未指定其他字体的文本的 PostScript 字体名称。默认值为 {cmd:Helvetica}，可以通过将 {it:fontname} 指定为 {cmd:default} 来恢复。如果 {it:fontname} 包含空格，则必须用双引号括起来。

{phang}
{cmd:fontfacesans(}{it:fontname}{cmd:)}
    指定用于渲染已指定为 {cmd:{c -(}stSans{c )-}} "字体" 的文本的 PostScript 字体名称。默认值为 {cmd:Helvetica}，可以通过将 {it:fontname} 指定为 {cmd:default} 来恢复。如果 {it:fontname} 包含空格，则必须用双引号括起来。

{phang}
{cmd:fontfaceserif(}{it:fontname}{cmd:)}
    指定用于渲染已指定为 {cmd:{c -(}stSerif{c )-}} "字体" 的文本的 PostScript 字体名称。默认值为 {cmd:Times}，可以通过将 {it:fontname} 指定为 {cmd:default} 来恢复。如果 {it:fontname} 包含空格，则必须用双引号括起来。

{phang}
{cmd:fontfacemono(}{it:fontname}{cmd:)}
    指定用于渲染已指定为 {cmd:{c -(}stMono{c )-}} "字体" 的文本的 PostScript 字体名称。默认值为 {cmd:Courier}，可以通过将 {it:fontname} 指定为 {cmd:default} 来恢复。如果 {it:fontname} 包含空格，则必须用双引号括起来。

{phang}
{cmd:fontfacesymbol(}{it:fontname}{cmd:)}
    指定用于渲染已指定为 {cmd:{c -(}stSymbol{c )-}} "字体" 的文本的 PostScript 字体名称。默认值为 {cmd:Symbol}，可以通过将 {it:fontname} 指定为 {cmd:default} 来恢复。如果 {it:fontname} 包含空格，则必须用双引号括起来。

{phang}
{cmd:fontdir(}{it:directory}{cmd:)}
    指定 Stata for Unix 用于查找 TrueType 字体（如果您指定了任何）以转换为 PostScript 字体时的目录。您可以将 {it:directory} 指定为 {cmd:default} 以恢复默认设置。如果 {it:directory} 包含空格，则必须用双引号括起来。

{phang}
{cmd:orientation(portrait)}
和
{cmd:orientation(landscape)}
    指定图表是纵向还是横向展示。

{marker remarks}{...}
{title:备注}

{pstd}
备注在以下标题下呈现：

	{help eps_options##remarks1:使用 eps_options}
	{help eps_options##remarks2:设置默认值}
	{help eps_options##remarks3:关于 PostScript 字体的说明}

{marker remarks1}{...}
{title:使用 eps_options}

{pstd}
您绘制了图表并希望创建一个封装的 PostScript 文件，以便将该文件包含在文档中。然而，您希望将未指定其他字体的文本从默认的 Helvetica 更改为 Roman，在 PostScript 行话中为 "Times"：

	{cmd:. graph} ...{col 50}(绘制图表)

	{cmd:. graph export myfile.eps, fontface(Times)}


{marker remarks2}{...}
{title:设置默认值}

{pstd}
如果您希望 {helpb graph export} 在导出到封装的 PostScript 文件时始终使用 Times，可以输入

	{cmd:. graph set eps fontface Times}

{pstd}
稍后，您可以输入

	{cmd:. graph set eps fontface Helvetica}

{pstd}
将其更改回去。您可以通过输入

	{cmd:. graph set eps}

{pstd}
列出当前的 {it:eps_option} 设置。

{marker remarks3}{...}
{title:关于 PostScript 字体的说明}

{pstd}
由 Stata 导出的封装 PostScript 格式图表符合被称为 PostScript Level 2 的标准。有 10 种内置字体面，称为核心字体集，其中一些可用修改版，例如，粗体或斜体（核心字体集中初始 10 种字体面的列表见  
{browse "https://en.wikipedia.org/wiki/Type_1_and_Type_3_fonts#Core_Font_Set"}）。如果您更改任何 {cmd:fontface}{it:*}{cmd:()} 设置，我们建议您使用这 10 种字体面中的一种。我们不建议更改 {cmd:fontfacesymbol()}，因为这样可能会导致打印出错字符。

{pstd}
如果您指定的字体面不是核心字体集中的一部分，Stata 将首先尝试将其映射到核心字体集中最接近的匹配字体。例如，如果您指定 {cmd:fontfaceserif("Times New Roman")}，Stata 将其映射为 {cmd:fontfaceserif("Times")}。

{pstd}
如果 Stata 无法将字体面映射到核心字体集，Stata 将在 {cmd:fontdir()} 目录中查找您系统中与您指定的字体匹配的 TrueType 字体。如果找到，它将尝试将其转换为 PostScript 字体，并且如果成功，将把转换后的字体嵌入导出的封装 PostScript 图表中。由于不同系统上可用的 TrueType 字体种类繁多，因此这个转换可能会出现问题，这就是我们建议您使用核心字体集中找到的字体的原因。
{p_end}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <eps_options.sthlp>}