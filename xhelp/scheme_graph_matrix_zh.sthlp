{smcl}
{* *! version 1.0.4  11feb2011}{...}
{vieweralsosee "scheme graph shared" "help scheme graph shared"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "scheme files" "help scheme files"}
{help scheme_graph_matrix:English Version}
{hline}{...}
{title:控制图形矩阵绘制的方案条目}

{p 3 3 2}
这些设置控制使用 
{helpb graph matrix} 绘制的图形的整体外观。

{p 3 3 2}
条目以以下标题呈现：

{p 8 12 0}{help scheme_graph_matrix##remarks1:标记}{p_end}
{p 8 12 0}{help scheme_graph_matrix##remarks2:标记标签}{p_end}
{p 8 12 0}{help scheme_graph_matrix##remarks3:对角标题}{p_end}
{p 8 12 0}{help scheme_graph_matrix##remarks4:绘图区域}{p_end}
{p 8 12 0}{help scheme_graph_matrix##remarks5:高级轴选项}

{p 3 3 2}
散点图矩阵的某些外观特征与所有其他图形共享；请参见 {help scheme graph shared} 以更改这些设置。

{marker remarks1}{...}
{space 3}{title:标记}

{p2colset 4 47 50 0}{...}
{p 3 3 2}
这些条目指定由 {cmd:graph matrix} 绘制的标记的外观。

{p2col:条目} 描述{p_end}
{p2line}
{p2col:{cmd:symbol      {space 5}matrix}         {space 8}{it:{help symbolstyle_zh}}}
	标记符号{p_end}
{p2col:{cmd:symbolsize  {space 1}matrix}         {space 8}{it:{help markersizestyle_zh}}}
	标记大小{p_end}
{p2col:{cmd:color       {space 6}matrix}         {space 8}{it:{help colorstyle_zh}}}
	标记的填充颜色{p_end}
{p2col:{cmd:color       {space 6}matrixmarkline} {space 0}{it:{help colorstyle_zh}}}
	标记的轮廓颜色{p_end}
{p2col:{cmd:linewidth   {space 2}matrixmark}     {space 4}{it:{help linewidthstyle_zh:linewidth}}}
	标记轮廓厚度{p_end}

{p2col:{cmd:linestyle   {space 2}matrixmark}     {space 4}{it:{help linestyle_zh}}}
	标记轮廓样式 (*){p_end}
{p2col:{cmd:markerstyle {space 0}matrix}         {space 8}{it:{help markerstyle_zh}}}
	标记样式 (*){p_end}
{p2col:{cmd:seriesstyle {space 0}matrix}         {space 8}{it:{help pstyle_zh}}}
	整体 {it:pstyle} (*){p_end}
{p2line}
{p 3 7 0}(*) 复合条目。

{marker remarks2}{...}
{space 3}{title:标记标签}

{p2colset 4 49 52 0}{...}
{p 3 3 2}
这些条目指定由 
{cmd:graph matrix} 绘制的标记标签的外观。

{p2col:条目} 描述{p_end}
{p2line}
{p2col:{cmd:gsize       {space 7}matrix_marklbl} {space 0}{it:{help textsizestyle_zh}}}
	文本大小{p_end}
{p2col:{cmd:color       {space 7}matrix_marklbl} {space 0}{it:{help colorstyle_zh}}}
	文本颜色{p_end}
{p2col:{cmd:clockdir    {space 4}matrix_marklbl} {space 0}{it:{help clockpos}}}
	标记上标签的位置{p_end}
{p2col:{cmd:gsize       {space 7}matrix_mlblgap} {space 0}{it:{help textsizestyle_zh}}}
	标记与标签之间的间隙{p_end}

{p2col:{cmd:textboxstyle {space 0}matrix_marklbl} {space 0}{it:{help textstyle_zh}}}
	标记标签的 {it:textstyle} (*){p_end}
{p2col:{cmd:labelstyle   {space 2}matrix}         {space 8}{it:{help labelstyle_zh}}}
	标记标签的 {it:labelstyle} (*){p_end}
{p2line}
{p 3 7 0}(*) 复合条目。

{marker remarks3}{...}
{space 3}{title:对角标题}

{p2colset 4 47 50 0}{...}
{p 3 3 2}
这些条目指定在散点图矩阵对角线上显示的变量标题或标签的外观。

{p2col:条目} 描述{p_end}
{p2line}
{p2col:{cmd:gsize      {space 5}matrix_label}    {space 3}{it:{help textsizestyle_zh}}}
	文本大小{p_end}
{p2col:{cmd:color      {space 5}matrix_label}    {space 3}{it:{help colorstyle_zh}}}
	文本颜色{p_end}
{p2col:{cmd:margin     {space 4}matrix_label}    {space 3}{it:{help marginstyle_zh}}}
	文本周围的边距{p_end}
{p2col:{cmd:margin     {space 4}matrix_lab_box}  {space 1}{it:{help marginstyle_zh}}}
	文本框周围的外部边距{p_end}
{p2col:{cmd:color      {space 5}mat_label_box} {space 2}{it:{help colorstyle_zh}}}
	背景填充颜色{p_end}
{p2col:{cmd:vertical_text matrix_label} {space 0}{it:{help alignmentstyle_zh}}}
	文本的垂直对齐{p_end}
{p2col:{cmd:horizontal {space 0}matrix_label} {space 0}{it:{help justificationstyle_zh}}}
	文本的对齐方式{p_end}

{p2col:{cmd:linestyle  {space 1}mat_label_box} {space 2}{it:{help linestyle_zh}}}
	文本框的轮廓样式；很少使用；通常的默认值是 {cmd:foreground}{p_end}
{p2col:{cmd:textboxstyle matrix_label} {space 1}{it:{help textboxstyle_zh}}}
	整体文本框样式 (*){p_end}
{p2col:{cmd:plotregionstyle matrix_label} {space 0}{it:{help plotregionstyle_zh}} {space 1}整体 {it:plotregionstyle}}{p_end}
{p2line}
{p 3 7 0}(*) 复合条目。对于大多数官方方案， {it:textboxstyle} 是 {cmd:matrix_label}，表中的条目将影响标题。如果一个方案为 {it:textboxstyle} 指定了不同的复合样式，则必须使用与该复合样式关联的条目来更改对角标题的外观。{p_end}

{marker remarks4}{...}
{space 3}{title:绘图区域}

{p2colset 4 49 52 0}{...}
{p 3 3 2}
这些条目指定 {cmd:graph matrix} 的绘图区域的外观。
单独的条目控制绘制单个散点图的整体绘图区域的外观，其他条目则控制单个散点图的绘图区域。

{p2col:条目} 描述{p_end}
{p2line}
{p2col:{cmd:color     {space 4}matrix_plotregion}   {space 2}{it:{help colorstyle_zh}}}
	绘图区域填充颜色{p_end}
{p2col:{cmd:intensity {space 0}matrix_plotregion}   {space 2}{it:{help intensitystyle_zh}}}
	绘图区域 {it:intensitystyle}{p_end}
{p2col:{cmd:margin    {space 3}matrixgraph}         {space 8}{it:{help marginstyle_zh}}}
	绘制单个图形的区域周围的外部边距{p_end}
{p2col:{cmd:margin    {space 3}matrix_plotreg}      {space 5}{it:{help marginstyle_zh}}}
	绘图区域边距{p_end}
{p2col:{cmd:linewidth {space 0} matrix_plotregion}  {space 2}{it:{help linewidthstyle_zh:linewidth}}}
	绘图区域轮廓的厚度{p_end}
{p2col:{cmd:color     {space 4}matplotregion_line}  {space 1}{it:{help colorstyle_zh}}}
	绘图区域轮廓的颜色{p_end}
{p2colset 4 51 52 0}{...}
{p2col:{cmd:linepattern {space 0}matrix_plotregion} {space 0}{it:{help linepatternstyle_zh}}}
	绘图区域的轮廓图案{p_end}

{p2colset 4 49 52 0}{...}
{p2col:{cmd:shadestyle {space 0} matrix_plotregion}      {space 5}{it:{help shadestyle_zh}}}
	绘图区域的 {it:shadestyle}{p_end}
{p2col:{cmd:linestyle  {space  1}matrix_plotregion}       {space 6}{it:{help linestyle_zh}}}
	绘图区域的轮廓样式{p_end}
{p2col:{cmd:areastyle  {space 1}matrixgraph_plotregion}  {space 1}{it:{help areastyle_zh}}}
	整体绘图区域的区域样式 (*){p_end}
{p2col:{cmd:areastyle  {space 1}matrixgraph_iplotregion} {space 0}{it:{help areastyle_zh}}}
	单个绘图区域的区域样式 (*){p_end}
{p2col:{cmd:plotregionstyle {space 1}matrixgraph} {space 0}{it:{help plotregionstyle_zh}}}
	整体绘图区域样式 (*){p_end}
{p2col:{cmd:plotregionstyle {space 1}matrix}      {space 5}{it:{help plotregionstyle_zh}}}
	内部绘图区域样式 (*){p_end}

{p2col:{cmd:areastyle       {space 0}matrix_plotregion}  {space 1}{it:{help areastyle_zh}}}
	单个图形的整体图形区域的 {it:areastyle}{p_end}
{p2col:{cmd:areastyle       {space 0}matrix_iplotregion} {space 0}{it:{help areastyle_zh}}}
	单个图形的内部图形区域的 {it:areastyle}{p_end}
{p2line}
{p 3 7 0}(*) 复合条目。

{marker remarks5}{...}
{title:高级轴选项}

{p2colset 4 41 44 0}{...}
{p 3 3 2}
这些很少使用的条目提供散点图矩阵的其他选项。
例如，

	{cmd:special matrix yaxis "ylabels(#2, angle(horizontal) axis(Y)"}

{p 3 3 2}
指定在散点图矩阵中大约使用两个刻度，并且标签为水平。
请注意， {cmd:axis(Y)} 指令对于 {it:y} 轴是必需的，类似地， {cmd:axis(X)} 将被要求用于 {it:x} 轴。

{p2col:条目} 描述{p_end}
{p2line}
{p2col:{cmd:special matrix_yaxis} {space 0}{help axis_options_zh}}
	y 轴的附加选项{p_end}
{p2col:{cmd:special matrix_xaxis} {space 0}{help axis_options_zh}}
	x 轴的附加选项{p_end}
{p2line}
{p2colreset}{...}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <scheme_graph_matrix.sthlp>}