{smcl}
{* *! version 1.1.19  03apr2019}{...}
{viewerdialog "svy: tabulate oneway" "dialog svy_tabulate_oneway"}{...}
{vieweralsosee "[SVY] svy tabulate oneway" "mansection SVY svytabulateoneway"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[SVY] svy postestimation" "help svy_postestimation_zh"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[R] tabulate oneway" "help tabulate_oneway_zh"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[SVY] svy" "help svy_zh"}{...}
{vieweralsosee "[SVY] svy: tabulate twoway" "help svy_tabulate_twoway_zh"}{...}
{vieweralsosee "[SVY] svydescribe" "help svydescribe_zh"}{...}
{viewerjumpto "Syntax" "svy_tabulate_oneway_zh##syntax"}{...}
{viewerjumpto "Menu" "svy_tabulate_oneway_zh##menu"}{...}
{viewerjumpto "Description" "svy_tabulate_oneway_zh##description"}{...}
{viewerjumpto "Options" "svy_tabulate_oneway_zh##options"}{...}
{viewerjumpto "Examples" "svy_tabulate_oneway_zh##examples"}{...}
{viewerjumpto "Stored results" "svy_tabulate_oneway_zh##results"}
{help svy_tabulate_oneway:English Version}
{hline}{...}
{p2colset 1 31 33 2}{...}
{p2col :{bf:[SVY] svy: tabulate oneway} {hline 2}}用于调查数据的一维表{p_end}
{p2col:}({mansection SVY svytabulateoneway:查看完整的PDF手册条目}){p_end}
{p2colreset}{...}


{marker syntax}{...}
{title:语法}

{pstd}
基本语法

{phang2}
{cmd:svy}{cmd::} {cmdab:tab:ulate} {varname}


{pstd}
完整语法

{phang2}
{cmd:svy} [{it:vcetype}] [{cmd:,} {it:{help svy_tabulate_oneway##svy_options:svy_options}}]
{cmd::} {cmdab:tab:ulate} {varname} {ifin}
[{cmd:,}
{it:{help "svy: tabulate oneway##tabulate_options":tabulate_options}}
{it:{help "svy: tabulate oneway##display_items":display_items}}
{it:{help "svy: tabulate oneway##display_options":display_options}}]


{pstd}
报告结果的语法

{phang2}
{cmd:svy} [{cmd:,}
{it:{help "svy: tabulate oneway##display_items":display_items}}
{it:{help "svy: tabulate oneway##display_options":display_options}}]


包含帮助 vcetype


包含帮助 svy_tab_optable


{marker tabulate_options}{...}
{synopthdr:tabulate_options}
{synoptline}
{syntab:模型}
{synopt :{opth std:ize(varname)}}用于标准化的变量
	识别分层{p_end}
{synopt :{opth stdw:eight(varname)}}用于标准化的权重变量{p_end}
{synopt :{opth tab(varname)}}计算单元总数/比例的变量{p_end}
{synopt :{opt miss:ing}}将缺失值视为其他值{p_end}
{synoptline}


{marker display_items}{...}
{synopthdr:display_items}
{synoptline}
{syntab:表项目}
{synopt :{opt cel:l}}单元比例{p_end}
{synopt :{opt cou:nt}}加权单元计数{p_end}
{synopt :{opt se}}标准误差{p_end}
{synopt :{opt ci}}置信区间{p_end}
{synopt :{opt deff}}显示设计效应 DEFF{p_end}
{synopt :{opt deft}}显示设计效应 DEFT{p_end}
{synopt :{opt cv}}显示变异系数{p_end}
{synopt :{opt srs:subpop}}报告
	假设在子人群中进行的SRS设计效应{p_end}
{synopt :{opt obs}}单元观察{p_end}
{synoptline}
{p 4 6 2}
当指定 {opt se}, {opt ci}, {opt deff}, {opt deft}, {opt cv} 或
{opt srssubpop} 中的任何一个时，只有 {opt cell} 或 {opt count} 可以被指定。如果都不指定
{opt se}, {opt ci}, {opt deff}, {opt deft}, {opt cv} 或 {opt srssubpop}，则可以同时指定
{opt cell} 和 {opt count}。


{marker display_options}{...}
{synopthdr:display_options}
{synoptline}
{syntab:报告}
{synopt :{opt l:evel(#)}}设置置信水平；默认值为 {cmd:level(95)}{p_end}
{synopt :{opt prop:ortion}}显示比例；默认值{p_end}
{synopt :{opt per:cent}}以百分比而非比例显示{p_end}
{synopt :{opt nomarg:inal}}抑制列边际{p_end}
{synopt :{opt nolab:el}}抑制显示值标签{p_end}
{synopt :{opt cellw:idth(#)}}单元宽度{p_end}
{synopt :{opt csepw:idth(#)}}列间隔宽度{p_end}
{synopt :{opt stubw:idth(#)}}行标签宽度{p_end}
{synopt :{opth for:mat(%fmt)}}单元格式；默认值为 {cmd:format(%6.0g)}{p_end}
{synoptline}
{p2colreset}{...}
{p 4 6 2}
{opt proportion} 在对话框中未显示。


{marker menu}{...}
{title:菜单}

{phang}
{bf:统计 > 调查数据分析 > 表格 > 一维表}


{marker description}{...}
{title:描述}

{pstd}
{cmd:svy: tabulate} 为复杂调查数据生成一维列联表。
有关复杂调查数据的二维列联表，请参见 {manhelp svy_tabulate_twoway SVY:svy: tabulate twoway}。


{marker options}{...}
{title:选项}

{phang}
{it:svy_options}; 请参见 {manhelp svy SVY}。

{dlgtab:模型}

{phang}
{opth stdize(varname)}
指定按 {it:varname} 识别的分层进行直接标准化的点估计。这一选项需要 {opt stdweight()} 选项。

{phang}
{opth stdweight(varname)}
指定与 {opt stdize()} 选项中识别的标准分层相关的权重变量。标准化权重必须在标准分层内保持常数。

{phang}
{opth tab(varname)} 指定该变量的计数作为单元总数，并且比例（或百分比）相对于该变量。 例如，如果该变量表示收入，则单元“计数”实际上是每个单元的收入总数，单元比例是每个单元的收入比例。

{phang}
{opt missing} 指定将 {varname} 的缺失值作为另一个行类别处理，而不是在分析中省略（默认为这样）。

{dlgtab:表项目}

{phang}
{opt cell} 请求显示单元比例（或百分比）。如果未指定 {opt count}，则这是默认值。

{phang}
{opt count} 请求显示加权单元计数。

{phang}
{opt se} 请求显示单元比例的标准误差（默认）或加权计数。
当指定 {opt se}（或 {opt ci}, {opt deff}, {opt deft}, 或 {opt cv}）时，只能选择 {opt cell} 或 {opt count} 中的一个。计算的标准误差是所选择项的标准误差。

{phang}
{opt ci} 请求单元比例或加权计数的置信区间。

{phang}
{opt deff} 和 {opt deft} 请求显示每个单元比例或加权计数的设计效应度量 DEFF 和 DEFT。有关详细信息，请参见
{mansection SVY estat:{bf:[SVY] estat}}。

{pmore}
{opt deff} 和 {opt deft} 选项不允许与使用直接标准化的后分层估计结果一起使用。

{phang}
{opt cv} 请求显示每个单元比例、计数或行或列比例的变异系数。有关详细信息，请参见
{mansection SVY estat:{bf:[SVY] estat}}。

{phang}
{opt srssubpop} 请求使用子人群内的简单随机抽样（SRS）方差估计计算 DEFF 和 DEFT。默认情况下，DEFF 和 DEFT 是使用整个总体的 SRS 方差的估计值计算的。通常，{opt srssubpop} 应在按分层或分层组计算子人群估计时给出。

{phang}
{opt obs} 请求显示每个单元的观察数量。

{dlgtab:报告}

{phang}
{opt level(#)}
指定置信区间的置信水平，作为百分比。默认值为 {cmd:level(95)} 或通过 {helpb set level} 设置。

{phang}
{opt proportion}，默认值，请求显示比例。

{phang}
{opt percent} 请求以百分比而非比例显示。

{phang}
{opt nomarginal} 请求不显示列边际。

{phang}
{opt nolabel} 请求忽略变量标签和值标签。

{phang}
{opt cellwidth(#)}, {opt csepwidth(#)}, 和
{opt stubwidth(#)} 指定输出中表元素的宽度；请参见 {manhelp tabdisp P}。{opt stubwidth()} 选项的可接受值范围从 4 到 32。

{phang}
{opth format(%fmt)} 指定表中项目的格式。默认值为 {cmd:format(%6.0g)}。见 {findalias frformats}。

{pstd}
{cmd:svy:} {cmd:tabulate} 使用 {cmd:tabdisp} 命令（见
{manhelp tabdisp P}）生成表格。一次只能显示五个项目。{opt ci} 选项意味着两个项目。如果选择的项目过多，将立即出现警告。要查看更多项目，在指定不同选项的同时重新显示表格。


{marker examples}{...}
{title:示例}

{phang}
{cmd:. webuse nhanes2b}
{p_end}
{phang}
{cmd:. svyset psuid [pweight=finalwgt], strata(stratid)}
{p_end}
{phang}
{cmd:. svy: tabulate race}
{p_end}
{phang}
{cmd:. svy: tabulate race, format(%11.3g) count ci deff deft}
{p_end}


{marker results}{...}
{title:存储结果}

{pstd}
除了在 {help svy_zh:[SVY] svy} 中记录的结果外，
{cmd:svy: tabulate} 在 {cmd:e()} 中存储以下内容：

{synoptset 15 tabbed}{...}
{p2col 5 15 19 2: 标量}{p_end}
{synopt:{cmd:e(r)}}行数{p_end}
{synopt:{cmd:e(total)}}加权和 {cmd:tab()} 变量{p_end}

{synoptset 15 tabbed}{...}
{p2col 5 15 19 2: 宏}{p_end}
{synopt:{cmd:e(cmd)}}{cmd:tabulate}{p_end}
{synopt:{cmd:e(tab)}}{cmd:tab()} 变量{p_end}
{synopt:{cmd:e(rowlab)}}{cmd:label} 或空{p_end}
{synopt:{cmd:e(rowvlab)}}行变量标签{p_end}
{synopt:{cmd:e(rowvar)}}{it:varname}，行变量{p_end}
{synopt:{cmd:e(setype)}}{cmd:cell} 或 {cmd:count}{p_end}

{synoptset 15 tabbed}{...}
{p2col 5 15 19 2: 矩阵}{p_end}
{synopt:{cmd:e(Prop)}}单元比例矩阵{p_end}
{synopt:{cmd:e(Obs)}}观察计数矩阵{p_end}
{synopt:{cmd:e(Deff)}}{cmd:e(setype)} 项目的 DEFF 向量{p_end}
{synopt:{cmd:e(Deft)}}{cmd:e(setype)} 项目的 DEFT 向量{p_end}
{synopt:{cmd:e(Row)}}行变量的值{p_end}
{synopt:{cmd:e(V_row)}}行总数的方差{p_end}
{synopt:{cmd:e(V_srs_row)}}行总数的 SRS 方差{p_end}
{synopt:{cmd:e(Deff_row)}}行总数的 DEFF{p_end}
{synopt:{cmd:e(Deft_row)}}行总数的 DEFT{p_end}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <svy_tabulate_oneway.sthlp>}