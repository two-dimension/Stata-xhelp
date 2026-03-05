{smcl}
{* *! version 1.2.8  14may2018}{...}
{viewerdialog mi "dialog mi"}{...}
{vieweralsosee "[MI] mi estimate" "mansection MI miestimate"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[MI] mi estimate postestimation" "help mi estimate postestimation"}{...}
{vieweralsosee "[MI] mi estimate using" "help mi_estimate_using_zh"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[MI] Intro" "help mi_zh"}{...}
{vieweralsosee "[MI] Intro substantive" "help mi intro substantive"}{...}
{vieweralsosee "[MI] Glossary" "help mi glossary"}{...}
{viewerjumpto "Syntax" "mi_estimate_zh##syntax"}{...}
{viewerjumpto "Menu" "mi_estimate_zh##menu"}{...}
{viewerjumpto "Description" "mi_estimate_zh##description"}{...}
{viewerjumpto "Links to PDF documentation" "mi_estimate_zh##linkspdf"}{...}
{viewerjumpto "Options" "mi_estimate_zh##options"}{...}
{viewerjumpto "Examples" "mi_estimate_zh##examples"}{...}
{viewerjumpto "Stored results" "mi_estimate_zh##results"}{...}
{viewerjumpto "References" "mi_estimate_zh##references"}
{help mi_estimate:English Version}
{hline}{...}
{p2colset 1 21 23 2}{...}
{p2col:{bf:[MI] mi estimate} {hline 2}}使用多重插补的估计{p_end}
{p2col:}({mansection MI miestimate:查看完整PDF手册条目}){p_end}
{p2colreset}{...}


{marker syntax}{...}
{title:语法}

{phang}
通过将估计命令应用于mi数据来计算MI系数估计

{p 8 16 2}
{cmd:mi} {cmdab:est:imate} [{cmd:,} {it:options}] {cmd::} {it:{help mi_estimation##estimation_command:estimation_command}} ...


{phang}
通过将估计命令应用于mi数据计算变换后的系数的MI估计

{p 8 16 2}
{cmd:mi} {cmdab:est:imate} [{it:{help mi_estimate##spec:spec}}]
   [{cmd:,} {it:options}] {cmd::}
   {it:{help mi_estimation##estimation_command:estimation_command}} ...


{marker spec}{...}
{phang}
其中 {it:spec} 可以是一个或多个形式为
{cmd:(}[{it:name}{cmd::}] {it:{help nlcom##exp:exp}}{cmd:)} 的项。
{it:exp} 是 {help nlcom_zh} 允许的参数估计的任何函数。


{marker mi_options}{...}
{synoptset 29 tabbed}{...}
{synopthdr}
{synoptline}
{syntab:选项}
{synopt:{opt ni:mputations(#)}}指定要使用的插补次数；默认是使用所有现有插补{p_end}
{synopt:{opth i:mputations(numlist)}}指定要使用的插补{p_end}
{synopt:{opt mcerr:or}}计算蒙特卡洛错误估计{p_end}
{synopt:{opt ufmit:est}}进行无约束FMI模型测试{p_end}
{synopt:{opt nosmall}}对自由度不应用小样本修正{p_end}
{synopt:{cmdab:sav:ing(}{it:miestfile}[{cmd:, replace}]{cmd:)}}将每个模型拟合的估计结果保存到 {it:miestfile}{cmd:.ster}{p_end}

{syntab:表格}
{synopt:[{cmdab:no:}]{cmdab:citab:le}}抑制/显示包含参数特定置信区间的标准估计表；默认是
{cmd:citable}{p_end}
{synopt:{opt dftab:le}}显示自由度表； {cmd:dftable}
隐含 {cmd:nocitable}{p_end}
{synopt:{opt vart:able}}显示有关估计的方差信息； {cmd:vartable} 隐含 {cmd:citable}{p_end}
{synopt:{it:{help mi_estimate##table_options:table_options}}}控制表格
输出{p_end}
{synopt :{it:{help mi_estimate##display_options:display_options}}}控制
列和列格式、行间距、被省略变量和基本
和空单元格的显示，以及因子变量标签{p_end}

{syntab:报告}
{synopt:{opt l:evel(#)}}设置置信水平；默认是 {cmd:level(95)}{p_end}
{synopt:{opt dots}}在执行估计时显示点{p_end}
{synopt:{opt noi:sily}}显示来自 {it:{help mi_estimation##estimation_command:estimation_command}} 的任何输出（如果指定了变换，则也会显示来自 {cmd:nlcom} 的输出）{p_end}
{synopt:{opt trace}}跟踪 {it:{help mi_estimation##estimation_command:estimation_command}} 的执行（如果指定了变换，则跟踪 {cmd:nlcom}）；隐含 {cmd:noisily}{p_end}
{synopt:{opt nogr:oup}}抑制显示有关为 {helpb mi estimation##xt_cmds:xt} 命令显示的组的摘要{p_end}
{synopt:{it:{help mi_estimate##me_options:me_options}}}控制混合效应命令的输出{p_end}

{syntab:高级}
{synopt:{opth esample(newvar)}}将估计样本存储在变量
{it:newvar} 中；仅在flong和flongsep风格中可用{p_end}
{synopt:{opt errorok}}即使当 {it:{help mi_estimation##estimation_command:estimation_command}}
（或 {cmd:nlcom}）输出错误时也允许估计；这些插补在分析中被丢弃{p_end}
{synopt:{opt esampvaryok}}在不同插补之间允许估计样本变化{p_end}
{synopt:{opt cmdok}}允许在
   {help mi_estimation##estimation_command:{it:estimation_command}} 不是受支持的估计命令之一时进行估计{p_end}

包括 help shortdes-coeflegend
{synopt:{opt nowarn:ing}}抑制有关估计样本变化的警告{p_end}
{synopt:{it:{help eform_option_zh}}}以指数形式显示系数表{p_end}
{synopt:{opt post}}将估计的系数和VCE发布到 {cmd:e(b)} 和 {cmd:e(V)}{p_end}
{synopt:{opt noup:date}}不执行 {cmd:mi update}; 参见 {manhelp mi_noupdate_option MI:noupdate option}{p_end}
{synoptline}
{p2colreset}{...}
{p 4 6 2}
在使用 {cmd:mi} {cmd:estimate} 之前必须 {cmd:mi set} 数据；
参见 {manhelp mi_set MI:mi set}.{p_end}
{p 4 6 2}
{opt coeflegend}, {opt nowarning}, {it:eform_option}, {cmd:post}, 和
{cmd:noupdate} 不会出现在对话框中.{p_end}


{marker table_options}{...}
{synoptset 29}{...}
{synopthdr:table_options}
{synoptline}
{synopt:{opt nohead:er}}抑制表头{p_end}
{synopt:{opt notab:le}}抑制表格{p_end}
{synopt:{opt nocoef}}抑制与系数相关的表格输出{p_end}
{synopt:{opt nocmdleg:end}}当使用 {cmd:nocoef} 时，如果存在变换系数，则抑制出现的命令图例{p_end}
{synopt:{opt notrcoef}}抑制与变换系数相关的表格输出{p_end}
{synopt:{opt noleg:end}}抑制所有表图例{p_end}
{synopt:{opt nocnsr:eport}}不显示约束{p_end}
{synoptline}
{p2colreset}{...}


{pstd}
有关估计后可用功能，请参见 {manhelp mi_estimate_postestimation MI:mi estimate postestimation}。 {cmd:mi} {cmd:estimate} 是其自己的估计命令。 {cmd:mi} {cmd:estimate} 的后估计特性默认不包括 {it:estimation_command} 的后估计特性。
要重放结果，请输入 {cmd:mi} {cmd:estimate}，无需参数。


{marker menu}{...}
{title:菜单}

{phang}
{bf:统计 > 多重插补}


{marker description}{...}
{title:描述}

{pstd}
{cmd:mi estimate:}
{it:{help mi_estimation##estimation_command:estimation_command}} 在插补的 {cmd:mi} 数据上运行
{it:estimation_command}，并根据 {help mi estimate##R1987:Rubin (1987)} 的组合规则调整系数
和标准误差以考虑插补之间的变异性。


{marker linkspdf}{...}
{title:PDF文档链接}

        {mansection MI miestimateRemarksandexamples:备注和示例}

        {mansection MI miestimateMethodsandformulas:方法和公式}

{pstd}
上述部分不包含在此帮助文件中。


{marker options}{...}
{title:选项}

{dlgtab:选项}

{phang}
{opt nimputations(#)} 指定使用的前 {it:#} 个插补；
{it:#} 必须满足 M_min <= {it:#} <= M，其中 M_min = 3 如果指定了 {cmd:mcerror}，否则 M_min = 2。 默认是使用所有插补，M。
只能指定 {cmd:nimputations()} 或 {cmd:imputations()} 中的一个。

{phang}
{opth imputations(numlist)} 指定要使用哪些插补。 
默认是使用全部。 {it:numlist} 必须至少包含两个数字。 如果指定了 {cmd:mcerror}，则 {it:numlist} 必须至少包含三个数字。 只能指定 {cmd:nimputations()} 或 {cmd:imputations()} 中的一个。

{phang}
{cmd:mcerror} 指定计算蒙特卡洛误差 (MCE) 估计，用于显示在估计、自由度和方差信息表中。 MCE 估计反映了在重复使用相同插补程序时 MI 结果的变异性，并且有助于确定获得稳定 MI 结果所需的足够插补数量；详见 {help mi estimate##WRW2011:White, Royston, and Wood (2011)} 的细节和指南。

{pmore}
MCE 估计是通过对多重插补结果应用留一法程序获得的。 也就是说，MI 结果的留一法伪值是通过每次省略一个插补获得的；有关留一法程序的详细信息，请参见 {manhelp jackknife R}。 因此，MCE 计算需要至少三个插补。

{pmore}
如果在估计期间指定了 {cmd:level()}，则使用指定的置信水平而不是默认的95%置信水平为置信区间获得MCE估计。 如果在估计期间指定了 {manhelpi eform_option R} 中描述的任何选项，则还计算端点形式的系数、标准误差和置信区间的 MCE 估计。 {cmd:mcerror} 还可以用于重放以显示 MCE 估计。 否则，即使之前计算过 MCE 估计，在重放时也不会报告。

{phang}
{cmd:ufmitest} 指定使用无约束的缺失信息比例 (FMI) 模型测试。 默认测试假定所有系数由于无响应而缺失的信息比例相等。 这等同于假定插补之间和插补内部方差成比例。 当这一假设可疑且插补次数相对于估计系数数量较大时，无约束测试可能更可取。

{phang}
{cmd:nosmall} 指定不对自由度进行小样本修正。 默认情况下，对于考虑小样本的估计命令会进行小样本校正。 如果命令在 {cmd:e(df_r)} 中存储残余自由度，则系数 (和变换系数) 的单独测试使用 {help mi estimate##BR1999:Barnard and Rubin (1999)} 的小样本修正，整体模型测试使用 {help mi estimate##R2007:Reiter (2007)} 的小样本修正。 如果命令不存储残余自由度，则使用大样本测试，并且 {cmd:nosmall} 选项没有效果。

{phang}
{cmd:saving(}{it:miestfile} [{cmd:, replace}]{cmd:)} 将每个模型拟合的估计结果保存到 {it:miestfile}{cmd:.ster}。 {cmd:replace} 子选项指定如果 {it:miestfile}{cmd:.ster} 存在，则覆盖它。 {it:miestfile}{cmd:.ster} 可由 {cmd:mi estimate using} 后续使用（参见 {manhelp mi_estimate_using MI:mi estimate using}），以在不重新拟合完整数据模型的情况下获得系数或变换系数的MI估计。 此文件以 {cmd:estimates use} 使用的格式编写；参见 {manhelp estimates_save R:estimates save}。

{dlgtab:表格}

{pstd}
所有表格选项均可在估计时或在重新显示先前估计的结果时指定。 表格选项必须作为 {cmd:mi estimate} 的选项指定，而不是 {it:estimation_command} 的选项。

{phang}
{cmd:citable} 和 {cmd:nocitable} 指定是否显示标准模态表，列出参数特定的置信区间。 默认是 {cmd:citable}。 {cmd:nocitable} 可与 {cmd:vartable} 一起使用，以抑制置信区间表。

{phang}
{cmd:dftable} 显示包含参数特定自由度和由于无响应而引起的标准误差百分比增加的表。 {cmd:dftable} 隐含 {cmd:nocitable}。

{phang}
{cmd:vartable} 显示关于MI估计的方差信息的表。 该表包含插补内方差、插补间方差、总方差、由于无响应导致的方差相对增加、由于无响应缺失的参数估计的信息比例，以及使用有限 M 而不是假设为无限插补数的相对效率。 {cmd:vartable} 隐含 {cmd:citable}。

{phang}
{it:table_options} 控制所有显示表格输出的外观：

{phang2}
{cmd:noheader} 抑制输出中的所有头信息。 表格
输出仍然会显示。

{phang2}
{cmd:notable} 抑制输出中的所有表。 头信息
仍然会显示。

{phang2}
{cmd:nocoef} 抑制显示包含系数估计的表。 此选项影响通过 {cmd:citable}、{cmd:dftable} 和 {cmd:vartable} 生成的表格输出。

{phang2}
{cmd:nocmdlegend} 抑制显示指定命令行 {it:{help mi_estimation##estimation_command:estimation_command}} 的表格图例。 当 {cmd:nocoef} 被指定时，该图例出现在包含变换系数的表格上方（或在使用 {cmd:vartable} 时出现在方差信息表上方）。

{phang2}
{cmd:notrcoef} 抑制显示包含变换系数估计的表格（如果已指定）。 此选项影响通过 {cmd:citable}、{cmd:dftable} 和 {cmd:vartable} 生成的表格输出。

{phang2}
{cmd:nolegend} 抑制输出中的所有表图例。

{phang2}
{cmd:nocnsreport}; 参见 {manhelp estimation_options R:估计选项}。

{marker display_options}{...}
{phang}
{it:display_options}：
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
{opt sformat(%fmt)}；
   参见 {helpb estimation options##display_options:[R] 估计选项}。
{p_end}

{dlgtab:报告}

{pstd}
报告选项必须作为 {cmd:mi estimate} 的选项指定，而不能作为 {it:estimation_command} 的选项。

{phang}
{opt level(#)}；参见 {manhelp estimation_options R:估计选项}。

{phang}
{cmd:dots} 指定在成功完成估计时显示点。 如果
{it:{help mi_estimation##estimation_command:estimation_command}} 返回错误，则显示一个 {bf:x}，如果模型未能收敛，或者如果 {cmd:nlcom} 未能估计在 {it:spec} 中指定的变换系数之一。

{phang}
{cmd:noisily} 指定显示来自
{it:{help mi_estimation##estimation_command:estimation_command}} 和
{cmd:nlcom} 的任何输出，用于获得变换系数的估计。

{phang}
{cmd:trace} 跟踪
{it:{help mi_estimation##estimation_command:estimation_command}} 的执行，并跟踪
{cmd:nlcom} 如果指定了变换。 {cmd:trace} 隐含
{cmd:noisily}。

{phang}
{cmd:nogroup} 抑制显示组摘要信息（组数、平均组大小、最小值和最大值）以及针对 {cmd:xt} 命令显示的其他特定命令信息；参见 {manhelp mi_estimation MI:估计} 中的 {help mi estimation##xt_cmds:{it:面板数据模型}} 的命令列表。

{marker me_options}{...}
{phang}
{it:me_options}：
{opt stddev:iations},
{opt var:iance},
{opt noret:able},
{opt nofet:able}, 和
{opt estm:etric}。
这些选项仅与混合效应命令 {cmd:mixed} 相关（参见 {manhelp mixed ME}）。
有关更多信息，请参见相应的混合效应命令。
{cmd:stddeviations} 选项是 {cmd:mi estimate} 的默认选项。
{cmd:estmetric} 选项在使用 {cmd:vartable} 或 {cmd:dftable} 时隐含。

{dlgtab:高级}

{marker esample()}{...}
{phang}
{opth esample(newvar)} 创建包含 {cmd:e(sample)} 的 {it:newvar}。
此选项用于识别哪些观测值用于估计，尤其是当估计样本在插补之间变化时(请参见 {mansection MI miestimateRemarksandexamplesPotentialproblemsthatcanarisewhenusingmiestimate:{it:使用 MI 估计时可能出现的潜在问题}} 以获取详细信息)。  {it:newvar} 在原始数据 (m=0) 和在任何插补 (m>0) 中为零，其中估计失败或未在计算中使用。 只能在数据为 flong 或 flongsep 时指定 {cmd:esample()}；请参见 {manhelp mi_convert MI:mi convert} 以转换为其中一种风格。 创建的变量将是超变的，因此不能注册；有关更多解释，请参见 {manhelp mi_varying MI:mi varying}。 保存的估计样本 {it:newvar} 可稍后与 {cmd:mi extract} 使用（请参见 {manhelp mi_extract MI:mi extract}）以设置估计样本。

{phang}
{cmd:errorok} 指定跳过失败的估计，并基于成功的个体估计结果合并结果。 默认情况下，如果个体估计失败，则 {cmd:mi estimate} 停止。 如果在 {cmd:saving()} 中指定了 {cmd:errorok}，则所有估计结果，包括失败的结果，都会保存到文件中。

{phang}
{cmd:esampvaryok} 允许在插补之间估计样本变化时继续估计。 如果估计样本发生变化，{cmd:mi} {cmd:estimate} 将停止。 如果指定了 {cmd:esampvaryok}，则使用所有插补的结果计算 MI 估计，并在表底部显示警告信息。 另请参见 {helpb mi_estimate##esample():esample()} 选项。 有关更多信息，请参见 {mansection MI miestimateRemarksandexamplesPotentialproblemsthatcanarisewhenusingmiestimate:{it:使用 MI 估计时可能出现的潜在问题}}。

{phang}
{cmd:cmdok} 允许不受支持的估计命令与 {cmd:mi} {cmd:estimate} 一起使用；参见 {manhelp mi_estimation MI:估计} 的受支持估计命令列表。 另外，如果希望 {cmd:mi} {cmd:estimate} 与您的估计命令一起工作，请将属性 {cmd:mi} 添加到程序属性中；请参见 {manhelp program_properties P:程序属性}。

{pstd}
以下选项与 {cmd:mi estimate} 一起可用，但未在对话框中显示：

{phang}
{cmd:coeflegend}; 参见 {manhelp estimation_options R:估计选项}。
{cmd:coeflegend} 隐含 {cmd:nocitable}，且不能与 {cmd:citable} 或 {cmd:dftable} 组合。

{phang}
{cmd:nowarning} 抑制估计样本变化时在表格输出底部出现的警告消息。 
详见 {mansection MI miestimateRemarksandexamplesPotentialproblemsthatcanarisewhenusingmiestimate:{it:使用 MI 估计时可能出现的潜在问题}}。

{phang}
{it:eform_option}; 请参见 {manhelpi eform_option R}。 无论指定何种 {it:{help mi_estimation##estimation_command:estimation_command}}， {cmd:mi estimate} 在施加组合规则的系数度量下报告结果。 如果需要，您可以使用适当的 {it:eform_option} 以指数形式重新显示结果。
如果同时指定 {cmd:dftable}，则报告的自由度和标准误差百分比增加不进行调整，并对应于原始系数度量。

{phang}
{cmd:post} 请求将 coefficients 的 MI 估计及其相应的 VCE 以常规方式发布。 这允许使用与 MI 估计的 {it:{help mi_estimation##estimation_command:estimation_command}} 特定的后估计工具。 这里有一些问题；请参见 {mansection MI miestimatepostestimationRemarksandexamplesUsingthecommand-specificpostestimationtools:{it:使用命令特定的后估计工具}}，在 {manhelp mi_estimate_postestimation MI:mi estimate postestimation} 中。 {cmd:post} 可以在估计时间或重新显示先前估计的结果时指定。

{phang}
{cmd:noupdate} 在某些情况下抑制此命令可能执行的自动 {cmd:mi update}；请参见 {manhelp noupdate_option MI:noupdate option}。 该选项很少使用。


{marker examples}{...}
{title:示例 1}

{pstd}
使用 {cmd:logit} 对完成数据进行估计
{p_end}
{phang2}
{cmd:.  webuse mheart1s20}
{p_end}
{phang2}
{cmd:.  mi describe}
{p_end}
{phang2}
{cmd:.  mi estimate, dots: logit attack smokes age bmi hsgrad female}
{p_end}

{pstd}
重放估计结果
{p_end}
{phang2}
{cmd:.  mi estimate}
{p_end}

{pstd}
显示特定系数的自由度
{p_end}
{phang2}
{cmd:.  mi estimate, dftable }
{p_end}

{pstd}
显示特定系数的方差信息
{p_end}
{phang2}
{cmd:.  mi estimate, vartable nocitable}
{p_end}

{pstd}
显示比值比
{p_end}
{phang2}
{cmd:.  mi estimate, or}
{p_end}

{pstd}
计算蒙特卡洛错误估计
{p_end}
{phang2}
{cmd:.  mi estimate, dots mcerror: logit attack smokes age bmi hsgrad female}
{p_end}

{pstd}
计算比值比的蒙特卡洛错误估计
{p_end}
{phang2}
{cmd:.  mi estimate, dots mcerror or: logit attack smokes age bmi hsgrad female}
{p_end}


{title:示例 2}

{pstd}
使用 {cmd:stcox} 对完成数据进行估计
{p_end}
{phang2}
{cmd:. webuse mdrugtrs25}
{p_end}
{phang2}
{cmd:. mi describe}
{p_end}
{phang2}
{cmd:. mi stset studytime, failure(died)}
{p_end}
{phang2}
{cmd:. mi estimate, dots: stcox drug age}
{p_end}

{pstd}
将结果重新显示为风险比
{p_end}
{phang2}
{cmd:. mi estimate, hr}
{p_end}


{title:示例 3}

{pstd}
使用 {cmd:xtreg} 对完成数据进行估计
{p_end}
{phang2}
{cmd:. webuse mjsps5, clear}
{p_end}
{phang2}
{cmd:. mi xtset school}
{p_end}
{phang2}
{cmd:. mi estimate: xtreg math5 math3}
{p_end}


{title:示例 4}

{pstd}
使用 {cmd:mixed} 对完成数据进行估计
{p_end}
{phang2}
{cmd:. webuse mjsps5}
{p_end}
{phang2}
{cmd:. mi estimate, dots: mixed math5 math3 || school:, reml}
{p_end}

{pstd}
将结果重新显示为方差成分
{p_end}
{phang2}
{cmd:. mi estimate, variance}
{p_end}


{title:示例 5}

{pstd}
对指定线性回归的完成数据进行估计，并 
附加指定变换后的系数
{p_end}
{phang2}
{cmd:. webuse mhouses1993s30}
{p_end}
{phang2}
{cmd:. mi estimate (ratio: _b[age]/_b[sqft]): regress price tax sqft age nfeatures ne custom corner}
{p_end}


{marker results}{...}
{title:存储的结果}

{pstd}
{cmd:mi estimate} 将以下内容存储在 {cmd:e()} 中：

{synoptset 22 tabbed}{...}
{p2col 5 15 19 2: 标量}{p_end}
{synopt:{cmd:e(df_avg}[{cmd:_Q}]{cmd:_mi)}}平均自由度{p_end}
{synopt:{cmd:e(df_c_mi)}}完全自由度（如果原始由 
 {it:estimation_command} 存储在 {cmd:e(df_r)}){p_end}
{synopt:{cmd:e(df_max}[{cmd:_Q}]{cmd:_mi)}}最大自由度{p_end}
{synopt:{cmd:e(df_min}[{cmd:_Q}]{cmd:_mi)}}最小自由度{p_end}
{synopt:{cmd:e(df_m_mi)}}MI模型测试分母（残差）自由度{p_end}
{synopt:{cmd:e(df_r_mi)}}MI模型测试分子（模型）自由度{p_end}
{synopt:{cmd:e(esampvary_mi)}}变化估计样本标记 ({cmd:0} 或
{cmd:1}){p_end}
{synopt:{cmd:e(F_mi)}}模型测试F统计量{p_end}
{synopt:{cmd:e(k_exp_mi)}}表达式的数量（变换系数）{p_end}
{synopt:{cmd:e(M_mi)}}插补数量{p_end}
{synopt:{cmd:e(N_mi)}}观察数量（如果变化，最小值）{p_end}
{synopt:{cmd:e(N_min_mi)}}最小观察数量{p_end}
{synopt:{cmd:e(N_max_mi)}}最大观察数量{p_end}
{synopt:{cmd:e(N_g_mi)}}组数{p_end}
{synopt:{cmd:e(g_min_mi)}}最小组大小{p_end}
{synopt:{cmd:e(g_avg_mi)}}平均组大小{p_end}
{synopt:{cmd:e(g_max_mi)}}最大组大小{p_end}
{synopt:{cmd:e(p_mi)}}MI模型测试p值{p_end}
{synopt:{cmd:e(cilevel_mi)}}用于计算置信区间的蒙特卡洛错误估计的置信水平{p_end}
{synopt:{cmd:e(fmi_max}[{cmd:_Q}]{cmd:_mi)}}最大的FMI{p_end}
{synopt:{cmd:e(rvi_avg}[{cmd:_Q}]{cmd:_mi)}}平均RVI{p_end}
{synopt:{cmd:e(rvi_avg_F_mi)}}与模型测试的残余自由度相关联的平均RVI{p_end}
{synopt:{cmd:e(ufmi_mi)}}如果执行无约束FMI模型测试，则为 {cmd:1}，
如果执行相等FMI模型测试，则为 {cmd:0}{p_end}

{synoptset 22 tabbed}{...}
{p2col 5 15 19 2: 宏}{p_end}
{synopt:{cmd:e(mi)}}{cmd:mi}{p_end}
{synopt:{cmd:e(cmdline_mi)}}命令如输入{p_end}
{synopt:{cmd:e(prefix_mi)}}{cmd:mi} {cmd:estimate}{p_end}
{synopt:{cmd:e(cmd_mi)}}{it:estimation_command} 的名称{p_end}
{synopt:{cmd:e(cmd)}}{cmd:mi estimate}（当使用 {cmd:post} 时等于 {cmd:e(cmd_mi)}）{p_end}
{synopt:{cmd:e(title_mi)}}"多重插补估计"{p_end}
{synopt:{cmd:e(wvce_mi)}}用于在表头中标记插补内方差的标题{p_end}
{synopt:{cmd:e(modeltest_mi)}}用于在表头中标记模型测试的标题{p_end}
{synopt:{cmd:e(dfadjust_mi)}}用于在表头中标记自由度调整的标题{p_end}
{synopt:{cmd:e(expnames_mi)}}在 {it:spec} 中指定的表达式名称{p_end}
{synopt:{cmd:e(exp}{it:#}{cmd:_mi)}}在 {it:spec} 中指定的变换系数的表达式{p_end}
{synopt:{cmd:e(rc_mi)}}每个插补的返回代码{p_end}
{synopt:{cmd:e(m_mi)}}指定的插补编号{p_end}
{synopt:{cmd:e(m_est_mi)}}用于计算的插补编号{p_end}
{synopt:{cmd:e(names_vvl_mi)}}命令特定的 {cmd:e()} 宏名称，其内容在插补之间变化{p_end}
{synopt:{cmd:e(names_vvm_mi)}}命令特定的 {cmd:e()} 矩阵名称，其值在插补之间变化
（不包括 {cmd:b}, {cmd:V}, 和 {cmd:Cns}){p_end}
{synopt:{cmd:e(names_vvs_mi)}}命令特定的 {cmd:e()} 标量名称，其值在插补之间变化{p_end}

{synoptset 22 tabbed}{...}
{p2col 5 15 19 2: 矩阵}{p_end}
{synopt:{cmd:e(b)}}MI系数估计（等于 {cmd:e(b_mi)}；仅在使用 {cmd:post} 时存储）{p_end}
{synopt:{cmd:e(V)}}方差-协方差矩阵（等于 {cmd:e(V_mi)}；仅在使用 {cmd:post} 时存储）{p_end}
{synopt:{cmd:e(Cns)}}约束矩阵，仅用于约束估计（等于 {cmd:e(Cns_mi)}；仅在使用 {cmd:post} 时存储）{p_end}
{synopt:{cmd:e(N_g_mi)}}组计数{p_end}
{synopt:{cmd:e(g_min_mi)}}组大小最小值{p_end}
{synopt:{cmd:e(g_avg_mi)}}组大小平均值{p_end}
{synopt:{cmd:e(g_max_mi)}}组大小最大值{p_end}
{synopt:{cmd:e(b}[{cmd:_Q}]{cmd:_mi)}}MI系数估计（或变换系数）{p_end}
{synopt:{cmd:e(V}[{cmd:_Q}]{cmd:_mi)}}方差-协方差矩阵（总方差）{p_end}
{synopt:{cmd:e(Cns}{cmd:_mi)}}约束矩阵（仅用于约束估计）{p_end}
{synopt:{cmd:e(W}[{cmd:_Q}]{cmd:_mi)}}插补内方差矩阵{p_end}
{synopt:{cmd:e(B}[{cmd:_Q}]{cmd:_mi)}}插补间方差矩阵{p_end}
{synopt:{cmd:e(re}[{cmd:_Q}]{cmd:_mi)}}参数特定的相对效率{p_end}
{synopt:{cmd:e(rvi}[{cmd:_Q}]{cmd:_mi)}}参数特定的RVI{p_end}
{synopt:{cmd:e(fmi}[{cmd:_Q}]{cmd:_mi)}}参数特定的FMI{p_end}
{synopt:{cmd:e(df}[{cmd:_Q}]{cmd:_mi)}}参数特定的自由度{p_end}
{synopt:{cmd:e(pise}[{cmd:_Q}]{cmd:_mi)}}参数特定的标准误差百分比增加{p_end}
{synopt:{cmd:e(}{it:vs_names}{cmd:_vs_mi)}}在插补间变化的命令特定 {cmd:e()} 标量 {it:vs_names} 的值{p_end}

{phang}
{it:vs_names} 包括（但不限于） {cmd:df_r}, {cmd:N},
{cmd:N_strata}, {cmd:N_psu}, {cmd:N_pop}, {cmd:N_sub}, {cmd:N_poststrata},
{cmd:N_stdize}, {cmd:N_subpop}, {cmd:N_over}, 和 {cmd:converged}。

{phang}
结果 {cmd:N_g_mi}, {cmd:g_min_mi}, {cmd:g_avg_mi}, 和 {cmd:g_max_mi} 仅针对面板数据模型存储。
结果被存储为混合效应模型的矩阵，以及其他面板数据模型的标量。

{phang}
如果指定了变换，则相应的估计结果以 {cmd:_Q_mi} 后缀存储，如上所述。

{phang}
在插补间保持不变的命令特定 {cmd:e()} 结果也被存储。 在插补之间变化的命令特定结果被标记为缺失，并且它们的名称存储在相应的宏 {cmd:e(names_vvl_mi)}, {cmd:e(names_vvm_mi)}, 和 {cmd:e(names_vvs_mi)} 中。 对于一些命令特定的 {cmd:e()} 标量（见上面的 {it:vs_names}），来自每个插补的值存储在相应的矩阵中，带有 {cmd:_vs_mi} 后缀。


{marker references}{...}
{title:参考文献}

{marker BR1999}{...}
{phang}
Barnard, J., 和 D. B. Rubin. 1999. 多重插补的小样本自由度. {it:Biometrika} 86: 948-955.

{marker R2007}{...}
{phang}
Reiter, J. P. 2007. 用于多重插补缺失数据的多组分显著性检验的小样本自由度. {it:Biometrika} 94: 502-508.

{marker R1987}{...}
{phang}
Rubin, D. B. 1987. {it:Multiple Imputation for Nonresponse in Surveys}. 纽约: Wiley.

{marker WRW2011}{...}
{phang}
White, I. R., P. Royston, 和 A. M. Wood. 2011. 使用链式方程进行多重插补：实践中的问题和指导. {it:Statistics in Medicine} 30: 377-399.
{p_end}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <mi_estimate.sthlp>}