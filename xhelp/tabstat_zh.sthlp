{smcl}
{* *! version 1.1.15  19oct2017}{...}
{viewerdialog tabstat "dialog tabstat"}{...}
{vieweralsosee "[R] tabstat" "mansection R tabstat"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[D] collapse" "help collapse_zh"}{...}
{vieweralsosee "[R] summarize" "help summarize_zh"}{...}
{vieweralsosee "[R] table" "help table_zh"}{...}
{vieweralsosee "[R] tabulate, summarize()" "help tabulate_summarize_zh"}{...}
{viewerjumpto "语法" "tabstat_zh##syntax"}{...}
{viewerjumpto "菜单" "tabstat_zh##menu"}{...}
{viewerjumpto "描述" "tabstat_zh##description"}{...}
{viewerjumpto "PDF 文档链接" "tabstat_zh##linkspdf"}{...}
{viewerjumpto "选项" "tabstat_zh##options"}{...}
{viewerjumpto "示例" "tabstat_zh##examples"}{...}
{viewerjumpto "视频示例" "tabstat_zh##video"}
{help tabstat:English Version}
{hline}{...}
{p2colset 1 16 18 2}{...}
{p2col:{bf:[R] tabstat} {hline 2}}紧凑的汇总统计表{p_end}
{p2col:}({mansection R tabstat:查看完整的 PDF 手册条目}){p_end}
{p2colreset}{...}


{marker syntax}{...}
{title:语法}

{p 8 16 2}
{cmd:tabstat}
{varlist}
{ifin}
[{it:{help tabstat##weight:weight}}]
[{cmd:,} {it:options}]


{synoptset 27 tabbed}{...}
{synopthdr}
{synoptline}
{syntab:主要}
{synopt:{opth by(varname)}}
按变量分组统计
{p_end}
{synopt:{cmdab:s:tatistics:(}{it:{help tabstat##statname:statname}} [{it:...}]{cmd:)}}
报告指定统计量
{p_end}

{syntab:选项}
{synopt:{opt la:belwidth(#)}}
{opt by()} 变量标签的宽度；默认为 {cmd:labelwidth(16)}
{p_end}
{synopt:{opt va:rwidth(#)}}
变量宽度；默认为 {cmd:varwidth(12)}
{p_end}
{synopt:{cmdab:c:olumns(}{opt v:ariables}{cmd:)}}
在表格列中显示变量；默认
{p_end}
{synopt:{cmdab:c:olumns(}{opt s:tatistics}{cmd:)}}
在表格列中显示统计量
{p_end}
{synopt:{opt f:ormat}[{cmd:(%}{it:{help format_zh:fmt}}{cmd:)}]}
统计量的显示格式；默认格式为 {cmd:%9.0g}
{p_end}
{synopt:{opt case:wise}}
执行案例逐个删除观察值
{p_end}
{synopt:{opt not:otal}}
不报告整体统计量；与 {opt by()} 一起使用
{p_end}
{synopt:{opt m:issing}}
报告缺失值的统计量 {opt by()} 变量
{p_end}
{synopt:{opt nosep:arator}}
不在 {opt by()} 类别之间使用分隔线
{p_end}
{synopt:{opt lo:ngstub}}
使左侧表头更宽
{p_end}
{synopt:{opt save}}
将汇总统计存储在 {opt r()} 中
{p_end}
{synoptline}
{p 4 6 2}
{opt by} 是允许的；参见 {manhelp by D}。
{p_end}
{marker weight}{...}
{p 4 6 2}
{opt aweight}s 和 {opt fweight}s 是允许的；参见 {help weight_zh}。
{p_end}


{marker menu}{...}
{title:菜单}

{phang}
{bf:统计 > 汇总、表格和测试 > 其他表格 >}
      {bf:紧凑的汇总统计表}


{marker description}{...}
{title:描述}

{pstd}
{cmd:tabstat} 在一张表中显示一系列数值变量的汇总统计。它允许您指定要显示的统计量列表。统计量可以根据另一个变量来计算（有条件）。{cmd:tabstat} 在所呈现的统计量和表格格式方面提供了很大的灵活性。


{marker linkspdf}{...}
{title:PDF 文档链接}

        {mansection R tabstatQuickstart:快速入门}

        {mansection R tabstatRemarksandexamples:备注和示例}

{pstd}
上述章节不包含在此帮助文件中。


{marker options}{...}
{title:选项}

{dlgtab:主要}

{phang}
{opth by(varname)} 指定统计量分别显示每个唯一值的 {it:varname}； {it:varname} 可以是数值或字符串。例如，{cmd:tabstat height} 将呈现身高的整体均值。 {cmd:tabstat height, by(sex)} 将呈现男性和女性的平均身高及整体平均身高。不要将 {opt by()} 选项与 {help by_zh} 前缀混淆；两者可以同时指定。

{phang}
{cmd:statistics(}{it:statname} [{it:...}]{cmd:)}
   指定要显示的统计量；默认相当于指定 {cmd:statistics(mean)}。 ({opt stats()} 是 {opt statistics()} 的同义词。) 可以指定多个统计量，用空格分开，例如 {cmd:statistics(mean sd)}。可用的统计量有

{marker statname}{...}
{synoptset 17}{...}
{synopt:{space 4}{it:statname}}定义{p_end}
{space 4}{synoptline}
{synopt:{space 4}{opt me:an}} 平均值{p_end}
{synopt:{space 4}{opt co:unt}} 非缺失观察值的计数{p_end}
{synopt:{space 4}{opt n}} 同 {cmd:count}{p_end}
{synopt:{space 4}{opt su:m}} 总和{p_end}
{synopt:{space 4}{opt ma:x}} 最大值{p_end}
{synopt:{space 4}{opt mi:n}} 最小值{p_end}
{synopt:{space 4}{opt r:ange}} 范围 = {opt max} - {opt min}{p_end}
{synopt:{space 4}{opt sd}} 标准差{p_end}
{synopt:{space 4}{opt v:ariance}} 方差{p_end}
{synopt:{space 4}{opt cv}} 变异系数 ({cmd:sd/mean}){p_end}
{synopt:{space 4}{opt sem:ean}} 平均数的标准误 ({cmd:sd/sqrt(n)}){p_end}
{synopt:{space 4}{opt sk:ewness}} 偏度{p_end}
{synopt:{space 4}{opt k:urtosis}} 峰度{p_end}
{synopt:{space 4}{opt p1}} 第1百分位数{p_end}
{synopt:{space 4}{opt p5}} 第5百分位数{p_end}
{synopt:{space 4}{opt p10}} 第10百分位数{p_end}
{synopt:{space 4}{opt p25}} 第25百分位数{p_end}
{synopt:{space 4}{opt med:ian}} 中位数（同 {opt p50}）{p_end}
{synopt:{space 4}{opt p50}} 第50百分位数（同 {opt median}）{p_end}
{synopt:{space 4}{opt p75}} 第75百分位数{p_end}
{synopt:{space 4}{opt p90}} 第90百分位数{p_end}
{synopt:{space 4}{opt p95}} 第95百分位数{p_end}
{synopt:{space 4}{opt p99}} 第99百分位数{p_end}
{synopt:{space 4}{opt iqr}} 四分位间距 = {opt p75} - {opt p25}{p_end}
{synopt:{space 4}{opt q}} 相当于指定 {cmd:p25 p50 p75}{p_end}
{space 4}{synoptline}
{p2colreset}{...}

{dlgtab:选项}

{phang}
{opt labelwidth(#)} 指定在存根中显示 {opt by()} 变量标签的最大宽度。默认为 {cmd:labelwidth(16)}。 {cmd:8} {ul:<} {it:#} {ul:<} {cmd:32}。

{phang}
{opt varwidth(#)} 指定在存根中显示变量名称的最大宽度。默认为 {cmd:varwidth(12)}。 {opt varwidth()} 仅在 {cmd:columns(statistics)} 时有效。设置 {opt varwidth()} 隐含 {opt longstub}。 {cmd:8} {ul:<} {it:#} {ul:<} {cmd:{ccl namelen}}。

{phang}
{cmd:columns(variables}|{cmd:statistics)} 指定在表格的列中显示变量或统计量。{cmd:columns(variables)} 是在指定多个变量时的默认选项。

{phang}
{opt format} 和 {cmd:format(%}{it:{help format_zh:fmt}}{cmd:)} 指定统计量的格式化方式。默认使用 {cmd:%9.0g} 格式。

{pmore}
   {opt format} 指定每个变量的统计量采用变量的显示格式；参见 {manhelp format D}。

{pmore}
   {cmd:format(%}{it:fmt}{cmd:)} 指定用于所有统计量的格式。指定的格式的最大宽度不得超过九个字符。

{phang}
{opt casewise} 指定观察值的案例逐个删除。统计量将根据变量列表中没有缺失的样本计算。默认情况下，将使用每个变量的所有非缺失值。

{phang}
{opt nototal} 用于 {opt by()}；它指定不报告总体统计量。

{phang}
{opt missing} 指定缺失值的 {opt by()} 变量与任何其他值一样处理，并应为其显示统计量。默认情况下不报告 {cmd:by()==}{it:missing} 组的统计量。如果 {opt by()} 变量是字符串变量，则 {cmd:by()==""} 被视为缺失。

{phang}
{opt noseparator} 指定不显示 {opt by()} 类别之间的分隔线。

{phang}
{opt longstub} 指定表格的左侧存根变宽，以便可以包括统计量或变量名称以及 {opth by(varname)} 的类别。默认情况下在表头中描述统计量或变量。如果未指定 {opt by(varname)}，则忽略 {opt longstub}。

{phang}
{opt save} 指定将汇总统计返回在 {opt r()} 中。总体（无条件）统计量返回在矩阵 {cmd:r(StatTotal)} 中（行是统计量，列是变量）。条件统计量返回在矩阵 {cmd:r(Stat1)}, {cmd:r(Stat2)}, ... 中，相关变量的名称返回在宏 {cmd:r(name1)}, {cmd:r(name2)}, ... 中。


{marker examples}{...}
{title:示例}

{pstd}设置{p_end}
{phang2}{cmd:. sysuse auto}{p_end}

{pstd}显示 {cmd:price}, {cmd:weight}, {cmd:mpg} 和 {cmd:rep78} 的均值（默认）{p_end}
{phang2}{cmd:. tabstat price weight mpg rep78}{p_end}

{pstd}按 {cmd:foreign} 类别显示 {cmd:price}, {cmd:weight}, {cmd:mpg} 和 {cmd:rep78} 的均值（默认）{p_end}
{phang2}{cmd:. tabstat price weight mpg rep78, by(foreign)}{p_end}

{pstd}除了均值，显示标准差、最小值和最大值{p_end}
{phang2}{cmd:. tabstat price weight mpg rep78, by(foreign)}
                 {cmd:stat(mean sd min max)}{p_end}

{pstd}抑制总体统计量{p_end}
{phang2}{cmd:. tabstat price weight mpg rep78, by(foreign)}
                 {cmd:stat(mean sd min max) nototal}{p_end}

{pstd}在表体中包含统计量名称{p_end}
{phang2}{cmd:. tabstat price weight mpg rep78, by(foreign)}
                 {cmd:stat(mean sd min max) nototal long}{p_end}

{pstd}使用变量的显示格式格式化每个变量的统计量{p_end}
{phang2}{cmd:. tabstat price weight mpg rep78, by(foreign)}
                 {cmd:stat(mean sd min max) nototal long format}{p_end}

{pstd}水平地显示统计量，垂直地显示变量{p_end}
{phang2}{cmd:. tabstat price weight mpg rep78, by(foreign)}
                 {cmd:stat(mean sd min max) nototal long col(stat)}{p_end}


{marker video}{...}
{title:视频示例}

{phang}
{browse "http://www.youtube.com/watch?v=kKFbnEWwa2s":Stata 中的描述性统计}
{p_end}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <tabstat.sthlp>}