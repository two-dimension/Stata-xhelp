{smcl}
{* *! version 1.1.6  19oct2017}{...}
{vieweralsosee "[G-3] fcline_options" "mansection G-3 fcline_options"}{...}
{viewerjumpto "Syntax" "fcline_options_zh##syntax"}{...}
{viewerjumpto "Description" "fcline_options_zh##description"}{...}
{viewerjumpto "Links to PDF documentation" "fcline_options_zh##linkspdf"}{...}
{viewerjumpto "Options" "fcline_options_zh##options"}{...}
{viewerjumpto "Remarks" "fcline_options_zh##remarks"}
{help fcline_options:English Version}
{hline}{...}
{p2colset 1 25 27 2}{...}
{p2col:{bf:[G-3]} {it:fcline_options} {hline 2}}确定拟合连接线外观的选项{p_end}
{p2col:}({mansection G-3 fcline_options:查看完整的 PDF 手册条目}){p_end}
{p2colreset}{...}


{marker syntax}{...}
{title:语法}

{synoptset 30}{...}
{p2col:{it:fcline_options}}描述{p_end}
{p2line}
{p2col:{cmdab:clp:attern:(}{it:{help linepatternstyle_zh}}{cmd:)}}线条是实线、虚线等。{p_end}
{p2col:{cmdab:clw:idth:(}{it:{help linewidthstyle_zh}}{cmd:)}}线条的厚度{p_end}
{p2col:{cmdab:clc:olor:(}{it:{help colorstyle_zh}}{cmd:)}}线条的颜色和不透明度{p_end}

{p2col:{cmdab:clsty:le:(}{it:{help linestyle_zh}}{cmd:)}}线条的整体样式{p_end}
{p2col:{cmdab:psty:le:(}{it:{help pstyle_zh}}{cmd:)}}整体绘图样式，包括线条样式{p_end}
{p2line}
{p2colreset}{...}
{p 4 6 2}
所有选项都是 {it:最右边}; 详见 {help repeated options}。


{marker description}{...}
{title:描述}

{pstd}
{it:fcline_options} 决定了大多数情况下拟合连接线的外观。


{marker linkspdf}{...}
{title:PDF 文档链接}

        {mansection G-3 fcline_optionsRemarksandexamples:备注和示例}

{pstd}
上述部分未包含在此帮助文件中。


{marker options}{...}
{title:选项}

{phang}
{cmd:clpattern(}{it:linepatternstyle}{cmd:)}
    指定线条是实线、虚线等。
    详见 {manhelpi linepatternstyle G-4} 获取可用样式列表。

{phang}
{cmd:clwidth(}{it:linewidthstyle}{cmd:)}
    指定线条的厚度。
    详见 {manhelpi linewidthstyle G-4} 获取可用厚度列表。

{phang}
{cmd:clcolor(}{it:colorstyle}{cmd:)}
    指定线条的颜色和不透明度。
    详见 {manhelpi colorstyle G-4} 获取可用颜色列表。

{phang}
{cmd:clstyle(}{it:linestyle}{cmd:)}
    指定线条的整体样式：其形状、厚度和颜色。

{pmore}
    并不需要因为有某些想要更改的内容而指定 {cmd:clstyle()}。
    其他 {it:fcline_options} 允许您进行更改。
    当其他样式正好符合您的需求或者其他样式可以让您指定更少的更改时，您可以指定 {cmd:clstyle()}。

{pmore}
    详见 {manhelpi linestyle G-4} 获取可用线条样式列表。

{phang}
{cmd:pstyle(}{it:pstyle}{cmd:)}
    指定绘图的整体样式，不仅包括 {it:{help linestyle_zh}}，还包括所有其他绘图外观设置。
    只有 {it:linestyle} 影响线条的外观。详见 
    {manhelpi pstyle G-4} 获取可用绘图样式列表。


{marker remarks}{...}
{title:备注}

{pstd}
线条出现在许多上下文中，而且几乎所有这些上下文中，以上选项会用来确定拟合连接线的外观。
例如，在以下命令中，{cmd:clcolor()} 选项如下：

{phang2}
	{cmd:. twoway lfitci y x, clcolor(red)}

{pstd}
会导致通过（{cmd:y},{cmd:x}）点的线条以红色绘制。

{pstd}
在以下命令中相同的选项：

	{cmd:. twoway lfitci y x, title("My line", box clcolor(red))}

{pstd}
会导致围绕标题框的轮廓绘制为红色。
在第二个命令中，选项 {cmd:clcolor(red)} 是 {cmd:title()} 选项的子选项。
{p_end}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <fcline_options.sthlp>}