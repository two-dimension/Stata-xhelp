{smcl}
{* *! version 1.1.7  19oct2017}{...}
{vieweralsosee "[G-3] axis_choice_options" "mansection G-3 axis_choice_options"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[G-3] axis_options" "help axis_options_zh"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[G-3] axis_label_options" "help axis_label_options_zh"}{...}
{vieweralsosee "[G-3] axis_scale_options" "help axis_scale_options_zh"}{...}
{vieweralsosee "[G-3] axis_title_options" "help axis_title_options_zh"}{...}
{viewerjumpto "Syntax" "axis_choice_options_zh##syntax"}{...}
{viewerjumpto "Description" "axis_choice_options_zh##description"}{...}
{viewerjumpto "Links to PDF documentation" "axis_choice_options_zh##linkspdf"}{...}
{viewerjumpto "Options" "axis_choice_options_zh##options"}{...}
{viewerjumpto "Remarks" "axis_choice_options_zh##remarks"}
{help axis_choice_options:English Version}
{hline}{...}
{p2colset 1 30 32 2}{...}
{p2col:{bf:[G-3]} {it:axis_choice_options} {hline 2}}指定图表显示坐标轴选项{p_end}
{p2col:}({mansection G-3 axis_choice_options:查看完整的PDF手册条目}){p_end}
{p2colreset}{...}


{marker syntax}{...}
{title:语法}

{synoptset 25}{...}
{p2col : {it:axis_choice_options}}描述{p_end}
{p2line}
{p2col : {cmdab:yax:is:(}{it:#} [{it:#} ...]{cmd:)}}选择所用的 {it:y} 轴,
      {cmd:1} {ul:<} {it:#} {ul:<} {cmd:9}{p_end}
{p2col : {cmdab:xax:is:(}{it:#} [{it:#} ...]{cmd:)}}选择所用的 {it:x} 轴,
      {cmd:1} {ul:<} {it:#} {ul:<} {cmd:9}{p_end}
{p2line}
{p2colreset}{...}
{p 4 6 2}
{cmd:yaxis()}
和
{cmd:xaxis()}
是 {it:唯一} 的；请参见 
{help repeated options}。

{pstd}
这些选项适用于任何由 {it:plottypes}（如 {cmd:scatter}、{cmd:line} 等）允许的图形。

{marker description}{...}
{title:描述}

{pstd}
{it:axis_choice_options} 确定图表所显示的 {it:y} 和 {it:x} 轴（或轴）。

{marker linkspdf}{...}
{title:PDF文档链接}

        {mansection G-3 axis_choice_optionsRemarksandexamples:备注和示例}

{pstd}
上述部分不包含在此帮助文件中。


{marker options}{...}
{title:选项}

{phang}
{cmd:yaxis(}{it:#} [{it:#} ...]{cmd:)} 和
{cmd:xaxis(}{it:#} [{it:#} ...]{cmd:)}
    指定要使用的 {it:y} 或 {it:x} 轴。默认是
    {cmd:yaxis(1)} 和 {cmd:xaxis(1)}。

{pmore}
    通常，{cmd:yaxis()} 和 {cmd:xaxis()} 被视为其语法为 {cmd:yaxis(}{it:#}{cmd:)} 和 {cmd:xaxis(}{it:#}{cmd:)} -- 
    即只指定一个数字。实际上，可以指定多个数字，并且有时为 {cmd:yaxis()} 指定第二个数字是有用的。
    第一个 {it:y} 轴出现在左侧，第二个（如果存在第二个的话）出现在右侧。指定 {cmd:yaxis(1} {cmd:2)} 使两个 {it:y} 轴保持相同。
    你可以像往常一样使用左侧的轴，并在右侧标签特殊值。

{marker remarks}{...}
{title:备注}

{pstd}
选项 {cmd:yaxis()} 和 {cmd:xaxis()} 用于当你希望创建一个包含多个轴的图形时。 这些选项与 {cmd:twoway} 的 {cmd:scatter}、{cmd:line} 等一起指定
每个单独图表要使用的轴。

{pstd}
备注按以下标题呈现：

	{help axis_choice_options##remarks1:通常情况：一组坐标轴}
	{help axis_choice_options##remarks2:特殊情况：由于多重比例而导致的多个坐标轴}
	{help axis_choice_options##remarks3:yaxis(1) 和 xaxis(1) 是默认值}
	{help axis_choice_options##remarks4:符号风格无关紧要}
	{help axis_choice_options##remarks5:yaxis() 和 xaxis() 是图表选项}
	{help axis_choice_options##remarks6:为多个坐标轴指定其他坐标轴选项}
	{help axis_choice_options##remarks7:每个图表最多可以有一个 x 轴和一个 y 轴}
	{help axis_choice_options##remarks8:特殊情况：具有共享比例的多个坐标轴}


{marker remarks1}{...}
{title:通常情况：一组坐标轴}

{pstd}
通常，当你构建一个包含多个图表的 {cmd:twoway} 图形时，如

{p 8 16 2}
{cmd:. scatter y1 y2 x}

{pstd}
或等效的，

{p 8 16 2}
{cmd:. twoway (scatter y1 x) (scatter y2 x)}

{pstd}
这两个图表共用 {it:y} 和 {it:x} 的公共坐标轴。


{marker remarks2}{...}
{title:特殊情况：由于多重比例而导致的多个坐标轴}

{pstd}
有时你希望两个 {it:y} 图表绘制在不同的坐标比例上。
此时你可以输入

{p 8 17 2}
{cmd:. twoway (scatter gnp year, c(l) yaxis(1))}{break}
{cmd:(scatter r{space 3}year, c(l) yaxis(2))}

{pstd}
在第一个 {cmd:scatter} 上指定 {cmd:yaxis(1)} 表示“该散点图将出现在第一个 {it:y} 轴上”。在第二个 {cmd:scatter} 上指定 {cmd:yaxis(2)} 表示“该散点图将出现在第二个 {it:y} 轴上”。

{pstd}
结果是生成两个 {it:y} 轴。左侧的轴对应于 {cmd:gnp}，右侧的轴对应于 {cmd:r}。
如果我们有两个 {it:x} 轴，分别出现在底部和顶部：

{p 8 17 2}
{cmd:. twoway (scatter year gnp, c(l) xaxis(1))}{break}
{cmd:(scatter year r,{space 3}c(l) xaxis(2))}

{pstd}
你不限于只有两个 {it:y} 轴或两个 {it:x} 轴。你可以每种都有两个：

{p 8 17 2}
{cmd:. twoway (scatter y1var x1var, c(l) yaxis(1) xaxis(1))}{break}
{cmd:(scatter y2var x2var, c(l) yaxis(2) xaxis(2))}

{pstd}
你最多可以有九个 {it:y} 轴和九个 {it:x} 轴，虽然在那个时候图表的可读性会降低。 当有三个或更多 {it:y} 轴（或 {it:x} 轴）时，坐标轴会叠加在左侧（底部）。无论如何，你指定 {cmd:yaxis(}{it:#}{cmd:)} 和 {cmd:xaxis(}{it:#}{cmd:)} 来指明哪个轴适用于哪个图表。

{pstd}
此外，你可以重复使用坐标轴：

{p 8 17 2}
{cmd:. twoway (scatter gnp year, c(l) yaxis(1))}{break}
{cmd:(scatter nnp year, c(l) yaxis(1))}{break}
{cmd:(scatter r{space 3}year, c(l) yaxis(2))}{break}
{cmd:(scatter r2{space 2}year, c(l) yaxis(2))}

{pstd}
上述图形有两个 {it:y} 轴，一个在左侧，一个在右侧。左侧的轴用于 {cmd:gnp} 和 {cmd:nnp}；右侧的轴用于 {cmd:r} 和 {cmd:r2}。

{pstd}
我们输入图表的顺序并不重要；以下命令将产生相同的图表，

{p 8 17 2}
{cmd:. twoway (scatter gnp year, c(l) yaxis(1))}{break}
{cmd:(scatter r{space 3}year, c(l) yaxis(2))}{break}
{cmd:(scatter nnp year, c(l) yaxis(1))}{break}
{cmd:(scatter r2{space 2}year, c(l) yaxis(2))}

{pstd}
除了符号、颜色和与每个图表相关的 {it:{help linestyle_zh:linestyles}} 会有所变化。


{marker remarks3}{...}
{title:yaxis(1) 和 xaxis(1) 是默认值}

{pstd}
在第一次多轴示例中，

{p 8 17 2}
{cmd:. twoway (scatter gnp year, c(l) yaxis(1))}{break}
{cmd:(scatter r{space 3}year, c(l) yaxis(2))}

{pstd}
假定 {cmd:xaxis(1)} ，因为我们没有指定其他。该命令解释为如果我们输入了 

{p 8 17 2}
{cmd:. twoway (scatter gnp year, c(l) yaxis(1) xaxis(1))}{break}
{cmd:(scatter r{space 3}year, c(l) yaxis(2) xaxis(1))}

{pstd}
由于 {cmd:yaxis(1)} 是默认值，因此你不必输入它。同样，由于 {cmd:xaxis(1)} 是默认值，你也可以省略输入：

{p 8 17 2}
{cmd:. twoway (scatter gnp year, c(l))}{break}
{cmd:(scatter r{space 3}year, c(l) yaxis(2))}


{marker remarks4}{...}
{title:符号风格无关紧要}

{pstd}
无论你使用 {cmd:()} 的括号表示法还是 {cmd:||} 的分隔符表示法都无关紧要。
你同样可以输入

{p 8 21 2}
{cmd:. scatter gnp year, c(l) || scatter r year, c(l) yaxis(2)}


{marker remarks5}{...}
{title:yaxis() 和 xaxis() 是图表选项}

{pstd}
与所有其他坐标轴选项不同，{cmd:yaxis()} 和 {cmd:xaxis()} 是单个图表的选项，而不是 {cmd:twoway} 本身的选项。你不能输入

{phang2}
{cmd:. scatter gnp year, c(l) || scatter r year, c(l) ||, yaxis(2)}

{pstd}
因为 {cmd:twoway} 无法知道你想让 {cmd:yaxis(2)} 应用于第一个还是第二个 {cmd:scatter}。虽然坐标轴的显示是 {cmd:twoway} 的属性（见 {manhelpi axis_options G-3}），但是具体的图表使用哪些坐标轴则是图表本身的属性。

{pstd}
例如，选项 {cmd:ylabel()} 和 {cmd:xlabel()} 是指定坐标轴的主要刻度和标签的选项（见 {manhelpi axis_label_options G-3}）。如果你希望 {it:x} 轴有 10 个带标签的刻度，你可以输入

{p 8 10 2}
{cmd:. scatter gnp year, c(l) ||}{break}
{cmd:scatter r{space 3}year, c(l) yaxis(2) ||, xlabel(#10)}

{pstd}
并且实际上你“应该”以这种方式输入，以说明你对 {cmd:xlabel()} 作为一个 {cmd:twoway} 选项的深刻理解。然而，你可以输入

{p 8 10 2}
{cmd:. scatter gnp year, c(l) ||}{break}
{cmd:scatter r{space 3}year, c(l) yaxis(2) xlabel(#10)}

{pstd}
或者

{p 8 10 2}
{cmd:. scatter gnp year, c(l) xlabel(#10) ||}{break}
{cmd:scatter r{space 3}year, c(l) yaxis(2)}

{pstd}
因为 {cmd:twoway} 可以进入单个图表并提取出为其准备的选项。 {cmd:twoway} 所不能做的是重新分配明确指定的作为 {cmd:twoway} 的选项回到单个图表中。


{marker remarks6}{...}
{title:为多个坐标轴指定其他坐标轴选项}

{pstd}
继续我们的示例，

{p 8 10 2}
{cmd:. scatter gnp year, c(l) ||}{break}
{cmd:scatter r{space 3}year, c(l) yaxis(2) ||}{break}
{cmd:, xlabel(#10)}

{pstd}
假设你还希望第一个 {it:y} 轴有 10 个带标签的刻度，第二个 {it:y} 轴有 8 个带标签的刻度。你可以输入

{p 8 10 2}
{cmd:. scatter gnp year, c(l) ||}{break}
{cmd:scatter r{space 3}year, c(l) yaxis(2) ||}{break}
{cmd:, xlabel(#10){space 2}ylabel(#10, axis(1)){space 2}ylabel(#8, axis(2))}

{pstd}
每个其他坐标轴选项（见 
{manhelpi axis_options G-3}）都有一个 {cmd:axis(}{it:#}{cmd:)} 子选项，用于指定选项适用的坐标轴。当你不指定子选项时，默认假定为 {cmd:axis(1)}。

{pstd}
和往常一样，尽管其他坐标轴选项是 {cmd:twoway} 的选项，但你可以让它们与单个图表的选项同时使用：

	{cmd}. scatter gnp year, c(l) ||
	  scatter r   year, c(l) yaxis(2) xlabel(#10) ylabel(#10, axis(1))
			    ylabel(#8, axis(2)){txt}


{marker remarks7}{...}
{title:每个图表最多可以有一个 x 轴和一个 y 轴}

{pstd}
每个 {cmd:scatter}、{cmd:line}、{cmd:connected} 等 -- 即，每个图表 -- 只能有一个 {it:y} 比例和一个 {it:x} 比例，因此你不能输入简写形式

{phang2}
{cmd:. scatter gnp r year, c(l l) yaxis(1 2)}

{pstd}
将 {cmd:gnp} 放在一个轴上，将 {cmd:r} 放在另一个轴上。
事实上，{cmd:yaxis(1 2)} 并不是一个错误 -- 我们将在下一节讨论这一点 -- 但它不会将 {cmd:gnp} 放在一个轴上，将 {cmd:r} 放在另一个轴上。要做到这一点，必须输入

	{cmd:. twoway (scatter gnp year, c(l) yaxis(1))}
	{cmd:         (scatter r   year, c(l) yaxis(2))}

{pstd}
当然，你可以输入如

{phang2}
{cmd:. scatter gnp year, c(l) yaxis(1) || scatter r year, c(l) yaxis(2)}

{pstd}
整体图形可能有多个坐标比例，但出现在其中的各个图表不能有多个比例。


{marker remarks8}{...}
{title:特殊情况：具有共享比例的多个坐标轴}

{pstd}
有时拥有多个坐标轴非常有用，以便有额外的地方来标注特殊值。考虑绘制血压与某种药物浓度的关系：

	{cmd:. scatter bp concentration}

{pstd}
也许你想在 bp=120 的地方添加一条线，并特别标记该值。你可以这样做：

	{cmd:. scatter bp concentration, yaxis(1 2) ylabel(120, axis(2))}

{pstd}
{cmd:ylabel(120, axis(2))} 部分在 {manhelpi axis_label_options G-3} 中解释；
它使第二个坐标轴标记了 120 的值。选项 {cmd:yaxis(1 2)} 使得存在第二个坐标轴，你可以标记它。当你使用多个数字指定 {cmd:yaxis()}（或 {cmd:xaxis()}）时，在创建坐标轴时指明它们共享相同的比例。

{pstd}
为了更好地理解 {cmd:yaxis(1 2)} 的作用，请比较以下两个命令的结果：

	{cmd:. scatter bp concentration}

{pstd}
与

	{cmd:. scatter bp concentration, yaxis(1 2)}

{pstd}
在第一个图中，左侧有一个 {it:y} 轴。在第二个图中，有两个 {it:y} 轴，一个在左侧，一个在右侧，并且它们标记为相同。

{pstd}
现在比较

	{cmd:. scatter bp concentration}

{pstd}
与

	{cmd:. scatter bp concentration, xaxis(1 2)}

{pstd}
在第一个图中，底部有一个 {it:x} 轴。在第二个图中，有两个 {it:x} 轴，一个在底部，一个在顶部，并且它们标记为相同。

{pstd}
最后，尝试以下命令：

	{cmd:. scatter bp concentration, yaxis(1 2) xaxis(1 2)}

{pstd}
在该图中，有两个 {it:y} 轴和两个 {it:x} 轴：左侧和右侧，以及顶部和底部。
{p_end}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <axis_choice_options.sthlp>}