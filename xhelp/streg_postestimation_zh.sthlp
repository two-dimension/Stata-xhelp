{smcl}
{* *! version 1.4.10  14apr2019}{...}
{viewerdialog predict "dialog streg_p"}{...}
{viewerdialog stcurve "dialog stcurve"}{...}
{vieweralsosee "[ST] streg postestimation" "mansection ST stregpostestimation"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[ST] stcurve" "help stcurve_zh"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[ST] streg" "help streg_zh"}{...}
{viewerjumpto "后续估计命令" "streg postestimation##description"}{...}
{viewerjumpto "PDF文档链接" "streg_postestimation_zh##linkspdf"}{...}
{viewerjumpto "预测" "streg postestimation##syntax_predict"}{...}
{viewerjumpto "边际" "streg postestimation##syntax_margins"}{...}
{viewerjumpto "示例" "streg postestimation##examples"}
{help streg_postestimation:English Version}
{hline}{...}
{p2colset 1 30 32 2}{...}
{p2col:{bf:[ST] streg postestimation} {hline 2}}streg的后续估计工具{p_end}
{p2col:}({mansection ST stregpostestimation:查看完整PDF手册条目}){p_end}
{p2colreset}{...}


{marker description}{...}
{title:后续估计命令}

{pstd}
在执行 {cmd:streg} 后，以下后续估计命令特别重要：

{synoptset 17}{...}
{p2coldent :命令}描述{p_end}
{synoptline}
{synopt :{help stcurve_zh}}绘制生存、风险和累积风险函数{p_end}
{synoptline}
{p2colreset}{...}

{pstd}
以下标准后续估计命令也可用：

{synoptset 17 tabbed}{...}
{p2coldent :命令}描述{p_end}
{synoptline}
包含 帮助 post_contrast
包含 帮助 post_estatic
包含 帮助 post_estatsum
包含 帮助 post_estatvce
包含 帮助 post_svy_estat
包含 帮助 post_estimates
包含 帮助 post_hausman_star
包含 帮助 post_lincom
包含 帮助 post_linktest
包含 帮助 post_lrtest_star
{synopt:{helpb streg_postestimation##margins:margins}}边际均值、预测边际、边际效应和平均边际效应{p_end}
包含 帮助 post_marginsplot
包含 帮助 post_nlcom
{p2col :{helpb streg postestimation##predict:predict}}预测、残差、影响统计和其他诊断度量{p_end}
包含 帮助 post_predictnl
包含 帮助 post_pwcompare
包含 帮助 post_suest
包含 帮助 post_test
包含 帮助 post_testnl
{synoptline}
{p2colreset}{...}
{p 4 6 2}
* {cmd:hausman} 和 {cmd:lrtest} 不适用于 {cmd:svy} 估计结果。{p_end}


{marker linkspdf}{...}
{title:PDF文档链接}

        {mansection ST stregpostestimationRemarksandexamples:备注和示例}

        {mansection ST stregpostestimationMethodsandformulas:方法和公式}

{pstd}
上述部分不包括在本帮助文件中。


{marker syntax_predict}{...}
{marker predict}{...}
{title:预测的语法}

{p 8 16 2}
{cmd:predict} {dtype} {newvar} {ifin} [{cmd:,} {it:statistic} {it:options}]

{p 8 16 2}
{cmd:predict} {dtype} {c -(}{it:{help newvarlist##stub*:stub}}{cmd:*} | {it:{help newvarlist_zh}}{c )-}
{ifin}{cmd:,} {opt sc:ores}

{synoptset 17 tabbed}{...}
{synopthdr :statistic}
{synoptline}
{syntab:主}
{synopt :{opt med:ian} {opt time}}中位生存时间；默认值{p_end}
{synopt :{opt med:ian} {opt lnt:ime}}中位 ln(生存时间){p_end}
{synopt :{opt mean time}}均值生存时间{p_end}
{synopt :{opt mean} {opt lnt:ime}}均值 ln(生存时间){p_end}
{synopt :{opt ha:zard}}风险{p_end}
{synopt :{opt hr}}风险比，也称为相对风险{p_end}
{synopt :{opt xb}}线性预测 xb{p_end}
{synopt :{opt stdp}}线性预测的标准误；SE(xb){p_end}
{synopt :{opt s:urv}}S(t|t_0){p_end}
{p2coldent :* {opt csu:rv}}S(t|最早的 t_0 对于主题){p_end}
{p2coldent :* {opt csn:ell}}Cox-Snell 残差{p_end}
{p2coldent :* {opt mg:ale}}马丁盖尔类残差{p_end}
{p2coldent :* {opt dev:iance}}偏差残差{p_end}
{synoptline}
{p2colreset}{...}

{synoptset 17}{...}
{synopthdr :options}
{synoptline}
{synopt :{opt oos}}在内部和外部样本中提供 {it:statistic}{p_end}
{synopt :{opt nooff:set}}忽略在 {cmd:streg} 中指定的 {cmd:offset()} 变量{p_end}
{synopt :{opt alpha:1}}在脆弱性值等于 1 的条件下预测 {it:statistic}{p_end}
{synopt :{opt uncond:itional}}在脆弱性上无条件预测 {it:statistic}{p_end}
{synopt :{opt marg:inal}}同义词 {cmd:unconditional}{p_end}
{synopt :{opt part:ial}}生成观察级别结果{p_end}
{synoptline}
{p2colreset}{...}

{p 4 6 2} 
无星号统计量在内部和外部样本中都可用；如果希望仅在估计样本中使用，请输入 {cmd:predict} {it:...} {cmd:if e(sample)} {it:...}。星号统计量默认情况下仅为估计样本计算，但 {opt oos} 选项使得它们在内部和外部样本中都可用。{p_end}
{p 4 6 2} 
如果未指定选项，将计算所有模型的预测中位生存时间。预测的风险比，选项 {opt hr}，仅适用于指数、威布尔和冈珀兹模型。选项 {opt mean time} 和 {opt mean lntime} 在冈珀兹模型下不可用。如果指定了 {opt frailty()}，则无条件的 {opt mean time} 和 {opt mean lntime} 不可用。{p_end}
{p 4 6 2}
{opt csnell}、{opt mgale} 和 {opt deviance} 与 {cmd:svy} 估计结果不允许一起使用。{p_end}


包含 帮助 menu_predict


{marker des_predict}{...}
{title:预测的描述}

{pstd}
{cmd:predict} 创建一个新变量，包含诸如中位和均值生存时间；风险；风险比；线性预测；标准误；Cox-Snell、马丁盖尔类和偏差残差的预测。


{marker options_predict}{...}
{title:预测的选项}

{dlgtab:主}

{phang}
{opt median time} 计算分析时间单位中的预测中位生存时间。这是从时间 0 依赖于常量协变量的预测。当未在 {cmd:predict} 中指定选项时，将为所有模型计算预测的中位生存时间。

{phang}
{opt median lntime} 计算 {opt median time} 所产生值的自然对数。

{phang}
{opt mean time} 计算分析时间单位中的预测均值生存时间。这是从时间 0 依赖于常量协变量的预测。此选项在冈珀兹回归模型中不可用，仅在指定 {opt alpha1} 的情况下适用于脆弱性模型，此时您获得的是关于脆弱性效应为 1 的均值生存时间的估计。

{phang}
{opt mean lntime} 预测 {opt time} 的自然对数的均值。此选项在冈珀兹回归模型中不可用，仅在指定 {opt alpha1} 的情况下适用于脆弱性模型，此时您获得的是关于脆弱性效应为 1 的均值对数生存时间的估计。

{phang}
{opt hazard} 计算预测风险。

{phang}
{opt hr} 计算风险比。仅对具有比例风险参数化的模型有效。

{phang}
{opt xb} 计算拟合模型的线性预测。也就是说，您通过估计一组参数 b0、b1、b2、...、bk 来拟合模型，线性预测为 y = xb。

{pmore}
在计算中使用的 x 从当前内存中的数据中获得，并且不必与用于估计 b 的自变量数据相对应。

{phang}
{opt stdp} 计算预测的标准误，即 y 的标准误。

{phang}
{opt surv} 计算每个观察值的预测生存概率 S(t|t0)，其中 t_0 为 {cmd:_t0}，是每条记录变得面临风险的分析时间。对于多条记录的数据，请参见下面的 {opt csurv} 选项。

{phang}
{opt csurv} 通过计算条件生存值 S(t|t0)（见上面的 {opt surv} 选项）并将其相乘，来计算多条记录数据中每个主题的预测 S(t|最早的 t0)。

{pmore}
从 {cmd:surv} 获得的结果与从 {cmd:csurv} 获得的结果仅在您对于该主题有多条记录时会不同。

{pmore}
在存在缺失或延迟条目的情况下，从 {cmd:csurv} 获得的估计对于有缺失和没有缺失而拥有相同协变量值的主题之间可能会不同，因为假设在缺失期间的生存概率为 1。因此，所预测的条件累积生存函数不是协变量值恒定情况下，关于时间 {cmd:_t} 的平滑函数。使用 {cmd:stcurve, survival} 可以获取累积生存函数 S(t|x) 的平滑估计。

{phang}
{opt csnell} 计算Cox-Snell广义残差。对于每个主题的多条记录数据，默认情况下仅计算每个主题一个值，并将其放置在该主题的最后一条记录上。

{pmore}
添加 {opt partial} 选项将生成部分 Cox-Snell 残差，针对每条记录；见下面的 {helpb streg_postestimation##partial:partial}。部分 Cox-Snell 残差是对某一主题总体 Cox-Snell 残差的附加贡献。在单条记录每个主题的数据中，部分 Cox-Snell 残差就是 Cox-Snell 残差。

{phang}
{opt mgale} 计算马丁盖尔类残差。对于多条记录数据，默认情况下仅计算每个主题一个值，并将其放置在该主题的最后一条记录上。

{pmore} 添加 {opt partial} 选项将生成部分马丁盖尔残差，针对每条记录；见下面的 {helpb streg_postestimation##partial:partial}。部分马丁盖尔残差是对某一主题总体马丁盖尔残差的附加贡献。在单条记录数据中，部分马丁盖尔残差就是马丁盖尔残差。

{phang}
{opt deviance} 计算偏差残差。偏差残差是经过变换后的马丁盖尔残差，使其在零周围更具对称性。对于多条记录数据，默认情况下仅计算每个主题一个值，并将其放置在该主题的最后一条记录上。

{pmore}
添加 {opt partial} 选项将生成部分偏差残差，针对每条记录；见下面的 {helpb streg_postestimation##partial:partial}。部分偏差残差是经过变换的部分马丁盖尔残差。在单条记录数据中，部分偏差残差就是偏差残差。

{phang}
{opt oos} 使得 {opt csurv}、{opt csnell}、{opt mgale} 和 {opt deviance} 在内部和外部样本中都可用。 {opt oos} 还规定求和和其他累积在给定的 {cmd:if} 和 {cmd:in} 定义的样本上进行。默认情况下，求和是针对估计样本进行的，{cmd:if} 和 {cmd:in} 仅决定在计算完成后要填的 {newvar} 的值。

{phang}
{opt nooffset} 仅当您在 {opt streg} 中指定了 {opth offset(varname)} 时相关。它修改 {opt predict} 进行的计算，使其忽略偏移变量；线性预测被视为 xb 而不是 xb + offset。

{phang}
{opt alpha1} 在拟合脆弱性模型后使用时，指定在脆弱性值等于 1 的条件下预测 {it:statistic}。这是共享脆弱性模型的默认值。

{phang}
{opt unconditional} 和 {opt marginal} 在拟合脆弱性模型后使用时，指定在脆弱性上无条件预测 {it:statistic}。也就是说，预测在脆弱性分布上进行平均。这是未共享脆弱性模型的默认值。

{phang}
{marker partial}{...}
{opt partial} 仅在多条记录数据中相关，并且与 {opt csnell}、{opt mgale} 和 {opt deviance} 有效。指定 {opt partial} 将生成这些统计量的“部分”版本，其中每条记录计算一个值，而不是每个主题计算一个值。主题由 {helpb stset##id():id()} 的选项定义。

{pmore}
如果希望对个别记录进行诊断而不是对单个主题进行诊断，请指定 {opt partial}。例如，部分偏差可以用来诊断单条记录的拟合特征，而不是某个主题的一组记录的特征。

{phang}
{opt scores} 计算方程级得分变量。创建的得分变量的数量取决于所选分布。

{pmore}
第一个新变量将始终包含相对于拟合模型的线性预测（回归方程）的对数似然的偏导数。

{pmore}
后续的新变量将包含相对于附加参数的对数似然的偏导数。例如，在广义伽玛模型中，第二个新变量将包含相对于线性预测（sigma 方程）的对数似然的偏导数，第三个新变量将包含相对于线性预测（kappa 方程）的对数似然的偏导数。


包含 帮助 syntax_margins

{synoptset 17}{...}
{synopthdr :statistic}
{synoptline}
{synopt :{opt med:ian} {opt time}}中位生存时间；默认值{p_end}
{synopt :{opt med:ian} {opt lnt:ime}}中位 ln(生存时间){p_end}
{synopt :{opt mean time}}均值生存时间{p_end}
{synopt :{opt mean} {opt lnt:ime}}均值 ln(生存时间){p_end}
{synopt :{opt hr}}风险比，也称为相对风险{p_end}
{synopt :{opt xb}}线性预测 xb{p_end}
{synopt :{opt ha:zard}}不允许与 {cmd:margins} 一起使用{p_end}
{synopt :{opt stdp}}不允许与 {cmd:margins} 一起使用{p_end}
{synopt :{opt s:urv}}不允许与 {cmd:margins} 一起使用{p_end}
{synopt :{opt csu:rv}}不允许与 {cmd:margins} 一起使用{p_end}
{synopt :{opt csn:ell}}不允许与 {cmd:margins} 一起使用{p_end}
{synopt :{opt mg:ale}}不允许与 {cmd:margins} 一起使用{p_end}
{synopt :{opt dev:iance}}不允许与 {cmd:margins} 一起使用{p_end}
{synoptline}
{p2colreset}{...}

包含 帮助 notes_margins


包含 帮助 menu_margins


{marker des_margins}{...}
{title:边际的描述}

{pstd}
{cmd:margins} 估计中位和均值生存时间、风险比和线性预测的响应边际。


{marker examples}{...}
{title:示例}

    {hline}
{pstd}设置{p_end}
{phang2}{cmd:. webuse kva}

{pstd}声明数据为生存时间数据{p_end}
{phang2}{cmd:. stset failtime}

{pstd}拟合威布尔生存模型{p_end}
{phang2}{cmd:. streg load bearings, d(weibull)}

{pstd}预测中位生存时间{p_end}
{phang2}{cmd:. predict time, time}

{pstd}预测对数中位生存时间{p_end}
{phang2}{cmd:. predict lntime, lntime}

    {hline}
{pstd}设置{p_end}
{phang2}{cmd:. webuse cancer, clear}

{pstd}将 {cmd:drug} 值映射为 0（安慰剂）和 1（非安慰剂）{p_end}
{phang2}{cmd:. replace drug = drug == 2 | drug == 3}

{pstd}声明数据为生存时间数据{p_end}
{phang2}{cmd:. stset studytime, failure(died)}

{pstd}拟合指数生存模型{p_end}
{phang2}{cmd:. streg age drug, d(exp)}

{pstd}预测Cox-Snell残差{p_end}
{phang2}{cmd:. predict double cs, csnell}

{pstd}{cmd:stset} 数据再用 {cmd:cs} 作为失败时间变量{p_end}
{phang2}{cmd:. stset cs, failure(died)}

{pstd}创建 {cmd:km}，包含Kaplan-Meier生存估计{p_end}
{phang2}{cmd:. sts generate km = s}

{pstd}创建 {cmd:H}，累积风险{p_end}
{phang2}{cmd:. generate double H = -ln(km)}

{pstd}绘制 {cmd:H} 对 {cmd:cs} 的图，指定 {cmd:cs} 两次以获得参考线{p_end}
{phang2}{cmd:. line H cs cs, sort}

{pstd}拟合对数正态生存模型{p_end}
{phang2}{cmd:. streg age drug, d(lnormal)}

{pstd}预测偏差残差{p_end}
{phang2}{cmd:. predict dev, deviance}

{pstd}绘制偏差残差{p_end}
{phang2}{cmd:. scatter dev studytime, yline(0) m(o)}{p_end}
    {hline}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <streg_postestimation.sthlp>}