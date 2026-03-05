{smcl}
{* *! version 1.1.10  15may2018}{...}
{vieweralsosee "[G-3] cline_options" "mansection G-3 cline_options"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[G-4] 概念：线" "help lines_zh"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[G-4] 颜色样式" "help colorstyle_zh"}{...}
{vieweralsosee "[G-4] 连接样式" "help connectstyle_zh"}{...}
{vieweralsosee "[G-4] 线对齐样式" "help linealignmentstyle_zh"}{...}
{vieweralsosee "[G-4] 线型样式" "help linepatternstyle_zh"}{...}
{vieweralsosee "[G-4] 线样式" "help linestyle_zh"}{...}
{vieweralsosee "[G-4] 线宽样式" "help linewidthstyle_zh"}{...}
{viewerjumpto "语法" "cline_options_zh##syntax"}{...}
{viewerjumpto "描述" "cline_options_zh##description"}{...}
{viewerjumpto "PDF 文档链接" "cline_options_zh##linkspdf"}{...}
{viewerjumpto "选项" "cline_options_zh##options"}{...}
{viewerjumpto "备注" "cline_options_zh##remarks"}
{help cline_options:English Version}
{hline}{...}
{p2colset 1 24 26 2}{...}
{p2col:{bf:[G-3]} {it:cline_options} {hline 2}}连接点的线的选项（连接选项的子集）{p_end}
{p2col:}({mansection G-3 cline_options:查看完整 PDF 手册条目}){p_end}
{p2colreset}{...}


{marker syntax}{...}
{title:语法}

{synoptset 27}{...}
{p2col:{it:cline_options}}描述{p_end}
{p2line}
{p2col:{cmdab:c:onnect:(}{it:{help connectstyle_zh}}{cmd:)}}如何连接点
     {p_end}

{p2col:{cmdab:lp:attern:(}{it:{help linepatternstyle_zh}}{cmd:)}}线条模式
     （实线、虚线等）{p_end}
{p2col:{cmdab:lw:idth:(}{it:{help linewidthstyle_zh}}{cmd:)}}线的厚度
     {p_end}
{p2col:{cmdab:lc:olor:(}{it:{help colorstyle_zh}}{cmd:)}}线的颜色和不透明度{p_end}
{p2col : {cmdab:la:lign:(}{it:{help linealignmentstyle_zh}}{cmd:)}}线的对齐方式（内侧、外侧、居中）{p_end}
{p2col:{cmdab:lsty:le:(}{it:{help linestyle_zh}}{cmd:)}}线的整体样式
     {p_end}

{p2col:{cmdab:psty:le:(}{it:{help pstyle_zh}}{cmd:)}}整体绘图样式，
      包括线样式{p_end}

{p2col:{help advanced_options_zh:{bf:recast(}{it:newplottype}{bf:)}}}高级选项；
      将图形视为 {it:newplottype}{p_end}
{p2line}
{p2colreset}{...}
{p 4 6 2}所有选项是 {it:rightmost}；参见 {help repeated options}.{p_end}
{p 4 6 2}某些图形不允许使用 {cmd:recast()}。{p_end}


{marker description}{...}
{title:描述}

{pstd}
{it:cline_options} 规定图形上点的连接方式。

{pstd}
在某些情况下（例如，{manhelp scatter G-2:graph twoway scatter}），可以使用一个元素列表指定 {cmd:lpattern()}、{cmd:lwidth()}、{cmd:lcolor()}、{cmd:lalign()} 和 {cmd:lstyle()} 选项，第一个元素适用于第一个变量，第二个元素适用于第二个变量，以此类推。有关指定列表的信息，请参见 {manhelpi stylelists G-4}。


{marker linkspdf}{...}
{title:PDF 文档链接}

        {mansection G-3 cline_optionsRemarksandexamples:备注和示例}

{pstd}
以上部分不包括在本帮助文件中。


{marker options}{...}
{title:选项}

{phang}
{opt connect(connectstyle)} 指定是否连接点，以及如果是，则如何塑造连接它们的线；参见 {manhelpi connectstyle G-4}。每对点之间的线可以直接连接，也可以以台阶方式连接。

{phang}
{cmd:lpattern(}{it:linepatternstyle}{cmd:)},
{cmd:lwidth(}{it:linewidthstyle}{cmd:)},
{cmd:lcolor(}{it:colorstyle}{cmd:)},
{cmd:lalign(}{it:linealignmentstyle}{cmd:)},
和
{cmd:lstyle(}{it:linestyle}{cmd:)}
    决定用于连接点的线的外观；参见 {help lines_zh}。请注意 {cmd:lpattern()} 选项，它允许您指定线条是实线、虚线等；参见 {manhelpi linepatternstyle G-4} 以获取线型模式选择的列表。

{phang}
{cmd:pstyle(}{it:pstyle}{cmd:)}
    指定整体绘图样式，包括不仅是 {it:{help linestyle_zh}}，还包括绘图的所有其他外观设置。
    只有 {it:linestyle} 影响线图的外观。请参见 {manhelpi pstyle G-4} 以获取可用绘图样式的列表。

{phang}
{cmd:recast(}{it:newplottype}{cmd:)}
        是一个高级选项，允许将图从一种类型转换为另一种类型，例如，从 {help twoway line:线图} 转换为 {help twoway scatter:散点图}；参见 {manhelpi advanced_options G-3}。大多数（但不是所有）图形都允许使用 {cmd:recast()}。


{marker remarks}{...}
{title:备注}

{pstd}
在上述所有选项中，一个重要的选项是 {cmd:connect()}，它决定点是否以及如何连接。这些点不必连接（{cmd:connect(i)}），这是 {cmd:scatter} 的默认设置。或者，这些点可能通过直线连接（{cmd:connect(l)}），这是 {cmd:line} 的默认设置（在 {cmd:scatter} 中也可用）。{cmd:connect(i)} 和 {cmd:connect(l)} 通常被指定，但还有其他可能性，例如 {cmd:connect(J)}，它以台阶方式连接，适用于经验分布。有关您的选择的完整列表，请参见 {manhelpi connectstyle G-4}。

{pstd}
其余的连接选项指定线条的外观：它是实线还是虚线？是红色还是绿色？它有多厚？选项 {cmd:lpattern()} 可能非常重要，尤其是在打印到单色打印机时。有关线条的一般讨论（它们在许多其他上下文中也存在，而不仅仅是连接点），请参见 {help lines_zh}。
{p_end}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <cline_options.sthlp>}