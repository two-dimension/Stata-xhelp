{smcl}
{* *! version 1.1.5  19oct2017}{...}
{vieweralsosee "[G-4] alignmentstyle" "mansection G-4 alignmentstyle"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[G-3] textbox_options" "help textbox_options_zh"}{...}
{vieweralsosee "[G-4] justificationstyle" "help justificationstyle_zh"}{...}
{viewerjumpto "Syntax" "alignmentstyle_zh##syntax"}{...}
{viewerjumpto "Description" "alignmentstyle_zh##description"}{...}
{viewerjumpto "Links to PDF documentation" "alignmentstyle_zh##linkspdf"}{...}
{viewerjumpto "Remarks" "alignmentstyle_zh##remarks"}
{help alignmentstyle:English Version}
{hline}{...}
{p2colset 1 25 27 2}{...}
{p2col:{bf:[G-4]} {it:alignmentstyle} {hline 2}}文本的垂直对齐选项{p_end}
{p2col:}({mansection G-4 alignmentstyle:查看完整 PDF 手册条目}){p_end}
{p2colreset}{...}


{marker syntax}{...}
{title:语法}

{synoptset 20}{...}
{p2col : {it:alignmentstyle}}描述{p_end}
{p2line}
{p2col : {cmd:baseline}}文本框底部 = 字母基线{p_end}
{p2col : {cmd:bottom}}文本框底部 = 字母底部{p_end}
{p2col : {cmd:middle}}文本框中部 = 字母中部{p_end}
{p2col : {cmd:top}}文本框顶部 = 字母顶部{p_end}
{p2line}
{p2colreset}{...}

{p 4 6 2}
其他 {it:alignmentstyles} 可能可用；输入

	    {cmd:.} {bf:{stata graph query alignmentstyle}}

{p 4 6 2}
以获取计算机上安装的完整列表。


{marker description}{...}
{title:描述}

{pstd}
请参见 {manhelpi textbox_options G-3} 获取文本框的描述。
{it:alignmentstyle} 指定文本在文本框中的垂直对齐方式。即使在指定此选项时，请将文本框视为水平。

{pstd}
{it:alignmentstyle} 在 {cmd:title()} 的 {cmd:alignment()} 子选项等选项中指定
（请参阅 {manhelpi title_options G-3}）：

{pin}
	{cmd:. graph} ...{cmd:, title("我的标题", alignment(}{it:alignmentstyle}{cmd:))} ...

{pstd}
有时允许使用 {it:alignmentstylelist}。一个 {it:alignmentstylelist} 是由空格分隔的 {it:alignmentstyles} 序列。允许使用简写以便于指定列表；请参见 {manhelpi stylelists G-4}。


{marker linkspdf}{...}
{title:PDF 文档链接}

        {mansection G-4 alignmentstyleRemarksandexamples:备注和示例}

{pstd}
上述部分不包括在此帮助文件中。


{marker remarks}{...}
{title:备注}

{pstd}
请将文本视为水平，尽管它可能不是，并请将文本框视为仅包含一行，例如

	{cmd:Hpqgxyz}

{pstd}
{cmd:alignment()} 指定文本框底部与文本底部的对齐方式。

{pstd}
{cmd:alignment(baseline)} 指定文本框底部为框中文字的基线。结果将类似于

	{cmd:....Hpqgxyz....}

{pstd}
其中点表示文本框的底部。大多数字体中的句号位于字母的基线上。注意字母 {cmd:p}、{cmd:q}、{cmd:g} 和 {cmd:y} 的底部延伸到了基线以下。

{pstd}
{cmd:alignment(bottom)} 指定文本框底部为字母的底部，这将在上述示例中低于点，以与 {cmd:p}、{cmd:q}、{cmd:g} 和 {cmd:y} 的最低部分对齐。

{pstd}
{cmd:alignment(middle)} 指定文本框的中部与大写字母 {cmd:H} 的中部对齐。这在您想要与一条线对齐文本时非常有用。

{pstd}
{cmd:alignment(top)} 指定文本框的顶部与大写字母 {cmd:H} 的顶部对齐。
{p_end}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <alignmentstyle.sthlp>}