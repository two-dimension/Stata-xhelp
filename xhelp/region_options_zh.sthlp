{smcl}
{* *! version 1.1.13  19dec2018}{...}
{vieweralsosee "[G-3] region_options" "mansection G-3 region_options"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[G-4] areastyle" "help areastyle_zh"}{...}
{vieweralsosee "[G-4] colorstyle" "help colorstyle_zh"}{...}
{vieweralsosee "[G-4] linealignmentstyle" "help linealignmentstyle_zh"}{...}
{vieweralsosee "[G-4] linepatternstyle" "help linepatternstyle_zh"}{...}
{vieweralsosee "[G-4] linestyle" "help linestyle_zh"}{...}
{vieweralsosee "[G-4] linewidthstyle" "help linewidthstyle_zh"}{...}
{vieweralsosee "[G-4] marginstyle" "help marginstyle_zh"}{...}
{viewerjumpto "语法" "region_options_zh##syntax"}{...}
{viewerjumpto "描述" "region_options_zh##description"}{...}
{viewerjumpto "PDF 文档链接" "region_options_zh##linkspdf"}{...}
{viewerjumpto "选项" "region_options_zh##options"}{...}
{viewerjumpto "子选项" "region_options_zh##suboptions"}{...}
{viewerjumpto "备注" "region_options_zh##remarks"}
{help region_options:English Version}
{hline}{...}
{p2colset 1 25 27 2}{...}
{p2col:{bf:[G-3]} {it:region_options} {hline 2}}用于阴影和轮廓区域以及控制图表大小的选项{p_end}
{p2col:}({mansection G-3 region_options:查看完整的 PDF 手册条目}){p_end}
{p2colreset}{...}


{marker syntax}{...}
{title:语法}

{synoptset 30}{...}
{p2col:{it:region_options}}描述{p_end}
{p2line}
{p2col:{cmdab:ysiz:e:(}{it:#}{cmd:)}}可用区域的高度（以英寸为单位）
     {p_end}
{p2col:{cmdab:xsiz:e:(}{it:#}{cmd:)}}可用区域的宽度（以英寸为单位）
     {p_end}
{p2col:{cmdab:graphr:egion:(}{it:suboptions}{cmd:)}}图表区域的属性{p_end}
{p2col:{cmdab:plotr:egion:(}{it:suboptions}{cmd:)}}绘图区域的属性{p_end}
{p2line}
{p 4 6 2}
选项 {cmd:ysize()} 和 {cmd:xsize()} 是 {it:唯一的}；
选项 {cmd:graphregion()} 和 {cmd:plotregion()} 是 
{it:合并隐式的}；见 {help repeated options}。


{p2col:{it:suboptions}}描述{p_end}
{p2line}
{p2col:{cmdab:sty:le:(}{it:{help areastyle_zh}}{cmd:)}}外部区域的整体样式{p_end}
{p2col:{cmdab:c:olor:(}{it:{help colorstyle_zh}}{cmd:)}}外部区域的线条和填充颜色及透明度{p_end}
{p2col:{cmdab:fc:olor:(}{it:{help colorstyle_zh}}{cmd:)}}外部区域的填充颜色和透明度{p_end}
{p2col:{cmdab:ls:tyle:(}{it:{help linestyle_zh}}{cmd:)}}轮廓的整体样式{p_end}
{p2col:{cmdab:lc:olor:(}{it:{help colorstyle_zh}}{cmd:)}}轮廓的颜色和透明度{p_end}
{p2col:{cmdab:lw:idth:(}{it:{help linewidthstyle_zh}}{cmd:)}}轮廓的厚度{p_end}
{p2col:{cmdab:lp:attern:(}{it:{help linepatternstyle_zh}}{cmd:)}}轮廓模式（实线、虚线等）{p_end}
{p2col : {cmdab:la:lign:(}{it:{help linealignmentstyle_zh}}{cmd:)}}轮廓对齐方式（内部、外部、居中）{p_end}

{p2col:{cmdab:isty:le:(}{it:{help areastyle_zh}}{cmd:)}}内部区域的整体样式{p_end}
{p2col:{cmdab:ic:olor:(}{it:{help colorstyle_zh}}{cmd:)}}内部区域的线条和填充颜色及透明度{p_end}
{p2col:{cmdab:ifc:olor:(}{it:{help colorstyle_zh}}{cmd:)}}内部区域的填充颜色和透明度{p_end}
{p2col:{cmdab:ils:tyle:(}{it:{help linestyle_zh}}{cmd:)}}轮廓的整体样式{p_end}
{p2col:{cmdab:ilc:olor:(}{it:{help colorstyle_zh}}{cmd:)}}轮廓的颜色和透明度{p_end}
{p2col:{cmdab:ilw:idth:(}{it:{help linewidthstyle_zh}}{cmd:)}}轮廓的厚度{p_end}
{p2col:{cmdab:ilp:attern:(}{it:{help linepatternstyle_zh}}{cmd:)}}轮廓模式（实线、虚线等）{p_end}
{p2col : {cmdab:ila:lign:(}{it:{help linealignmentstyle_zh}}{cmd:)}}轮廓对齐方式（内部、外部、居中）{p_end}

{p2col:{cmdab:m:argin:(}{it:{help marginstyle_zh}}{cmd:)}}内部区域与外部区域之间的边距{p_end}
{p2line}
{p2colreset}{...}


{marker regions_image}{...}
{pstd}
可用区域、图表区域和绘图区域的定义

	{c TLC}{hline 41}{c TRC}
	{c |}{it:(外部图表区域)}             {it:边距}  {c |}
	{c |} {c TLC}{hline 37}{c TRC} {c |}
	{c |} {c |}{it:(内部图表区域)}                 {c |} {c |}    {it:标题显示在外部}
	{c |} {c |}                                     {c |} {c |}      {it:外部的边界}
	{c |} {c |}   {c TLC}{hline 28}{c TRC}    {c |} {c |}      {it:绘图区域}
	{c |} {c |}   {c |}{it:(外部绘图区域)}  {it:边距} {c |}    {c |} {c |}
	{c |} {c |}   {c |} {c TLC}{hline 24}{c TRC} {c |}    {c |} {c |}{...}
{col 56}{it:轴显示在}
	{c |} {c |}   {c |} {c |}                        {c |} {c |}    {c |} {c |}      {it:外部的边界}
	{c |}m{c |}   {c |}m{c |}                        {c |}m{c |}    {c |}m{c |}      {it:绘图区域}
	{c |}a{c |}   {c |}a{c |}                        {c |}a{c |}    {c |}a{c |}
	{c |}r{c |}   {c |}r{c |}    {it:(内部绘图}         {c |}r{c |}    {c |}r{c |}{...}
{col 56}{it:绘图显示在内部}
	{c |}g{c |}   {c |}g{c |}             {it:区域)}    {c |}g{c |}    {c |}g{c |}      {it:绘图区域}
	{c |}i{c |}   {c |}i{c |}                        {c |}i{c |}    {c |}i{c |}
	{c |}n{c |}   {c |}n{c |}                        {c |}n{c |}    {c |}n{c |}
	{c |} {c |}   {c |} {c |}                        {c |} {c |}    {c |} {c |}
	{c |} {c |}   {c |} {c BLC}{hline 24}{c BRC} {c |}    {c |} {c |}{...}
{col 56}{it:注意：所谓}
	{c |} {c |}   {c |}            {it:边距}          {c |}    {c |} {c |}{...}
{col 58}{it:"图表区域"和}
	{c |} {c |}   {c BLC}{hline 28}{c BRC}    {c |} {c |}{...}
{col 58}{it:"绘图区域"是}
	{c |} {c |}                                     {c |} {c |}{...}
{col 58}{it:有时是内部}
	{c |} {c |}                                     {c |} {c |}{...}
{col 58}{it:有时是}
	{c |} {c BLC}{hline 37}{c BRC} {c |}{...}
{col 58}{it:外部区域。}
	{c |}                  {it:边距}                 {c |}{...}
{col 58}
	{c BLC}{hline 41}{c BRC}{txt}{...}
{col 58}

	{it:可用区域和外部图表区域}
	{it:几乎重合；它们的不同之处在于}
	{it:边框的宽度。}

	{it:外部绘图或图表的边界}
	{it:有时被称为绘图或图表区域的外部边界。}


{marker description}{...}
{title:描述}

{pstd}
{it:region_options} 设置图表出现区域的大小、边距和颜色。


{marker linkspdf}{...}
{title:PDF 文档链接}

        {mansection G-3 region_optionsQuickstart:快速入门}

        {mansection G-3 region_optionsRemarksandexamples:备注和示例}

{pstd}
上述部分未包含在此帮助文件中。


{marker options}{...}
{title:选项}

{phang}
{cmd:ysize(}{it:#}{cmd:)} 和 {cmd:xsize(}{it:#}{cmd:)}
    以英寸为单位指定可用区域的高度和宽度。默认值通常为 {cmd:ysize(4)} 和 {cmd:xsize(5.5)}，但这当然受到方案的控制；见 {manhelp schemes G-4:方案简介}。这两个选项可以用来控制图表的整体纵横比。见下文 {it:{help region_options##remarks2:控制纵横比}}。

{phang}
{cmd:graphregion(}{it:suboptions}{cmd:)} 和
{cmd:plotregion(}{it:suboptions}{cmd:)}
    指定图表区域和绘图区域的属性。


{marker suboptions}{...}
{title:子选项}

{marker style()}{...}
{phang}
{cmd:style(}{it:areastyle}{cmd:)} 和
{cmd:istyle(}{it:areastyle}{cmd:)}
    指定外部和内部区域的整体样式。其他子选项允许您分别更改区域的属性，但 {cmd:style()} 和 {cmd:istyle()} 提供了起点。见 {manhelpi areastyle G-4} 获取选择列表。

{phang}
{cmd:color(}{it:colorstyle}{cmd:)} 和
{cmd:icolor(}{it:colorstyle}{cmd:)}
    指定用于描绘外部和内部区域的轮廓线的颜色和透明度；见 {manhelpi colorstyle G-4} 获取选择列表。

{phang}
{cmd:fcolor(}{it:colorstyle}{cmd:)} 和
{cmd:ifcolor(}{it:colorstyle}{cmd:)}
    指定外部和内部区域的填充颜色和透明度；见 {manhelpi colorstyle G-4} 获取选择列表。

{phang}
{cmd:lstyle(}{it:linestyle}{cmd:)} 和
{cmd:ilstyle(}{it:linestyle}{cmd:)}
    指定用于描绘外部和内部区域的轮廓线的整体样式，包括其模式（实线、虚线等）、厚度和颜色。下面列出的其他子选项允许您分别更改线条的属性，但 {cmd:lstyle()} 和 {cmd:ilstyle()} 是起点。见 {manhelpi linestyle G-4} 获取选择列表。

{phang}
{cmd:lcolor(}{it:colorstyle}{cmd:)} 和
{cmd:ilcolor(}{it:colorstyle}{cmd:)}
    指定用于描绘外部和内部区域的轮廓线的颜色和透明度；见 {manhelpi colorstyle G-4} 获取选择列表。

{phang}
{cmd:lwidth(}{it:linewidthstyle}{cmd:)} 和
{cmd:ilwidth(}{it:linewidthstyle}{cmd:)}
    指定用于描绘外部和内部区域的轮廓线的厚度；见 {manhelpi linewidthstyle G-4} 获取选择列表。

{phang}
{cmd:lpattern(}{it:linepatternstyle}{cmd:)} 和
{cmd:ilpattern(}{it:linepatternstyle}{cmd:)}
    指定用于描绘外部和内部区域的轮廓线是实线、虚线等；见 {manhelpi linepatternstyle G-4} 获取选择列表。

{phang}
{cmd:lalign(}{it:linealignmentstyle}{cmd:)} 和
{cmd:ilalign(}{it:linealignmentstyle}{cmd:)}
    指定用于描绘外部和内部区域的轮廓线是内部绘制、外部绘制还是居中；见 {manhelpi linealignmentstyle G-4} 获取选择列表。

{phang}
{cmd:margin(}{it:marginstyle}{cmd:)}
    指定外部和内部区域之间的边距；见 {manhelpi marginstyle G-4}。


{marker remarks}{...}
{title:备注}

{pstd}
备注内容以以下标题形式呈现：

	{help region_options##remarks1:设置轴和绘图区域之间的偏移}
	{help region_options##remarks2:控制纵横比}
	{help region_options##remarks3: suppressing the border around the plot region}
	{help region_options##remarks4:设置背景和填充颜色}
	{help region_options##remarks5:图表的构造方式}


{marker remarks1}{...}
{title:设置轴和绘图区域之间的偏移}

{* index offset between axes and data, setting}{...}
{pstd}
默认情况下，大多数方案（见 {manhelp schemes G-4:方案简介}）会将轴偏移到数据绘制区域。此偏移通过 {cmd:plotregion(margin(}{it:marginstyle}{cmd:))} 指定；见 {manhelpi marginstyle G-4}。

{pstd}
如果您不希望轴偏离绘图内容，则指定 {cmd:plotregion(margin(zero))}。对比

	{cmd:. sysuse auto}

	{cmd:. scatter price mpg}
	  {it:({stata "gr_example auto: scatter price mpg":点击运行})}
{* graph regopts1}{...}

{pstd}
与

	{cmd:. scatter price mpg, plotr(m(zero))}
	  {it:({stata "gr_example auto: scatter price mpg, plotr(m(zero))":点击运行})}
{* graph regopts2}{...}


{marker remarks2}{...}
{title:控制纵横比}

{* index aspect ratio, controlling}{...}
{pstd}
在这里我们讨论如何控制图表的整体纵横比。要控制 {helpb twoway}、{helpb graph bar}、{helpb graph box} 或 {helpb graph dot} 的绘图区域的纵横比，请参见 {manhelpi aspect_option G-3}。

{pstd}
控制整体图表的纵横比的方法是指定 {cmd:xsize()} 或 {cmd:ysize()} 选项。例如，您绘制了一幅图表，发现由于高度原因图表太宽。为了解决这个问题，可以增加 {cmd:ysize()} 或减少 {cmd:xsize()}。通常的默认值（这当然是由方案决定的；见 {manhelp schemes G-4:方案简介}）是 {cmd:ysize(4)} 和 {cmd:xsize(5.5)}，因此您可以尝试

	{cmd:. graph} ...{cmd:,} ... {cmd:ysize(5)}

{pstd}
或者

	{cmd:. graph} ...{cmd:,} ... {cmd:xsize(4.5)}

{pstd}
例如，对比

	{cmd:. scatter mpg weight}
	  {it:({stata "gr_example auto: scatter mpg weight":点击运行})}
{* graph mpgweight}{...}

{pstd}
与

	{cmd:. scatter mpg weight, ysize(5)}
	  {it:({stata "gr_example auto: scatter mpg weight, ysize(5)":点击运行})}
{* graph regopts3}{...}

{pstd}
控制纵横比的另一种方法是增加 {it:图表区域} 的外边距。这将保持图表的整体大小相同，同时使用更少的 {it:可用区域}。例如，

	{cmd:. scatter mpg weight, graphregion(margin(l+10 r+10))}
	  {it:({stata "gr_example auto: scatter mpg weight, graphregion(margin(l+10 r+10))":点击运行})}
{* graph regopts4}{...}

{pstd}
这种方法在使用 {cmd:graph,} {cmd:by()} 时尤其有用，但请记得在 {cmd:by()} 中指定 {cmd:graphregion(margin())} 选项，以便影响整个图表：

	{cmd:. scatter mpg weight, by(foreign, total graphr(m(l+10 r+10)))}
	  {it:({stata "gr_example auto: scatter mpg weight, by(foreign, total graphr(m(l+10 r+10)))":点击运行})}
{* graph regopts5}{...}

{pstd}
对比上面的情况

	{cmd:. scatter mpg weight, by(foreign, total)}
	  {it:({stata "gr_example auto: scatter mpg weight, by(foreign, total)":点击运行})}
{* graph regopts6}{...}

{pstd}
通过限制绘图区域本身的纵横比，您可以获得类似且通常更可取的效果；见 {manhelpi aspect_option G-3}。

{pstd}
您不必在第一次绘制图表时就正确设置纵横比或大小；使用 {cmd:graph} {cmd:display}，您可以更改已绘制图表的纵横比——即使是保存到 {cmd:.gph} 文件中的图表。见 {it:{help graph display##remarks1:更改大小和纵横比}} 在 {manhelp graph_display G-2:graph display} 中。


{marker remarks3}{...}
{title:消除绘图区域的边框}

{* index border around plot region, suppressing}{...}
{pstd}
要消除绘图区域的边框，请指定 {cmd:plotregion(style(none))}：

	{cmd:. sysuse auto, clear}

	{cmd:. scatter mpg weight, plotregion(style(none))}
	  {it:({stata "gr_example auto: scatter mpg weight, plotregion(style(none))":点击运行})}
{* graph regopts7}{...}


{marker remarks4}{...}
{title:设置背景和填充颜色}

{* index background color, setting}{* index fill color, setting}{...}
{pstd}
图表的背景颜色默认由您选择的方案决定——见 {manhelp schemes G-4:方案简介}——且通常为黑色或白色，可能带有阴影。选项 {cmd:graphregion(fcolor(}{it:colorstyle}{cmd:))} 允许您覆盖方案的选择。在这样做时，对于自然为白色的方案，选择浅色背景；对于自然为黑色的方案，选择深色背景；否则您会需要输入许多选项才能使您的图表看起来美观。

{pstd}
下面我们绘制一张使用浅灰色背景的图表：

	{cmd:. sysuse auto, clear}

	{cmd:. scatter mpg weight, graphregion(fcolor(gs13))}
	  {it:({stata `"gr_example auto: scatter mpg weight, graphregion(fcolor(gs13))"':点击运行})}
{* graph regopts8}{...}

{pstd}
见 {manhelpi colorstyle G-4} 获取有关您可以在 {cmd:graphregion(fcolor())} 选项中指定的内容的信息。

{pstd}
除了 {cmd:graphregion(fcolor())} 之外，还有另外三个填充颜色选项：

	{cmd:graphregion(ifcolor())}{col 34}{...}
填充内部图表区域       <-- {it:几乎没用}
{...}
	{cmd:plotregion(fcolor())}{col 34}{...}
填充外部绘图区域   <-- {it:有用}
{...}
	{cmd:plotregion(ifcolor())}{col 34}{...}
填充内部绘图区域   <-- {it:可能有用}

{pstd}
{cmd:plotregion(fcolor())} 值得记住。下面我们使绘图区域为浅灰色：

	{cmd:. scatter mpg weight, plotr(fcolor(gs13))}
	  {it:({stata `"gr_example auto: scatter mpg weight, plotr(fc(gs13))"':点击运行})}
{* graph regopts9}{...}

{pstd}
另外两个选项—— {cmd:graphregion(ifcolor())}
和
{cmd:plotregion(ifcolor())}——则填充内部图表区域和内部绘图区域。填充内部图表区域几乎没有意义。
填充内部绘图区域（与外部绘图区域相同，仅省略了内部绘图区域与轴之间的边距）通常会使图表显得过于繁琐。


{marker remarks5}{...}
{title:图表的构造方式}

{pstd}
{cmd:graph} 从外向内工作，因此绘图区域的尺寸是剩余的部分。

{pstd}
{cmd:graph} 以可用区域开始，其大小由 {cmd:xsize()} 和 {cmd:ysize()} 选项决定。
{cmd:graph} 在四个边上都缩进 {cmd:graphregion(margin())}，因此它定义了图表区域的外边框，其内部是
内部图表区域。

{pstd}
整体标题（如果有的话）现在放置在图表上，在四个边上，它们被分配所需的空间。接下来放置任何轴标题和标签，它们也被分配所需的空间。随后确定了绘图区域的外边框（或者更准确地说是外部绘图区域的边框）。

{pstd}
如果有轴，它将正好放置在该边框上。{cmd:graph} 现在在四个边上缩进 {cmd:plotregion(margin())}，这确定了绘图区域的内部边框，即内绘图区域的边框。在其中，数据会被绘制。

{pstd}
上述内容的一个含义是，如果使用 {cmd:plotregion(margin(zero))}，则轴不会偏离数据绘制的区域。

{pstd}
现在考虑绘制区域和用于阴影的填充颜色。

{pstd}
从可用区域开始，{cmd:graph} 绘制其边框，使用 {cmd:graphregion(lstyle())}——通常是 {cmd:graphregion(lstyle(none))}——并填充区域
使用 {cmd:graphregion(fcolor())}。

{pstd}
{cmd:graph} 现在转向图表区域的内部边框，使用 {cmd:graphregion(ilstyle())} 进行描边，并填充图表区域
使用 {cmd:graphregion(ifcolor())}。

{pstd}
{cmd:graph} 移动到绘图区域的外部边框，使用 {cmd:plotregion(lstyle())} 进行描边，并填充外部绘图区域
使用 {cmd:plotregion(fcolor())}。

{pstd}
最后，{cmd:graph} 移动到绘图区域的内部边框，使用 {cmd:plotregion(ilstyle())} 进行描边，并填充内绘图区域
使用 {cmd:plotregion(ifcolor())}。
{p_end}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <region_options.sthlp>}