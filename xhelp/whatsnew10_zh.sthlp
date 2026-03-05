{smcl}
{* *! version 1.4.0  13sep2017}{...}
{vieweralsosee "whatsnew" "help whatsnew_zh"}
{help whatsnew10:English Version}
{hline}{...}
{title:Stata 10 版本的新增内容}

{pstd}
此文件记录了 Stata 10.0 和 10.1 版本中的新增功能和修复内容：

    {c TLC}{hline 63}{c TRC}
    {c |} 帮助文件        内容                     年份           {c |}
    {c LT}{hline 63}{c RT}
    {c |} {help whatsnew_zh}         Stata 16.0                   2019年至今 {c |}
    {c |} {help whatsnew15to16_zh}   Stata 16.0 新版本       2019            {c |}
    {c |} {help whatsnew15_zh}       Stata 15.0 和 15.1          2017至2019    {c |}
    {c |} {help whatsnew14to15_zh}   Stata 15.0 新版本       2017            {c |}
    {c |} {help whatsnew14_zh}       Stata 14.0、14.1 和 14.2   2015至2017    {c |}
    {c |} {help whatsnew13to14_zh}   Stata 14.0 新版本       2015            {c |}
    {c |} {help whatsnew13_zh}       Stata 13.0 和 13.1          2013至2015    {c |}
    {c |} {help whatsnew12to13_zh}   Stata 13.0 新版本       2013            {c |}
    {c |} {help whatsnew12_zh}       Stata 12.0 和 12.1          2011至2013    {c |}
    {c |} {help whatsnew11to12_zh}   Stata 12.0 新版本       2011            {c |}
    {c |} {help whatsnew11_zh}       Stata 11.0、11.1 和 11.2   2009至2011    {c |}
    {c |} {help whatsnew10to11_zh}   Stata 11.0 新版本       2009            {c |}
    {c |} {bf:此文件}        Stata 10.0 和 10.1          2007至2009    {c |}
    {c |} {help whatsnew9to10_zh}    Stata 10.0 新版本       2007            {c |}
    {c |} {help whatsnew9_zh}        Stata  9.0、9.1 和 9.2     2005至2007    {c |}
    {c |} {help whatsnew8to9_zh}     Stata  9.0 新版本       2005            {c |}
    {c |} {help whatsnew8_zh}        Stata  8.0、8.1 和 8.2     2003至2005    {c |}
    {c |} {help whatsnew7to8_zh}     Stata  8.0 新版本       2003            {c |}
    {c |} {help whatsnew7_zh}        Stata  7.0                   2001至2002    {c |}
    {c |} {help whatsnew6to7_zh}     Stata  7.0 新版本       2000            {c |}
    {c |} {help whatsnew6_zh}        Stata  6.0                   1999至2000    {c |}
    {c BLC}{hline 63}{c BRC}

{pstd}
最近的更改列表为优先显示。

{hline 8} {hi:更新记录} {hline}

{pstd}
参见 {help whatsnew10to11_zh}。

{hline 8} {hi:更新 2010年6月20日} {hline}

    {title:Stata 可执行文件，所有平台}

{p 5 9 2}
{* 修复}
1. 在罕见情况下，从 Stata 内访问互联网可能导致 Stata 崩溃。该问题已被修复。

    {title:Stata 可执行文件，Mac (64 位)}

{p 5 9 2}
{* 修复}
2. 从被称为 64 位版本的 Stata 在 Mac 上导出的图形，无法以用户指定的大小导出为位图格式，如 TIFF，当 Stata 在 Snow Leopard (Mac OS X 10.6) 中运行时。该问题已被修复。

    {title:Stata 可执行文件，Ubuntu Linux}

{p 5 9 2}
{* 修复}
3. 在 10.04 版本的 Ubuntu Linux 发行版中，Stata 内存中的数据可能会损坏。这是由于 Ubuntu Linux 发行版中操作系统库中的低级调用行为的变化造成的，因此仅限于 Ubuntu 10.04 发行版。该问题已被修复。

{hline 8} {hi:更新 2010年1月20日} {hline}

    {title:Ado 文件}

{p 5 9 2}
{* 修复}
1. {help svy_zh:svy: regress} 在拟合具有重复 {indepvars} 的模型时，报告了系数和标准误差，具体来说，系数表中出现的第一项的 {cmd:e(b)}。这错误地表示了 {cmd:e(b)} 中实际拟合的系数，因为通常会有所有除一个系数以外的系数应被报告为“（已丢弃）”。该问题已被修复。

{hline 8} {hi:更新 2009年10月1日} {hline}

    {title:Ado 文件}

{p 5 9 2}
{* 修复}
1. {help stci_zh} 与前缀 {cmd:by}，选项 {opt by()}， {cmd:if} 或 {cmd:in}，生成的置信区间是正确的，但报告的标准误差是基于未限制样本的生存函数估计而来的。这已被修复。

{p 5 9 2}
{* 修复}
2. {help sunflower_zh} 选项 {opt addplot()} 只会呈现选项 {opt addplot()} 中的图表。该问题已被修复。

    {title:Stata 可执行文件，所有平台}

{p 5 9 2}
{* 修复}
3. 函数 {helpb colnumb()} 未能在包含时间序列运算符的列上匹配方程式规范。该问题已被修复。

{p 5 9 2}
{* 修复}
4. Stata 的旧可编程对话框系统在 2009 年 8 月 18 日的更新中错误地被禁用。该功能已被恢复。

    {title:Stata 可执行文件，Windows}

{p 5 9 2}
{* 修复}
5. 应用“出厂设置”的某些特定窗口排列可能会导致 Stata 崩溃。该问题已被修复。

    {title:Stata 可执行文件，64 位 Mac}

{p 5 9 2}
{* 修复}
6. 2009 年 8 月 18 日的更新引入了图形编辑器中的一个错误，更改图形工具栏的下拉菜单中的选择不会影响正在编辑的图形。该问题已被修复。

{hline 8} {hi:更新 2009年9月4日} {hline}

    {title:Stata 可执行文件，Mac}

{p 5 9 2}
{* 修复}
1. Mac OS X 10.6 (Snow Leopard) 的更改导致从 Stata 执行的 shell 命令崩溃。Stata 现在可以在执行 shell 命令时适应 Snow Leopard 中的这些更改，同时保持与之前版本的 Mac OS X 的兼容性。

    {title:Stata 可执行文件，64 位 Mac}

{p 5 9 2}
{* 修复}
2. {helpb sts graph} 如果所选区域颜色设置为白色，则在图例中显示黑色背景。该问题已被修复。

{hline 8} {hi:更新 2009年8月18日} {hline}

    {title:Ado 文件}

{p 5 9 2}
{* 增强}
1. 在线帮助和搜索索引已更新，符合 {help sj_zh:Stata Journal} 9(2) 的内容。

{p 5 9 2}
{* 修复}
2. 之前，{help arch_zh} 在使用选项 {opt het()} 时，如果模型未包含任何ARCH项，则不会显示异方差方程的斜率系数，尽管系数存储在系数向量 {cmd:e(b)} 中。该问题已被修复。

{p 5 9 2}
{* 修复}
3. {help areg_zh} 在极少数情况下会报告非零系数和非常大的标准误差，而对于没有组内方差的变量，应当丢弃该变量。该问题已被修复。

{marker n4_18aug2009}{...}
{p 5 9 2}
{* 修复}
4. {help areg_zh} 在用于吸收类别水平样本观察很少的模型时，偶尔会出现错误消息，称观察不足，即使该模型是可以估计的。该问题已被修复。

{p 5 9 2}
{* 修复}
5. {help areg_zh} 在回归显示吸收指标的联合显著性时，若回归变量与其完美相关，则报告的F检验不正确。该问题已被修复。

{p 5 9 2}
{* 修复}
6. {help biprobit_zh} 在选项 {cmd:vce(robust)} 或
    {help vce_option_zh:vce(cluster {it:clustvar})} 下报告 rho 的似然比检验，而不是 rho 的 Wald 检验。此外，迭代日志中报告对数似然，而不是对数伪似然。该问题已被修复。

{p 5 9 2}
{* 修复}
7. {helpb blogit} 和 {helpb bprobit} 当前的数据量大于总群体时，会返回错误信息。现已将正响应数大于总群体的观察从分析中剔除。

{p 5 9 2}
{* 修复}
8. 使用选项 {cmd:missing} 和一个包含所有缺失值的变量，{help egen_zh} 的函数 {cmd:mode()} 错误地报告了多个众数存在的警告信息。该问题已被修复。

{p 5 9 2}
{* 修复}
9. 在 {help ivregress_zh} 和 {help arima_zh} 之后使用 {helpb estat classification}，当使用 {cmd:iweight}s时，如果它们为整数值，则会将 {cmd:iweight}s视为 {cmd:fweight}s；如果不是整数，则会报告错误。现已在使用 {cmd:iweight}s 时，在估计中提供适当的错误消息。

{p 5 9 2}
{* 修复}
10. 在经过 {helpb ivregress gmm} 后，{helpb ivregress_postestimation##estatoverid:estat overid} 将因包含时间序列运算符的回归变量而退出并報告错误。现在此问题已被修复。

{p 5 9 2}
{* 修复}
11. {helpb estat summarize} 在 {help arch_zh} 和 {help arima_zh} 之后会使 Stata 击穿并最终因前一个模型不包含任何 ARCH 或 ARIMA 项而退出。该问题已被修复。

{p 5 9 2}
{* 修复}
12. {help glm_zh} 的选项 {cmd:vce(unbiased)} 不能与 {cmd:vce(cluster} {it:clustvar}{cmd:)} 或 {cmd:vce(robust)} 结合使用。现已可以结合使用（例如，{cmd:vce(unbiased) vce(robust)}）。

{p 5 9 2}
{* 修复}
13. 在指定选项 {cmd:vce(robust)} 或
     {help vce_option_zh:vce(cluster {it:clustvar})} 时，使用 {helpb heckprob} 或最大似然版本的 {help heckman_zh}，输出底部的 rho = 0 测试的标签是 Wald 测试，实际上却是似然比测试。该问题已修复，确保真正进行 Wald 测试。当指定此选项与这些命令时，迭代日志中也报告了对数似然。现已更改为对数伪似然。

{p 5 9 2}
{* 修复}
14. {helpb hetprob} 使用选项 {cmd:vce(robust)} 或
     {help vce_option_zh:vce(cluster {it:clustvar})} 报告 lnsigma2 = 0 的似然比检验。似然比统计量不适用于稳健 VCE。因此，该测试不再被报告。

{marker n15_18aug2009}{...}
{p 5 9 2}
{* 修复}
15. {help ivregress_zh} 在使用许多数量级不同的回归变量时，可能会报告错误结果或丢弃回归变量。现已使 {cmd:ivregress} 更加宽容地处理不良缩放数据。

{p 5 9 2}
{* 修复}
16. 在 {help lrtest_zh} 中，若紧接着 {help xtmixed_zh}、{help xtmelogit_zh} 或 {help xtmepoisson_zh} 使用，会检测到嵌套混合模型之间的估计随机效应方差数量的差异。先前，如果检测到差异， {cmd:lrtest} 将其视为测试这些方差等于零的原假设的结果，也就是原假设在参数空间的边界。当发生这种情况时，若模型自由度的差异等于1，则 p 值被除以2 并报告为 {help j_chibar_zh:chibar2(01)}。若模型自由度的差异超过1，则在输出中含有说明 p 值为保守估计的注释。这种行为在大多数情况下是正确的，但不是总是如此。

{p 9 9 2}
     有时嵌套混合模型在数量上存在差异，即使不在边界上测试，例如，测试两个方差是否相等。在这种情况下，{cmd:lrtest} 要么报告一个 anticonservative 的 {help j_chibar_zh:chibar2(01)} p 值，要么错误地将 p 值声明为一个保守估计，而实际上，p 值是准确的。

{p 9 9 2}
     {cmd:lrtest} 现在不再假设所有测试都在边界上，也不再试图从估计结果推断原假设，而是打印一条说明何时存在边界测试的可能性，并留给用户自行判断。新的行为保证要么是保守的，要么是准确的，但永远不会是无效的。

{p 4 9 2}
{* 修复}
17. {help nbreg_zh} 在选项 {cmd:vce(robust)} 或
     {help vce_option_zh:vce(cluster {it:clustvar})} 下报告了 alpha = 0 的似然比检验。似然比统计在稳健 VCE 下不有效。因此，该检验不再被报告。

{p 4 9 2}
{* 修复}
18. {help nlogit_zh} 的系数表未显示与基准选择选项相关的连续变量的系数。该问题已被修复。

{marker n19_18aug2009}{...}
{p 4 9 2}
{* 修复}
19. {helpb arch_postestimation##predict:predict, variance} 在 {help arch_zh} 之后，如果模型拟合了约束，有时会导致错误消息退出。该问题已被修复。

{p 4 9 2}
{* 修复}
20. {helpb areg_postestimation##predict:predict, xbd} 和
     {helpb areg_postestimation##predict:predict, d} 在 {help areg_zh} 之后改变了数据的排序顺序。该问题已被修复。

{p 4 9 2}
{* 修复}
21. {helpb arima_postestimation##predict:predict} 在指定选项 {opt stdp} 后，在 {help arima_zh} 之后，如果模型不包含任何回归变量或常数项，则会导致模糊的错误消息退出。现已发出更具描述性的错误消息。

{p 4 9 2}
{* 修复}
22. 拟合符合 RUM 的嵌套 Logit 模型后的预测包含的值，
     {helpb nlogit_postestimation##predict:predict, iv} 是不正确的。该问题已被修复。

{p 4 9 2}
{* 修复}
23. 在 {helpb streg_postestimation##predict:predict} 之后使用选项 {cmd:frailty()}，
     {help streg_zh} 时，有时忽略了选项 {cmd:alpha1} 和 {cmd:unconditional}，
     当用于预测多记录数据上累积的量时，例如累积马丁盖尔残差（选项
     {cmd:cmgale}）和累积生存概率 （选项 {cmd:csurv}）。该问题已被修复。

{p 4 9 2}
{* 修复}
24. {help scobit_zh} 使用选项 {cmd:vce(robust)} 或
     {help vce_option_zh:vce(cluster {it:clustvar})} 报告了 alpha = 1 的似然比检验。似然比统计在稳健 VCE 下不有效。因此，该检验不再被报告。

{marker n25_18aug2009}{...}
{p 4 9 2}
{* 修复}
25. {helpb sts graph} 将不尊重选项 {cmd:cols()} 的子选项
     {cmd:legend()} 时，在与选项 {cmd:ci} 和 {cmd:by()} 一起指定时。该问题已被修复。

{marker n26_18aug2009}{...}
{p 4 9 2}
{* 修复}
26. {help suest_zh} 与 {help mlogit_zh} 的结果，在方程名称中包含句点时会报告“运算符无效”的错误。该问题已被修复。现在 {cmd:suest} 将句点转换为逗号。

{p 4 9 2}
{* 修复}
27. {help suest_zh} 与 {help svyset_zh} 的数据，如果 {cmd:svyset} 变量中的任何变量未找到，则会报告错误消息，即使选项 {opt svy} 未指定，且估计结果并不来自 {help svy_zh} 前缀。此问题已被修复。

{p 4 9 2}
{* 修复}
28. 未文档化命令 {help svygen_zh:svygen jackknife} 如果选项
     {cmd:poststrata()} 和 {cmd:postweight()} 被指定，则会产生错误消息。该问题已被修复。

{p 4 9 2}
{* 修复}
29. {help treatreg_zh} 在使用选项 {opt constraints()} 时，在计算独立方程的似然比检验时未能正确应用约束，导致检验统计量失效。现已
     {cmd:treatreg} 在施加约束时报告独立性 Wald 检验。

{marker n30_18aug2009}{...}
{p 4 9 2}
{* 修复}
30. {help xthtaylor_zh} 在极少情况下会将变量声明为时间不变，即使它是时间变动的。该问题已被修复。

{p 4 9 2}
{* 修复}
31. {help xtreg_zh:xtreg, fe} 现在在当 VCE 小于满秩时，报告缺失 F 统计量进行整体模型检验。报告的自由度对应于可以同时检验的最大系数数量。

{p 4 9 2}
{* 修复}
32. {help xtreg_zh:xtreg, pa} 与选项 {opt corr()} 和 {help xtgee_zh} 与选项 {opt corr()} 结合使用时，若处理的时间段超过了 {cmd:tabulate} 可处理的范围，则会返回错误消息。该问题已被修复。

{p 4 9 2}
{* 修复}
33. {help xtreg_zh:xtreg, re} 和 {help xtgee_zh} 现在在 VCE 小于满秩时报告缺失的 Wald 卡方统计量进行整体模型检验。报告的自由度对应于可以同时检验的最大系数数量。

{p 4 9 2}
{* 修复}
34. {help xtreg_zh:xtreg, re} 与选项 {cmd:vce(robust)} 或
     {help vce_option_zh:vce(cluster {it:clustvar})} 时，当数据集为平衡面板时，报告的 F 统计量不正确。该问题已被修复。

{p 4 9 2}
{* 修复}
35. {help zinb_zh} 在选项 {cmd:vce(robust)} 或
     {help vce_option_zh:vce(cluster {it:clustvar})} 下报告了 alpha = 0 的似然比检验。似然比统计在稳健 VCE 下不有效。因此，该检验不再被报告。

{p 4 9 2}
{* 修复}
36. {help zip_zh} 在选项 {cmd:vce(robust)} 或
     {help vce_option_zh:vce(cluster {it:clustvar})} 下报告了 Vuong 检验，如果选项 {cmd:vuong} 被指定。Vuong 检验在稳健 VCE 下不有效。因此，该检验不再被报告。

{p 4 9 2}
{* 修复}
37. {help ztnb_zh} 在选项 {cmd:vce(robust)} 或
     {help vce_option_zh:vce(cluster {it:clustvar})} 报告了 alpha = 0 的似然比检验。似然比统计不适用于稳健 VCE。因此，该检验不再被报告。

    {title:Stata 可执行文件，所有平台}

{p 4 9 2}
{* 修复}
38. 打印一个包括结果或查看器窗口的最后一行的选择会导致 Stata 崩溃。该问题已被修复。

{p 4 9 2}
{* 修复}
39. 审阅窗口在错误消息后，输入的 {help comments_zh} 显示了错误返回代码。该问题已被修复。

{p 4 9 2}
{* 修复}
40. Mata 非均匀 {help mf_rnormal:random-number generators}，当 {help mf_st_view_zh:views} 用于参数矩阵时，将导致 Stata 崩溃。该问题已被修复。

{p 4 9 2}
{* 修复}
41. Mata 概率函数 {helpb mf_binomialp:binomialp()}，{bf:hypergeometricp()}，{bf:nbinomialp()} 和 {bf:poissonp()}，当 {help mf_st_view_zh:views} 用于参数矩阵时，将导致 Stata 崩溃。该问题已被修复。

{p 4 9 2}
{* 修复}
42. Mata 函数 {help mf_findexternal_zh:findexternal()}、{help mf_valofexternal_zh:valofexternal()}、{helpb mf_crexternal:crexternal()} 和 {helpb mf_rmexternal:rmexternal()}，在名称包含空格的情况下，假如其他条件有效，将允许使用名称。该问题已被修复。

{marker n43_18aug2009}{...}
{p 4 9 2}
{* 修复}
43. Mata 函数 {help mf_dir_zh:dir()} 如果结果超过 10,000 项可能会崩溃 Stata。该问题已被修复。

{p 4 9 2}
{* 修复}
44. Mata 概率分布函数 {helpb mf_hypergeometric:hypergeometric()},{bf:nbinomial()} 和 {bf:poisson()}，当 {help mf_st_view_zh:views} 用于参数矩阵时，将导致 Stata 崩溃。该问题已被修复。

{p 4 9 2}
{* 修复}
45. Mata 函数 {help mf_st_addvar_zh:st_addvar()} 即使变量名称包含空格，但其他条件有效时也将变量添加到 Stata 数据集中。该问题已被修复。

{p 4 9 2}
{* 修复}
46. Mata 函数 {help mf_st_isname_zh:st_isname()}，当被检查的名称包含空格但其他条件有效时，返回 valid (1)。该问题已被修复。

{p 4 9 2}
{* 修复}
47. Mata 函数 {help mf_st_varrename_zh:st_varrename()} 如果名称有效，将变量重命名为包含空格的名称。该问题已被修复。

{p 4 9 2}
{* 修复}
48. {help svy_zh}{cmd::} {help mean_zh}, {help svy_zh}{cmd::} {help proportion_zh}，
     {help svy_zh}{cmd::} {help ratio_zh} 和 {help svy_zh}{cmd::} {help total_zh}，
     即使抽样权重为零，也会在摘要变量中标记出缺失值的观察。该问题已被修复。

    {title:Stata 可执行文件，Windows}

{p 4 9 2}
{* 修复}
49. {help edit_zh} 或 {helpb browse} 使用包含数据集中所有观察的 {cmd:if} 表达式，有时导致垂直滚动条未显示或滚动不正确。该问题已被修复。

{p 4 9 2}
{* 修复}
50. 在数据编辑器中，如果操作系统未能完成剪贴板复制，可能会发生内存泄漏。该问题已被修复。

{p 4 9 2}
{* 修复}
51. {helpb set linesize} 当滚动条在结果窗口自动出现时，可能会被覆盖。该问题已被修复。

{p 4 9 2}
{* 修复}
52. {helpb window manage associate} 如果 Stata 不是以管理员身份启动，则在 Windows Vista 下可能无法恢复文件关联。该问题已被修复。

{p 4 9 2}
{* 修复}
53. 在某些情况下，结果窗口在 Stata 主窗口中最大化时未能正确初始化行数。该问题已被修复。

{p 4 9 2}
{* 修复}
54. 审阅和变量窗口未能随着保存的首选项保存和恢复其字体设置。该问题已被修复。

{p 4 9 2}
{* 修复}
55. 如果在 Stata 第一次打开时，审阅窗口初始关闭，则审阅窗口可能在错误命令旁显示错误代码。该问题已被修复。

{p 4 9 2}
{* 修复}
56. “紧凑窗口设置”没有自动隐藏审阅和变量窗口，并且未正确调整 Stata 主窗口的大小。该问题已被修复。

{p 4 9 2}
{* 修复}
57. 在图形编辑器中，将图形复制到剪贴板可能会导致选择图形对象时工作不正常。该问题已被修复。

    {title:Stata 可执行文件，Mac}

{p 4 9 2}
{* 修复}
58. 在图形编辑器中，将图形复制到剪贴板可能导致选择图形对象时的操作不正常。该问题已被修复。

{marker n59_18aug2009}{...}
{p 4 9 2}
{* 修复}
59. 在从图形编辑器改变图形的宽高比后，图形窗口不会自动调整为新的宽高比。该问题已被修复。

    {title:Stata 可执行文件，64 位 Mac}

{p 4 9 2}
{* 修复}
60. 根据结果窗口中显示的线路数量，{cmd:--more--}可能仍会出现在结果窗口，即使在清除更多条件后。该问题已被修复。

{p 4 9 2}
{* 修复}
61. {helpb window fopen} 和 {helpb window fsave} 命令现在被支持。

{p 4 9 2}
{* 修复}
62. {bf:文件 > 插入文件...} 现在将在 Do-file 编辑器中插入文件。

{p 4 9 2}
{* 修复}
63. 当从命令行启动时，Stata 现在会被带到前面。

{p 4 9 2}
{* 修复}
64. 如果数据编辑器是以 {cmd:if} 条件启动的，且删除对话框被打开多次，Stata 可能会崩溃。该问题已被修复。

{marker n65_18aug2009}{...}
{p 4 9 2}
{* 修复}
65. Stata 在调整图形窗口大小后重新绘制图形窗口的方式已被修改，以适应 Mac OS X 10.6 (Snow Leopard) 的更改。该修改也兼容 Mac OS X 10.5 (Leopard)。

{marker n66_18aug2009}{...}
{p 4 9 2}
{* 修复}
66. 从图形编辑器添加标记然后更改新添加标记的属性可能导致 Stata 崩溃。该问题已被修复。

{p 4 9 2}
{* 修复}
67. 如果 Stata 的 ado 路径中未找到图像 lock16.png，或者该图像损坏，图形编辑器会导致 Stata 崩溃。尽管缺失/损坏的图像表明 Stata 的 ado 目录已损坏且需要重新安装 Stata，现在 Stata 将忽略缺失图标以避免崩溃。

{p 4 9 2}
{* 修复}
68. 当前图形方案未被保存到 Stata 的首选项中。该问题已被修复。

{marker n69_18aug2009}{...}
{p 4 9 2}
{* 修复}
69. Do-file 编辑器现在会在执行代码时自动在 do-file 的末尾添加换行符，如果 do-file 末尾不存在换行符。Stata 要求在所有将被执行的行中存在换行符。

{p 4 9 2}
{* 修复}
70. Stata 没有将 Unicode 字符的文件名从打开或保存对话框转换为正确的文件系统表示。如果文件名包含 Unicode 字符，这可能会导致“找不到文件”的错误。这已被修复。

{title:Stata 可执行文件，Unix GUI}

{p 4 9 2}
{* 修复}
71. {help edit_zh} 或 {helpb browse} 使用包含数据集中所有观察的 {cmd:if} 表达式，有时导致垂直滚动条未显示或滚动不正确。该问题已被修复。

{p 4 9 2}
{* 修复}
72. 命令窗口中的垂直滚动条仅在需要时显示。将命令窗口调整为比显示整个垂直滚动条所需的高度更短，导致下次 Stata 启动时命令窗口的高度增加到显示垂直滚动条的最小高度。这反过来也会导致 Stata 主窗口增大。由于调整大小的问题和垂直滚动条的有限用途，命令窗口现在将不再显示垂直滚动条。

{p 4 9 2}
{* 修复}
73. 从 Do-file 编辑器窗口选择 {bf:文件 > 打开} 时，打开的 do-file 所在的目录未显示。这已被修复，以便打开对话框默认指向当前打开的 do-file 的目录。

{hline 8} {hi:更新 2009年4月16日} {hline}

    {title:Ado 文件}

{p 5 9 2}
{* 修复}
1. 使用 {opt strata()} 选项后在 {helpb stcox_postestimation##estatcon:estat concordance} 中，未考虑数据的分层结构。因此，此功能的支持已暂时禁用，直到实施一个统计上合适的解决方案。

{p 5 9 2}
{* 修复}
2. {helpb stcox_postestimation##estatcon:estat concordance} 改变了当前数据集的排序顺序。该问题已被修复。

{p 5 9 2}
{* 修复}
3. {help fracpoly_zh} 和 {help mfp_zh} 使用 {help mlogit_zh} 时，分配了错误的模型自由度。模型自由度过小，导致 p 值变小。该问题已被修复。

    {title:Stata 可执行文件，Mac (32 和 64 位)}

{p 5 9 2}
{* 修复}
4. {help edit_zh} 或 {helpb browse} 使用包含数据集中所有观察的 {cmd:if} 表达式，有时导致垂直滚动条未显示或滚动不正确。该问题已被修复。

    {title:Stata 可执行文件，Mac (32 位)}

{p 5 9 2}
{* 修复}
5. 以 PDF 格式保存的图形有时在 PDF 文件的实际图像顶部有额外的空白。这已被修复。

    {title:Stata 可执行文件，Mac (64 位)}

{p 5 9 2}
{* 增强}
6. 现在可以排序审阅窗口中的列。您现在可以将所选命令从审阅窗口拖放到接受文本的目标中。您还可以将所选变量从变量窗口拖放到接受文本的目标中。

{p 5 9 2}
{* 增强}
7. 当 {cmd:doedit filename.do} 从命令行输入时，如果 {cmd:filename.do} 不存在，创建一个新 Do-file 编辑器文档并为文档设置文件名。尽管文档尚未存在于磁盘上，但首次选择 {bf:文件 > 保存...} 将把文档保存到磁盘，而无需提示输入文件名。

{p 5 9 2}
{* 增强}
8. 现在提供可编程菜单支持（请参见 {helpb window menu}）。

{p 5 9 2}
{* 修复}
9. 图形 {bf:另存为} 对话框现在使用当前图形文件名作为默认文件名。

{p 4 9 2}
{* 修复}
10. 在某些情况下，图形类型列表框不会显示所有图形类型。该问题已被修复。

{p 4 9 2}
{* 修复}
11. 如果 Stata 的主工具栏窗口移动到外部显示器，下一次 Stata 启动时，如果外部显示器不可用，则窗口将不会出现在主要显示器上。该问题已被修复。现在，Stata 允许将主工具栏窗口拖到菜单栏上方，如果外部显示器安排在主要显示器上方。

{p 4 9 2}
{* 修复}
12. 如果在 {cmd:if} 条件下使用 data editor 打开时，返回不存在观察值的 {cmd:if} 条件，将导致 Stata 崩溃。该问题已被修复。

{p 4 9 2}
{* 修复}
13. 审阅窗口并不支持对话框。“继续生成”颜色和间距设置不会与已保存的首选项一起保存。 该问题已被修复。

{hline 8} {hi:更新 2009年3月3日} {hline}

{title:Stata 可执行文件，所有平台}

{p 5 9 2}
{* 修复}
1. {help exlogistic_zh} 导致数据随机样本的标准差在高异方差条件下不收敛。【问题已修复】

{hline 8} {hi:更新 2009年2月2日} {hline}

{title:Ado 文件}

{p 5 9 2}
{* 修复}
1. {help alpha_zh} 是 r 类命令，清除存储在 {cmd:e()} 中的所有结果。该问题已被修复。

{p 5 9 2}
{* 修复}
2. {help alpha_zh} 返回“无观察”错误，当无法从经验确定视角时。现在给出的错误提示建议指定选项 {cmd:asis}。

{p 5 9 2}
{* 修复}
3. {helpb anova_postestimation##test:test} 在 {help anova_zh} 之后不允许同时指定选项 {cmd:test()} 和 {cmd:matvlc()}。该问题已被修复。

    {title:Stata 可执行文件，Mac (32 位)}

{p 5 9 2}
{* 修复}
4. 在上一个更新中，Stata 改变了从图形复制图像到剪贴板的方式，从 PDF 或 PICT 格式复制图形到多种图形格式，包括 PDF、TIFF 和 PICT。这允许现代和旧版应用程序从 Stata 以应用程序所需的格式粘贴图形。但是，Microsoft Office 2004 不支持剪贴板中的多种图形格式。 Stata 在常规首选项对话框中重新引入了“仅将图像复制到剪贴板为 PICT”选项，以仅将图形复制到剪贴板为 PICT 格式。

{p 5 9 2}
{* 修复}
5. 变量窗口的滚动条不再在添加变量后移动到变量列表开始位置。 该问题已被修复。

{hline 8} {hi:更新 2009年1月2日} {hline}

{title:Ado 文件}

{p 5 9 2}
{* 修复}
1. 在对话框中创建显示格式的样本无效。 该问题已被修复。

{p 5 9 2}
{* 修复}
2. {help mkspline_zh} 在使用间隔所需唯一识别时，最大为 {cmd:%9.0g} 时，如果格式中的节点无法唯一识别，可能会创建包含所有 0 的样条变量。 该问题已被修复。

{p 5 9 2}
{* 修复}
3. {help sktest_zh} 之前使用逐行删除。 现在使用按变量删除。

{p 5 9 2}
{* 修复}
4. {help xtdpdsys_zh} 的对话框不允许同时指定选项 {cmd:twostep} 和 {cmd:vce(robust)}。该问题已被修复。

{title:Stata 可执行文件，所有平台}

{p 5 9 2}
{* 修复}
5. {help describe_zh} 的 {cmd:varlist} 选项在数据未排序时，会报告整个变量列表，将报告指定的变量列表。该问题已被修复。

{p 5 9 2}
{* 修复}
6. {helpb estimates use} 错误读取 {help logistic_zh}、{help logit_zh} 和 {help probit_zh} 的估计结果，导致识别多个完美预测，因共线性而途径丢弃变量，可能导致 Stata 崩溃。该问题已被修复。

{p 5 9 2}
{* 修复}
7. {help exlogistic_zh} 的估计算法已改进，以使用相对频率。这意味着它可以成功拟合更大的数据集以及更高频率的列举充足统计。数据集或充足统计过大时，相应地改进了错误消息。

{p 5 9 2}
{* 修复}
8. {help exlogistic_zh} 在一个或多个回归变量线性相关时，会向用户报告错误信息。该问题已被修复。

{p 5 9 2}
{* 修复}
9. {helpb makeu} 行和命令代名的名称不应包含换行符。此问题已被修复。

{p 5 9 2}
{* 修复}
10. 在未添加该选项的情况下，对话框标签未显示完整的状态信息。 该问题已被修复。

{hline 8} {hi:更新 2008年4月24日} {hline}

{title:Stata 可执行文件，所有平台}

{p 5 9 2}
{* 修复}
1. 在 Unix 平台上，{helpb graphical} 对话框可能出现空的图形选项。该问题已被修复。

{p 5 9 2}
{* 修复}
2. 对于 Linux 测试，{helpb opt} 显示的图形显示不完全。该问题已被修复。

{p 5 9 2}
{* 修复}
3. 当数据集编辑后使用命令意味着必须与设计有关的内容。此对象的命名不应包含内容。该问题已被修复。

{hline 8} {hi:更新 2008年4月26日} {hline}

{title:Stata 可执行文件，所有平台}

{p 5 9 2}
{* 增强}
0. 新命令 {help creturn_zh: return list} ，包括 {cmd:c(matsize)} 作为包含的返回值。

{hline}


{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <whatsnew10.sthlp>}