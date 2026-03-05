{smcl}
{* *! version 1.1.7  19oct2017}{...}
{vieweralsosee "[G-3] fitarea_options" "mansection G-3 fitarea_options"}{...}
{viewerjumpto "语法" "fitarea_options_zh##syntax"}{...}
{viewerjumpto "描述" "fitarea_options_zh##description"}{...}
{viewerjumpto "PDF文档链接" "fitarea_options_zh##linkspdf"}{...}
{viewerjumpto "选项" "fitarea_options_zh##options"}{...}
{viewerjumpto "备注" "fitarea_options_zh##remarks"}
{help fitarea_options:English Version}
{hline}{...}
{p2colset 1 26 28 2}{...}
{p2col:{bf:[G-3]} {it:fitarea_options} {hline 2}}指定置信区间区域外观的选项{p_end}
{p2col:}({mansection G-3 fitarea_options:查看完整的PDF手册条目}){p_end}
{p2colreset}{...}


{marker syntax}{...}
{title:语法}

{synoptset 30}{...}
{p2col:{it:fitarea_options}}描述{p_end}
{p2line}
{p2col:{cmdab:acol:or:(}{it:{help colorstyle_zh}}{cmd:)}}轮廓和填充颜色
与不透明度 {p_end}
{p2col:{cmdab:fc:olor:(}{it:{help colorstyle_zh}}{cmd:)}}填充颜色和不透明度{p_end}
{p2col:{cmdab:fi:ntensity:(}{it:{help intensitystyle_zh}}{cmd:)}}填充强度
{p_end}

{p2col:{cmdab:alc:olor:(}{it:{help colorstyle_zh}}{cmd:)}}轮廓颜色和
不透明度{p_end}
{p2col:{cmdab:alw:idth:(}{it:{help linewidthstyle_zh}}{cmd:)}}轮廓厚度{p_end}
{p2col:{cmdab:alp:attern:(}{it:{help linepatternstyle_zh}}{cmd:)}}轮廓模式
（实线、虚线等）{p_end}
{p2col :{cmdab:ala:lign:(}{it:{help linealignmentstyle_zh}}{cmd:)}}轮廓
对齐方式（内侧、外侧、居中){p_end}
{p2col:{cmdab:alsty:le:(}{it:{help linestyle_zh}}{cmd:)}}轮廓的整体外观{p_end}

{p2col:{cmdab:asty:le:(}{it:{help areastyle_zh}}{cmd:)}}区域的整体外观，所有
上述设置{p_end}
{p2col:{cmdab:psty:le:(}{it:{help pstyle_zh}}{cmd:)}}整体绘图样式，
包括区域样式{p_end}
{p2line}
{p2colreset}{...}
{p 4 6 2}
所有选项都是 {it:merged-implicit}；见 {help repeated options}。


{marker description}{...}
{title:描述}

{pstd}
{it:fitarea_options} 决定了例如由 {helpb twoway fpfitci}、{helpb twoway lfitci}、
{helpb twoway lpolyci} 和 {helpb twoway qfitci} 创建的置信区间区域的外观。


{marker linkspdf}{...}
{title:PDF文档链接}

        {mansection G-3 fitarea_optionsRemarksandexamples:备注和示例}

{pstd}
上述部分未包含在此帮助文件中。


{marker options}{...}
{title:选项}

{phang}
{cmd:acolor(}{it:colorstyle}{cmd:)}
    指定用于勾勒出区域形状的颜色和不透明度，并用于填充其内部。
    详见 {manhelpi colorstyle G-4} 中的颜色选项列表。

{phang}
{cmd:fcolor(}{it:colorstyle}{cmd:)}
    指定用于填充区域内部的颜色和不透明度。
    详见 {manhelpi colorstyle G-4} 中的颜色选项列表。

{phang}
{cmd:fintensity(}{it:intensitystyle}{cmd:)}
    指定用于填充区域内部的颜色的强度。
    详见 {manhelpi intensitystyle G-4} 中的强度选项列表。

{phang}
{cmd:alcolor(}{it:colorstyle}{cmd:)}
    指定用于勾勒区域的颜色和不透明度。
    详见 {manhelpi colorstyle G-4} 中的颜色选项列表。

{phang}
{cmd:alwidth(}{it:linewidthstyle}{cmd:)}
    指定用于勾勒区域的线条厚度。
    详见 {manhelpi linewidthstyle G-4} 中的选项列表。

{phang}
{cmd:alpattern(}{it:linepatternstyle}{cmd:)}
    指定用于勾勒区域的线条是实线、虚线等。
    详见 {manhelpi linepatternstyle G-4} 中的模式选项列表。

{phang}
{cmd:alalign(}{it:linealignmentstyle}{cmd:)}
    指定用于勾勒区域的线条是内部、外部还是居中。
    详见 {manhelpi linealignmentstyle G-4} 中的对齐方式选项列表。

{phang}
{cmd:alstyle(}{it:linestyle}{cmd:)}
    指定用于勾勒区域的线条的整体样式，包括其模式（实线、虚线等）、厚度、颜色和对齐方式。
    上述四个选项允许您更改线条的属性，但 {cmd:lstyle()} 是起点。
    详见 {manhelpi linestyle G-4} 中的可选项列表。

{phang}
{cmd:astyle(}{it:areastyle}{cmd:)}
    指定区域的整体外观。上述选项允许您更改每个属性，但 {cmd:astyle()} 提供了一个起点。

{pmore}
    您不需要因为有任何要更改的内容而指定 {cmd:astyle()}。
    当存在另一种样式与您所需的恰好吻合，或者另一种样式可以让您更少地指定更改以获得所需效果时，您可以指定 {cmd:astyle()}。

{pmore}
    详见 {manhelpi areastyle G-4} 中的可用区域样式列表。

{phang}
{cmd:pstyle(}{it:pstyle}{cmd:)}
    指定绘图的整体样式，包括不仅是 {it:{help areastyle_zh}}，还有所有其他外观参数。
    仅 {it:areastyle} 会影响区域的外观。详见
    {manhelpi pstyle G-4} 中的可用绘图样式列表。


{marker remarks}{...}
{title:备注}

{pstd}
{it:fitarea_options} 可作为选项与任何 {cmd:graph twoway}
绘图类型一起使用，创建带阴影的置信区间区域，例如，
{cmd:graph} {cmd:twoway} {cmd:lfitci}，如

{phang2}
	{cmd:. graph twoway lfitci} {it:yvar} {it:xvar}{cmd:, acolor(blue)}

{pstd}
以上命令将 {it:yvar} 和 {it:x} 轴之间的区域设置为蓝色；详见 {manhelp twoway_area G-2:graph twoway area} 和
{manhelp twoway_rarea G-2:graph twoway rarea}。
{p_end}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <fitarea_options.sthlp>}