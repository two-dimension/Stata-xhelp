{smcl}
{* *! version 1.1.6  19oct2017}{...}
{vieweralsosee "[G-3] twoway_options" "mansection G-3 twoway_options"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[G-2] graph twoway" "help twoway"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[G-3] advanced_options" "help advanced_options_zh"}{...}
{vieweralsosee "[G-3] axis_options" "help axis_options_zh"}{...}
{vieweralsosee "[G-3] by_option" "help by_option_zh"}{...}
{vieweralsosee "[G-3] legend_options" "help legend_options_zh"}{...}
{vieweralsosee "[G-3] name_option" "help name_option_zh"}{...}
{vieweralsosee "[G-3] nodraw_option" "help nodraw_option_zh"}{...}
{vieweralsosee "[G-3] region_options" "help region_options_zh"}{...}
{vieweralsosee "[G-3] saving_option" "help saving_option_zh"}{...}
{vieweralsosee "[G-3] scale_option" "help scale_option_zh"}{...}
{vieweralsosee "[G-3] scheme_option" "help scheme_option_zh"}{...}
{vieweralsosee "[G-3] title_options" "help title_options_zh"}{...}
{viewerjumpto "Syntax" "twoway_options_zh##syntax"}{...}
{viewerjumpto "Description" "twoway_options_zh##description"}{...}
{viewerjumpto "Links to PDF documentation" "twoway_options_zh##linkspdf"}{...}
{viewerjumpto "Options" "twoway_options_zh##options"}{...}
{viewerjumpto "Remarks" "twoway_options_zh##remarks"}
{help twoway_options:English Version}
{hline}{...}
{p2colset 1 25 27 2}{...}
{p2col:{bf:[G-3]} {it:twoway_options} {hline 2}}二维图形选项{p_end}
{p2col:}({mansection G-3 twoway_options:查看完整 PDF 手册条目}){p_end}
{p2colreset}{...}


{marker syntax}{...}
{title:语法}

{pstd}
适用于所有 {cmd:twoway} 图形的 {it:twoway_options} 有：

{synoptset 25}{...}
{p2col:{it:twoway_options}}描述{p_end}
{p2line}
{p2col:{it:{help added_line_options_zh}}}在指定的 {it:y} 或 {it:x} 值处绘制线条{p_end}
{p2col:{it:{help added_text_options_zh}}}在指定的 ({it:y},{it:x}) 值处显示文本{p_end}

{p2col:{it:{help axis_options_zh}}}标签、刻度、网格、对数刻度{p_end}
{p2col:{it:{help title_options_zh}}}标题、副标题、注释、说明{p_end}
{p2col:{it:{help legend_options_zh}}}解释图例的内容{p_end}

{p2col:{help scale_option_zh:{bf:scale(}{it:#}{bf:)}}}调整文本、标记和线宽的大小{p_end}
{p2col:{it:{help region_options_zh}}}轮廓、阴影、图形大小{p_end}
{p2col:{it:{help aspect_option_zh}}}限制图形区域的宽高比{p_end}
{p2col:{help scheme_option_zh:{bf:scheme(}{it:schemename}{cmd:)}}}整体外观{p_end}
{p2col:{help play_option_zh:{bf:play(}{it:recordingname}{bf:)}}}播放来自 {it:recordingname} 的编辑{p_end}

{p2col:{help by_option_zh:{bf:by(}{it:varlist}{bf:, ...)}}}为子组重复绘图{p_end}
{p2col:{help nodraw_option_zh:{bf:nodraw}}}抑制图形的显示{p_end}
{p2col:{help name_option_zh:{bf:name(}{it:name}{bf:, ...)}}}为图形指定名称{p_end}
{p2col:{help saving_option_zh:{bf:saving(}{it:filename}{bf:, ...)}}}将图形保存到文件{p_end}

{p2col:{it:{help advanced_options_zh}}}难以解释的事项{p_end}
{p2line}
{p2colreset}{...}


{marker description}{...}
{title:描述}

{pstd}
上述选项适用于所有 {it:plottypes} 
（{cmd:scatter}, {cmd:line} 等），可通过 {helpb graph twoway} 获取。

{marker linkspdf}{...}
{title:PDF文档链接}

        {mansection G-3 twoway_optionsRemarksandexamples:备注与示例}

{pstd}
上述部分未包含在此帮助文件中。


{marker options}{...}
{title:选项}

{phang}
{it:added_line_options}
    指定在图形上绘制水平或垂直线；请参阅 
    {manhelpi added_line_options G-3}。如果您关心的是通过绘图区域绘制网格线，请参阅下面的 {it:axis_options}。

{phang}
{it:added_text_options}
    指定要在图形上显示的文本（位于绘图区域内）；
    请参阅 {manhelpi added_text_options G-3}。

{phang}
{it:axis_options}
    指定坐标轴的外观，包括需要标记或刻度的值。这些选项还允许您获得对数刻度和网格线。请参阅 {manhelpi axis_options G-3}。

{phang}
{it:title_options}
        允许您为图形指定标题、副标题、注释和说明；请参阅 {manhelpi title_options G-3}。

{phang}
{it:legend_options}
    指定图例是否出现，并允许您修改图例的内容。
    请参阅 {manhelpi legend_options G-3}。

{phang}
{cmd:scale(}{it:#}{cmd:)}
    指定一个影响图形内所有文本、标记和线宽大小的乘数。{cmd:scale(1)} 是默认值，{cmd:scale(1.2)} 将使所有文本、标记和线宽增大 20%。请参阅 {manhelpi scale_option G-3}。

{phang}
{it:region_options}
    允许为绘图区域绘制轮廓（例如在图形周围添加或抑制边框）、为区域指定背景阴影，并控制图形大小。请参阅 {manhelpi region_options G-3}。

{phang}
{it:aspect_option}
    允许您控制图形绘图区域的高度与宽度之间的关系；请参阅 {manhelpi aspect_option G-3}。

{phang}
{cmd:scheme(}{it:schemename}{cmd:)}
    指定图形的整体外观；
    请参阅 {manhelpi scheme_option G-3}。

{phang}
包括 help playopt_desc

{phang}
{cmd:by(}{varlist}{cmd:,} ...{cmd:)}
    指定为 {it:varlist} 的每组值重复绘图；请参阅 {manhelpi by_option G-3}。

{phang}
{cmd:nodraw}
    导致图形构建但不显示；
    请参阅 {manhelpi nodraw_option G-3}。

{phang}
{cmd:name(}{it:name}[{cmd:, replace}]{cmd:)}
    指定图形的名称。默认是 {cmd:name(Graph, replace)}。
    请参阅 {manhelpi name_option G-3}。

{phang}
    {cmd:saving(}{it:{help filename_zh}}[{cmd:, asis replace}]{cmd:)}
    指定将图形保存为 {it:filename}。如果 {it:filename} 未指定扩展名，则假定为 {cmd:.gph}。
    {cmd:asis} 指定图形保持原样保存。
    {cmd:replace} 指定如果文件已存在，允许进行替换。
    请参阅 {manhelpi saving_option G-3}。

{phang}
{it:advanced_options}
    并不算真正的高级选项，更多的是难以解释且不常使用。但是在需要时极其有用，请参阅 
    {manhelpi advanced_options G-3}。


{marker remarks}{...}
{title:备注}

{pstd}
上述选项可与任何 {cmd:twoway}
绘图类型一起使用——参见 {manhelp twoway G-2:graph twoway}——例如，

	{cmd:. twoway scatter mpg weight, by(foreign)}

{phang2}
	{cmd:. twoway line le year, xlabel(,grid) saving(myfile, replace)}

{pstd}
上述选项是 {cmd:twoway} 的选项，这意味着它们影响整个二维图形，而不仅仅是其中一个图形。例如，在

	{cmd}. twoway lfitci  mpg weight, stdf ||
		 scatter mpg weight, ms(O) by(foreign, total row(1)){txt}

{pstd}
{cmd:by()} 选项适用于整个图形，理论上您应输入

	{cmd}. twoway lfitci  mpg weight, stdf  ||
		 scatter mpg weight, ms(O) ||, by(foreign, total row(1)){txt}

{pstd}
或

	{cmd}. twoway (lfitci  mpg weight, stdf)
		 (scatter mpg weight, ms(O)), by(foreign, total row(1)){txt}

{pstd}
以展示您对此事实的理解。然而，您不必这样做，事实上，{it:twoway_options} 附加到哪个图形并不重要。
您甚至可以输入

	{cmd}. twoway lfitci  mpg weight, stdf by(foreign, total row(1)) ||
		 scatter mpg weight, ms(O){txt}

{pstd}
而在指定多个 {it:twoway_options} 时，您甚至可以将一些附加到一个图形，另一些附加到另一个图形：

	{cmd}. twoway lfitci  mpg weight, stdf by(foreign, total row(1)) ||
		 scatter mpg weight, ms(O) saving(myfile){txt}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <twoway_options.sthlp>}