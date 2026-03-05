{smcl}
{* *! version 1.0.3  11feb2011}{...}
{vieweralsosee "scheme files" "help scheme files"}
{help scheme_labels:English Version}
{hline}{...}
{title:标签和小标签的文本框样式定义}

{p2colset 4 46 49 0}{...}
{p 3 3 2}
{cmd:label} 和 {cmd:small_label} 是 {help textboxstyle_zh:textboxstyles} 用于多个图形文本元素的样式。它们共享一个共同的定义，唯一的区别是小标签的文本大小较小 {c -} 默认情况下它较小，但您可以将其调大。

{p 3 3 2}
一个方案可以使用以下条目来改变标签和小标签的外观。

{p2col:条目} 描述{p_end}
{p2line}
{p2col:{cmd:gsize         {space 5}label}       {space 6}{it:{help textsizestyle_zh}}}
	标签 {cmd:label} 的文本大小 {help textstyle_zh}{p_end}
{p2col:{cmd:gsize         {space 5}small_label} {space 0}{it:{help textsizestyle_zh}}}
	小标签 {cmd:small_label} 的文本大小 {help textstyle_zh}{p_end}
{p2col:{cmd:color       {space 5}label}         {space 6}{it:{help colorstyle_zh}}}
	文本颜色{p_end}
{p2col:{cmd:margin        {space 4}label}       {space 6}{it:{help marginstyle_zh}}}
	文本周围的边距{p_end}
{p2col:{cmd:horizontal    {space 0}label}       {space 6}{it:{help justificationstyle_zh}}}
	文本对齐方式{p_end}
{p2col:{cmd:vertical_text {space 0}label}       {space 3}{it:{help alignmentstyle_zh}}}
	文本排列方式{p_end}
{p2line}

{p2colset 4 40 43 0}{...}
{p 3 3 2}
一个方案也可以改变文本周围框的定义以及是否绘制该框，但这很少发生。这些条目被许多其他 {help textboxstyle_zh:textboxstyles} 共享，改变它们也会改变使用这些样式的任何其他文本的外观。

{p2col:条目} 描述{p_end}
{p2line}
{p2col:{cmd:yesno       {space 5}textbox}       {space 2}{{cmd:yes}|{cmd:no}}}
	是否在文本周围绘制框 {cmd:yes}，或不绘制 {cmd:no}{p_end}
{p2col:{cmd:color       {space 5}textbox}       {space 2}{it:{help colorstyle_zh}}}
	框的填充颜色{p_end}
{p2col:{cmd:margin        {space 4}textbox}     {space 2}{it:{help marginstyle_zh}}}
	框外部的边距{p_end}

{p2col:{cmd:linestyle   {space 1}textbox}      {space 2}{it:{help linestyle_zh}}}
	围绕框所绘制的线条样式，复合样式{p_end}
{p2line}
{p2colreset}{...}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <scheme_labels.sthlp>}