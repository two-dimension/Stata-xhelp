{smcl}
{* *! version 1.0.7  01mar2017}{...}
{vieweralsosee "scheme by graphs" "help scheme by graphs"}{...}
{vieweralsosee "scheme files" "help scheme files"}
{help scheme_axes:English Version}
{hline}{...}
{title:控制坐标轴的方案条目}

{p 3 3 2}
这些图形方案条目控制图形坐标轴的外观。大多数坐标轴特性在所有图形系列中都是共享的；除非特别说明，否则可以假定这些条目是共享的。

{p 3 3 2}
通过 {help scheme by graphs:by graphs} 中记录的设置，可以控制由图形的特性。

{p 3 3 2}
条目按以下标题呈现：

{p 8 12 0}{help scheme_axes##remarks1:坐标轴刻度}{p_end}
{p 8 12 0}{help scheme_axes##remarks2:坐标轴刻度标签}{p_end}
{p 8 12 0}{help scheme_axes##remarks3:坐标轴标题}{p_end}
{p 8 12 0}{help scheme_axes##remarks4:刻度数量}{p_end}
{p 8 12 0}{help scheme_axes##remarks5:坐标轴线}{p_end}
{p 8 12 0}{help scheme_axes##remarks6:坐标轴线范围}{p_end}
{p 8 12 0}{help scheme_axes##remarks7:坐标轴定位}{p_end}
{p 8 12 0}{help scheme_axes##remarks8:图形条形和图形水平条形的坐标轴定位和缩放}{p_end}
{p 8 12 0}{help scheme_axes##remarks9:图形箱形图和图形水平箱形图的坐标轴定位和缩放}{p_end}
{p 8 12 0}{help scheme_axes##remarks10:图形点图的坐标轴定位和缩放}{p_end}
{p 8 12 0}{help scheme_axes##remarks11:整体刻度和标签样式}{p_end}
{p 8 12 0}{help scheme_axes##remarks12:整体刻度集样式}{p_end}
{p 8 12 0}{help scheme_axes##remarks13:整体坐标轴样式}{p_end}

{p 3 3 2}
大多数重要条目出现在前五个部分中 - 您可以使用这些部分中的设置更改大多数坐标轴特性。


{marker remarks1}{...}
{title:坐标轴刻度}

{p2colset 4 44 47 0}{...}
{p 3 3 2}
这些条目控制坐标轴刻度的外观。

{p2col:条目} 描述{p_end}
{p2line}
{p2col:{cmd:gsize        {space 7}tick}      {space 5}{it:{help textsizestyle_zh}}}
	主刻度的长度{p_end}
{p2col:{cmd:color        {space 7}tick}      {space 5}{it:{help colorstyle_zh}}}
	主刻度的颜色{p_end}
{p2col:{cmd:linewidth    {space 3}tick}      {space 5}{it:{help linewidthstyle_zh:linewidth}}}
	主刻度的线条厚度{p_end}
{p2col:{cmd:linepattern  {space 1}tick}      {space 5}{it:{help linepatternstyle_zh}}}
	主刻度的线条样式{p_end}

{p2col:{cmd:gsize        {space 7}minortick} {space 0}{it:{help textsizestyle_zh}}}
	次刻度的长度{p_end}
{p2col:{cmd:color        {space 7}minortick} {space 0}{it:{help colorstyle_zh}}}
	次刻度的颜色{p_end}
{p2col:{cmd:linewidth    {space 3}minortick} {space 0}{it:{help linewidthstyle_zh:linewidth}}}
	次刻度的线条厚度{p_end}
{p2col:{cmd:linepattern  {space 1}minortick} {space 0}{it:{help linepatternstyle_zh}}}
	次刻度的线条样式{p_end}
{p2col:{cmd:linestyle    {space 3}minortick} {space 0}{it:{help linestyle_zh}}}
	次刻度的 {it:linestyle} (*){p_end}

{p2col:{cmd:tickposition {space 0}axis_tick} {space 0}{it:tickpos}} 
        坐标轴刻度是在绘图区域内部、外部，还是穿过坐标轴； {it:tickpos} 可能是 {cmd:inside}、{cmd:outside} 或 {cmd:crossing}{p_end}
{p2col:{cmd:linestyle    {space 3}tick}      {space 5}{it:{help linestyle_zh}}}
	主刻度的 {it:linestyle} (*){p_end}
{p2line}
{p 3 7 0}(*) 复合条目。


{marker remarks2}{...}
{title:坐标轴刻度标签}

{p2colset 4 46 49 0}{...}
{p 3 3 2}
这些条目控制坐标轴刻度标签的外观。

{p2col:条目} 描述{p_end}
{p2line}
{p2col:{cmd:gsize      {space 5}tick_label}       {space 6}{it:{help textsizestyle_zh}}}
	主刻度的文本大小{p_end}
{p2col:{cmd:gsize      {space 5}minortick_label}  {space 1}{it:{help textsizestyle_zh}}}
	次刻度的文本大小{p_end}
{p2col:{cmd:color      {space 5}tick_label}       {space 6}{it:{help colorstyle_zh}}}
	文本颜色{p_end}

{p2col:{cmd:anglestyle {space 0}horizontal_tick}  {space 1}{it:{help anglestyle_zh}}}
	水平（x）坐标轴的文本角度{p_end}
{p2col:{cmd:anglestyle {space 0}vertical_tick}    {space 3}{it:{help anglestyle_zh}}}
	垂直（y）坐标轴的文本角度{p_end}

{p2col:{cmd:gsize      {space 5}tickgap}          {space 9}{it:{help textsizestyle_zh}}}
	刻度与其标签之间的距离{p_end}
{p2col:{cmd:gsize      {space 5}notickgap}        {space 7}{it:{help textsizestyle_zh}}}
	轴线与标签之间的距离，适用于不绘制刻度的坐标轴样式{p_end}

{p2col:{cmd:yesno      {space 5}alternate_labels} {space 0}{{cmd:yes}|{cmd:no}}}
        每隔一个刻度标签与坐标轴的距离交替{p_end}
{p2col:{cmd:gsize      {space 5}alternate_gap}    {space 3}{it:{help textsizestyle_zh}}}
	前一个条目为 {cmd:yes} 时，刻度与标签之间的附加间距{p_end}

{p2col:{cmd:yesno      {space 5}use_labels_on_ticks} {space 0}{{cmd:yes}|{cmd:no}}}
        当值标签与刻度值匹配时，使用值标签标记刻度{p_end}

{p2col:{cmd:textboxstyle {space 0}tick}          {space 10}{it:{help textboxstyle_zh}}}
	主刻度标签的整体文本样式 (*){p_end}
{p2col:{cmd:textboxstyle {space 0}minortick}     {space 5}{it:{help textboxstyle_zh}}}
	次刻度标签的整体文本样式 (*){p_end}
{p2line}
{p 3 7 0}(*) 复合条目。


{marker remarks3}{...}
{title:坐标轴标题}

{p2colset 4 46 49 0}{...}
{p 3 3 2}
这些条目控制坐标轴标题的外观。

{p2col:条目} 描述{p_end}
{p2line}
{p2col:{cmd:gsize        {space 7}axis_title}      {space 4}{it:{help textsizestyle_zh}}}
	文本大小{p_end}
{p2col:{cmd:color        {space 7}axis_title}      {space 4}{it:{help colorstyle_zh}}}
	文本颜色{p_end}

{p2col:{cmd:margin       {space 6}axis_title}      {space 4}{it:{help marginstyle_zh}}}
	标题文本周围的边距{p_end}
{p2col:{cmd:gsize        {space 7}axis_title_gap} {space 0}{it:{help textsizestyle_zh}}}
	刻度标签与坐标轴标题之间的附加距离{p_end}

{p2col:{cmd:textboxstyle {space 0}axis_title}      {space 4}{it:{help textboxstyle_zh}}}
	坐标轴标题的整体文本样式 (*){p_end}
{p2line}
{p 3 7 0}(*) 复合条目。


{marker remarks4}{...}
{title:刻度数量}

{p2colset 4 37 40 0}{...}
{p 3 3 2}
这些条目指定建议的坐标轴刻度数量。有关刻度建议数量的讨论，请参见 {cmd:#} 规则
{manhelpi axis_label_options G-3}。

{p2col:条目} 描述{p_end}
{p2line}
{p2col:{cmd:numticks_g horizontal_major} {space 1}{it:#}}
	水平坐标轴的主刻度{p_end}
{p2col:{cmd:numticks_g vertical_major}   {space 3}{it:#}}
	垂直坐标轴的主刻度{p_end}
{p2col:{cmd:numticks_g horizontal_minor} {space 1}{it:#}}
	水平坐标轴的次刻度{p_end}
{p2col:{cmd:numticks_g vertical_minor}   {space 3}{it:#}}
	垂直坐标轴的次刻度{p_end}
{p2col:{cmd:numticks_g horizontal_tmajor} {space 0}{it:#}}
	默认情况下不显示刻度标签的水平坐标轴的主刻度{p_end}
{p2col:{cmd:numticks_g vertical_tmajor}   {space 2}{it:#}}
	默认情况下不显示刻度标签的垂直坐标轴的主刻度{p_end}
{p2col:{cmd:numticks_g horizontal_tminor} {space 0}{it:#}}
	默认情况下不显示刻度标签的水平坐标轴的次刻度{p_end}
{p2col:{cmd:numticks_g vertical_tminor}   {space 2}{it:#}}
	默认情况下不显示刻度标签的垂直坐标轴的次刻度{p_end}
{p2col:{cmd:numticks_g major}      {space 12}{it:#}}
	默认建议的主刻度数量，如果未指定其他值{p_end}
{p2line}


{marker remarks5}{...}
{title:坐标轴线}

{p2colset 4 44 47 0}{...}
{p 3 3 2}
这些条目控制坐标轴线的外观。

{p2col:条目} 描述{p_end}
{p2line}
{p2col:{cmd:color       {space 6}tickline}   {space 2}{it:{help colorstyle_zh}}}
	坐标轴线的颜色{p_end}
{p2col:{cmd:linewidth   {space 2}tickline}   {space 2}{it:{help linewidthstyle_zh:linewidth}}}
	坐标轴线的线条厚度{p_end}
{p2col:{cmd:linepattern {space 0}tickline}   {space 2}{it:{help linepatternstyle_zh}}}
	坐标轴线的线条样式{p_end}

{p2col:{cmd:linestyle   {space 2}axisline}      {space 5}{it:{help linestyle_zh}}}
	大多数坐标轴的整体 {it:linestyle} {p_end}
{p2col:{cmd:linestyle   {space 2}axis_withgrid} {space 0}{it:{help linestyle_zh}}}
	通常具有网格的坐标轴的整体 {it:linestyle} {p_end}
{p2line}


{marker remarks6}{...}
{title:坐标轴线范围}

{p2colset 4 41 44 0}{...}
{p 3 3 2}
这些条目控制坐标轴的范围如何与绘图区域的边距交互。

{p2col:条目} 描述{p_end}
{p2line}
{p2col:{cmd:yesno extend_axes_low}       {space 6}{{cmd:yes}|{cmd:no}}}
	将坐标轴线延伸到绘图区域的内边距（{cmd:yes}）或最小主刻度（{cmd:no}）{p_end}
{p2col:{cmd:yesno extend_axes_high}      {space 5}{{cmd:yes}|{cmd:no}}}
	将坐标轴线延伸到绘图区域的内边距（{cmd:yes}）或最大主刻度（{cmd:no}）{p_end}
{p2col:{cmd:yesno extend_axes_full_low}  {space 1}{{cmd:yes}|{cmd:no}}}
        将坐标轴线通过绘图区域边距延伸到绘图区域的边界框（{cmd:yes}）或最小主刻度（{cmd:no}）{p_end}
{p2col:{cmd:yesno extend_axes_full_high} {space 0}{{cmd:yes}|{cmd:no}}}
        将坐标轴线通过绘图区域边距延伸到绘图区域的边界框（{cmd:yes}）或最大主刻度（{cmd:no}）{p_end}
{p2line}


{marker remarks7}{...}
{title:坐标轴定位}

{p2colset 4 39 42 0}{...}
{p2col:条目} 描述{p_end}
{p2line}
{p2col:{cmd:yesno    {space 3}alt_xaxes}      {space 5}{{cmd:yes}|{cmd:no}}}
	更改默认的图形侧面以绘制 {it:x} 坐标轴{p_end}
{p2col:{cmd:yesno    {space 3}alt_yaxes}      {space 5}{{cmd:yes}|{cmd:no}}}
	更改默认的图形侧面以绘制 {it:y} 坐标轴{p_end}

{p2col:{cmd:yesno    {space 3}x2axis_ontop}   {space 2}{{cmd:yes}|{cmd:no}}}
	在图形顶部（{cmd:yes}）或第一个 {it:x} 坐标轴下方（{cmd:no}）显示通过 {cmd:xaxis(2)} 选项创建的第二个 {it:x} 坐标轴{p_end}
{p2col:{cmd:yesno    {space 3}y2axis_ontop}   {space 2}{{cmd:yes}|{cmd:no}}}
        显示通过 {cmd:yaxis(2)} 选项创建的第二个 {it:y} 坐标轴，位于绘图区域的右侧（{cmd:yes}）或第一个 {it:y} 坐标轴的左侧（{cmd:no}）{p_end}

{p2col:{cmd:gsize    {space 4}axis_space}     {space 0}{it:{help textsizestyle_zh}}}
	放置在坐标轴外部的空间{p_end}
{p2line}
{p 3 7 0}(*) 复合条目。


{marker remarks8}{...}
{title:图形条形图和图形水平条形图的坐标轴定位和缩放}

{p2colset 4 40 43 0}{...}
{p2col:条目} 描述{p_end}
{p2line}
{p2col:{cmd:yesno {space 0}swap_bar_scaleaxis} {space 0}{{cmd:yes}|{cmd:no}}}
        更改默认的图形侧面以绘制刻度坐标轴（{it:y} 坐标轴）{p_end}
{p2col:{cmd:yesno {space 0}swap_bar_groupaxis} {space 0}{{cmd:yes}|{cmd:no}}}
	更改默认的图形侧面以绘制组坐标轴{p_end}

{p2col:{cmd:yesno {space 0}bar_reverse_scale} {space 1}{{cmd:yes}|{cmd:no}}}
	反转刻度坐标轴（{it:y} 坐标轴）{p_end}

{p2line}


{marker remarks9}{...}
{title:图形箱形图和图形水平箱形图的坐标轴定位和缩放}

{p2colset 4 40 43 0}{...}
{p2col:条目} 描述{p_end}
{p2line}
{p2col:{cmd:yesno {space 0}swap_box_scaleaxis} {space 0}{{cmd:yes}|{cmd:no}}}
        更改默认的图形侧面以绘制刻度坐标轴（{it:y} 坐标轴）用于 {helpb graph box} 和 {helpb graph hbox}{p_end}
{p2col:{cmd:yesno {space 0}swap_box_groupaxis} {space 0}{{cmd:yes}|{cmd:no}}}
	更改默认的图形侧面以绘制组坐标轴 {p_end}

{p2col:{cmd:yesno {space 0}box_reverse_scale} {space 1}{{cmd:yes}|{cmd:no}}}
	反转刻度坐标轴（{it:y} 坐标轴）{p_end}
{p2line}


{marker remarks10}{...}
{title:图形点图的坐标轴定位和缩放}

{p2colset 4 40 43 0}{...}
{p2col:条目} 描述{p_end}
{p2line}
{p2col:{cmd:yesno {space 0}swap_dot_scaleaxis} {space 0}{{cmd:yes}|{cmd:no}}}
        更改默认的图形侧面以绘制刻度坐标轴（{it:y} 坐标轴）{p_end}
{p2col:{cmd:yesno {space 0}swap_dot_groupaxis} {space 0}{{cmd:yes}|{cmd:no}}}
	更改默认的图形侧面以绘制组坐标轴{p_end}

{p2col:{cmd:yesno {space 0}dot_reverse_scale} {space 1}{{cmd:yes}|{cmd:no}}}
	反转刻度坐标轴（{it:y} 坐标轴）{p_end}
{p2line}


{marker remarks11}{...}
{title:整体刻度和标签样式}

{p2colset 4 40 43 0}{...}
{p 3 3 2}
这些复合条目指定坐标轴刻度和坐标轴刻度标签的整体外观；见 {manhelpi tickstyle G-4}。

{p2col:条目} 描述{p_end}
{p2line}
{p2col:{cmd:tickstyle major}         {space 8}{it:{help tickstyle_zh}}}
	主刻度和标签{p_end}
{p2col:{cmd:tickstyle major_nolabel} {space 0}{it:{help tickstyle_zh}}}
	无标签的主刻度{p_end}
{p2col:{cmd:tickstyle major_notick}  {space 1}{it:{help tickstyle_zh}}}
	无刻度的主标签{p_end}

{p2col:{cmd:tickstyle minor}         {space 8}{it:{help tickstyle_zh}}}
	次刻度和标签{p_end}
{p2col:{cmd:tickstyle minor_nolabel} {space 0}{it:{help tickstyle_zh}}}
	无标签的次刻度{p_end}
{p2col:{cmd:tickstyle minor_notick}  {space 1}{it:{help tickstyle_zh}}}
	无刻度的次标签{p_end}
{p2line}


{marker remarks12}{...}
{title:整体刻度集样式}

{p2colset 4 51 43 0}{...}
{p 3 3 2}
这些复合条目指定一组坐标轴刻度、坐标轴刻度标签以及可能的相关网格的整体外观；见 {manhelpi ticksetstyle G-4}。这些条目不应轻易更改；相反，考虑更改特定坐标轴属性的条目 {c -} 例如，刻度的 {help colorstyle_zh}、刻度标签的 {help textsizestyle_zh} 等。

{p2col:条目} 描述{p_end}
{p2line}
{p2col:{cmd:ticksetstyle major_horiz_default}{space 2}{it:{help ticksetstyle_zh}}} 
	水平坐标轴的默认主刻度集，包括刻度和标签，但不包括网格{p_end}
{p2col:{cmd:ticksetstyle major_horiz_withgrid}{space 1}{it:{help ticksetstyle_zh}}} 
	水平坐标轴的主刻度集，包括网格{p_end}
{p2col:{cmd:ticksetstyle major_horiz_nolabel}{space 2}{it:{help ticksetstyle_zh}}} 
	水平坐标轴的主刻度集，包括刻度但不包括标签{p_end}
{p2col:{cmd:ticksetstyle major_horiz_notick}{space 3}{it:{help ticksetstyle_zh}}} 
	水平坐标轴的主刻度集，包括标签但不包括刻度{p_end}

{p2col:{cmd:ticksetstyle major_vert_default}{space 3}{it:{help ticksetstyle_zh}}} 
	垂直坐标轴的默认主刻度集，包括刻度和标签，但不包括网格{p_end}
{p2col:{cmd:ticksetstyle major_vert_withgrid}{space 2}{it:{help ticksetstyle_zh}}} 
	垂直坐标轴的主刻度集，包括网格{p_end}
{p2col:{cmd:ticksetstyle major_vert_nolabel}{space 3}{it:{help ticksetstyle_zh}}} 
	垂直坐标轴的主刻度集，包括刻度但不包括标签{p_end}
{p2col:{cmd:ticksetstyle major_vert_notick}{space 4}{it:{help ticksetstyle_zh}}} 
	垂直坐标轴的主刻度集，包括标签但不包括刻度{p_end}

{p2col:{cmd:ticksetstyle minor_horiz_default}{space 2}{it:{help ticksetstyle_zh}}} 
	水平坐标轴的默认次刻度集，包括刻度和标签，但不包括网格{p_end}
{p2col:{cmd:ticksetstyle minor_horiz_nolabel}{space 2}{it:{help ticksetstyle_zh}}} 
	水平坐标轴的次刻度集，包括刻度但不包括标签{p_end}
{p2col:{cmd:ticksetstyle minor_horiz_notick}{space 3}{it:{help ticksetstyle_zh}}} 
	水平坐标轴的次刻度集，包括标签但不包括刻度{p_end}

{p2col:{cmd:ticksetstyle minor_vert_default}{space 3}{it:{help ticksetstyle_zh}}} 
	垂直坐标轴的默认，具有刻度和标签，但不包括网格{p_end}
{p2col:{cmd:ticksetstyle minor_vert_nolabel}{space 3}{it:{help ticksetstyle_zh}}} 
	垂直坐标轴的次刻度集，包括刻度但不包括标签{p_end}
{p2col:{cmd:ticksetstyle minor_vert_notick}{space 4}{it:{help ticksetstyle_zh}}} 
	垂直坐标轴的次刻度集，包括标签但不包括刻度{p_end}
{p2line}


{marker remarks13}{...}
{title:整体坐标轴样式}

{p2colset 4 45 48 0}{...}
{p 3 3 2}
这些复合条目指定坐标轴的整体外观；见 {manhelpi justificationstyle G-4}。这些条目不应轻易更改；相反，考虑更改特定坐标轴属性的条目 {c -} 例如，刻度的 {help colorstyle_zh}、刻度标签的 {help textsizestyle_zh} 等。

{p2col:条目} 描述{p_end}
{p2line}
{p2col:{cmd:axisstyle horizontal_default} {space 0}{it:{help axisstyle_zh}}}
	默认的水平坐标轴{p_end}
{p2col:{cmd:axisstyle vertical_default}   {space 2}{it:{help axisstyle_zh}}}
	默认的垂直坐标轴{p_end}

{p2col:{cmd:axisstyle horizontal_nogrid}  {space 1}{it:{help axisstyle_zh}}}
	无网格的水平坐标轴{p_end}
{p2col:{cmd:axisstyle vertical_nogrid}    {space 3}{it:{help axisstyle_zh}}}
	无网格的垂直坐标轴{p_end}

{p2col:{cmd:axisstyle bar_super}          {space 9}{it:{help axisstyle_zh}}}
	{helpb graph bar} 坐标轴的超级组组件{p_end}
{p2col:{cmd:axisstyle bar_group}          {space 9}{it:{help axisstyle_zh}}}
	{helpb graph bar} 坐标轴的组组件{p_end}
{p2col:{cmd:axisstyle bar_var}            {space 11}{it:{help axisstyle_zh}}}
	{helpb graph bar} 坐标轴的变量组件{p_end}

{p2col:{cmd:axisstyle dot_super}          {space 9}{it:{help axisstyle_zh}}}
	{helpb graph dot} 坐标轴的超级组组件{p_end}
{p2col:{cmd:axisstyle dot_group}          {space 9}{it:{help axisstyle_zh}}}
	{helpb graph dot} 坐标轴的组组件{p_end}
{p2col:{cmd:axisstyle dot_var}            {space 11}{it:{help axisstyle_zh}}}
	{helpb graph dot} 坐标轴的变量组件{p_end}

{p2col:{cmd:axisstyle bar_scale_horiz}    {space 3}{it:{help axisstyle_zh}}}
	{it:y} 坐标轴的 {helpb graph hbar}{p_end}
{p2col:{cmd:axisstyle bar_scale_vert}     {space 4}{it:{help axisstyle_zh}}}
	{it:y} 坐标轴的 {helpb graph bar}{p_end}

{p2col:{cmd:axisstyle box_scale_horiz}    {space 3}{it:{help axisstyle_zh}}}
	{it:y} 坐标轴的 {helpb graph hbox}{p_end}
{p2col:{cmd:axisstyle box_scale_vert}     {space 4}{it:{help axisstyle_zh}}}
	{it:y} 坐标轴的 {helpb graph box}{p_end}

{p2col:{cmd:axisstyle dot_scale_horiz}    {space 3}{it:{help axisstyle_zh}}}
	{it:y} 坐标轴的 {helpb graph dot}{p_end}
{p2col:{cmd:axisstyle bar_scale_vert}     {space 4}{it:{help axisstyle_zh}}}
	{it:y} 坐标轴的 {helpb graph dot}，如果 {it:y} 坐标轴是垂直的{p_end}

{p2col:{cmd:axisstyle matrix_horiz}       {space 6}{it:{help axisstyle_zh}}}
	{helpb graph matrix} 的水平坐标轴{p_end}
{p2col:{cmd:axisstyle matrix_vert}        {space 7}{it:{help axisstyle_zh}}}
	{helpb graph matrix} 的垂直坐标轴{p_end}
{p2line}
{p2colreset}{...}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <scheme_axes.sthlp>}