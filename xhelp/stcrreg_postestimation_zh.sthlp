{smcl}
{* *! version 1.1.6  04jun2018}{...}
{viewerdialog predict "dialog stcrreg_p"}{...}
{viewerdialog stcurve "dialog stcurve"}{...}
{vieweralsosee "[ST] stcrreg postestimation" "mansection ST stcrregpostestimation"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[ST] stcrreg" "help stcrreg_zh"}{...}
{vieweralsosee "[ST] stcurve" "help stcurve_zh"}{...}
{viewerjumpto "后估计命令" "stcrreg postestimation##description"}{...}
{viewerjumpto "PDF文档链接" "stcrreg_postestimation_zh##linkspdf"}{...}
{viewerjumpto "预测" "stcrreg postestimation##syntax_predict"}{...}
{viewerjumpto "边际" "stcrreg postestimation##syntax_margins"}{...}
{viewerjumpto "示例" "stcrreg postestimation##examples"}
{help stcrreg_postestimation:English Version}
{hline}{...}
{p2colset 1 32 34 2}{...}
{p2col:{bf:[ST] stcrreg postestimation} {hline 2}}stcrreg的后估计工具{p_end}
{p2col:}({mansection ST stcrregpostestimation:查看完整的PDF手册条目}){p_end}
{p2colreset}{...}


{marker description}{...}
{title:后估计命令}

{pstd}
在 {cmd:stcrreg} 之后，以下后估计命令特别重要：

{synoptset 17}{...}
{p2coldent :命令}描述{p_end}
{synoptline}
{synopt :{help stcurve_zh}}绘制累积子风险和累积发生率函数{p_end}
{synoptline}
{p2colreset}{...}

{pstd}
以下标准后估计命令也可用：

{synoptset 17}{...}
{p2coldent :命令}描述{p_end}
{synoptline}
包含 help post_contrast
包含 help post_estatic
包含 help post_estatsum
包含 help post_estatvce
包含 help post_estimates
包含 help post_hausman
包含 help post_lincom
{synopt:{helpb stcrreg_postestimation##margins:marginal}}边际均值、预测边际、边际效应和平均边际效应{p_end}
包含 help post_marginsplot
包含 help post_nlcom
{p2col :{helpb stcrreg postestimation##predict:预测}}预测、残差、影响统计量和其他诊断度量{p_end}
包含 help post_predictnl
包含 help post_pwcompare
包含 help post_test
包含 help post_testnl
{synoptline}
{p2colreset}{...}


{marker linkspdf}{...}
{title:PDF文档链接}

        {mansection ST stcrregpostestimationRemarksandexamples:备注和示例}

        {mansection ST stcrregpostestimationMethodsandformulas:方法和公式}

{pstd}
上述部分未包含在此帮助文件中。


{marker syntax_predict}{...}
{marker predict}{...}
{title:预测的语法}

{p 8 16 2}
{cmd:predict} {dtype} {newvar} {ifin}
[{cmd:,} {it:sv_statistic} {opt nooff:set}]

{p 8 16 2}
{cmd:predict} {dtype} {c -(}{it:{help newvarlist##stub*:stub}}{cmd:*} | {it:{help newvarlist_zh}}{c )-} {ifin}
{cmd:,} {it:mv_statistic} [{opt part:ial}]

{synoptset 17 tabbed}{...}
{synopthdr :sv_statistic}
{synoptline}
{syntab:Main}
{synopt :{opt shr}}预测子风险比，也称为相对子风险；默认值{p_end}
{synopt :{opt xb}}线性预测 xb{p_end}
{synopt :{opt stdp}}线性预测的标准误差；SE(xb){p_end}
{p2coldent :* {opt basecif}}基线累积发生率函数 (CIF){p_end}
{p2coldent :* {opt basecsh:azard}}基线累积子风险函数{p_end}
{p2coldent :* {opt kmc:ensor}}Kaplan-Meier生存曲线用于审查分布{p_end}
{synoptline}

{synoptset 17 tabbed}{...}
{synopthdr :mv_statistic}
{synoptline}
{syntab:Main}
{p2coldent :* {opt sco:res}}伪似然评分{p_end}
{p2coldent :* {opt esr}}有效评分残差{p_end}
{p2coldent :* {opt dfb:eta}}影响的DFBETA测量{p_end}
{p2coldent :* {opt sch:oenfeld}}Schoenfeld残差{p_end}
{synoptline}
{p2colreset}{...}
包含 help unstarred
{p 4 6 2}
{opt nooffset} 仅与非星标统计量一起使用。
{p_end}


包含 help menu_predict


{marker des_predict}{...}
{title:预测的描述}

{pstd}
{cmd:predict} 创建一个新变量，包含如子风险比、线性预测、标准误差、基线累积发生率和子风险函数、Kaplan-Meier生存曲线、伪似然评分、有效评分和Schoenfeld残差及DFBETA影响度量的预测。


{marker options_predict}{...}
{title:预测的选项}

{dlgtab:Main}

{phang}
{opt shr}，默认计算相对子风险（子风险比），即指数线性预测。

{phang}
{opt xb} 计算拟合模型的线性预测。也就是说，您通过估计一组参数 b1, b2, ..., bk 来拟合模型，线性预测为 xb。

{pmore}
计算中使用的 x 由当前内存中的数据获得，并且无需与用于估计 b 的自变量数据相对应。

{phang}
{opt stdp} 计算预测的标准误差，即 xb 的标准误差。

{phang}
{opt basecif} 计算基线 CIF。 这是特定原因失败过程的子分布的 CIF。

{phang}
{opt basecshazard} 计算基线累积子风险函数。 这是特定原因失败过程的子分布的累积风险函数。

{phang}
{opt kmcensor} 计算审查分布的Kaplan-Meier生存函数。 这些估计用于加权那些经历竞争事件的观察。 因此，这些值在严格意义上不是预测或诊断，但提供给那些希望重现 {help stcrreg_zh} 中进行的伪似然计算的人。

{phang}
{opt nooffset} 仅与 {opt shr}、{opt xb} 和 {opt stdp} 一起使用，并且仅在您为 {cmd:stcrreg} 指定了 {opth offset(varname)} 时相关。它修改 {cmd:predict} 所做的计算，以使其忽略偏移变量；线性预测被视为 xb 而不是 xb + offset。

{phang}
{cmd:scores} 计算模型中每个回归量的伪似然评分。这些评分是方差的稳健估计的组成部分。对于多记录数据，默认情况下，每个主题只计算一个评分，并将其放在该主题的最后一条记录上。

{pmore} 
添加 {opt partial} 选项将生成部分评分，在主题内的每条记录对应一个；见下文 {helpb stcrreg_postestimation##partial:partial}。
部分伪似然评分是对主题整体伪似然评分的加性贡献。在单记录数据中，部分伪似然评分就是伪似然评分。

{pmore}
每个回归量创建一个评分变量；第一个新变量对应于第一个回归量，第二个对应于第二个，依此类推。

{phang}
{cmd:esr} 计算模型中每个回归量的有效评分残差。有效评分残差是与伪似然评分等效的诊断度量，唯一不同的是有效评分残差将审查分布（用于加权的分布）视为已知而不是估计的。对于多记录数据，默认情况下，每个主题只计算一个有效评分，并放在该主题的最后一条记录上。

{pmore} 
添加 {opt partial} 选项将生成部分有效评分残差，每条记录对应一个；见下文 {helpb stcrreg_postestimation##partial:partial}。
部分有效评分残差是对主题整体有效评分残差的加性贡献。在单记录数据中，部分有效评分就是有效评分。

{pmore}
每个回归量创建一个有效评分变量；第一个新变量对应于第一个回归量，第二个对应于第二个，依此类推。

{phang}
{cmd:dfbeta} 计算模型中每个回归量的DFBETA影响度量。某个主题的DFBETA值估计由于删除该主题而导致的回归量系数变化。
对于多记录数据，默认情况下，每个主题只计算一个值，并放在该主题的最后一条记录上。

{pmore} 
添加 {opt partial} 选项将生成部分DFBETA，每条记录对应一个；见下文 {helpb stcrreg_postestimation##partial:partial}。部分DFBETA被解释为由于删除单条记录而导致的影响，而不是删除某一主题的所有记录。在单记录数据中，部分DFBETA即为DFBETA。

{pmore}
每个回归量创建一个DFBETA变量；第一个新变量对应于第一个回归量，第二个对应于第二个，依此类推。

{phang}
{opt schoenfeld} 计算Schoenfeld样残差。Schoenfeld样残差是类似于Cox回归中的Schoenfeld残差的诊断度量。它们将失败观察的协变量值与在失败时所有风险者的（加权）平均协变量值进行比较。Schoenfeld样残差仅针对那些以失败结束的观察计算；其他情况则产生缺失值。

{pmore}
每个回归量创建一个Schoenfeld残差变量；第一个新变量对应于第一个回归量，第二个对应于第二个，依此类推。

{phang}
注意：使用前四个选项的最简单方法是，例如， 

{phang2}{cmd:. predict double} {it:stub}{cmd:*, scores} 

{pmore}
其中 {it:stub} 是您选择的简短名称。 Stata 然后创建变量 {it:stub}{cmd:1}, {it:stub}{cmd:2}, 等等。您也可以明确指定每个变量名称，在这种情况下，必须指定的变量数量与模型中的回归量数量相同（且数量不能多于这个数）。

{phang}
{marker partial}{...}
{opt partial} 仅适用于多记录数据，并且对 {opt scores}、{opt esr} 和 {opt dfbeta} 有效。指定 {opt partial} 将生成这些统计量的“部分”版本，其中为每条记录计算一个值，而不是为每个主题计算一个值。主题由 {helpb stset##id():id()} 选项指定。

{pmore}
如果您希望对单条记录进行诊断而不是对单个主题进行诊断，请指定 {opt partial}。例如，部分DFBETA将被解释为由于删除单条记录而导致的系数影响，而不是由于删除某个主题的所有记录而导致的影响。


包含 help syntax_margins

{synoptset 17}{...}
{synopthdr :statistic}
{synoptline}
{synopt :{opt shr}}预测子风险比，也称为相对子风险；默认值{p_end}
{synopt :{opt xb}}线性预测 xb{p_end}
{synopt :{opt stdp}}不允许与 {cmd:margins} 一起使用{p_end}
{synopt :{opt basecif}}不允许与 {cmd:margins} 一起使用{p_end}
{synopt :{opt basecsh:azard}}不允许与 {cmd:margins} 一起使用{p_end}
{synopt :{opt kmc:ensor}}不允许与 {cmd:margins} 一起使用{p_end}
{synopt :{opt sco:res}}不允许与 {cmd:margins} 一起使用{p_end}
{synopt :{opt esr}}不允许与 {cmd:margins} 一起使用{p_end}
{synopt :{opt dfb:eta}}不允许与 {cmd:margins} 一起使用{p_end}
{synopt :{opt sch:oenfeld}}不允许与 {cmd:margins} 一起使用{p_end}
{synoptline}
{p2colreset}{...}

包含 help notes_margins


包含 help menu_margins


{marker des_margins}{...}
{title:margins 的描述}

{pstd}
{cmd:margins} 估计子风险比和线性预测的响应边际。


{marker examples}{...}
{title:stcrreg 后的预测示例}

{pstd}设置{p_end}
{phang2}{cmd:. webuse hypoxia}

{pstd}声明数据为生存时间数据{p_end}
{phang2}{cmd:. stset dftime, failure(failtype==1)}

{pstd}拟合竞争风险模型{p_end}
{phang2}{cmd:. stcrreg ifp tumsize pelnode, compete(failtype==2)}

{pstd}获取相对子风险{p_end}
{phang2}{cmd:. predict double shr}

{pstd}获取基线累积子风险函数{p_end}
{phang2}{cmd:. predict double bcsh, basecsh}

{pstd}获取DFBETA影响度量{p_end}
{phang2}{cmd:. predict double df*, dfbeta}

{pstd}绘制第一个DFBETA与分析时间的关系{p_end}
{phang2}{cmd:. twoway scatter df1 _t}


{title:在 stcrreg 之后使用 stcurve 的示例}

{pstd}设置{p_end}
{phang2}{cmd:. webuse hypoxia, clear}

{pstd}声明数据为生存时间数据{p_end}
{phang2}{cmd:. stset dftime, failure(failtype==1)}

{pstd}拟合竞争风险模型{p_end}
{phang2}{cmd:. stcrreg ifp tumsize pelnode, compete(failtype==2)}

{pstd}使用 {cmd:stcurve} 比较CIF{p_end}
{phang2}{cmd:. stcurve, cif at1(pelnode=0) at2(pelnode=1)}{p_end}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <stcrreg_postestimation.sthlp>}