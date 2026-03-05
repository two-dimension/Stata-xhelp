{smcl}
{* *! version 1.0.4  11feb2011}{...}
{vieweralsosee "scheme files" "help scheme files"}
{help scheme_numbered_titles:English Version}
{hline}{...}
{title:编号标题方案条目}

{p2colset 4 50 53 0}{...}
{p 3 3 2}
这些图形方案条目控制编号图表标题的外观，例如 {cmd:b1title}。编号标题的外观在所有图表系列中是共享的。{p_end}

{p2col:条目} 描述{p_end}
{p2line}
{p2col:{cmd:textboxstyle  {space 1}t1title}       {space 7}{it:{help textboxstyle_zh}}}
	{cmd:t1title} (*)的整体样式{p_end}
{p2col:{cmd:textboxstyle  {space 1}t2title}       {space 7}{it:{help textboxstyle_zh}}}
	{cmd:t2title} (#)的整体样式{p_end}
{p2col:{cmd:textboxstyle  {space 1}b1title}       {space 7}{it:{help textboxstyle_zh}}}
	{cmd:b1title} (*)的整体样式{p_end}
{p2col:{cmd:textboxstyle  {space 1}b2title}       {space 7}{it:{help textboxstyle_zh}}}
	{cmd:b2title} (#)的整体样式{p_end}
{p2col:{cmd:textboxstyle  {space 1}l1title}       {space 7}{it:{help textboxstyle_zh}}}
	{cmd:l1title} (*)的整体样式{p_end}
{p2col:{cmd:textboxstyle  {space 1}l2title}       {space 7}{it:{help textboxstyle_zh}}}
	{cmd:l2title} (#)的整体样式{p_end}
{p2col:{cmd:textboxstyle  {space 1}r1title}       {space 7}{it:{help textboxstyle_zh}}}
	{cmd:r1title} (*)的整体样式{p_end}
{p2col:{cmd:textboxstyle  {space 1}r2title}       {space 7}{it:{help textboxstyle_zh}}}
	{cmd:r2title} (#)的整体样式{p_end}
{p2line}
{p 3 7 0}(*) 复合条目。对于大多数官方方案，{it:textboxstyle} 是 {cmd:heading}，这意味着这些标题共享图表标题的属性；请参见 {help scheme titles:graph titles} 以设置这些属性。如果某个方案在这些条目之一中指定了不同的复合样式，则必须使用与该复合样式关联的条目来更改标题的外观。{p_end}
{p 3 7 0}(#) 复合条目。对于大多数官方方案，{it:textboxstyle} 是 {cmd:subheading}，这意味着这些标题共享图表副标题的属性；请参见 {help scheme subtitles:graph subtitles} 以设置这些属性。如果某个方案在这些条目之一中指定了不同的复合样式，则必须使用与该复合样式关联的条目来更改标题的外观。{p_end}
{p2colreset}{...}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <scheme_numbered_titles.sthlp>}