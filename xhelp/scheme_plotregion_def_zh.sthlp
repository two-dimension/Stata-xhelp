{smcl}
{* *! version 1.0.4  11feb2011}{...}
{vieweralsosee "[G-4] areastyle" "help areastyle_zh"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "scheme files" "help scheme files"}
{help scheme_plotregion_def:English Version}
{hline}{...}
{title:plotregion areastyle 定义}

{p2colset 4 46 49 0}{...}
{p 3 3 2}
大多数随 Stata 附带的方案对于大多数或所有图形系列使用通用的 {cmd:plotregion} 
{it:{help areastyle_zh}}。这些条目定义了 {it:areastyle}。

{p2col:条目} 描述{p_end}
{p2line}
{p2col:{cmd:color       {space 6}plotregion}  {space 1}{it:{help colorstyle_zh}}}
	填充颜色{p_end}
{p2col:{cmd:intensity   {space 2}plotregion}  {space 1}{it:{help intensitystyle_zh}}}
	填充强度{p_end}
{p2col:{cmd:linewidth   {space 2}plotregion}  {space 1}{it:{help linewidthstyle_zh:linewidth}}}
	轮廓厚度{p_end}
{p2col:{cmd:linepattern {space 0}plotregion}  {space 1}{it:{help linepatternstyle_zh}}}
	轮廓样式{p_end}
{p2col:{cmd:color       {space 6}plotregion_line} {space 2}{it:{help colorstyle_zh}}}
	轮廓颜色{p_end}

{p2col:{cmd:shadestyle  {space 1}plotregion}  {space 1}{it:{help shadestyle_zh}}}
	图形区域 {it:shadestyle} (*){p_end}
{p2col:{cmd:linestyle   {space 2}plotregion}  {space 1}{it:{help linestyle_zh}}}
	轮廓线样式 (*){p_end}
{p2line}
{p 3 7 0}(*) 复合条目。对于大多数官方方案，这些复合条目的样式为 {cmd:plotregion}，表格
第一部分中的条目将影响图形区域的外观。如果一个方案在某个复合条目中指定了不同的样式，则必须使用与该复合样式相关的条目来更改图形区域的外观。{p_end}
{p2colreset}{...}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <scheme_plotregion_def.sthlp>}