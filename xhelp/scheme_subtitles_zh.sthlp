{smcl}
{* *! version 1.0.3  11feb2011}{...}
{vieweralsosee "scheme files" "help scheme files"}
{help scheme_subtitles:English Version}
{hline}{...}
{title:副标题方案条目}

{p2colset 4 51 54 0}{...}
{p 3 3 2}
这些图形方案条目控制图形副标题的外观。副标题的外观在所有图形系列中共享.{p_end}

{p2col:条目} 描述{p_end}
{p2line}
{p2col:{cmd:gsize         {space 8}subheading}        {space 7}{it:{help textsizestyle_zh}}}
	文本大小 (#){p_end}
{p2col:{cmd:color         {space 8}subheading}        {space 7}{it:{help colorstyle_zh}}}
	文本颜色 (#){p_end}
{p2col:{cmd:vertical_text {space 0}subheading}        {space 7}{it:{help alignmentstyle_zh}}}
	文本对齐 (#){p_end}

{p2col:{cmd:margin        {space 7}subheading}        {space 7}{it:{help marginstyle_zh}}}
	文本周围的边距 (#){p_end}

{p2col:{cmd:clockdir      {space 5}subtitle_position} {space 0}{it:{help clockpos}}}
	相对于绘图区域的位置{p_end}
{p2col:{cmd:yesno         {space 8}subtitle_span}     {space 4}{{cmd:yes}|{cmd:no}}}
	{help scmd_ttlspan_zh:居中/跨越}{p_end}
{p2col:{cmd:gridringstyle {space 0}subtitle_ring}     {space 4}{it:{help ringpos}}}
	{help scmd_ttlring_zh:与绘图区域的距离}{p_end}

{p2col:{cmd:textboxstyle  {space 1}subtitle}          {space 9}{it:{help textboxstyle_zh}}}
	副标题的整体样式 (*){p_end}
{p2line}
{p 3 7 0}(#) 与许多方案的图例标题共享。另见下面的 (*) 以了解复合条目的影响.{p_end}
{p 3 7 0}(*) 复合条目。对于大多数官方方案，{it:textboxstyle} 是 {cmd:heading}，并且表中识别 
{cmd:heading} 作为图形元素的条目将影响标题。如果一个方案指定了 
{it:textboxstyle} 的不同复合样式，则必须使用与该复合样式相关的条目来更改标题的外观.{p_end}
{p2colreset}{...}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <scheme_subtitles.sthlp>}