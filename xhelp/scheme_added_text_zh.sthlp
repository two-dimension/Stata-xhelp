{smcl}
{* *! version 1.0.3  11feb2011}{...}
{vieweralsosee "scheme files" "help scheme files"}
{help scheme_added_text:English Version}
{hline}{...}
{title:添加文本的方案条目}

{p 3 3 2}
这些条目指定了使用 {help added_text_options_zh:text()} 或 {help added_text_options_zh:ttext()} 选项添加的文本的外观。它们还规定了可以应用于任何文本框的 {cmd:text_option} {help textboxstyle_zh} 的定义。

{p2colset 4 54 57 0}{...}
{p2col:条目} 描述{p_end}
{p2line}
{p2col:{cmd:gsize         {space 8}text_option}      {space 5}{it:{help textsizestyle_zh}}}
	文本大小{p_end}
{p2col:{cmd:color         {space 8}text_option}      {space 5}{it:{help colorstyle_zh}}}
	文本颜色{p_end}

{p2col:{cmd:yesno         {space 8}text_option}      {space 5}{{cmd:yes}|{cmd:no}}}
	在文本周围绘制框{p_end}
{p2col:{cmd:color         {space 8}text_option_fill} {space 0}{it:{help colorstyle_zh}}}
	框填充颜色{p_end}
{p2col:{cmd:color         {space 8}text_option_line} {space 0}{it:{help colorstyle_zh}}}
	框轮廓颜色{p_end}
{p2col:{cmd:linewidth     {space 4}text_option}      {space 5}{it:{help linewidthstyle_zh:linewidth}}}
	框轮廓厚度{p_end}
{p2col:{cmd:linepattern   {space 2}text_option}      {space 5}{it:{help linepatternstyle_zh}}}
	框轮廓图案{p_end}

{p2col:{cmd:horizontal    {space 3}text_option}      {space 5}{it:{help justificationstyle_zh}}}
	文本对齐{p_end}
{p2col:{cmd:vertical_text {space 0}text_option}      {space 5}{it:{help alignmentstyle_zh}}}
	文本排列{p_end}

{p2col:{cmd:margin        {space 7}text_option}      {space 5}{it:{help marginstyle_zh}}}
	文本周围的边距{p_end}

{p2col:{cmd:compass2dir   {space 2}text_option}      {space 5}{it:{help compassdirstyle_zh}}}
	添加文本的相对于放置点的位置{p_end}

{p2col:{cmd:linestyle     {space 4}text_option}      {space 5}{it:{help linestyle_zh}}}
	整体框轮廓样式 (*){p_end}
{p2col:{cmd:textboxstyle  {space 1}text_option}      {space 5}{it:{help textboxstyle_zh}}}
	文本框的整体样式 (*){p_end}
{p2line}
{p 3 7 0}(*) 复合条目。对于大多数官方方案，{it:textboxstyle} 是 {cmd:text_option}，表中其他条目适用于 {help added text options}。如果一个方案为 {it:textboxstyle} 指定了不同的复合样式，必须使用与该复合样式相关的条目来更改添加文本的外观。{p_end}
{p2colreset}{...}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <scheme_added_text.sthlp>}