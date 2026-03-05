{smcl}
{* *! version 1.2.2  20aug2018}{...}
{viewerdialog "stpower logrank" "dialog stpower_logrank"}{...}
{vieweralsosee "以前的文档" "help prdocumented_zh"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[ST] stpower" "help stpower_zh"}{...}
{vieweralsosee "[ST] stpower cox" "help stpower_cox_zh"}{...}
{vieweralsosee "[ST] stpower exponential" "help stpower_exponential_zh"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[ST] 术语表" "help st_glossary_zh"}{...}
{vieweralsosee "[ST] stcox" "help stcox_zh"}{...}
{vieweralsosee "[ST] sts test" "help sts_test_zh"}{...}
{vieweralsosee "[R] test" "help test_zh"}{...}
{viewerjumpto "语法" "stpower_logrank_zh##syntax"}{...}
{viewerjumpto "菜单" "stpower_logrank_zh##menu"}{...}
{viewerjumpto "描述" "stpower_logrank_zh##description"}{...}
{viewerjumpto "选项" "stpower_logrank_zh##options"}{...}
{viewerjumpto "stpower logrank 的简短介绍" "stpower_logrank_zh##remarks1"}{...}
{viewerjumpto "stpower logrank 使用的方法说明" "stpower_logrank_zh##remarks2"}{...}
{viewerjumpto "示例" "stpower_logrank_zh##examples"}{...}
{viewerjumpto "存储结果" "stpower_logrank_zh##results"}{...}
{viewerjumpto "参考文献" "stpower_logrank_zh##references"}
{help stpower_logrank:English Version}
{hline}{...}
{pstd}
{cmd:stpower} 继续可以使用，但从 Stata 14 开始，它不再是 Stata 的正式部分。这是原始帮助文件，我们将不再进行更新，因此某些链接可能不再有效。

{pstd}
请查看 {manhelp power PSS-2} 以获得 {cmd:stpower} 的推荐替代方案，特别是请查看 {manhelp power_cox PSS-2:power cox}、{manhelp power_logrank PSS-2:power logrank} 和 {manhelp power_exponential PSS-2:power exponential}。


{title:标题}

{p2colset 5 29 31 2}{...}
{p2col :{hi:[ST] stpower logrank} {hline 2}}样本量、功效和 log-rank 检验的效应量{p_end}
{p2colreset}{...}


{marker syntax}{...}
{title:语法}

{phang}
样本量确定

{p 8 43 2}
{opt stpow:er} {opt log:rank} [{it:surv1} [{it:surv2}]] [{cmd:,} {it:options}]


{phang}
功效确定

{p 8 16 2}
{opt stpow:er} {opt log:rank} [{it:surv1} [{it:surv2}]]{cmd:,} 
{opth n(numlist)} [{it:options}] 


{phang}
效应量确定

{p 8 34 2}
{opt stpow:er} {opt log:rank} [{it:surv1}]{cmd:,} 
{opth n(numlist)} {c -(}{opth p:ower(numlist)} | {opth b:eta(numlist)}{c )-}
     [{it:options}] 


{phang}
其中

{phang2}
{it:surv1} 是研究结束时对照组的生存概率 t*；{p_end}
{phang2}
{it:surv2} 是实验组在研究结束时的生存概率 t*。{p_end}
{phang2}
{it:surv1} 和 {it:surv2} 可以作为一个数字或一个值列表进行指定（见 {it:{help numlist_zh}}），并用括号括起来。{p_end}


{synoptset 28 tabbed}{...}
{marker options_table}{...}
{synopthdr}
{synoptline}
{syntab :主}
{p2coldent:* {opth a:lpha(numlist)}}显著性水平；默认值为 {cmd:alpha(0.05)}{p_end}
{p2coldent:* {opth p:ower(numlist)}}功效；默认值为 {cmd:power(0.8)}{p_end}
{p2coldent:* {opth b:eta(numlist)}}第二类错误的概率；默认值为 {cmd:beta(0.2)}{p_end}
{p2coldent:* {opth n(numlist)}}样本量；计算功效或效应量所必需{p_end}
{p2coldent:* {opth hrat:io(numlist)}}实验组与对照组的风险比（效应量）；默认值为 {cmd:hratio(0.5)}{p_end}
{synopt:{opt onesid:ed}}单侧检验；默认值为双侧{p_end}
{p2coldent:* {opth p1(numlist)}}对照组中受试者的比例；默认值为 {cmd:p1(0.5)}，即组大小相等{p_end}
{p2coldent:* {opth nrat:io(numlist)}}样本量比，N2/N1；默认值为 {cmd:nratio(1)}，即组大小相等{p_end}
{synopt: {opt sch:oenfeld}}在计算中使用基于对数风险比的公式；默认值使用基于风险比的公式{p_end}
{synopt: {opt par:allel}}在多个值指定时，将带星号的选项中的数字列表视为平行（不枚举所有可能的值组合）{p_end}

{syntab :删失}
{synopt: {opt simp:son(# # # | matname)}}在三个特定时间点对照组的生存概率，以计算事件（失败）的概率，使用在均匀积累情况下的 Simpson 法{p_end}
{synopt: {cmd:st1(}{var:_s} {var:_t}){cmd:}} 变量 {it:varname_s} 包含对照组的生存概率，变量 {it:varname_t} 包含相应的时间点，使用数值积分计算事件（失败）的概率，假设均匀积累{p_end}
{synopt: {opt wdp:rob(#)}}预计将退出研究的受试者的比例；默认值为 {cmd:wdprob(0)}{p_end}

{syntab :报告}
{synopt: {cmd:table}}以表格格式显示结果，如果任何数字列表包含多个元素，则隐含如此。该选项在一次生成一个案例的结果时非常有用，并希望使用 {cmd:forvalues} 循环构建自己的自定义表格。

{phang}
{opth "columns(stpower_logrank##colnames:colnames)"}以指定的 {it:colnames} 列在表中显示结果。输出表中列的顺序与 {cmd:columns()} 中指定的 {it:colnames} 的顺序相同。{cmd:columns()} 中的列名必须以空格分隔。

{phang}
{cmd:notitle}阻止表格标题显示。

{phang}
{cmd:nolegend}阻止表格图例显示，列标题不被标记。

{phang}
{opt colwidth(# [# ...])}指定列宽。所有列的默认值为 9。指定的值的数量不得超过表中的列数。任何列可以指定缺失值（{cmd:.}），以指示默认宽度 (9)。如果指定的宽度少于表中的列数，则使用最后指定的宽度作为其余列的宽度。

{phang}
{opt separator(#)}指定在表的行之间绘制分隔线的频率。默认值是 {cmd:separator(0)}，意味着不显示分隔线。

{phang}
{cmd:saving(}{it:{help filename_zh}}[{cmd:,} {cmd:replace}]{cmd:)} 创建一个 Stata 数据文件（{cmd:.dta} 文件），包含表格值，其变量名称对应于显示的 {it:{help stpower_logrank##colnames:colnames}}。{cmd:replace} 指定如果 {it:filename} 存在，则覆盖该文件。{cmd:saving()} 仅适用于表格输出。

{pstd}
以下选项与 {cmd:stpower logrank} 可用，但在对话框中未显示：

{phang}
{cmd:noheader} 阻止表头显示。当命令反复发出时，例如在循环中，此选项非常有用。{cmd:noheader} 暗示 {cmd:notitle}。

{phang}
{cmd:continue} 在表底部绘制续行边框。这个选项在命令在循环中反复发出时非常有用。


{marker remarks1}{...}
{title:stpower logrank 的简短介绍}

{pstd}
考虑以下两种类型的生存研究。{it:type} {it:I} {it:study} 是指所有受试者在研究结束时失败（未删失数据）的研究。{it:type} {it:II} {it:study} 是指在固定时间段结束时并不是所有受试者在该时间段结束时经历事件（失败）（删失数据）的研究。

{pstd}
默认情况下，为了获得未删失数据（I 型研究）所需样本量的估计，{cmd:stpower} {cmd:logrank} 使用 {cmd:power(0.8)}（或等效的 {cmd:beta(0.2)}）和 {cmd:alpha(0.05)} 作为功效（或第二类错误的概率）和第一类错误概率（显著性水平）的测试。默认效应量是两种治疗之间的差异，对应于实验组与对照组的风险比值 0.5。可以通过使用选项 {cmd:hratio()} 进行更改。

{pstd}
在行政删失（II 型研究）下，除了上述内容外，计算所需还需要两组的生存概率估计。对照组的生存概率 s1 必须作为参数 {it:surv1} 指定。实验组的生存概率 s2 可以直接作为参数 {it:surv2} 提供，也可以使用 {it:surv1} 和在 {cmd:hratio()} 中指定的风险比计算。如果同时指定参数 {it:surv1} 和 {it:surv2}，则根据这些生存概率的值计算风险比，选项 {cmd:hratio()} 不允许。在存在入组期的情况下，可以使用选项 {cmd:simpson()} 或 {cmd:st1()} 调整均匀入组的估计。有关详细信息，请参见 {bf:[ST] stpower logrank} 中的 {it:包括关于受试者入组的信息} 部分。

{pstd}
假设进行双侧检验，在两组之间平等分配受试者，并且研究中无受试者退出。使用选项 {cmd:onesided}、{cmd:p1()} 或 {cmd:nratio()} 和 {cmd:wdprob()} 请求单侧检验、不同分配和指定撤回比例。

{pstd}
如果需要功效确定，必须指定选项 {cmd:n()}。如果同时指定 {cmd:n()} 和 {cmd:power()}（或 {cmd:beta()}），则计算 log-rank 检验可以在所请求的功效和固定样本量下检测的最小效应量（最小风险比或对数风险比） 。

{pstd}
可以选择使用 {cmd:table} 或 {cmd:columns()} 显示结果，如下所示 {it:{help stpower_logrank##examples:示例}} 和 {help stpower_zh:[ST] stpower}。有关如何绘制功效曲线的示例，请参见以下内容 {it:{help stpower_logrank##examples:示例}}、{help stpower_zh:[ST] stpower} 和 {bf:[ST] stpower logrank} 中的示例 7。


{marker remarks2}{...}
{title:stpower logrank 使用的方法说明}

{pstd}
{cmd:stpower} {cmd:logrank} 支持两种方法，即 
{help stpower logrank##F1982:Freedman (1982)} 和
{help stpower logrank##S1981:Schoenfeld (1981)}，
用于获取事件数量或功效的估计（另见 {help stpower logrank##MV1997:Marubini and Valsecchi [1997, 127, 134]} 和 {help stpower logrank##C2003:Collett [2003, 301, 306]}）。如果指定了选项 {cmd:schoenfeld} ，则使用后者。样本量的最终估计基于 {help stpower logrank##F1982:Freedman (1982)} 的事件概率的近似（默认），或者在均匀入组情况下基于 {help stpower logrank##S1983:Schoenfeld (1983)} （另见 {help stpower logrank##C2003:Collett 2003}） 如果指定了选项 {cmd:simpson()}。因此，对于固定事件数量，功效与样本量是独立的 ({help stpower logrank##F1982:Freedman 1982})。有关这些方法的公式，请参见 {bf:[ST] stpower logrank} 中的 {it:方法和公式}。

{pstd}
在出现删失的情况下，需要估计事件的概率以获取样本量的估计。默认情况下，根据 {help stpower logrank##F1982:Freedman (1982)} 的建议，使用研究结束时的两组生存概率的估计进行近似。请参见 {it:{help stpower_logrank##examples:示例}} 和 {it:删失情况下计算样本量} 在 {bf:[ST] stpower logrank} 中。

{pstd}
在整个期间 [0,R] 中均匀入组的情况下，可以通过指定 {cmd:simpson()} 或 {cmd:st1()} 考虑有关受试者随访的信息 f，如果可获得生存函数在 {bind:[f,T]} 期间的估计，其中研究的持续时间为 T = R + f ({help stpower logrank##S1983:Schoenfeld 1983}, {help stpower logrank##C2003:Collett 2003})。{cmd:simpson()} 只需要在时间点 f、f+R/2 和 T 处的生存函数的三个估计。如果有更多点，可以改为使用 {cmd:st1()}。有关详细信息，请参见 {bf:[ST] stpower logrank} 中的 {it:包括关于受试者入组的信息}。

{marker examples}{...}
{title:示例}

{pstd}
计算检测风险比为 0.5 所需的失败次数，使用 5% 双侧 log-rank 检验，功效为 80%{p_end}
{phang2}
{cmd:. stpower logrank}
{p_end}

{pstd}
与上述相同，但使用 Schoenfeld 方法{p_end}
{phang2}
{cmd:. stpower logrank, schoenfeld}
{p_end}

{pstd}
在存在删失的情况下，计算所需样本量，以检测生存从 50% 到 60% 的变化，使用 5% 单侧 log-rank 检验，功效为 80%{p_end}
{phang2}
{cmd:. stpower logrank 0.5 0.6, onesided}
{p_end}

{pstd}
与上述命令相同，但假设撤回概率为 10%{p_end}
{phang2}
{cmd:. stpower logrank 0.5 0.6, onesided wdprob(0.1)}
{p_end}

{pstd}
获取一系列风险比和两个样本量的功效{p_end}
{phang2} 
{cmd:. stpower logrank, hratio(0.1(0.2)0.9) n(50 100)} 
{p_end}


{marker results}{...}
{title:存储结果}

{pstd}
{cmd:stpower logrank} 将以下内容存储在 {cmd:r()} 中：

{synoptset 15 tabbed}{...}
{p2col 5 15 19 2: 标量}{p_end}
{synopt:{cmd:r(E)}}事件总数（失败次数）{p_end}
{synopt:{cmd:r(power)}}检验的功效{p_end}
{synopt:{cmd:r(alpha)}}检验的显著性水平{p_end}
{synopt:{cmd:r(hratio)}}风险比{p_end}
{synopt:{cmd:r(onesided)}}检验类型（{cmd:0} 如果是双侧检验，{cmd:1} 如果是单侧检验）{p_end}
{synopt:{cmd:r(s1)}}对照组的生存概率（如果指定）{p_end}
{synopt:{cmd:r(s2)}}实验组的生存概率（如果指定）{p_end}
{synopt:{cmd:r(p1)}}对照组的受试者比例{p_end}
{synopt:{cmd:r(w)}}撤回比例（如果指定）{p_end}
{synopt:{cmd:r(Pr_E)}}事件（失败）的概率（计算时）{p_end}

{synoptset 15 tabbed}{...}
{p2col 5 15 19 2: 宏}{p_end}
{synopt:{cmd:r(method)}}方法类型（{cmd:Freedman} 或 {cmd:Schoenfeld}）{p_end}

{synoptset 15 tabbed}{...}
{p2col 5 15 19 2: 矩阵}{p_end}
{synopt:{cmd:r(N)}}1x3 矩阵所需样本量{p_end}
{p2colreset}{...}


{marker references}{...}
{title:参考文献}

{marker C2003}{...}
{* 这个单词拼写有两个 L}{...}
{phang}
Collett, D. 2003.
{it:医学研究中的生存数据建模}. 第2版.
伦敦: Chapman & Hall/CRC.{p_end}

{marker F1982}{...}
{phang}
Freedman, L. S. 1982.
使用 log-rank 检验所需的患者数量表。
{it:医学统计} 1: 121-129.{p_end}

{marker MV1997}{...}
{phang}
Marubini, E. 和 M. G. Valsecchi. 1997.
{it:分析来自临床试验和观察研究的生存数据}.
英国奇切斯特: Wiley.

{marker S1981}{...}
{phang}
Schoenfeld, D. A. 1981.
比较生存分布的非参数检验的渐进性质。
{it: 生物统计} 68: 316-319.

{marker S1983}{...}
{phang}
------. 1983.
比例风险回归模型的样本量公式。
{it:生物统计} 39: 499-503.{p_end}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <stpower_logrank.sthlp>}