{smcl}
{* *! version 1.0.6  11feb2011}{...}
{vieweralsosee "scheme files" "help scheme files"}
{help scheme_added_lines:English Version}
{hline}{...}
{title:用于添加线条的方案条目}

{p 3 3 2}
这些条目指定使用 {help added_line_options_zh:yline()} 或 {help added_line_options_zh:xline()} 选项添加的线条的外观。它们还定义您可以应用于任何由 {help graph_zh} 绘制的线条的 {cmd:xyline} {help linestyle_zh}。

{p 3 3 2}
方案条目在以下标题下呈现：

{p 8 12 0}{help scheme_added_lines##remarks1:{cmd:xyline} 线型定义}{p_end}
{p 8 12 0}{help scheme_added_lines##remarks2:构建添加的线条}{p_end}


{marker remarks1}{...}
{title:{cmd:xyline} 线型的定义}

{p2colset 4 43 47 0}{...}
{p 3 3 2}
这些条目定义了 {cmd:xyline} {help linestyle_zh} 的外观。

{p2col:条目} 描述{p_end}
{p2line}
{p2col:{cmd:color       {space 6}xyline}  {space 1}{it:{help colorstyle_zh}}}
	线条颜色{p_end}
{p2col:{cmd:linewidth   {space 2}xyline}  {space 1}{it:{help linewidthstyle_zh:linewidth}}}
	线条粗细{p_end}
{p2col:{cmd:linepattern {space 0}xyline}  {space 1}{it:{help linepatternstyle_zh}}}
	线条样式{p_end}
{p2line}


{marker remarks2}{...}
{title:构建添加的线条}

{p2colset 4 41 44 0}{...}
{p 3 3 2}
这些条目指定通过 {help added_line_options_zh:yline()} 或 {help added_line_options_zh:xline()} 选项创建的添加线条的构建方式以及用于绘制线条的 {help linestyle_zh}。

{p2col:条目} 描述{p_end}
{p2line}
{p2col:{cmd:yesno {space 1}xyline_extend_low}  {space 1}{{cmd:yes}|{cmd:no}}}
	扩展添加的线条（见 {manhelpi added_line_options G-3}）通过绘图区域边缘到绘图区域的边界框 ({cmd:yes})，或者仅到绘图区域的下内边距 ({cmd:no}){p_end}
{p2col:{cmd:yesno {space 1}xyline_extend_high} {space 0}{{cmd:yes}|{cmd:no}}}
	扩展添加的线条（见 {manhelpi added_line_options G-3}），通过绘图区域边缘到绘图区域的边界框 ({cmd:yes})，或者仅到绘图区域的上内边距 ({cmd:no}){p_end}

{p2col:{cmd:linestyle  {space 2}xyline}      {space 5}{it:{help linestyle_zh}}}
	使用 {cmd:xline()} 和 {cmd:yline()} 选项绘制的线条的 {it:linestyle}；参见 {manhelpi added_line_options G-3}；默认值为 {cmd:xyline}{p_end}
{p2line}
{p 3 7 0}(*) 复合条目。
{p_end}
{p2colreset}{...}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <scheme_added_lines.sthlp>}