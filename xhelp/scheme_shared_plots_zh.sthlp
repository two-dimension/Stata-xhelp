{smcl}
{* *! version 1.0.4  11feb2011}{...}
{vieweralsosee "scheme files" "help scheme files"}
{help scheme_shared_plots:English Version}
{hline}{...}
{title:共享默认绘图条目 {c -} 所有绘图类型的默认值}

{p2colset 4 45 48 0}{...}
{p 3 3 2}
这些条目控制所有未在方案中包含特定绘图类型控制外观的绘图的外观，例如{help scheme scatter plots}或{help scheme bar plots}中的条目。它们提供默认设置，通常在方案中未提供更具体的设置时适用。对于许多方案，改变这些条目会改变所有绘图的外观，而不管绘图类型是什么，例如{helpb twoway scatter}、{helpb twoway area}等。有关绘图条目的讨论，请参见{help scheme files}第3节，{bf:绘图条目}。

{p2col:条目} 描述{p_end}
{p2line}
{p2col:{cmd:color       {space 6}p}{it:#}                {space 9}{it:{help colorstyle_zh}}}
	第 # 次绘图的所有图形元素的颜色{p_end}
{p2col:{cmd:linewidth   {space 2}p}                      {space 10}{it:{help linewidthstyle_zh:linewidth}}}
	所有图形系列、绘图类型和绘图的所有线条的默认厚度，除了条形轮廓{p_end}
{p2col:{cmd:linewidth   {space 2}p}{it:#}                {space 9}{it:{help linewidthstyle_zh:linewidth}}}
	第 # 次绘图的所有线条的线宽，除了条形轮廓{p_end}
{p2col:{cmd:linepattern {space 0}p}                      {space 10}{it:{help linewidthstyle_zh:linewidth}}}
	所有图形系列、绘图类型和绘图的所有线条的默认模式{p_end}
{p2col:{cmd:linepattern {space 0}p}{it:#}                {space 9}{it:{help linepatternstyle_zh}}}
	第 # 次绘图的所有线条的线条模式{p_end}

{p2col:{cmd:intensity   {space 2}p}                      {space 10}{it:{help linewidthstyle_zh:linewidth}}}
	所有图形系列、绘图类型和绘图的填充区域的默认强度{p_end}
{p2col:{cmd:intensity   {space 2}p}{it:#}{cmd:shade}     {space 4}{it:{help intensitystyle_zh}}}
	第 # 次绘图的某些填充区域的强度{p_end}

{p2col:{cmd:symbol      {space 5}p}                     {space 10}{it:{help symbolstyle_zh}}}
	所有绘图的默认标记符号{p_end}
{p2col:{cmd:symbol      {space 5}p}{it:#}               {space 9}{it:{help symbolstyle_zh}}}
	第 # 次绘图的标记符号{p_end}
{p2col:{cmd:symbolsize  {space 1}p}                     {space 10}{it:{help markersizestyle_zh}}}
	所有绘图的标记符号的默认大小{p_end}
{p2col:{cmd:symbolsize  {space 1}p}{it:#}               {space 9}{it:{help markersizestyle_zh}}}
	第 # 次绘图的标记符号的大小{p_end}
{p2line}
{p2colreset}{...}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <scheme_shared_plots.sthlp>}