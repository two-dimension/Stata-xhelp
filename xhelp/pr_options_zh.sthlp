{smcl}
{* *! version 1.1.5  19oct2017}{...}
{vieweralsosee "[G-3] pr_options" "mansection G-3 pr_options"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[G-2] graph print" "help graph_print_zh"}{...}
{viewerjumpto "Syntax" "pr_options_zh##syntax"}{...}
{viewerjumpto "Description" "pr_options_zh##description"}{...}
{viewerjumpto "Links to PDF documentation" "pr_options_zh##linkspdf"}{...}
{viewerjumpto "Options" "pr_options_zh##options"}{...}
{viewerjumpto "Remarks" "pr_options_zh##remarks"}
{help pr_options:English Version}
{hline}{...}
{p2colset 1 21 23 2}{...}
{p2col:{bf:[G-3]} {it:pr_options} {hline 2}}图形打印的选项{p_end}
{p2col:}({mansection G-3 pr_options:查看完整的 PDF 手册条目}){p_end}
{p2colreset}{...}


{marker syntax}{...}
{title:语法}

{synoptset 25}{...}
{p2col:{it:pr_options}}描述{p_end}
{p2line}
{p2col:{cmdab:tm:argin:(}{it:#}{cmd:)}}顶部边距，单位为英寸，
       0 <= {it:#} <= 20{p_end}
{p2col:{cmdab:lm:argin:(}{it:#}{cmd:)}}左侧边距，单位为英寸，
       0 <= {it:#} <= 20{p_end}
{p2col:{cmd:logo(on)|{cmd:off)}}是否显示 Stata 徽标{p_end}
{p2line}
{p2colreset}{...}

{pstd}
当前默认值可以通过输入

	{cmd:. graph set print}

来列出。

{pstd}
默认值可以通过输入

{p 8 16 2}
{cmd:. graph set}
{cmd:print}
{it:name}
{it:value}

{pstd}
其中 {it:name} 是 {it:pr_option} 的名称，省略括号。


{marker description}{...}
{title:描述}

{pstd}
{it:pr_options} 与 {cmd:graph} {cmd:print} 配合使用；请参见
{manhelp graph_print G-2:graph print}。


{marker linkspdf}{...}
{title:PDF 文档链接}

        {mansection G-3 pr_optionsRemarksandexamples:备注和示例}

{pstd}
上述部分未包含在此帮助文件中。


{marker options}{...}
{title:选项}

{phang}
{cmd:tmargin(}{it:#}{cmd:)} 和
{cmd:lmargin(}{it:#}{cmd:)}
    设置页面的顶部和左侧边距 —— 从页面边缘到图形开始的距离。 {it:#} 以英寸为单位，必须在 0 至 20 之间，并且可以是小数。

{phang}
{cmd:logo(on)} 和 {cmd:logo(off)}
    指定是否应在图形底部包含 Stata 徽标。


{marker remarks}{...}
{title:备注}

{pstd}
备注分为以下几个标题：

	{help pr_options##remarks1:使用 pr_options}
	{help pr_options##remarks2:设置默认值}
	{help pr_options##remarks3:Unix 用户注意事项}


{marker remarks1}{...}
{title:使用 pr_options}

{pstd}
您绘制了一张图表并希望打印它。然而，您希望抑制 Stata 徽标（尽管我们无法想象您为何要这样做）：

	{cmd:. graph} ...{col 50}(绘制图形)

	{cmd:. graph print, logo(off)}


{marker remarks2}{...}
{title:设置默认值}

{pstd}
如果您总是希望使用 {cmd:graph} {cmd:print} 来抑制 Stata 徽标，您可以输入

	{cmd:. graph set print logo off}

{pstd}
在未来的某个时间，您可以输入

	{cmd:. graph set print logo on}

{pstd}
将其恢复。您可以通过输入

	{cmd:. graph set print}

来确定您的默认 {it:pr_options} 设置。


{marker remarks3}{...}
{title:Unix 用户注意事项}

{pstd}
除了上述文档中的选项，您还可以指定其他选项。在 Stata for Unix 下，{it:pr_options} 实际上是 {it:ps_options}；请参见 {manhelpi ps_options G-3}。
{p_end}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <pr_options.sthlp>}