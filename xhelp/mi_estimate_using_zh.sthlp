{smcl}
{* *! version 1.1.6  14may2018}{...}
{viewerdialog mi "dialog mi"}{...}
{vieweralsosee "[MI] mi estimate using" "mansection MI miestimateusing"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[MI] mi estimate" "help mi_estimate_zh"}{...}
{vieweralsosee "[MI] mi estimate postestimation" "help mi estimate postestimation"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[MI] Intro" "help mi_zh"}{...}
{vieweralsosee "[MI] Intro substantive" "help mi intro substantive"}{...}
{vieweralsosee "[MI] Glossary" "help mi glossary"}{...}
{viewerjumpto "Syntax" "mi_estimate_using_zh##syntax"}{...}
{viewerjumpto "Menu" "mi_estimate_using_zh##menu"}{...}
{viewerjumpto "Description" "mi_estimate_using_zh##description"}{...}
{viewerjumpto "Links to PDF documentation" "mi_estimate_using_zh##linkspdf"}{...}
{viewerjumpto "Options" "mi_estimate_using_zh##options"}{...}
{viewerjumpto "Example" "mi_estimate_using_zh##example"}{...}
{viewerjumpto "Stored results" "mi_estimate_using_zh##results"}{...}
{viewerjumpto "References" "mi_estimate_using_zh##references"}
{help mi_estimate_using:English Version}
{hline}{...}
{p2colset 1 27 29 2}{...}
{p2col:{bf:[MI] mi estimate using} {hline 2}}使用先前保存的估计结果进行估计{p_end}
{p2col:}({mansection MI miestimateusing:查看完整PDF手册条目}){p_end}
{p2colreset}{...}


{marker syntax}{...}
{title:语法}

{phang}
使用先前保存的估计结果计算 MI 系数的估计值

{p 8 16 2}
{cmd:mi} {cmdab:est:imate} {cmd:using} {it:miestfile} [{cmd:,} {it:选项}]


{phang}
使用先前保存的估计结果计算转换系数的 MI 估计值

{p 8 16 2}
{cmd:mi} {cmdab:est:imate} [{it:spec}] {cmd:using} {it:miestfile}
 [{cmd:,} {it:选项}]


{phang}
其中 {it:spec} 可以是一个或多个形式为
{cmd:(}[{it:name}{cmd::}] {it:{help nlcom##exp:exp}}{cmd:)} 的术语。
{it:exp} 是任何由 {help nlcom_zh} 允许的参数估计函数。

{phang}
{it:miestfile}{cmd:.ster} 包含先前由 {cmd:mi} {cmd:estimate, saving(}{it:miestfile}{cmd:)} 保存的估计结果；参见
{manhelp mi_estimate MI:mi estimate}。


{marker mi_options}{...}
{synoptset 29 tabbed}{...}
{synopthdr}
{synoptline}
{syntab:选项}
{synopt:{opt ni:mputations(#)}}指定要使用的插补数量；默认情况下使用所有现有插补{p_end}
{synopt:{opth i:mputations(numlist)}}指定要使用的插补{p_end}
{synopt:{opth est:imations(numlist)}}指定要使用的估计结果{p_end}
{synopt:{opt mcerr:or}}计算蒙特卡洛误差估计{p_end}
{synopt:{opt ufmit:est}}执行无约束 FMI 模型测试{p_end}
{synopt:{opt nosmall}}不对自由度进行小样本校正{p_end}

{syntab:表格}
{synopt:[{cmdab:no:}]{cmdab:citab:le}}抑制/显示包含特定参数置信区间的标准估计表；默认是
{cmd:citable}{p_end}
{synopt:{opt dftab:le}}显示自由度表； {cmd:dftable}
隐含 {cmd:nocitable}{p_end}
{synopt:{opt vart:able}}显示有关估计的方差信息； {cmd:vartable} 隐含 {cmd:citable}{p_end}
{synopt:{it:{help mi_estimate##table_options:table_options}}}控制表格
输出{p_end}
{synopt :{it:{help mi_estimate_using##display_options:display_options}}}控制
列和列格式、行间距、被省略变量和基数及空单元的显示，以及因子变量标记{p_end}

{syntab:报告}
{synopt:{opt l:evel(#)}}设置置信水平；默认是 {cmd:level(95)}{p_end}
{synopt:{opt dots}}在进行估计时显示点{p_end}
{synopt:{opt noi:sily}}如果指定了转换，则显示任何来自 {help nlcom_zh} 的输出{p_end}
{synopt:{opt trace}}追踪 {cmd:nlcom} 的执行，如果指定了转换；隐含 {cmd:noisily}{p_end}
{synopt:{opt replay}}重播来自每个单独估计在 {it:miestfile}{cmd:.ster} 中的命令特定结果；隐含 {cmd:noisily}{p_end}
{synopt:{opt cmdleg:end}}显示命令图例{p_end}
{synopt:{opt nogr:oup}}抑制显示 {cmd:xt} 命令的组总结信息{p_end}
{synopt:{it:{help mi_estimate_using##me_options:me_options}}}控制混合效应命令的输出{p_end}

{syntab:高级}
{synopt:{opt errorok}}即使在某些插补中 {cmd:nlcom} 出错，也允许估计；这样的插补将被丢弃{p_end}

包含 help shortdes-coeflegend
{synopt:{opt nowarn:ing}}抑制关于估计样本变化的警告{p_end}
{synopt:{opt noerrn:otes}}抑制与 {it:miestfile}{cmd:.ster} 中失败估计结果相关的错误说明{p_end}
{synopt:{opt showimp:utations}}显示保存在 {it:miestfile}{cmd:.ster} 中的插补{p_end}
{synopt:{it:{help eform_option_zh}}}以指数形式显示系数表{p_end}
{synopt:{opt post}}将估计的系数和 VCE 发送到 {cmd:e(b)} 和 {cmd:e(V)}{p_end}
{synoptline}
{p2colreset}{...}
{p 4 6 2}
{opt coeflegend}, {opt nowarning}, {opt noerrnotes}, {opt showimputations},
{it:eform_option}, 和 {cmd:post} 不会出现在对话框中.{p_end}


{marker table_options}{...}
{synoptset 29}{...}
{synopthdr:table_options}
{synoptline}
{synopt:{opt nohead:er}}抑制表头{p_end}
{synopt:{opt notab:le}}抑制表格{p_end}
{synopt:{opt nocoef}}抑制与系数相关的表输出{p_end}
{synopt:{opt nocmdleg:end}}抑制出现在使用 {cmd:nocoef} 时转变系数的表命令图例{p_end}
{synopt:{opt notrcoef}}抑制与转变系数相关的表输出{p_end}
{synopt:{opt noleg:end}}抑制所有表图例{p_end}
{synopt:{opt nocnsr:eport}}不显示约束{p_end}
{synoptline}
{p2colreset}{...}


{pstd}
请参见 {manhelp mi_estimate_postestimation MI:mi estimate postestimation} 以获取估计后可用的功能。要重播结果，请键入 {cmd:mi}
{cmd:estimate} 而不使用参数。


{marker menu}{...}
{title:菜单}

{phang}
{bf:统计 > 多重插补}


{marker description}{...}
{title:描述}

{p 4 4 2}
{cmd:mi estimate using} {it:miestfile} 用于在 {cmd:mi estimate,}
{opt saving(miestfile)}{cmd::} ....  它允许获得多重插补 (MI) 估计值，包括标准误和置信区间，用于转换系数或原始系数，这次是在插补的子集上计算的。转换可以是线性的或非线性的。


{marker linkspdf}{...}
{title:PDF 文档链接}

        {mansection MI miestimateusingRemarksandexamples:备注和示例}

        {mansection MI miestimateusingMethodsandformulas:方法和公式}

{pstd}
上述部分不包括在此帮助文件中。


{marker options}{...}
{title:选项}

{dlgtab:选项}

{phang}
{opt nimputations(#)} 指定要使用的前 {it:#} 个插补；
{it:#} 必须在 M_min <= {it:#} <= M 之间，其中当 {cmd:mcerror} 被指定时 M_min = 3，否则 M_min = 2。默认是使用所有插补 M。
只能指定 {cmd:nimputations()}、{cmd:imputations()} 或 {cmd:estimations()} 之一。

{phang}
{opth imputations(numlist)} 指定要使用的插补。默认是使用所有的插补。 {it:numlist} 必须包含至少两个数字，这些数字对应于保存在 {it:miestfile}{cmd:.ster} 中的插补。
如果 {cmd:mcerror} 被指定， {it:numlist} 必须包含至少三个数字。您可以使用 {cmd:showimputations} 选项来显示当前保存在 {it:miestfile}{cmd:.ster} 中的插补。只能指定 {cmd:nimputations()}、{cmd:imputations()} 或 {cmd:estimations()} 之一。

{phang}
{opth estimations(numlist)} 和 {opt imputations(numlist)} 的作用相同，但这次插补的编号不同。假设 {it:miestfile}{cmd:.ster} 是通过 {cmd:mi estimate} 创建的，并且 {cmd:mi estimate} 被告知限制在插补 1、3、5 和 9。
使用 {cmd:imputations()} 时，插补仍按 1、3、5 和 9 编号。使用 {cmd:estimations()} 时，它们编号为 1、2、3 和 4。通常，在使用 {cmd:mi estimate} 时不会指定插补的子集，因此通常 {cmd:imputations()} 和 {cmd:estimations()} 选项是相同的。指定的 {it:numlist} 必须包含至少两个数字。如果 {cmd:mcerror} 被指定， {it:numlist} 必须包含至少三个数字。只能指定 {cmd:nimputations()}、{cmd:imputations()} 或 {cmd:estimations()} 之一。

{phang}
{cmd:mcerror} 指定计算在估计、自由度和方差信息表中显示的结果的蒙特卡洛误差 (MCE) 估计。MCE 估计反映了对相同插补程序的重复使用所导致的 MI 结果的变异性，并对确定获得稳定的 MI 结果所需的插补数量非常有用；有关详细信息和指导，请参见 {help mi estimate##WRW2011:White, Royston, and Wood (2011)}。

{pmore}
MCE 估计是通过将自助法程序应用于多重插补结果来获得的。也就是说，MI 结果的自助伪值是通过一次省略一个插补而获得的；有关自助法过程的详细信息，请参见 {manhelp jackknife R}。因此，蒙特卡洛误差计算需要至少三个插补。

{pmore}
如果在估计过程中指定了 {cmd:level()}，则为指定置信水平的置信区间获得 MCE 估计，而不是使用默认的 95% 置信水平。
如果在估计过程中指定了 {manhelpi eform_option R} 中描述的选项中的任何一个，则也会计算系数、标准误和置信区间的 MCE 估计，其以指数形式显示。 {cmd:mcerror} 也可以在重播时使用，以显示 MCE 估计。否则，即使之前计算了 MCE 估计，在重播时也不会报告 MCE 估计。

{phang}
{cmd:ufmitest} 指定使用无约束缺失信息的百分比 (FMI) 模型测试。默认执行的测试假设由于非响应而缺失的信息的各系数的缺失百分比相等。这等同于假设跨插补和插补内的方差成比例。当这一假设存疑时，使用无约束测试可能更佳，前提是插补数量相对于估计系数的数量较大。

{phang}
{cmd:nosmall} 指定不对自由度进行小样本校正。默认情况下，对系数（和转变系数）进行的个别测试使用 {help mi estimate using##BR1999:Barnard and Rubin (1999)} 的小样本校正，而总体模型测试使用 {help mi estimate using##R2007:Reiter (2007)} 的小样本校正。

{dlgtab:表格}

{pstd}
以下所有表格选项可以在估计时或者在重新显示先前估计结果时指定。  

{phang}
{cmd:citable} 和 {cmd:nocitable} 指定是否显示包含特定参数置信区间的标准估计表。默认是 {cmd:citable}。可以使用 {cmd:nocitable} 和 {cmd:vartable} 来抑制置信区间表的显示。

{phang}
{cmd:dftable} 显示包含特定参数的自由度和由于非响应导致的标准误增加百分比的表。 {cmd:dftable} 隐含 {cmd:nocitable}。  

{phang}
{cmd:vartable} 显示报告 MI 估计的方差信息的表。表中包含插补内方差、插补间方差、总方差、由于非响应导致的方差相对增加、因非响应缺失的信息比例和使用有限的 M 相对于假设的无限数量插补的相对效率的估计。 {cmd:vartable} 隐含 {cmd:citable}。

{phang}
{it:table_options} 控制所有显示表格输出的外观：

{phang2}
{cmd:noheader} 从输出中抑制所有头信息。表格输出仍然会显示。  

{phang2}
{cmd:notable} 从输出中抑制所有表格。头信息仍然会显示。  

{phang2}
{cmd:nocoef} 抑制包含系数估计的表的显示。该选项影响由 {cmd:citable}、{cmd:dftable} 和 {cmd:vartable} 生成的表输出。  

{phang2}
{cmd:nocmdlegend} 抑制在使用 {cmd:nocoef} 时，出现在包含转变系数的表（或者在使用 {cmd:vartable} 时的方差信息表）中的命令行图例的输出。  

{phang2}
{cmd:notrcoef} 抑制包含转变系数估计的表的显示（如果指定）。该选项影响由 {cmd:citable}、{cmd:dftable} 和 {cmd:vartable} 生成的表输出。  

{phang2}
{cmd:nolegend} 抑制所有表图例的输出。  

{phang2}
{cmd:nocnsreport}；参见 {manhelp estimation_options R:估计选项}。

{marker display_options}{...}
{phang}
{it:display_options}:
{opt noci},
{opt nopv:alues},
{opt noomit:ted},
{opt vsquish},
{opt noempty:cells},
{opt base:levels},
{opt allbase:levels},
{opt nofvlab:el},
{opt fvwrap(#)},
{opt fvwrapon(style)},
{opth cformat(%fmt)},
{opt pformat(%fmt)}, 和
{opt sformat(%fmt)};
    参见 {helpb estimation options##display_options:[R] 估计选项}。
{p_end}

{dlgtab:报告}

{phang}
{opt level(#)}; 参见 {manhelp estimation_options R:估计选项}。

{phang}
{cmd:dots} 指定在成功完成转换系数的估计时显示点。如果 {cmd:nlcom} 未能估计指定的转换系数，则会显示一个 {bf:x}。
该选项仅在指定了转换时相关。

{phang}
{cmd:noisily} 指定显示任何来自 {cmd:nlcom} 的输出，该输出用于获取转变系数的估计。该选项仅在指定了转换时相关。

{phang}
{cmd:trace} 跟踪 {cmd:nlcom} 的执行。 {cmd:trace} 隐含 {cmd:noisily}，并仅在指定了转换时相关。

{phang}
{cmd:replay} 从 {it:miestfile}{cmd:.ster} 重播估计结果，该结果之前通过 {cmd:mi estimate,} {opt saving(miestfile)} 保存。该选项隐含 {cmd:noisily}。

{phang}
{cmd:cmdlegend} 请求显示用于产生保存在 {it:miestfile}{cmd:.ster} 的估计结果的估计命令对应的命令行。 {cmd:cmdlegend} 可以在运行时或重新显示结果时指定。

{phang}
{cmd:nogroup} 抑制显示组汇总信息（组数量、平均组大小、最小值和最大值）以及为 {cmd:xt} 命令显示的其他命令特定信息。

{marker me_options}{...}
{phang}
{it:me_options}:
{opt stddev:iations},
{opt var:iance},
{opt noret:able},
{opt nofet:able}, 和
{opt estm:etric}。
这些选项仅与混合效应命令 {cmd:mixed} 相关（见 {manhelp mixed ME}）。
有关更多信息，请参见相应的混合效应命令。
{cmd:stddeviations} 选项是 {cmd:mi estimate using} 的默认选项。
使用 {cmd:vartable} 或 {cmd:dftable} 时隐含 {cmd:estmetric} 选项。

{dlgtab:高级}

{phang}
{cmd:errorok} 指定跳过对转变系数的估计失败的情况，并基于成功的估计结果进行合并。默认情况下，{cmd:mi estimate} 在单个估计失败时会停止。如果 {it:miestfile}{cmd:.ster} 文件包含失败的估计结果，{cmd:mi estimate using} 不会报错；它将发出关于哪些估计结果失败的说明并在计算中丢弃这些估计结果。您可以使用 {cmd:noerrnotes} 选项来抑制说明的显示。


{pstd}
以下选项可与 {cmd:mi} {cmd:estimate} {cmd:using} 一起使用，但未显示在对话框中：

{phang}
{cmd:coeflegend}; 参见 {manhelp estimation_options R:估计选项}。
{cmd:coeflegend} 隐含 {cmd:nocitable}，且不能与 {cmd:citable} 或 {cmd:dftable} 组合使用。

{phang}
{cmd:nowarning} 抑制在表输出底部的警告消息，如果估计样本变化且 {cmd:esampvaryok} 被指定则会发生该警告。
有关详细信息，请参见 {mansection MI miestimateRemarksandexamplesPotentialproblemsthatcanarisewhenusingmiestimate:{it:使用 mi estimate 可能出现的潜在问题}} 中的 {manhelp mi_estimate MI:mi estimate}。

{phang}
{cmd:noerrnotes} 抑制关于失败估计结果的说明。当 {it:miestfile}{cmd:.ster} 包含由 {cmd:mi estimate,} {opt saving(miestfile)} 保存的估计结果时，这些说明会出现，而这些估计结果来自没有成功估计参数的插补。

{phang}
{cmd:showimputations} 显示与保存在 {it:miestfile}{cmd:.ster} 中的估计结果对应的插补编号。 {cmd:showimputations} 可以在运行时或重新显示结果时指定。 

{phang}
{it:eform_option}; 参见 {manhelpi eform_option R}。 {cmd:mi estimate using} 在应用组合规则时报告结果的系数指标。
如果需要，您可以使用适当的 {it:eform_option} 以指数形式重新显示结果。 如果同时指定 {cmd:dftable}，报告的自由度和标准误的百分比增加不会进行调整，且对应于原始系数指标。 

{phang}
{cmd:post} 请求以通常方式发布系数的 MI 估计及其相应的 VCE。这允许使用 {it:{help mi_estimation##estimation_command:estimation_command}} 特定的后估计工具与 MI 估计。有关问题，请参见 {mansection MI miestimatepostestimationRemarksandexamplesUsingthecommand-specificpostestimationtools:{it:使用特定命令的后估计工具}} 中的 {manhelp mi_estimate_postestimation MI:mi estimate postestimation}。
{cmd:post} 可以在估计时或在重新显示先前估计的结果时指定。


{marker example}
{title:示例}

{pstd}
使用先前保存的估计值获得系数比的估计；
(1) 进行先前保存的估计
{p_end}
{phang2}
{cmd:. webuse mhouses1993s30}
{p_end}
{phang2}
{cmd:. mi estimate, saving(miest): regress price tax sqft age nfeatures ne custom corner}
{p_end}

{pstd}
(2) 使用先前保存的估计值获得所需比值的估计
{p_end}
{phang2}
{cmd:. mi estimate (ratio: _b[age]/_b[sqft]) using miest}

{pstd}
计算系数及系数比的蒙特卡洛误差估计
{p_end}
{phang2}
{cmd:. mi estimate (ratio: _b[age]/_b[sqft]) using miest, mcerror}

{pstd}
如果您刚刚运行了此示例，完成后，请删除包含之前估计的文件，
{p_end}
{phang2}
{cmd:. erase miest.ster}
{p_end}


{marker results}{...}
{title:存储的结果}

{pstd}
请参见 {it:{helpb mi_estimate##results:存储的结果}} 中的内容
在 {manhelp mi_estimate MI:mi estimate} 中。


{marker references}{...}
{title:参考文献}

{marker BR1999}{...}
{phang}
Barnard, J.，和 D. B. Rubin. 1999. 多重插补的小样本自由度。 {it:Biometrika} 86: 948-955。

{marker R2007}{...}
{phang}
Reiter, J. P. 2007. 多重插补缺失数据的多组件显著性测试的小样本自由度。 {it:Biometrika} 94: 502-508。

{marker WRW2011}{...}
{phang}
White, I. R.，P. Royston，和 A. M. Wood. 2011. 使用链式方程的多重插补：实践中的问题与指导。  
{it:Statistics in Medicine} 30: 377-399。
{p_end}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <mi_estimate_using.sthlp>}