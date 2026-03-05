{smcl}
{* *! version 1.1.7  15may2018}{...}
{vieweralsosee "[G-3] rspike_options" "mansection G-3 rspike_options"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[G-4] 概念: 线条" "help lines_zh"}{...}
{viewerjumpto "语法" "rspike_options_zh##syntax"}{...}
{viewerjumpto "描述" "rspike_options_zh##description"}{...}
{viewerjumpto "PDF 文档链接" "rspike_options_zh##linkspdf"}{...}
{viewerjumpto "选项" "rspike_options_zh##options"}{...}
{viewerjumpto "备注" "rspike_options_zh##remarks"}
{help rspike_options:English Version}
{hline}{...}
{p2colset 1 25 27 2}{...}
{p2col:{bf:[G-3]} {it:rspike_options} {hline 2}}确定范围尖峰外观的选项{p_end}
{p2col:}({mansection G-3 rspike_options:查看完整 PDF 手册条目}){p_end}
{p2colreset}{...}


{marker syntax}{...}
{title:语法}

{synoptset 30}{...}
{p2col:{it:rspike_options}}描述{p_end}
{p2line}
{p2col:{cmdab:lp:attern:(}{it:{help linepatternstyle_zh}}{cmd:)}}尖峰线是实线、虚线等{p_end}
{p2col:{cmdab:lw:idth:(}{it:{help linewidthstyle_zh}}{cmd:)}}尖峰线的粗细{p_end}
{p2col:{cmdab:lc:olor:(}{it:{help colorstyle_zh}}{cmd:)}}尖峰线的颜色和不透明度{p_end}

{p2col:{cmdab:lsty:le:(}{it:{help linestyle_zh}}{cmd:)}}尖峰线的整体样式{p_end}
{p2col:{cmdab:psty:le:(}{it:{help pstyle_zh}}{cmd:)}}整体绘图样式，包括线条样式{p_end}

{p2col:{help advanced_options_zh:{bf:recast(}{it:newplottype}{bf:)}}}高级选项；将绘图视为 {it:newplottype}{p_end}
{p2line}
{p2colreset}{...}
{p 4 6 2}
所有选项都是 {it:右侧的}；请参见 {help repeated options}。


{marker description}{...}
{title:描述}

{pstd}
{it:rspike_options} 决定了尖峰（连接两个点的垂直或水平线）的外观。在大多数上下文中都适用。


{marker linkspdf}{...}
{title:PDF 文档链接}

        {mansection G-3 rspike_optionsRemarksandexamples:备注和示例}

{pstd}
上述部分未包含在此帮助文档中。


{marker options}{...}
{title:选项}

{phang}
{cmd:lpattern(}{it:linepatternstyle}{cmd:)}
    指定尖峰线是实线、虚线等。请参见 {manhelpi linepatternstyle G-4} 中可用样式的列表。

{phang}
{cmd:lwidth(}{it:linewidthstyle}{cmd:)}
    指定尖峰线的粗细。请参见 {manhelpi linewidthstyle G-4} 中可用厚度的列表。

{phang}
{cmd:lcolor(}{it:colorstyle}{cmd:)}
    指定尖峰线的颜色和不透明度。请参见 {manhelpi colorstyle G-4} 中可用颜色的列表。

{phang}
{cmd:lstyle(}{it:linestyle}{cmd:)}
    指定尖峰线的整体样式：其图案、粗细和颜色。

{pmore}
    你无需指定 {cmd:lstyle()} 仅因为你想更改尖峰的外观。其他 {it:rspike_options} 允许你进行更改。你会在其他样式恰好符合你的需求时或其他样式允许你指定更少的更改时使用 {cmd:lstyle()}。

{pmore}
    请参见 {manhelpi linestyle G-4} 中可用线条样式的列表。

{phang}
{cmd:pstyle(}{it:pstyle}{cmd:)}
    指定绘图的整体样式，包括不仅仅是 {it:{help linestyle_zh}}，还包括绘图外观的所有其他设置。只有 {it:linestyle} 会影响尖峰的外观。请参见 {manhelpi pstyle G-4} 中可用绘图样式的列表。

{phang}
{cmd:recast(}{it:newplottype}{cmd:)}
        是一个高级选项，允许将绘图从一种类型转换为另一种类型，例如，从 {help twoway rspike:范围尖峰图} 转换为 {help twoway rarea:范围面积图}；请参见 {manhelpi advanced_options G-3}。大多数但不是全部绘图允许使用 {cmd:recast()}。


{marker remarks}{...}
{title:备注}

{pstd}
范围尖峰在许多上下文中使用。它们有时是置信区间的默认选项。例如，下面这个 {cmd:lcolor()} 子选项在

{phang2}
	{cmd:. ltable age, graph ciopts(lcolor(red))}

{pstd}
中会使表示置信区间的生命表图中的水平线的颜色变为红色。
{p_end}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <rspike_options.sthlp>}