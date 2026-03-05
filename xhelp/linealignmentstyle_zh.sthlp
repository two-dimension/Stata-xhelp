{smcl}
{* *! version 1.0.3  15may2018}{...}
{vieweralsosee "[G-4] linealignmentstyle" "mansection G-4 linealignmentstyle"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[G-4] 概念: lines" "help lines_zh"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[G-4] linepatternstyle" "help linepatternstyle_zh"}{...}
{vieweralsosee "[G-4] linestyle" "help linestyle_zh"}{...}
{vieweralsosee "[G-4] linewidthstyle" "help linewidthstyle_zh"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[G-4] colorstyle" "help colorstyle_zh"}{...}
{vieweralsosee "[G-4] connectstyle" "help connectstyle_zh"}{...}
{viewerjumpto "语法" "linealignmentstyle_zh##syntax"}{...}
{viewerjumpto "描述" "linealignmentstyle_zh##description"}
{help linealignmentstyle:English Version}
{hline}{...}
{p2colset 1 29 31 2}{...}
{p2col:{bf:[G-4]} {it:linealignmentstyle} {hline 2}}选择轮廓是位于内部、外部还是居中的{p_end}
{p2col:}({mansection G-4 linealignmentstyle:查看完整的 PDF 手册条目}){p_end}
{p2colreset}{...}


{marker syntax}{...}
{title:语法}

{synoptset 25}{...}
{p2col:{it:linealignmentstyle}}描述{p_end}
{p2line}
{p2col:{cmd:inside}}线位于轮廓内部{p_end}
{p2col:{cmd:outside}}线位于轮廓外部{p_end}
{p2col:{cmd:center}}线居中对齐轮廓{p_end}
{p2line}
{p2colreset}{...}

{pstd}
其他的 {it:linealignmentstyles} 可能可用；输入

	    {cmd:.} {bf:{stata graph query linealignmentstyle}}

{pstd}
可获取你计算机上安装的完整列表。


{marker description}{...}
{title:描述}

{pstd}
标记、填充区域、条形和框的边框或轮廓的外观是由其图案、厚度、对齐方式和颜色决定的。
{it:linealignmentstyle} 指定对齐方式。

{pstd}
{it:linealignmentstyle} 通过以下命名选项指定

{phang2}
	<{it:object}><{cmd:l} 或 {cmd:li} 或 {cmd:line}>{cmd:align()}

{pstd}
或者

	<{cmd:l} 或 {cmd:li} 或 {cmd:line}>{cmd:align()}

{pstd}
例如，对于 {cmd:graph} {cmd:twoway} {cmd:histogram} 使用的条形，选项命名为 {cmd:lalign()}:

{phang2}
	{cmd:. twoway histogram} ...{cmd:, lalign(}{it:linealignmentstyle}{cmd:)} ...
{p_end}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <linealignmentstyle.sthlp>}