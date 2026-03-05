{smcl}
{* *! version 1.2.16  01mar2018}{...}
{viewerdialog report "dialog duplicates_report"}{...}
{viewerdialog examples "dialog duplicates_report, message(-example-)"}{...}
{viewerdialog list "dialog duplicates_report, message(-list-)"}{...}
{viewerdialog tag "dialog duplicates_tag"}{...}
{viewerdialog drop "dialog duplicates_drop"}{...}
{vieweralsosee "[D] duplicates" "mansection D duplicates"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[D] codebook" "help codebook_zh"}{...}
{vieweralsosee "[D] contract" "help contract_zh"}{...}
{vieweralsosee "[D] edit" "help edit_zh"}{...}
{vieweralsosee "[D] isid" "help isid_zh"}{...}
{vieweralsosee "[D] list" "help list_zh"}{...}
{viewerjumpto "Syntax" "duplicates_zh##syntax"}{...}
{viewerjumpto "Menu" "duplicates_zh##menu"}{...}
{viewerjumpto "Description" "duplicates_zh##description"}{...}
{viewerjumpto "Links to PDF documentation" "duplicates_zh##linkspdf"}{...}
{viewerjumpto "Options for duplicates examples and duplicates list" "duplicates_zh##options_duplicates_examples"}{...}
{viewerjumpto "Option for duplicates tag" "duplicates_zh##option_duplicates_tag"}{...}
{viewerjumpto "Option for duplicates drop" "duplicates_zh##option_duplicates_drop"}{...}
{viewerjumpto "Remarks" "duplicates_zh##remarks"}{...}
{viewerjumpto "Examples" "duplicates_zh##examples"}{...}
{viewerjumpto "Video example" "duplicates_zh##video"}{...}
{viewerjumpto "Stored results" "duplicates_zh##results"}
{help duplicates:English Version}
{hline}{...}
{p2colset 1 19 21 2}{...}
{p2col:{bf:[D] duplicates} {hline 2}}报告、标记或删除重复观察{p_end}
{p2col:}({mansection D duplicates:查看完整 PDF 手册条目}){p_end}
{p2colreset}{...}


{marker syntax}{...}
{title:语法}

{phang}
报告重复项

{p 8 10 2}
{cmd:duplicates} {opt r:eport} [{varlist}] {ifin} 


{phang}
为每组重复项列出一个示例

{p 8 10 2}
{cmd:duplicates} {opt e:xamples} [{varlist}] {ifin}
[{cmd:,} {it:{help duplicates##options:选项}}]


{phang}
列出所有重复项

{p 8 10 2}
{cmd:duplicates} {opt l:ist} [{varlist}] {ifin}
[{cmd:,} {it:{help duplicates##options:选项}}]


{phang}
标记重复项

{p 8 10 2}
{cmd:duplicates} {opt t:ag} [{varlist}] {ifin}
{cmd:,} {opth g:enerate(newvar)}


{phang}
删除重复项

{p 8 10 2}
{cmd:duplicates} {opt drop} {ifin}

{p 8 10 2}
{cmd:duplicates} {opt drop} {varlist} {ifin}
{cmd:, force}


{synoptset 23 tabbed}{...}
{marker options}{...}
{synopthdr}
{synoptline}
{syntab :主选项}
{synopt :{opt c:ompress}}压缩表格和显示格式中的列宽{p_end}
{synopt :{opt noc:ompress}}使用每个变量的显示格式{p_end}
{synopt :{opt fast}}同义词 {opt nocompress}；在输出大型数据集时无延迟{p_end}
{synopt :{opt ab:breviate(#)}}将变量名称缩写为 {it:#} 个字符；默认值为 {cmd:ab(8)}{p_end}
{synopt :{opt str:ing(#)}}将字符串变量截断为 {it:#} 个字符；默认值为 {cmd:string(10)}{p_end}

{syntab :选项}
{synopt :{opt t:able}}强制使用表格格式{p_end}
{synopt :{opt d:isplay}}强制使用显示格式{p_end}
{synopt :{opt h:eader}}只显示一次变量标题；默认值为表格模式{p_end}
{synopt :{opt noh:eader}}抑制变量标题{p_end}
{synopt :{opt h:eader(#)}}每 {it:#} 行显示变量标题{p_end}
{synopt :{opt clean}}强制使用无分隔符或分割线的表格格式{p_end}
{synopt :{opt div:ider}}在列之间绘制分隔线{p_end}
{synopt :{opt sep:arator(#)}}每 {it:#} 行绘制一条分隔线；默认值为 {cmd:separator(5)}{p_end}
{synopt :{opth sepby(varlist)}}每当 {it:varlist} 值变化时绘制一条分隔线{p_end}
{synopt :{opt nol:abel}}显示数字代码而不是标签值{p_end}

{syntab :摘要}
{synopt :{opt mean}[{cmd:(}{varlist}{cmd:)}]}添加行报告每个（指定的）变量的均值{p_end}
{synopt :{opt sum}[{cmd:(}{varlist}{cmd:)}]}添加行报告每个（指定的）变量的总和{p_end}
{synopt :{opt N}[{cmd:(}{varlist}{cmd:)}]}添加行报告每个（指定的）变量的非缺失值数量{p_end}
{synopt :{opth labv:ar(varname)}}在表的最后一行用 {opt Mean}、{opt Sum} 或 {opt N} 替代 {it:varname} 的值{p_end}

{syntab :高级选项}
{synopt :{opt con:stant}[{cmd:(}{varlist}{cmd:)}]}仅将常量变量单独列出一次{p_end}
{synopt :{opt notr:im}}抑制字符串修剪{p_end}
{synopt :{opt abs:olute}}在使用 {opt by} {varlist}{cmd::} 时显示总体观察数量{p_end}
{synopt :{opt nodotz}}将等于 {opt .z} 的数值显示为空白字段{p_end}
{synopt :{opt subvar:name}}在标题中用特征替换变量名称{p_end}
{synopt :{opt line:size(#)}}每行列数；默认值为 {cmd:linesize(79)}{p_end}
{synoptline}
{p2colreset}{...}


{marker menu}{...}
{title:菜单}

    {title:重复项报告、重复项示例和重复项列表}

{phang2}
{bf:数据 > 数据工具 > 报告和列出重复观察}

    {title:重复项标记}

{phang2}
{bf:数据 > 数据工具 > 标记重复观察}

    {title:重复项删除}

{phang2}
{bf:数据 > 数据工具 > 删除重复观察}


{marker description}{...}
{title:描述}

{pstd}
{cmd:duplicates} 根据指定的子命令报告、显示、列出、标记或删除重复观察。
重复项是指在所有变量上具有相同值的观察，如果没有指定 {varlist}，则视为重复项，或在指定的 {it:varlist} 上重复的观察项。

{pstd}
{cmd:duplicates report} 生成一张表，显示作为一个或多个副本出现的观察，并指明有多少观察被视为“多余”，即它们是每组重复项中第二（第三，...）个副本。

{pstd}
{cmd:duplicates examples} 列出每组重复观察的一个示例。每个示例代表数据集中每组的第一次出现。

{pstd}
{cmd:duplicates list} 列出所有重复观察。

{pstd}
{cmd:duplicates tag} 生成一个变量，表示每个观察的重复次数。对于所有唯一观察，这将为 0。

{pstd}
{cmd:duplicates drop} 删除每组重复观察中第一次出现的所有副本。单词 {opt drop} 不能缩写。

{pstd}
使用 {opt report}、{opt examples}、{opt list} 或 {opt drop} 时，所有不满足指定的 {opt if} 和/或 {opt in} 条件的观察将被忽略。使用 {opt tag} 创建的变量对于这些观察将具有缺失值。


{marker linkspdf}{...}
{title:PDF 文档链接}

        {mansection D duplicatesQuickstart:快速入门}

        {mansection D duplicatesRemarksandexamples:备注和示例}

{pstd}
上述部分未包含在此帮助文件中。


{marker options_duplicates_examples}{...}
{title:重复项示例和重复项列表的选项}

{dlgtab:主选项}

{phang}
{opt compress}, {opt nocompress}, {opt fast}, {opt abbreviate(#)}, 
{opt string(#)}；见 {manhelp list D}。

{dlgtab:选项}

{phang}
{opt table}, {opt display}, {opt header}, {opt noheader}, {opt header(#)}, 
{opt clean}, {opt divider}, {opt separator(#)}, {opth sepby(varlist)}, 
{opt nolabel}；见 {manhelp list D}。

{dlgtab:摘要}

{phang}
{opt mean}[{cmd:(}{varlist}{cmd:)}], {opt sum}[{cmd:(}{it:varlist}{cmd:)}],
{opt N}[{cmd:(}{it:varlist}{cmd:)}], {opt labvar(varname)}；见
{manhelp list D}。

{dlgtab:高级选项}

{phang}
{opt constant}[{cmd:(}{varlist}{cmd:)}], {opt notrim}, {opt absolute}, {opt nodotz}, {opt subvarname}, {opt linesize(#)}；见 {manhelp list D}。


{marker option_duplicates_tag}{...}
{title:重复项标记选项}

{phang}
{opth generate(newvar)} 是必需的，指定将标记重复项的新变量名称。


{marker option_duplicates_drop}{...}
{title:重复项删除选项}

{phang}
{opt force} 指定根据命名 {varlist} 删除重复的观察。{cmd:force} 选项是必需的，当给出此类 {it:varlist} 时，提示可能会因删除观察而丢失信息，因为这些观察可能在未包含在 {it:varlist} 中的任何变量上有所不同。


{marker remarks}{...}
{title:备注}

{pstd}
从 Stata 11 开始，{cmd:browse} 子命令不再可用。要在数据浏览器中打开重复项，请使用以下命令：

{phang2}{cmd:. duplicates tag, generate({it:newvar})}{p_end}
{phang2}{cmd:. browse if {it:newvar} > 0}{p_end}

{phang}详情请见 {manhelp edit D} 中的 {cmd:browse} 命令。{p_end}


{marker examples}{...}
{title:示例}

{pstd}设置{p_end}
{phang2}{cmd:. sysuse auto}{p_end}
{phang2}{cmd:. keep make price mpg rep78 foreign}{p_end}
{phang2}{cmd:. expand 2 in 1/2}{p_end}

{pstd}报告重复项{p_end}
{phang2}{cmd:. duplicates report}{p_end}

{pstd}为每组重复观察列出一个示例{p_end}
{phang2}{cmd:. duplicates examples}{p_end}

{pstd}列出所有重复观察{p_end}
{phang2}{cmd:. duplicates list}{p_end}

{pstd}创建变量 {cmd:dup}，包含重复次数（如果观察唯一，则为 0）{p_end}
{phang2}{cmd:. duplicates tag, generate(dup)}{p_end}

{pstd}列出重复观察{p_end}
{phang2}{cmd:. list if dup==1}{p_end}

{pstd}删除每组重复观察中第一次出现的所有副本{p_end}
{phang2}{cmd:. duplicates drop}{p_end}

{pstd}列出所有重复观察{p_end}
{phang2}{cmd:. duplicates list}{p_end}


{marker video}{...}
{title:视频示例}

{phang2}{browse "https://www.youtube.com/watch?v=433GzdIwZN8":如何识别和删除重复观察}
{p_end}


{marker results}{...}
{title:存储结果}

{pstd}
{cmd:duplicates report}、{cmd:duplicates examples}、{cmd:duplicates list}、{cmd:duplicates tag} 和 {cmd:duplicates drop} 将以下数据存储在 {cmd:r()} 中：

{synoptset 20 tabbed}{...}
{p2col 5 20 24 2: 标量}{p_end}
{synopt:{cmd:r(N)}}观察数量{p_end}

{pstd}
{cmd:duplicates report} 还会将以下数据存储在 {cmd:r()} 中：

{p2col 5 20 24 2: 标量}{p_end}
{synopt:{cmd:r(unique_value)}}唯一观察的数量{p_end}

{pstd}
{cmd:duplicates drop} 还将以下数据存储在 {cmd:r()} 中：

{p2col 5 15 19 2: 标量}{p_end}
{synopt:{cmd:r(N_drop)}}被删除的观察数量{p_end}
{p2colreset}{...}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <duplicates.sthlp>}