{smcl}
{* *! version 1.4.1  04jun2017}{...}
{vieweralsosee "[G-2] graph export" "mansection G-2 graphexport"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[G-3] eps_options" "help eps_options_zh"}{...}
{vieweralsosee "[G-3] gif_options" "help gif_options_zh"}{...}
{vieweralsosee "[G-3] jpg_options" "help jpg_options_zh"}{...}
{vieweralsosee "[G-3] png_options" "help png_options_zh"}{...}
{vieweralsosee "[G-3] ps_options" "help ps_options_zh"}{...}
{vieweralsosee "[G-3] svg_options" "help svg_options_zh"}{...}
{vieweralsosee "[G-3] tif_options" "help tif_options_zh"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[G-2] graph display" "help graph_display_zh"}{...}
{vieweralsosee "[G-2] graph set" "help graph_set_zh"}{...}
{vieweralsosee "[G-2] graph use" "help graph_use_zh"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[G-2] graph print" "help graph_print_zh"}{...}
{viewerjumpto "Syntax" "graph_export_zh##syntax"}{...}
{viewerjumpto "Description" "graph_export_zh##description"}{...}
{viewerjumpto "Links to PDF documentation" "graph_export_zh##linkspdf"}{...}
{viewerjumpto "Options" "graph_export_zh##options"}{...}
{viewerjumpto "Remarks" "graph_export_zh##remarks"}{...}
{viewerjumpto "Technical note for Stata for Unix(GUI) users" "graph_export_zh##technote"}
{help graph_export:English Version}
{hline}{...}
{p2colset 1 23 25 2}{...}
{p2col:{bf:[G-2] graph export} {hline 2}}导出当前图形{p_end}
{p2col:}({mansection G-2 graphexport:查看完整的 PDF 手册条目）{p_end}
{p2colreset}{...}


{marker syntax}{...}
{title:语法}

{p 8 16 2}
{cmdab:gr:aph}
{cmd:export}
{it:newfilename}{cmd:.}{it:suffix}
[{cmd:,}
{it:options}]

    {it:options}{col 35}描述
    {hline 69}
    {cmd:name(}{it:windowname}{cmd:)}{...}
{col 35}要导出的图形窗口的名称 
    {cmd:as(}{it:fileformat}{cmd:)}{...}
{col 35}期望的输出格式
    {cmd:replace}{...}
{col 35}{it:newfilename} 可能已经存在
    {it:override_options}{...}
{col 35}覆盖转换中的默认值
    {hline 69}

{pstd}
如果没有指定 {cmd:as()}，输出格式由 {it:newfilename}{cmd:.}{it:suffix} 的后缀决定：

    {col 20}隐含
    {it:suffix}{col 20}选项{col 35}输出格式
    {hline 69}
    {cmd:.ps}{col 20}{cmd:as(ps)}{col 35}PostScript
    {cmd:.eps}{col 20}{cmd:as(eps)}{col 35}EPS（封装的 PostScript）
    {cmd:.svg}{col 20}{cmd:as(svg)}{col 35}SVG（可缩放矢量图形）
    {cmd:.wmf}{col 20}{cmd:as(wmf)}{col 35}Windows 图形文件
    {cmd:.emf}{col 20}{cmd:as(emf)}{col 35}Windows 增强图形文件
    {cmd:.pdf}{col 20}{cmd:as(pdf)}{col 35}PDF（便携式文档格式）
    {cmd:.png}{col 20}{cmd:as(png)}{col 35}PNG（便携式网络图形）
    {cmd:.tif}{col 20}{cmd:as(tif)}{col 35}TIFF（标签图像文件格式）
    {cmd:.gif}{col 20}{cmd:as(gif)}{col 35}GIF（图形交换格式）
    {cmd:.jpg}{col 20}{cmd:as(jpg)}{col 35}JPEG（联合图像专家组）
    {it:other}{col 35}必须指定 {cmd:as()}
    {hline 69}
{phang}
{cmd:ps}、{cmd:eps} 和 {cmd:svg} 在所有版本的 Stata 中均可用；
{cmd:png} 和 {cmd:tif} 在除 Stata(console) 外的所有 Stata 版本中均可用；{cmd:wmf} 和 {cmd:emf} 仅在 Stata for Windows 中可用；{cmd:gif} 和 {cmd:jpg} 仅在 Stata for Mac 中可用。

    {it:override_options}{col 35}描述
    {hline 69}
    {it:{help ps_options_zh}}{...}
{col 30}导出到 {cmd:ps} 时
    {it:{help eps_options_zh}}{...}
{col 30}导出到 {cmd:eps} 时
    {it:{help svg_options_zh}}{...}
{col 30}导出到 {cmd:svg} 时
    {it:{help png_options_zh}}{...}
{col 30}导出到 {cmd:png} 时
    {it:{help tif_options_zh}}{...}
{col 30}导出到 {cmd:tif} 时
    {it:{help gif_options_zh}}{...}
{col 30}导出到 {cmd:gif} 时
    {it:{help jpg_options_zh}}{...}
{col 30}导出到 {cmd:jpg} 时
    {hline 69}

{phang}
对于 {cmd:pdf} 格式没有 override_options。


{marker description}{...}
{title:描述}

{pstd}
{cmd:graph} {cmd:export} 导出当前在图形窗口中显示的图形到文件。


{marker linkspdf}{...}
{title:PDF 文档链接}

        {mansection G-2 graphexportQuickstart:快速入门}

        {mansection G-2 graphexportRemarksandexamples:备注和实例}

{pstd}
上述部分未包含在此帮助文件中。


{marker options}{...}
{title:选项}

{phang}
    {cmd:name(}{it:windowname}{cmd:)} 指定导出图形时要从哪个窗口导出。省略 {cmd:name()} 选项则导出最上面的图形（Stata for Unix(GUI) 用户：请查看 
    {it:{help graph export##GUI:技术说明对于 Stata for Unix(GUI) 用户}}）。
    窗口的名称显示在窗口标题的括号内。例如，如果图形窗口的标题为 {hi:Graph (MyGraph)}，则窗口的名称为 {hi:MyGraph}。如果图形是 {cmd:asis} 或 {cmd:graph7} 图形，没有窗口标题中的名称，请为 {it:windowname} 指定 ""。

{phang}
{cmd:as(}{it:fileformat}{cmd:)}
    指定图形要导出的文件格式。此选项很少指定，因为默认情况下，{cmd:graph}
    {cmd:export} 根据创建的文件的后缀确定格式。

{phang}
{cmd:replace}
    指定如果 {it:filename}{cmd:.}{it:suffix} 已经存在，则可以替换它。

{phang}
{it:override_options}
    修改图形的转换方式。请参见 
    {manhelpi ps_options G-3},
    {manhelpi eps_options G-3},
    {manhelpi svg_options G-3},
    {manhelpi png_options G-3},
    {manhelpi tif_options G-3},
    {manhelpi gif_options G-3} 和
    {manhelpi jpg_options G-3}。
    另外，请查看 {manhelp graph_set G-2:graph set} 以永久设置 {it:override_options} 的默认值。


{marker remarks}{...}
{title:备注}

{pstd}
通过在屏幕上显示图形，然后输入

	{cmd:. graph export} {it:filename}{cmd:.}{it:suffix}

来导出图形。

{pstd}
备注以以下标题呈现：

	{help graph export##remarks1:导出在图形窗口中显示的图形}
	{help graph export##remarks2:导出存储在磁盘上的图形}
	{help graph export##remarks3:导出存储在内存中的图形}

{pstd}
如果您只是对打印图形感兴趣，请参见
{manhelp graph_print G-2:graph print}。


{marker remarks1}{...}
{title:导出在图形窗口中显示的图形}

{pstd}
导出在图形窗口中显示的图形的方法有三种：

{phang2}
    1.  右键单击图形窗口，选择 {bf:保存图形...}，并选择合适的 {bf:另存为类型}。

{phang2}
    2.  选择 {bf:文件 > 保存图形...}，并选择合适的 {bf:另存为类型}。

{phang2}
    3.  在命令窗口输入 "{cmd:graph} {cmd:export} {it:filename}{cmd:.}{it:suffix}"。
        Stata for Unix(GUI) 用户如果有多个图形显示，应使用
        {cmd:name()} 选项以确保导出正确的图形（请查看
	    {it:{help graph export##GUI:技术说明对于 Stata for Unix(GUI) 用户}}）。

{pstd}
以上三种方法是等价的。使用 {cmd:graph} {cmd:export} 的好处是可以将其包含在 do 文件中：

	{cmd:. graph} ...{col 40}(绘制一幅图形)

	{cmd:. graph export} {it:filename}{cmd:.}{it:suffix}{...}
{col 40}(并导出它)

{pstd}
默认情况下，{cmd:graph} {cmd:export} 根据后缀确定输出类型。如果我们想要创建一个封装的 PostScript 文件，可能会输入

	{cmd:. graph export figure57.eps}


{marker remarks2}{...}
{title:导出存储在磁盘上的图形}

{pstd}
要导出存储在磁盘上的图形，输入

	{cmd:. graph use} {it:gph_filename}

	{cmd:. graph export} {it:output_filename}{cmd:.}{it:suffix}


{pstd}
请不要指定 {cmd:graph} {cmd:use} 的 {cmd:nodraw} 选项；请参见 
{manhelp graph_use G-2:graph use}。

{pstd}
Stata(console) 的 Unix 用户：请按照刚才给出的说明操作，尽管您没有图形窗口并且无法看到刚才"显示"的内容。使用图形，然后导出它。


{marker remarks3}{...}
{title:导出存储在内存中的图形}

{pstd}
要导出存储在内存中但当前未显示的图形，输入

	{cmd:. graph display} {it:name}

	{cmd:. graph export} {it:filename}{cmd:.}{it:suffix}

{pstd}
请不要指定 {cmd:graph} {cmd:display} 的 {cmd:nodraw} 选项；请参见 
{manhelp graph_display G-2:graph display}。

{pstd}
Stata for Unix(console) 用户：请按照刚才给出的说明进行操作，尽管您没有图形窗口并且无法看到刚才 "显示" 的内容。显示图形，然后导出它。


{marker technote}{...}
{marker GUI}{...}
{title:针对 Stata for Unix(GUI) 用户的技术说明}

{pstd}
X-Windows 没有窗口 z 顺序的概念，这使得 Stata 无法确定哪个窗口是最上面的窗口。而是，Stata 根据哪个窗口具有焦点来确定哪个窗口是最上面的。然而，一些窗口管理器会在不将窗口移到顶部的情况下将焦点设置为一个窗口。Stata 认为的最上窗口在视觉上可能并不最上。因此，您应该始终使用 {cmd:name()} 选项以确保导出正确的图形窗口。
{p_end}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <graph_export.sthlp>}