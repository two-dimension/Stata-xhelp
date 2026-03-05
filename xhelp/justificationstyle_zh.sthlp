{smcl}
{* *! version 1.1.6  19oct2017}{...}
{vieweralsosee "[G-4] justificationstyle" "mansection G-4 justificationstyle"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[G-3] textbox_options" "help textbox_options_zh"}{...}
{vieweralsosee "[G-4] alignmentstyle" "help alignmentstyle_zh"}{...}
{viewerjumpto "Syntax" "justificationstyle_zh##syntax"}{...}
{viewerjumpto "Description" "justificationstyle_zh##description"}{...}
{viewerjumpto "Links to PDF documentation" "justificationstyle_zh##linkspdf"}{...}
{viewerjumpto "Remarks" "justificationstyle_zh##remarks"}
{help justificationstyle:English Version}
{hline}{...}
{p2colset 1 29 31 2}{...}
{p2col:{bf:[G-4]} {it:justificationstyle} {hline 2}}文本对齐方式的选择{p_end}
{p2col:}({mansection G-4 justificationstyle:查看完整PDF手册条目}){p_end}
{p2colreset}{...}


{marker syntax}{...}
{title:语法}

{synoptset 20}{...}
{p2col:{it:justificationstyle}}描述{p_end}
{p2line}
{p2col:{cmd:left}}左对齐{p_end}
{p2col:{cmd:center}}居中对齐{p_end}
{p2col:{cmd:right}}右对齐{p_end}
{p2line}
{p2colreset}{...}

{p 4 4 2}
其他 {it:justificationstyles} 可能可用；键入

	    {cmd:.} {bf:{stata graph query justificationstyle}}

{p 4 4 2}
以获取您计算机上安装的 {it:justificationstyles} 的完整列表。


{marker description}{...}
{title:描述}

{pstd}
{it:justificationstyle} 指定文本框中文本的"水平"对齐方式。选择包括 {cmd:left}、{cmd:right} 和 {cmd:center}。将文本框视为水平，即使在指定此选项时它是垂直的。

{pstd}
{it:justificationstyle} 在 {cmd:justification()} 选项中指定，该选项嵌套在另一选项中，例如 {cmd:title()}：

{p 8 21 2}
{cmd:. graph}
...{cmd:, title("Line 1" "Line 2", justification(}{it:justificationstyle}{cmd:))} ...

{pstd}
有关文本框的更多信息，请参见 {manhelpi textbox_options G-3}。

{pstd}
有时您会看到允许使用 {it:justificationstylelist}。{it:justificationstylelist} 是由空格分隔的 {it:justificationstyles} 的序列。允许使用简写，以便更轻松地指定列表；请参见 {manhelpi stylelists G-4}。


{marker linkspdf}{...}
{title:PDF文档链接}

        {mansection G-4 justificationstyleRemarksandexamples:备注和示例}

{pstd}
上述部分不包含在此帮助文件中。


{marker remarks}{...}
{title:备注}

{pstd}
{it:justificationstyle} 通常影响文本框内多行文本的对齐，而不影响文本框本身的位置对齐；请参见 {it:{help textbox_options##remarks3:对齐}} 在 {manhelpi textbox_options G-3} 中。
{p_end}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <justificationstyle.sthlp>}