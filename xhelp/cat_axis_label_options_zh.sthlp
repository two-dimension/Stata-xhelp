{smcl}
{* *! version 1.1.10  16apr2019}{...}
{vieweralsosee "[G-3] cat_axis_label_options" "mansection G-3 cat_axis_label_options"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[G-2] graph bar" "help graph_bar_zh"}{...}
{vieweralsosee "[G-2] graph box" "help graph_box_zh"}{...}
{vieweralsosee "[G-2] graph dot" "help graph_dot_zh"}{...}
{viewerjumpto "Syntax" "cat_axis_label_options_zh##syntax"}{...}
{viewerjumpto "Description" "cat_axis_label_options_zh##description"}{...}
{viewerjumpto "Links to PDF documentation" "cat_axis_label_options_zh##linkspdf"}{...}
{viewerjumpto "Options" "cat_axis_label_options_zh##options"}{...}
{viewerjumpto "Remarks" "cat_axis_label_options_zh##remarks"}
{help cat_axis_label_options:English Version}
{hline}{...}
{p2colset 1 33 35 2}{...}
{p2col:{bf:[G-3]} {it:cat_axis_label_options} {hline 2}}指定分类轴标签外观的选项{p_end}
{p2col:}({mansection G-3 cat_axis_label_options:查看完整的 PDF 手册条目}){p_end}
{p2colreset}{...}


{marker syntax}{...}
{title:语法}

{synoptset 30}{...}
{p2col:{it:cat_axis_label_options}}描述{p_end}
{p2line}
{p2col:{cmdab:nolab:els}}抑制轴标签{p_end}
{p2col:{cmdab:tick:s}}显示轴刻度{p_end}
{p2col:{cmd:angle(}{it:{help anglestyle_zh}}{cmd:)}}轴标签的角度{p_end}
{p2col:{cmdab:alt:ernate}}偏移相邻标签{p_end}

{p2col:{cmdab:tsty:le:(}{it:{help tickstyle_zh}}{cmd:)}}标签和刻度的整体样式{p_end}

{p2col:{cmd:labgap(}{it:{help size_zh}}{cmd:)}}标签：刻度和标签之间的间隔{p_end}
{p2col:{cmd:labstyle(}{it:{help textstyle_zh}}{cmd:)}}标签：整体样式{p_end}
{p2col:{cmdab:labs:ize:(}{it:{help textsizestyle_zh}}{cmd:)}}标签：文本的大小{p_end}
{p2col:{cmdab:labc:olor:(}{it:{help colorstyle_zh}}{cmd:)}}标签：文本的颜色和不透明度{p_end}

{p2col:{cmdab:tl:ength:(}{it:{help size_zh}}{cmd:)}}刻度：长度{p_end}
{p2col:{cmdab:tp:osition:(}{cmdab:o:utside}|{cmdab:c:rossing}|}{p_end}
{p2col 24 37 37 2:{cmdab:i:nside:)}}刻度：位置/方向{p_end}
{p2col:{cmdab:tlsty:le:(}{it:{help linestyle_zh}}{cmd:)}}刻度：线条样式{p_end}
{p2col:{cmdab:tlw:idth:(}{it:{help linewidthstyle_zh}}{cmd:)}}刻度：线条的粗细{p_end}
{p2col:{cmdab:tlc:olor:(}{it:{help colorstyle_zh}}{cmd:)}}刻度：线条的颜色和不透明度{p_end}
{p2line}
{p2colreset}{...}


{marker description}{...}
{title:描述}

{pstd}
{it:cat_axis_label_options} 决定了由 {helpb graph bar}、{helpb graph hbar}、{helpb graph dot} 和 {helpb graph box} 生成的分类 {it:x} 轴上显示的标签外观。这些选项在 {cmd:label()} 的 {cmd:over()} 内指定：

{phang2}
	. {cmd:graph} ...{cmd:, over(}{it:varname}{cmd:,} ... {cmd:label(}{it:cat_axis_label_options}{cmd:)} ...{cmd:)}

{pstd}
最有用的 {it:cat_axis_label_options} 是 {cmd:angle()}、{cmd:alternate}、{cmd:labcolor()} 和 {cmd:labsize()}。


{marker linkspdf}{...}
{title:PDF 文档链接}

        {mansection G-3 cat_axis_label_optionsQuickstart:快速入门}

        {mansection G-3 cat_axis_label_optionsRemarksandexamples:备注和示例}

{pstd}
上述部分不包括在此帮助文件中。


{marker options}{...}
{title:选项}

{phang}
{cmd:nolabels}
    抑制轴上类别标签的显示。对于 {cmd:graph} {cmd:bar} 和 {cmd:graph} {cmd:hbar}，{cmd:nolabels} 选项与用于将标签放置在条形上的 {cmd:blabel()} 选项结合使用时非常有用；请参见 {manhelpi blabel_option G-3}。

{phang}
{cmd:ticks}
    指定在分类 {it:x} 轴上出现刻度。默认情况下，分类轴上不显示刻度，通常不需要显示。

{phang}
{cmd:angle(}{it:anglestyle}{cmd:)}
    指定轴上标签出现的角度。默认值是 {cmd:angle(0)}，即水平。对于垂直条形图和其他垂直方向的图表，有时指定 {cmd:angle(90)}（文本从下向上阅读）、{cmd:angle(-90)}（文本从上向下阅读）或 {cmd:angle(-45)}（文本从左上到右下倾斜）是有用的；请参见 {manhelpi anglestyle G-4}。

{pmore}
    Unix 用户：如果您指定 {cmd:angle(-45)}，结果将在您的屏幕上显示为 {cmd:angle(-90)}；打印时结果将正确显示。

{phang}
{cmd:alternate}
    使相邻标签彼此偏移，当标签数量较多或标签较长时，非常有用。例如，而不是获得以下标签的轴：

	    {hline 4}{c TT}{hline 9}{c TT}{hline 9}{c TT}{hline 9}{c TT}{hline 4}
	     ResearchDevelopmentMarketing   Sales

{pmore}
    使用 {cmd:alternate}，您将获得

	    {hline 4}{c TT}{hline 9}{c TT}{hline 9}{c TT}{hline 9}{c TT}{hline 4}
	     Research           Marketing
		     Development            Sales

{phang}
{cmd:tstyle(}{it:tickstyle}{cmd:)}
    指定标签和刻度的整体外观；请参见 {manhelpi tickstyle G-4}。此处重点是标签，因为通常在分类轴上抑制刻度。以下文档中记录的选项将允许您更改标签和刻度的每个属性，但 {it:tickstyle} 指定了起点。

{pmore}
    您不需要仅仅因为要更改标签和刻度的外观而指定 {cmd:tstyle()}。当另一种样式正好符合您的要求或另一种样式可以让您减少对所需效果的更改时，您才指定 {cmd:tstyle()}。

{phang}
{opt labgap(size)},
{opt labstyle(textstyle)},
{opt labsize(textsizestyle)}，和
{opt labcolor(colorstyle)}
    指定有关标签呈现方式的细节。特别关注的是 {cmd:labsize(}{it:textsizestyle}{cmd:)}, 它指定标签的大小，以及 {cmd:labcolor(}{it:colorstyle}{cmd:)}, 它指定标签的颜色；请参见 {manhelpi textsizestyle G-4} 和 {manhelpi colorstyle G-4} 的文本大小和颜色选择列表。另请参见 {manhelpi size G-4} 和 {manhelpi textstyle G-4}。

{phang}
{cmd:tlength(}{it:size}{cmd:)}
    指定刻度的整体长度；请参见 {manhelpi size G-4}。

{phang}
{cmd:tposition(outside}|{cmd:crossing}|{cmd:inside)}
    指定刻度是否要扩展 {cmd:outside}（从轴向外，通常为默认值）、{cmd:crossing}（交叉轴线，向内向外扩展）或 {cmd:inside}（从轴向绘图区域内扩展）。

{phang}
{opt tlstyle(linestyle)},
{opt tlwidth(linewidthstyle)}，和
{opt tlcolor(colorstyle)}
    指定刻度外观的其他细节。刻度仅是线条。有关详细信息，请参见 {help lines_zh}。


{marker remarks}{...}
{title:备注}

{pstd}
您绘制了 {cmd:empcost} 按 {cmd:division} 的条形图、点图或箱型图：

{phang2}
	{cmd:. graph} ... {cmd:empcost, over(division)}

{pstd}
看到结果后，您希望将部门标签的文本放大 20%。您输入：

{phang2}
	. {cmd:graph} ... {cmd:empcost, over(division, label(labsize(*1.2)))}
{p_end}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <cat_axis_label_options.sthlp>}