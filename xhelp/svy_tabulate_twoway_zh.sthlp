{smcl}
{* *! version 1.1.23  03apr2019}{...}
{viewerdialog "svy: tabulate twoway" "dialog svy_tabulate_twoway"}{...}
{vieweralsosee "[SVY] svy tabulate twoway" "mansection SVY svytabulatetwoway"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[SVY] svy postestimation" "help svy_postestimation_zh"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[R] tabulate twoway" "help tabulate_twoway_zh"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[SVY] svy" "help svy_zh"}{...}
{vieweralsosee "[SVY] svy: tabulate oneway" "help svy_tabulate_oneway_zh"}{...}
{vieweralsosee "[SVY] svydescribe" "help svydescribe_zh"}{...}
{vieweralsosee "[R] test" "help test_zh"}{...}
{viewerjumpto "Syntax" "svy_tabulate_twoway_zh##syntax"}{...}
{viewerjumpto "Menu" "svy_tabulate_twoway_zh##menu"}{...}
{viewerjumpto "Description" "svy_tabulate_twoway_zh##description"}{...}
{viewerjumpto "Options" "svy_tabulate_twoway_zh##options"}{...}
{viewerjumpto "Examples" "svy_tabulate_twoway_zh##examples"}{...}
{viewerjumpto "Stored results" "svy_tabulate_twoway_zh##results"}{...}
{viewerjumpto "References" "svy_tabulate_twoway_zh##references"}
{help svy_tabulate_twoway:English Version}
{hline}{...}
{p2colset 1 31 33 2}{...}
{p2col :{bf:[SVY] svy: tabulate twoway} {hline 2}}针对调查数据的二元表{p_end}
{p2col:}({mansection SVY svytabulatetwoway:查看完整的 PDF 手册条目}){p_end}
{p2colreset}{...}


{marker syntax}{...}
{title:语法}

{pstd}
基本语法

{phang2}
{cmd:svy}{cmd::} {cmdab:tab:ulate} {varname:1} {varname:2}


{pstd}
完整语法

{phang2}
{cmd:svy} [{it:vcetype}] [{cmd:,} {it:{help svy_tabulate_twoway##svy_options:svy_options}}]
{cmd::} {cmdab:tab:ulate} {varname:1} {varname:2} {ifin}
[{cmd:,}
{it:{help "svy: tabulate twoway##tabulate_options":tabulate_options}}
{it:{help "svy: tabulate twoway##display_items":display_items}}
{it:{help "svy: tabulate twoway##display_options":display_options}}
{it:{help "svy: tabulate twoway##statistic_options":statistic_options}}]


{pstd}
报告结果的语法

{phang2}
{cmd:svy} [{cmd:,}
{it:{help "svy: tabulate twoway##display_items":display_items}}
{it:{help "svy: tabulate twoway##display_options":display_options}}
{it:{help "svy: tabulate twoway##statistic_options":statistic_options}}]


INCLUDE help vcetype


INCLUDE help svy_tab_optable


{marker tabulate_options}{...}
{synopthdr:tabulate_options}
{synoptline}
{syntab:模型}
{synopt :{opth std:ize(varname)}}用于标准化的变量
	识别分层{p_end}
{synopt :{opth stdw:eight(varname)}}标准化的权重变量{p_end}
{synopt :{opth tab(varname)}}计算单元总数/比例的变量{p_end}
{synopt :{opt miss:ing}}将缺失值视为其他值{p_end}
{synoptline}


{marker display_items}{...}
{synopthdr:display_items}
{synoptline}
{syntab:表项}
{synopt :{opt cel:l}}单元比例{p_end}
{synopt :{opt cou:nt}}加权单元计数{p_end}
{synopt :{opt col:umn}}列内比例{p_end}
{synopt :{opt row}}行内比例{p_end}
{synopt :{opt se}}标准误差{p_end}
{synopt :{opt ci}}置信区间{p_end}
{synopt :{opt deff}}显示 DEFF 设计效应{p_end}
{synopt :{opt deft}}显示 DEFT 设计效应{p_end}
{synopt :{opt cv}}显示变异系数{p_end}
{synopt :{opt srs:subpop}}报告
	设计效应假定在子群体内进行简单随机抽样{p_end}
{synopt :{opt obs}}单元观察数{p_end}
{synoptline}
{p 4 6 2}
当指定了 {opt se}、{opt ci}、{opt deff}、{opt deft}、{opt cv} 或
{opt srssubpop} 时，只能指定 {opt cell}、{opt count}、{opt column} 或 {opt row} 中的一个。如果未指定 {opt se}、{opt ci}、{opt deff}、{opt deft}、{opt cv} 或
{opt srssubpop}，则可以指定其中任何一个或全部的 {opt cell}、{opt count}、{opt column} 和 {opt row}。


{marker display_options}{...}
{synopthdr:display_options}
{synoptline}
{syntab:报告}
{synopt :{opt l:evel(#)}}设置置信水平；默认值为 {cmd:level(95)}{p_end}
{synopt :{opt prop:ortion}}显示比例；默认值{p_end}
{synopt :{opt per:cent}}显示百分比而不是比例{p_end}
{synopt :{opt vert:ical}}垂直堆叠置信区间端点{p_end}
{synopt :{opt nomarg:inals}}抑制行和列的边际{p_end}
{synopt :{opt nolab:el}}抑制显示值标签{p_end}
{synopt :{opt notab:le}}抑制显示表格{p_end}
{synopt :{opt cellw:idth(#)}}单元宽度{p_end}
{synopt :{opt csepw:idth(#)}}列分隔宽度{p_end}
{synopt :{opt stubw:idth(#)}}标签宽度{p_end}
{synopt :{opth for:mat(%fmt)}}单元格式；默认值为 {cmd:format(%6.0g)}{p_end}
{synoptline}
{p 4 6 2}
{opt proportion} 和 {opt notable} 在对话框中未显示。


{marker statistic_options}{...}
{synopthdr:statistic_options}
{synoptline}
{syntab:检验统计}
{synopt :{opt pea:rson}}皮尔逊卡方检验{p_end}
{synopt :{opt lr}}似然比{p_end}
{synopt :{opt nul:l}}显示基于零假设的统计{p_end}
{synopt :{opt wald}}调整后的瓦尔德{p_end}
{synopt :{opt llwald}}调整后的对数线性瓦尔德{p_end}
{synopt :{opt noadj:ust}}报告未调整的瓦尔德统计{p_end}
{synoptline}
{p2colreset}{...}


{marker menu}{...}
{title:菜单}

{phang}
{bf:统计 > 调查数据分析 > 表格 > 二元表}


{marker description}{...}
{title:描述}

{pstd}
{cmd:svy: tabulate} 生成复杂调查数据的二元列联表及独立性检验。有关复杂调查数据的一元列联表，请参见
{manhelp svy_tabulate_oneway SVY:svy: tabulate oneway}。


{marker options}{...}
{title:选项}

{phang}
{it:svy_options}; 请参见 {manhelp svy SVY}。

{dlgtab:模型}

{phang}
{opth stdize(varname)}
指定对通过 {it:varname} 识别的分层进行直接标准化的点估计。此选项要求 {opt stdweight()} 选项。

{phang}
{opth stdweight(varname)}
指定与 {opt stdize()} 选项中识别的标准分层相关的权重变量。标准化权重必须在标准分层内保持不变。

{phang}
{opth tab(varname)} 指定计数为
该变量的单元总数，比例（或百分比）相对于（即按该变量加权）。例如，如果该变量表示收入，则单元“计数”在每个单元中为收入总数，单元比例则为每个单元的收入比例。

{phang}
{opt missing} 指定缺失的 {varname:1} 和
{it:varname2} 的值被视为其他行或列类别，而不是在分析中被省略（默认为省略）。

{dlgtab:表项}

{phang}
{opt cell} 请求显示单元比例（或百分比）。如果未指定 {opt count}、{opt row} 或
{opt column}，则这是默认选项。

{phang}
{opt count} 请求显示加权单元计数。

{phang}
{opt column} 或 {opt row} 请求显示列或行比例（或百分比）。

{phang}
{opt se} 请求显示单元比例的标准误差
（默认为加权计数，或行或列比例）。当指定 {opt se}（或 {opt ci}、{opt deff}、{opt deft} 或 {opt cv}）时，只能选择一个
{opt cell}、{opt count}、{opt row} 或 {opt column}。计算的标准误差是选定项的标准误差。

{phang}
{opt ci} 请求单元比例的置信区间，
加权计数或行或列比例。置信区间使用对数变换构造，以使其端点始终位于 0 和 1 之间。

{phang}
{opt deff} 和 {opt deft} 请求显示每个单元比例、计数或行或列比例的设计效应度量 DEFF 和 DEFT。有关详细信息，请参见
{mansection SVY estat:{bf:[SVY] estat}} 。当请求 {cmd:deff}、 {cmd:deft} 或 {cmd:subpop} 时，均值概括 DEFF 也会显示；有关说明，请参见
{mansection SVY svytabulatetwowayMethodsandformulas:{it:Methods and formulas}}
在 {bf:[SVY] svy: tabulate twoway} 中。

{pmore}
选项 {opt deff} 和 {opt deft} 不允许与使用直接标准化的估计结果一起使用。

{phang}
{opt cv} 请求显示每个单元比例、计数或行或列比例的变异系数。有关详细信息，请参见
{mansection SVY estat:{bf:[SVY] estat}}。

{phang}
{opt srssubpop} 请求使用子群体内抽样的简单随机抽样（SRS）方差估计来计算 DEFF 和 DEFT。默认情况下，DEFF 和 DEFT 是使用整个总体的 SRS 方差估计计算的。通常，当通过分层或分组的分层计算子群体估计时，应提供 {opt srssubpop}。

{phang}
{opt obs} 请求显示每个单元的观察数。

{dlgtab:报告}

{phang}
{opt level(#)}
指定置信区间的置信水平，作为百分比。默认值为 {cmd:level(95)} 或通过 {helpb set level} 设置的值。

{phang}
{opt proportion}，默认请求显示比例。

{phang}
{opt percent} 请求显示百分比而不是比例。

{phang}
{opt vertical} 请求在显示时将置信区间的端点垂直堆叠。

{phang}
{opt nomarginals} 请求不显示行和列的边际。

{phang}
{opt nolabel} 请求忽略变量标签和值标签。

{phang}
{opt notable} 防止输出中显示标题和表。在指定时，仅显示请求的统计测试的结果。此选项不得与 {it:display_options} 中的其他选项一起指定，除了 {opt level()} 选项。

{phang}
{opt cellwidth(#)}、{opt csepwidth(#)} 和 
{opt stubwidth(#)} 指定输出中表元素的宽度；请参阅 {manhelp tabdisp P}。 {opt stubwidth()} 选项的可接受值范围为 4 到 32。

{phang}
{opth format(%fmt)} 指定表中项目的格式。默认值为 {cmd:format(%6.0g)}。请参见 {findalias frformats}。

{dlgtab:检验统计}

{phang}
{opt pearson} 请求计算皮尔逊卡方统计。默认情况下，这是显示的独立性检验。皮尔逊卡方统计经过调整以适应调查设计，使用 
{help svy tabulate twoway##RS1984:Rao and Scott (1984)} 的二阶校正，并转换为 F 统计量。校正公式中的一个项可以使用观察到的单元比例或基于零假设的比例（即边际的乘积）计算。默认情况下，使用观察到的单元比例。如果选择 {opt null} 选项，则还显示一个使用基于零假设的比例进行校正的统计量。

{phang}
{opt lr} 请求计算比例的似然比检验统计。当表中包含一个或多个零单元时，该统计量未定义。采用与 {opt pearson} 统计量相同的校正程序对统计量进行调查设计校正。同样地，可以使用观察到的单元比例或基于零假设的比例来进行校正。默认情况下，使用前者；指定 {opt null} 选项则同时给出前者和后者。对于稀疏表格，这种统计量的任一变体都不推荐使用。对于非稀疏表格，{opt lr} 统计量与相应的 {opt pearson} 统计量相似。

{phang}
{opt null} 仅修改 {opt pearson} 和 {opt lr} 选项。如果指定 {cmd:null}，则显示两个经过校正的统计量。标记为 "D-B (null)" 的统计量（"D-B" 代表基于设计的统计量）在 {help svy tabulate twoway##RS1984:Rao and Scott (1984)} 校正中使用基于零假设的比例（即边际的乘积）。仅标记为 "Design-based" 的统计量使用观察到的单元比例。如果未指定 {opt null}，则仅显示使用观察到的比例的校正。

{phang}
{opt wald} 请求检验观察到的加权计数是否等于边际的乘积
（{help svy tabulate twoway##KFF1975:Koch, Freeman, and Freeman 1975}）。默认情况下，生成经调整的 F 统计量；可以通过指定 {opt noadjust} 生成未调整的统计量。当方差估计的自由度（抽取的PSU数量减去分层数）相对 (R-1)(C-1) 表的自由度（其中 R 为行数，C 为列数）较小时，未调整的 F 统计量可能会导致极其反保守的 p 值（即，p 值过小）。因此，使用 {opt wald} 和 {opt noadjust} 生成的统计量如果几乎等同于调整后的统计量，则可以用于推断。

{pmore}
此选项必须在运行时指定，以便在后续调用 {cmd:svy} 时报告结果。

{phang}
{opt llwald} 请求独立性的对数线性模型瓦尔德检验（{help svy tabulate twoway##KFF1975:Koch, Freeman, and Freeman 1975}）。当表中有一个或多个零单元时，该统计量未定义。调整后的统计量（默认情况）在小自由度时可能会产生反保守的 p 值，尤其是对于稀疏表格；指定 {opt noadjust} 会生成具有更严重问题的统计量。无论是调整后的统计量还是未调整的统计量，都不推荐用于推断；这些统计量仅为教学目的提供。

{phang}
{opt noadjust} 仅修改 {opt wald} 和 {opt llwald} 选项。
它请求在显示调整后的统计量的同时显示未调整的 F 统计量。

{pstd}
{cmd:svy:} {cmd:tabulate} 使用 {cmd:tabdisp} 命令（请参见
{manhelp tabdisp P}）
生成表格。每次只能显示五个项目。 {opt ci} 选项暗示两个项目。如果选择的项目过多，系统会立即显示警告。要查看更多项目，请在重新显示表时指定不同的选项。


{marker examples}{...}
{title:示例}

{phang}
{cmd:. webuse nhanes2b}
{p_end}
{phang}
{cmd:. svy: tabulate race diabetes}
{p_end}
{phang}
{cmd:. svy: tabulate, row}
{p_end}
{phang}
{cmd:. svy: tabulate race diabetes, row se ci format(%7.4f)}
{p_end}

{phang}
{cmd:. webuse svy_tabopt}
{p_end}
{phang}
{cmd:. svyset psuid [pweight=finalwgt], strata(stratid)}
{p_end}
{phang}
{cmd:. svy: tabulate gender race, tab(income) row}
{p_end}

{phang}
{cmd:. webuse nhanes2b}
{p_end}
{phang}
{cmd:. gen male = (sex==1) if !missing(sex)}
{p_end}
{phang}
{cmd:. svy, subpop(male):}
{cmd: tabulate highbp sizplace, col obs pearson lr null wald}
{p_end}


{marker results}{...}
{title:存储结果}

{pstd}
除了在 {help svy_zh:[SVY] svy} 中记录的结果外，
{cmd:svy: tabulate} 在 {cmd:e()} 中存储以下内容：

{synoptset 15 tabbed}{...}
{p2col 5 15 19 2: 标量}{p_end}
{synopt:{cmd:e(r)}}行数{p_end}
{synopt:{cmd:e(c)}}列数{p_end}
{synopt:{cmd:e(cvgdeff)}}广义 DEFF 特征值的变异系数{p_end}
{synopt:{cmd:e(mgdeff)}}均值广义 DEFF{p_end}
{synopt:{cmd:e(total)}}加权的 {cmd:tab()} 变量总和{p_end}

{synopt:{cmd:e(F_Pear)}}默认校正的皮尔逊 F{p_end}
{synopt:{cmd:e(F_Penl)}}零假设校正的皮尔逊 F{p_end}
{synopt:{cmd:e(df1_Pear)}} {cmd:e(F_Pear)} 的分子自由度{p_end}
{synopt:{cmd:e(df2_Pear)}} {cmd:e(F_Pear)} 的分母自由度{p_end}
{synopt:{cmd:e(df1_Penl)}} {cmd:e(F_Penl)} 的分子自由度{p_end}
{synopt:{cmd:e(df2_Penl)}} {cmd:e(F_Penl)} 的分母自由度{p_end}
{synopt:{cmd:e(p_Pear)}} {cmd:e(F_Pear)} 的 p 值{p_end}
{synopt:{cmd:e(p_Penl)}} {cmd:e(F_Penl)} 的 p 值{p_end}
{synopt:{cmd:e(cun_Pear)}}未经校正的皮尔逊卡方{p_end}
{synopt:{cmd:e(cun_Penl)}}零假设变体未经校正的皮尔逊卡方{p_end}

{synopt:{cmd:e(F_LR)}}默认校正的似然比 F{p_end}
{synopt:{cmd:e(F_LRnl)}}零假设校正的似然比 F{p_end}
{synopt:{cmd:e(df1_LR)}} {cmd:e(F_LR)} 的分子自由度{p_end}
{synopt:{cmd:e(df2_LR)}} {cmd:e(F_LR)} 的分母自由度{p_end}
{synopt:{cmd:e(df1_LRnl)}} {cmd:e(F_LRnl)} 的分子自由度{p_end}
{synopt:{cmd:e(df2_LRnl)}} {cmd:e(F_LRnl)} 的分母自由度{p_end}
{synopt:{cmd:e(p_LR)}} {cmd:e(F_LR)} 的 p 值{p_end}
{synopt:{cmd:e(p_LRnl)}} {cmd:e(F_LRnl)} 的 p 值{p_end}
{synopt:{cmd:e(cun_LR)}}未经校正的似然比卡方{p_end}
{synopt:{cmd:e(cun_LRnl)}}零假设变体未经校正的似然比卡方
{p_end}

{synopt:{cmd:e(F_Wald)}}调整后的 "皮尔逊" 瓦尔德 F{p_end}
{synopt:{cmd:e(F_LLW)}} 调整后的对数线性瓦尔德 F{p_end}
{synopt:{cmd:e(p_Wald)}} {cmd:e(F_Wald)} 的 p 值{p_end}
{synopt:{cmd:e(p_LLW)}} {cmd:e(F_LLW)} 的 p 值{p_end}
{synopt:{cmd:e(Fun_Wald)}}未调整的 "皮尔逊" 瓦尔德 F{p_end}
{synopt:{cmd:e(Fun_LLW)}}未调整的对数线性瓦尔德 F{p_end}
{synopt:{cmd:e(pun_Wald)}} {cmd:e(Fun_Wald)} 的 p 值{p_end}
{synopt:{cmd:e(pun_LLW)}} {cmd:e(Fun_LLW)} 的 p 值{p_end}
{synopt:{cmd:e(cun_Wald)}}未调整的 "皮尔逊" 瓦尔德卡方{p_end}
{synopt:{cmd:e(cun_LLW)}}未调整的对数线性瓦尔德卡方{p_end}

{synoptset 15 tabbed}{...}
{p2col 5 15 19 2: 宏}{p_end}
{synopt:{cmd:e(cmd)}}{cmd:tabulate}{p_end}
{synopt:{cmd:e(tab)}}{cmd:tab()} 变量{p_end}
{synopt:{cmd:e(rowlab)}}标签或空{p_end}
{synopt:{cmd:e(collab)}}标签或空{p_end}
{synopt:{cmd:e(rowvlab)}}行变量标签{p_end}
{synopt:{cmd:e(colvlab)}}列变量标签{p_end}
{synopt:{cmd:e(rowvar)}}{it:varname}1，行变量{p_end}
{synopt:{cmd:e(colvar)}}{it:varname}2，列变量{p_end}
{synopt:{cmd:e(setype)}}{cmd:cell}、{cmd:count}、{cmd:column}或
           {cmd:row}{p_end}

{synoptset 15 tabbed}{...}
{p2col 5 15 19 2: 矩阵}{p_end}
{synopt:{cmd:e(Prop)}}单元比例矩阵{p_end}
{synopt:{cmd:e(Obs)}}观察计数矩阵{p_end}
{synopt:{cmd:e(Deff)}}{cmd:e(setype)} 项的 DEFF 向量{p_end}
{synopt:{cmd:e(Deft)}}{cmd:e(setype)} 项的 DEFT 向量{p_end}
{synopt:{cmd:e(Row)}}行变量的值{p_end}
{synopt:{cmd:e(Col)}}列变量的值{p_end}
{synopt:{cmd:e(V_row)}}行总数的方差{p_end}
{synopt:{cmd:e(V_col)}}列总数的方差{p_end}
{synopt:{cmd:e(V_srs_row)}}行总数的 SRS{p_end}
{synopt:{cmd:e(V_srs_col)}}列总数的 SRS{p_end}
{synopt:{cmd:e(Deff_row)}}行总数的 DEFF{p_end}
{synopt:{cmd:e(Deff_col)}}列总数的 DEFF{p_end}
{synopt:{cmd:e(Deft_row)}}行总数的 DEFT{p_end}
{synopt:{cmd:e(Deft_col)}}列总数的 DEFT{p_end}


{marker references}{...}
{title:参考文献}

{marker KFF1975}{...}
{phang}
Koch, G. G.，D. H. Freeman Jr.，和 J. L. Freeman. 1975. 复杂调查数据的多变量分析策略。
{it:国际统计评论} 43: 59-78。

{marker RS1984}{...}
{phang}
Rao, J. N. K.，和 A. J. Scott. 1984. 对于从调查数据估计的多方式列联表的卡方检验。
{it:统计年鉴} 12: 46-60。
{p_end}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <svy_tabulate_twoway.sthlp>}