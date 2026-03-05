{smcl}
{* *! version 1.1.6  19oct2017}{...}
{vieweralsosee "[G-4] orientationstyle" "mansection G-4 orientationstyle"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[G-3] textbox_options" "help textbox_options_zh"}{...}
{viewerjumpto "Syntax" "orientationstyle_zh##syntax"}{...}
{viewerjumpto "Description" "orientationstyle_zh##description"}{...}
{viewerjumpto "Links to PDF documentation" "orientationstyle_zh##linkspdf"}{...}
{viewerjumpto "Remarks" "orientationstyle_zh##remarks"}
{help orientationstyle:English Version}
{hline}{...}
{p2colset 1 27 29 2}{...}
{p2col:{bf:[G-4]} {it:orientationstyle} {hline 2}}文本框的方向选项{p_end}
{p2col:}({mansection G-4 orientationstyle:查看完整 PDF 手册条目}){p_end}
{p2colreset}{...}


{marker syntax}{...}
{title:语法}

{synoptset 20}{...}
{p2col:{it:orientationstyle}}描述{p_end}
{p2line}
{p2col:{cmd:horizontal}}文本从左到右阅读{p_end}
{p2col:{cmd:vertical}}文本从下到上阅读{p_end}
{p2col:{cmd:rhorizontal}}文本从左到右（倒置）阅读{p_end}
{p2col:{cmd:rvertical}}文本从上到下阅读{p_end}
{p2line}
{p2colreset}{...}

{pstd}
其他 {it:orientationstyles} 可能也可以使用；输入

	    {cmd:.} {bf:{stata graph query orientationstyle}}

{pstd}
以获取您计算机上安装的完整 {it:orientationstyles} 列表。


{marker description}{...}
{title:描述}

{pstd}
文本框包含一行或多行文本。 {it:orientationstyle} 指定文本框是水平还是垂直。

{pstd}
{it:orientationstyle} 在另一个选项中指定，例如 {cmd:title()} 的 {cmd:orientation()} 选项：

{phang2}
	{cmd:. graph} ...{cmd:, title("我的标题", orientation(}{it:orientationstyle}{cmd:))} ...

{pstd}
有关文本框的更多信息，请参见 {manhelpi textbox_options G-3}。


{marker linkspdf}{...}
{title:链接到 PDF 文档}

        {mansection G-4 orientationstyleRemarksandexamples:备注和示例}

{pstd}
上述部分不包含在此帮助文件中。


{marker remarks}{...}
{title:备注}

{pstd}
{it:orientationstyle} 指定文本和框的方向是水平还是垂直，垂直包括文本从下到上或从上到下读取。
{p_end}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <orientationstyle.sthlp>}