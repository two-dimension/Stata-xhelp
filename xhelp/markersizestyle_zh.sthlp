{smcl}
{* *! version 1.1.8  16apr2019}{...}
{vieweralsosee "[G-4] markersizestyle" "mansection G-4 markersizestyle"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[G-3] marker_options" "help marker_options_zh"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[G-4] colorstyle" "help colorstyle_zh"}{...}
{vieweralsosee "[G-4] linepatternstyle" "help linepatternstyle_zh"}{...}
{vieweralsosee "[G-4] linestyle" "help linestyle_zh"}{...}
{vieweralsosee "[G-4] linewidthstyle" "help linewidthstyle_zh"}{...}
{vieweralsosee "[G-4] markerstyle" "help markerstyle_zh"}{...}
{vieweralsosee "[G-4] symbolstyle" "help symbolstyle_zh"}{...}
{viewerjumpto "Syntax" "markersizestyle_zh##syntax"}{...}
{viewerjumpto "Description" "markersizestyle_zh##description"}{...}
{viewerjumpto "Links to PDF documentation" "markersizestyle_zh##linkspdf"}{...}
{viewerjumpto "Remarks" "markersizestyle_zh##remarks"}
{help markersizestyle:English Version}
{hline}{...}
{p2colset 1 26 28 2}{...}
{p2col:{bf:[G-4]} {it:markersizestyle} {hline 2}}标记大小的选择{p_end}
{p2col:}({mansection G-4 markersizestyle:查看完整的 PDF 手册条目}){p_end}
{p2colreset}{...}


{marker syntax}{...}
{title:语法}

{synoptset 20}{...}
{p2col:{it:markersizestyle}}描述{p_end}
{p2line}
{p2col:{cmd:vtiny}}最小的{p_end}
{p2col:{cmd:tiny}}{p_end}
{p2col:{cmd:vsmall}}{p_end}
{p2col:{cmd:small}}{p_end}
{p2col:{cmd:medsmall}}{p_end}
{p2col:{cmd:medium}}{p_end}
{p2col:{cmd:medlarge}}{p_end}
{p2col:{cmd:large}}{p_end}
{p2col:{cmd:vlarge}}{p_end}
{p2col:{cmd:huge}}{p_end}
{p2col:{cmd:vhuge}}{p_end}
{p2col:{cmd:ehuge}}最大的{p_end}

{p2col:{it:{help size_zh}}}您想要的任何大小，包括大小修改{p_end}
{p2line}
{p2colreset}{...}

{pstd}
其他的 {it:markersizestyles} 可能是可用的；键入

	    {cmd:.} {bf:{stata graph query markersizestyle}}

{pstd}
以获取您计算机上安装的 {it:markersizestyles} 的完整列表。


{marker description}{...}
{title:描述}

{pstd}
标记是用于指示图中点所在位置的墨水；请参见 
{manhelpi marker_options G-3}。 {it:markersizestyle} 指定标记的大小。


{marker linkspdf}{...}
{title:PDF 文档链接}

        {mansection G-4 markersizestyleRemarksandexamples:备注和示例}

{pstd}
上述部分不包含在此帮助文件中。


{marker remarks}{...}
{title:备注}

{pstd}
{it:markersizestyle} 在 {cmd:msize()} 选项中指定：

{phang2}
	{cmd:. graph} ...{cmd:, msize(}{it:markersizestyle}{cmd:)} ...

{pstd}
有时您会看到允许使用 {it:markersizestylelist}：

{phang2}
	{cmd:. scatter} ...{cmd:, msymbol(}{it:markersizestylelist}{cmd:)} ...

{pstd}
{it:markersizestylelist} 是由空格分隔的 {it:markersizestyles} 的序列。 允许使用简写形式以便更容易地指定列表；请参见 {manhelpi stylelists G-4}。
{p_end}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <markersizestyle.sthlp>}