{smcl}
{* *! version 1.2.9  15oct2018}{...}
{vieweralsosee "[G-3] ps_options" "mansection G-3 ps_options"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[G-2] graph export" "help graph_export_zh"}{...}
{vieweralsosee "[G-2] graph set" "help graph_set_zh"}{...}
{vieweralsosee "[G-3] eps_options" "help eps_options_zh"}{...}
{viewerjumpto "语法" "ps_options_zh##syntax"}{...}
{viewerjumpto "描述" "ps_options_zh##description"}{...}
{viewerjumpto "PDF文档链接" "ps_options_zh##linkspdf"}{...}
{viewerjumpto "选项" "ps_options_zh##options"}{...}
{viewerjumpto "备注" "ps_options_zh##remarks"}
{help ps_options:English Version}
{hline}{...}
{p2colset 1 21 23 2}{...}
{p2col:{bf:[G-3]} {it:ps_options} {hline 2}}导出或打印到PostScript的选项{p_end}
{p2col:}({mansection G-3 ps_options:查看完整的PDF手册条目}){p_end}
{p2colreset}{...}


{marker syntax}{...}
{title:语法}

{synoptset 30}{...}
{p2col:{it:ps_options}}描述{p_end}
{p2line}
{p2col:{cmdab:tm:argin:(}{it:#}{cmd:)}}顶部边距（以英寸为单位）{p_end}
{p2col:{cmdab:lm:argin:(}{it:#}{cmd:)}}左侧边距（以英寸为单位）{p_end}
{p2col:{cmd:logo(on}|{cmd:off)}}是否包含Stata标志{p_end}
{p2col:{cmd:cmyk(on}|{cmd:off)}}是否使用CMYK而不是RGB颜色{p_end}
{p2col:{cmd:mag(}{it:#}{cmd:)}}放大/缩小因子；默认值为100{p_end}
{p2col:{cmdab:font:face:(}{it:fontname}{cmd:)}}使用的默认字体{p_end}
{p2col:{cmd:fontfacesans(}{it:fontname}{cmd:)}}用于{cmd:{c -(}stSans{c )-}} "font"的文本字体{p_end}
{p2col:{cmd:fontfaceserif(}{it:fontname}{cmd:)}}用于{cmd:{c -(}stSerif{c )-}} "font"的文本字体{p_end}
{p2col:{cmd:fontfacemono(}{it:fontname}{cmd:)}}用于{cmd:{c -(}stMono{c )-}} "font"的文本字体{p_end}
{p2col:{cmd:fontfacesymbol(}{it:fontname}{cmd:)}}用于{cmd:{c -(}stSymbol{c )-}} "font"的文本字体{p_end}
{p2col:{cmd:fontdir(}{it:directory}{cmd:)}}（仅限Unix）存储TrueType字体的目录{p_end}
{p2col:{cmdab:or:ientation:(portrait}|}{p_end}
{p2col 22 37 37 2:{cmd:landscape)}}垂直或水平{p_end}
{p2col:{cmdab:pages:ize:(letter}|{cmd:legal}|}{p_end}
{p2col 13 37 37 2:{cmd:executive}|{cmd:A4}|{cmd:custom)}}页面大小{p_end}
{p2col:{cmdab:pageh:eight:(}{it:#}{cmd:)}}英寸；仅在{cmd:pagesize(custom)}时相关{p_end}
{p2col:{cmdab:pagew:idth:(}{it:#}{cmd:)}}英寸；仅在{cmd:pagesize(custom)}时相关{p_end}
{p2line}
{p2colreset}{...}

{phang}
其中{it:fontname}可以是有效的字体名称或{cmd:default}以恢复默认设置，{it:directory}可以是有效的目录或{cmd:default}以恢复默认设置。

{pstd}
当前默认值可以通过输入

	{cmd:. graph set ps}

{pstd}
列出，默认值可以通过输入

{p 8 16 2}
{cmd:. graph set}
{cmd:ps}
{it:name}
{it:value}

{pstd}
设置，其中{it:name}是{it:ps_option}的名称，省略括号。


{marker description}{...}
{title:描述}

{pstd}
这些{it:ps_options}用于创建PostScript文件时与{cmd:graph} {cmd:export}一起使用；请参见{manhelp graph_export G-2:graph export}。

{pstd}
此外，在Stata for Unix中，这些选项与{cmd:graph} {cmd:print}一起使用；请参见{manhelp graph_print G-2:graph print}。


{marker linkspdf}{...}
{title:PDF文档链接}

        {mansection G-3 ps_optionsRemarksandexamples:备注和示例}

{pstd}
上述部分未包含在此帮助文件中。


{marker options}{...}
{title:选项}

{phang}
{cmd:tmargin(}{it:#}{cmd:)} 和
{cmd:lmargin(}{it:#}{cmd:)}
    设置顶部和左侧页面边距——页面边缘到图形开始的距离。{it:#}以英寸为单位，必须在0到20之间，并且可以是分数。

{phang}
{cmd:logo(on)} 和 {cmd:logo(off)}
    指定是否应在图形底部包含Stata标志。

{phang}
{cmd:cmyk(on)} 和 {cmd:cmyk(off)}
    指定输出文件中的颜色是否应作为CMYK值而不是RGB值来指定。

{phang}
{cmd:mag(}{it:#}{cmd:)}
    指定图形是否绘制得比默认值更小或更大。{cmd:mag(100)}是默认值，表示普通大小。
    {cmd:mag(110)}会使图形比平常大10%，而{cmd:mag(90)}会使图形比平常小10%。
    {it:#}必须是整数。

{phang}
{cmd:fontface(}{it:fontname}{cmd:)}
    指定用于渲染未指定其他字体的文本的PostScript字体的名称。默认是{cmd:Helvetica}，可以通过指定{it:fontname}为{cmd:default}来恢复。如果{it:fontname}包含空格，则必须用双引号括起来。

{phang}
{cmd:fontfacesans(}{it:fontname}{cmd:)}
    指定用于渲染为{cmd:{c -(}stSans{c )-}} "font"指定的文本的PostScript字体的名称。默认是{cmd:Helvetica}，可以通过指定{it:fontname}为{cmd:default}来恢复。如果{it:fontname}包含空格，则必须用双引号括起来。

{phang}
{cmd:fontfaceserif(}{it:fontname}{cmd:)}
    指定用于渲染为{cmd:{c -(}stSerif{c )-}} "font"指定的文本的PostScript字体的名称。默认是{cmd:Times}，可以通过指定{it:fontname}为{cmd:default}来恢复。如果{it:fontname}包含空格，则必须用双引号括起来。

{phang}
{cmd:fontfacemono(}{it:fontname}{cmd:)}
    指定用于渲染为{cmd:{c -(}stMono{c )-}} "font"指定的文本的PostScript字体的名称。默认是{cmd:Courier}，可以通过指定{it:fontname}为{cmd:default}来恢复。如果{it:fontname}包含空格，则必须用双引号括起来。

{phang}
{cmd:fontfacesymbol(}{it:fontname}{cmd:)}
    指定用于渲染为{cmd:{c -(}stSymbol{c )-}} "font"指定的文本的PostScript字体的名称。默认是{cmd:Symbol}，可以通过指定{it:fontname}为{cmd:default}来恢复。如果{it:fontname}包含空格，则必须用双引号括起来。

{phang}
{cmd:fontdir(}{it:directory}{cmd:)}
    指定Stata for Unix用来查找TrueType字体（如果已指定）以便在将图形导出为PostScript时转换为PostScript字体的目录。可以指定{it:directory}为{cmd:default}以恢复默认设置。如果{it:directory}包含空格，则必须用双引号括起来。

{phang}
{cmd:orientation(portrait)}
和
{cmd:orientation(landscape)}
    指定图形是以垂直还是水平呈现。

{phang}
{cmd:pagesize()}
    指定页面的大小。{cmd:pagesize(letter)}、{cmd:pagesize(legal)}、{cmd:pagesize(executive)}和{cmd:pagesize(A4)}都是预定义的大小。{cmd:pagesize(custom)}指定您希望通过使用{cmd:pageheight()}和{cmd:pagewidth()}选项明确定义页面大小。

{phang}
{cmd:pageheight(}{it:#}{cmd:)}
和
{cmd:pagewidth(}{it:#}{cmd:)}
    仅在指定{cmd:pagesize(custom)}时相关。它们指定页面的高度和宽度（以英寸为单位）。{it:#}以英寸为单位，必须在0到20之间，并且可以是分数。


{marker remarks}{...}
{title:备注}

{pstd}
备注以以下标题呈现：

	{help ps_options##remarks1:使用ps_options}
	{help ps_options##remarks2:设置默认值}
	{help ps_options##remarks3:关于PostScript字体的说明}
	{help ps_options##remarks4:Unix用户提示}


{marker remarks1}{...}
{title:使用ps_options}

{pstd}
您绘制了一个图形并希望创建一个PostScript文件。然而，您希望将未指定其他字体的文本从默认的Helvetica更改为Roman，即PostScript术语中的"Times"：

	{cmd:. graph} ...{col 50}(绘制一个图形)

	{cmd:. graph export myfile.ps, fontface(Times)}


{marker remarks2}{...}
{title:设置默认值}

{pstd}
如果您希望{helpb graph export}在导出到PostScript文件时始终使用Times，可以输入

	{cmd:. graph set ps fontface Times }

{pstd}
稍后，您可以输入

	{cmd:. graph set ps fontface Helvetica}

{pstd}
将其恢复。您可以通过输入

	{cmd:. graph set ps}

{pstd}
列出当前的{it:ps_option}设置。


{marker remarks3}{...}
{title:关于PostScript字体的说明}

{pstd}
由Stata导出的PostScript格式图形符合PostScript Level 2标准。有10种内置字体，即Core Font Set，其中一些也提供经过修改的形式，例如，加粗或斜体（原始10种字体的列表见{browse "https://en.wikipedia.org/wiki/Type_1_and_Type_3_fonts#Core_Font_Set"}）。如果您更改任何{cmd:fontface}{it:*}{cmd:()}设置，建议您使用这10种字体之一。我们不推荐更改{cmd:fontfacesymbol()}，因为这样可能会导致打印出错误的字符。

{pstd}
如果您指定的字体面不是Core Font Set的一部分，Stata将首先尝试将其映射到Core Font Set中最匹配的字体。例如，如果您指定{cmd:fontfaceserif("Times New Roman")}，Stata将将其映射到{cmd:fontfaceserif("Times")}。

{pstd}
如果Stata无法将字体面映射到Core Font Set，Stata将在{cmd:fontdir()}目录中查找与您指定的字体匹配的TrueType字体。如果找到一个，它将尝试将其转换为PostScript字体，如果成功，将在导出的PostScript图形中嵌入转换后的字体。由于不同系统上可用的TrueType字体种类繁多，这种转换可能会出现问题，因此我们建议您使用Core Font Set中找到的字体。


{marker remarks4}{...}
{title:Unix用户提示}

{pstd}
PostScript设置不仅在创建PostScript文件时由{cmd:graph} {cmd:export}使用，还被{cmd:graph} {cmd:print}使用。在{manhelpi pr_options G-3}中，您可以通过输入

	{cmd:. graph set print} ...

{pstd}
来列出和设置默认值。

{pstd}
这是真的，但在Unix下，{cmd:print}是{cmd:ps}的同义词，因此无论您输入{cmd:graph} {cmd:set} {cmd:print}还是{cmd:graph} {cmd:set} {cmd:ps}都没有区别。
{p_end}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <ps_options.sthlp>}