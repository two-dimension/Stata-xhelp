{smcl}
{* *! version 1.0.4  11feb2011}{...}
{vieweralsosee "scheme scatter plots" "help scheme scatter plots"}{...}
{vieweralsosee "scheme shared plots" "help scheme shared plots"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "scheme files" "help scheme files"}
{help scheme_connected_plots:English Version}
{hline}{...}
{title:连接图的方案条目}

{p 3 3 2}
这些图形方案条目控制 {helpb twoway connected} 图的外观。有关图表条目的总体讨论，请参见 {it:{help scheme_files##remarks3:Plot entries}} 在 {help scheme files} 中。

{p 3 3 2}
这些条目分为以下几类：

{p 8 12 0}{help scheme_connected_plots##remarks1:主要连接图条目}{p_end}
{p 8 12 0}{help scheme_connected_plots##remarks2:连接图的复合条目}{p_end}


{marker remarks1}{...}
{title:连接图的主要条目}

{p2colset 4 42 45 0}{...}
{p 3 3 2}
这些条目通常用于更改连接图的外观。它们通常与 {helpb twoway scatter} 图共享，当这些图使用 {cmd:connect()} 选项时。

{p2col:条目} 描述{p_end}
{p2line}
{p2col:{cmd:color       {space 6}p}{it:#}{cmd:line}     {space 2}{it:{help colorstyle_zh}}}
	第 # 个图的连接线颜色{p_end}
{p2col:{cmd:linewidth   {space 2}p}{it:#}{cmd:}         {space 6}{it:{help linewidthstyle_zh:linewidth}}}
	第 # 个图的连接线粗细{p_end}
{p2col:{cmd:linepattern {space 0}p}{it:#}{cmd:line}     {space 2}{it:{help linepatternstyle_zh}}}
	第 # 个图的连接线图案{p_end}

{p2col:{cmd:yesno       {space 6}pcmissings}            {space 0}{{cmd:yes}|{cmd:no}}}
        对于是否连接缺失值观测的线的默认设置（{cmd:yes}）或在该线中留有间隙（{cmd:no}） (#){p_end}
{p2col:{cmd:yesno       {space 6}p}{it:#}{cmd:cmissings} {space 0}{{cmd:yes}|{cmd:no}}}
        对于第 {it:#} 个图的缺失值观测连接线的设置（{cmd:yes}）或在该线中留有间隙（{cmd:no}） (#){p_end}

{p2col:{cmd:connectstyle {space 0}p}                     {space 6}{it:{help connectstyle_zh}}}
	所有图的默认 {it:connectstyle}{p_end}
{p2col:{cmd:connectstyle {space 0}p}{it:#}               {space 5}{it:{help connectstyle_zh}}}
	第 # 个图的 {it:connectstyle}{p_end}
{p2line}
{p 3 3 2}(#) 与 {help scheme line plots:线性图} 共享的设置

{p 3 3 2}
有关控制标记外观的条目，请参见 {help scheme scatter plots}。

{p 3 3 2}
如果方案不包含上述某些特定于连接图的条目，则连接图的这些元素的外观由所有图类型之间共享的默认条目决定；请参见 {help scheme shared plots}。


{marker remarks2}{...}
{title:连接图的复合条目}

{p2colset 4 42 45 0}{...}
{p 3 3 2}
对于大多数随 Stata 附带的方案，这些复合条目的样式为 {cmd:p}{it:#} （其中 {it:#} 是图的编号）；在这种情况下，上表中显示的各个属性条目控制区域图的特征。然而，如果更改了复合条目的样式，则可能也会更改影响区域图的各个属性覆盖条目。请参见 {help scheme_files##remarks4:Composite entries} 中的讨论 {help scheme files}。

{p 3 3 2}
与标记和整体 {it:pstyle} 相关的条目通常与散点图共享。

{p2col:条目} 描述{p_end}
{p2line}
{p2col:{cmd:linestyle   {space 2}p}{it:#}{cmd:connect} {space 0}{it:{help linestyle_zh}}}
	第 # 个连接图的连接 {it:linestyle}{p_end}

{p2col:{cmd:linestyle   {space 2}p}{it:#}{cmd:mark}    {space 3}{it:{help linestyle_zh}}}
	第 # 个散点图的标记轮廓 {it:linestyle}； 默认样式为 {cmd:p#mark}{p_end}
{p2col:{cmd:markerstyle {space 0}p}{it:#}              {space 7}{it:{help linestyle_zh}}}
	第 # 个散点图的标记样式{p_end}
{p2col:{cmd:seriesstyle {space 0}p}{it:#}              {space 7}{it:{help pstyle_zh}}}
	第 # 个散点图的 {it:pstyle}{p_end}
{p2line}
{p2colreset}{...}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <scheme_connected_plots.sthlp>}