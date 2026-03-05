{smcl}
{* *! version 1.0.3  11feb2011}{...}
{vieweralsosee "scheme files" "help scheme files"}
{help scheme_refline_plots:English Version}
{hline}{...}
{title:参考线方案条目}

{p2colset 4 43 46 0}{...}
{p 3 3 2}
这些条目指定使用参考线的图形的参考线外观，或当用户明确指定 {cmd:refline} {help linestyle_zh} 时。更准确地说，它们指定 {cmd:refline} {help linestyle_zh} 的属性。

{p2col:条目} 描述{p_end}
{p2line}
{p2col:{cmd:color       {space 6}refline}  {space 2}{it:{help colorstyle_zh}}}
	参考线颜色{p_end}
{p2col:{cmd:linewidth   {space 2}refline}  {space 2}{it:{help linewidthstyle_zh:linewidth}}}
	参考线粗细{p_end}
{p2col:{cmd:linepattern {space 0}refline}  {space 2}{it:{help linepatternstyle_zh}}}
	参考线的线型{p_end}

{p2col:{cmd:linestyle   {space 2}refline}  {space 2}{it:{help linestyle_zh}}}
	通过方案选择的参考线的整体 {it:linestyle} (*){p_end}
{p2line}
{p 3 7 0}(*) 复合条目.{p_end}
{p2colreset}{...}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <scheme_refline_plots.sthlp>}