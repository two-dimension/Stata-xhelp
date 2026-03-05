{smcl}
{* *! version 1.0.12  07mar2019}{...}
{viewerdialog power "dialog power_dlg"}{...}
{vieweralsosee "[PSS-2] power, table" "mansection PSS-2 power,table"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[PSS-2] power" "help power_zh"}{...}
{vieweralsosee "[PSS-2] power, graph" "help power_optgraph_zh"}{...}
{viewerjumpto "Syntax" "power_opttable_zh##syntax"}{...}
{viewerjumpto "Menu" "power_opttable_zh##menu"}{...}
{viewerjumpto "Description" "power_opttable_zh##description"}{...}
{viewerjumpto "Links to PDF documentation" "power_opttable_zh##linkspdf"}{...}
{viewerjumpto "Suboptions" "power_opttable_zh##suboptions"}{...}
{viewerjumpto "Examples" "power_opttable_zh##examples"}{...}
{viewerjumpto "Stored results" "power_opttable_zh##results"}
{help power_opttable:English Version}
{hline}{...}
{p2colset 1 25 27 2}{...}
{p2col:{bf:[PSS-2] power, table} {hline 2}}生成 power 命令结果的表格{p_end}
{p2col:}({mansection PSS-2 power,table:查看完整的 PDF 手册条目}){p_end}
{p2colreset}{...}


{marker syntax}{...}
{title:语法}

{phang}
生成默认表格 

{p 8 16 2}
{opt power} ... {cmd:,} {cmdab:tab:le} ...


{phang}
抑制表格

{p 8 16 2}
{opt power} ... {cmd:,} {cmdab:notab:le} ...
  

{marker tablespec}{...}
{phang}
生成自定义表格

{p 8 16 2}
{opt power} ... {cmd:,} {cmdab:tab:le(}[{it:colspec}] [{cmd:,} {it:{help power_opttable##tableopts:tableopts}}]{cmd:)} ...


{marker colspec}{...}
{pstd}
这里 {it:colspec} 是

{p 16 16 2}
{it:{help power_opttable##column:column}}[{cmd::}{it:label}] [{it:column}[{cmd::}{it:label}] [...]]

{pstd}
{it:column} 是在 {help power_opttable##column:下面} 定义的列之一，{it:label} 是列标签（可以包含引号和复合引号）。

{synoptset 28 tabbed}{...}
{marker tableopts}{...}
{synopthdr:tableopts}
{synoptline}
{syntab:表格}
{synopt: {cmd:add}}将 {it:column}s 添加到默认表格{p_end}
{synopt: {opth lab:els(power_opttable##labspec:labspec)}}更改指定列的默认标签；默认标签为列名{p_end}
{synopt: {opth wid:ths(power_opttable##widthspec:widthspec)}}更改默认列宽；默认值针对每列特定{p_end}
{synopt: {opth f:ormats(power_opttable##fmtspec:fmtspec)}}更改默认列格式；默认值针对每列特定{p_end}
{synopt:{opt noformat}}不使用默认列格式{p_end}
{synopt: {opt sep:arator(#)}}每 {it:#} 行绘制一条水平分隔线；默认值是 {cmd:separator(0)}，表示没有分隔线{p_end}
{synopt:{opt div:ider}}在列之间绘制分隔线{p_end}
{synopt:{opt byrow}}在执行计算时按行显示；不常用{p_end}
{synopt:{opt nohead:er}}抑制表格头部；不常用{p_end}
{synopt:{opt cont:inue}}在表格输出中绘制续行边框；不常用{p_end}
{synoptline}
{p 4 6 2}
{cmd:noheader} 和 {cmd:continue} 在对话框中不显示。
{p_end}

{synoptset 28}{...}
{marker column}{...}
{synopthdr :列}
{synoptline}
{synopt :{opt alpha}}显著性水平{p_end}
{synopt :{opt power}}效能{p_end}
{synopt :{opt beta}}第二类错误概率{p_end}
{synopt :{opt N}}总受试者数{p_end}
{synopt :{opt N1}}对照组受试者数{p_end}
{synopt :{opt N2}}实验组受试者数{p_end}
{synopt :{opt nratio}}样本大小比，实验组与对照组{p_end}
{synopt:{opt K}}聚类数{p_end}
{synopt:{opt K1}}对照组聚类数{p_end}
{synopt:{opt K2}}实验组聚类数{p_end}
{synopt:{opt kratio}}聚类数量比，实验组与对照组{p_end}
{synopt:{opt M}}聚类大小{p_end}
{synopt:{opt M1}}对照组聚类大小{p_end}
{synopt:{opt M2}}实验组聚类大小{p_end}
{synopt:{opt mratio}}聚类大小比，实验组与对照组{p_end}
{synopt :{opt delta}}效应大小{p_end}
{synopt :{opt target}}目标参数{p_end}
{synopt :{opt _all}}显示所有支持的列{p_end}
{synopt :{it:method_columns}}与指定的 {help power##method:method} 相关的列，通过 {cmd:power} 指定{p_end}
{synoptline}
{p2colreset}{...}
{p 4 6 2}
默认情况下，显示以下列：{p_end}
{phang2}
{cmd:alpha} 和 {cmd:power} 始终显示；{p_end}
{phang2}
{cmd:N} 始终显示，除了 CRD 中的双样本方法外；{p_end}
{phang2}
{cmd:N1} 和 {cmd:N2} 在双样本方法中显示，除了 CRD 外；{p_end}
{phang2}
{cmd:kratio} 和 {cmd:mratio} 对 CRD 中的双样本方法可用；{p_end}
{phang2}
{cmd:delta} 在方法定义时显示；{p_end}
{phang2}
每个 {cmd:power} {help power##method:method} 特定的附加列可能会显示。{p_end}


INCLUDE help menu_pss


{marker description}{...}
{title:描述}

{pstd}
{cmd:power, table} 以表格格式显示结果。如果 {cmd:power} 命令的任何参数或选项包含多个元素，则隐含使用 {cmd:table}。{cmd:table} 选项在生成图形时很有用，并且希望同时查看表格结果，或者在使用循环时逐个案例生成结果并希望以表格形式显示结果时使用。{cmd:notable} 选项抑制表格结果；在 {cmd:power, graph} 的图形输出中隐含使用；参见 {manhelp power_optgraph PSS-2:power, graph}。


{marker linkspdf}{...}
{title:PDF 文档链接}

        {mansection PSS-2 power,tableRemarksandexamples:备注和示例}

{pstd}
以上部分未包含在此帮助文件中。


{marker suboptions}{...}
{title:子选项}

{pstd}
以下是 {cmd:power} 命令的 {cmd:table()} 选项下的子选项。

{dlgtab:表格}

{phang}
{cmd:add} 请求将 {it:{help power_opttable##colspec:colspec}} 中指定的列添加到默认表格。所添加的列将被放置在表格的末尾。

{marker labspec}{...}
{phang}
{opt labels(labspec)} 指定用于特定列的表格标签。 {it:labspec} 是

{pmore}
{it:{help power_opttable##column:column}} {cmd:"}{it:label}{cmd:"} [{it:column} {cmd:"}{it:label}{cmd:"} [...]]

{pmore}
{cmd:labels()} 优先于 {it:{help power_opttable##colspec:colspec}} 中的列标签指定。

{marker widthspec}{...}
{phang}
{opt widths(widthspec)} 指定列宽。默认值是默认列格式的宽度加一。如果使用 {cmd:noformat} 选项，则每列的默认值为九。列宽会调整以容纳更长的列标签和更大的格式宽度。 {it:widthspec} 是一个包含缺失值的值列表（{it:{help numlist_zh}}）或

{pmore}
{it:{help power_opttable##column:column}} {it:#} [{it:column} {it:#} [...]]

{pmore}
对于值列表指定，指定的值的数量不得超过表中列的数量。可以为任何列指定缺失值（{cmd:.}）以表示默认宽度。如果指定的宽度少于表中列的数量，则使用最后指定的宽度来填补剩余列。

{pmore}
替代的列列表规范提供了一种改变特定列宽度的方式。

{marker fmtspec}{...}
{phang}
{opt formats(fmtspec)} 指定列格式。整数值列的默认格式为 {cmd:%7.0gc}，实数值列的默认格式为 {cmd:%7.4g}。 {it:fmtspec} 是一个字符串值列表或者格式的列列表：

{pmore}
{it:{help power_opttable##column:column}} {cmd:"}{it:{help format_zh:fmt}}{cmd:"} [{it:column} {cmd:"}{it:fmt}{cmd:"} [...]]

{pmore}
对于值列表指定，指定的值的数量不得超过表中列的数量。可以为任何列指定空字符串（{cmd:""}）以表示默认格式。如果指定的格式少于表中列的数量，则使用最后指定的格式来填补剩余列。

{pmore}
替代的列列表规范提供了一种改变特定列格式的方式。

{phang}
{opt noformat} 请求不将默认格式应用于列值。如果指定了此子选项，则列值基于列宽。

{phang}
{opt separator(#)} 指定在表的行之间绘制分隔线的频率。默认值是 {cmd:separator(0)}，意味着不显示任何分隔线。

{phang}
{opt divider} 指定在列之间绘制分隔线。默认情况下不绘制分隔线。

{phang}
{opt byrow} 指定在执行计算时按行显示表格。默认情况下，在所有计算完成后显示表格。当每行的计算耗时较长时，此子选项可能很有用。

{pstd}
以下子选项可用，但未在对话框中显示：

{phang}
{cmd:noheader} 防止表头显示。此子选项在反复发出命令时很有用，例如在循环中。

{phang}
{cmd:continue} 在表格底部绘制续行边框。此子选项在反复发出命令时很有用，例如在循环中。


{marker examples}{...}
{title:示例}

{pstd}
这些示例旨在快速参考。有关 {cmd:power, table} 的概念性概述和讨论示例，请参见 {mansection PSS-2 power,tableRemarksandexamples:{it:备注和示例}} 在 {bf:[PSS-2] power, table} 中。

{pstd}
    以表格显示结果{p_end}
{phang2}{cmd:. power onemean 0 1, table}{p_end}
{phang2}{cmd:. power onemean 0 (1 2)}

{pstd}
    更改指定列的标签{p_end}
{phang2}{cmd:. power onemean 0 (1 2),}
       {cmd:table(, labels(N "样本大小" sd "标准差"))}

{pstd}
    与上述相同，同时更改一些列的宽度或格式{p_end}
{phang2}{cmd:. power onemean 0 (1 2), n(5)}
       {cmd:table(, labels(N "样本大小" sd "标准差")}
       {cmd:widths(N 14 sd 14) formats(power "%7.5f" alpha "%6.3f"))}

{pstd}
    添加默认情况下未显示的额外列{p_end}
{phang2}{cmd:. power onemean 0 (1 2), table(diff, add)}

{pstd}
    生成仅包含指定列的表格，使用自定义标签{p_end}
{phang2}{cmd:. power onemean 0 (1 2),}
       {cmd:table(alpha:"显著性水平"}
       {cmd:power:效能 N:"样本大小" delta:"效应大小", widths(. 15))}

{pstd}
    显示所有可用列{p_end}
{phang2}{cmd:. power onemean 0 (1 2), table(_all, widths(8))}


{marker results}{...}
{title:存储结果}

{pstd}
{cmd:power, table} 除其他由 {helpb power##results:power} 存储的结果外，还在 {cmd:r()} 中存储以下内容：

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
{center:翻译自Stata官方帮助文档 <power_opttable.sthlp>}