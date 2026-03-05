{smcl}
{* *! version 1.1.7  19oct2017}{...}
{vieweralsosee "[G-4] clockposstyle" "mansection G-4 clockposstyle"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[G-3] marker_label_options" "help marker_label_options_zh"}{...}
{vieweralsosee "[G-3] title_options" "help title_options_zh"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[G-4] compassdirstyle" "help compassdirstyle_zh"}{...}
{viewerjumpto "Syntax" "clockposstyle_zh##syntax"}{...}
{viewerjumpto "Description" "clockposstyle_zh##description"}{...}
{viewerjumpto "Links to PDF documentation" "clockposstyle_zh##linkspdf"}{...}
{viewerjumpto "Remarks" "clockposstyle_zh##remarks"}
{help clockposstyle:English Version}
{hline}{...}
{p2colset 1 24 26 2}{...}
{p2col:{bf:[G-4]} {it:clockposstyle} {hline 2}}位置选择：从中心点的方向{p_end}
{p2col:}({mansection G-4 clockposstyle:查看完整的PDF手册条目}){p_end}
{p2colreset}{...}


{marker syntax}{...}
{title:语法}

{pstd}
{it:clockposstyle} 是

	{it:#}                       0 <= {it:#} <= 12，{it:#} 为整数


{marker description}{...}
{title:描述}

{pstd}
{it:clockposstyle} 指定一个位置或方向。

{pstd}
{it:clockposstyle} 在选项中指定，例如
{cmd:position()} {it:title_option}（参考 {manhelpi title_options G-3}）或
{cmd:mlabposition()} {it:marker_label_option}（参考
{manhelpi marker_label_options G-3）：

{p 8 16 2}
{cmd:. graph}
...{cmd:, title(}...{cmd:, position(}{it:clockposstyle}{cmd:))} ...

{p 8 16 2}
{cmd:. graph}
...{cmd:, mlabposition(}{it:clockposlist}{cmd:)} ...

{pstd}
在允许使用 {it:clockposlist} 的情况下，您可以指定一系列用空格分隔的
{it:clockposstyle}。允许使用简写以便更容易地指定列表；请参考 {manhelpi stylelists G-4}。


{marker linkspdf}{...}
{title:PDF文档链接}

        {mansection G-4 clockposstyleRemarksandexamples:备注和示例}

{pstd}
上述部分不包括在本帮助文件中。


{marker remarks}{...}
{title:备注}

{pstd}
{it:clockposstyle} 用于指定围绕中心点的位置：{cmd}

		     11  12  1
		    10         2
		     9    0    3
		     8         4
		       7  6  5

{pstd}
{txt}有时中心位置是一个明确的对象（例如，
对于 {cmd:mlabposition()}，中心点就是标记
本身），有时中心位置是隐含的（例如，
对于 {cmd:position()}，中心点是绘图区域的中心）。

{pstd}
{it:clockposstyle} {cmd:0} 始终被允许：它指的是
中心位置。
{p_end}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <clockposstyle.sthlp>}