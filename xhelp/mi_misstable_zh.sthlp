{smcl}
{* *! version 1.0.16  12apr2019}{...}
{viewerdialog mi "dialog mi"}{...}
{vieweralsosee "[MI] mi misstable" "mansection MI mimisstable"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[MI] Intro" "help mi_zh"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[R] misstable" "help misstable_zh"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[MI] mi varying" "help mi_varying_zh"}{...}
{viewerjumpto "Syntax" "mi_misstable_zh##syntax"}{...}
{viewerjumpto "Menu" "mi_misstable_zh##menu"}{...}
{viewerjumpto "Description" "mi_misstable_zh##description"}{...}
{viewerjumpto "Links to PDF documentation" "mi_misstable_zh##linkspdf"}{...}
{viewerjumpto "Options" "mi_misstable_zh##options"}{...}
{viewerjumpto "Remarks" "mi_misstable_zh##remarks"}{...}
{viewerjumpto "Examples" "mi_misstable_zh##examples"}{...}
{viewerjumpto "Stored results" "mi_misstable_zh##results"}
{help mi_misstable:English Version}
{hline}{...}
{p2colset 1 22 24 2}{...}
{p2col:{bf:[MI] mi misstable} {hline 2}}列举缺失值模式
{p_end}
{p2col:}({mansection MI mimisstable:查看完整 PDF 手册条目}){p_end}
{p2colreset}{...}


{marker syntax}{...}
{title:语法}

{p 8 8 2}
{cmd:mi} 
{cmdab:misstab:le}
{cmdab:sum:marize} [{varlist}]
[{it:{help if_zh}}]
[{cmd:,} {it:options}]

{p 8 8 2}
{cmd:mi} 
{cmdab:misstab:le}
{cmdab:pat:terns}{bind:  }[{varlist}]
[{it:{help if_zh}}]
[{cmd:,} {it:options}]

{p 8 8 2}
{cmd:mi} 
{cmdab:misstab:le}
{cmd:tree}{bind:      }[{varlist}]
[{it:{help if_zh}}]
[{cmd:,} {it:options}]

{p 8 8 2}
{cmd:mi} 
{cmdab:misstab:le}
{cmdab:nest:ed}{bind:    }[{varlist}]
[{it:{help if_zh}}]
[{cmd:,} {it:options}]


{synoptset 20 tabbed}{...}
{synopthdr}
{synoptline}
{syntab:主要}
{synopt:{cmd:exmiss}}将 {cmd:.a}、{cmd:.b}、...、{cmd:.z} 视为缺失值{p_end}
{synopt:{cmd:m(}{it:#}{cmd:)}}在
    {it:m}={it:#} 上运行 {cmd:misstable}; 默认 {it:m}=0{p_end}
{synopt:{it:其他选项}}见 {bf:{help misstable_zh:[R] misstable}}
   (不允许使用 {bf:generate()}；默认为 {bf:exok}){p_end}

{synopt:{cmd:nopreserve}}程序员选项；见
   {bf:{help nopreserve_zh:[P] nopreserve option}}{p_end}
{synoptline}
{p2colreset}{...}


{marker menu}{...}
{title:菜单}

{phang}
{bf:统计 > 多重插补}


{marker description}{...}
{title:描述}

{p 4 4 2}
{cmd:mi} {cmd:misstable} 在 {it:m}=0 或者如果指定了 {cmd:m(}{it:#}{cmd:)} 选项，则在 {it:m}={it:#} 上运行 {cmd:misstable}。{cmd:misstable} 创建表格，以帮助理解数据中的缺失值模式；
请参见 {bf:{help misstable_zh:[R] misstable}}。


{marker linkspdf}{...}
{title:PDF 文档链接}

        {mansection MI mimisstableRemarksandexamples:备注和示例}

{pstd}
上述部分未包含在此帮助文件中。


{marker options}{...}
{title:选项}

{dlgtab:主要}

{p 4 8 2}
{cmd:exmiss} 
    指定扩展缺失值 {cmd:.a}、{cmd:.b}、...、
    {cmd:.z} 应视为缺失。{cmd:misstable} 默认将其视为缺失，并具有 {cmd:exok} 选项将其视为非缺失。{cmd:mi} {cmd:misstable} 则反过来，并具有 
    {cmd:exmiss} 选项。

{p 8 8 2}
    在 {cmd:mi} 系统中，记录在插补变量中的扩展缺失值指示不应插补的值，因此在某种意义上，它们并不缺失，或者更准确地说，是因有效原因而缺失。

{p 8 8 2}
    {cmd:exmiss} 选项用于 {cmd:patterns}、{cmd:tree} 和 {cmd:nested} 子命令。可以在 {cmd:summarize} 子命令中指定 {cmd:exmiss}，但该选项将被忽略，因为 
    {cmd:summarize} 在单独的列中报告扩展缺失值和系统缺失值。

{p 4 8 2}
{cmd:m(}{it:#}{cmd:)} 
    指定要在其上运行 {cmd:misstable} 的插补数据集。
    默认值是 {it:m}=0，原始数据。

{p 4 8 2}
{it:其他选项}
     是允许的；见 {bf:{help misstable_zh:[R] misstable}}。


{marker remarks}{...}
{title:备注}

{p 4 4 2}
    请见 {bf:{help misstable_zh:[R] misstable}}。


{marker examples}{...}
{title:示例}

    {hline}
{pstd}设置{p_end}
{phang2}{cmd:. webuse studentsvy}{p_end}
{phang2}{cmd:. mi describe}{p_end}

{pstd}报告 m = 0 的缺失值计数{p_end}
{phang2}{cmd:. mi misstable summarize}

{pstd}报告 m = 3 的缺失值计数{p_end}
{phang2}{cmd:. mi misstable summarize, m(3)}

{pstd}报告 m = 7 的缺失值模式，包括扩展缺失值{p_end}
{phang2}{cmd:. mi misstable patterns, m(7) exmiss}

{pstd}用 m = 0 的缺失值模式替换内存中的数据集{p_end}
{phang2}{cmd:. mi misstable patterns, replace clear}{p_end}
{phang2}{cmd:. list}

    {hline}
{pstd}设置{p_end}
{phang2}{cmd:. webuse studentsvy, clear}

{pstd}显示 m = 0 的缺失值模式的树状视图{p_end}
{phang2}{cmd:. mi misstable tree, frequency}

{pstd}列出描述 m = 0 的缺失值模式的嵌套规则{p_end}
{phang2}{cmd:. mi misstable nested}

    {hline}


{marker results}{...}
{title:存储的结果}

{p 4 4 2}
    请见 {bf:{help misstable_zh:[R] misstable}}。
{p_end}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <mi_misstable.sthlp>}