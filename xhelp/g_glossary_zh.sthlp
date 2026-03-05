{smcl}
{* *! version 1.0.3  17apr2019}{...}
{vieweralsosee "[G-4] 词汇表" "mansection G-4 Glossary"}{...}
{viewerjumpto "描述" "g_glossary_zh##description"}{...}
{viewerjumpto "词汇表" "g_glossary_zh##glossary"}
{help g_glossary:English Version}
{hline}{...}
{p2colset 1 19 21 2}{...}
{p2col:{bf:[G-4] 词汇表} {hline 2}}术语词汇表{p_end}
{p2col:}({mansection G-4 Glossary:查看完整的 PDF 手册条目}){p_end}
{p2colreset}{...}


{marker description}{...}
{title:描述}

{pstd}常用术语在此定义。


{marker glossary}{...}
{title:词汇表}

{phang}
{bf:added line}.
添加的线段是通过 {it:added_line_options} 添加到图区域的横跨线段，可能还会跨越图区域的边缘。例如，{opt yline()} 添加指定值的水平线，而 {opt xline()} 添加指定值的竖直线。请参阅 {manhelpi added_line_options G-3}。

{phang}
{bf:addedlinestyle}.
{it:addedlinestyle} 指定添加线段的整体外观。添加线段的外观由 {it:linestyle} 定义，以及该线段是否穿过图区域的边缘。请参阅 {manhelpi addedlinestyle G-4} 和 {manhelpi linestyle G-4}。

{marker alignmentstyle}{...}
{phang}
{bf:alignmentstyle}.
{it:alignmentstyle} 指定文本如何在文本框中垂直对齐，即文本是否应该出现在文本框的基线、底部、中间或顶部。请参阅 {manhelpi alignmentstyle G-4}。

{phang}
{bf:anglestyle}.
{it:anglestyle} 指定文本显示的角度。文本可以按照水平、垂直、45度或其他你所希望的任何角度显示。请参阅 {manhelpi anglestyle G-4}。

{phang}
{bf:areastyle}.
{it:areastyle} 决定一个区域是否要被勾勒轮廓和填充，如果是，使用何种颜色。该区域可以是整个区域、条形、曲线下方的区域或盒图中其他封闭的区域。请参阅 {manhelpi areastyle G-4}。

{phang}
{bf:aspect ratio}.
对象的纵横比是其宽度与高度的比率。总体 Stata 图的纵横比，也称为 {help g_glossary##avail_area:可用区域}，是通过指定选项 {opt ysize()} 或 {opt xsize()} 来控制的；请参阅 {manhelpi region_options G-3}。 {helpb graph describe} 将显示图的 {opt ysize()} 和 {opt xsize()}。 {help g_glossary##plot_region:图区域} 的纵横比由 {opt aspect(#)} 选项控制；请参阅 {manhelpi aspect_option G-3}。

{marker avail_area}{...}
{phang}
{bf:available area}.
可用区域由整体图形区域的高度和宽度定义，这由选项 {opt ysize(#)} 和 {opt xsize(#)} 决定。请参阅 {manhelpi region_options G-3}。也请参阅 {help g_glossary##graph_region:{it:图区域}} 和 {help g_glossary##plot_region:{it:图区域}}。

{phang}
{bf:axisstyle}.
{it:axisstyle} 是一个复合样式，包含并设置轴的所有属性，包括是否有刻度、小网格线和轴线。仅在方案文件中使用轴样式。你很少会想要更改轴样式。请参阅 {manhelpi axisstyle G-4}。

{phang}
{bf:baseline of text}.
文本的基线是文本休息的虚线。带有下降部分的字母，如 p 和 g，会让下降部分落在基线以下。请参阅 {manhelpi alignmentstyle G-4}。

{phang}
{bf:bitmap image format}.
请参阅 {help g_glossary##image_format:{it:图像格式，光栅图像格式和矢量图像格式}}。

{phang}
{bf:by-graph}.
由一系列单独图形组成的图称为 by-graph，每个图的类型相同，并反映数据的不同子集。请参阅 {manhelpi bystyle G-4} 和 {manhelpi by_option G-3}。

{phang}
{bf:bystyle}.
{it:bystyle} 指定 by-graphs 的整体外观，包括单独图形是否拥有自己的轴和标签，或者是共享的；轴比例是否对每个图形不同；以及图形之间的间距。请参阅 {manhelpi bystyle G-4}。

{marker clockposstyle}{...}
{phang}
{bf:clockposstyle}.
{it:clockposstyle}，一个从 0 到 12 的整数，指定围绕中心点的位置。{it:clockposstyle} 为 0 始终被允许并指向中心。请参阅 {help g_glossary##compassdirstyle:{it:compassdirstyle}} 了解另一种指定方向的方法。请参阅 {manhelpi clockposstyle G-4}。

{phang}
{bf:CMYK values}.
请参阅 {help g_glossary##CMYK:{it:青，洋红，黄色和关键或黑色 (CMYK) 值}}。

{phang}
{bf:color saturation}.
请参阅 {help g_glossary##intensity:{it:强度}}。

{marker colorstyle}{...}
{phang}
{bf:colorstyle}.
{it:colorstyle} 设置图形组件的颜色和不透明度，例如线条、背景和条形。请参阅 {manhelpi colorstyle G-4}。

{marker compassdirstyle}{...}
{phang}
{bf:compassdirstyle}.
{it:compassdirstyle} 指定一个方向，例如 {opt north}、{opt neast} 或 {opt east}。请参阅 {help g_glossary##clockposstyle:{it:clockposstyle}} 了解另一种指定方向的方法。请参阅 {manhelpi compassdirstyle G-4}。

{phang}
{bf:composite style}.
请参阅 {help g_glossary##styles:{it:样式，复合样式和细节样式}}。

{phang}
{bf:connectstyle}.
{it:connectstyle} 指定散点图中点是否以及如何连接。最常见的选择是 {cmd:connect(l)}，即用直线连接。请参阅 {manhelpi connectstyle G-4}。

{marker CMYK}{...}
{phang}
{bf:cyan, magenta, yellow, and key or black (CMYK) values}.
青色、洋红、黄色和关键或黑色 (CMYK) 值用于指定颜色。例如，{cmd:0}, {cmd:0}, {cmd:255}, {cmd:0} 指定黄色。
另请参见 {help g_glossary##RGB:{it:红，绿，蓝 (RGB) 值}} 和 {help g_glossary##HSV:{it:色调、饱和度和明度 (HSV) 值}}。

{phang}
{bf:detail style}.
请参阅 {help g_glossary##styles:{it:样式，复合样式和细节样式}}。

{phang}
{bf:EMF}.
请参阅 {help g_glossary##EMF:{it:Windows增强型图元文件}}。

{marker EPS}{...}
{phang}
{bf:Encapsulated PostScript (EPS)}.
封装的 PostScript (EPS) 是一种基于 {help g_glossary##PS:PostScript} 的矢量图像格式，具有某些限制，由 Adobe 创建。限制允许将 EPS 文件包含在其他 PostScript 文档中。EPS 文件的常见用途是包含一个图形，然后可以插入到其他文档中，例如报告。EPS 文件可能包含图形和文本。请参阅 {manhelpi eps_options G-3}。另请参见 {help g_glossary##image_format:{it:图像格式，光栅图像格式和矢量图像格式}}。

{phang}
{bf:EPS}.
请参阅 {help g_glossary##EPS:{it:封装的 PostScript (EPS)}}。

{marker family}{...}
{phang}
{bf:family and plottype}.
一个家族描述了一组相关的图形。Stata 图形可以分为六个不同的家族：条形图、箱图、点图、矩阵图、饼图和双重图。双重家族，例如，有 42 种不同的图形类型，包括散点图、线图、掉线图和范围图。

{phang}
{bf:GIF}.
请参阅 {help g_glossary##GIF:{it:图形交换格式 (GIF)}}。

{phang}
{bf:.gph file}.
Stata 将图形存储在 {cmd:.gph} 文件中，以及用于绘制图形的原始数据。这些 {cmd:.gph} 文件是以机器和操作系统独立的格式编写的二进制文件，这意味着 {cmd:.gph} 文件可以在 Mac、Windows 或 Unix 电脑上读取，无论原始创建它的电脑类型如何。请参阅 {helpb gph files:[G-4] 概念: gph 文件}。

{marker graph_region}{...}
{phang}
{bf:graph region}.
图形区域通常比图区大，但比可用区域小。图形区域包括图区域和标题及轴标签出现的区域。请参阅 {help region_options##regions_image:区域图像} 在 {manhelpi region_options G-3} 中。另请参阅 {help g_glossary##avail_area:{it:可用区域}} 和 {help g_glossary##plot_region:{it:图区域}}。

{marker GIF}{...}
{phang}
{bf:Graphics Interchange Format (GIF)}.
图形交换格式 (GIF) 是一种光栅图像格式，由 CompuServe 于 1987 年开发。请参阅 {manhelpi gif_options G-3}。另请参见 {help g_glossary##image_format:{it:图像格式，光栅图像格式和矢量图像格式}}。

{phang}
{bf:grids}.
网格是从一个轴延伸到 {help g_glossary##plot_region:图区域} 的线。

{marker gridstyle}{...}
{phang}
{bf:gridstyle}.
{it:gridstyle} 指定网格的整体外观，例如网格线是否延伸到图区域的边缘。请参阅 {manhelpi gridstyle G-4}。

{phang}
{bf:HSV values}.
请参阅 {help g_glossary##HSV:{it:色调、饱和度和明度 (HSV) 值}}。

{marker HSV}{...}
{phang}
{bf:hue, saturation, and value (HSV) values}.
色调、饱和度和明度 (HSV) 值用于指定颜色。例如，值 {cmd:0}, {cmd:0}, {cmd:1} 指定白色。
另请参见 {help g_glossary##CMYK:{it:青，洋红，黄色和关键或黑色 (CMYK) 值}} 和 {help g_glossary##RGB:{it:红，绿，蓝 (RGB) 值}}。

{marker image_format}{...}
{phang}
{bf:image format, raster image format, and vector image format}.
图像格式是一种存储数字图像的方式。光栅图像格式，也称作位图图像格式，以像素的方式描述图像。矢量图像格式则根据图像的组成部分（例如线条、点和文本）来描述图像。光栅图像格式的示例包括 {help g_glossary##GIF:GIF}、{help g_glossary##JPEG:JPEG}、{help g_glossary##PNG:PNG} 和 {help g_glossary##TIFF:TIFF}。矢量图像格式的示例包括 {help g_glossary##EPS:EPS}、{help g_glossary##PDF:PDF}、{help g_glossary##PS:PS} 和 {help g_glossary##SVG:SVG}。

{marker intensity}{...}
{phang}
{bf:intensity}.
颜色的强度是颜色的明亮程度。随着强度的减少，颜色变得更淡。颜色强度的另一个术语是颜色饱和度。请参阅 {manhelpi colorstyle G-4} 了解如何调整强度。

{phang}
{bf:intensitystyle}.
{it:intensitystyle} 指定颜色的强度，以从 0 到 100 的百分比表示。例如，0% 意味着没有颜色；100% 意味着全色。{it:intensitystyle} 主要用于方案文件。请参阅 {manhelpi intensitystyle G-4}。

{marker JPEG}{...}
{phang}
{bf:Joint Photographic Experts Group (JPEG)}.
联合图像专家组 (JPEG) 是一种光栅图像格式，于 1992 年创建。请参阅 {manhelpi jpg_options G-3}。另请参见 {help g_glossary##image_format:{it:图像格式，光栅图像格式和矢量图像格式}}。

{phang}
{bf:JPEG}.
请参阅 {help g_glossary##JPEG:{it:联合图像专家组 (JPEG)}}。

{marker justificationstyle}{...}
{phang}
{bf:justificationstyle}.
{it:justificationstyle} 指定文本在文本框中水平对齐的方式。可选包括左对齐、居中或右对齐。请参阅 {manhelpi justificationstyle G-4}。

{phang}
{bf:legend and legend key}.
图例是一个表，显示图中使用的符号以及描述其含义的文本。图例键是一个符号和描述该符号的文本。Stata 有一个标准图例，一个 {opt contourline} 绘图图例和一个 {opt contour} 绘图图例，分别由 {opt legend()}、{opt plegend()} 和 {opt clegend()} 控制。请参阅 {manhelpi legend_options G-3} 和 {manhelpi clegend_option G-3}。

{phang}
{bf:legendstyle}.
{it:legendstyle} 定义图例的外观，通过 14 个属性来定义，包括表的列数或行数、行与列之间的间隔，以及图例周围的边距。请参阅 {manhelpi legendstyle G-4}。

{phang}
{bf:linealignmentstyle}.
{it:linealignmentstyle} 指定用于标记、填充区域、条形和盒子的边界或轮廓的对齐方式。线条可以放置在轮廓内、轮廓外或在轮廓的中心。请参阅 {manhelpi linealignmentstyle G-4}。

{phang}
{bf:linepatternstyle}.
{it:linepatternstyle} 指定线的样式，例如实线、虚线或点线。请参阅 {manhelpi linepatternstyle G-4}。

{phang}
{bf:linestyle}.
指定线的整体图案、厚度、颜色和不透明性，以及线的对齐方式。请参阅 {manhelpi linestyle G-4}。

{phang}
{bf:linewidthstyle}.
{it:linewidthstyle} 指定线条的厚度，从薄到厚。请参阅 {manhelpi linewidthstyle G-4}。

{phang}
{bf:marginstyle}.
{it:marginstyle} 指定是否包含边距（底部、顶部、左侧、右侧）及其大小（从没有边距到很大）。请参阅 {manhelpi marginstyle G-4}。

{marker marker}{...}
{phang}
{bf:marker}.
标记是用于标记绘图中点的墨水。标记的整体外观由 {it:markerstyle} 决定，它由使用的符号 ({it:symbolstyle})、标记的大小 ({it:markersizestyle}) 和标记的颜色 ({it:colorstyle}) 组成。请参阅 {manhelpi markerstyle G-4}、{manhelpi symbolstyle G-4}、{manhelpi markersizestyle G-4} 和 {manhelpi colorstyle G-4}。
另请参见 {help g_glossary##markerstyle:{it:markerstyle}}、{help g_glossary##symbolstyle:{it:symbolstyle}}、{help g_glossary##markersizestyle:{it:markersizestyle}} 和 {help g_glossary##colorstyle:{it:colorstyle}}。

{phang}
{bf:markerlabelstyle}.
{it:markerlabelstyle} 指定标记标签的整体外观，通过定义标记标签的位置、间隙、角度、大小和颜色。请参阅 {manhelpi markerlabelstyle G-4}。

{marker markersizestyle}{...}
{phang}
{bf:markersizestyle}.
{it:markersizestyle} 决定标记的大小，范围从微型到巨大。你可以使标记达到你想要的任何大小；请参阅 {manhelpi size G-4}。请参见 {manhelpi markersizestyle G-4}。另请参见 {help g_glossary##marker:{it:marker}} 和 {help g_glossary##symbolstyle:{it:symbolstyle}}。

{marker markerstyle}{...}
{phang}
{bf:markerstyle}.
{it:markerstyle} 定义标记的五个属性：标记的形状；标记的大小；标记的颜色和不透明度；标记的内部颜色和不透明度；以及标记轮廓的整体样式、厚度、颜色和不透明度。请参阅 {manhelpi markerstyle G-4}。

{marker merged_exp}{...}
{phang}
{bf:merged-explicit option}.
允许与图形命令一起使用的选项称为 merged-explicit，如果在未指定子选项的情况下被视为最右边的选项。选项 {opt title()} 是 merged-explicit 选项。如果不在选项 {opt title()} 中指定任何子选项，则适用最右边的规则。例如，{it:graph_command} ... {cmd:, title(hello) title(goodbye)} 将在图上显示 "goodbye" 的单个标题。如果指定 {it:graph_command} ... {cmd:, title(hello) title(goodbye, suffix)}，则图上将显示 "hello goodbye" 的标题。每个 merged-explicit 选项将有文档说明合并选项的内容及其工作原理。请参阅 {help repeated_options_zh:[G-4] 概念: 重复选项}。

{marker merged_imp}{...}
{phang}
{bf:merged-implicit option}.
允许与图形命令一起使用的选项称为 merged-implicit，如果在图形命令中重复相同选项的实例被合并。添加水平和竖直线的选项 {opt yline()} 和 {opt xline()} 是 merged-implicit 选项的示例。请参阅 {help repeated_options_zh:[G-4] 概念: 重复选项}。

{phang}
{bf:object}.
图形对象是 Stata 图形的构建块：图区、轴、图例、注释、标题、副标题和位置标题。对象本身可以包含其他对象。一个图区可以包含几个不同的图形，每个图形也是一个对象。一个图例包含一个键区域，键区域本身也是一个对象。

{marker opacity_transparency}{...}
{phang}
{bf:opacity and transparency}.
不透明度是覆盖背景颜色的颜色的百分比。不透明度在 0%（颜色没有覆盖）到 100%（颜色完全遮住背景）之间变化。不透明度的反义词是透明度，因此 0% 不透明度意味着完全透明，100% 不透明度意味着不透明。请参阅 {manhelpi colorstyle G-4} 获取有关如何调整不透明度的信息。

{marker orientationstyle}{...}
{phang}
{bf:orientationstyle}.
{it:orientationstyle} 指定文本框是水平还是垂直。请参阅 {manhelpi orientationstyle G-4}。

{phang}
{bf:PDF}.
请参阅 {help g_glossary##PDF:{it:可移植文档格式 (PDF)}}。

{marker plot_region}{...}
{phang}
{bf:plot region}.
图区域是被轴封闭的区域。它是数据被绘制的位置。这与 {help g_glossary##graph_region:图形区域} 不同，后者包括图区域和带有标题和轴标签的区域。见 {help region_options##regions_image:区域图像} 在 {manhelpi region_options G-3} 中。
另请参阅 {help g_glossary##avail_area:{it:可用区域}} 和 {help g_glossary##graph_region:{it:图形区域}}。

{phang}
{bf:plotregionstyle}.
{it:plotregionstyle} 控制图区域的整体外观，并由四组属性定义：边距样式、整体区域样式、内部区域样式以及图区域的水平和垂直定位。请参阅 {manhelpi plotregionstyle G-4}。

{phang}
{bf:plottype}.
请参阅 {help g_glossary##family:{it:家族和图形类型}}。

{phang}
{bf:PNG}.
请参阅 {help g_glossary##PNG:{it:可移植网络图形 (PNG)}}。

{marker PDF}{...}
{phang}
{bf:Portable Document Format (PDF)}.
可移植文档格式 (PDF) 是一种矢量文件格式，可用于表示独立于硬件、软件或操作系统的图形和文档。它由 Adobe 开发，首次发布于 1993 年。PDF 在 2008 年被标准化（ISO）为开放格式。
另请参见 {help g_glossary##image_format:{it:图像格式，光栅图像格式和矢量图像格式}}。

{marker PNG}{...}
{phang}
{bf:Portable Network Graphics (PNG)}.
可移植网络图形 (PNG) 是一种非专利的光栅图像格式，最初于 1996 年发布。请参阅 {manhelpi png_options G-3}。
另请参见 {help g_glossary##image_format:{it:图像格式，光栅图像格式和矢量图像格式}}。

{marker PS}{...}
{phang}
{bf:PostScript (PS)}.
PostScript (PS) 是一种矢量文件格式，实际上它是一种自己的语言。它最初由 Adobe Systems 于 1984 年创建，作为一种页面描述语言，希望能够被任何打印机使用。虽然并非所有打印机都支持 PostScript，但它已经成为一种被许多打印机、屏幕渲染程序和图形设计程序广泛使用的格式。请参阅 {manhelpi ps_options G-3}。另请参见 {help g_glossary##EPS:{it:封装的 PostScript (EPS)}} 和 {help g_glossary##image_format:{it:图像格式，光栅图像格式和矢量图像格式}}。

{phang}
{bf:PS}.
请参阅 {help g_glossary##PS:{it:PostScript (PS)}}。

{phang}
{bf:pstyle}.
{it:pstyle} 指定图的整体外观，这由标记、标记标签和线条的外观（markerstyle、markerlabelstyle、linestyle）；点通过线连接的方式（connectstyle）；缺失值是否会导致连接时线条中断；区域填充、着色、阴影和勾勒的方式（areastyle）；点图中点的外观；以及箭头的外观构成。请参阅 {manhelpi pstyle G-4}。

{phang}
{bf:raster image format}.
请参阅 {help g_glossary##image_format:{it:图像格式，光栅图像格式和矢量图像格式}}。

{marker RGB}{...}
{phang}
{bf:red, green, and blue (RGB) values}.
红、绿和蓝 (RGB) 值是一组三个数字，每个数字在 0-255 的范围内，指定所混合的红色、绿色和蓝色的数量。例如，要获得以下颜色，可以使用这些值：

	{cmd:red}     =   {cmd:255    0    0}
	{cmd:green}   =   {cmd:  0  255    0}
	{cmd:blue}    =   {cmd:  0    0  255}
	{cmd:white}   =   {cmd:255  255  255}
	{cmd:black}   =   {cmd:  0    0    0}
	{cmd:gray}    =   {cmd:128  128  128}
	{cmd:navy}    =   {cmd: 26   71  111}

{pmore}
这组值的整体比例会影响强度，因此将 255 改为 128 会使颜色保持不变，但会使其变暗。另请参见 {help g_glossary##CMYK:{it:青，洋红，黄色和关键或黑色 (CMYK) 值}} 和 {help g_glossary##HSV:{it:色调、饱和度和明度 (HSV) 值}}。

{phang}
{bf:repeated option}.
重复选项是允许在图形命令中多次指定的选项。对于 Stata 来说，允许某命令的重复选项很不寻常，但是图形命令是一个例外，因为许多其他命令是以图形命令为基础实现的。重复选项是 {it:rightmost} 或 {it:merged}。{it:rightmost} 指示 Stata 采用最右侧的实例；{it:merged} 指定合并重复的实例。请参阅 {help repeated_options_zh:[G-4] 概念: 重复选项}。

{phang}
{bf:RGB values}.
请参阅 {help g_glossary##RGB:{it:红，绿，蓝 (RGB) 值}}。

{marker rightmost}{...}
{phang}
{bf:rightmost option}.
允许与图形命令一起使用的选项称为 {it:rightmost}，如果某选项在同一图形命令中重复，则忽略除最右侧实例以外的所有选项。{opt msymbol()} 是一个 rightmost 选项的示例。
请参阅 {help repeated_options_zh:[G-4] 概念: 重复选项}。
另请参见 {help g_glossary##unique_op:{it:唯一选项}}、{help g_glossary##merged_imp:{it:merged-implicit option}} 和 {help g_glossary##merged_exp:{it:merged-explicit option}}。

{phang}
{bf:ringposstyle}.
{it:ringposstyle}，一个从 0 到 100 的数字，指定标题、副标题等距离图区域的距离。标题定位由选项 {opt position(clockposstyle}) 和 {opt ring(ringposstyle)} 控制。选项 {opt position()} 指定根据时钟的小时数来说明方向，而选项 {opt ring()} 控制标题距离图区域的距离。如果在相同的 {opt position()} 下指定了两个标题，则具有较大 {opt ring()} 的标题将距离图区域最远。请参阅 {manhelpi ringposstyle G-4}。

{phang}
{bf:saturation}.
请参阅 {help g_glossary##intensity:{it:强度}}。

{marker SVG}{...}
{phang}
{bf:Scalable Vector Graphics (SVG)}.
可缩放矢量图形 (SVG) 是一种基于 XML 的矢量图像格式。SVG 是一个开放标准，由万维网联盟开发，最初于 2001 年发布。请参阅 {manhelpi svg_options G-3}。
另请参见 {help g_glossary##image_format:{it:图像格式，光栅图像格式和矢量图像格式}}。

{phang}
{bf:scheme}.
方案指定图形的整体外观，包括前景色和背景色的所有内容，以及 y 轴是在左侧还是右侧出现。方案是一组默认设置。Stata 的默认设置为方案 {opt s2color}。输入 {cmd:graph query, schemes} 查看安装在你计算机上的方案列表。请参见 {mansection G-4 SchemesintroRemarksandexamplesExamplesofschemes:{it:方案示例}} 在 {bf:[G-4] 方案介绍}。

{phang}
{bf:shadestyle}.
{it:shadestyle} 设置填充区域的颜色 ({manhelpi colorstyle G-4}) 和强度 ({manhelpi intensitystyle G-4})。
请参阅 {manhelpi shadestyle G-4}。

{marker styles}{...}
{phang}
{bf:style, composite style, and detail style}.
{it:style} 指定相关选项设置的组合，这些设置共同决定图形的外观。样式有两种形式：细节样式和复合样式。细节样式精准指定某个属性的外观，而复合样式从细节样式值的角度指定整体外观。

{pmore}
复合样式选项的示例包括 {opt mstyle(symbolstyle)}、{opt mlabstyle(markerlabelstyle)} 和 {opt lstyle(linestyle)}，分别指定符号、标记标签和线的整体外观。请注意，所有复合样式选项均以 "style" 结尾：{opt mstyle()}、{opt mlabstyle()} 和 {opt lstyle()}。

{pmore}
细节样式的示例包括 {opt mcolor(colorstyle)}、{opt mlwidth(linewidthstyle)} 和 {opt mlabsize(textsizestyle)}，分别指定对象的颜色、轮廓的厚度和标签的大小。请注意，选项名称未以 "style" 结尾：{opt mcolor()}、{opt mlwidth()} 和 {opt mlabsize()}。

{phang}
{bf:SVG}.
请参阅 {help g_glossary##SVG:{it:可缩放矢量图形 (SVG)}}。

{marker symbolstyle}{...}
{phang}
{bf:symbolstyle}.
{it:symbolstyle} 决定标记的形状。选项包括圆形、菱形、三角形、方形（这四种可以有不同的大小和实心或空心）、加号、X（这两种只能有不同的大小）、点，甚至是一个不可见的符号。请参阅 {manhelpi symbolstyle G-4}。
另请参见 {help g_glossary##marker:{it:标记}} 和 {help g_glossary##markersizestyle:{it:markersizestyle}}。

{marker TIFF}{...}
{phang}
{bf:Tagged Image File Format (TIFF)}.
标记图像文件格式 (TIFF) 是一种光栅图形图像格式，由 Aldus Corporation 于 1986 年创建，随后在 Adobe 收购 Aldus 后由 Adobe Systems 更新。请参阅 {manhelpi tif_options G-3}。另请参见 {help g_glossary##image_format:{it:图像格式，光栅图像格式和矢量图像格式}}。

{phang}
{bf:textbox}.
文本框是一行或多行文本，周围可能有一个可选的边框。另请参见 {help g_glossary##textboxstyle:{it:文本框样式}}。

{marker textboxstyle}{...}
{phang}
{bf:textboxstyle}.
文本框由 11 个属性定义，例如文本框是垂直的还是水平的（{it:orientationstyle}）；文本的大小（{it:textsizestyle}）、文本的颜色（{it:colorstyle}）以及文本是左对齐、居中还是右对齐的（{it:justificationstyle}）。请参阅 {manhelpi textboxstyle G-4}。
另请参见 {help g_glossary##orientationstyle:{it:orientationstyle}}、{help g_glossary##colorstyle:{it:colorstyle}} 和 {help g_glossary##justificationstyle:{it:justificationstyle}}。

{marker textsizestyle}{...}
{phang}
{bf:textsizestyle}.
{it:textsizestyle} 指定文本的大小。有关文本大小的选择，请参阅 {manhelpi textsizestyle G-4}。

{phang}
{bf:textstyle}.
{it:textstyle} 指定文本的整体外观，由五个属性定义：文本是垂直还是水平（{it:orientationstyle}）；文本的大小（{it:textsizestyle}）；文本的颜色（{it:colorstyle}）；文本是左对齐、居中还是右对齐（{it:justificationstyle}）；以及文本如何与基线对齐（{it:alignmentstyle}）。请参阅 {manhelpi textstyle G-4}。
另请参见 {help g_glossary##orientationstyle:{it:orientationstyle}}、{help g_glossary##textsizestyle:{it:textsizestyle}}、{help g_glossary##colorstyle:{it:colorstyle}}、{help g_glossary##symbolstyle:{it:symbolstyle}}、{help g_glossary##justificationstyle:{it:justificationstyle}} 和 {help g_glossary##alignmentstyle:{it:alignmentstyle}}。

{phang}
{bf:ticks}.
刻度是出现在轴上的标记。请参阅 {manhelpi tickstyle G-4}。

{phang}
{bf:ticksetstyle}.
{it:ticksetstyle} 指定轴刻度的整体外观，由 {it:tickstyle}、{it:gridstyle}（如果与刻度集相关联）以及其他刻度细节决定。请参阅 {manhelpi ticksetstyle G-4}。另请参见 {help g_glossary##tickstyle:{it:tickstyle}} 和 {help g_glossary##gridstyle:{it:gridstyle}}。

{marker tickstyle}{...}
{phang}
{bf:tickstyle}.
{it:tickstyle} 指定轴刻度及其标签的整体外观。刻度由三个属性定义：刻度的长度；刻度的线条样式；以及刻度是向外延伸、向内延伸，还是交叉于轴。刻度标签由两个属性定义：它们的大小和颜色。{it:tickstyle} 还决定刻度与刻度标签之间的间距。
请参阅 {manhelpi tickstyle G-4}。

{phang}
{bf:TIFF}.
请参阅 {help g_glossary##TIFF:{it:标记图像文件格式 (TIFF)}}。

{phang}
{bf:transparency}.
请参阅 {help g_glossary##opacity_transparency:{it:不透明度和透明度}}。

{phang}
{bf:twoway graph}.
双向图是有两个维度的图形；它们显示了数值 y 和 x 轴之间变量的关系。请参阅 {help graph_twoway_zh:[G-2] 绘图双向}。

{marker unique_op}{...}
{phang}
{bf:unique option}.
允许与图形命令一起使用的选项称为唯一选项，如果该选项只能指定一次。{opt saving()} 是一个唯一选项的示例。另请参见 {help g_glossary##rightmost:{it:最右边的选项}}、{help g_glossary##merged_imp:{it:merged-implicit option}} 和 {help g_glossary##merged_exp:{it:merged-explicit option}}。

{phang}
{bf:vector image format}.
请参阅 {help g_glossary##image_format:{it:图像格式，光栅图像格式和矢量图像格式}}。

{marker EMF}{...}
{phang}
{bf:Windows Enhanced Metafile (EMF)}.
Windows 增强型图元文件 (EMF) 是 {help g_glossary##WMF:Windows 图元文件 (WMF)} 的更新版本，最初由微软公司于 1993 年发布。与 WMF 一样，EMF 主要是矢量格式，但也可以包含光栅格式。EMF 还用作打印机驱动程序的图形语言和剪贴板图像格式。
另请参见 {help g_glossary##image_format:{it:图像格式，光栅图像格式和矢量图像格式}}。

{marker WMF}{...}
{phang}
{bf:Windows Metafile (WMF)}.
Windows 图元文件 (WMF) 是一种主要为矢量格式，但也可能包含光栅组件的图像格式。它由微软公司开发，并于 1990 年首次发布。
WMF 还用作剪贴板图像格式。
另请参见 {help g_glossary##EMF:{it:Windows 增强型图元文件 (EMF)}} 和 {help g_glossary##image_format:{it:图像格式，光栅图像格式和矢量图像格式}}。

{phang}
{bf:WMF}.
请参阅 {help g_glossary##WMF:{it:Windows 增强型图元文件}}。
{p_end}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <g_glossary.sthlp>}