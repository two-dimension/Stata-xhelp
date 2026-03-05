{smcl}
{* *! version 1.1.9  19oct2017}{...}
{viewerdialog twoway "dialog twoway"}{...}
{vieweralsosee "[G-2] graph twoway pcarrow" "mansection G-2 graphtwowaypcarrow"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[G-2] graph twoway" "help twoway"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[G-2] graph twoway pcarrowi" "help twoway_pcarrowi_zh"}{...}
{vieweralsosee "[G-2] graph twoway pccapsym" "help twoway_pccapsym_zh"}{...}
{vieweralsosee "[G-2] graph twoway pci" "help twoway_pci_zh"}{...}
{vieweralsosee "[G-2] graph twoway pcscatter" "help twoway_pcscatter_zh"}{...}
{vieweralsosee "[G-2] graph twoway pcspike" "help twoway_pcspike_zh"}{...}
{viewerjumpto "Syntax" "twoway_pcarrow_zh##syntax"}{...}
{viewerjumpto "Menu" "twoway_pcarrow_zh##menu"}{...}
{viewerjumpto "Description" "twoway_pcarrow_zh##description"}{...}
{viewerjumpto "Links to PDF documentation" "twoway_pcarrow_zh##linkspdf"}{...}
{viewerjumpto "Options" "twoway_pcarrow_zh##options"}{...}
{viewerjumpto "Remarks" "twoway_pcarrow_zh##remarks"}
{help twoway_pcarrow:English Version}
{hline}{...}
{p2colset 1 31 33 2}{...}
{p2col:{bf:[G-2] graph twoway pcarrow} {hline 2}}成对坐标图与箭头{p_end}
{p2col:}({mansection G-2 graphtwowaypcarrow:查看完整的PDF手册条目}){p_end}
{p2colreset}{...}


{* index twoway pcarrow tt}{...}
{* index paired-coordinate plots, pcarrow}{...}
{* index arrows}{...}
{* index barbsize tt}{...}
{* index mangle tt}{...}

{marker syntax}{...}
{title:语法}

{phang}单向箭头

{p 8 60 2}
{cmdab:tw:oway}
{cmd:pcarrow} {space 1}{it:y1var} {it:x1var} {it:y2var} {it:x2var}
{ifin}
[{cmd:,}
{it:选项}]


{phang}双向箭头

{p 8 60 2}
{cmdab:tw:oway}
{cmd:pcbarrow} {it:y1var} {it:x1var} {it:y2var} {it:x2var}
{ifin}
[{cmd:,}
{it:选项}]


{synoptset 28}{...}
{p2col:{it:选项}}描述{p_end}
{p2line}
{p2col:{cmdab:msty:le:(}{it:{help markerstyle_zh}}{cmd:)}}箭头头部的整体样式{p_end}
{p2col:{cmdab:msiz:e:(}{it:{help markersizestyle_zh}}{cmd:)}}箭头头部的大小{p_end}
{p2col:{cmdab:mang:le:(}{it:{help anglestyle_zh}}{cmd:)}}箭头头部的角度{p_end}
{p2col:{cmdab:barb:size:(}{it:{help markersizestyle_zh}}{cmd:)}}箭头头部填充部分的大小{p_end}
{p2col:{cmdab:mc:olor:(}{it:{help colorstyle_zh}}{cmd:)}}箭头头部的颜色和不透明度{p_end}
{p2col:{cmdab:mfc:olor:(}{it:{help colorstyle_zh}}{cmd:)}}箭头头部"填充"的颜色和不透明度{p_end}
{p2col:{cmdab:mlc:olor:(}{it:{help colorstyle_zh}}{cmd:)}}箭头头部轮廓的颜色和不透明度{p_end}
{p2col:{cmdab:mlw:idth:(}{it:{help linewidthstyle_zh}}{cmd:)}}箭头头部轮廓的厚度{p_end}
{p2col:{cmdab:mlsty:le:(}{it:{help linestyle_zh}}{cmd:)}}厚度和颜色{p_end}

{p2col:{it:{help line_options_zh}}}改变箭杆线的外观{p_end}

{p2col:{it:{help marker_label_options_zh}}}添加标记标签；改变外观或位置{p_end}
{p2col:{cmdab:head:label}}标记箭头头部，而非尾部{p_end}

INCLUDE help gr_hvpcopt
INCLUDE help gr_axlnk

INCLUDE help gr_twopt
{p2line}
INCLUDE help gr_repopt1


{marker menu}{...}
{title:菜单}

{phang}
{bf:图形 > 二维图 (散点图、线图等)}


{marker description}{...}
{title:描述}

{pstd}
{cmd:twoway pcarrow} 为数据集中每个观察值绘制一条箭头。箭头从坐标 ({it:y1var},{it:x1var}) 开始，结束于坐标 ({it:y2var},{it:x2var})，在结束坐标处绘制箭头头部。

{pstd}
{cmd:twoway pcbarrow} 在每个端点绘制箭头头部；也就是说，绘制双向箭头。


{marker linkspdf}{...}
{title:PDF文档链接}

        {mansection G-2 graphtwowaypcarrowQuickstart:快速开始}

        {mansection G-2 graphtwowaypcarrowRemarksandexamples:备注和示例}

{pstd}
上述部分不包含在此帮助文件中。


{marker options}{...}
{title:选项}

{phang}
{cmd:mstyle(}{it:markerstyle}{cmd:)}
    指定箭头头部的整体外观，包括其大小、颜色等。其他选项允许您改变箭头头部的每个属性，但 {cmd:mstyle()} 是它们的起点。

{pmore}
    您不需要因为想改变箭头头部的外观而指定 {cmd:mstyle()}。事实上，
    大多数人很少指定 {cmd:mstyle()} 选项。您在存在正好符合您希望的样式时或其他样式可以让您指定
    更少的更改以获得所需效果时指定 {cmd:mstyle()}。

{pmore}
    {cmd:pcarrow} 绘制的图形选项和相关的"外观"来自标准标记，因此其所有选项都以 {cmd:m} 开头。请参阅
    {manhelpi markerstyle G-4} 以获取可用的标记/箭头头部样式列表。

{phang}
{cmd:msize(}{it:markersizestyle}{cmd:)} 指定箭头头部的大小。
    请参阅 {manhelpi markersizestyle G-4} 以获取大小选项列表。

{phang}
{cmd:mangle(}{it:anglestyle}{cmd:)} 指定箭头头部的每一侧与箭头线形成的角度。对于大多数方案，默认角度为 28.64。

{phang}
{cmd:barbsize(}{it:markersizestyle}{cmd:)} 指定箭头头部的填充部分。 {cmd:barbsize(0)} 指定只绘制箭头头部的线条。当 {cmd:barbsize()} 等于 {cmd:msize()} 时，箭头头部将填充至与箭头线呈直角。 {cmd:barbsize()} 的效果比描述更容易见到；{stata gr_example2 barbsize:单击此处}查看示例图形。

{phang}
{cmd:mcolor(}{it:colorstyle}{cmd:)} 指定箭头头部的颜色。
    此选项设置用于勾勒箭头头部的线和箭头头部内部的颜色和不透明度。另见以下选项 {cmd:mfcolor()} 和 {cmd:mlcolor()}。
    请参阅 {manhelpi colorstyle G-4} 以获取颜色选项列表。

{phang}
{cmd:mfcolor(}{it:colorstyle}{cmd:)}
    指定箭头头部内部的颜色和不透明度。
    请参阅 {manhelpi colorstyle G-4} 以获取颜色选项列表。

{phang}
{cmd:mlstyle(}{it:linestyle}{cmd:)},{cmd:mlwidth(}{it:linewidthstyle}{cmd:)}, 和
{cmd:mlcolor(}{it:colorstyle}{cmd:)}
    指定用于勾勒箭头头部的线条外观。请参阅 {help lines_zh}，但您无法改变箭头头部的线条模式。

{phang}
{it:line_options} 
    指定用于绘制箭杆线的外观，包括模式、宽度和颜色；请参阅 {manhelpi line_options G-3}。

{phang}
{it:marker_label_options}
    指定箭头是否以及如何标记。默认情况下，标签放置在箭头的尾部，尾部由 {it:y1var} 和 {it:x1var} 定义。请参阅 {manhelpi marker_label_options G-3} 获取更改标签外观的选项。

{phang}
{cmd:headlabel} 指定在箭头头部绘制标签，
        位于 ({it:y2var},{it:x2var}) 点，而不是在箭头的尾部，即 ({it:y1var},{it:x1var}) 点。默认情况下，当指定 {cmd:mlabel()} 选项时，标签放置在箭头的尾部； {cmd:headlabel} 将标签从尾部移动到头部。

INCLUDE help gr_hvpcoptf

INCLUDE help gr_axlnkf

INCLUDE help gr_twoptf


{marker remarks}{...}
{title:备注}

{pstd}
备注按以下标题呈现：

	{help twoway_pcarrow##basic_use:基本用法}
	{help twoway_pcarrow##advanced_use:高级用法}


{marker basic_use}{...}
{title:基本用法}

{pstd}
我们有来自1968年和1988年有关美国女性按职业分类的收入和总经验的纵向数据。
我们将为两个箭头输入数据，这两个箭头都起始于(0,0)并以直角延伸，随后进行绘图。

{cmd}{...}
	. input y1 x1 y2 x2
	  1.     0  0  0  1
	  2.     0  0  1  0
	  3. end

	. twoway pcarrow y1 x1 y2 x2
{text}{...}
	  {it:({stata "gr_example2 pcarrow1":单击以运行})}

{pstd}
我们可以在箭头的头部添加标签，同时在绘图区域添加一点空间，并将绘图区域限制为正方形：

{cmd}{...}
	. drop _all

	. input y1 x1 y2 x2 str10 time   pos
	  1.     0  0  0  1 "3 点钟"    3
	  2.     0  0  1  0 "12 点钟"  12
	  3. end

	. twoway pcarrow y1 x1 y2 x2, aspect(1) mlabel(time) headlabel
			       mlabvposition(pos) plotregion(margin(vlarge))
{text}{...}
	  {it:({stata "gr_example2 pcarrow1b":单击以运行})}

{pstd}
有关多变量结果图中箭头的示例，请参阅
{manhelp biplot MV}。


{marker advanced_use}{...}
{title:高级用法}

{pstd}
与许多 {cmd:twoway} 绘图类型一样，{cmd:pcarrow} 和 {cmd:pcbarrow} 可以与其他 {helpb twoway} 绘图类型有用地结合。在此，使用了 {cmd:scatter}
图来标记 {cmd:pcbarrow} 绘制的范围（虽然承认这些范围可能更好地通过 {cmd:twoway rcap} 表示）。

{cmd}{...}
	. sysuse nlsw88, clear

	. keep if occupation <= 8

	. collapse (p05) p05=wage (p95) p95=wage (p50) p50=wage, by(occupation)
	. gen mid = (p05 + p95) / 2
	. gen dif = (p95 - p05)
	. gsort -dif
	. gen srt = _n

	. twoway pcbarrow srt p05 srt p95 ||
                 scatter  srt mid, msymbol(i) mlabel(occupation)
       			           mlabpos(12) mlabcolor(black)
		plotregion(margin(t=5)) yscale(off)
		ylabel(, nogrid) legend(off)
		ytitle(小时工资)
		title("美国女性工资的90百分位范围按职业")
		note("来源：年轻女性的国家纵向调查")
{txt}{...}
	  {it:({stata "gr_example2 pcarrow2":单击以运行})}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <twoway_pcarrow.sthlp>}