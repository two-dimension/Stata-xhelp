{smcl}
{* *! version 1.1.9  16apr2019}{...}
{vieweralsosee "[G-4] linewidthstyle" "mansection G-4 linewidthstyle"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[G-4] 概念：线" "help lines_zh"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[G-4] linealignmentstyle" "help linealignmentstyle_zh"}{...}
{vieweralsosee "[G-4] linepatternstyle" "help linepatternstyle_zh"}{...}
{vieweralsosee "[G-4] linestyle" "help linestyle_zh"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[G-4] colorstyle" "help colorstyle_zh"}{...}
{vieweralsosee "[G-4] connectstyle" "help connectstyle_zh"}{...}
{viewerjumpto "语法" "linewidthstyle_zh##syntax"}{...}
{viewerjumpto "描述" "linewidthstyle_zh##description"}{...}
{viewerjumpto "链接到PDF文档" "linewidthstyle_zh##linkspdf"}{...}
{viewerjumpto "备注" "linewidthstyle_zh##remarks"}
{help linewidthstyle:English Version}
{hline}{...}
{p2colset 1 25 27 2}{...}
{p2col:{bf:[G-4]} {it:linewidthstyle} {hline 2}}线条厚度的选择{p_end}
{p2col:}({mansection G-4 linewidthstyle:查看完整PDF手册条目}){p_end}
{p2colreset}{...}


{marker syntax}{...}
{title:语法}

{synoptset 20}{...}
{p2col:{it:linewidthstyle}}描述{p_end}
{p2line}
{p2col:{cmd:none}}线条宽度为零；线条消失{p_end}
{p2col:{cmd:vvthin}}最细{p_end}
{p2col:{cmd:vthin}}{p_end}
{p2col:{cmd:thin}}{p_end}
{p2col:{cmd:medthin}}{p_end}
{p2col:{cmd:medium}}{p_end}
{p2col:{cmd:medthick}}{p_end}
{p2col:{cmd:thick}}{p_end}
{p2col:{cmd:vthick}}{p_end}
{p2col:{cmd:vvthick}}{p_end}
{p2col:{cmd:vvvthick}}最粗{p_end}
{p2col:{it:{help size_zh}}}任何你想要的大小{p_end}
{p2line}
{p2colreset}{...}

{pstd}
其他的 {it:linewidthstyles} 可能可用；输入

	     {cmd:.} {bf:{stata graph query linewidthstyle}}

{pstd}
可获得在你的计算机上安装的完整列表。


{marker description}{...}
{title:描述}

{pstd}
线条的外观由其图案、厚度、对齐和颜色决定；见 {help lines_zh}。 {it:linewidthstyle} 指定了线条的厚度。

{pstd}
{it:linewidthstyle} 通过名为

{phang2}
	<{it:object}><{cmd:l} 或 {cmd:li} 或 {cmd:line}>{cmd:width()}

{pstd}
或，仅仅通过

	<{cmd:l} 或 {cmd:li} 或 {cmd:line}>{cmd:width()}

{pstd}
例如，连接线（用于连接图形中的点）由 {cmd:graph} {cmd:twoway} {cmd:function} 使用，其选项名为 {cmd:lwidth}():

{phang2}
	{cmd:. twoway function} ...{cmd:, lwidth(}{it:linewidthstyle}{cmd:)} ...

{pstd}
有时候你会看到允许使用 {it:linewidthstylelist}：

{phang2}
	{cmd:. twoway line} ...{cmd:, lwidth(}{it:linewidthstylelist}{cmd:)} ...

{pstd}
{it:linewidthstylelist} 是一系列用空格分开的 {it:linewidths}。允许使用简写以方便列出；见 {manhelpi stylelists G-4}。


{marker linkspdf}{...}
{title:链接到PDF文档}

        {mansection G-4 linewidthstyleRemarksandexamples:备注与示例}

{pstd}
以上部分未包含在此帮助文件中。


{marker remarks}{...}
{title:备注}

{pstd}
如果你将线宽指定为 {cmd:none}，则线条会消失。
{p_end}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <linewidthstyle.sthlp>}