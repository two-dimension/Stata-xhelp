{smcl}
{* *! version 1.0.2  14jun2019}{...}
{viewerdialog "frames" "dialog frames"}{...}
{vieweralsosee "[D] frames reset" "mansection D framesreset"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[D] frames intro" "help frames intro"}{...}
{vieweralsosee "[D] frames" "help frames_zh"}{...}
{vieweralsosee "[D] frame drop" "help frame_drop_zh"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[D] clear" "help clear_zh"}{...}
{viewerjumpto "Syntax" "frames_reset_zh##syntax"}{...}
{viewerjumpto "Menu" "frames_reset_zh##menu"}{...}
{viewerjumpto "Description" "frames_reset_zh##description"}{...}
{viewerjumpto "Links to PDF documentation" "frames_reset_zh##linkspdf"}{...}
{viewerjumpto "Example" "frames_reset_zh##example"}
{help frames_reset:English Version}
{hline}{...}
{p2colset 1 21 23 2}{...}
{p2col:{bf:[D] frames reset} {hline 2}}清除内存中的所有框架{p_end}
{p2col:}({mansection D framesreset:查看完整的 PDF 手册条目}){p_end}
{p2colreset}{...}


{marker syntax}{...}
{title:语法}

{p 8 16 2}
{cmd:frames} {cmd:reset}


{p 8 16 2}
{cmd:clear} {cmd:frames}


包含 帮助 菜单_frames


{marker description}{...}
{title:描述}

{pstd}
{cmd:frames} {cmd:reset} 从内存中消除所有框架，包括其中的任何数据。它将 Stata 恢复到最初状态，即有一个名为 {cmd:default} 的单一空框架。{cmd:clear} {cmd:frames} 是 {cmd:frames} {cmd:reset} 的同义词。


{marker linkspdf}{...}
{title:PDF 文档链接}

        {mansection D framesresetRemarksandexamples:备注和示例}

{pstd}
上述部分不包含在此帮助文件中。


{marker example}{...}
{title:示例}

{pstd}清除所有框架{p_end}
{phang2}{cmd:. frames reset}{p_end}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <frames_reset.sthlp>}