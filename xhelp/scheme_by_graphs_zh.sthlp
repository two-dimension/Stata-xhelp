{smcl}
{* *! version 1.0.4  11feb2011}{...}
{vieweralsosee "scheme graph shared" "help scheme graph shared"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "scheme files" "help scheme files"}
{help scheme_by_graphs:English Version}
{hline}{...}
{title:控制图形的方案条目}

{p 3 3 2}
这些设置控制通过 {help by_option_zh:by()} 选项生成的由图的整体外观。

{p 3 3 2}
条目按以下标题呈现：

{p 8 12 0}{help scheme_by_graphs##remarks1:图形区域}{p_end}
{p 8 12 0}{help scheme_by_graphs##remarks2:绘图区域}{p_end}
{p 8 12 0}{help scheme_by_graphs##remarks3:由图的构建}

{p 3 3 2}
此外，由图的一些外观特性与所有其他图形共享；有关更改这些设置的信息，请参见 {help scheme graph shared}。


{marker remarks1}{...}
{title:图形区域}

{p2colset 4 42 45 0}{...}
{p 3 3 2}
这些条目指定整个由图绘制的区域的外观。

{p2col:条目} 描述{p_end}
{p2line}
{p2col:{cmd:areastyle bygraph}       {space 7}{it:{help areastyle_zh}}}
	整体图形区域；通常默认值是 {cmd:background} (*){p_end}
{p2col:{cmd:areastyle inner_bygraph} {space 1}{it:{help areastyle_zh}}}
	内部图形区域；通常默认值是 {cmd:none} (*){p_end}
{p2line}
{p 3 7 0}(*) 复合条目。


{marker remarks2}{...}
{title:绘图区域}

{p2colset 4 50 53 0}{...}
{p 3 3 2}
这些条目指定由图的绘图区域的外观。对于由图，绘图区域是绘制各个图形的区域。

{p2col:条目} 描述{p_end}
{p2line}
{p2col:{cmd:areastyle       {space 0}bygraph_plotregion}  {space 1}{it:{help areastyle_zh}}}
	整体绘图区域的样式；通常默认值是 {cmd:none} (*){p_end}
{p2col:{cmd:areastyle       {space 0}bygraph_iplotregion} {space 0}{it:{help areastyle_zh}}}
	内部绘图区域的样式；通常默认值是 {cmd:none} (*){p_end}
{p2col:{cmd:margin          {space 11}bygraph}    {space 4}{it:{help marginstyle_zh}}}
	绘图区域的边距{p_end}
{p2col:{cmd:plotregionstyle {space 2}bygraph}     {space 4}{it:{help plotregionstyle_zh}}}
	绘图区域整体样式；通常默认值是 {cmd:bygraph} (*){p_end}
{p2line}
{p 3 7 0}(*) 复合条目。


{marker remarks3}{...}
{title:由图的构建}

{p2colset 4 37 40 0}{...}
{p 3 3 2}
这些条目控制由图的创建方式，包括坐标轴、标题以及文本和符号的缩放。

{p2col:条目} 描述{p_end}
{p2line}
{p2col:{cmd:yesno by_indiv_yrescale}    {space 0}{{cmd:yes}|{cmd:no}}}
	对每个子图的 {it:y} 轴进行缩放；如果选择 {cmd:yes}，通常也应指定 {break}
	{cmd:yesno by_indiv_yaxes yes}{p_end}
{p2col:{cmd:yesno by_indiv_xrescale}    {space 0}{{cmd:yes}|{cmd:no}}}
	对每个子图的 {it:x} 轴进行缩放；如果选择 {cmd:yes}，通常也应指定 {break}
	{cmd:yesno by_indiv_xaxes yes}{p_end}

{p2col:{cmd:yesno by_outer_yaxes}       {space 3}{{cmd:yes}|{cmd:no}}}
	在子图的左侧或右侧（通常为左侧）列上创建 {it:y} 轴{p_end}
{p2col:{cmd:yesno by_outer_xaxes}       {space 3}{{cmd:yes}|{cmd:no}}}
	在子图的底部或顶部（通常为底部）行上创建 {it:x} 轴{p_end}
{p2col:{cmd:yesno by_indiv_yaxes}       {space 3}{{cmd:yes}|{cmd:no}}}
	在每个单独的子图上创建 {it:y} 轴{p_end}
{p2col:{cmd:yesno by_indiv_xaxes}       {space 3}{{cmd:yes}|{cmd:no}}}
	在每个单独的子图上创建 {it:x} 轴{p_end}
{p2col:{cmd:yesno by_edgelabel}         {space 5}{{cmd:yes}|{cmd:no}}}
        对于距离子图行或列的边缘最近的子图，在即使图形没有完全填满行或列的情况下也创建坐标轴{p_end}

{p2col:{cmd:yesno by_outer_ytitles}     {space 1}{{cmd:yes}|{cmd:no}}}
	使用编号标题对一组子图的 {it:y} 轴进行总体命名{p_end}
{p2col:{cmd:yesno by_outer_xtitles}     {space 1}{{cmd:yes}|{cmd:no}}}
	使用编号标题对一组子图的 {it:x} 轴进行总体命名{p_end}
{p2col:{cmd:yesno by_indiv_ytitles}     {space 1}{{cmd:yes}|{cmd:no}}}
	分别为每个创建的 {it:y} 轴命名{p_end}
{p2col:{cmd:yesno by_indiv_xtitles}     {space 1}{{cmd:yes}|{cmd:no}}}
	分别为每个创建的 {it:x} 轴命名{p_end}

{p2col:{cmd:yesno by_indiv_ylabels}     {space 1}{{cmd:yes}|{cmd:no}}}
	在 {it:y} 轴上显示刻度标签{p_end}
{p2col:{cmd:yesno by_indiv_xlabels}     {space 1}{{cmd:yes}|{cmd:no}}}
	在 {it:x} 轴上显示刻度标签{p_end}
{p2col:{cmd:yesno by_indiv_yticks}      {space 2}{{cmd:yes}|{cmd:no}}}
	在 {it:y} 轴上显示刻度{p_end}
{p2col:{cmd:yesno by_indiv_xticks}      {space 2}{{cmd:yes}|{cmd:no}}}
	在 {it:x} 轴上显示刻度{p_end}

{p2col:{cmd:yesno indiv_as_whole}       {space 3}{{cmd:yes}|{cmd:no}}}
        将整个子图放置在由图中，而不是作为单独的组件
        （绘图区域、坐标轴等）；通常，当 {cmd:indiv_as_whole} 设置为
        {cmd:yes} 时，其他单独设置也应设置为 {cmd:yes}{p_end}

{p2colset 4 40 40 0}{...}
{p2col:{cmd:yesno by_shrink_plotregion} {space 0}{{cmd:yes}|{cmd:no}}}缩小
	与子图相关的图形对象（文本、标记等），就好像子图是完整的图形；不常指定{p_end}

{p2colset 4 37 40 0}{...}
{p2col:{cmd:margin {space 1}by_indiv}    {space 3}{it:{help marginstyle_zh}}}
	单独图形的边距{p_end}

{p2col:{cmd:bygraphstyle bygraph}    {space 3}{it:{help bystyle_zh}}}
	由图的整体样式 (*){p_end}
{p2line}
{p 3 7 0}(*) 复合条目。大多数随 Stata 附带的方案将
{it:bystyle} 设置为 {cmd:default}；如果某方案为 {it:bystyle} 指定了不同的复合样式，则表格中的其他一些设置可能会被忽略或覆盖。{p_end}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <scheme_by_graphs.sthlp>}