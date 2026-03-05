{smcl}
{* *! version 1.0.13  12apr2019}{...}
{viewerdialog mi "dialog mi"}{...}
{vieweralsosee "[MI] mi expand" "mansection MI miexpand"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[MI] Intro" "help mi_zh"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[D] expand" "help expand_zh"}{...}
{viewerjumpto "Syntax" "mi_expand_zh##syntax"}{...}
{viewerjumpto "Menu" "mi_expand_zh##menu"}{...}
{viewerjumpto "Description" "mi_expand_zh##description"}{...}
{viewerjumpto "Links to PDF documentation" "mi_expand_zh##linkspdf"}{...}
{viewerjumpto "Options" "mi_expand_zh##options"}{...}
{viewerjumpto "Remarks" "mi_expand_zh##remarks"}{...}
{viewerjumpto "Examples" "mi_expand_zh##examples"}
{help mi_expand:English Version}
{hline}{...}
{p2colset 1 19 21 2}{...}
{p2col:{bf:[MI] mi expand} {hline 2}}扩展 mi 数据{p_end}
{p2col:}({mansection MI miexpand:查看完整的 PDF 手册条目}){p_end}
{p2colreset}{...}


{marker syntax}{...}
{title:语法}

{p 8 16 2}
{cmd:mi expand}
[{cmd:=}] {it:{help exp_zh}} [{help if_zh}]
[{cmd:,} {it:options}]

{synoptset 18}{...}
{synopthdr}
{synoptline}
{synopt:{opth gen:erate(newvar)}}创建 {it:newvar}; 0=原始,
   1=扩展{p_end}

{synopt:{cmdab:noup:date}}查看 {bf:{help mi_noupdate_option_zh:[MI] noupdate option}}{p_end}
{synoptline}
{p2colreset}{...}


{marker menu}{...}
{title:菜单}

{phang}
{bf:统计 > 多重插补}


{marker description}{...}
{title:描述}

{p 4 4 2}
{cmd:mi} {cmd:expand} 是 {bf:{help expand_zh:expand}} 用于 {cmd:mi} 数据的命令。
语法与 {cmd:expand} 相同，唯一的不同是不允许使用 {cmd:in} {it:range}，并且允许使用 {cmd:noupdate} 选项。

{p 4 4 2}
{cmd:mi} {cmd:expand} {it:exp} 将数据集中每个观察替换为 {it:n} 个观察，其中 {it:n} 等于所需表达式四舍五入到最接近的整数。
如果表达式小于1或等于缺失值，则被解释为1，这意味着保留观察但不进行重复。


{marker linkspdf}{...}
{title:PDF 文档链接}

        {mansection MI miexpandRemarksandexamples:备注和示例}

{pstd}
上述部分未包含在此帮助文件中。


{marker options}{...}
{title:选项}

{p 4 8 2}
{opth generate(newvar)}
    创建新的变量 {it:newvar}，其中包含0（如果观察最初出现在数据集中）和1（如果观察是重复的）。

{p 4 8 2}
{cmd:noupdate}
    在某些情况下抑制此命令可能执行的自动 {cmd:mi} {cmd:update}； 
    详细信息见 {bf:{help mi_noupdate_option_zh:[MI] noupdate option}}。


{marker remarks}{...}
{title:备注}

{p 4 4 2}
{cmd:mi} {cmd:expand} 相当于在 {it:m}=0 上执行 {cmd:expand}，然后在 {it:m}=1、{it:m}=2、...、{it:m}={it:M} 上重复结果，并将结果重新合并为 {cmd:mi} 格式。
因此，如果所请求的扩展由插补、被动、变化或超级变化变量的函数决定，则将使用 {it:m}=0 中的变量值来生成 {it:m}=1、{it:m}=2、...、{it:m}={it:M} 的结果。
{p_end}


{marker examples}{...}
{title:示例}

    {hline}
{pstd}设置{p_end}
{phang2}{cmd:. webuse stackxmpl2}{p_end}
{phang2}{cmd:. mi describe}

{pstd}列出 m = 1 的原始数据{p_end}
{phang2}{cmd:. mi xeq 1: list}

{pstd}将每个观察替换为2个观察（保留原始观察并创建1个新观察）{p_end}
{phang2}{cmd:. mi expand 2}

{pstd}列出 m = 1 的结果{p_end}
{phang2}{cmd:. mi xeq 1: list}

    {hline}
{pstd}设置{p_end}
{phang2}{cmd:. webuse stackxmpl2, clear}

{pstd}列出 m = 1 的原始数据{p_end}
{phang2}{cmd:. mi xeq 1: list}

{pstd}将每个观察替换为 x 个观察，其中 x 为该观察的 b 值{p_end}
{phang2}{cmd:. mi expand b}

{pstd}列出 m = 1 的结果{p_end}
{phang2}{cmd:. mi xeq 1: list, sepby(b)}

    {hline}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <mi_expand.sthlp>}