{smcl}
{* *! version 1.1.8  16apr2019}{...}
{vieweralsosee "[G-4] textsizestyle" "mansection G-4 textsizestyle"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[G-3] marker_label_options" "help marker_label_options_zh"}{...}
{vieweralsosee "[G-3] textbox_options" "help textbox_options_zh"}{...}
{vieweralsosee "[G-4] text" "help text"}{...}
{viewerjumpto "Syntax" "textsizestyle_zh##syntax"}{...}
{viewerjumpto "Description" "textsizestyle_zh##description"}
{help textsizestyle:English Version}
{hline}{...}
{p2colset 1 24 26 2}{...}
{p2col:{bf:[G-4]} {it:textsizestyle} {hline 2}}文本大小的选择{p_end}
{p2col:}({mansection G-4 textsizestyle:查看完整的 PDF 手册条目}){p_end}
{p2colreset}{...}


{marker syntax}{...}
{title:语法}

{synoptset 20}{...}
{p2col:{it:textsizestyle}}描述{p_end}
{p2line}
{p2col:{cmd:zero}}无大小，极小{p_end}

{p2col:{cmd:minuscule}}最小{p_end}
{p2col:{cmd:quarter_tiny}}{p_end}
{p2col:{cmd:third_tiny}}{p_end}
{p2col:{cmd:half_tiny}}{p_end}
{p2col:{cmd:tiny }}{p_end}
{p2col:{cmd:vsmall}}{p_end}
{p2col:{cmd:small}}{p_end}
{p2col:{cmd:medsmall}}{p_end}
{p2col:{cmd:medium}}{p_end}
{p2col:{cmd:medlarge}}{p_end}
{p2col:{cmd:large}}{p_end}
{p2col:{cmd:vlarge}}{p_end}
{p2col:{cmd:huge}}{p_end}
{p2col:{cmd:vhuge}}最大{p_end}

{p2col:{cmd:tenth}}图形大小的十分之一{p_end}
{p2col:{cmd:quarter}}图形大小的四分之一{p_end}
{p2col:{cmd:third}}图形大小的三分之一{p_end}
{p2col:{cmd:half}}图形大小的一半{p_end}
{p2col:{cmd:full}}与图形同大小的文本{p_end}

{p2col:{it:{help size_zh}}}任何你想要的大小{p_end}
{p2line}
{p2colreset}{...}

{pstd}
其他 {it:textsizestyle} 可能可用；输入

	    {cmd:.} {bf:{stata graph query textsizestyle}}

{pstd}
以获取您计算机上安装的 {it:textsizestyle} 的完整列表。


{marker description}{...}
{title:描述}

{pstd}
{it:textsizestyle} 指定文本的大小。

{pstd}
{it:textsizestyle} 在选项中指定，例如 {cmd:size()} 的子选项 {cmd:title()}（见 {manhelpi title_options G-3}）：

{phang2}
	{cmd:. graph} ...{cmd:, title("我的标题", size(}{it:textsizestyle}{cmd:))} ...

{pstd}
另请参阅 {manhelpi textbox_options G-3} 以获取文本其他特征的信息。
{p_end}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <textsizestyle.sthlp>}