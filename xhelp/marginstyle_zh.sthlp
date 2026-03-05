{smcl}
{* *! version 1.1.6  19oct2017}{...}
{vieweralsosee "[G-4] marginstyle" "mansection G-4 marginstyle"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[G-3] region_options" "help region_options_zh"}{...}
{vieweralsosee "[G-3] textbox_options" "help textbox_options_zh"}{...}
{viewerjumpto "Syntax" "marginstyle_zh##syntax"}{...}
{viewerjumpto "Description" "marginstyle_zh##description"}{...}
{viewerjumpto "Links to PDF documentation" "marginstyle_zh##linkspdf"}{...}
{viewerjumpto "Remarks" "marginstyle_zh##remarks"}
{help marginstyle:English Version}
{hline}{...}
{p2colset 1 22 24 2}{...}
{p2col:{bf:[G-4]} {it:marginstyle} {hline 2}}边距大小选择{p_end}
{p2col:}({mansection G-4 marginstyle:查看完整的PDF手册条目}){p_end}
{p2colreset}{...}


{marker syntax}{...}
{title:语法}

{synoptset 20}{...}
{p2col:{it:marginstyle}}描述{p_end}
{p2line}
{p2col:{cmd:zero}}无边距{p_end}
{p2col:{cmd:tiny}}微小边距，四周均为最小边距{p_end}
{p2col:{cmd:vsmall}}{p_end}
{p2col:{cmd:small}}{p_end}
{p2col:{cmd:medsmall}}{p_end}
{p2col:{cmd:medium}}{p_end}
{p2col:{cmd:medlarge}}{p_end}
{p2col:{cmd:large}}{p_end}
{p2col:{cmd:vlarge}}非常大的边距，四周均为最大边距{p_end}

{p2col:{cmd:bottom}}{cmd:medium} 在底部{p_end}
{p2col:{cmd:top}}{cmd:medium} 在顶部{p_end}
{p2col:{cmd:top_bottom}}{cmd:medium} 在顶部和底部{p_end}

{p2col:{cmd:left}}{cmd:medium} 在左侧{p_end}
{p2col:{cmd:right}}{cmd:medium} 在右侧{p_end}
{p2col:{cmd:sides}}{cmd:medium} 在左侧和右侧{p_end}

{p2col:{it:#} {it:#} {it:#} {it:#}}指定边距；左、右、底、顶{p_end}
{p2col:{it:marginexp}}指定的边距{p_end}
{p2line}
{p2colreset}{...}

{pstd}
其中 {it:marginexp} 是一种或多种形式的元素

		{c -(}{cmd:l}|{cmd:r}|{cmd:b}|{cmd:t}{c )-}[{it:<space>}][{cmd:+}|{cmd:-}|{cmd:=}]{it:#}

{phang}
示例

		{cmd:l=5}
		{cmd:l=5 r=5}
		{cmd:l+5}
		{cmd:l+5 r=7.2  b-2 t+1}

{pstd}
在 {it:#} {it:#} {it:#} {it:#} 语法和
{c -(}{cmd:l}|{cmd:r}|{cmd:b}|{cmd:t}{c )-}[{cmd:+}|{cmd:-}|{cmd:=}]{it:#} 语法中，{it:#} 被解释为图形的宽度和高度中的最小值的百分比。因此，5 的距离在垂直和水平方向上是相同的。

{pstd}
当您将边距应用于旋转的文本框时，左、右、底和顶的术语指的是旋转前的框；请参见 {manhelpi textbox_options G-3}。

{pstd}
可能还有其他的 {it:marginstyles}；输入

	{cmd:.} {bf:{stata graph query marginstyle}}

{pstd}
以获取安装在您计算机上的完整 {it:marginstyles} 列表。如果存在其他 {it:marginstyles}，它们只是与 {it:#} {it:#} {it:#} {it:#} 边距相关联的名称。


{marker description}{...}
{title:描述}

{pstd}
{it:marginstyle} 用于指定边距（不被使用的区域）。


{marker linkspdf}{...}
{title:PDF文档链接}

        {mansection G-4 marginstyleRemarksandexamples:备注和示例}

{pstd}
上述部分不包含在此帮助文件中。


{marker remarks}{...}
{title:备注}

{pstd}
{it:marginstyle} 例如，在 {cmd:margin()} 的子选项 {cmd:title()} 中使用：

{phang2}
	{cmd:. graph} ...{cmd:, title("我的标题", margin(}{it:marginstyle}{cmd:))} ...

{pstd}
{it:marginstyle} 指定文本与包含文本的文本框边界之间的边距（最终将放置在图形上的框）。请参阅 {manhelpi title_options G-3} 和 {manhelpi textbox_options G-3}。

{pstd}
作为另一个例子，{it:marginstyle} 被 {cmd:graphregion()} 的 {cmd:margin()} 子选项允许：

{phang2}
	{cmd:. graph} ...{cmd:, graphregion(margin(}{it:marginstyle}{cmd:))} ...

{pstd}
它允许您在图形内的绘图区域周围设置边距。有关示例，请查看 {it:{help region_options##remarks2:控制纵横比}} 在 {manhelpi region_options G-3} 中的内容。
{p_end}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <marginstyle.sthlp>}