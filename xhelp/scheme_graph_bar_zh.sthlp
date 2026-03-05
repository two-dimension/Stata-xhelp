{smcl}
{* *! version 1.0.5  01mar2017}{...}
{vieweralsosee "方案条形图" "help scheme bar plots"}{...}
{vieweralsosee "方案图形共享" "help scheme graph shared"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "方案文件" "help scheme files"}
{help scheme_graph_bar:English Version}
{hline}{...}
{title:控制由 graph bar 绘制的图形的方案条目}

{p 3 3 2}
这些设置控制使用 {helpb graph bar} 和 {helpb graph hbar} 绘制的图形的整体外观；它们不影响使用 {helpb twoway bar} 绘制的图形。

{p 3 3 2}
条目分为以下几类：

{p 8 12 0}{help scheme_graph_bar##remarks1:图形条形图的绘图区域}{p_end}
{p 8 12 0}{help scheme_graph_bar##remarks2:图形水平条形图的绘图区域}{p_end}
{p 8 12 0}{help scheme_graph_bar##remarks3:添加条形标签}{p_end}
{p 8 12 0}{help scheme_graph_bar##remarks4:条形之间的间隙}{p_end}
{p 8 12 0}{help scheme_graph_bar##remarks5:条形组的整体外观}

{p 3 3 2}
有关控制 {cmd:graph bar}、{cmd:graph hbar} 和 {cmd:twoway bar} 绘制的条形外观的条目，请参见 {help scheme bar plots}。此外，条形图的某些外观特征与所有其他图形共享；有关更改这些设置的信息，请参见 {help scheme graph shared}。

{marker remarks1}{...}
{space 3}{title:图形条形图的绘图区域}

{p2colset 4 49 52 0}{...}
{p 3 3 2}
这些条目指定了 {helpb graph bar} 的绘图区域的外观。

{p2col:条目} 描述{p_end}
{p2line}
{p2col:{cmd:areastyle       {space 0}bar_plotregion}     {space 4}{it:{help areastyle_zh}}}
	整体绘图区域风格；
	通常默认的 {it:areastyle} 是 
	{helpb scheme plotregion def:plotregion} (*){p_end}
{p2col:{cmd:areastyle       {space 0}bar_iplotregion}    {space 3}{it:{help areastyle_zh}}}
	内部绘图区域风格；通常默认值为 {cmd:none} (*){p_end}
{p2col:{cmd:margin          {space 9}bargraph}          {space 4}{it:{help marginstyle_zh}}}
	绘图区域边距{p_end}
{p2col:{cmd:plotregionstyle {space 0}bargraph}    {space 4}{it:{help plotregionstyle_zh}}}
	绘图区域整体风格；通常默认值为 {cmd:plotregion} (*){p_end}
{p2line}
{p 3 7 0}(*) 复合条目。


{marker remarks2}{...}
{space 3}{title:图形水平条形图的绘图区域}

{p2colset 4 49 52 0}{...}
{p 3 3 2}
这些条目指定了 {helpb graph hbar} 的绘图区域的外观。

{p2col:条目} 描述{p_end}
{p2line}
{p2col:{cmd:areastyle       {space 0}hbar_plotregion}    {space 3}{it:{help areastyle_zh}}}
	整体绘图区域风格 (*){p_end}
{p2col:{cmd:areastyle       {space 0}hbar_iplotregion}   {space 2}{it:{help areastyle_zh}}}
	内部绘图区域风格 (*){p_end}
{p2col:{cmd:margin          {space 9}hbargraph}    {space 3}{it:{help marginstyle_zh}}}
	绘图区域边距{p_end}
{p2col:{cmd:plotregionstyle {space 0}hbargraph}   {space 3}{it:{help plotregionstyle_zh}}}
	绘图区域整体风格 (*){p_end}
{p2line}
{p 3 7 0}(*) 复合条目。


{marker remarks3}{...}
{title:添加的条形标签}

{p2colset 4 37 40 0}{...}
{p 3 3 2}
这些条目决定使用 {cmd:blabel()} 命令添加的条形标签的外观。

{p2col:条目} 描述{p_end}
{p2line}
{p2col:{cmd:barlabelpos bar}   {space 4}{it:labelpos}} 
        添加标签在条形图上的位置； {it:labelpos} 可以是
        {cmd:inside}、{cmd:outside}、{cmd:center} 或 {cmd:base}；
	其他样式可能可用；键入{break}
	{stata graph query barlabelpos} 以查看完整列表{p_end}
{p2col:{cmd:barlabelstyle bar} {space 2}{it:labeltype}} 
        条形的默认标记； {it:labeltype} 可以是 {cmd:none}、
        {cmd:bar}、{cmd:total}、{cmd:name} 或 {cmd:group}；参见 
	{manhelpi blabel_option G-3} 以获取更多信息；其他样式可能可用；键入{break} 
        {stata graph query barlabelstyle} 以查看完整列表{p_end}
{p2col:{cmd:gsize {space 0}barlabel_gap}         {space 0}{it:{help textsizestyle_zh}}}
	条形与其标签之间的距离{p_end}
{p2line}


{marker remarks4}{...}
{title:条形之间的间隙}

{p2colset 4 32 35 0}{...}
{p 3 3 2}
这些条目指定条形图中条形之间间隙的大小。所有 {it:#} 的值都是条形宽度的百分比。

{p2col:条目} 描述{p_end}
{p2line}
{p2col:{cmd:relsize bar_gap}      {space 8}{it:#}}
	不在 {cmd:over()} 组中的条形之间的距离{p_end}
{p2col:{cmd:relsize bar_groupgap} {space 3}{it:#}}
	第一 {cmd:over()} 组中的条形之间的距离{p_end}
{p2col:{cmd:relsize bar_supgroupgap} {space 0}{it:#}}
	第二 {cmd:over()} 组中的条形之间的距离{p_end}
{p2col:{cmd:relsize bar_outergap} {space 3}{it:#}}
	最外侧条形与绘图区域的左、右边界之间的距离{p_end}
{p2line}


{marker remarks5}{...}
{title:条形组的整体外观}

{p2colset 4 37 40 0}{...}
{p 3 3 2}
该复合条目控制条形组的整体外观。它应很少被更改；而是更改其他条目的各个元素。{break} 
键入 {stata graph query barstyle} 以查看可用的 {it:barstyle} 选项。

{p2col:条目} 描述{p_end}
{p2line}
{p2col:{cmd:barstyle default}     {space 2}{it:barstyle}}
	条形组的整体外观{p_end}
{p2line}
{p2colreset}{...}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <scheme_graph_bar.sthlp>}