{smcl}
{* *! version 1.0.0  14jun2019}{...}
{viewerdialog "frames" "dialog frames"}{...}
{vieweralsosee "[D] frame pwf" "mansection D framepwf"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[D] frames intro" "help frames intro"}{...}
{vieweralsosee "[D] frames" "help frames_zh"}{...}
{viewerjumpto "Syntax" "frame_pwf_zh##syntax"}{...}
{viewerjumpto "Menu" "frame_pwf_zh##menu"}{...}
{viewerjumpto "Description" "frame_pwf_zh##description"}{...}
{viewerjumpto "Links to PDF documentation" "frame_pwf_zh##linkspdf"}{...}
{viewerjumpto "Example" "frame_pwf_zh##example"}{...}
{viewerjumpto "Stored results" "frame_pwf_zh##results"}
{help frame_pwf:English Version}
{hline}{...}
{p2colset 1 18 20 2}{...}
{p2col:{bf:[D] frame pwf} {hline 2}}显示当前（工作）框的名称{p_end}
{p2col:}({mansection D framesdir:查看完整的 PDF 手册条目}){p_end}
{p2colreset}{...}


{marker syntax}{...}
{title:语法}

{p 8 16 2}
{cmd:frame} {cmd:pwf}

{p 8 16 2}
{cmd:frame}

{p 8 16 2}
{cmd:pwf}


包含 帮助 菜单_frames


{marker description}{...}
{title:描述}

{pstd}
{cmd:frame} {cmd:pwf} 显示当前框的名称，也称为工作框。单独使用 {cmd:frame} 和单独使用 {cmd:pwf}（打印工作框）是 {cmd:frame} {cmd:pwf} 的同义词。


{marker linkspdf}{...}
{title:PDF 文档链接}

        {mansection D framepwfRemarksandexamples:备注和示例}

{pstd}
上述部分未包含在此帮助文件中。


{marker example}{...}
{title:示例}

{pstd}显示当前框{p_end}

{phang2}{cmd:. frame pwf}{p_end}


{marker results}{...}
{title:存储结果}

{pstd}
{cmd:frame pwf} 在 {cmd:r()} 中存储以下内容：

{synoptset 20 tabbed}{...}
{p2col 5 20 24 2: 宏}{p_end}
{synopt:{cmd:r(currentframe)}}当前（工作）框的名称{p_end}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <frame_pwf.sthlp>}