{smcl}
{* *! version 1.1.12  19oct2017}{...}
{viewerdialog "tabulate, summarize()" "dialog tabsum"}{...}
{vieweralsosee "[R] tabulate, summarize()" "mansection R tabulate,summarize()"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[D] collapse" "help collapse_zh"}{...}
{vieweralsosee "[SVY] svy: tabulate oneway" "help svy_tabulate_oneway_zh"}{...}
{vieweralsosee "[SVY] svy: tabulate twoway" "help svy_tabulate_twoway_zh"}{...}
{vieweralsosee "[R] table" "help table_zh"}{...}
{vieweralsosee "[R] tabstat" "help tabstat_zh"}{...}
{vieweralsosee "[R] tabulate oneway" "help tabulate_oneway_zh"}{...}
{vieweralsosee "[R] tabulate twoway" "help tabulate_twoway_zh"}{...}
{viewerjumpto "Syntax" "tabulate_summarize_zh##syntax"}{...}
{viewerjumpto "Menu" "tabulate_summarize_zh##menu"}{...}
{viewerjumpto "Description" "tabulate_summarize_zh##description"}{...}
{viewerjumpto "Links to PDF documentation" "tabulate_summarize_zh##linkspdf"}{...}
{viewerjumpto "Options" "tabulate_summarize_zh##options"}{...}
{viewerjumpto "Examples" "tabulate_summarize_zh##examples"}
{help tabulate_summarize:English Version}
{hline}{...}
{p2colset 1 30 32 2}{...}
{p2col:{bf:[R] tabulate, summarize()} {hline 2}}一维和二维汇总统计表{p_end}
{p2col:}({mansection R tabulate,summarize():查看完整 PDF 手册条目}){p_end}
{p2colreset}{...}


{marker syntax}{...}
{title:语法}

{p 8 17 2}
{cmdab:ta:bulate}
{it:{help varname_zh:varname1}}
[{it:{help varname_zh:varname2}}]
{ifin}
[{it:{help tabulate summarize##weight:weight}}]
[{cmd:,} {it:options}]

{synoptset 23 tabbed}{...}
{synopthdr}
{synoptline}
{syntab:主要}
{synopt:{opth su:mmarize(varname:varname3)}}报告 {it:varname3} 的摘要统计
{p_end}
{synopt:[{cmdab:no:}]{opt me:ans}}包含或抑制均值
{p_end}
{synopt:[{cmdab:no:}]{opt st:andard}}包含或抑制标准差
{p_end}
{synopt:[{cmdab:no:}]{opt f:req}}包含或抑制频率
{p_end}
{synopt:[{cmdab:no:}]{opt o:bs}}包含或抑制观察数
{p_end}
{synopt:{opt nol:abel}}显示数字代码，而不是标签
{p_end}
{synopt:{opt w:rap}}不打断宽表
{p_end}
{synopt:{opt mi:ssing}}将 {it:{help varname_zh:varname1}} 和
{it:{help varname_zh:varname2}} 的缺失值视为类别
{p_end}
{synoptline}
{p2colreset}{...}
{p 4 6 2}
{opt by} 允许使用；见 {manhelp by D}。
{p_end}
{marker weight}{...}
{p 4 6 2}
{opt aweight}s 和 {opt fweight}s 是允许的；见 {help weight_zh}。
{p_end}


{marker menu}{...}
{title:菜单}

{phang}
{bf:统计 > 汇总、表格和检验 > 其他表格 >}
     {bf:均值、标准差和频率表}


{marker description}{...}
{title:描述}

{pstd}
{cmd:tabulate, summarize()} 生成均值和标准差的一维和二维表（分解）。见
{manhelp tabulate_oneway R:tabulate oneway} 和
{manhelp tabulate_twoway R:tabulate twoway} 以获取一维和二维频率表。见 {manhelp table R} 了解一个更灵活的命令，它可以生成一维、二维和 n 维频率表以及各种汇总统计。虽然 {opt table} 更好，但 {cmd:tabulate, summarize()} 更快。
另请参见 {manhelp tabstat R} 以获取另一种替代方案。


{marker linkspdf}{...}
{title:PDF文档链接}

        {mansection R tabulate,summarize()快速入门:快速开始}

        {mansection R tabulate,summarize()备注和示例:备注和示例}

{pstd}
上述部分未包含在此帮助文件中。


{marker options}{...}
{title:选项}

{dlgtab:主要}

{phang}
{opth "summarize(varname:varname3)"} 指定要报告摘要统计的变量名称。如果不指定此选项，则生成频率表；见
{manhelp tabulate_oneway R:tabulate oneway} 和
{manhelp tabulate_twoway R:tabulate twoway}。这里的描述涉及当指定此选项时的 {opt tabulate}。

{phang}
[{opt no}]{opt means} 包含或抑制表中的均值。

{pmore}
   {opt summarize()} 表通常包括均值、标准差、频率，以及如果数据被加权，则包括观察数。可以通过 [{opt no}]{opt means}、[{opt no}]{opt standard}、[{opt no}]{opt freq} 和 [{opt no}]{opt obs} 选项来包含或抑制表中的个别元素。例如，输入

{pin3}{cmd:. tabulate category, summarize(myvar) means standard}

{pmore}
   将生成按 {cmd:category} 分类的摘要表，仅包含 {opt myvar} 的均值和标准差。也可以通过输入

{pin3}{cmd:. tabulate category, summarize(myvar) nofreq}

{phang}
[{opt no}]{opt standard} 包含或抑制表中的标准差；见上述 [{opt no}]{opt means} 选项。

{phang}
[{opt no}]{opt freq} 包含或抑制表中的频率；见上述 [{opt no}]{opt means} 选项。

{phang}
[{opt no}]{opt obs} 包含或抑制表中报告的观察数。如果数据未被加权，则观察数与频率相同，默认情况下只报告频率。如果数据被加权，则频率指的是权重的总和。见上述 [{opt no}]{opt means} 选项。

{phang}
{opt nolabel} 会显示数字代码而不是标签值。

{phang}
{opt wrap} 请求对宽表不进行任何操作以使其可读。除非指定 {opt wrap}，否则宽表将被分割成部分以增强可读性。

{phang}
{opt missing} 请求将 {it:{help varname_zh:varname1}} 和
   {it:{help varname_zh:varname2}} 的缺失值视为类别，而不是作为分析中要省略的观察值。


{marker examples}{...}
{title:示例：一维表}

    {hline}
{phang}{cmd:. sysuse auto}{p_end}
{phang}{cmd:. tabulate foreign, summarize(mpg)}{p_end}
    {hline}
{phang}{cmd:. sysuse census}{p_end}
{phang}{cmd:. tabulate region [aweight=pop], summarize(medage)}{p_end}
    {hline}


{title:示例：二维表}

{phang}{cmd:. sysuse auto}{p_end}
{phang}{cmd:. tabulate foreign rep78, summarize(mpg)}{p_end}
{phang}{cmd:. generate wgtcat = autocode(weight, 4, 1760, 4840)}{p_end}
{phang}{cmd:. tabulate wgtcat foreign, summarize(mpg)}{p_end}
{phang}{cmd:. tabulate wgtcat foreign, summarize(mpg) means}{p_end}
{phang}{cmd:. tabulate wgtcat foreign, summarize(mpg) nofreq}{p_end}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <tabulate_summarize.sthlp>}