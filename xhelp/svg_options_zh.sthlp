{smcl}
{* *! version 1.0.9  05dec2018}{...}
{vieweralsosee "[G-3] svg_options" "mansection G-3 svg_options"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[G-2] graph export" "help graph_export_zh"}{...}
{vieweralsosee "[G-2] graph set" "help graph_set_zh"}{...}
{viewerjumpto "Syntax" "svg_options_zh##syntax"}{...}
{viewerjumpto "Description" "svg_options_zh##description"}{...}
{viewerjumpto "Links to PDF documentation" "svg_options_zh##linkspdf"}{...}
{viewerjumpto "Options" "svg_options_zh##options"}{...}
{viewerjumpto "Remarks" "svg_options_zh##remarks"}
{help svg_options:English Version}
{hline}{...}
{p2colset 1 22 24 2}{...}
{p2col:{bf:[G-3]} {it:svg_options} {hline 2}}导出为可缩放矢量图形的选项{p_end}
{p2col:}({mansection G-3 svg_options:查看完整PDF手册条目}){p_end}
{p2colreset}{...}


{marker syntax}{...}
{title:语法}

{synoptset 30}{...}
{p2col:{it:svg_options}}描述{p_end}
{p2line}
{p2col:{cmdab:base:lineshift:(on}|{cmd:off)}}是否使用SVG {cmd:baseline-shift} 属性来处理下标或上标；默认值为 {cmd:off}{p_end}
{p2col:{cmdab:ignoref:ont(on}|{cmd:off)}}是否忽略用作文本的图表字体；默认值为 {cmd:off}{p_end}
{p2col:{cmdab:bgf:ill(on}|{cmd:off)}}是否忽略背景填充；默认值为 {cmd:on}{p_end}
{p2col:{cmd:nbsp(on}|{cmd:off)}}是否在某些字符串中使用无断行空格的Unicode字符代替空格；默认值为 {cmd:on}{p_end}
{p2col:{cmdab:clipstr:oke(on}|{cmd:off)}}是否使用剪裁路径来模拟笔画对齐；默认值为 {cmd:on}{p_end}
{p2col:{cmdab:scalestr:okewidth(on}|{cmd:off)}}是否手动缩放笔画宽度；默认值为 {cmd:off}{p_end}
{p2col:{cmdab:verb:ose}}是否输出所有默认属性和类{p_end}
{p2col:{opt pathp:refix(prefix)}}命名SVG路径时使用的前缀{p_end}
{p2col:{cmdab:wid:th:(}{it:#}{cmd:px}|{it:#}{cmd:in}{cmd:)}}图表宽度（像素或英寸）{p_end}
{p2col:{cmdab:hei:ght:(}{it:#}{cmd:px}|{it:#}{cmd:in}{cmd:)}}图表高度（像素或英寸）{p_end}
{p2col:{cmdab:font:face:(}{it:fontname}{cmd:)}}默认字体{p_end}
{p2col:{cmd:fontfacesans(}{it:fontname}{cmd:)}}在
      {cmd:{c -(}stSans{c )-}} "font"中使用的文本字体{p_end}
{p2col:{cmd:fontfaceserif(}{it:fontname}{cmd:)}}在
      {cmd:{c -(}stSerif{c )-}} "font"中使用的文本字体{p_end}
{p2col:{cmd:fontfacemono(}{it:fontname}{cmd:)}}在
      {cmd:{c -(}stMono{c )-}} "font"中使用的文本字体{p_end}
{p2col:{cmd:fontfacesymbol(}{it:fontname}{cmd:)}}在
      {cmd:{c -(}stSymbol{c )-}} "font"中使用的文本字体{p_end}
{p2line}
{p2colreset}{...}

{p 4 6 2}
其中 {it:fontname} 可以是有效的字体名称或 {cmd:default} 以恢复默认设置。

{pstd}
当前的默认值可以通过输入

	{cmd:. graph set svg}

{pstd}
设置默认值可以通过输入

{p 8 16 2}
{cmd:. graph set}
{cmd:svg}
{it:name}
{it:value}

{pstd}
其中 {it:name} 是一个 {it:svg_option} 的名称，省略括号。


{marker description}{...}
{title:描述}

{pstd}
这些 {it:svg_options} 与 {cmd:graph} {cmd:export} 一起使用时用于创建可缩放矢量图形文件；详见
{manhelp graph_export G-2:图表导出}。


{marker linkspdf}{...}
{title:PDF文档链接}

        {mansection G-3 svg_optionsRemarksandexamples:备注和示例}

{pstd}
以上部分不包括在此帮助文件中。


{marker options}{...}
{title:选项}

{phang}
{cmd:baselineshift(on)} 和 {cmd:baselineshift(off)}
    指定是否使用SVG属性 {cmd:baseline-shift} 来显示下标和上标。根据2016年2月4日的情况，IE、
    Microsoft Edge和Firefox不支持此属性，但Chrome和
    Safari支持。当指定 {cmd:baselineshift(off)} 时，Stata 反而使用
    SVG {cmd:dy} 属性来显示下标和上标。
    但是，当字符串中存在前导或后置空格且指定了 {cmd:nbsp(off)} 选项时，Chrome和Safari可能无法正确渲染下标和
    上标。默认值为 {cmd:baselineshift(off)}。

{phang}
{cmd:ignorefont(on)} 和 {cmd:ignorefont(off)}
    指定是否输出SVG {cmd:font-family} 属性。当指定 {cmd:ignorefont(on)} 时，SVG文件中不写入任何字体信息，因此SVG渲染器必须在
    显示文本时确定使用哪个字体。默认值为 {cmd:ignorefont(off)}。

{phang}
{cmd:bgfill(on)} 和 {cmd:bgfill(off)}
    指定是否使用背景填充。当指定 {cmd:bgfill(off)} 时，SVG文件中将不写入背景填充，因此SVG背景将为透明。默认值为 {cmd:bgfill(on)}。

{phang}
{cmd:nbsp(on)} 和 {cmd:nbsp(off)}
    指定是否在字符串中使用无断行空格的Unicode字符 (U+00A0) 代替空格。默认情况下，SVG渲染器会忽略字符串中的前导和后置空格。可以使用SVG {cmd:xml:space} 属性来保留字符串中的前导和后置空格，但IE和
    Microsoft Edge会忽略该属性。当指定 {cmd:nbsp(on)} 时，Stata 首先查看字符串中是否存在任何前导或后置空格。如果有，便用无断行空格字符替换字符串中的所有空格。如果指定了 {cmd:nbsp(off)}，当字符串中包含前导或后置空格时，Stata 将使用 {cmd:xml:space} 属性。 {cmd:nbsp()} 是在提高SVG文件的可读性的XML数据与使SVG文件本身更加紧凑 ({cmd:off}) 之间的权衡，和在网页浏览器之间更好的兼容性 ({cmd:on})。默认值为 {cmd:nbsp(on)}。

{phang}
{cmd:clipstroke(on)} 和 {cmd:clipstroke(off)}
    指定是否使用剪裁路径来模拟多边形的笔画对齐。Stata允许一个封闭对象，如椭圆、矩形或多边形的笔画被描绘在对象轮廓的内部、中间或外部。Stata使用SVG {cmd:stroke-alignment} 属性来支持多边形的笔画对齐。但是，流行的网页浏览器，如Internet Explorer、Apple Safari和Google Chrome不支持 {cmd:stroke-alignment} 属性（截至2016年3月15日）。当指定 {cmd:clipstroke(on)} 时，Stata通过首先将多边形定义为其自己的剪裁路径，然后用两倍的笔画宽度描绘多边形轮廓的中心，来模拟多边形的内部或外部笔画对齐。未包含在剪裁路径内的被加倍的笔画的一半将不可见。默认值为 {cmd:clipstroke(on)}。

{phang}
{cmd:scalestrokewidth(on)} 和 {cmd:scalestrokewidth(off)}
    指定是否在SVG文件中手动缩放笔画宽度。大多数SVG渲染器使用SVG文件的视口来缩放形状和笔画宽度。虽然Adobe Illustrator确实根据SVG文件的视口来缩放形状，但它未能对笔画宽度进行这种缩放，这导致笔画看起来非常粗。当指定 {cmd:scalestrokewidth(on)} 时，Stata 手动缩放每个笔画宽度，从而使得在Adobe Illustrator中的SVG文件正确显示，但在其他已知的SVG渲染器中显示不正确。默认值为 {cmd:scalestrokewidth(off)}。

{phang}
{cmd:verbose}
    指定是否输出所有默认属性和类。例如，SVG属性 {cmd:text-anchor} 的默认文本对齐值是 {cmd:start}。只有在文本对齐为居中或结束对齐时，Stata才会输出 {cmd:text-anchor} 属性。当指定 {cmd:verbose} 时，Stata 将始终输出 {cmd:text-anchor} 属性，即使文本使用默认的起始文本对齐。Stata 还将输出诸如书写方向、点云类型（如适用）和正在显示的符号类型等属性。

{phang}
{opt pathprefix(prefix)}
    指定在命名SVG路径时使用的前缀。路径是一组定义形状的线条和曲线。可以命名SVG图像中的路径，以便在图像中多次使用。然而，如果HTML文档中包含多个SVG图像，并且它们共享相同的路径名称，则浏览器可能会混淆使用哪个路径。为了防止这种路径名称冲突，Stata使用随机字符串来创建唯一的路径名称。如果您希望创建稳定的路径名称，请指定 {cmd:pathprefix()}。Stata将使用您的路径前缀和每个路径递增的索引来创建稳定的路径名称。指定路径前缀时，请遵循命名变量的相同指导原则。

{phang}
{cmd:width(}{it:#}{cmd:px}|{it:#}{cmd:in}{cmd:)}
    指定图表宽度（单位为像素或英寸）。如果未指定单位，则默认单位为像素。如果指定了宽度但未指定高度，Stata将根据图表的宽高比确定合适的高度。

{phang}
{cmd:height(}{it:#}{cmd:px}|{it:#}{cmd:in}{cmd:)}
    指定图表高度（单位为像素或英寸）。如果未指定单位，则默认单位为像素。如果指定了高度但未指定宽度，Stata将根据图表的宽高比确定合适的宽度。

{phang}
{cmd:fontface(}{it:fontname}{cmd:)}
    指定用于渲染未指定任何其他字体的文本的字体名称。默认值为 {cmd:Helvetica}，可以通过将 {it:fontname} 指定为 {cmd:default} 来恢复。如果 {it:fontname} 包含空格，则必须使用双引号括起来。

{phang}
{cmd:fontfacesans(}{it:fontname}{cmd:)}
    指定用于渲染指定 {cmd:{c -(}stSans{c )-}} "font" 的文本的字体名称。默认值为 {cmd:Helvetica}，可以通过将 {it:fontname} 指定为 {cmd:default} 来恢复。如果 {it:fontname} 包含空格，则必须使用双引号括起来。

{phang}
{cmd:fontfaceserif(}{it:fontname}{cmd:)}
    指定用于渲染指定 {cmd:{c -(}stSerif{c )-}} "font" 的文本的字体名称。默认值为 {cmd:Times}，可以通过将 {it:fontname} 指定为 {cmd:default} 来恢复。如果 {it:fontname} 包含空格，则必须使用双引号括起来。

{phang}
{cmd:fontfacemono(}{it:fontname}{cmd:)}
    指定用于渲染指定 {cmd:{c -(}stMono{c )-}} "font" 的文本的字体名称。默认值为 {cmd:Courier}，可以通过将 {it:fontname} 指定为 {cmd:default} 来恢复。如果 {it:fontname} 包含空格，则必须使用双引号括起来。

{phang}
{cmd:fontfacesymbol(}{it:fontname}{cmd:)}
    指定用于渲染指定 {cmd:{c -(}stSymbol{c )-}} "font" 的文本的字体名称。默认值为 {cmd:Symbol}，可以通过将 {it:fontname} 指定为 {cmd:default} 来恢复。如果 {it:fontname} 包含空格，则必须使用双引号括起来。


{marker remarks}{...}
{title:备注}

{pstd}
备注在以下标题下列出：

	{help svg_options##remarks1:使用svg_options}
	{help svg_options##remarks2:设置默认值}


{marker remarks1}{...}
{title:使用svg_options}

{pstd}
您绘制了一幅图表，并希望创建一个可缩放矢量图形文件以便将其包含在HTML文档中。然而，您希望将未指定其他字体的文本的默认字体从Helvetica更改为Arial：

	{cmd:. graph} ...{col 50}(绘制图表)

	{cmd:. graph export myfile.svg, fontface(Arial)}


{marker remarks2}{...}
{title:设置默认值}

{pstd}
如果您希望 {helpb graph export} 在导出为可缩放矢量图形文件时始终使用Arial，可以输入

	{cmd:. graph set svg fontface Arial}

{pstd}
稍后，您可以输入

	{cmd:. graph set svg fontface Helvetica}

{pstd}
以将其更改回来。您可以通过输入

	{cmd:. graph set svg}
列出可缩放矢量图形文件当前的 {it:svg_option} 设置。

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <svg_options.sthlp>}