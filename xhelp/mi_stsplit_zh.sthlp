{smcl}
{* *! version 1.0.15  12apr2019}{...}
{viewerdialog mi "dialog mi"}{...}
{vieweralsosee "[MI] mi stsplit" "mansection MI mistsplit"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[MI] Intro" "help mi_zh"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[ST] stsplit" "help stsplit_zh"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[MI] mi xxxset" "help mi_xxxset_zh"}{...}
{viewerjumpto "Syntax" "mi_stsplit_zh##syntax"}{...}
{viewerjumpto "Menu" "mi_stsplit_zh##menu"}{...}
{viewerjumpto "Description" "mi_stsplit_zh##description"}{...}
{viewerjumpto "Links to PDF documentation" "mi_stsplit_zh##linkspdf"}{...}
{viewerjumpto "Options" "mi_stsplit_zh##options"}{...}
{viewerjumpto "Remarks" "mi_stsplit_zh##remarks"}{...}
{viewerjumpto "Examples" "mi_stsplit_zh##examples"}
{help mi_stsplit:English Version}
{hline}{...}
{p2colset 1 20 22 2}{...}
{p2col:{bf:[MI] mi stsplit} {hline 2}}根据指定时间拆分和合并 mi 数据{p_end}
{p2col:}({mansection MI mistsplit:查看完整的 PDF 手册条目}){p_end}
{p2colreset}{...}

{marker syntax}{...}
{title:语法}

{phang}
在指定时间拆分

{p 8 16 2}
{cmd:mi} {cmd:stsplit} {newvar} [{it:{help if_zh}}]{cmd:,}
{c -(}{cmd:at(}{it:{help numlist_zh}}{cmd:)} | {opt ev:ery(#)}{c )-}
[{it:选项}]

{synoptset 20 tabbed}{...}
{synopthdr}
{synoptline}
{syntab:主要}
{p2coldent :* {cmd:at(}{it:{help numlist_zh}}{cmd:)}}在指定分析时间拆分{p_end}
{p2coldent :* {cmdab:ev:ery(}{it:#}{cmd:)}}在分析时间为 {it:#} 的倍数时拆分{p_end}
{synopt :{cmdab:af:ter(}{it:spec}{cmd:)}}使用自 {it:spec} 以来的时间代替分析时间用于 {cmd:at()} 或 {cmd:every()}{p_end}
{synopt :{cmd:trim}}排除范围外的观察值{p_end}
{synopt :{cmdab:noup:date}}请参见 {bf:{help mi_noupdate_option_zh:[MI] noupdate 选项}}{p_end}

{synopt : {cmdab:nopre:serve}}程序员选项{p_end}
{synoptline}
{p2colreset}{...}
{p 4 6 2}
* {cmd:at()} 或 {cmd:every()} 是必需的。{p_end}
{p 4 6 2}
{cmd:nopreserve} 不包含在对话框中。

{phang}
在失效时间拆分

{p 8 16 2}
{cmd:mi} {cmd:stsplit} [{it:{help if_zh}}]{cmd:,} {cmd:at(}{opt f:ailures)}
[{it:选项}]

{synoptset 20 tabbed}{...}
{synopthdr}
{synoptline}
{syntab:主要}
{p2coldent :* {cmd:at(failures)}}在观察到的失效时间拆分{p_end}
{synopt :{cmdab:st:rata(}{varlist}{cmd:)}}在层内按失效进行拆分，层由 {it:varlist} 定义{p_end}
{synopt :{cmdab:r:iskset(}{newvar}{cmd:)}}创建风险集 ID 变量{p_end}
{synopt :{cmdab:noup:date}}请参见 {bf:{help mi_noupdate_option_zh:[MI] noupdate 选项}}{p_end}

{synopt :{cmdab:nopre:serve}}程序员选项{p_end}
{synoptline}
{p2colreset}{...}
{p 4 6 2}* {cmd:at()} 是必需的。{p_end}
{p 4 6 2}{cmd:nopreserve} 不包含在对话框中。

{phang}
合并事件

{p 8 15 2}
{cmd:mi} {cmd:stjoin} [{cmd:,} {it:选项}]

{synoptset 20 tabbed}{...}
{synopthdr}
{synoptline}
{syntab:主要}
{synopt :{cmdab:c:ensored(}{it:{help numlist_zh}}{cmd:)}}值表示没有事件的失效{p_end}
{synopt :{cmdab:noup:date}}请参见 {bf:{help mi_noupdate_option_zh:[MI] noupdate 选项}}{p_end}
{synoptline}
{p2colreset}{...}

{marker menu}{...}
{title:菜单}

{phang}
{bf:统计 > 多重插补}

{marker description}{...}
{title:描述}

{p 4 4 2}
{cmd:mi} {cmd:stsplit} 和 {cmd:mi} {cmd:stjoin} 是 {cmd:mi} 数据的 {cmd:stsplit} 和 {cmd:stjoin}；
请参见 {bf:{help stsplit_zh:[ST] stsplit}}。
除了添加 {cmd:noupdate} 选项外，语法完全相同。除了在 {it:m} 之间的广义化外，结果也是相同的。

{p 4 4 2}
您的 {cmd:mi} 数据必须 {cmd:stset} 才能使用这些命令。如果您的数据尚未 {cmd:stset}，请使用 
{cmd:mi} {cmd:stset}
而不是标准的 {cmd:stset}；
请参见 {bf:{help mi_xxxset_zh:[MI] mi XXXset}}。

{marker linkspdf}{...}
{title:PDF 文档链接}

        {mansection MI mistsplitRemarksandexamples:备注和示例}

{pstd}
上述部分未包含在此帮助文件中。

{marker options}{...}
{title:选项}

{p 4 8 2}
{cmd:noupdate}
    在某些情况下，抑制此命令可能执行的自动 {cmd:mi} {cmd:update}；
    请参见 {bf:{help mi_noupdate_option_zh:[MI] noupdate 选项}}。

{p 4 4 2}
请参见 {bf:{help stsplit_zh:[ST] stsplit}} 获取剩余选项的文档。

{marker remarks}{...}
{title:备注}

{p 4 4 2}
您永远不应与 {cmd:mi} 数据使用 {cmd:stsplit}、{cmd:stjoin} 或任何其他重量级数据管理命令。相反，您应使用它们的 
{cmd:mi} 版本，例如 {cmd:mi stsplit}。重量级命令是指对数据进行广泛更改的命令，而不仅仅是删除某些观察值、添加或删除某些变量或更改一些现有变量的值。 {cmd:stsplit} 和 {cmd:stjoin} 是重量级命令的例子（参见 {manhelp stsplit ST}）。 
{p_end}

{marker examples}{...}
{title:示例}

    {title:在指定时间拆分数据的示例}

{pstd}设置{p_end}
{phang2}{cmd:. webuse midiet}{p_end}
{phang2}{cmd:. mi describe}

{pstd}声明 mi 数据为生存时间数据{p_end}
{phang2}{cmd:. mi stset dox, failure(fail) origin(time dob) enter(time doe) scale(365.25) id(id)}

{pstd}列出 m = 1 的一些 mi 数据{p_end}
{phang2}{cmd:. mi xeq 1: list id dob doe dox fail _t0 _t if id == 1 | id == 34}

{pstd}按年龄在指定时间拆分数据{p_end}
{phang2}{cmd:. mi stsplit ageband, at(40(10)70)}

{pstd}按研究时间拆分数据{p_end}
{phang2}{cmd:. mi stsplit timeband, at(0(5)25) after(time=doe)}

{pstd}列出 m = 1 的一些 mi 数据{p_end}
{phang2}{cmd:. mi xeq 1: list id _t0 _t ageband fail if id==1 | id==34}

    {title:在失效时间拆分数据的示例}

{pstd}设置{p_end}
{phang2}{cmd:. webuse mdrugtrs25, clear}{p_end}
{phang2}{cmd:. mi describe}

{pstd}生成一个 ID 变量{p_end}
{phang2}{cmd:. mi xeq: generate id = _n}

{pstd}声明数据为生存时间数据{p_end}
{phang2}{cmd:. mi stset studytime, failure(died) id(id)}

{pstd}在失效时间拆分数据，为每个观察添加风险集标识符{p_end}
{phang2}{cmd:. mi stsplit, at(failures) riskset(RS)}

    {title:合并事件的示例}

{pstd}设置{p_end}
{phang2}{cmd:. webuse midiet, clear}

{pstd}声明数据为生存时间数据{p_end}
{phang2}{cmd:. mi stset dox, failure(fail) origin(time dob) enter(time doe) scale(365.25) id(id)}

{pstd}按年龄在指定时间拆分数据{p_end}
{phang2}{cmd:. mi stsplit ageband, at(40(10)70)}

{pstd}删除 stsplit 创建的变量{p_end}
{phang2}{cmd:. drop ageband}{p_end}
{phang2}{cmd:. mi update}

{pstd}合并已经拆分的数据{p_end}
{phang2}{cmd:. mi stjoin}{p_end}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <mi_stsplit.sthlp>}