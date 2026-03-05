{smcl}
{* *! version 1.1.9  15may2018}{...}
{vieweralsosee "[G-4] linepatternstyle" "mansection G-4 linepatternstyle"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[G-4] 概念: 线" "help lines_zh"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[G-4] colorstyle" "help colorstyle_zh"}{...}
{vieweralsosee "[G-4] linealignmentstyle" "help linealignmentstyle_zh"}{...}
{vieweralsosee "[G-4] linestyle" "help linestyle_zh"}{...}
{vieweralsosee "[G-4] linewidthstyle" "help linewidthstyle_zh"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[G-4] connectstyle" "help connectstyle_zh"}{...}
{viewerjumpto "语法" "linepatternstyle_zh##syntax"}{...}
{viewerjumpto "描述" "linepatternstyle_zh##description"}{...}
{viewerjumpto "PDF 文档链接" "linepatternstyle_zh##linkspdf"}{...}
{viewerjumpto "备注" "linepatternstyle_zh##remarks"}
{help linepatternstyle:English Version}
{hline}{...}
{p2colset 1 27 29 2}{...}
{p2col:{bf:[G-4]} {it:linepatternstyle} {hline 2}}线条为实线、虚线等的选择{p_end}
{p2col:}({mansection G-4 linepatternstyle:查看完整 PDF 手册条目}){p_end}
{p2colreset}{...}


{marker syntax}{...}
{title:语法}

{synoptset 20}{...}
{p2col:{it:linepatternstyle}}描述{p_end}
{p2line}
{p2col:{cmd:solid}}实线{p_end}
{p2col:{cmd:dash}}虚线{p_end}
{p2col:{cmd:dot}}点状线{p_end}
{p2col:{cmd:dash_dot}}{p_end}
{p2col:{cmd:shortdash}}{p_end}
{p2col:{cmd:shortdash_dot}}{p_end}
{p2col:{cmd:longdash}}{p_end}
{p2col:{cmd:longdash_dot}}{p_end}
{p2col:{cmd:blank}}隐形线{p_end}
{p2col:{cmd:"}{it:formula}{cmd:"}}例如: {cmd:"-."} 或 {cmd:"--.."} 等等{p_end}
{p2line}
{p 4 6 2}
一个 {it:formula} 是由任何组合组成的{p_end}
{p2col 17 34 36 2: {cmd:l}}实线{p_end}
{p2col 17 34 36 2: {cmd:_}}（下划线）长虚线{p_end}
{p2col 17 34 36 2: {cmd:-}}（连字符）中虚线{p_end}
{p2col 17 34 36 2: {cmd:.}}短虚线（几乎是一个点）{p_end}
{p2col 17 34 36 2: {cmd:#}}小量空白{p_end}
{p2line}
{p2colreset}{...}

{pstd}
要显示上述每种线条样式的调色板，请输入

	    {cmd:.} {bf:{stata palette linepalette}} {...}
[{cmd:,} {cmdab:sch:eme:(}{it:schemename}{cmd:)}]

{pstd}
其他 {it:linepatternstyles} 可能可用；请键入

{phang3}
{cmd:. {bf:{stata graph query linepatternstyle}}}

{pstd}
以获取安装在您计算机上的 {it:linepatternstyles} 的完整列表。


{marker description}{...}
{title:描述}

{pstd}
线条的外观由其图案、厚度、对齐方式和颜色决定；请参见 {help lines_zh}。 {it:linepatternstyle} 指定图案。

{pstd}
{it:linepatternstyle} 通过名为

{phang2}
	<{it:object}><{cmd:l} 或 {cmd:li} 或 {cmd:line}>{cmd:pattern()}

{pstd}
或

	<{cmd:l} 或 {cmd:li} 或 {cmd:line}>{cmd:pattern()}

{pstd}
来指定。例如，对于连接线（用于连接绘图中的点的线）由 {cmd:graph} {cmd:twoway} {cmd:function} 使用，选项名为 {cmd:lpattern()}：

{phang2}
	{cmd:. twoway function} ...{cmd:, lpattern(}{it:linepatternstyle}{cmd:)} ...

{pstd}
有时您会看到允许使用 {it:linepatternstylelist}：

{phang2}
	{cmd:. twoway line} ...{cmd:, lpattern(}{it:linepatternstylelist}{cmd:)} ...

{pstd}
一个 {it:linepatternstylelist} 是由空格分隔的 {it:linepatterns} 序列。可以使用简写来更轻松地指定列表；请参见 {manhelpi stylelists G-4}。


{marker linkspdf}{...}
{title:PDF 文档链接}

        {mansection G-4 linepatternstyleRemarksandexamples:备注和示例}

{pstd}
以上部分未包含在此帮助文件中。


{marker remarks}{...}
{title:备注}

{pstd}
尽管您可以选择预录的图案（例如， {cmd:solid} 或 {cmd:dash}），但您可以通过指定线条图案公式构建希望的任何图案。例如，

{synoptset 20}{...}
{p2col:公式}描述{p_end}
{p2line}
{p2col:{cmd:"l"}}实线，与 {cmd:solid} 相同{p_end}
{p2col:{cmd:"_"}}长虚线{p_end}
{p2col:{cmd:"_-"}}长虚线后跟短虚线{p_end}
{p2col:{cmd:"_--"}}长虚线后跟两个短虚线{p_end}
{p2col:{cmd:"_--_#"}}一条长虚线、两条短虚线、一条长虚线和一点空白{p_end}
{p2col:{it:等等}}{p_end}
{p2line}

{pstd}
当您指定一个公式时，必须将其用双引号括起来。
{p_end}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <linepatternstyle.sthlp>}