{smcl}
{* *! version 1.0.3  11feb2011}{...}
{vieweralsosee "scheme background def" "help scheme background def"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "scheme files" "help scheme files"}
{help scheme_foreground_def:English Version}
{hline}{...}
{title:前景样式定义}

{p2colset 4 46 49 0}{...}
{p 3 3 2}
与 Stata 一同发布的大多数方案使用常见的 {cmd:foreground} 
{help areastyle_zh:areastyles} 和 {help linestyle_zh:linestyles} 来指定某些图形元素的外观。 这些是定义 {cmd:foreground} 样式的方案条目。

{p2col:条目} 描述{p_end}
{p2line}
{p2col:{cmd:color       {space 6}foreground} {space 0}{it:{help colorstyle_zh}}}
	前景颜色{p_end}

{p2col:{cmd:intensity   {space 2}foreground} {space 0}{it:{help intensitystyle_zh}}}
	前景区域的强度{p_end}
{p2col:{cmd:shadestyle  {space 1}foreground} {space 0}{it:{help shadestyle_zh}}}
	前景 {bind:areas (*)} 的填充 {it:shadestyle}{p_end}

{p2col:{cmd:linewidth   {space 2}foreground} {space 0}{it:{help linewidthstyle_zh:linewidth}}}
	前景线的线宽；很少使用{p_end}
{p2col:{cmd:linepattern {space 0}foreground} {space 0}{it:{help linepatternstyle_zh}}}
	前景线的线型；很少使用{p_end}
{p2col:{cmd:linestyle   {space 2}foreground}   {space 0}{it:{help linestyle_zh}}}
	前景线的 {it:linestyle}；很少 {bind:used (*)}{p_end}
{p2line}
{p 3 7 0}(*) 复合条目。对于大多数正式方案，这些复合条目的样式是 {cmd:foreground}，而表中其他条目将影响前景的外观。如果某个方案在复合条目中指定了不同的样式，则与该复合样式相关的条目必须用于改变前景的外观。{p_end}
{p2colreset}{...}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <scheme_foreground_def.sthlp>}