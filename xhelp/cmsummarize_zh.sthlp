{smcl}
{* *! version 1.0.0  28apr2019}{...}
{viewerdialog cmsummarize "dialog cmsummarize"}{...}
{vieweralsosee "[CM] cmsummarize" "mansection CM cmsummarize"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[CM] cmchoiceset" "help cmchoiceset_zh"}{...}
{vieweralsosee "[CM] cmsample" "help cmsample_zh"}{...}
{vieweralsosee "[CM] cmset" "help cmset_zh"}{...}
{vieweralsosee "[CM] cmtab" "help cmtab_zh"}{...}
{viewerjumpto "Syntax" "cmsummarize_zh##syntax"}{...}
{viewerjumpto "Menu" "cmsummarize_zh##menu"}{...}
{viewerjumpto "Description" "cmsummarize_zh##description"}{...}
{viewerjumpto "Links to PDF documentation" "cmsummarize_zh##linkspdf"}{...}
{viewerjumpto "Options" "cmsummarize_zh##options"}{...}
{viewerjumpto "Examples" "cmsummarize_zh##examples"}
{help cmsummarize:English Version}
{hline}{...}
{p2colset 1 21 23 2}{...}
{p2col:{bf:[CM] cmsummarize} {hline 2}}按选择的替代方案总结变量{p_end}
{p2col:}({mansection CM cmsummarize:查看完整的PDF手册条目}){p_end}
{p2colreset}{...}


{marker syntax}{...}
{title:语法}

{p 8 16 2}
{cmd:cmsummarize}
{varlist} {ifin}
[{help cmsummarize##weight:{it:weight}}]{cmd:,}
{opt choice(choicevar)}
[{it:options}]

{synoptset 27 tabbed}{...}
{synopthdr}
{synoptline}
{syntab:主要}
{p2coldent:* {opt choice(choicevar)}}指定指示选择替代方案的0/1变量{p_end}
{synopt :{cmdab:s:tatistics(}{help cmsummarize##statname:{it:statname}}[...]{cmd:)}}报告指定的统计信息{p_end}
{synopt :{opt altwise}}使用替代方案删除而不是案例删除{p_end}

{syntab:报告}
{synopt :{cmdab:f:ormat}[{cmd:(}{help format_zh:{bf:%}{it:fmt}}{cmd:)}]}统计数据的显示格式；默认格式为 {cmd:%9.0g}{p_end}
{synopt :{opt lo:ngstub}}将统计数据（或变量名）的关键字放在左侧表格的标签上{p_end}
{synopt :{opt time}}按时间变量分组（仅适用于面板CM数据）{p_end}
{synopt :{cmdab:c:olumns(}{cmdab:v:ariables}{cmd:)}}在表格列中显示变量；默认选项{p_end}
{synopt :{cmdab:c:olumns(}{cmdab:s:tatistics}{cmd:)}}在表格列中显示统计信息{p_end}
{synoptline}
{p 4 6 2}
* {cmd:choice()} 是必需的.{p_end}
{p 4 6 2}
在使用 {cmd:cmsummarize} 之前，您必须 {cmd:cmset} 数据；请参见 {manhelp cmset CM}。{p_end}
{p 4 6 2}
{cmd:by} 是允许的；请参见 {manhelp by D}。{p_end}
{marker weight}{...}
{p 4 6 2}
允许使用 {cmd:fweight}；请参见 {help weight_zh}。


{marker menu}{...}
{title:菜单}

{phang}
{bf:统计 > 选择模型 > 设置和实用工具 > 按选择的替代方案总结变量}


{marker description}{...}
{title:描述}

{pstd}
{cmd:cmsummarize} 计算按选择的替代方案分组的一个或多个变量的摘要统计信息。

{pstd}
对于面板选择数据， {cmd:cmsummarize} 按选择的替代方案和时间分组计算摘要统计信息。


{marker linkspdf}{...}
{title:PDF文档链接}

        {mansection CM cmsummarizeQuickstart:快速入门}

        {mansection CM cmsummarizeRemarksandexamples:备注和示例}

{pstd}
以上部分未包含在此帮助文件中。


{marker options}{...}
{title:选项}

{dlgtab:主要}

{phang}
{opt choice(choicevar)}指定表示所选替代方案的变量。 {it:choicevar} 必须编码为0和1，其中0表示未选择的替代方案，1表示已选择的替代方案。
{cmd:choice()} 是必需的。

{phang}
{opt statistics(statname [...])}指定要显示的统计信息；默认值相当于指定 {cmd:statistics(mean)}。 （{cmd:stats()} 是 {cmd:statistics()} 的同义词。）可以指定多个统计信息，并用空格分隔，如 {cmd:statistics(mean sd)}。可用的统计信息有：

{marker statname}{...}
{synoptset 17}{...}
{synopt:{space 4}{it:statname}}定义{p_end}
{space 4}{synoptline}
{synopt:{space 4}{opt me:an}} 平均值{p_end}
{synopt:{space 4}{opt co:unt}} 非缺失观察的计数{p_end}
{synopt:{space 4}{opt n}} 同 {cmd:count}{p_end}
{synopt:{space 4}{opt su:m}} 总和{p_end}
{synopt:{space 4}{opt ma:x}} 最大值{p_end}
{synopt:{space 4}{opt mi:n}} 最小值{p_end}
{synopt:{space 4}{opt r:ange}} 范围 = {opt max} - {opt min}{p_end}
{synopt:{space 4}{opt sd}} 标准差{p_end}
{synopt:{space 4}{opt v:ariance}} 方差{p_end}
{synopt:{space 4}{opt cv}} 变异系数 ({cmd:sd/mean}){p_end}
{synopt:{space 4}{opt sem:ean}} 平均的标准误 ({cmd:sd/sqrt(n)}){p_end}
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
{synopt:{space 4}{opt q}} 等同于指定 {cmd:p25 p50 p75}{p_end}
{space 4}{synoptline}
{p2colreset}{...}

{phang}
{cmd:altwise}指定在因变量缺失值时使用替代方案删除。在有所需的情况下，使用案例删除；也就是说，如果遇到任何缺失值，则将构成一个案例的整个观察组排除。此选项不适用于通过 {cmd:if} 或 {cmd:in} 限定符或 {cmd:by} 前缀排除的观察；这些观察始终以替代方式处理，无论是否指定 {cmd:altwise}。

{dlgtab:报告}

{phang}
{cmd:format} 和 {opth format(%fmt)} 指定统计信息的格式。默认使用 {cmd:%9.0g}格式。

{phang2}
{cmd:format} 指定每个变量的统计信息和变量的显示格式；请参见 {manhelp format D}。

{phang2}
{opt format(%fmt)} 指定所有统计信息使用的格式。指定格式的最大宽度不得超过九个字符。

{phang}
{cmd:longstub} 指定表的左侧标签变宽，以便可以包含统计信息（或变量名，当指定 {cmd:columns(statistics)} 时）和替代方案类别名称。默认情况下，在标题中显示统计信息（或变量名）的名称。

{phang}
{cmd:time} 在面板选择数据时，按时间变量的值分组统计数据。请参见 {manhelp cmset CM}。

{phang}
{cmd:columns(variables {c |} statistics)} 指定是在表的列中显示变量还是统计信息。
当指定多个变量时，默认情况下为 {cmd:columns(variables)}。


{marker examples}{...}
{title:示例}

{pstd}设置{p_end}
{phang2}{cmd:. webuse carchoice}{p_end}
{phang2}{cmd:. cmset consumerid car}{p_end}

{pstd}按所购汽车的国籍计算 {cmd:income} 的均值{p_end}
{phang2}{cmd:. cmsummarize income, choice(purchase)}{p_end}

{pstd}与上述相同，但还显示组样本大小以及变量 {cmd:gender}、 {cmd:income} 和 {cmd:dealers} 的最小值、均值和最大值{p_end}
{phang2}{cmd:. cmsummarize gender income dealers, choice(purchase) statistics(N min mean max)}{p_end}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <cmsummarize.sthlp>}