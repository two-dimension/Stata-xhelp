{smcl}
{* *! version 1.1.6  19oct2017}{...}
{vieweralsosee "[G-4] areastyle" "mansection G-4 areastyle"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[G-3] region_options" "help region_options_zh"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[G-2] graph bar" "help graph_bar_zh"}{...}
{vieweralsosee "[G-2] graph pie" "help graph_pie_zh"}{...}
{vieweralsosee "[G-2] graph twoway area" "help twoway_area_zh"}{...}
{vieweralsosee "[G-2] graph twoway bar" "help twoway_bar_zh"}{...}
{vieweralsosee "[G-2] graph twoway rarea" "help twoway_rarea_zh"}{...}
{viewerjumpto "Syntax" "areastyle_zh##syntax"}{...}
{viewerjumpto "Description" "areastyle_zh##description"}{...}
{viewerjumpto "Links to PDF documentation" "areastyle_zh##linkspdf"}{...}
{viewerjumpto "Remarks" "areastyle_zh##remarks"}
{help areastyle:English Version}
{hline}{...}
{p2colset 1 20 22 2}{...}
{p2col:{bf:[G-4]} {it:areastyle} {hline 2}}区域外观的选择{p_end}
{p2col:}({mansection G-4 areastyle:查看完整的 PDF 手册条目}){p_end}
{p2colreset}{...}


{marker syntax}{...}
{title:语法}

{synoptset 20}{...}
{p2col : {it:areastyle}}描述{p_end}
{p2line}
{p2col : {cmd:background}}由方案决定{p_end}
{p2col : {cmd:foreground}}由方案决定{p_end}
{p2col : {cmd:outline}}{cmd:foreground} 描边无填充{p_end}
{p2col : {cmd:plotregion}}用于绘图区域的默认值{p_end}
{p2col : {cmd:histogram}}用于直方图条的默认值{p_end}
{p2col : {cmd:ci}}用于置信区间的默认值{p_end}
{p2col : {cmd:ci2}}用于第二个置信区间的默认值{p_end}
{p2col : {cmd:none}}无轮廓和背景颜色{p_end}

{p2col : {cmd:p1bar} - {cmd:p15bar}}用于第一到第十五个"条形"图{p_end}
{p2col : {cmd:p1box} - {cmd:p15box}}用于第一到第十五个"箱型"图{p_end}
{p2col : {cmd:p1pie} - {cmd:p15pie}}用于第一到第十五个"饼图"{p_end}
{p2col : {cmd:p1area} - {cmd:p15area}}用于第一到第十五个"区域"图{p_end}
{p2col : {cmd:p1} - {cmd:p15}}用于第一到第十五个"其他"类型图{p_end}
{p2line}
{p2colreset}{...}

{p 4 4 2}
其他 {it:areastyles} 可能可用；键入

	    {cmd:.} {bf:{stata graph query areastyle}}

{p 4 4 2}
以获取计算机上安装的所有 {it:areastyles} 的完整列表。


{marker description}{...}
{title:描述}

{pstd}
区域的形状由上下文决定。{it:areastyle} 确定区域是否需要描边和填充，如果需要，则以何种方式和颜色进行填充。


{marker linkspdf}{...}
{title:PDF 文档链接}

        {mansection G-4 areastyleRemarksandexamples:备注和示例}

{pstd}
上述部分未包含在此帮助文件中。


{marker remarks}{...}
{title:备注}

{pstd}
备注按以下标题提供：

	{help areastyle##remarks1:areastyles 概述}
	{help areastyle##remarks2:编号样式}
	{help areastyle##remarks3:使用编号样式}
	{help areastyle##remarks4:何时使用 areastyles}


{marker remarks1}{...}
{title:areastyles 概述}

{pstd}
{it:areastyle} 用于确定图形出现区域的外观

{phang}
1.  图形出现的整个区域{break}
    （请参见选项
    {helpb region_options##style():样式({it:areastyle})} 在 
    {manhelpi region_options G-3}）

{phang}
2.  条{break}
    （请参见选项
    {helpb barlook_options##bstyle():bstyle({it:areastyle})} 在
    {manhelpi barlook_options G-3}）

{phang}
3.  曲线下面填充的区域{break}
    （请参见选项
    {helpb barlook_options##bstyle():bstyle({it:areastyle})} 在
    {manhelpi barlook_options G-3}）

{phang}
4.  大多数其他封闭区域，例如 
    {help graph box:箱型图} 中的方框

{pstd}
有关使用 {it:areastyle} {cmd:none} 的示例，请参见
{it:{help region_options##remarks3:抑制绘图区域周围的边框}}
在 {manhelpi region_options G-3}。


{* index numbered styles}{...}
{marker remarks2}{...}
{title:编号样式}

{phang}
     {cmd:p1bar} - {cmd:p15bar} 是用于条形图的默认样式，包括 {helpb twoway bar:twoway bar} 图和 
        {help graph bar:条形图}。 {cmd:p1bar} 用于填充和勾勒第一组条形，{cmd:p2bar} 用于第二组，依此类推。

{phang}
     {cmd:p1box} - {cmd:p15box} 是用于 
        {help graph box:箱型图} 的默认样式。 {cmd:p1box} 用于填充和勾勒第一组方框，{cmd:p2box} 用于第二组，依此类推。

{phang}
     {cmd:p1pie} - {cmd:p15pie} 是用于 
        {help graph pie:饼图} 的默认样式。 {cmd:p1pie} 用于填充第一片饼，{cmd:p2pie} 用于第二片，依此类推。

{phang}
     {cmd:p1area} - {cmd:p15area} 是用于区域图的默认样式，包括 
        {helpb twoway area:twoway area} 图和 
        {helpb twoway rarea:twoway rarea} 图。 {cmd:p1area} 用于填充和勾勒第一填充区域，{cmd:p2area} 用于第二个，依此类推。

{phang}
     {cmd:p1} - {cmd:p15} 是用于其他图类型的默认区域样式，包括
	{helpb twoway dropline} 图、
        {helpb twoway spike} 图、
        {helpb twoway rspike} 图、
        {helpb twoway rcap} 图、
        {helpb twoway rcapsym} 图，以及
        {helpb twoway rline} 图。    
        {cmd:p1} 用于填充和勾勒第一个图形，
        {cmd:p2} 用于第二个，依此类推。 对于上述所有图形，仅绘制线条，因此阴影设置无效。


{marker remarks3}{...}
{title:使用编号样式}

{pstd}
        由编号样式定义的外观，例如 {cmd:p1bar} 和
        {cmd:p2area}，由所选的 {help schemes_zh:方案} 决定。我们所指的“外观”包括颜色、线条宽度和使用的图案。

{pstd}
        编号样式提供了默认的“外观”，可以通过方案进行控制。当您希望让图表中的第三个元素看起来像第一个时，它们也会很有用。例如，您可以通过指定选项 
        {cmd:barstyle(3, bstyle(p1bar))} 来指定在条形图上第三个条形与第一个条形使用相同的样式。


{marker remarks4}{...}
{title:何时使用 areastyles}

{pstd}
您通常可以通过指定 {it:areastyle} 或使用更具体的选项，例如 {cmd:fcolor()} 或 {cmd:lwidth()} 来获得相同的结果，这些选项可以改变 areastyle 的组件——填充颜色和轮廓属性。您甚至可以指定一个 {it:areastyle} 作为基准，然后通过使用更具体的选项来修改属性。通常指定影响仅填充颜色或一个轮廓特征的选项要比指定一个 {it:areastyle} 更简单。然而，如果您希望使图形上的多个元素看起来相同，指定整体 {it:areastyle} 可能更为合适。
{p_end}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <areastyle.sthlp>}