{smcl}
{* *! version 1.0.0  14jun2019}{...}
{viewerdialog "frames" "dialog frames"}{...}
{vieweralsosee "[D] frames dir" "mansection D framesdir"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[D] frames intro" "help frames intro"}{...}
{vieweralsosee "[D] frames" "help frames_zh"}{...}
{vieweralsosee "[D] save" "help save_zh"}{...}
{viewerjumpto "Syntax" "frames_dir_zh##syntax"}{...}
{viewerjumpto "Menu" "frames_dir_zh##menu"}{...}
{viewerjumpto "Description" "frames_dir_zh##description"}{...}
{viewerjumpto "Links to PDF documentation" "frames_dir_zh##linkspdf"}{...}
{viewerjumpto "Example" "frames_dir_zh##example"}{...}
{viewerjumpto "Stored results" "frames_dir_zh##results"}
{help frames_dir:English Version}
{hline}{...}
{p2colset 1 19 21 2}{...}
{p2col:{bf:[D] frames dir} {hline 2}}显示内存中所有框架的名称{p_end}
{p2col:}({mansection D framesdir:查看完整的 PDF 手册条目}){p_end}
{p2colreset}{...}


{marker syntax}{...}
{title:语法}

{p 8 16 2}
{cmd:frames} {cmd:dir}


INCLUDE help menu_frames


{marker description}{...}
{title:描述}

{pstd}
{cmd:frames} {cmd:dir} 列出内存中所有框架，以及数据的维度、每个框架中数据的标签（如果有的话），并指示自上次保存之后框架中的数据是否发生了变化。


{marker linkspdf}{...}
{title:PDF 文档链接}

        {mansection D framesdirRemarksandexamples:备注和示例}

{pstd}
上述部分不包含在此帮助文件中。


{marker example}{...}
{title:示例}

{pstd}查看内存中的框架{p_end}
{phang2}{cmd:. frames dir}{p_end}


{marker results}{...}
{title:存储的结果}

{pstd}
{cmd:frames} {cmd:dir} 将以下内容存储在 {cmd:r()}中：

{synoptset 20 tabbed}{...}
{p2col 5 20 24 2: 宏}{p_end}
{synopt:{cmd:r(frames)}}内存中框架的名称{p_end}
{synopt:{cmd:r(changed)}}{cmd:1} 或 {cmd:0} 对于内存中的每个框架：{cmd:1} 表示自上次保存以来框架中的数据已变化；{cmd:0} 表示未变化{p_end}
{p2colreset}{...}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <frames_dir.sthlp>}