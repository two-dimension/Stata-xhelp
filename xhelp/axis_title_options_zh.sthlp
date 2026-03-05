{smcl}
{* *! version 1.1.11  19oct2017}{...}
{vieweralsosee "[G-3] axis_title_options" "mansection G-3 axis_title_options"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[G-3] axis_options" "help axis_options_zh"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[G-3] axis_label_options" "help axis_label_options_zh"}{...}
{vieweralsosee "[G-3] axis_scale_options" "help axis_scale_options_zh"}{...}
{vieweralsosee "[G-4] text" "help text"}{...}
{viewerjumpto "Syntax" "axis_title_options_zh##syntax"}{...}
{viewerjumpto "Description" "axis_title_options_zh##description"}{...}
{viewerjumpto "Links to PDF documentation" "axis_title_options_zh##linkspdf"}{...}
{viewerjumpto "Options" "axis_title_options_zh##options"}{...}
{viewerjumpto "Suboptions" "axis_title_options_zh##suboptions"}{...}
{viewerjumpto "Remarks" "axis_title_options_zh##remarks"}
{help axis_title_options:English Version}
{hline}{...}
{p2colset 1 29 31 2}{...}
{p2col:{bf:[G-3]} {it:axis_title_options} {hline 2}}用于指定坐标轴标题的选项{p_end}
{p2col:}({mansection G-3 axis_title_options:查看完整的PDF手册条目}){p_end}
{p2colreset}{...}


{marker syntax}{...}
{title:语法}

{pstd}
{it:axis_title_options} 是 {it:axis_options} 的一个子集；参见 {manhelpi axis_options G-3}。
{it:axis_title_options} 控制坐标轴的标题。

{synoptset 25}{...}
{p2col:{it:axis_title_options}}描述{p_end}
{p2line}
{p2col:{cmdab:yti:tle:(}{it:axis_title}{cmd:)}}指定 {it:y} 轴标题{p_end}
{p2col:{cmdab:xti:tle:(}{it:axis_title}{cmd:)}}指定 {it:x} 轴标题{p_end}
{p2col:{cmdab:tti:tle:(}{it:axis_title}{cmd:)}}指定 {it:t}（时间）轴标题{p_end}
{p2col:{cmdab:zti:tle:(}{it:axis_title}{cmd:)}}指定等高线图例轴标题{p_end}
{p2line}
{p 4 6 2}
上述选项是 {it:merged-explicit}；参见 {help repeated options}。

{pstd}
其中 {it:axis_title} 是

{p 8 16 2}
{cmd:"}{it:string}{cmd:"} [{cmd:"}{it:string}{cmd:"} [...]]
[{cmd:,} {it:suboptions}]

{pmore}
{it:string} 可以包含Unicode字符和SMCL标签以渲染数学符号、斜体等；参见 {manhelpi graph_text G-4:text}。

{p2col:{it:suboptions}}描述{p_end}
{p2line}
{p2col:{cmd:axis(}{it:#}{cmd:)} }指定该标题属于哪个轴， {cmd:1} {ul:<} {it:#}
           {ul:<} {cmd:9}{p_end}
{p2col:{cmd:prefix}}合并选项{p_end}
{p2col:{cmd:suffix}}合并选项{p_end}
{p2col:{it:textbox_options}}控制文本外观的细节；参见 {manhelpi textbox_options G-3}{p_end}
{p2line}
{p2colreset}{...}


{marker description}{...}
{title:描述}

{pstd}
{it:axis_title_options} 指定显示在坐标轴上的标题。


{marker linkspdf}{...}
{title:PDF文档链接}

        {mansection G-3 axis_title_optionsQuickstart:快速开始}

        {mansection G-3 axis_title_optionsRemarksandexamples:备注和示例}

{pstd}
以上部分不包含在此帮助文件中。


{marker options}{...}
{title:选项}

{phang}
{opt ytitle(axis_title)}, {opt xtitle(axis_title)}, 和 {opt ttitle(axis_title)} 指定 {it:y}、{it:x} 和 {it:t} 轴上显示的标题。 {cmd:ttitle()} 是 {cmd:xtitle()} 的同义词。

{phang}
{cmd:ztitle(}{it:axis_title}{cmd:)}；见 {it:{help axis_title_options##remarks7:等高线轴 -- ztitle()}} 下面。


{marker suboptions}{...}
{title:子选项}

{phang}
{cmd:axis(}{it:#}{cmd:)} 指定该标题所属的轴，并在处理多个 {it:y} 或多个 {it:x} 轴时进行指定；参见 {manhelpi axis_choice_options G-3}。

{phang}
{cmd:prefix} 和 {cmd:suffix} 指定在该选项中所指定的内容应添加到之前的任何 {cmd:xtitle()} 或 {cmd:ytitle()} 选项中。参见以下 {it:{help axis_title_options##remarks5:重复选项的解释}}。

{phang}
{it:textbox_options} 指定文本的外观。参见 {manhelpi textbox_options G-3}。


{marker remarks}{...}
{title:备注}

{pstd}
{it:axis_title_options} 是 {it:axis_options} 的一个子集；请参见 {manhelpi axis_options G-3} 以获取概述。
其他外观选项包括

	{it:axis_scale_options}{right:(参见 {manhelpi axis_scale_options G-3})}

	{it:axis_label_options}{right:(参见 {manhelpi axis_label_options G-3})}

{pstd}
备注按以下标题呈现：

	{help axis_title_options##remarks1:默认坐标轴标题}
	{help axis_title_options##remarks2:覆盖默认标题}
	{help axis_title_options##remarks3:指定多行标题}
	{help axis_title_options##remarks4:抑制坐标轴标题}
	{help axis_title_options##remarks5:重复选项的解释}
	{help axis_title_options##remarks6:具有多个 y 轴或多个 x 轴的标题}
	{help axis_title_options##remarks7:等高线轴 -- ztitle()}


{marker remarks1}{...}
{title:默认坐标轴标题}

{pstd}
即使您没有指定 {cmd:ytitle()} 或 {cmd:xtitle()} 选项，坐标轴通常也会被命名。在这些情况下， {c -(}{cmd:y}|{cmd:x}{c )-}{cmd:title()} 修改标题。如果一个轴没有标题，则指定 {c -(}{cmd:y}|{cmd:x}{c )-}{cmd:title()} 会添加一个标题。

{pstd}
默认标题通过相应变量的变量标签获取，如果没有标签，则使用其名称。例如，在

	{cmd:. twoway scatter yvar xvar}

{pstd}
{it:y} 轴的默认标题将从变量 yvar 获取，{it:x} 轴的默认标题将从 xvar 获取。有时，绘图类型替代不同的标题；例如，

	{cmd:. twoway lfit yvar xvar}

{pstd}
将 {it:y} 轴标记为“拟合值”，而无论与变量 yvar 相关联的名称或变量标签是什么。

{pstd}
如果多个变量与同一轴相关联，则不显示轴标题，而是显示图例以标记每个图。例如，在

{phang2}
	{cmd:. twoway scatter y1var xvar || line y2var xvar || lfit y1var xvar}

{pstd}
将为 {it:y1var_title}、{it:y2var_title} 和拟合值显示带有单独键和标签的图例。


{marker remarks2}{...}
{title:覆盖默认标题}

{pstd}
您可以使用 {cmd:ytitle()} 指定 {it:y} 轴上显示的标题，使用 {cmd:xtitle()} 指定 {it:x} 轴上显示的标题。您在选项中指定文本 -- 用双引号括起来：

	{cmd:ytitle("我的 y 标题")}

	{cmd:xtitle("我的 x 标题")}

{pstd}
对于 {cmd:scatter}，命令可能是

{phang2}
	{cmd:. scatter yvar xvar, ytitle("价格") xtitle("数量")}


{marker remarks3}{...}
{title:指定多行标题}

{pstd}
标题可以包含多于一行。每行依次指定，每行用双引号括起来：

	{cmd:ytitle("第一行" "第二行")}

	{cmd:xtitle("第一行" "第二行" "第三行")}


{marker remarks4}{...}
{title:抑制坐标轴标题}

{pstd}
要消除某个坐标轴的标题，请指定 {c -(}{cmd:y}|{cmd:x}{c )-}{cmd:title("")}。

{pstd}
要消除第二、第三等轴的标题，请指定 {c -(}{cmd:y}|{cmd:x}{c )-}{cmd:title("", axis(}{it:#}{cmd:))}。请参见下面的 {hi:具有多个 y 轴或多个 x 轴的标题}。


{marker remarks5}{...}
{title:重复选项的解释}

{pstd}
{cmd:xtitle()} 和 {cmd:ytitle()} 可以在同一命令中多次指定。当您这样做时，最右边的一个生效。

{pstd}
请参见 {it:{help axis_label_options##appendix5:重复选项的解释}} 在 {manhelpi axis_label_options G-3} 中。多个 {cmd:ytitle()} 和 {cmd:xtitle()} 选项的工作方式相同。标题选项的不同之处在于，您指定额外信息是要前缀还是后缀到之前的内容。

{pstd}
例如，假装 {cmd:sts graph} 产生了 {it:x} 轴标题“分析时间”。如果您输入

	{cmd:. sts graph, xtitle("我的新标题")}

{pstd}
您指定的标题将替换该标题。如果您输入

	{cmd:.sts graph, xtitle("天数", suffix)}

{pstd}
{it:x} 轴的标题将是（第一行）“分析时间”（第二行）“天数”。如果您输入

{phang2}
	{cmd:.sts graph, xtitle("故障时间", prefix)}

{pstd}
{it:x} 轴的标题将是（第一行）“故障时间”（第二行）“分析时间”。


{marker remarks6}{...}
{title:具有多个 y 轴或多个 x 轴的标题}

{pstd}
当您有多个 {it:y} 或 {it:x} 轴时（参见 {manhelpi axis_choice_options G-3}），请记得指定 {cmd:axis(}{it:#}{cmd:)} 子选项以指示您所指的是哪个轴。


{marker remarks7}{...}
{title:等高线轴 -- ztitle()}

{pstd}
{cmd:ztitle()} 选项是特殊的，因为它适用于绘图区域上不显示的轴，而是适用于显示 {help clegend_option_zh:等高线图例} 的比例的轴。只有当图形包含 {cmd:twoway contour} 图时此选项才有效；参见 {help twoway_contour_zh:[G-2] 图形 twoway contour}。在所有其他方面，它的作用与 {cmd:xtitle()}、{cmd:ytitle()} 和 {cmd:ttitle()} 相同。
{p_end}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <axis_title_options.sthlp>}