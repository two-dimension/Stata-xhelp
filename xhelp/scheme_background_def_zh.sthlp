{smcl}
{* *! version 1.0.3  11feb2011}{...}
{vieweralsosee "scheme foreground def" "help scheme foreground def"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "scheme files" "help scheme files"}
{help scheme_background_def:English Version}
{hline}{...}
{title:背景样式定义}

{p2colset 4 46 49 0}{...}
{p 3 3 2}
大多数随 Stata 一同提供的方案使用通用的 {cmd:background} 
{help areastyle_zh:areastyles} 和 {help linestyle_zh:linestyles} 来指定某些图形元素的外观。这些是定义 {cmd:background} 样式的方案条目。

{p2col:条目} 描述{p_end}
{p2line}
{p2col:{cmd:color       {space 6}background} {space 0}{it:{help colorstyle_zh}}}
	背景颜色{p_end}

{p2col:{cmd:intensity   {space 2}background} {space 0}{it:{help intensitystyle_zh}}}
	背景区域的强度{p_end}
{p2col:{cmd:shadestyle  {space 1}background} {space 0}{it:{help shadestyle_zh}}}
	背景 {bind:areas (*)} 的填充 {it:shadestyle}{p_end}

{p2col:{cmd:linewidth   {space 2}background} {space 0}{it:{help linewidthstyle_zh:linewidth}}}
	背景线的厚度；很少使用{p_end}
{p2col:{cmd:linepattern {space 0}background} {space 0}{it:{help linepatternstyle_zh}}}
	背景线的线型；很少使用{p_end}
{p2col:{cmd:linestyle   {space 2}background}   {space 0}{it:{help linestyle_zh}}}
	背景线的 {it:linestyle}；很少 {bind:used (*)}{p_end}
{p2line}
{p 3 7 0}(*) 复合条目。对于大多数官方方案，这些复合条目的样式是 {cmd:background}，表格中的其他条目将影响背景的外观。如果方案在某个复合条目中指定了不同的样式，则与该复合样式相关的条目必须用来改变背景的外观。{p_end}
{p2colreset}{...}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <scheme_background_def.sthlp>}