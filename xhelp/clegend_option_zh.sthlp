{smcl}
{* *! version 1.0.12  16apr2019}{...}
{vieweralsosee "[G-3] clegend_option" "mansection G-3 clegend_option"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[G-2] graph twoway contour" "help twoway_contour_zh"}{...}
{vieweralsosee "[G-2] graph twoway contourline" "help twoway_contourline_zh"}{...}
{vieweralsosee "[G-3] title_options" "help title_options_zh"}{...}
{viewerjumpto "语法" "clegend_option_zh##syntax"}{...}
{viewerjumpto "描述" "clegend_option_zh##description"}{...}
{viewerjumpto "PDF 文档链接" "clegend_option_zh##linkspdf"}{...}
{viewerjumpto "选项" "clegend_option_zh##option"}{...}
{viewerjumpto "备注" "clegend_option_zh##remarks"}
{help clegend_option:English Version}
{hline}{...}
{p2colset 1 25 27 2}{...}
{p2col:{bf:[G-3]} {it:clegend_option} {hline 2}}控制等高线图图例的选项{p_end}
{p2col:}({mansection G-3 clegend_option:查看完整的 PDF 手册条目}){p_end}
{p2colreset}{...}


{marker syntax}{...}
{title:语法}

{synoptset 20}{...}
{p2col:{it:clegend_option}}描述{p_end}
{p2line}
{p2col:{cmdab:cleg:end:(}[{it:{help clegend_option##suboptions:suboptions}}]{cmd:)}}等高线图例的内容、外观和位置{p_end}
{p2line}
{p 4 6 2}
{cmd:clegend()} 是 {it:merged-implicit}; 参见 {help repeated options}。

{marker suboptions}{...}
{synoptset 28 tabbed}{...}
{synopthdr:suboptions}
{synoptline}
{syntab:等高线图例外观}{...}
{synopt:{opth width(size)}}等高线键的宽度{p_end}
{synopt:{opth height(size)}}等高线键的高度{p_end}

{p2col:{opt altaxis}}将等高线键的轴移动到键的另一侧{p_end}
{p2col:{cmdab:bm:argin:(}{it:{help marginstyle_zh}}{cmd:)}}图例周围的外边距{p_end}
{p2col:{it:{help title_options_zh}}}标题、副标题、注释、说明{p_end}
{p2col:{cmdab:r:egion:(}{it:{help clegend_option##roptions:roptions}}{cmd:)}}边框和背景阴影{p_end}

{syntab:等高线图例位置}{...}
{p2col:{cmd:off} 或 {cmd:on}}抑制或强制显示图例{p_end}
{p2col:{cmdab:pos:ition:(}{it:{help clockposstyle_zh}}{cmd:)}}图例的位置{p_end}
{p2col:{cmd:ring(}{it:{help ringposstyle_zh}}{cmd:)}}图例出现的位置（详细）{p_end}
{p2col:{cmdab:bplace:ment:(}{it:{help compassdirstyle_zh}}{cmd:)}}在绘图区域中定位图例的放置{p_end}
{p2col:{cmd:at(}{it:#}{cmd:)}}仅与 {cmd:by()} 一起使用{p_end}
{synoptline}
{p 4 6 2}
参见
{it:{help clegend_option##where:等高线图例的位置}} 在下面的 {it:备注} 中，以及参见 {it:{help title_options##remarks3:标题的位置}} 在 {manhelpi title_options G-3} 中定义的 {it:clockposstyle} 和 {it:ringposstyle}。

{marker roptions}{...}
{p2col:{it:roptions}}描述{p_end}
{p2line}
{p2col:{cmdab:sty:le:(}{it:{help areastyle_zh}}{cmd:)}}区域的整体风格{p_end}
{p2col:{cmdab:c:olor:(}{it:{help colorstyle_zh}}{cmd:)}}区域的线条和填充颜色{p_end}
{p2col:{cmdab:fc:olor:(}{it:{help colorstyle_zh}}{cmd:)}}区域的填充颜色{p_end}
{p2col:{cmdab:ls:tyle:(}{it:{help linestyle_zh}}{cmd:)}}边框的整体样式{p_end}
{p2col:{cmdab:lc:olor:(}{it:{help colorstyle_zh}}{cmd:)}}边框的颜色{p_end}
{p2col:{cmdab:lw:idth:(}{it:{help linewidthstyle_zh}}{cmd:)}}边框的厚度{p_end}
{p2col:{cmdab:lp:attern:(}{it:{help linepatternstyle_zh}}{cmd:)}}边框模式（实线、虚线等）{p_end}
{p2col : {cmdab:la:lign:(}{it:{help linealignmentstyle_zh}}{cmd:)}}线条对齐（内侧、外侧、居中）{p_end}
{p2col:{cmdab:m:argin:(}{it:{help marginstyle_zh}}{cmd:)}}边框和图例内容之间的边距{p_end}
{p2line}
{p2colreset}{...}


{marker description}{...}
{title:描述}

{pstd}
{cmd:clegend()} 选项允许您控制等高线图图例的内容、外观和放置方式。

{pstd}
等高线图图例有一个单一的键，用于显示用于填充等高线区域的所有颜色。它还有一个 {it:c} 轴，为该键和关联的等高线图提供比例。该轴由 {it:c}-axis 选项控制，可参见 {manhelpi axis_options G-3}。

{marker linkspdf}{...}
{title:PDF 文档链接}

        {mansection G-3 clegend_optionQuickstart:快速开始}

        {mansection G-3 clegend_optionRemarksandexamples:备注和示例}

{pstd}
以上部分未包含在此帮助文件中。


{marker option}{...}
{title:选项}

{phang}
{cmd:clegend(}{it:{help clegend_option##suboptions:suboptions}}{cmd:)}
    指定等高线图图例的外观，以及它的外观和显示位置。

{marker appearance_suboptions}{...}
{title:与 clegend() 一起使用的内容和外观子选项}

{phang}
    {opt width(size)} 指定等高线键的宽度。
    参见 {manhelpi size G-4}。

{phang}
    {opt height(size)} 指定等高线键的高度。
    参见 {manhelpi size G-4}。

{phang}
   {opt altaxis} 指定将等高线键的轴放置在等高线键的默认侧的对面。对于大多数 {help schemes_zh}，这意味着将轴从等高线键的右侧移动到左侧。

{phang}
{cmd:bmargin(}{it:marginstyle}{cmd:)}
     指定图例周围的外边距。即，它指定附近其他元素的最小距离。有关指定边框和内容之间内部边距的子选项 {cmd:margin()} 的更多信息，请参见下面的 {it:{help clegend_option##subopts:与 clegend(region()) 一起使用的子选项}}。参见 {manhelpi marginstyle G-4} 中的边距选择。

{phang}
{it:title_options}
     允许在等高线图图例上放置标题、副标题、注释和说明。参见 {manhelpi title_options G-3}。

{phang}
{cmd:region(}{it:roptions}{cmd:)}
     指定图例的边框和阴影。您可以通过指定 {cmd:clegend(region(fcolor(gs9)))} 为图例提供灰色背景。请参见下面的 {it:{help clegend_option##subopts:与 clegend(region()) 一起使用的子选项}}。

{marker subopts}{...}
{title:与 clegend(region()) 一起使用的子选项}

{phang}
{cmd:style(}{it:areastyle}{cmd:)}
     指定图例出现的区域的整体样式。其他子选项允许您单独更改区域的属性，但 {cmd:style()} 提供了起始点。详见 {manhelpi areastyle G-4} 选择列表。

{phang}
{cmd:color(}{it:colorstyle}{cmd:)}
    指定图例的背景颜色和用于轮廓的线条颜色。详见 {manhelpi colorstyle G-4} 中的颜色选择列表。

{phang}
{cmd:fcolor(}{it:colorstyle}{cmd:)}
    指定图例的背景（填充）颜色。
    详见 {manhelpi colorstyle G-4} 中的颜色选择列表。

{phang}
{cmd:lstyle(}{it:linestyle}{cmd:)}
    指定用于轮廓的线条的整体样式，包括其模式（实线、虚线等）、厚度和颜色。底部列出的其他子选项允许您单独更改线条的属性，但 {cmd:lstyle()} 是起始点。详见 {manhelpi linestyle G-4} 中的选择列表。

{phang}
{cmd:lcolor(}{it:colorstyle}{cmd:)}
    指定用于轮廓的线条的颜色。
   详见 {manhelpi colorstyle G-4} 中的颜色选择列表。

{phang}
{cmd:lwidth(}{it:linewidthstyle}{cmd:)}
    指定用于轮廓的线条的厚度。
    详见 {manhelpi linewidthstyle G-4} 中的选择列表。

{phang}
{cmd:lpattern(}{it:linepatternstyle}{cmd:)}
    指定用于轮廓的线条是实心、虚线等。详见 {manhelpi linepatternstyle G-4} 中的选择列表。

{phang}
{cmd:lalign(}{it:linealignmentstyle}{cmd:)}
    指定用于轮廓的线条是在内部、外部或居中。
    详见 {manhelpi linealignmentstyle G-4} 中的对齐选择列表。

{phang}
{cmd:margin(}{it:marginstyle}{cmd:)}
    指定边框和图例内容之间的内部边距。有关指定图例周围外部边距的 {cmd:bmargin()}，请参见上面的 {it:{help clegend_option##appearance_suboptions:与 clegend() 一起使用的内容和外观子选项}}。参见 {manhelpi marginstyle G-4} 中的边距选择列表。


{marker location_suboptions}{...}
{title:与 clegend() 一起使用的位置子选项}

{phang}
{cmd:off} 和 {cmd:on}
    决定图例是否显示。默认情况下，当图表中出现 {helpb twoway contour} 图时，默认为 {cmd:on}。在这种情况下，{cmd:clegend(off)} 将抑制图例的显示。

{phang}
{cmd:position(}{it:clockposstyle}{cmd:)},
{cmd:ring(}{it:ringposstyle}{cmd:)}, 和
{cmd:bplacement(}{it:compassdirstyle}{cmd:)}
    覆盖默认的图例位置，通常在绘图区域的右侧。{cmd:position()} 根据 12 小时钟表的钟点指定方向 [{it:sic}]，{cmd:ring()} 指定距离绘图区域的距离。

{pmore}
    {cmd:ring(0)} 定义为在绘图区域内，允许您将图例放置在图内。{cmd:ring(}{it:k}{cmd:)}, {it:k}>0，指定绘图区域外部的位置；{cmd:ring()} 值越大，图例离绘图区域越远。{cmd:ring()} 值可以是整数或非整数，通常算作整数。

{pmore}
    当指定 {cmd:ring(0)} 时，{cmd:bplacement()} 进一步指定图例在绘图区域的位置。{cmd:bplacement(seast)} 将图例放置在绘图区域的东南（右下）角。

{pmore}
    {cmd:position(12)} 将图例放置在绘图区域的正上方（假设 {cmd:ring()}>0），{cmd:position(9)} 将图例直接放置在绘图区域的左侧，依此类推。

{pmore}
    参见
    {it:{help clegend_option##where:等高线图例的位置}} 在下面的 {it:备注} 中以及
    {it:{help title_options##remarks3:标题的位置}} 在 {manhelpi title_options G-3} 中，了解有关 {cmd:position()} 和 {cmd:ring()} 子选项的更多信息。

{phang}
{cmd:at(}{it:#}{cmd:)}
    仅与 {it:twoway_option} {cmd:by()} 一起使用。它指定图例出现在 {it:#} 的位置，使用与 {cmd:by(}...{cmd:,} {cmd:holes())} 相同的编码。有关 {it:{help clegend_option##by:与 by() 一起使用图例}} 的更多信息，请参见下面的 {it:备注}，并参见 {manhelpi by_option G-3}。


{marker remarks}{...}
{title:备注}

{pstd}
备注在以下标题下呈现：

	{help clegend_option##when:等高线图例何时出现}
	{help clegend_option##where:等高线图例的位置}
	{help clegend_option##titles:在等高线图例上放置标题}
	{help clegend_option##axis:控制等高线图例中的轴}
	{help clegend_option##by:与 by() 一起使用图例}


{marker when}{...}
{title:等高线图例何时出现}

{pstd}
当图表包含 {helpb twoway contour} 图时，等高线图例会出现在图中。

	{cmd:. sysuse sandstone}
   
   	{cmd:. twoway contour depth northing easting, levels(10)}
   	  {it:({stata "gr_example sandstone: twoway contour depth northing easting, levels(10)":click to run})}
{* graph clegend1}{...}

{pstd}
您可以通过指定 {cmd:clegend(off)} 来抑制等高线图例，

   	{cmd:. twoway contour depth northing easting, levels(10) clegend(off)}
   	  {it:({stata "gr_example sandstone: twoway contour depth northing easting, levels(10) clegend(off)":click to run})}
{* graph clegend2}{...}


{marker where}{...}
{title:等高线图例的位置}

{pstd}
默认情况下，图例出现在绘图区域的右侧，技术上称为 {cmd:position(3)} {cmd:ring(3)}。子选项 {cmd:position()} 和 {cmd:ring()} 指定图例的位置。
{cmd:position()} 指定图例出现在绘图区域的哪一侧—— {cmd:position(3)} 表示 3 点钟方向——而 {cmd:ring()} 指定与绘图区域的距离—— {cmd:ring(3)} 表示比 {it:title_option} {cmd:b2title()} 更远，但在 {it:title_option} {cmd:note()} 之内；参见 {manhelpi title_options G-3}。

{pstd}
如果我们指定 {cmd:clegend(position(9))}，则图例将移动到 9 点钟位置：

   	{cmd:. twoway contour depth northing easting, levels(10) clegend(pos(9))}
   	  {it:({stata "gr_example sandstone: twoway contour depth northing easting, levels(10) clegend(pos(9))":click to run})}	  
{* graph clegend3}{...}

{pstd}
{cmd:ring()}——指定距离绘图区域的子选项——很少被指定，但当它被指定时，{cmd:ring(0)} 是最有用的。{cmd:ring(0)} 指定图例被移动到绘图区域内部：

   	{cmd:. twoway contour depth northing easting, levels(10)}
        	{cmd:  clegend(pos(5) ring(0))}
   	  {it:({stata `"gr_example sandstone: twoway contour depth northing easting, levels(10) clegend(pos(5) ring(0))"':click to run})}	  
{* graph clegend4}{...}

{pstd}
我们使用 {cmd:position(5) ring(0)} 将图例放在绘图区域内部，位于 5 点钟的位置，意味着在右下角。如果我们指定 {cmd:position(2) ring(0)}，图例将出现在右上角。

{pstd}
我们现在可以为图例添加背景颜色：
	
   	{cmd:. twoway contour depth northing easting, levels(10) clegend(pos(2)}
		{cmd: ring(0) region(fcolor(gs15)))}
   	  {it:({stata `"gr_example sandstone: twoway contour depth northing easting, levels(10) clegend(pos(5) ring(0) region(fcolor(gs15)))"':click to run})}
{* graph clegend5}{...}


{marker titles}{...}
{title:在等高线图例上放置标题}

{pstd}
默认情况下，等高线图例的 {it:z} 轴显示 {it:z} 变量标签或变量名称作为标题。您可以抑制此轴标题。您还可以为图例添加整体标题。我们通过为前面的图添加 {cmd:ztitle("")} 和 {cmd:clegend(title("Depth"))} 选项来实现这一点：
	
   	{cmd:. twoway contour depth northing easting, levels(10) ztitle("")}
		{cmd:clegend(title("Depth") region(fcolor(gs15)))}
   	  {it:({stata `"gr_example sandstone: twoway contour depth northing easting, levels(10) ztitle("") clegend(title("Depth") region(fcolor(gs15)))"':click to run})}
{* graph clegend6}{...}

{pstd}
图例还可以包含 {cmd:subtitles()}、{cmd:notes()} 和 {cmd:captions()}，尽管这些很少使用；参见 {manhelpi title_options G-3}。


{marker axis}{...}
{title:控制等高线图例中的轴}

{pstd}
等高线图图例包含 {it:z} 轴。您可以像控制图的 {it:x} 或 {it:y} 轴一样控制此轴。这里我们使用 {cmd:zlabel()} 选项指定等高线的切点和自定义刻度标签，

   	{cmd:. twoway contour depth northing easting, levels(10)}
   		{cmd:zlabel(7600 "low" 7800 "medium" 8000 "high")}
		{cmd:region(fcolor(gs15)))}
   	  {it:({stata `"gr_example sandstone: twoway contour depth northing easting, levels(10) zlabel(7600 "low" 7800 "medium" 8000 "high") clegend(title("Depth") region(fcolor(gs15)))"':click to run})}	  
{* graph clegend7}{...}

{pstd}
次要刻度、轴尺度（对数、反向等）和 {it:z} 轴的所有其他方面可以使用 {cmd:zlabel()}、{cmd:zmlabel()}、{cmd:ztick()}、{cmd:zmtick()}、{cmd:zscale()} 和 {cmd:ztitle()} 选项控制；详见 {manhelpi axis_options G-3}。


{* 图例，使用 by() tt}{...}
{* 索引 by() tt，图例的使用}{...}
{marker use_of_legends_with_by}{...}
{marker by}{...}
{title:与 by() 一起使用图例}

{pstd}
默认情况下，当指定 {cmd:by()} 时，图例会被省略。您可以通过在 {cmd:by()} 中指定 {cmd:clegend(on)} 来开启图例。它将显示在默认位置。

	{cmd:. sysuse surface}
   
   	{cmd:. twoway contour temperature longitude latitude,}
		{cmd:level(10) xlabel(,format(%9.0f)) by(date, clegend(on))}
   	  {it:({stata `"gr_example surface: twoway contour temperature longitude latitude, levels(10) xlabel(,format(%9.0f)) by(date, clegend(on))"':click to run})}	  
{* graph clegend8}{...}

{pstd}
如果您想移动图例，请考虑不同的选项及其在命令行中的放置。
{it:{help clegend_option##location_suboptions:与 clegend() 一起使用的位置子选项}} 应该在 {cmd:by()} 选项中指定，而 {it:{help clegend_options##appearance_suboptions:与 clegend() 一起使用的内容和外观子选项}} 应该在 {cmd:by()} 选项外部指定。例如，{cmd:position()} 选项更改图例出现的位置，因此应该在 {cmd:by()} 选项中指定：

   	{cmd:. twoway contour temperature longitude latitude,}
		{cmd:level(10) xlabel(,format(%9.0f)) by(date, clegend(on pos(9)))}
   	  {it:({stata `"gr_example surface: twoway contour temperature longitude latitude, levels(10) xlabel(,format(%9.0f)) by(date, clegend(on pos(9)))"':click to run})}	  
{* graph clegend9}{...}

{pstd}
如果您还想更改图例的外观，请在 {cmd:by()} 选项外部指定额外的 {cmd:clegend()} 选项：

   	{cmd:. twoway contour temperature longitude latitude,}
		{cmd:level(10) xlabel(,format(%9.0f))}
		{cmd: clegend(on width(15)) by(date, clegend(on pos(9)))}
   	  {it:({stata `"gr_example surface: twoway contour temperature longitude latitude, levels(10) xlabel(,format(%9.0f)) clegend(on width(15)) by(date, clegend(on pos(9)))"':click to run})}	  
{* graph clegend10}{...}

{pstd}
如果您在 {cmd:by()} 选项外部指定 {help clegend_option##location_suboptions:位置子选项}，则位置子选项将被忽略。
{p_end}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <clegend_option.sthlp>}