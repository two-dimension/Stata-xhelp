{smcl}
{* *! version 1.2.2  20aug2018}{...}
{viewerdialog "stpower cox" "dialog stpower_cox"}{...}
{vieweralsosee "以前文档" "help prdocumented_zh"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[ST] stpower" "help stpower_zh"}{...}
{vieweralsosee "[ST] stpower exponential" "help stpower_exponential_zh"}{...}
{vieweralsosee "[ST] stpower logrank" "help stpower_logrank_zh"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[ST] 术语表" "help st_glossary_zh"}{...}
{vieweralsosee "[ST] stcox" "help stcox_zh"}{...}
{vieweralsosee "[ST] sts test" "help sts_test_zh"}{...}
{vieweralsosee "[R] test" "help test_zh"}{...}
{viewerjumpto "语法" "stpower_cox_zh##syntax"}{...}
{viewerjumpto "菜单" "stpower_cox_zh##menu"}{...}
{viewerjumpto "描述" "stpower_cox_zh##description"}{...}
{viewerjumpto "选项" "stpower_cox_zh##options"}{...}
{viewerjumpto "stpower cox 简介" "stpower_cox_zh##remarks1"}{...}
{viewerjumpto "stpower cox 使用的方法说明" "stpower_cox_zh##remarks2"}{...}
{viewerjumpto "示例" "stpower_cox_zh##examples"}{...}
{viewerjumpto "存储结果" "stpower_cox_zh##results"}{...}
{viewerjumpto "参考文献" "stpower_cox_zh##references"}
{help stpower_cox:English Version}
{hline}{...}
{pstd}
{cmd:stpower} 继续有效，但自 Stata 14 起不再是 Stata 的官方部分。这是原始帮助文件，我们将不再更新，因此某些链接可能不再有效。

{pstd}
请参见 {manhelp power PSS-2} 以获取对 {cmd:stpower} 的推荐替代方案，特别是请参见 {manhelp power_cox PSS-2:power cox}、{manhelp power_logrank PSS-2:power logrank} 和 {manhelp power_exponential PSS-2:power exponential}。


{title:标题}

{p2colset 5 25 27 2}{...}
{p2col :{hi:[ST] stpower cox} {hline 2}}Cox 比例风险模型的样本大小、效能和效应量{p_end}
{p2colreset}{...}


{marker syntax}{...}
{title:语法}

{phang}
样本大小确定

{p 8 16 2}
{opt stpow:er} {opt cox} [{it:coef}] [{cmd:,} {it:options}]


{phang}
效能确定

{p 8 16 2}
{opt stpow:er} {opt cox } [{it:coef}]{cmd:,} 
{opth n(numlist)} [{it:options}] 


{phang}
效应量确定

{p 8 16 2}
{opt stpow:er} {opt cox}{cmd:,} 
{opth n(numlist)} {c -(}{opth p:ower(numlist)} | {opth b:eta(numlist)}{c )-}
       [{it:options}] 


{phang}
其中 {it:coef} 是在 Cox 比例风险模型中希望通过具有预定效能的测试检测的协变量的回归系数（效应量）。 {it:coef} 可以指定为一个数字或括号中包含的值列表（参见 {it:{help numlist_zh}}）。{p_end}


{synoptset 28 tabbed}{...}
{marker options_table}{...}
{synopthdr}
{synoptline}
{syntab :主要}
{p2coldent:* {opth a:lpha(numlist)}}显著性水平；默认值为
{cmd:alpha(0.05)}{p_end}
{p2coldent:* {opth p:ower(numlist)}}效能；默认值为 
{cmd:power(0.8)}{p_end}
{p2coldent:* {opth b:eta(numlist)}}第二类错误概率；
默认值为 {cmd:beta(0.2)}{p_end}
{p2coldent:* {opth n(numlist)}}样本大小；计算效能或
效应量所需{p_end}
{p2coldent:* {opth hrat:io(numlist)}}与协变量增加一个单位相关的危险比（效应量）；默认值为 
{cmd:hratio(0.5)}{p_end}
{synopt: {opt onesid:ed}}单侧测试；默认为双侧{p_end}
{synopt: {opt sd(#)}}协变量的标准差；
默认为 {cmd:sd(0.5)}{p_end}
{synopt: {opt r2(#)}}与其他协变量的平方多重相关系数；默认为 {cmd:r2(0)}{p_end}
{synopt: {opt failp:rob(#)}}一个事件（失败）的整体概率；默认为 {cmd:failprob(1)}，即没有审查{p_end}
{synopt: {opt wdp:rob(#)}}预计会退出研究的受试者的比例；默认为 {cmd:wdprob(0)}{p_end}
{synopt: {opt par:allel}}将带星号的选项中的数字列表视为并行（不列举所有可能的值组合），当每个选项指定多个值时{p_end}

{syntab: 报告}
{synopt: {opt hr}}报告危险比，而不是系数{p_end}
{synopt: {opt tab:le}}以表格形式显示结果，使用默认列{p_end}
{synopt: {opth col:umns(stpower_cox##colnames:colnames)}}以指定的 {it: colnames} 列在表格中显示结果{p_end}
{synopt: {opt noti:tle}}抑制表格标题{p_end}
{synopt: {opt noleg:end}}抑制表格图例{p_end}
{synopt: {opt colw:idth(# [# ...])}}列宽；默认为 
{cmd:colwidth(9)}{p_end}
{synopt: {opt sep:arator(#)}}每 {it:#} 行绘制一条水平分隔线；默认为 {cmd:separator(0)}，即没有分隔线{p_end}
{synopt: {cmdab:sav:ing(}{it:{help filename_zh}}[{cmd:,} {cmd:replace}]{cmd:)}}将表格数据保存到 {it:filename}；使用 {opt replace} 覆盖现有的 {it:filename}{p_end}

{synopt: {opt nohead:er}}抑制表格标题；很少使用{p_end}
{synopt: {opt cont:inue}}在表输出中绘制续行边框；
很少使用{p_end}
{synoptline}
{p2colreset}{...}
{p 4 6 2}
* 带星号的选项可以指定为一个数字或值列表（参见 {it:{help numlist_zh}}）。
{p_end}
{p 4 6 2}
{opt noheader} 和 {opt continue} 不在对话框中显示。
{p_end}

{synoptset 28}{...}
{marker colnames}{...}
{synopthdr :colnames}
{synoptline}
{synopt: {opt a:lpha}}显著性水平{p_end}
{synopt: {opt p:ower}}效能{p_end}
{synopt: {opt b:eta}}第二类错误概率{p_end}
{synopt: {opt n}}总受试者数量{p_end}
{synopt: {opt e}}事件总数（失败数）{p_end}
{synopt: {opt hr}}危险比{p_end}
{synopt: {opt c:oef}}系数（对数危险比）{p_end}
{synopt: {opt sd}}标准差{p_end}
{synopt: {opt r2}}平方多重相关系数{p_end}
{synopt: {opt pr}}一个事件（失败）的整体概率{p_end}
{synopt: {opt w}}退出的比例{p_end}
{synoptline}
{p2colreset}{...}
{p 4 6 2}
默认情况下，显示以下 {it:colnames}：{p_end}
{phang2}
{cmd:power}、{cmd:n}、{cmd:e}、{cmd:sd} 和 {cmd:alpha} 始终
显示；{p_end}
{phang2}
{cmd:coef} 会显示，除非指定了 {cmd:hr} 选项，在这种情况下显示 {cmd:hr}；{p_end}
{phang2}
如果指定了事件的整体概率 ({cmd:failprob()})，则显示 {cmd:pr}；{p_end}
{phang2}
如果指定了平方多重相关系数 ({cmd:r2()})，则显示 {cmd:r2}；以及{p_end}
{phang2}
如果指定了退出比例 ({cmd:wdprob()})，则显示 {cmd:w}。{p_end}


{marker menu}{...}
{title:菜单}

{phang}
{bf:统计 > 生存分析 > 效能与样本大小}


{marker description}{...}
{title:描述}

{pstd}
{cmd:stpower} {cmd:cox} 估算使用 Cox 比例风险（PH）模型的生存分析所需的样本大小、效能和效应量。它还报告在研究中需要观察的事件（失败）的数量。
样本大小或效能的估算是针对影响一个协变量 {it:x1}（二进制或连续变量）与其他预测变量 {it:x2}、...,{it:xp} 在 PH 模型中调整后的失败时间的测试。该命令提供了考虑协变量与其他预测变量之间可能存在的相关性，以及受试者退出研究的选项。可选地，给定样本大小和效能，最小效应量（在回归系数 {it:beta_1} 或危险比的最小可检测差异）也可以得到。

{pstd}
您可以使用 {cmd:stpower} {cmd:cox} 来

{phang2}
o 计算当您知道以危险比或系数（对数危险比）表示的效能和效应量时所需的事件数量和样本大小，

{phang2}
o 计算当您知道样本大小（事件数量）和以危险比或系数（对数危险比）表示的效应量时的效能，以及

{phang2}
o 计算效应量并将其显示为系数（对数危险比）或危险比，当您知道样本大小（事件数量）和效能时。

{pstd}
{cmd:stpower cox} 的输入参数 {it:coef} 是在 Cox PH 模型中希望通过具有预定效能的测试检测的协变量 {it:x1} 的回归系数 {it:beta_1a} 的值。


{marker options}{...}
{title:选项}

{dlgtab:主要}

{phang}
{opth alpha(numlist)} 设置测试的显著性水平。默认值为 
{cmd:alpha(0.05)}。

{phang}
{opth power(numlist)} 设置测试的效能。默认值为
{cmd:power(0.8)}。如果 {cmd:beta()} 被指定，则此值设置为 
{bind:1-{cmd:beta()}}。只能指定 {cmd:power()} 或 {cmd:beta()} 中的一个。

{phang}
{opth beta(numlist)} 设置测试的第二类错误概率。默认值为 {cmd:beta(0.2)}。如果 {cmd:power()} 被指定，则此值设置为 {bind:1-{cmd:power()}}。只能指定 {cmd:beta()} 或 {cmd:power()} 中的一个。

{phang}
{opth n(numlist)} 指定用来计算测试效能或最小效应量（即最小可检测的回归系数 {it:beta_1} 或危险比）的受试者数量，如果也指定了 {cmd:power()} 或 {cmd:beta()}。

{phang}
{opth hratio(numlist)} 指定与协变量 {it:x1} 增加一个单位相关的危险比，当其他协变量保持不变时。默认值为 {cmd:hratio(0.5)}。该值定义了在 Cox PH 模型中通过指定 {cmd:power()} 测试所希望检测的协变量对响应的最小临床显著性效应。如果指定了 {it:coef}，则不允许使用 {cmd:hratio()}，危险比将计算为 exp({it:coef})。

{phang}
{opt onesided} 指示单侧测试。默认为双侧。

{phang}
{opt sd(#)} 指定协变量 {it:x1} 的标准差。默认值为 {cmd:sd(0.5)}。

{phang}
{opt r2(#)} 指定在 Cox PH 模型中协变量 {it:x1} 与其他预测变量 {it:x2}、...,{it:xp} 之间的平方多重相关系数。默认值为 {cmd:r2(0)}，意味着与其他协变量独立。此选项定义了 {it:x1} 与 {it:x2}、...,{it:xp} 的回归所解释的方差比例（参见 {manhelp regress R}）。

{phang}
{opt failprob(#)} 指定研究中受试者失败（或经历感兴趣的事件，或不被审查）的整体概率。默认值为 {cmd:failprob(1)}，意味着所有受试者在研究中经历事件（或失败）；即，没有受试者的审查发生。

{phang}
{opt wdprob(#)} 指定预计会退出研究的受试者比例。默认值为 {cmd:wdprob(0)}。{cmd:wdprob()} 不能与 {cmd:n()} 组合使用。

{phang}
{cmd:parallel} 按顺序（并行）报告对允许 {it:{help numlist_zh}} 的选项提供的数字列表的结果。默认情况下，结果是根据以下嵌套顺序在所有组合的数字列表上计算的： {cmd:alpha()}、{cmd:hratio()} 或系数列表 {it:coef}、{cmd:power()} 或 {cmd:beta()} 和 {cmd:n()}。此选项要求多个值选项中的每个都包含相同数量的元素。

{dlgtab:报告}

{phang}
{opt hr} 指定显示危险比而不是回归系数。此选项影响结果的显示方式，而不是它们的估计方式。

{phang}
{cmd:table} 以表格格式显示结果，如果任何数字列表包含多个元素则隐含。如果您是逐个案例生成结果并希望通过使用 {cmd:forvalues} 循环构建自己的自定义表格，这个选项非常有用。

{phang}
{opth "columns(stpower_cox##colnames:colnames)"} 指定在具有指定 {it:colnames} 列的表格中显示结果。输出表中的列顺序与在 {cmd:columns()} 中指定的 {it:colnames} 的顺序相同。{cmd:columns()} 中的列名必须用空格分隔。

{phang}
{cmd:notitle} 防止显示表的标题。

{phang}
{cmd:nolegend} 防止显示表的图例并标记列标题。

{phang}
{opt colwidth(# [# ...])} 指定列宽。默认值为所有列的 9。指定值的数量不得超过表中的列数。可以对任何列指定缺失值 ({cmd:.}) 以指示默认宽度（9）。如果指定的宽度少于表中的列数，则使用最后指定的宽度来处理剩余的列。

{phang}
{opt separator(#)} 指定在表行之间绘制分隔线的频率。默认值为 {cmd:separator(0)}，意味着不显示分隔线。

{phang}
{cmd:saving(}{it:{help filename_zh}}[{cmd:,} {cmd:replace}]{cmd:)} 创建一个包含表值的 Stata 数据文件（{cmd:.dta} 文件），变量名称与所显示的 {help stpower_cox##colnames:{it:colnames}} 相关。{cmd:replace} 指定如果存在则覆盖 {it:filename}。{cmd:saving()} 仅适合与表格输出一起使用。

{pstd}以下选项适用于 {cmd:stpower cox} 但在对话框中未显示：

{phang}
{cmd:noheader} 防止显示表头。当命令反复发出时，例如在循环内，此选项非常有用。{cmd:noheader} 隐含 {cmd:notitle}。

{phang}
{cmd:continue} 在表底部绘制一个续行。这在命令在循环中反复发出时非常有用。


{marker remarks1}{...}
{title:stpower cox 简介}

{pstd}
参数 {it:coef} 或选项 {cmd:hratio()} 可用于指定希望通过测试检测的效应量。如果省略参数 {it:coef}，则使用在 {cmd:hratio()} 选项中指定的危险比的对数值或默认危险比值 0.5 的对数值来计算 {it:beta_1a}。如果指定了参数 {it:coef}，则不允许使用 {cmd:hratio()}，而是将危险比计算为 exp({it:coef})。

{pstd}
如果需要效能确定，则必须指定样本大小 {cmd:n()}。否则，将假定是样本大小确定，且 {cmd:power(0.8)}（或者等价于 {cmd:beta(0.2)}）。效能的默认设置或者替代地，第二类错误（在替代假设为真时未能拒绝虚无假设）的概率，可以通过使用 {cmd:power()} 或 {cmd:beta()} 分别进行更改。如果同时指定了 {cmd:n()} 和 {cmd:power()}（或 {cmd:beta()}），则可以通过请求的 {cmd:power()} 对于固定样本大小 {cmd:n()} 计算出回归系数 {it:beta_1a}（或指定了 {cmd:hr} 选项的情况下的危险比）。

{pstd}
测试的第二类错误的默认概率为 0.05，但可以通过使用 {cmd:alpha()} 选项进行更改。可以请求单侧测试，使用 {cmd:onesided}。默认情况下，假定没有审查、没有 {it:x1} 与其他预测变量之间的相关性，并且没有受试者退出研究。可以通过分别指定 {cmd:failprob()}、{cmd:r2()} 和 {cmd:wdprob()} 进行更改。

{pstd}
可选地，可以使用 {cmd:table} 或 {cmd:columns()} 以表格形式显示结果，如下面的 {help stpower_cox##examples:示例} 所示，以及 {help stpower_zh:[ST] stpower}。有关如何绘制效能曲线的示例，请参见下面的 {help stpower_cox##examples:示例}，{help stpower_zh:[ST] stpower} 以及 {bf:[ST] stpower logrank} 中的示例 7。


{marker remarks2}{...}
{title:stpower cox 使用的方法说明}

{pstd}
{cmd:stpower cox} 实现了 
{help stpower cox##HL2000:Hsieh 和 Lavori（2000）} 的样本大小和效能计算方法，该方法简化为二元协变量的 
{help stpower cox##S1983:Schoenfeld（1983）} 方法。样本大小与研究中观察到的事件数量的测试效能相关；即，对于固定事件数，测试的效能与样本大小无关。因此，样本大小被估计为事件数量除以研究中受试者失败的整体概率。有关计算中使用的公式，请参见 
{it:方法和公式} 中的 {bf:[ST] stpower cox}。


{marker examples}{...}
{title:示例}

{pstd}
计算为检测二进制协变量感兴趣的危险比降低 0.5 所需的失败次数，使用一侧 5% 的 Wald 测试，效能为 80%{p_end}
{phang2} 
{cmd:. stpower cox, onesided} 
{p_end}

{pstd}
计算为检测协变量的重要性下对数危险比 -1 所需的样本大小，该协变量的标准差为 0.3，假设仅有 15% 的受试者在研究结束时存活{p_end}
{phang2}
{cmd:. stpower cox -1, sd(0.3) failprob(0.85)}
{p_end}

{pstd}
计算上述测试在样本大小为 150 的情况下的效能，假设感兴趣的协变量与其他协变量的相关性 R2 = 0.3{p_end}
{phang2}
{cmd:. stpower cox -1, n(150) sd(0.3) failprob(0.85) r2(0.3)}
{p_end}

{pstd}
确定在样本大小为 150 时，前一个示例中变量的系数（对数危险比）的最小可检测值，效能为 90%{p_end}
{phang2}
{cmd:. stpower cox, n(150) power(0.9) sd(0.3) failprob(0.85) r2(0.3)}
{p_end}

{pstd}
获得一系列危险比和效能的样本大小{p_end}
{phang2} 
{cmd:. stpower cox, hratio(0.1(0.2)0.9) power(0.8 0.9) hr} 
{p_end}


{marker results}{...}
{title:存储结果}

{pstd}
{cmd:stpower cox} 将以下内容存储在 {cmd:r()} 中：

{synoptset 20 tabbed}{...}
{p2col 5 20 24 2: 标量}{p_end}
{synopt:{cmd:r(N)}}总受试者数量{p_end}
{synopt:{cmd:r(E)}}事件总数（失败数）{p_end}
{synopt:{cmd:r(power)}}测试效能{p_end}
{synopt:{cmd:r(alpha)}}测试显著性水平{p_end}
{synopt:{cmd:r(hratio)}}危险比{p_end}
{synopt:{cmd:r(onesided)}}{cmd:1} 如果是单侧测试，{cmd:0} 否则{p_end}
{synopt:{cmd:r(sd)}}标准差{p_end}
{synopt:{cmd:r(Pr_E)}}事件（失败）的概率（如果指定）{p_end}
{synopt:{cmd:r(r2)}}平方多重相关（如果指定）{p_end}
{synopt:{cmd:r(w)}}退出的比例（如果指定）{p_end}

{p2col 5 20 24 2: 宏}{p_end}
{synopt:{cmd:r(metric)}}显示的度量 ({cmd:log-hazard} 或 {cmd:hazard})
{p_end}

{p2colreset}{...}


{marker references}{...}
{title:参考文献}

{marker HL2000}{...}
{phang}
Hsieh, F. Y., 和 P. W. Lavori. 2000.
带有非二元协变量的 Cox 比例风险回归模型的样本大小计算。
{it: 控制临床试验} 21: 552-560.{p_end}

{marker S1983}{...}
{phang}
Schoenfeld, D. A. 1983.  
比例风险回归模型的样本大小公式。  
{it:生物统计} 39: 499-503.{p_end}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <stpower_cox.sthlp>}