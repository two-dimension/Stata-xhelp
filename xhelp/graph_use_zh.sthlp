{smcl}
{* *! version 1.2.9  15may2018}{...}
{vieweralsosee "[G-2] graph use" "mansection G-2 graphuse"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[G-2] graph combine" "help graph_combine_zh"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[G-2] graph replay" "help graph_replay_zh"}{...}
{vieweralsosee "[G-2] graph save" "help graph_save_zh"}{...}
{vieweralsosee "[G-3] saving_option" "help saving_option_zh"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[G-3] name_option" "help name_option_zh"}{...}
{vieweralsosee "[G-4] Concept: gph files" "help gph_files_zh"}{...}
{viewerjumpto "Syntax" "graph_use_zh##syntax"}{...}
{viewerjumpto "Description" "graph_use_zh##description"}{...}
{viewerjumpto "Links to PDF documentation" "graph_use_zh##linkspdf"}{...}
{viewerjumpto "Options" "graph_use_zh##options"}{...}
{viewerjumpto "Remarks" "graph_use_zh##remarks"}
{help graph_use:English Version}
{hline}{...}
{p2colset 1 20 22 2}{...}
{p2col:{bf:[G-2] graph use} {hline 2}}显示存储在磁盘上的图形{p_end}
{p2col:}({mansection G-2 graphuse:查看完整的 PDF 手册条目}){p_end}
{p2colreset}{...}


{marker syntax}{...}
{title:语法}

{p 8 30 2}
{cmdab:gr:aph}
{cmd:use}
{it:{help filename_zh}}
[{cmd:,} {it:options}]


{synoptset 23}{...}
{synopthdr :选项}
{synoptline}
{synopt:{opt nodraw}}不绘制图形{p_end}
{synopt:{cmdab:name(}{it:name} [{cmd:, replace}]{cmd:)}}指定图形的新名称{p_end}
{synopt:{help scheme_option_zh:{ul:sch}eme({it:schemename})}}整体外观{p_end}
{synopt:{cmdab:play(}{it:recordingname}{cmd:)}}播放来自{it:recordingname}的编辑{p_end}
{synoptline}


{marker description}{...}
{title:描述}

{pstd}
{cmd:graph} {cmd:use} 显示（绘制）之前保存在 .gph 文件中的图形，并且如果图形是以活动格式保存的，则加载该图形。

{pstd}
如果指定 {it:{help filename_zh}} 而没有扩展名，则假定为 {.gph}。

{marker linkspdf}{...}
{title:PDF文档链接}

        {mansection G-2 graphuseQuickstart:快速开始}

        {mansection G-2 graphuseRemarksandexamples:备注和示例}

{pstd}
上述部分不包括在此帮助文件中。


{marker options}{...}
{title:选项}

{phang}
{cmd:nodraw}
    指定不显示图形。
    如果图形是以活动格式保存的，它仍然会被加载；
    否则，{cmd:graph} {cmd:use} 不执行任何操作。
    参见 {manhelpi nodraw_option G-3}。

{phang}
{cmd:name(}{it:name}[{cmd:, replace}]{cmd:)}
    指定图形存储在内存中的名称，假设图形是以活动格式保存的。
    {it:{help filename_zh}} 是默认名称，而 pathname 组件会被排除。例如，

           {cmd:. graph use mydir\mygraph.gph}

{pmore}
    将绘制名为 {cmd:mygraph} 的图形。

{pmore}
    如果默认名称已有，使用 {cmd:graph}{it:#} 来代替，其中 {it:#} 被选择以创建唯一名称。

{pmore}
    如果图形未以活动格式保存，则图形只能被显示，而不能被加载，{cmd:name()} 则无关紧要。

{phang}
{cmd:scheme(}{it:schemename}{cmd:)}
    指定控制图形整体外观的方案；参见 {manhelpi scheme_option G-3}。如果未指定 {cmd:scheme()}，则默认使用正在加载的图形中记录的 {it:schemename}。

{phang}
包含帮助播放选项说明


{marker remarks}{...}
{title:备注}

{pstd}
图形可以在绘制时保存，方法是指定 {cmd:saving()} 选项或随后使用 {cmd:graph} {cmd:save} 命令；参见 {manhelpi saving_option G-3} 和 {manhelp graph_save G-2:图形保存}。
现代图形以活动格式保存或原样格式保存；参见 {help gph files}。
无论图形是如何保存的，还是以何种格式保存的，{cmd:graph} {cmd:use} 都可以重新显示该图形；只需输入

    {cmd:. graph use} {it:filename}

{pstd}
在之前的会话中，你可以通过输入

    {cmd}. twoway qfitci  mpg weight, stdf ||
            scatter mpg weight       ||
      , by(foreign, total row(1)) saving(cigraph){txt}

{pstd}
这样将创建文件 {cmd:cigraph.gph}。在稍后的日期，你可以通过输入

    {cmd:. graph use cigraph}

{pstd}
来看文件的内容。

{pstd}
你现在可以编辑该图形（见 {manhelp graph_editor G-1:图形编辑器}），或者打印该图形的副本。
{p_end}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <graph_use.sthlp>}