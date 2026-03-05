{smcl}
{* *! version 1.0.4  11feb2011}{...}
{vieweralsosee "scheme shared plots" "help scheme shared plots"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "scheme files" "help scheme files"}
{help scheme_box_plots:English Version}
{hline}{...}
{title:箱线图方案条目}

{p 3 3 2}
这些图形方案条目控制 {helpb graph box} 和 {helpb graph hbox} 图的外观。有关图表条目的总体讨论，请参见 {it:{help scheme_files##remarks3:图表条目}} 在 {help scheme files} 中。

{p 3 3 2}
条目按以下标题呈现：

{p 8 12 0}{help scheme_box_plots##remarks1:主要箱线图条目}{p_end}
{p 8 12 0}{help scheme_box_plots##remarks2:复合箱线图条目}{p_end}
{p 8 12 0}{help scheme_box_plots##remarks3:自定义中位数和须条目}{p_end}
{p 8 12 0}{help scheme_box_plots##remarks4:箱体整体外观}{p_end}


{marker remarks1}{...}
{title:主要箱线图条目}

{p2colset 4 46 49 0}{...}
{p 3 3 2}
这些条目通常用于改变箱线图的外观。

{p2col:条目} 描述{p_end}
{p2line}
{p2col:{cmd:color       {space 6}p}{it:#}{cmd:box}     {space 5}{it:{help colorstyle_zh}}}
	第 # 次箱线图的填充颜色{p_end}
{p2col:{cmd:intensity   {space 2}}{cmd:box}            {space 7}{it:{help intensitystyle_zh}}}
	所有箱线图的填充强度{p_end}

{p2col:{cmd:linewidth   {space 2}p}{it:#}{cmd:box}     {space 5}{it:{help linewidthstyle_zh:linewidth}}}
	第 # 次箱线图的轮廓厚度{p_end}
{p2col:{cmd:linepattern {space 0}p}{it:#}{cmd:box}     {space 5}{it:{help linepatternstyle_zh}}}
	第 # 次箱线图的轮廓模式（须条和中位数值）{p_end}
{p2col:{cmd:color       {space 6}p}{it:#}{cmd:boxline} {space 1}{it:{help colorstyle_zh}}}
	第 # 次箱线图的轮廓颜色{p_end}
{p2col:{cmd:intensity   {space 2}}{cmd:box_line}       {space 2}{it:{help intensitystyle_zh}}}
	所有箱线图的轮廓强度{p_end}

{p2col:{cmd:symbol      {space 5}p}{it:#}{cmd:box}      {space 5}{it:{help symbolstyle_zh}}}
	第 # 次箱线图的外部值标记符号{p_end}
{p2col:{cmd:symbolsize  {space 1}p}{it:#}{cmd:box}      {space 5}{it:{help markersizestyle_zh}}}
	第 # 次箱线图的外部值标记符号的大小{p_end}
{p2col:{cmd:linewidth   {space 2}p}{it:#}{cmd:boxmark}     {space 4}{it:{help linewidthstyle_zh:linewidth}}}
	第 # 次箱线图的外部值标记的轮廓厚度{p_end}
{p2col:{cmd:color       {space 6}p}{it:#}{cmd:boxmarkfill} {space 0}{it:{help colorstyle_zh}}}
	第 # 次箱线图的外部值标记的填充颜色{p_end}
{p2col:{cmd:color       {space 6}p}{it:#}{cmd:boxmarkline} {space 0}{it:{help colorstyle_zh}}}
	第 # 次箱线图的外部值标记的轮廓颜色{p_end}

{p2col:{cmd:gsize       {space 6}p}{cmd:boxlabel}         {space 4}{it:{help textsizestyle_zh}}}
	所有箱线图外部值标记的标签默认文本大小{p_end}
{p2col:{cmd:gsize       {space 6}p}{it:#}{cmd:boxlabel}    {space 3}{it:{help textsizestyle_zh}}}
	第 # 次箱线图外部值标记的标签文本大小{p_end}
{p2col:{cmd:color       {space 6}p}{cmd:boxlabel}          {space 4}{it:{help colorstyle_zh}}}
	所有箱线图外部值标记的标签默认文本颜色{p_end}
{p2col:{cmd:color       {space 6}p}{it:#}{cmd:boxlabel}    {space 3}{it:{help colorstyle_zh}}}
	第 # 次箱线图外部值标记的标签文本颜色{p_end}
{p2col:{cmd:clockdir    {space 3}p}{it:#}{cmd:box}         {space 8}{it:{help clockpos}}}
	第 # 次箱线图外部值标记的标签位置{p_end}
{p2line}

{p 3 3 2}
如果某个方案不包含以上一些特定于箱线图的条目，那么箱线图元素的外观将由所有图形类型共享的默认条目决定；请参见 {help scheme shared plots}。


{marker remarks2}{...}
{title:复合箱线图条目}

{p2colset 4 40 43 0}{...}
{p 3 3 2}
对于大多数随 Stata 提供的方案，这些复合条目的样式为 {cmd:p}{it:#}{cmd:box}（其中 {it:#} 是图的编号）；在这种情况下，上述表中显示的单个属性条目控制箱线图的特性。然而，如果复合条目的样式被更改，则可能会改变影响箱线图的单个属性条目。有关详细讨论，请参见 {it:{help scheme_files##remarks4:复合条目}} 在 {help scheme files} 中。

{p2col:条目} 描述{p_end}
{p2line}
{p2col:{cmd:linestyle    {space 3}p}{it:#}{cmd:box}      {space 5}{it:{help linestyle_zh}}}
	第 # 次箱线图、须条和中位数的 {it:linestyle}{p_end}
{p2col:{cmd:linestyle    {space 3}p}{it:#}{cmd:boxmark}  {space 1}{it:{help linestyle_zh}}}
	第 # 次箱线图的标记轮廓 {it:linestyle}{p_end}
{p2col:{cmd:shadestyle   {space 2}p}{it:#}{cmd:box}      {space 5}{it:{help shadestyle_zh}}}
	第 # 次箱线图填充的 {it:shadestyle}{p_end}
{p2col:{cmd:areastyle    {space 3}p}{it:#}{cmd:box}      {space 5}{it:{help areastyle_zh}}}
	第 # 次箱线图的填充 {it:areastyle}{p_end}
{p2col:{cmd:textboxstyle {space 0}p}{it:#}{cmd:boxlabel} {space 0}{it:{help textstyle_zh}}}
	第 # 次箱线图标记标签的 {it:textstyle}{p_end}
{p2col:{cmd:labelstyle   {space 2}p}{it:#}{cmd:box}      {space 5}{it:{help textstyle_zh}}}
	第 # 次箱线图标记标签的 {it:labelstyle}{p_end}
{p2col:{cmd:markerstyle  {space 1}p}{it:#}{cmd:box}      {space 5}{it:{help markerstyle_zh}}}
	第 # 次箱线图的标记样式{p_end}
{p2col:{cmd:seriesstyle  {space 1}p}{it:#}{cmd:box}      {space 5}{it:{help pstyle_zh}}}
	第 # 次箱线图的整体 {it:pstyle}{p_end}
{p2line}


{marker remarks3}{...}
{title:自定义中位数和须条目}

{p2colset 4 40 43 0}{...}
{p 3 3 2}
这些条目决定了是否显示所谓的自定义须条或中位数标记，以及这些自定义元素的外观。

{p2col:条目} 描述{p_end}
{p2line}
{p2col:{cmd:medtypestyle {space 0}boxplot}               {space 5}{it:medstyle}} 
	中位数值的显示方式； {it:medstyle} 可以是 {cmd:line}、{cmd:cline} 或 {cmd:dot}；可能还有其他样式；输入{break}
	{stata graph query medtypestyle} 查看完整列表{p_end}
{p2col:{cmd:yesno        {space 1}custom_whiskers}       {space 3}{{cmd:yes}|{cmd:no}}}
        对所有须条使用一个自定义线型{p_end}

{p2col:{cmd:linestyle    {space 3}box_whiskers}          {space 0}{it:{help linestyle_zh}}}
	当指定自定义须条线时的须条 {it:linestyle} (*){p_end}
{p2col:{cmd:linestyle    {space 3}box_median}            {space 2}{it:{help linestyle_zh}}}
	当指定自定义中位数线时的中位数 {it:linestyle} (*){p_end}
{p2col:{cmd:markerstyle  {space 1}box_marker}            {space 0}{it:{help markerstyle_zh}}}
	中位数标记的标记样式 (*){p_end}
{p2line}
{p 3 7 0}(*) 复合条目。


{marker remarks4}{...}
{title:箱体整体外观}

{p2colset 4 37 40 0}{...}
{p 3 3 2}
此复合条目控制使用 {helpb graph box} 和 {helpb graph hbox} 绘制的箱体的整体外观。通常不应更改它；而应更改其他条目中提供的单个组件。唯一的例外情况是设置 {break} {cmd:barstyle box tukey}。

{p 3 3 2}
输入 {stata graph query barstyle} 查看可用于 {it:barstyle} 的选项。

{p2col:条目} 描述{p_end}
{p2line}
{p2col:{cmd:barstyle box}       {space 2}{it:barstyle}}
	箱体的整体样式{p_end}
{p2line}
{p2colreset}{...}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <scheme_box_plots.sthlp>}