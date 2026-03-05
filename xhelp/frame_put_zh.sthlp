{smcl}
{* *! version 1.0.0  19jun2019}{...}
{viewerdialog "frames" "dialog frames"}{...}
{vieweralsosee "[D] frame put" "mansection D frameput"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[D] frames intro" "help frames intro"}{...}
{vieweralsosee "[D] frames" "help frames_zh"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[D] drop" "help drop_zh"}{...}
{vieweralsosee "[D] frame copy" "help frame_copy_zh"}{...}
{vieweralsosee "[P] frame post" "help frame_post_zh"}{...}
{viewerjumpto "Syntax" "frame_put_zh##syntax"}{...}
{viewerjumpto "Menu" "frame_put_zh##menu"}{...}
{viewerjumpto "Description" "frame_put_zh##description"}{...}
{viewerjumpto "Links to PDF documentation" "frame_put_zh##linkspdf"}{...}
{viewerjumpto "Examples" "frame_put_zh##examples"}
{help frame_put:English Version}
{hline}{...}
{p2colset 1 18 20 2}{...}
{p2col:{bf:[D] frame put} {hline 2}}将选定的变量或观察复制到新框架{p_end}
{p2col:}({mansection D frameput:查看完整的 PDF 手册条目}){p_end}
{p2colreset}{...}


{marker syntax}{...}
{title:语法}

{pstd}
将选定的变量从当前框架复制到新框架

{p 8 16 2}
{cmd:frame} {cmd:put} {varlist}, {opt into(newframename)}


{pstd}
将满足特定条件的观察从当前框架复制到新框架

{p 8 16 2}
{cmd:frame} {cmd:put} {it:{help if_zh}}{cmd:,}
{opt into(newframename)}


{pstd}
将一范围观察从当前框架复制到新框架

{p 8 16 2}
{cmd:frame} {cmd:put} {it:{help in_zh}}
[{it:{help if_zh}}]{cmd:,} {opt into(newframename)}


{phang}
{cmd:by} 允许与 {cmd:frame} {cmd:put} 的第二种语法一起使用；
见 {manhelp by D}。


INCLUDE help menu_frames


{marker description}{...}
{title:描述}

{pstd}
{cmd:frame} {cmd:put} 将变量或观察的子集从当前框架复制到指定框架。
它的工作方式与 Stata 的 {cmd:keep} 命令相似（见 {manhelp drop D}），
不同之处在于当前框架中的数据保持不变，而选定的变量或观察会被复制到一个新框架中。


{marker linkspdf}{...}
{title:PDF 文档链接}

        {mansection D frameputQuickstart:快速入门}

        {mansection D frameputRemarksandexamples:备注和示例}

{pstd}
以上部分未包含在此帮助文件中。


{marker examples}{...}
{title:示例}

{pstd}设置{p_end}
{phang2}{cmd:. sysuse census}{p_end}

{pstd}描述数据{p_end}
{phang2}{cmd:. describe}{p_end}

{pstd}将所有人口超过 5,000,000 的州的数据放入新框架 {cmd:pop5}{p_end}
{phang2}{cmd:. frame put if pop > 5000000, into(pop5)}{p_end}

{pstd}描述框架 {cmd:pop5} 中的数据{p_end}
{phang2}{cmd:. frame pop5: describe}{p_end}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <frame_put.sthlp>}