{smcl}
{* *! version 1.1.8  15may2018}{...}
{vieweralsosee "[G-4] linestyle" "mansection G-4 linestyle"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[G-4] 概念: 线" "help lines_zh"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[G-4] linealignmentstyle" "help linealignmentstyle_zh"}{...}
{vieweralsosee "[G-4] linepatternstyle" "help linepatternstyle_zh"}{...}
{vieweralsosee "[G-4] linewidthstyle" "help linewidthstyle_zh"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[G-4] colorstyle" "help colorstyle_zh"}{...}
{vieweralsosee "[G-4] connectstyle" "help connectstyle_zh"}{...}
{viewerjumpto "语法" "linestyle_zh##syntax"}{...}
{viewerjumpto "描述" "linestyle_zh##description"}{...}
{viewerjumpto "PDF 文档链接" "linestyle_zh##linkspdf"}{...}
{viewerjumpto "备注" "linestyle_zh##remarks"}
{help linestyle:English Version}
{hline}{...}
{p2colset 1 20 22 2}{...}
{p2col:{bf:[G-4]} {it:linestyle} {hline 2}}线的整体外观选择{p_end}
{p2col:}({mansection G-4 linestyle:查看完整 PDF 手册条目}){p_end}
{p2colreset}{...}


{marker syntax}{...}
{title:语法}

{synoptset 25}{...}
{p2col:{it:linestyle}}描述{p_end}
{p2line}
{p2col:{cmd:foreground}}边框、轴等，使用前景颜色{p_end}
{p2col:{cmd:grid}}网格线{p_end}
{p2col:{cmd:minor_grid}}小网格线或与 {cmd:grid} 相同{p_end}
{p2col:{cmd:major_grid}}粗网格线或与 {cmd:grid} 相同{p_end}
{p2col:{cmd:refline}}参考线{p_end}
{p2col:{cmd:yxline}}{cmd:yline()} 或 {cmd:xline()}{p_end}
{p2col:{cmd:none}}不存在的线{p_end}

{p2col:{cmd:p1} - {cmd:p15}}用于第一到第十五个 "line" 绘图{p_end}
{p2col:{cmd:p1bar} - {cmd:p15bar}}用于第一到第十五个 "bar" 绘图{p_end}
{p2col:{cmd:p1box} - {cmd:p15box}}用于第一到第十五个 "box" 绘图{p_end}
{p2col:{cmd:p1area} - {cmd:p15area}}用于第一到第十五个 "area" 绘图{p_end}
{p2col:{cmd:p1solid} - {cmd:p15solid}}与 {cmd:p1} - {cmd:p15} 相同，但始终为实线{p_end}

{p2col:{cmd:p1mark} - {cmd:p15mark}}第一到第十五个绘图的标记{p_end}
{p2col:{cmd:p1boxmark} - {cmd:p15boxmark}}盒型图的外部值标记{p_end}
{p2col:{cmd:p1dotmark} - {cmd:p15dotmark}}点图的标记{p_end}
{p2col:{cmd:p1other} - {cmd:p15other}}"其他" 线，例如 {help twoway_spike_zh:spikes} 和 {help twoway_rcap_zh:range plots}{p_end}
{p2line}
{p2colreset}{...}

{pstd}
其他 {it:linestyles} 可能可用；输入

	    {cmd:.} {bf:{stata graph query linestyle}}

{pstd}
以获取您计算机上安装的完整列表。


{marker description}{...}
{title:描述}

{pstd}
{it:linestyle} 设置线的整体图案、厚度、颜色和对齐；有关更多信息，请参见 {help lines_zh}。

{pstd}
{it:linestyle} 通过以下命名选项指定

{phang2}
	<{it:object}><{cmd:l} 或 {cmd:li} 或 {cmd:line}>{cmd:style()}

{pstd}
或

	<{cmd:l} 或 {cmd:li} 或 {cmd:line}>{cmd:style()}

{pstd}
例如，对于连接线（用于在绘图中连接点的线）用于 {cmd:graph} {cmd:twoway} {cmd:function}，选项名为 {cmd:lstyle()}：

{phang2}
	{cmd:. twoway function} ...{cmd:, lstyle(}{it:linestyle}{cmd:)} ...

{pstd}
有时您会看到允许使用 {it:linestylelist}：

{phang2}
	{cmd:. twoway line} ...{cmd:, lstyle(}{it:linestylelist}{cmd:)} ...

{pstd}
{it:linestylelist} 是以空格分隔的 {it:linestyles} 序列。允许使用简写，以便更轻松地指定列表；请参见 {manhelpi stylelists G-4}。


{marker linkspdf}{...}
{title:PDF 文档链接}

        {mansection G-4 linestyleRemarksandexamples:备注和示例}

{pstd}
上述部分不包括在此帮助文件中。


{marker remarks}{...}
{title:备注}

{pstd}
备注按以下标题进行呈现：

	{help linestyle##remarks1:什么是线？}
	{help linestyle##remarks2:什么是线条样式？}
	{help linestyle##remarks3:您不需要指定线条样式}
	{help linestyle##remarks4:指定线条样式可以很方便}
	{help linestyle##remarks5:什么是编号样式？}
	{help linestyle##remarks6:抑制线条}


{* index line, definition}{...}
{marker remarks1}{...}
{title:什么是线？}

{pstd}
几乎出现在图形上的所有内容都是线，只有标记、填充区域、条形等例外，即使它们也被线条描边或框住。


{marker remarks2}{...}
{title:什么是线条样式？}

{pstd}
线条通过以下属性定义：

{phang2}
    1.  {it:linepattern} -- 它是实线、虚线等；{break}
	请参见 {manhelpi linepatternstyle G-4}

{phang2}
    2.  {it:linewidth} -- 线的厚度； {break}
	请参见 {manhelpi linewidthstyle G-4}

{phang2}
    3.  {it:linecolor} -- 线的颜色和不透明度； {break}
	请参见 {manhelpi colorstyle G-4}

{phang2}
    4.  {it:linealignment} -- 标记、填充区域、条形和盒子轮廓或边框的对齐； {break}
	请参见 {manhelpi linealignmentstyle G-4}

{pstd}
{it:linestyle} 规定所有这些属性。


{marker remarks3}{...}
{title:您不需要指定线条样式}

{pstd}
{it:linestyle} 通过名为的选项指定

{phang2}
	<{it:object}><{cmd:l} 或 {cmd:li} 或 {cmd:line}>{cmd:style(}{it:linestyle}{cmd:)}

{pstd}
因此，以下其他选项始终可用：

{phang2}
	<{it:object}><{cmd:l} 或 {cmd:li} 或 {cmd:line}>{cmd:pattern(}{it:linepatternstyle}{cmd:)}

{phang2}
	<{it:object}><{cmd:l} 或 {cmd:li} 或 {cmd:line}>{cmd:width(}{it:linewidthstyle}{cmd:)}

{phang2}
	<{it:object}><{cmd:l} 或 {cmd:li} 或 {cmd:line}>{cmd:color(}{it:colorstyle}{cmd:)}

{phang2}
	<{it:object}><{cmd:l} 或 {cmd:li} 或 {cmd:line}>{cmd:align(}{it:linealignmentstyle}{cmd:)}

{pstd}
通常不需要 <{it:object}> 前缀。

{pstd}
当存在恰好符合您需求的样式时，或者使用其他样式可以使您指定更少的更改以获得所需效果时，您可以指定 {it:linestyle}。


{marker remarks4}{...}
{title:指定线条样式可以很方便}

{pstd}
考虑以下命令

	{cmd:. line y1 y2 x}

{pstd}
假设您希望 y2 与 x 的线与 y1 与 x 的线相同。您可能会设置 y1 与 x 的线的样式、宽度和颜色，然后将 y2 与 x 的线的样式、宽度和颜色设置为相同。然而，更容易的方式是输入

	{cmd:. line y1 y2 x, lstyle(p1 p1)}

{pstd}
{cmd:lstyle()} 是指定连接线样式的选项。当您未指定 {cmd:lstyle()} 选项时，结果与指定

{phang2}
	{cmd:lstyle(p1 p2 p3 p4 p5 p6 p7 p8 p9 p10 p11 p12 p13 p14 p15)}

{pstd}
的结果相同，多余的元素被忽略。无论如何，{cmd:p1} 是一组样式、厚度和颜色值； {cmd:p2} 是另一组；依此类推。

{pstd}
假设您希望 y2 与 x 的线看起来像 y1 与 x 的线，但希望线为绿色；您可以输入

{phang2}
	{cmd:. line y1 y2 x, lstyle(p1 p1) lcolor(. green)}

{pstd}
对于 {it:linestyles} {cmd:p1}、{cmd:p2}、... 并没有特殊之处；它们仅仅是规定样式、厚度和颜色值的集合，就像任何其他命名的 {it:linestyle} 一样。输入

	{cmd:. graph query linestyle}

{pstd}
以查找其他可用的线条样式。您可能会找到一些更合心意的样式，如果是这样，指定它比每一个单独选项更容易以修改每个元素。

{pstd}
另请参见 
    {it:{help scatter##remarks19:附录: 样式和复合样式}} 在 
    {manhelp scatter G-2:graph twoway scatter} 中获取更多信息。


{* index numbered styles}{...}
{marker remarks5}{...}
{title:什么是编号样式？}

{phang}
     {cmd:p1} - {cmd:p15} 是所有 {helpb twoway} 图形中连接线的默认样式，例如，
        {helpb twoway line}, 
        {helpb twoway connected}, 和
        {helpb twoway function}。 {cmd:p1} 用于第一幅图， {cmd:p2} 用于第二幅，依此类推。有些
	{cmd:twoway} 图形没有连接线。

{phang}
     {cmd:p1bar} - {cmd:p15bar} 是条形图上默认的样式；这包括 {helpb twoway bar} 图
        和 {help graph bar:条形图}。 {cmd:p1bar} 用于第一组条形， {cmd:p2bar} 用于第二组，依此类推。

{phang}
     {cmd:p1box} - {cmd:p15box} 是 {help graph box:盒型图} 上的默认样式。 {cmd:p1box} 用于第一组盒子， {cmd:p2box} 用于第二组，依此类推。

{phang}
     {cmd:p1area} - {cmd:p15area} 是面积图上默认的样式；这包括 {helpb twoway area}
        图和 {helpb twoway rarea}。 {cmd:p1area} 用于第一填充区域， {cmd:p2area} 用于第二填充区域，依此类推。

{phang}
     {cmd:p1solid} - {cmd:p15solid} 与 {cmd:p1} - {cmd:p15} 相同，但线始终为实线；它们的颜色
     和厚度与 {cmd:p1} - {cmd:p15} 相同。

{phang}
     {cmd:p1mark} - {cmd:p15mark} 是所有 {helpb twoway} 图形中用于绘制标记的默认样式，例如，
	{helpb twoway scatter}, 
	{helpb twoway connected}, 和
        {helpb twoway rcapsym}。 {cmd:p1mark} 用于第一幅图， {cmd:p2mark} 用于第二幅，依此类推。  

{pmore}
        {it:{help linepatternstyle_zh}} 属性在绘制符号时始终被忽略。

{phang}
     {cmd:p1boxmark} - {cmd:p15boxmark} 是 {help graph box:盒型图} 的外部值标记的默认样式。 {cmd:p1box} 是
        用于第一组点的标记， {cmd:p2box} 用于第二组，依此类推。

{phang}
     {cmd:p1dotmark} - {cmd:p15dotmark} 是 {help graph dot:点图} 的标记的默认样式。 {cmd:p1dot} 是
        用于第一组点的标记， {cmd:p2dot} 用于第二组，依此类推。

{phang}
     {cmd:p1other} - {cmd:p15other} 是某些 {helpb twoway} 绘图类型的“其他”线的默认样式，包括
        {helpb twoway spike} 的尖刺和 
        {helpb twoway rspike}，以及 
        {helpb twoway dropline},
        {helpb twoway rcap} 和
        {helpb twoway rcapsym} 的线。
	{cmd:p1other} 用于第一组 
	lines， {cmd:p2other} 用于第二组，依此类推。

{pstd}
        编号样式定义的“外观”，如 {cmd:p1}，
        {cmd:p1mark}、{cmd:p1bar} 等 -- 这里所说的“外观”指的是 
        宽度（请参见 {manhelpi linewidthstyle G-4}）、颜色（请参见 {manhelpi colorstyle G-4}）和 
        图案（请参见 {manhelpi linepatternstyle G-4}） -- 由所选的方案（请参见 {manhelp schemes G-4:方案介绍}）决定。

{pstd}
        编号样式提供了可以通过方案控制的默认“外观”。当您希望使图形上的第二个“对象”看起来像第一个时，它们也很有用。请参见
        {it:{help linestyle##remarks4:指定线条样式可以很方便}} 
        上面的示例。


{* lines, suppressing}{...}
{* outlines, suppressing}{...}
{* borders, suppressing}{...}
{marker remarks6}{...}
{title:抑制线条}

{pstd}
有时您想要抑制线条。例如，您可能想要删除绘图区周围的边框。有两种方法可以做到这一点：
您可以指定

	<{it:object}><{cmd:l} 或 {cmd:li} 或 {cmd:line}>{cmd:style(none)}

{pstd}
或者

{phang2}
	<{it:object}><{cmd:l} 或 {cmd:li} 或 {cmd:line}>{cmd:color(}{it:color}{cmd:)}

{pstd}
第一种通常效果良好；请参见
{it:{help axis_scale_options##remarks5:抑制坐标轴}}
在 {manhelpi axis_scale_options G-3} 中的示例。

{pstd}
然而，对于实心对象的轮廓，请记住线条是有厚度的。通过将其线条样式设置为 {cmd:none} 来删除轮廓，有时会使结果对象看起来太小，尤其是当对象本来就很小的时候。
在这种情况下，请指定

{phang2}
	<{it:object}><{cmd:l} 或 {cmd:li} 或 {cmd:line}>{cmd:color(}{it:color}{cmd:)}

{pstd}
并将轮廓颜色设置为与内部颜色相同。
{p_end}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <linestyle.sthlp>}