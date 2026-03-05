{smcl}
{* *! version 1.1.6  19oct2017}{...}
{vieweralsosee "[G-3] nodraw_option" "mansection G-3 nodraw_option"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[R] set" "help set_zh"}{...}
{viewerjumpto "Syntax" "nodraw_option_zh##syntax"}{...}
{viewerjumpto "Description" "nodraw_option_zh##description"}{...}
{viewerjumpto "Links to PDF documentation" "nodraw_option_zh##linkspdf"}{...}
{viewerjumpto "Option" "nodraw_option_zh##option"}{...}
{viewerjumpto "Remarks" "nodraw_option_zh##remarks"}
{help nodraw_option:English Version}
{hline}{...}
{p2colset 1 24 26 2}{...}
{p2col:{bf:[G-3]} {it:nodraw_option} {hline 2}}禁止显示图形的选项{p_end}
{p2col:}({mansection G-3 nodraw_option:查看完整的 PDF 手册条目}){p_end}
{p2colreset}{...}


{marker syntax}{...}
{title:语法}

{synoptset 20}{...}
{p2col:{it:nodraw_option}}描述{p_end}
{p2line}
{p2col:{cmd:nodraw}}禁止显示图形{p_end}
{p2line}
{p2colreset}{...}
{p 4 6 2}{cmd:nodraw} 是 {it:唯一的}; 见 {help repeated options}.


{marker description}{...}
{title:描述}

{pstd}
选项 {cmd:nodraw} 防止图形显示。使用 {cmd:nodraw} 绘制的图形可能无法打印或导出，但可以保存。


{marker linkspdf}{...}
{title:PDF 文档链接}

        {mansection G-3 nodraw_optionRemarksandexamples:备注和示例}

{pstd}
上述部分不包含在此帮助文件中。


{marker option}{...}
{title:选项}

{phang}
{cmd:nodraw}
    指定不显示图形。


{marker remarks}{...}
{title:备注}

{pstd}
例如，当你输入：

	{cmd:. scatter yvar xvar, saving(mygraph)}

{pstd}
将显示一个图形并保存在文件 {cmd:mygraph.gph} 中。如果输入

	{cmd:. scatter yvar xvar, saving(mygraph) nodraw}

{pstd}
图形仍会保存在文件 {cmd:mygraph.gph} 中，但不会显示。结果与输入

	{cmd:. set graphics off}
	{cmd:. scatter yvar xvar, saving(mygraph)}
	{cmd:. set graphics on}

{pstd}
是一样的。然而，这里图形也可以被打印或导出。

{pstd}
你不需要指定 {cmd:saving()} （见 {manhelpi saving_option G-3}）来使用 {cmd:nodraw}。你可以输入

	{cmd:. scatter yvar xvar, nodraw}

{pstd}
然后稍后输入（或在 ado 文件中编写）

	{cmd:. graph display Graph}

{pstd}
见 {manhelp graph_display G-2:图形显示}。
{p_end}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <nodraw_option.sthlp>}