{smcl}
{* *! version 1.2.7  18sep2018}{...}
{vieweralsosee "[ST] st" "mansection ST st"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[ST] ct" "help ct_zh"}{...}
{vieweralsosee "[ST] snapspan" "help snapspan_zh"}{...}
{vieweralsosee "[ST] stset" "help stset_zh"}{...}
{vieweralsosee "[ST] Survival analysis" "help survival_analysis_zh"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[ST] Glossary" "help st_glossary_zh"}
{help st:English Version}
{hline}{...}
{p2colset 1 12 14 2}{...}
{p2col:{bf:[ST] st} {hline 2}}生存时间数据{p_end}
{p2col:}({mansection ST st:查看完整的 PDF 手册条目}){p_end}
{p2colreset}{...}

{title:描述}

{pstd}
术语 st 指的是生存时间数据以及大多数以 st 开头的命令，用于分析这些数据。如果你有关于个体对象的数据，记录某个特定对象在时间 t0 被观察到，之后在时间 t1 观察到失败的情况，那么你拥有的是我们所称的未删失生存时间数据。如果你有关于个体对象的数据，记录某个特定对象在时间 t0 被观察到，之后在时间 t1 观察到删失的情况，那么你拥有的是右删失生存时间数据。如果你有关于个体对象的数据，记录某个特定对象在时间 t0 被观察到，但在此之前已经发生了失败，那么你拥有的是左删失生存时间数据。如果你有关于个体对象的数据，记录某个特定对象在时间 {it:t_l} 和 {it:t_u} 之间的某个时刻失败，那么你拥有的是区间删失生存时间数据。当然，你可能拥有的数据包含上述所有类型的观察。

{pstd}
如果你有特定对象的数据，记录的不是一段时间，而是在特定时间点上对该对象进行的测量，那么你拥有的是我们所称的快照数据集；见 {manhelp snapspan ST}。

{pstd}
如果你有关于人群的数据，记录在时间 t 时被测试的单位数量（存活的对象）以及由于删失而失败或失踪的对象数量，那么你拥有的是我们所称的计数时间数据；见 {manhelp ct ST}。

{pstd}
st 命令包括：

{p2colset 9 30 32 2}{...}
{p2col :{help stset_zh}}声明数据为生存时间数据{p_end}
{p2col :{help stdescribe_zh}}描述生存时间数据{p_end}
{p2col :{help stsum_zh}}总结生存时间数据{p_end}
{p2col :{help stvary_zh}}报告随时间变化的变量{p_end}
{p2col :{help stfill_zh}}通过向前填充协变量的值{p_end}
{p2col :{help stgen_zh}}生成反映完整历史的变量{p_end}
{p2col :{help stsplit_zh}}拆分时间跨度记录{p_end}
{p2col :{helpb stjoin}}合并时间跨度记录{p_end}
{p2col :{help stbase_zh}}形成基线数据集{p_end}
{p2col :{help sts_zh}}生成、绘图、列出并测试生存者和累计风险函数{p_end}
{p2col :{help stir_zh}}报告发生率比较{p_end}
{p2col :{help stci_zh}}生存时间均值和分位数的置信区间{p_end}
{p2col :{help strate_zh}}列出失败率{p_end}
{p2col :{help stptime_zh}}计算人时{p_end}
{p2col :{helpb stmh}}用 Mantel-Haenszel 方法计算比率比{p_end}
{p2col :{helpb stmc}}用 Mantel-Cox 方法计算比率比{p_end}
{p2col :{help stcox_zh}}拟合 Cox 比例风险模型{p_end}
{p2col :{helpb estat concordance}}计算一致性概率{p_end}
{p2col :{helpb estat phtest}}检验 Cox 比例风险假设{p_end}
{p2col :{helpb stphplot}}图形化评估 Cox 比例风险假设{p_end}
{p2col :{helpb stcoxkm}}图形化评估 Cox 比例风险假设{p_end}
{p2col :{help streg_zh}}拟合参数生存模型{p_end}
{p2col :{help stintreg_zh}}拟合区间删失生存时间数据的参数模型{p_end}
{p2col :{helpb estat gofplot}}图形化评估模型对区间删失数据的拟合优度{p_end}
{p2col :{help stcrreg_zh}}拟合竞争风险回归模型{p_end}
{p2col :{help xtstreg_zh}}拟合随机效应参数生存模型{p_end}
{p2col :{help mestreg_zh}}拟合混合效应参数生存模型{p_end}
{p2col :{help stcurve_zh}}绘制生存者、风险、累计风险或累计发生函数{p_end}
{p2col :{help stteffects_zh}}使用观察数据估计治疗效果{p_end}
{p2col :{help sttocc_zh}}将生存时间数据转换为病例对照数据{p_end}
{p2col :{help sttoct_zh}}将生存时间数据转换为计数时间数据{p_end}
{p2col :{help st_is_zh:st_*}}供程序员使用的生存分析子程序{p_end}
{p2col :{help fmm_streg_zh:fmm: streg}}参数生存模型的有限混合{p_end}
{p2col :{help bayes_streg_zh:bayes: streg}}贝叶斯参数生存模型{p_end}
{p2col :{help bayes_mestreg_zh:bayes: mestreg}}贝叶斯多层参数生存模型{p_end}
{p2colreset}{...}

{pstd}
st 命令用于分析时间到吸收事件（单次失败）数据和分析时间到重复事件（多次失败）数据。

{pstd}
对于未删失和右删失数据，你可以通过 {cmd:stset} 数据来开始分析，告知 Stata 关键的生存时间变量；见 {manhelp stset ST}。一旦你 {cmd:stset} 了数据，你可以使用其他 st 命令。如果你在 {cmd:stset} 数据后选择 {opt save} 数据，你将来无需再次 {cmd:stset}；Stata 将会记住。

{pstd}
{help stintreg_zh} 命令旨在分析一般的区间删失数据，包括右删失、左删失和区间删失观察。它不需要 {cmd:stset} 数据。
{p_end}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <st.sthlp>}