{smcl}
{* *! version 1.0.0  27feb2019}{...}
{viewerdialog ciwidth "dialog ciwidth_dlg"}{...}
{vieweralsosee "[PSS-3] ciwidth, table" "mansection PSS-3 ciwidth,table"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[PSS-3] ciwidth" "help ciwidth_zh"}{...}
{vieweralsosee "[PSS-3] ciwidth, graph" "help ciwidth_optgraph_zh"}{...}
{viewerjumpto "Syntax" "ciwidth_opttable_zh##syntax"}{...}
{viewerjumpto "Menu" "ciwidth_opttable_zh##menu"}{...}
{viewerjumpto "Description" "ciwidth_opttable_zh##description"}{...}
{viewerjumpto "Links to PDF documentation" "ciwidth_opttable_zh##linkspdf"}{...}
{viewerjumpto "Suboptions" "ciwidth_opttable_zh##suboptions"}{...}
{viewerjumpto "Examples" "ciwidth_opttable_zh##examples"}{...}
{viewerjumpto "Stored results" "ciwidth_opttable_zh##results"}
{help ciwidth_opttable:English Version}
{hline}{...}
{p2colset 1 27 29 2}{...}
{p2col:{bf:[PSS-3] ciwidth, table} {hline 2}}生成 ciwidth 命令的结果表{p_end}
{p2col:}({mansection PSS-3 ciwidth,table:查看完整的 PDF 手册条目}){p_end}
{p2colreset}{...}


{marker syntax}{...}
{title:语法}

{phang}
生成默认表格 

{p 8 16 2}
{opt ciwidth} ... {cmd:,} {cmdab:tab:le} ...


{phang}
抑制表格

{p 8 16 2}
{opt ciwidth} ... {cmd:,} {cmdab:notab:le} ...


{marker tablespec}{...}
{phang}
生成自定义表格

{p 8 16 2}
{opt ciwidth} ... {cmd:,} {cmdab:tab:le(}[{it:colspec}] [{cmd:,} {it:{help ciwidth_opttable##tableopts:tableopts}}]{cmd:)} ...


{marker colspec}{...}
{pstd}
其中 {it:colspec} 是

{p 16 16 2}
{it:{help ciwidth_opttable##column:column}}[{cmd::}{it:label}] [{it:column}[{cmd::}{it:label}] [...]]

{pstd}
{it:column} 是在 {help ciwidth_opttable##column:below} 中定义的列之一，{it:label} 是列的标签（可以包含引号和复合引号）。

{synoptset 28 tabbed}{...}
{marker tableopts}{...}
{synopthdr:表选项}
{synoptline}
{syntab:表格}
{synopt: {cmd:add}}将 {it:column}s 添加到默认表格中{p_end}
{synopt: {opth lab:els(ciwidth_opttable##labspec:labspec)}}更改指定列的默认标签；默认标签为列名称{p_end}
{synopt: {opth wid:ths(ciwidth_opttable##widthspec:widthspec)}}更改默认列宽；默认值是特定于每个列的{p_end}
{synopt: {opth f:ormats(ciwidth_opttable##fmtspec:fmtspec)}}更改默认列格式；默认值是特定于每个列的{p_end}
{synopt:{opt noformat}}不使用默认列格式{p_end}
{synopt: {opt sep:arator(#)}}每 {it:#} 行绘制一条水平分隔线；默认值为 {cmd:separator(0)}，即没有分隔线{p_end}
{synopt:{opt div:ider}}在列之间绘制分隔线{p_end}
{synopt:{opt byrow}}在计算执行时显示行；很少使用{p_end}
{synopt:{opt nohead:er}}抑制表头；很少使用{p_end}
{synopt:{opt cont:inue}}在表输出中绘制继续边界；很少使用{p_end}
{synoptline}
{p 4 6 2}
{cmd:noheader} 和 {cmd:continue} 不显示在对话框中。
{p_end}

{synoptset 28}{...}
{marker column}{...}
{synopthdr :列}
{synoptline}
{synopt :{opt level}}置信水平{p_end}
{synopt :{opt alpha}}显著性水平{p_end}
{synopt :{opt N}}受试者总数{p_end}
{synopt :{opt N1}}对照组中的受试者人数{p_end}
{synopt :{opt N2}}实验组中的受试者人数{p_end}
{synopt :{opt nratio}}样本大小比，实验组与对照组{p_end}
{synopt :{opt Pr_width}}置信区间宽度的概率{p_end}
{synopt :{opt width}}置信区间宽度{p_end}
{synopt :{opt _all}}显示所有支持的列{p_end}
{synopt :{it:method_columns}}列专用于通过 {cmd:ciwidth} 指定的 {help ciwidth##method:method} {p_end}
{synoptline}
{p2colreset}{...}
{p 4 6 2}
默认情况下，显示以下列：{p_end}
{phang2}
{cmd:level}, {cmd:width}, 和 {cmd:N} 始终显示；{p_end}
{phang2}
{cmd:N1} 和 {cmd:N2} 在双样本方法中显示；{p_end}
{phang2}
针对每个 {cmd:ciwidth} {help ciwidth##method:method} 可能显示其他特定列。{p_end}


{marker description}{...}
{title:描述}

{pstd}
{cmd:ciwidth, table} 以表格形式显示结果。如果 {cmd:ciwidth} 命令的任何参数或选项包含多个元素，则隐含有 {cmd:table}。当您生成图表并希望同时查看表格或在使用循环一次生成一条结果时希望以表格形式显示结果时，{cmd:table} 选项非常有用。{cmd:notable} 选项抑制表格结果；该选项与 {cmd:ciwidth, graph} 的图形输出是隐含的；请参见 {manhelp ciwidth_optgraph PSS-3:ciwidth, graph}。


{marker linkspdf}{...}
{title:PDF 文档链接}

        {mansection PSS-3 ciwidth,tableRemarksandexamples:备注和示例}

{pstd}
上述部分未包含在本帮助文件中。


{marker suboptions}{...}
{title:子选项}

{pstd}
以下是 {cmd:ciwidth} 命令的 {cmd:table()} 选项中的子选项。

{dlgtab:表格}

{phang}
{cmd:add} 请求将 {it:{help ciwidth_opttable##colspec:colspec}} 中指定的列添加到默认表格。列将添加到表格的末尾。

{marker labspec}{...}
{phang}
{opt labels(labspec)} 指定要用于指定列的标签。 {it:labspec} 是

{pmore}
{it:{help ciwidth_opttable##column:column}} {cmd:"}{it:label}{cmd:"} [{it:column} {cmd:"}{it:label}{cmd:"} [...]]

{pmore}
{cmd:labels()} 优先于 {it:{help ciwidth_opttable##colspec:colspec}} 中列标签的指定。

{marker widthspec}{...}
{phang}
{opt widths(widthspec)} 指定列宽。默认值是默认列格式的宽度加一。如果使用了 {cmd:noformat} 选项，则每列的默认值为九。列宽会调整以适应更长的列标签和更大的格式宽度。 {it:widthspec} 是值列表包含缺失值（{it:{help numlist_zh}}）或

{pmore}
{it:{help ciwidth_opttable##column:column}} {it:#} [{it:column} {it:#} [...]]

{pmore}
对于值列表规范，指定值的数量不得超过表中列的数量。可以为任何列指定缺失值（{cmd:.}）以指示默认宽度。如果指定的宽度数量少于表中列的数量，则用最后指定的宽度应用于其余列。

{pmore}
替代的列列表规范提供了一种更改特定列宽度的方法。

{marker fmtspec}{...}
{phang}
{opt formats(fmtspec)} 指定列格式。默认值为 {cmd:%7.0gc}（用于整数值列）和 {cmd:%7.4g}（用于实数值列）。 {it:fmtspec} 是字符串值列表或可以包含空字符串的列列表：

{pmore}
{it:{help ciwidth_opttable##column:column}} {cmd:"}{it:{help format_zh:fmt}}{cmd:"} [{it:column} {cmd:"}{it:fmt}{cmd:"} [...]]

{pmore}
对于值列表规范，指定值的数量不得超过表中列的数量。可以为任何列指定空字符串（{cmd:""}）以指示默认格式。如果指定的格式数量少于表中列的数量，则用最后指定的格式应用于其余列。

{pmore}
替代的列列表规范提供了一种更改特定列格式的方法。

{phang}
{opt noformat} 请求不对列值应用默认格式。如果指定了此子选项，列值将基于列宽。

{phang}
{opt separator(#)} 指定在表的行之间绘制分隔线的频率。默认值为 {cmd:separator(0)}，这意味着不应显示分隔线。

{phang}
{opt divider} 指定在列之间绘制分隔线。默认情况下没有分隔线。

{phang}
{opt byrow} 指定表的行应在计算执行时显示。默认情况下，表在所有计算执行后显示。当表的每行计算需要较长时间时，此子选项可能很有用。

{pstd}
以下子选项可用，但未显示在对话框中：

{phang}
{cmd:noheader} 防止显示表头。当命令重复执行时（例如在循环中），该子选项很有用。

{phang}
{cmd:continue} 在表的底部绘制持续边界。当命令重复执行时（例如在循环中），该子选项很有用。


{marker examples}{...}
{title:示例}

{pstd}
这些示例旨在快速参考。如需对 {cmd:ciwidth, table} 的概念概述以及带讨论的示例，请参见 {mansection PSS-3 ciwidth,tableRemarksandexamples:{it:备注和示例}}，位于 {bf:[PSS-3] ciwidth, table}。

{pstd}
    以表格形式显示结果{p_end}
{phang2}{cmd:. ciwidth onemean, n(80) width(4) table}{p_end}
{phang2}{cmd:. ciwidth onemean, n(50(10)80) width(4) sd(8)}

{pstd}
    更改指定列的标签{p_end}
{phang2}{cmd:. ciwidth onemean, n(50(10)80) width(4) sd(8)}
       {cmd:table(, labels(N "样本大小" sd "标准差"))}

{pstd}
    与上述相同，同时更改部分列的宽度或格式{p_end}
{phang2}{cmd:. ciwidth onemean, n(50(10)80) width(4) sd(8)}
       {cmd:table(, labels(N "样本大小" sd "标准差")}
       {cmd:widths(N 14 sd 14) formats(Pr_width "%5.2f"))}

{pstd}
    添加一个默认未显示的额外列{p_end}
{phang2}{cmd:. ciwidth onemean, n(50(10)80) width(4) sd(8)}
       {cmd:table(alpha, add)}

{pstd}
    生成仅包含指定列的自定义表{p_end}
{phang2}{cmd:. ciwidth onemean, n(50(10)80) width(4) sd(8)}
       {cmd:table(N:"样本大小" Pr_width width:"置信区间宽度", }
       {cmd:widths(. 12))}

{pstd}
    每行后绘制一条分隔线{p_end}
{phang2}{cmd:. ciwidth onemean, n(50(10)80) width(4) sd(8)}
       {cmd:table(, separator(1))}


{marker results}{...}
{title:存储的结果}

{pstd}
{cmd:ciwidth, table} 除了 {helpb ciwidth##results:ciwidth} 存储的其他结果外，还在 {cmd:r()} 中存储以下内容：

{synoptset 15 tabbed}{...}
{p2col 5 15 19 2: 标量}{p_end}
INCLUDE help pss_rrestab_sc.ihlp

{synoptset 15 tabbed}{...}
{p2col 5 15 19 2: 宏}{p_end}
INCLUDE help pss_rrestab_mac.ihlp

{synoptset 15 tabbed}{...}
{p2col 5 15 19 2: 矩阵}{p_end}
INCLUDE help pss_rrestab_mat.ihlp
{p2colreset}{...}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <ciwidth_opttable.sthlp>}