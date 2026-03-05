{smcl}
{* *! version 1.1.7  15may2018}{...}
{vieweralsosee "[G-3] play_option" "mansection G-3 play_option"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[G-1] Graph Editor" "help graph_editor##recorder"}{...}
{vieweralsosee "[G-2] graph play" "help graph_play_zh"}{...}
{viewerjumpto "Syntax" "play_option_zh##syntax"}{...}
{viewerjumpto "Description" "play_option_zh##description"}{...}
{viewerjumpto "Links to PDF documentation" "play_option_zh##linkspdf"}{...}
{viewerjumpto "Option" "play_option_zh##option"}{...}
{viewerjumpto "Remarks" "play_option_zh##remarks"}
{help play_option:English Version}
{hline}{...}
{p2colset 1 22 24 2}{...}
{p2col:{bf:[G-3]} {it:play_option} {hline 2}}播放图形录音的选项{p_end}
{p2col:}({mansection G-3 play_option:查看完整的 PDF 手册条目}){p_end}
{p2colreset}{...}


{marker syntax}{...}
{title:语法}

{synoptset 25}{...}
{synopt:{it:play_option}}描述{p_end}
{p2line}
{synopt:{cmdab:play(}{it:recordingname}{cmd:)}}播放来自
    {it:recordingname}的编辑{p_end}
{p2line}
{p 4 6 2}{cmd:play()}是 {it:唯一的}; 参见 {help repeated options}.


{marker description}{...}
{title:描述}

{pstd}
选项 {cmd:play()} 重播先前使用 {help graph_editor_zh:图形录制器} 录制的编辑内容。


{marker linkspdf}{...}
{title:PDF 文档链接}

        {mansection G-3 play_optionRemarksandexamples:备注和示例}

{pstd}
上述章节不包含在此帮助文件中。


{marker option}{...}
{title:选项}

{phang}
包含帮助 playopt_desc


{marker remarks}{...}
{title:备注}

{pstd}
在图形编辑器中所做的编辑（参见 {manhelp graph_editor G-1:图形编辑器}）可以保存为录音，并且这些编辑可以在另一幅图形上播放。除了在图形编辑器中播放外，这些录音还可以在绘制图形时播放或使用选项 {cmd:play()} 从磁盘中播放。

{pstd}
如果您之前创建了名为 {cmd:xyz} 的录音，并且您正在绘制 {cmd:y} 对 {cmd:x} 的散点图，您可以通过在图形命令中添加选项 {cmd:play(xyz)} 来在新图形上重放该录音的编辑：

	{cmd:. scatter y x, play(xyz)}

{pstd}
要了解如何创建录音，请参阅 {it:{help graph_editor##recorder:图形录制器}} 在 {manhelp graph_editor G-1:图形编辑器} 中。
{p_end}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <play_option.sthlp>}