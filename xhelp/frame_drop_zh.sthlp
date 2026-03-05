{smcl}
{* *! version 1.0.0  14jun2019}{...}
{viewerdialog "frames" "dialog frames"}{...}
{vieweralsosee "[D] frame drop" "mansection D framedrop"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[D] frames intro" "help frames intro"}{...}
{vieweralsosee "[D] frames" "help frames_zh"}{...}
{vieweralsosee "[D] frames reset" "help frames_reset_zh"}{...}
{viewerjumpto "Syntax" "frame_drop_zh##syntax"}{...}
{viewerjumpto "Menu" "frame_drop_zh##menu"}{...}
{viewerjumpto "Description" "frame_drop_zh##description"}{...}
{viewerjumpto "Links to PDF documentation" "frame_drop_zh##linkspdf"}{...}
{viewerjumpto "Example" "frame_drop_zh##example"}
{help frame_drop:English Version}
{hline}{...}
{p2colset 1 19 21 2}{...}
{p2col:{bf:[D] frame drop} {hline 2}}从内存中删除帧{p_end}
{p2col:}({mansection D framedrop:查看完整的 PDF 手册条目}){p_end}
{p2colreset}{...}


{marker syntax}{...}
{title:语法}

{pstd}
{cmd:frame} {cmd:drop} {it:framename}


包含帮助菜单_frames


{marker description}{...}
{title:描述}

{pstd}
{cmd:frame} {cmd:drop} 从内存中删除指定的帧，包括该帧中的任何数据。


{marker linkspdf}{...}
{title:PDF 文档链接}

        {mansection D framedropRemarksandexamples:备注和示例}

{pstd}
上述部分不包含在此帮助文件中。


{marker example}{...}
{title:示例}

{pstd}删除一个名为 {cmd:counties} 的帧{p_end}
{phang2}{cmd:. frame drop counties}{p_end}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <frame_drop.sthlp>}