{smcl}
{* *! version 1.0.4  11feb2011}{...}
{vieweralsosee "[G-4] textboxstyle" "help textboxstyle_zh"}{...}
{vieweralsosee "scheme files" "help scheme files"}
{help scheme_textbox_common:English Version}
{hline}{...}
{title:常见文本框条目}

{p2colset 4 40 43 0}{...}
{p 3 3 2}
随 Stata 发货的多数方案使用这一常见条目集来决定是否在文本元素周围绘制框以及该框的外观。请注意，这些条目被许多其他 {help textboxstyle_zh:textboxstyles} 共享，改变它们可能会改变许多图形文本元素的外观。

{p2col:条目} 描述{p_end}
{p2line}
{p2col:{cmd:yesno       {space 5}textbox}       {space 2}{{cmd:yes}|{cmd:no}}}
	是否在文本周围绘制框 {cmd:yes} 或不绘制 {cmd:no}{p_end}
{p2col:{cmd:color       {space 5}textbox}       {space 2}{it:{help colorstyle_zh}}}
	框的填充颜色{p_end}
{p2col:{cmd:margin        {space 4}textbox}     {space 2}{it:{help marginstyle_zh}}}
	框的外边距{p_end}

{p2col:{cmd:linestyle   {space 1}textbox}      {space 2}{it:{help linestyle_zh}}}
	框周围绘制的线条样式；复合样式{p_end}
{p2line}
{p2colreset}{...}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <scheme_textbox_common.sthlp>}