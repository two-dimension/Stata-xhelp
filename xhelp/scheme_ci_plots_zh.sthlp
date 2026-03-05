{smcl}
{* *! version 1.0.3  11feb2011}{...}
{vieweralsosee "scheme files" "help scheme files"}
{help scheme_ci_plots:English Version}
{hline}{...}
{title:置信区间图方案条目}

{p2colset 4 46 49 0}{...}
{p 3 3 2}
这些条目控制使用置信区间（CIs）的图形或图表的外观，例如 {helpb twoway lfitci}。更准确地说，它们指定 {cmd:ci} 和 {cmd:ci2} {help pstyle_zh:pstyles} 的属性，这些属性是置信区间的默认 {cmd:pstyle}。通常，{cmd:ci} 条目控制首次展示置信区间的图形的外观，而 {cmd:ci2} 条目则控制在需要时展示第二个置信区间的图形的外观。用户可以选择将 {cmd:ci} 或 {cmd:ci2} pstyles 应用于任何图形。

{p 3 3 2}
注意，置信区间的绘制方式，例如，作为填充区域（{cmd:rarea} 绘图类型）、两条线（{cmd:rline} 绘图类型）或其他绘图类型，将决定哪个方案条目生效。

{p2col:条目} 描述{p_end}
{p2line}

{p2col:{cmd:color       {space 6}ci_line}      {space 5}{it:{help colorstyle_zh}}}
	置信区间 {cmd:ci} 的线条颜色{p_end}
{p2col:{cmd:color       {space 6}ci2_line}     {space 4}{it:{help colorstyle_zh}}}
	置信区间 {cmd:ci2} 的线条颜色{p_end}
{p2col:{cmd:color       {space 6}ci_area}      {space 5}{it:{help colorstyle_zh}}}
	置信区间 {cmd:ci} 区域的填充颜色{p_end}
{p2col:{cmd:color       {space 6}ci2_area}     {space 4}{it:{help colorstyle_zh}}}
	置信区间 {cmd:ci2} 区域的填充颜色{p_end}
{p2col:{cmd:color       {space 6}ci_arealine}  {space 1}{it:{help colorstyle_zh}}}
	置信区间 {cmd:ci} 区域的轮廓颜色{p_end}
{p2col:{cmd:color       {space 6}ci2_arealine} {space 0}{it:{help colorstyle_zh}}}
	置信区间 {cmd:ci2} 区域的轮廓颜色{p_end}
{p2col:{cmd:color       {space 6}ci_symbol}    {space 3}{it:{help colorstyle_zh}}}
	置信区间 {cmd:ci} 的标记颜色{p_end}
{p2col:{cmd:color       {space 6}ci2_symbol}   {space 2}{it:{help colorstyle_zh}}}
	置信区间 {cmd:ci2} 的标记颜色{p_end}
{p2col:{cmd:linewidth   {space 2}ci}           {space 10}{it:{help linewidthstyle_zh:linewidth}}}
	绘制为线条时，置信区间 {cmd:ci} 的线条厚度{p_end}
{p2col:{cmd:linewidth   {space 2}ci2}          {space 9}{it:{help linewidthstyle_zh:linewidth}}}
	绘制为线条时，置信区间 {cmd:ci2} 的线条厚度{p_end}
{p2col:{cmd:linewidth   {space 2}ci_area}      {space 5}{it:{help linewidthstyle_zh:linewidth}}}
	绘制为区域时，置信区间 {cmd:ci} 的线条厚度{p_end}
{p2col:{cmd:linewidth   {space 2}ci2_area}     {space 4}{it:{help linewidthstyle_zh:linewidth}}}
	绘制为区域时，置信区间 {cmd:ci2} 的线条厚度{p_end}
{p2col:{cmd:linepattern {space 0}ci_area}      {space 5}{it:{help linepatternstyle_zh}}}
	置信区间 {cmd:ci} 和 {cmd:ci2} 的线条和轮廓图案{p_end}
{p2col:{cmd:linepattern {space 0}ci}           {space 10}{it:{help linepatternstyle_zh}}}
	置信区间 {cmd:ci} 和 {cmd:ci2} 的连接线图案；很少使用{p_end}
{p2col:{cmd:intensity   {space 2}ci}           {space 10}{it:{help intensitystyle_zh}}}
	置信区间 {cmd:ci} 和 {cmd:ci2} 的 {it:intensitystyle}{p_end}
{p2col:{cmd:symbol       {space 5}ci}           {space 10}{it:{help symbolstyle_zh}}}
	置信区间 {cmd:ci} 的标记符号；很少使用{p_end}
{p2col:{cmd:symbol       {space 5}ci2}          {space 9}{it:{help symbolstyle_zh}}}
	置信区间 {cmd:ci2} 的标记符号；很少使用{p_end}
{p2col:{cmd:symbolsize   {space 1}ci}           {space 10}{it:{help markersizestyle_zh}}}
	置信区间 {cmd:ci} 的标记大小；很少使用{p_end}
{p2col:{cmd:symbolsize   {space 1}ci2}          {space 9}{it:{help markersizestyle_zh}}}
	置信区间 {cmd:ci2} 的标记大小；很少使用{p_end}

{p2col:{cmd:areastyle    {space 2}ci}           {space 10}{it:{help areastyle_zh}}}
	置信区间 ({cmd:ci}) 的 {it:areastyle} (*){p_end}
{p2col:{cmd:areastyle    {space 2}ci2}           {space 9}{it:{help areastyle_zh}}}
	第二个置信区间 ({cmd:ci2}) 的 {it:areastyle} (*){p_end}
{p2col:{cmd:linestyle    {space 2}ci}           {space 10}{it:{help linestyle_zh}}}
	绘制为线条时，置信区间的 {it:linestyle} (*){p_end}
{p2col:{cmd:linestyle    {space 2}ci2}          {space 9}{it:{help linestyle_zh}}}
	绘制为线条时，第二个置信区间的 {it:linestyle} (*){p_end}
{p2col:{cmd:linestyle    {space 2}ci_area}      {space 5}{it:{help linestyle_zh}}}
	绘制为区域时，置信区间的轮廓的 {it:linestyle} (*){p_end}
{p2col:{cmd:linestyle    {space 2}ci2_area}     {space 4}{it:{help linestyle_zh}}}
	绘制为区域时，第二个置信区间的轮廓的 {it:linestyle} (*){p_end}
{p2col:{cmd:marker       {space 5}ci}           {space 10}{it:{help markerstyle_zh}}}
	置信区间 ({cmd:ci}) 的标记 (*){p_end}
{p2col:{cmd:marker       {space 5}ci2}          {space 9}{it:{help markerstyle_zh}}}
	第二个置信区间 ({cmd:ci2}) 的标记 (*){p_end}
{p2col:{cmd:shadestyle   {space 1}ci}           {space 10}{it:{help shadestyle_zh}}}
	置信区间 ({cmd:ci}) 的 {it:shadestyle} (*){p_end}
{p2col:{cmd:shadestyle   {space 1}ci2}          {space 9}{it:{help shadestyle_zh}}}
	第二个置信区间 ({cmd:ci2}) 的 {it:shadestyle} (*){p_end}
{p2line}
{p 3 7 0}(*) 复合条目.{p_end}
{p2colreset}{...}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <scheme_ci_plots.sthlp>}