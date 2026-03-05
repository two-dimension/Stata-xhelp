{smcl}
{* *! version 1.0.0  14jun2019}{...}
{viewerdialog "frames" "dialog frames"}{...}
{vieweralsosee "[D] frame create" "mansection D framecreate"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[D] frames intro" "help frames intro"}{...}
{vieweralsosee "[D] frames" "help frames_zh"}{...}
{vieweralsosee "[P] frame post" "help frame_post_zh"}{...}
{viewerjumpto "Syntax" "frame_create_zh##syntax"}{...}
{viewerjumpto "Menu" "frame_create_zh##menu"}{...}
{viewerjumpto "Description" "frame_create_zh##description"}{...}
{viewerjumpto "Links to PDF documentation" "frame_create_zh##linkspdf"}{...}
{viewerjumpto "Examples" "frame_create_zh##examples"}
{help frame_create:English Version}
{hline}{...}
{p2colset 1 21 23 2}{...}
{p2col:{bf:[D] frame create} {hline 2}}创建一个新框架{p_end}
{p2col:}({mansection D framecreate:查看完整的PDF手册条目}){p_end}
{p2colreset}{...}


{marker syntax}{...}
{title:语法}

{pstd}
创建新的空框架

{p 8 16 2}
{cmd:frame} {cmd:create} {it:newframename}

{p 8 16 2}
{cmd:mkf} {it:newframename}


{pstd}
创建带有指定变量的新框架

{p 8 16 2}
{cmd:frame} {cmd:create} {it:newframename} {it:{help newvarlist_zh}}
{bind:         }(参见 {manhelp frame_post P:frame post})


INCLUDE help menu_frames


{marker description}{...}
{title:描述}

{pstd}
{cmd:frame} {cmd:create} 创建一个新的空框架。

{pstd}
{cmd:mkf} (make frame) 是 {cmd:frame} {cmd:create} 的同义词。

{pstd}
使用 {cmd:frame} {cmd:create} 并指定 {it:{help newvarlist_zh}} 会创建一个带有所指定变量的新框架。该语法通常与 {cmd:frame post} 结合使用，用于在新框架中发布结果，参见 {manhelp frame_post P:frame post}。


{marker linkspdf}{...}
{title:PDF文档链接}

        {mansection D framecreateRemarksandexamples:备注和示例}

{pstd}
以上部分未包含在此帮助文件中。


{marker examples}{...}
{title:示例}

{pstd}创建一个名为 {cmd:cars} 的新框架{p_end}
{phang2}{cmd:. frame create cars}{p_end}

{pstd}将1978年汽车数据加载到新框架中{p_end}
{phang2}{cmd:. frame cars: use auto.dta}{p_end}

{pstd}
我们本可以在上述 {cmd:use} 的位置输入 {help webuse_zh} 或 {help sysuse_zh}。
{p_end}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <frame_create.sthlp>}