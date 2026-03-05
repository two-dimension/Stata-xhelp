{smcl}
{* *! version 1.1.7  19oct2017}{...}
{vieweralsosee "[G-3] area_options" "mansection G-3 area_options"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[G-2] graph dot" "help graph_dot_zh"}{...}
{viewerjumpto "语法" "area_options_zh##syntax"}{...}
{viewerjumpto "描述" "area_options_zh##description"}{...}
{viewerjumpto "PDF文档链接" "area_options_zh##linkspdf"}{...}
{viewerjumpto "选项" "area_options_zh##options"}{...}
{viewerjumpto "备注" "area_options_zh##remarks"}
{help area_options:English Version}
{hline}{...}
{p2colset 1 23 25 2}{...}
{p2col:{bf:[G-3]} {it:area_options} {hline 2}}指定特殊区域外观的选项{p_end}
{p2col:}({mansection G-3 area_options:查看完整的PDF手册条目}){p_end}
{p2colreset}{...}


{marker syntax}{...}
{title:语法}

{synoptset 27}{...}
{p2col : {it:area_options}}描述{p_end}
{p2line}
{p2col : {cmdab:col:or:(}{it:{help colorstyle_zh}}{cmd:)}}轮廓和填充颜色及不透明度{p_end}
{p2col : {cmdab:fc:olor:(}{it:{help colorstyle_zh}}{cmd:)}}填充颜色和不透明度{p_end}
{p2col : {cmdab:fi:ntensity:(}{it:{help intensitystyle_zh}}{cmd:)}}填充强度{p_end}

{p2col : {cmdab:lc:olor:(}{it:{help colorstyle_zh}}{cmd:)}}轮廓颜色和不透明度{p_end}
{p2col : {cmdab:lw:idth:(}{it:{help linewidthstyle_zh}}{cmd:)}}轮廓厚度{p_end}
{p2col : {cmdab:lp:attern:(}{it:{help linepatternstyle_zh}}{cmd:)}}轮廓样式（实线、虚线等）{p_end}
{p2col : {cmdab:la:lign:(}{it:{help linealignmentstyle_zh}}{cmd:)}}
        轮廓对齐方式（内侧、外侧、居中）{p_end}
{p2col : {cmdab:lsty:le:(}{it:{help linestyle_zh}}{cmd:)}}轮廓的整体样式{p_end}

{p2col : {cmdab:asty:le:(}{it:{help areastyle_zh}}{cmd:)}}区域的整体外观，以上所有设置{p_end}
{p2col : {cmdab:psty:le:(}{it:{help pstyle_zh}}{cmd:)}}整体绘图样式，包括区域样式{p_end}

{p2col : {help advanced_options_zh:{bf:recast(}{it:newplottype}{bf:)}}}高级选项；将图形视为 {it:newplottype}{p_end}
{p2line}
{p2colreset}{...}
{p 4 6 2}
所有选项都是 {it:merged-implicit}；请参见
{help repeated options}。


{marker description}{...}
{title:描述}

{pstd}
{it:area_options} 确定例如由 {helpb twoway area} 创建的区域或 {helpb graph dot} 中使用的 "矩形" 的外观。
在 {helpb graph twoway} 中使用时，{it:area_options} 和 {it:{help barlook_options_zh}} 是同义的，可以互换使用。


{marker linkspdf}{...}
{title:PDF文档链接}

        {mansection G-3 area_optionsRemarksandexamples:备注和示例}

{pstd}
以上部分不包含在此帮助文件中。


{marker options}{...}
{title:选项}

{phang}
{cmd:color(}{it:colorstyle}{cmd:)}
    指定一个颜色和不透明度，用于轮廓和填充区域内部。
    请参见 {manhelpi colorstyle G-4} 获取颜色选择列表。

{phang}
{cmd:fcolor(}{it:colorstyle}{cmd:)}
    指定用于填充区域内部的颜色和不透明度。
    请参见 {manhelpi colorstyle G-4} 获取颜色选择列表。

{phang}
{cmd:fintensity(}{it:intensitystyle}{cmd:)}
    指定用于填充区域内部的颜色强度。
    请参见 {manhelpi intensitystyle G-4} 获取强度选择列表。

{phang}
{cmd:lcolor(}{it:colorstyle}{cmd:)}
    指定用于轮廓的颜色和不透明度。
    请参见 {manhelpi colorstyle G-4} 获取颜色选择列表。

{phang}
{cmd:lwidth(}{it:linewidthstyle}{cmd:)}
    指定用于轮廓的线条厚度。
    请参见 {manhelpi linewidthstyle G-4} 获取选择列表。

{phang}
{cmd:lpattern(}{it:linepatternstyle}{cmd:)}
    指定用于轮廓的线条是否为实线、虚线等。
    请参见 {manhelpi linepatternstyle G-4} 获取样式选择列表。

{phang}
{cmd:lalign(}{it:linealignmentstyle}{cmd:)}
    指定轮廓线条是内侧、外侧还是居中对齐。
    请参见 {manhelpi linealignmentstyle G-4} 获取对齐选择列表。

{phang}
{cmd:lstyle(}{it:linestyle}{cmd:)}
    指定用于轮廓的整体样式，包括其样式（实线、虚线等）、厚度、颜色和对齐方式。
    上述四个选项允许您更改线条的属性，但 {cmd:lstyle()} 是起点。
    请参见 {manhelpi linestyle G-4} 获取选择列表。

{phang}
{cmd:astyle(}{it:areastyle}{cmd:)}
    指定区域的整体外观。上述选项允许您更改每个属性，但 {cmd:astyle()} 提供了一个起点。

{pmore}
    您不必指定 {cmd:astyle()} 只是因为有些您想更改的内容。
    当另一个样式正好符合您的需求或当另一种样式允许您指定更少的更改以获得您想要的内容时，您应指定 {cmd:astyle()}。

{pmore}
    请参见 {manhelpi areastyle G-4} 获取可用区域样式的列表。

{phang}
{cmd:pstyle(}{it:pstyle}{cmd:)}
    指定绘图的整体样式，不仅包括 {it:{help areastyle_zh}}，还包括图形外观的所有其他设置。
    只有 {it:areastyle} 会影响区域的外观。请参见
    {manhelpi pstyle G-4} 获取可用绘图样式的列表。

{phang}
{cmd:recast(}{it:newplottype}{cmd:)}
        是一个高级选项，允许将图形从一种类型转换为另一种，例如，从 {help twoway area:area plot} 转换为
        {help twoway line:line plot}; 参见 
        {manhelpi advanced_options G-3}。大多数，但不是所有，图形都允许
        {cmd:recast()}。


{marker remarks}{...}
{title:备注}

{pstd}
备注按以下标题呈现：

	{help area_options##remarks1:与 twoway 一起使用}
	{help area_options##remarks2:与 graph dot 一起使用}


{marker remarks1}{...}
{title:与 twoway 一起使用}

{pstd}
{it:area_options} 作为选项用于任何生成阴影区域的 {helpb graph twoway} 绘图类型，例如 {cmd:graph} {cmd:twoway} {cmd:area} 和
{cmd:graph} {cmd:twoway} {cmd:rarea}，例如

{phang2}
	{cmd:. graph twoway area} {it:yvar} {it:xvar}{cmd:, color(blue)}

{pstd}
上面的命令会将 {it:yvar} 和 {it:x} 轴之间的区域设置为蓝色；请参见 {manhelp twoway_area G-2:graph twoway area} 和
{manhelp twoway_rarea G-2:graph twoway rarea}。

{pstd}
{cmd:lcolor()}、{cmd:lwidth()}、{cmd:lpattern()}、{cmd:lalign()} 和
{cmd:lstyle()} 选项也用于指定 {cmd:graph} {cmd:twoway} 的所有
{help graph twoway##rangeplots:范围图}、 
{help graph twoway##pcplots:配对坐标图}，以及
{help graph twoway##barplots:区域图}、
{help graph twoway##barplots:条形图}、
{help graph twoway##barplots:尖峰图} 和
{help graph twoway##barplots:掉线图} 中绘制线条和尖峰的样式。
例如，

{phang2}
	{cmd:. graph twoway rspike} {it:y1var} {it:y2var} 
				    {it:xvar}{cmd:, lcolor(red)}

{pstd}
将会把 {it:y1var} 和 {it:y2var} 之间的水平尖峰颜色设置为红色。


{marker remarks2}{...}
{title:与 graph dot 一起使用}

{pstd}
如果您指定 {cmd:graph} {cmd:dot} 的 {cmd:linetype(rectangle)} 选项，则点图将用矩形代替点进行绘制。
然后 {it:area_options} 决定矩形的外观。{it:area_options} 在 {cmd:graph} {cmd:dot} 的
{cmd:rectangles()} 选项中指定：

{phang2}
	{cmd:. graph dot} ...{cmd:,} ... {cmd:linetype(rectangle) rectangles(}{it:area_options}{cmd:)} ...

{pstd}
如果您想要将矩形设置为绿色，您可以指定

{phang2}
	{cmd:. graph dot} ...{cmd:,} ... {cmd:linetype(rectangle) rectangles(fcolor(green))} ...

{pstd}
请参见 {manhelp graph_dot G-2:graph dot}。
{p_end}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <area_options.sthlp>}