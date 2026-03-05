{smcl}
{* *! version 1.2.8  16apr2019}{...}
{vieweralsosee "[G-3] axis_scale_options" "mansection G-3 axis_scale_options"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[G-3] axis_options" "help axis_options_zh"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[G-3] axis_label_options" "help axis_label_options_zh"}{...}
{vieweralsosee "[G-3] axis_title_options" "help axis_title_options_zh"}{...}
{vieweralsosee "[G-3] region_options" "help region_options_zh"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[G-2] graph twoway tsline" "help tsline_zh"}{...}
{viewerjumpto "语法" "axis_scale_options_zh##syntax"}{...}
{viewerjumpto "描述" "axis_scale_options_zh##description"}{...}
{viewerjumpto "PDF 文档链接" "axis_scale_options_zh##linkspdf"}{...}
{viewerjumpto "选项" "axis_scale_options_zh##options"}{...}
{viewerjumpto "子选项" "axis_scale_options_zh##suboptions"}{...}
{viewerjumpto "备注" "axis_scale_options_zh##remarks"}
{help axis_scale_options:English Version}
{hline}{...}
{p2colset 1 29 31 2}{...}
{p2col:{bf:[G-3]} {it:axis_scale_options} {hline 2}}用于指定坐标轴比例、范围和外观的选项{p_end}
{p2col:}({mansection G-3 axis_scale_options:查看完整 PDF 手册条目}){p_end}
{p2colreset}{...}


{marker syntax}{...}
{title:语法}

{pstd}
{it:axis_scale_options} 是 {it:axis_options} 的一个子集；
详见 {manhelpi axis_options G-3}。

{synoptset 27}{...}
{p2col:{it:axis_scale_options}}描述{p_end}
{p2line}
{p2col:{cmdab:ysc:ale:(}{it:axis_suboptions}{cmd:)}}{it:y} 轴的外观{p_end}
{p2col:{cmdab:xsc:ale:(}{it:axis_suboptions}{cmd:)}}{it:x} 轴的外观{p_end}
{p2col:{cmdab:tsc:ale:(}{it:axis_suboptions}{cmd:)}}{it:t}（时间）轴的外观{p_end}
{p2col:{cmdab:zsc:ale:(}{it:axis_suboptions}{cmd:)}}等高线图例轴的外观{p_end}
{p2line}
{p 4 6 2}
上述选项为
{it:merged-implicit}; 详见 {help repeated options}。

{p2col:{it:axis_suboptions}}描述{p_end}
{p2line}
{p2col:{cmdab:ax:is:(}{it:#}{cmd:)}}要修改的轴； {cmd:1} {ul:<}
      {it:#} {ul:<} {cmd:9}{p_end}
{p2col:[{cmd:no}]{cmd:log}}使用对数刻度{p_end}
{p2col:[{cmdab:no:}]{cmdab:rev:erse}}反向刻度，从最大到最小{p_end}
{p2col:{cmdab:r:ange:(}{it:{help numlist_zh}}{cmd:)}}扩展坐标轴范围{p_end}
{p2col:{cmdab:r:ange:(}{it:{help datelist_zh}}{cmd:)}}扩展 {it:t} 轴的范围
       （仅限 {cmd:tscale()}）{p_end}

{p2col:{cmd:off} 和 {cmd:on}}抑制/强制显示轴{p_end}
{p2col:{cmd:fill}}即使 {cmd:off} 也为轴分配空间{p_end}
{p2col:{cmd:alt}}将轴从左移至右或从上移至下{p_end}

{p2col:{cmdab:fex:tend}}通过绘图区域及其边缘延伸轴线{p_end}
{p2col:{cmdab:ex:tend}}通过绘图区域延伸轴线{p_end}
{p2col:{cmdab:noex:tend}}不延伸轴线{p_end}
{p2col:{cmdab:noli:ne}}不绘制轴线{p_end}
{p2col:{cmdab:li:ne}}强制绘制轴线{p_end}

{p2col:{cmdab:titleg:ap:(}{it:{help size_zh}}{cmd:)}}轴标题与刻度标签之间的边距{p_end}
{p2col:{cmdab:outerg:ap:(}{it:{help size_zh}}{cmd:)}}轴标题外部的边距{p_end}

{p2col:{cmdab:lsty:le:(}{it:{help linestyle_zh}}{cmd:)}}轴线的整体样式{p_end}
{p2col:{cmdab:lc:olor:(}{it:{help colorstyle_zh}}{cmd:)}}轴线的颜色和透明度{p_end}
{p2col:{cmdab:lw:idth:(}{it:{help linewidthstyle_zh}}{cmd:)}}轴线的粗细{p_end}
{p2col:{cmdab:lp:attern:(}{it:{help linepatternstyle_zh}}{cmd:)}}轴的图案（实线、虚线等）{p_end}
{p2line}
{p2colreset}{...}


{marker description}{...}
{title:描述}

{pstd}
{it:axis_scale_options} 决定了坐标轴的缩放方式（算术、对数、反向）、坐标轴的范围以及作为坐标轴的线条的外观。


{marker linkspdf}{...}
{title:PDF 文档链接}

        {mansection G-3 axis_scale_optionsQuickstart:快速开始}

        {mansection G-3 axis_scale_optionsRemarksandexamples:备注和示例}

{pstd}
上述部分不包含在此帮助文件中。


{marker options}{...}
{title:选项}

{phang}
{opt yscale(axis_suboptions)}, {opt xscale(axis_suboptions)}, 和
{opt tscale(axis_suboptions)}
    指定 {it:y}、{it:x} 和 {it:t} 轴的外观。{it:t} 轴是 {it:x} 轴的扩展。在括号内指定 {it:axis_suboptions}。

{phang}
{cmd:zscale(}{it:axis_suboptions}{cmd:)}}; 详见
    {it:{help axis_scale_options##remarks6:等高线轴 -- zscale()}}
    下面的内容。


{marker suboptions}{...}
{title:子选项}

{phang}
{cmd:axis(}{it:#}{cmd:)}
     指定该轴属于哪个刻度，并在处理多个 {it:y} 或 {it:x} 轴时指定；详见 
     {manhelpi axis_choice_options G-3}。

{phang}
{cmd:log} 和 {cmd:nolog}
    指定刻度应为对数刻度还是算术刻度。
    {cmd:nolog} 是常规默认，{cmd:log} 是选项。
    详见 {it:{help axis_scale_options##remarks3:获取对数刻度}}下的内容。

{phang}
{cmd:reverse} 和 {cmd:noreverse}
     指定刻度是从最大到最小还是从最小到最大。
     {cmd:noreverse} 是常规默认，所以 {cmd:reverse} 是选项。
     详见 {it:{help axis_scale_options##remarks4:获取反向刻度}}下的内容。

{phang}
{cmdab:range(}{it:numlist}{cmd:)}
    指定将轴扩展以包含指定的数字。如果指定了缺失值，则会被忽略。详见 
    {it:{help axis_scale_options##remarks2:指定刻度的范围}}下的内容。  

{phang}
{cmdab:range(}{it:datelist}{cmd:)} （仅限 {cmd:tscale()}）
    指定将轴扩展以包含指定的日期；详见 {it:{help datelist_zh}}。如果指定了缺失值，则会被忽略。详见 {manhelp tsline TS} 的示例。

{phang}
{cmd:off} 和 {cmd:on}
    抑制或强制显示轴。
    {cmd:on} 是默认，而 {cmd:off} 是选项。
    详见 {it:{help axis_scale_options##remarks5:抑制轴}}下的内容。

{phang}
{cmd:fill} 与 {cmd:off} 一起使用且很少被指定。如果你关闭了一个轴但仍想为该轴分配空间，可以指定 {cmd:fill}。

{phang}
{cmd:alt} 指定，如果轴默认在左侧，则移动到右侧；如果默认在底部，则移动到顶部。
下面的命令将绘制一个散点图，并将 {it:y} 轴放置在右侧：

{phang3}
{cmd:. scatter yvar xvar, yscale(alt)}

{phang}
{cmd:fextend}, {cmd:extend}, {cmd:noextend}, {cmd:line}, 和 {cmd:noline}
    决定表示轴的线条将被绘制多少。它们是互为替代的。

{pmore}
    {cmd:noline} 指定不绘制该线。轴存在，刻度和标签会出现，但作为轴的线条本身不会被绘制。

{pmore}
    {cmd:line} 是 {cmd:noline} 的反义词，用于当轴线以某种方式关闭时。

{pmore}
    {cmd:noextend} 指定轴线不超出轴的范围。假设轴范围为 -1 到 +20。
    使用 {cmd:noextend} 时，轴线始于 -1 并结束于 +20。

{pmore}
    {cmd:extend} 指定线比这个更长，并延伸整个绘图区域。例如，-1 和 +20 可能是轴的范围，但刻度可能从 -5 延伸到 +25，范围 [-5,-1) 和 (20,25] 在轴上不带标签。使用 {cmd:extend} 时，轴线始于 -5 并结束于 25。

{pmore}
    {cmd:fextend} 指定线比这个更长，并延伸跨越绘图区域及其边缘。对于绘图区域边缘的定义，详见 
    {manhelpi region_options G-3}。如果绘图区域没有边缘（这很少见），{cmd:fextend} 的含义与 {cmd:extend} 相同。如果绘图区域有边缘，{cmd:extend} 会导致 {it:y} 和 {it:x} 轴不接触。使用 {cmd:fextend} 时，它们相互接触。

{pmore}
    {cmd:fextend} 在大多数方案中是默认值。

{phang}
{cmd:titlegap(}{it:size}{cmd:)} 指定在轴标题与轴刻度标签之间插入的边距；详见 
     {manhelpi size G-4}。

{phang}
{cmd:outergap(}{it:size}{cmd:)} 指定在轴标题之外插入的边距；详见 {manhelpi size G-4}。

{phang}
{cmd:lstyle(}{it:linestyle}{cmd:)},
{cmd:lcolor(}{it:colorstyle}{cmd:)},
{cmd:lwidth(}{it:linewidthstyle}{cmd:)}, 和
{cmd:lpattern(}{it:linepatternstyle}{cmd:)}
决定作为坐标轴的线条的整体外观；
详见 {help lines_zh}。


{marker remarks}{...}
{title:备注}

{pstd}
{it:axis_scale_options} 是 {it:axis_options} 的子集；
详见 {manhelpi axis_options G-3} 的概述。
其他外观选项有：

	{it:axis_label_options}{right:(见 {manhelpi axis_label_options G-3})  }

	{it:axis_title_options}{right:(见 {manhelpi axis_title_options G-3})  }

{pstd}
备注在以下标题下呈现：

	{help axis_scale_options##remarks1:使用 yscale() 和 xscale()}
	{help axis_scale_options##remarks2:指定刻度的范围}
	{help axis_scale_options##remarks3:获取对数刻度}
	{help axis_scale_options##remarks4:获取反向刻度}
	{help axis_scale_options##remarks5:抑制轴}
	{help axis_scale_options##remarks6:等高线轴 -- zscale()}


{marker remarks1}{...}
{title:使用 yscale() 和 xscale()}

{* index yscale() tt option}{* index xscale() tt option}{...}
{pstd}
{cmd:yscale()} 和 {cmd:xscale()} 指定 {it:y} 和 {it:x} 轴的外观。在括号内指定 {it:axis_suboptions}，例如：

{pmore}
{cmd:. twoway (scatter} ...{cmd:)} ...{cmd:,}
{cmd:yscale(range(0 10) titlegap(1))}

{pstd}
{cmd:yscale()} 和 {cmd:xscale()} 可以缩写为 {cmd:ysc()} 和 {cmd:xsc()}，子选项 {cmd:range()} 可以缩写为 {cmd:r()}，{cmd:titlegap()} 可以缩写为 {cmd:titleg()}：

{pmore}
{cmd:. twoway (scatter} ...{cmd:)} ...{cmd:,}
{cmd:ysc(r(0 10) titleg(1))}

{pstd}
可以在同一命令中指定多个 {cmd:yscale()} 和 {cmd:xscale()} 选项，它们的结果将组合。因此， 
上述命令也可以指定为：

{pmore}
{cmd:. twoway (scatter} ...{cmd:)} ...{cmd:,}
{cmd:ysc(r(0 10)) ysc(titleg(1))}

{pstd}
子选项也可以多次指定，既可以在某个 {cmd:yscale()} 或 {cmd:xscale()} 选项内指定，也可以在多个选项间指定，最右边的子选项将生效。在以下命令中，{cmd:titlegap()} 将为 2，{cmd:range()} 将为 0 和 10：

{pmore}
{cmd:. twoway (scatter} ...{cmd:)} ...{cmd:,}
{cmd:ysc(r(0 10)) ysc(titleg(1)) ysc(titleg(2))}


{marker remarks2}{...}
{title:指定刻度的范围}

{* index scale, range of}{* index axis range}{...}
{pstd}
要指定刻度的范围，请指定 
{c -(}{cmd:y}|{cmd:x}{c )-}{cmd:scale(range(}{it:numlist}{cmd:))} 选项。该选项指定将轴扩展为包含指定的数字。

{pstd}
考虑图形

	{cmd:. scatter} {it:yvar} {it:xvar}

{pstd}
假设结果是 y 轴在 1 到 100 之间变化，并假设考虑到 y 变量的性质，扩展轴的范围从 0 到 100 更为自然。你可以输入：

{phang2}
	{cmd:. scatter} {it:yvar xvar}{cmd:, ysc(r(0))}

{pstd}
同样，如果未使用 {cmd:yscale(range())} 选项时范围从 1 到 99，而你想将其从 0 更改为 100，可以输入：

{phang2}
	{cmd:. scatter} {it:yvar xvar}{cmd:, ysc(r(0 100))}

{pstd}
如果未使用 {cmd:yscale(range())} 时范围从 0 到 99，而你想将其从 0 更改为 100，可以输入：

{phang2}
	{cmd:. scatter} {it:yvar xvar}{cmd:, ysc(r(100))}

{pstd}
指定缺失值会保持当前的最小值或最大值不变；指定非缺失值会更改范围，但仅在指定值超出原本将选择的值时。{cmd:range()} 从不缩小轴的刻度或导致数据从图表中省略。如果你想对 {cmd:yvar} 相对于位于 10 和 50 之间的 {cmd:xvar} 值进行绘图，输入：

{phang2}
	{cmd:. scatter} {it:yvar xvar}{cmd:, xsc(r(10 50))}

{pstd}
是不够的。你需要输入：

{phang2}
	{cmd:. scatter} {it:yvar xvar} {cmd:if} {it:xvar}{cmd:>=10 &} {it:xvar}{cmd:<=50}


{marker remarks3}{...}
{title:获取对数刻度}

{* index log scales}{* index axis, log}{* index scales, log}{...}
{pstd}
要获取对数刻度，请指定 
{c -(}{cmd:y}|{cmd:x}{c )-}{cmd:scale(log)} 选项。
通常，当你绘制图形时，会获得算术刻度：

	{cmd:. sysuse lifeexp, clear}

	{cmd:. scatter lexp gnppc}
	  {it:({stata "gr_example lifeexp: scatter lexp gnppc":click to run})}
{* graph axsca1}{...}

{pstd}
要获取相同图形且使用对数 {it:x} 刻度，输入：

	{cmd:. scatter lexp gnppc, xscale(log)}
	  {it:({stata "gr_example lifeexp: scatter lexp gnppc, xscale(log)":click to run})}
{* graph axsca2}{...}

{pstd}
我们得到与输入

	{cmd:. generate log_gnppc = log(gnppc)}

	{cmd:. scatter lexp log_gnppc}

{pstd}
时相同的图形。
区别在于轴的标签。当我们指定 
{c -(}{cmd:y}|{cmd:x}{c )-}{cmd:scale(log)} 时，轴按自然单位标记。这里，30000 和 40000 的重叠是不幸的，但我们可以通过将 {cmd:gnppc} 除以 1000 来修复这个问题。


{marker remarks4}{...}
{title:获取反向刻度}

{* index reversed scales}{* index axis, reversed}{* scales, reversed}{...}
{pstd}
要获取反向刻度——从高到低的刻度——请指定 
{c -(}{cmd:y}|{cmd:x}{c )-}{cmd:scale(reverse)} 选项：

	{cmd:. sysuse auto, clear}

	{cmd:. scatter mpg weight, yscale(rev)}
	  {it:({stata "gr_example auto: scatter mpg weight, yscale(rev)":click to run})}
{* graph axsca3}{...}


{marker remarks5}{...}
{title:抑制轴}

{* index axes, suppressing}{...}
{pstd}
有两种方法可以抑制轴。第一种是完全关闭它们，这意味着轴线会被抑制，以及所有的刻度、标签和标题。
第二种是仅抑制轴线，同时保留刻度、标签和标题。

{pstd}
第一种方法是
{c -(}{cmd:y}|{cmd:x}{c )-}{cmd:scale(off)}
而第二种是
{c -(}{cmd:y}|{cmd:x}{c )-}{cmd:scale(noline)}。
此外，你可能还需要指定 
{cmd:plotregion(style(none))} 选项；详见 {manhelpi region_options G-3}。

{pstd}
轴和图形区域周围的边框是重合的。指定 {cmd:plotregion(style(none))} 将消去边框，揭示给我们轴：

	{cmd:. sysuse auto, clear}

	{cmd:. scatter mpg weight, plotregion(style(none))}
	  {it:({stata "gr_example auto: scatter mpg weight, plotregion(style(none))":click to run})}
{* graph axsca4}{...}

{pstd}
要消除轴，请输入：

	{cmd:. scatter mpg weight, plotregion(style(none))}
	{cmd:                      yscale(off) xscale(off)}
	  {it:({stata "gr_example auto: scatter mpg weight, plotregion(style(none)) yscale(off) xscale(off)":click to run})}
{* graph axsca5}{...}

{pstd}
要消除作为轴的线，同时保留标签、刻度和标题，请输入：

	{cmd:. scatter mpg weight, plotregion(style(none))}
	{cmd:                      yscale(noline) xscale(noline)}
	  {it:({stata "gr_example auto: scatter mpg weight, plotregion(style(none)) yscale(noline) xscale(noline)":click to run})}
{* graph axsca6}{...}

{pstd}
而不是使用 
{c -(}{cmd:y}|{cmd:x}{c )-}{cmd:scale(noline)}，你可以指定 
{c -(}{cmd:y}|{cmd:x}{c )-}{cmd:scale(lstyle(noline))} 
或 
{c -(}{cmd:y}|{cmd:x}{c )-}{cmd:scale(lstyle(none))}。
它们的含义相同。


{marker remarks6}{...}
{title:等高线轴 -- zscale()}

{pstd}
{cmd:zscale()} 选项不同寻常，因为它不适用于绘图区域的轴，而是用于显示 {help clegend_option_zh:等高线图例} 刻度的轴。仅当图形包含 {cmd:twoway contour} 图时，才会生效；
详见 {help twoway_contour_zh:[G-2] graph twoway contour}。就其他方面而言，它的作用与 {cmd:xscale()}、{cmd:yscale()} 和 {cmd:tscale()} 相同。
{p_end}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <axis_scale_options.sthlp>}