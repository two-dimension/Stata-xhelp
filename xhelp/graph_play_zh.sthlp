{smcl}
{* *! version 1.1.7  15may2018}{...}
{vieweralsosee "[G-2] graph play" "mansection G-2 graphplay"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[G-1] Graph Editor" "help graph_editor##recorder"}{...}
{vieweralsosee "[G-3] play_option" "help play_option_zh"}{...}
{viewerjumpto "Syntax" "graph play##syntax"}{...}
{viewerjumpto "Description" "graph play##description"}{...}
{viewerjumpto "Links to PDF documentation" "graph_play_zh##linkspdf"}{...}
{viewerjumpto "Remarks" "graph play##remarks"}
{help graph_play:English Version}
{hline}{...}
{p2colset 1 21 23 2}{...}
{p2col:{bf:[G-2] graph play} {hline 2}}应用录制的编辑到当前图形{p_end}
{p2col:}({mansection G-2 graphplay:查看完整的 PDF 手册条目}){p_end}
{p2colreset}{...}


{marker syntax}{...}
{title:语法}

{p 8 30 2}
{cmdab:gr:aph}
{cmd:play}
{it:recordingname}


{marker description}{...}
{title:描述}

{pstd}
{cmd:graph} {cmd:play} 将先前使用图形录制器录制的编辑应用到当前图形中。


{marker linkspdf}{...}
{title:链接到 PDF 文档}

        {mansection G-2 graphplayRemarksandexamples:备注和示例}

{pstd}
上述部分不包含在此帮助文件中。


{marker remarks}{...}
{title:备注}

{pstd}
在图形编辑器中所做的编辑（见 {manhelp graph_editor G-1:图形编辑器}）可以保存为录制，并且随后可以在另一幅图形上播放。除了可以从图形编辑器播放，这些录制也可以使用命令 {cmd:graph} {cmd:play} {it:recordingname} 在当前活动图形上播放。

{pstd}
如果您之前创建了名为 {cmd:xyz} 的录制，您可以通过输入以下命令在当前活动图形上重播该录制的编辑：

	{cmd:. graph play xyz}

{pstd}
要了解如何创建录制，请参见 {it:{help graph_editor##recorder:图形录制器}} 在 {manhelp graph_editor G-1:图形编辑器} 中。
{p_end}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <graph_play.sthlp>}