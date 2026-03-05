{smcl}
{* *! version 1.0.7  16apr2019}{...}
{vieweralsosee "方案文件" "help scheme files"}
{help scheme_other:English Version}
{hline}{...}
{p 3 3 2}
以下条目很少被 Stata 自带的方案使用。然而，一些条目可能会被社区贡献的方案引用，或者如果图形被 {help advanced_options_zh:recast} 从一种类型转换为另一种类型时。

{p 3 3 2}
下面的每个表格显示正在控制的一个属性的条目，例如颜色或大小。

{title:文本大小条目}
{p2colset 4 37 40 0}
{p 3 3 2}
这些条目指定文本的 {help textsizestyle_zh:size}。{p_end}

{p2col:条目} 描述{p_end}
{p2line}

{p2col:{cmd:gsize filled_text} {space 1}{it:{help textsizestyle_zh}}}
	某些 {help textboxstyle_zh:textboxstyles} 的默认文本大小{p_end}
{p2col:{cmd:gsize text}      {space 8}{it:{help textsizestyle_zh}}}
	未指定其他大小时的默认文本大小{p_end}
{p2line}

{title:文本框样式条目}
{p2colset 4 44 47 0}
{p 3 3 2}
这些复合条目指定图形文本元素的 {it:{help textboxstyle_zh}} 或 {it:{help textstyle_zh}}，以及文本框元素的有框 {help textboxstyle_zh:style}。有关 {it:textboxstyle} 和 {it:textstyle} 的区别，请参见 {manhelpi textstyle G-4}。在方案文件中，这两种样式都是 {it:textboxstyle}，而 {it:textboxstyle} 的附加属性在应用于无法被框的图形元素时会被忽略。

{p 3 3 2}
如 {manhelpi textboxstyle G-4} 和 {manhelpi textstyle G-4} 中更详细讨论的那样， {it:textboxstyle} 将多个基本样式属性（例如文本颜色和文本大小）归为一个样式。

{p2col:条目} 描述{p_end}
{p2line}

{p2col:{cmd:textboxstyle body}        {space 7}{it:{help textboxstyle_zh}}}
	定义标准的正文文本{p_end}
{p2col:{cmd:textboxstyle heading}     {space 4}{it:{help textboxstyle_zh}}}
	定义标准的标题文本{p_end}
{p2col:{cmd:textboxstyle subheading}  {space 1}{it:{help textboxstyle_zh}}}
	定义标准的副标题文本{p_end}
{p2col:{cmd:textboxstyle label}       {space 6}{it:{help textboxstyle_zh}}}
	定义标准标签{p_end}
{p2col:{cmd:textboxstyle small_label} {space 0}{it:{help textboxstyle_zh}}}
	定义标准的小标签{p_end}
{p2col:{cmd:textboxstyle ilabel}      {space 5}{it:{help textboxstyle_zh}}}
	定义标准的标记标签{p_end}
{p2col:{cmd:textboxstyle key_label}   {space 2}{it:{help textboxstyle_zh}}}
	定义标准的关键标签{p_end}
{p2line}

{title:文本对齐方式}
{p2colset 4 47 50 0}
{p 3 3 2}
这些条目指定文本的水平对齐方式；请参见 {manhelpi justificationstyle G-4}。

{p2col:条目} 描述{p_end}
{p2line}
{p2col:{cmd:horizontal heading}    {space 5}{it:{help justificationstyle_zh}}}
	标题对齐方式{p_end}
{p2col:{cmd:horizontal subheading} {space 2}{it:{help justificationstyle_zh}}}
	副标题对齐方式{p_end}
{p2col:{cmd:horizontal body}       {space 8}{it:{help justificationstyle_zh}}}
	正文文本对齐方式{p_end}
{p2col:{cmd:horizontal axis_title} {space 2}{it:{help justificationstyle_zh}}}
	坐标轴标题对齐方式{p_end}
{p2line}

{title:文本垂直对齐方式}
{p2colset 4 47 50 0}
{p 3 3 2}
这些条目指定文本的垂直对齐方式；请参见 {manhelpi alignmentstyle G-4}。

{p2col:条目} 描述{p_end}
{p2line}
{p2col:{cmd:vertical_text body}       {space 8}{it:{help alignmentstyle_zh}}}
	正文文本对齐方式；默认用于标题{p_end}
{p2col:{cmd:vertical_text axis_title} {space 2}{it:{help alignmentstyle_zh}}}
	坐标轴标题对齐方式{p_end}
{p2line}

{title:区域样式条目}
{p2colset 4 42 45 0}
{p 3 3 2}
这些复合条目指定组成填充区域的属性集合；请参见 {manhelpi areastyle G-4}。

{p2col:条目} 描述{p_end}
{p2line}
{p2col:{cmd:areastyle p}{it:#}          {space 14}{it:{help areastyle_zh}}}
	第 # 节图形的默认 {it:areastyle}{p_end}

{p2col:{cmd:areastyle plotregion}       {space 6}{it:{help areastyle_zh}}}
	整体图区域的 {it:areastyle}；很少使用{p_end}
{p2col:{cmd:areastyle inner_plotregion} {space 0}{it:{help areastyle_zh}}}
	内部图区域的 {it:areastyle}；很少使用{p_end}

{p2col:{cmd:areastyle foreground}       {space 6}{it:{help areastyle_zh}}}
	前景区域的填充 {it:areastyle}{p_end}
{p2col:{cmd:areastyle background}       {space 6}{it:{help areastyle_zh}}}
	背景区域的填充 {it:areastyle}{p_end}
{p2line}

{title:线样式条目}
{p2colset 4 37 40 0}
{p 3 3 2}
这些复合条目指定组成线条外观的属性集合，包括绘制的图形、框周围的线条、坐标轴线等；请参见 {manhelpi linestyle G-4}。

{p2col:条目} 描述{p_end}
{p2line}
{p2col:{cmd:linestyle p}                  {space 7}{it:{help linestyle_zh}}}
	所有图形系列、图形类型和图形的默认 {it:linestyle}{p_end}
{p2col:{cmd:linestyle p}{it:#}            {space 6}{it:{help linestyle_zh}}}
	覆盖第 # 节图形的默认 {it:linestyle}{p_end}
{p2col:{cmd:linestyle p}{it:#}{cmd:other} {space 1}{it:{help linestyle_zh}}}
	覆盖其他区域第 # 节图形的 {it:linestyle}；很少使用{p_end}
{p2line}

{title:阴影样式条目}
{p2colset 4 35 38 0}
{p 3 3 2}
这些复合条目指定构成填充区域颜色及颜色强度的属性集合；请参见 {manhelpi shadestyle G-4}。阴影样式仅出现在方案文件中，且很少更改。

{p2col:条目} 描述{p_end}
{p2line}
{p2col:{cmd:shadestyle p}        {space 3}{it:{help shadestyle_zh}}}
	所有图形系列、图形类型和图形的默认 {it:shadestyle}{p_end}
{p2col:{cmd:shadestyle p}{it:#}  {space 2}{it:{help shadestyle_zh}}}
	覆盖第 # 节图形的 {it:shadestyle}{p_end}
{p2line}

{title:边距条目}
{p2colset 4 37 40 0}
{p 3 3 2}
这些条目指定围绕文本框、图区域、图形区域和其他图形元素的 {help marginstyle_zh:margins}。

{p2col:条目} 描述{p_end}
{p2line}
{p2col:{cmd:margin text}         {space 8}{it:{help marginstyle_zh}}}
	默认边距；如果未另行指定{p_end}
{p2line}

{title:线条模式符号条目}
{p2colset 4 44 47 0}
{p 3 3 2}
这些条目指定用于线条和轮廓的 {help linepatternstyle_zh:patterns}。

{p2col:条目} 描述{p_end}
{p2line}
{p2col:{cmd:linepattern p}{it:#}{cmd:other} {space 3}{it:{help linepatternstyle_zh}}}
	覆盖绘制的第 # 节其他区域的模式；很少使用{p_end}
{p2line}

{title:标记大小条目}
{p2colset 4 41 44 0}
{p 3 3 2}
这些条目指定标记的 {help markersizestyle_zh:size}。

{p2col:条目} 描述{p_end}
{p2line}
{p2col:{cmd:symbolsize symbol} {space 3}{it:{help markersizestyle_zh}}}
	未另行指定时标记的默认大小{p_end}
{p2line}

{title:长度条目}
{p2colset 4 37 40 0}
{p 3 3 2}
这些条目指定间隔、长度和其他距离的大小。请注意，这些条目可以使用 {it:{help textsizestyle_zh:textsizestyles}} 或 {it:{help size_zh:sizes}}。

{p2col:条目} 描述{p_end}
{p2line}
{p2col:{cmd:gsize gap}       {space 7}{it:{help textsizestyle_zh}}}
	间隔的默认长度；很少使用{p_end}
{p2line}

{title:颜色条目}
{p2colset 4 37 40 0}
{p 3 3 2}
这些条目指定图形元素的 {help colorstyle_zh:color}。

{p2col:条目} 描述{p_end}
{p2line}
{p2col:{cmd:color filled_text} {space 0}{it:{help colorstyle_zh}}}
	某些填充文本框的文本颜色{p_end}
{p2col:{cmd:color filled}      {space 5}{it:{help colorstyle_zh}}}
	某些填充文本框的背景颜色{p_end}
{p2col:{cmd:color box}         {space 8}{it:{help colorstyle_zh}}}
	未另行指定的框的背景颜色{p_end}

{p2col:{cmd:color p}           {space 10}{it:{help colorstyle_zh}}}
	图形的默认颜色；很少使用{p_end}
{p2col:{cmd:color p}{it:#}{cmd:other}     {space 4}{it:{help colorstyle_zh}}}
	覆盖其他区域第 # 节图形的填充颜色；很少使用{p_end}
{p2col:{cmd:color p}{it:#}{cmd:otherline} {space 0}{it:{help colorstyle_zh}}}
	覆盖其他区域第 # 节图形的线条颜色；很少使用{p_end}
{p2line}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <scheme_other.sthlp>}