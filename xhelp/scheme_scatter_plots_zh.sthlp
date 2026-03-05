{smcl}
{* *! version 1.0.4  11feb2011}{...}
{vieweralsosee "scheme files" "help scheme files"}
{help scheme_scatter_plots:English Version}
{hline}{...}
{title:散点图方案条目}

{p 3 3 2}
这些图形方案条目控制 {helpb twoway scatter} 的外观以及 {helpb twoway connected} 图的标记。请参阅 {it:{help scheme files##remarks3:Plot entries}} 以获取有关图表条目的一般讨论。

{p 3 3 2}
条目在以下标题下进行介绍：

{p 8 12 0}{help scheme_scatter_plots##remarks1:散点图的主要条目}{p_end}
{p 8 12 0}{help scheme_scatter_plots##remarks2:散点图的次要条目}{p_end}
{p 8 12 0}{help scheme_scatter_plots##remarks3:散点图的组合条目}{p_end}
{p 8 12 0}{help scheme_scatter_plots##remarks4:散点图的次要组合条目}{p_end}

{marker remarks1}{...}
{title:散点图的主要条目}

{p2colset 4 45 48 0}{...}
{p 3 3 2}
这些条目通常用于改变散点图和连线图标记的外观。

{p2col:条目} 描述{p_end}
{p2line}
{p2col:{cmd:symbol      {space 5}p}                     {space 10}{it:{help symbolstyle_zh}}}
	所有图表的默认标记符号{p_end}
{p2col:{cmd:symbol      {space 5}p}{it:#}               {space 9}{it:{help symbolstyle_zh}}}
	第 # 个图的标记符号{p_end}
{p2col:{cmd:symbolsize  {space 1}p}                     {space 10}{it:{help markersizestyle_zh}}}
	所有图表的默认标记符号大小{p_end}
{p2col:{cmd:symbolsize  {space 1}p}{it:#}               {space 9}{it:{help markersizestyle_zh}}}
	第 # 个图的标记符号大小{p_end}
{p2col:{cmd:color       {space 6}p}{it:#}{cmd:markline} {space 1}{it:{help colorstyle_zh}}}
	第 # 个图的标记符号的线条颜色{p_end}
{p2col:{cmd:linewidth   {space 2}p}{it:#}{cmd:mark}     {space 5}{it:{help linewidthstyle_zh:linewidth}}}
	第 # 个图的标记符号的线条粗细{p_end}
{p2col:{cmd:color       {space 6}p}{it:#}{cmd:markfill} {space 1}{it:{help colorstyle_zh}}}
	第 # 个图的标记符号的填充颜色{p_end}

{p2col:{cmd:gsize       {space 6}p}{cmd:label}          {space 5}{it:{help textsizestyle_zh}}}
	所有图表的标记标签的默认文本大小{p_end}
{p2col:{cmd:gsize       {space 6}p}{it:#}{cmd:label}    {space 4}{it:{help textsizestyle_zh}}}
	第 # 个图的标记标签的文本大小{p_end}
{p2col:{cmd:color       {space 6}p}{cmd:label}          {space 5}{it:{help colorstyle_zh}}}
	所有图表的标记标签的默认文本颜色{p_end}
{p2col:{cmd:color       {space 6}p}{it:#}{cmd:label}    {space 4}{it:{help colorstyle_zh}}}
	第 # 个图的标记标签的文本颜色{p_end}
{p2col:{cmd:clockdir    {space 3}p}                     {space 10}{it:{help clockpos}}}
	所有图表的标记标签的默认位置{p_end}
{p2col:{cmd:clockdir    {space 3}p}{it:#}               {space 9}{it:{help clockpos}}}
	第 # 个图的标记标签的位置{p_end}
{p2col:{cmd:gsize       {space 6}label_gap}             {space 2}{it:{help textsizestyle_zh}}}
	标记与其标签之间的距离{p_end}

{p2col:{cmd:numstyle    {space 3}max_wted_symsize}      {space 2}{it:#}}
	影响加权散点图中符号的最大尺寸；很少使用{p_end}
{p2line}

{p 3 3 2}
在散点图中指定了 {cmd:connect()} 选项时，连线的外观与 {helpb twoway connected} 图共享；请参阅 {bf:连线图的主要条目} 在 {help scheme connected plots} 中获取这些条目。

{p 3 3 2}
如果方案中未包含某些散点图特定条目，散点图的这些元素的外观将由所有图类型共享的默认条目决定；请参阅 {help scheme shared plots}。

{marker remarks2}{...}
{title:散点图的次要条目}

{p2colset 4 45 48 0}{...}
{p 3 3 2}
除了散点图类型外，散点图条目还作为某些使用区域填充或其他图形元素的图的默认外观。以下条目指定了这些图的外观。通常，这些条目很少使用。

{p2col:条目} 描述{p_end}
{p2line}
{p2col:{cmd:color       {space 6}p}{it:#}{cmd:shade}     {space 4}{it:{help colorstyle_zh}}}
	第 # 个散点图的区域填充颜色{p_end}
{p2col:{cmd:intensity   {space 2}p}{it:#}{cmd:shade}     {space 4}{it:{help intensitystyle_zh}}}
	第 # 个散点图的区域填充 {it:intensitystyle}{p_end}
{p2col:{cmd:linewidth   {space 2}p}{it:#}{cmd:other}     {space 4}{it:{help linewidthstyle_zh:linewidth}}}
	第 # 个散点图或其他图的区域填充的轮廓厚度；很少使用{p_end}
{p2col:{cmd:linepattern {space 0}p}{it:#}{cmd:other}     {space 4}{it:{help linepatternstyle_zh}}}
	第 # 个散点图的区域填充的轮廓样式；很少使用{p_end}
{p2col:{cmd:color       {space 6}p}{it:#}{cmd:otherline} {space 0}{it:{help colorstyle_zh}}}
	第 # 个散点图的区域填充的轮廓颜色{p_end}
{p2line}

{marker remarks3}{...}
{title:散点图的组合条目}

{p2colset 4 38 41 0}{...}
{p 3 3 2}
对于大多数随 Stata 附带的方案，这些组合条目的样式为 {cmd:p}{it:#}（其中 {it:#} 是图的编号）；在这种情况下，上述表中显示的各个属性条目控制散点图的特征。然而，如果组合条目的样式更改，影响散点图的各个属性覆盖条目也可能会更改。请参阅 {it:{help scheme files##remarks4:Composite entries}} 中的讨论。

{p 3 3 2}
这些条目通常与连线图共享。

{p2col:条目} 描述{p_end}
{p2line}
{p2col:{cmd:linestyle    {space 3}p}{it:#}{cmd:mark} {space 1}{it:{help linestyle_zh}}}
	第 # 个散点图的标记轮廓 {it:linestyle}；默认样式为 {cmd:p#mark}{p_end}
{p2col:{cmd:markerstyle  {space 1}p}{it:#}           {space 5}{it:{help markerstyle_zh}}}
	第 # 个散点图的标记样式{p_end}
{p2col:{cmd:textboxstyle {space 0}p}{it:#}      {space 5}{it:{help textstyle_zh}}}
	第 # 个图的标记标签的 {it:textstyle}{p_end}
{p2col:{cmd:labelstyle   {space 2}p}{it:#}      {space 5}{it:{help labelstyle_zh}}}
	第 # 个图的标记标签的 {it:labelstyle}{p_end}
{p2col:{cmd:seriesstyle  {space 1}p}{it:#}            {space 5}{it:{help pstyle_zh}}}
	第 # 个散点图的整体 {it:pstyle}{p_end}
{p2line}

{marker remarks4}{...}
{title:散点图的次要组合条目}

{p2colset 4 40 43 0}{...}
{p 3 3 2}
对于大多数随 Stata 附带的方案，这些组合条目的样式为 {cmd:p}{it:#}（其中 {it:#} 是图的编号）；在这种情况下，上述表中显示的各个属性条目控制图的特征。然而，如果组合条目的样式更改，影响散点图的各个属性条目也可能会更改。请参阅 {it:{help scheme files##remarks4:Composite entries}} 中的讨论。

{p2col:条目} 描述{p_end}
{p2line}

{p2col:{cmd:linestyle   {space 1}p}{it:#}{cmd:connect} {space 1}{it:{help linestyle_zh}}}
	第 # 个图的连接 {it:linestyle}{p_end}
{p2col:{cmd:linestyle   {space 3}p}{it:#}{cmd:other} {space 1}{it:{help linestyle_zh}}}
	第 # 个图的区域轮廓样式{p_end}
{p2col:{cmd:shadestyle  {space 2}p}{it:#}{cmd:other} {space 1}{it:{help shadestyle_zh}}}
	第 # 个图的区域 {it:shadestyle}{p_end}
{p2line}
{p2colreset}{...}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <scheme_scatter_plots.sthlp>}