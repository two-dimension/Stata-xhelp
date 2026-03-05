{smcl}
{* *! version 1.1.6  19oct2017}{...}
{vieweralsosee "[G-3] std_options" "mansection G-3 std_options"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[G-3] name_option" "help name_option_zh"}{...}
{vieweralsosee "[G-3] nodraw_option" "help nodraw_option_zh"}{...}
{vieweralsosee "[G-3] region_options" "help region_options_zh"}{...}
{vieweralsosee "[G-3] saving_option" "help saving_option_zh"}{...}
{vieweralsosee "[G-3] scale_option" "help scale_option_zh"}{...}
{vieweralsosee "[G-3] title_options" "help title_options_zh"}{...}
{viewerjumpto "Syntax" "std_options_zh##syntax"}{...}
{viewerjumpto "Description" "std_options_zh##description"}{...}
{viewerjumpto "Links to PDF documentation" "std_options_zh##linkspdf"}{...}
{viewerjumpto "Options" "std_options_zh##options"}{...}
{viewerjumpto "Remarks" "std_options_zh##remarks"}
{help std_options:English Version}
{hline}{...}
{p2colset 1 22 24 2}{...}
{p2col:{bf:[G-3]} {it:std_options} {hline 2}}图形构建命令的选项{p_end}
{p2col:}({mansection G-3 std_options:查看完整的 PDF 手册条目}){p_end}
{p2colreset}{...}


{marker syntax}{...}
{title:语法}

{synoptset 25}{...}
{p2col:{it:std_options}}描述{p_end}
{p2line}
{p2col:{it:{help title_options_zh}}}标题、副标题、注释、说明{p_end}

{p2col:{help scale_option_zh:{bf:scale(}{it:#}{bf:)}}}调整文本和标记的大小
      {p_end}
{p2col:{it:{help region_options_zh}}}轮廓、阴影、图形大小{p_end}
{p2col:{help scheme_option_zh:{bf:scheme(}{it:schemename}{cmd:)}}}整体外观
     {p_end}
{p2col:{help play_option_zh:{bf:play(}{it:recordingname}{bf:)}}}播放来自
     {it:recordingname}的编辑{p_end}

{p2col:{help nodraw_option_zh:{bf:nodraw}}}抑制图形显示{p_end}
{p2col:{help name_option_zh:{bf:name(}{it:name}{bf:, ...)}}}指定图形名称{p_end}
{p2col:{help saving_option_zh:{bf:saving(}{it:filename}{bf:, ...)}}}将图形保存到文件{p_end}
{p2line}
{p2colreset}{...}


{marker description}{...}
{title:描述}

{pstd}
上述选项适用于

{synoptset 25}{...}
{p2col:命令}手册条目{p_end}
{p2line}
{p2col:{cmd:graph bar} 和 {cmd:graph hbar}}{manhelp graph_bar G-2:graph bar}{p_end}
{p2col:{cmd:graph dot}}{manhelp graph_dot G-2:graph dot}{p_end}
{p2col:{cmd:graph box}}{manhelp graph_box G-2:graph box}{p_end}
{p2col:{cmd:graph pie}}{manhelp graph_pie G-2:graph pie}{p_end}
{p2line}
{p2colreset}{...}

{pstd}
请参见 {manhelpi twoway_options G-3} 以了解与
{cmd:graph} {cmd:twoway} 相关的标准选项。


{marker linkspdf}{...}
{title:PDF 文档链接}

        {mansection G-3 std_optionsRemarksandexamples:备注和示例}

{pstd}
上述部分未包含在此帮助文件中。


{marker options}{...}
{title:选项}

{phang}
{it:title_options}
    允许您指定标题、副标题、注释和说明
    放置在图形上。请参见 {manhelpi title_options G-3}。

{phang}
{cmd:scale(}{it:#}{cmd:)}
    指定一个影响图形中所有文本和标记大小的乘数。
    {cmd:scale(1)} 是默认值，{cmd:scale(1.2)} 将使所有文本和标记增大 20%。
    请参见 {manhelpi scale_option G-3}。

{phang}
{it:region_options}
    允许为绘图区域轮廓（例如放置或抑制围绕图形的边框）、指定区域的背景阴影以及控制图形大小。请参见 {manhelpi region_options G-3}。

{phang}
{cmd:scheme(}{it:schemename}{cmd:)}
    指定图形的整体外观；
    请参见 {manhelpi scheme_option G-3}。

{phang}
包含帮助 playopt_desc

{phang}
{cmd:nodraw}
    使图形被构建但不显示；
    请参见 {manhelpi nodraw_option G-3}。

{phang}
{cmd:name(}{it:name}[{cmd:, replace}]{cmd:)}
    指定图形的名称。{cmd:name(Graph, replace)} 是默认值。
    请参见 {manhelpi name_option G-3}。

{phang}
{cmd:saving(}{it:filename}[{cmd:, asis replace}]{cmd:)}
    指定图形保存为 {it:filename}。如果 {it:filename}
    没有指定扩展名，则默认为 {cmd:.gph}。
    {cmd:asis} 指定图形保持不变地保存。
    {cmd:replace} 指定如果文件已存在，可以替换它。
    请参见 {manhelpi saving_option G-3}。


{marker remarks}{...}
{title:备注}

{pstd}
上述选项可与上述任意 {cmd:graph}
命令一起使用。
{p_end}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <std_options.sthlp>}