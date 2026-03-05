
{smcl}
{* *! version 1.3.0  13sep2017}{...}
{helpb whatisnew} {title:Stata 11 版本的新增内容}

{help whatsnew11:English Version}
{hline}
{pstd}
本文件记录了 Stata 在 11.0、11.1 和 11.2 版本中的新增和修复内容：

    {c TLC}{hline 63}{c TRC}
    {c |} 帮助文件        内容                       年份          {c |}
    {c LT}{hline 63}{c RT}
    {c |} {help whatisnew}         Stata 16.0                   2019 年至今 {c |}
    {c |} {help whatisnew15to16}   Stata 16.0 新发布           2019 年        {c |}
    {c |} {help whatisnew15}       Stata 15.0 和 15.1          2017 年至 2019 年 {c |}
    {c |} {help whatisnew14to15}   Stata 15.0 新发布          2017 年        {c |}
    {c |} {help whatisnew14}       Stata 14.0、14.1 和 14.2   2015 年至 2017 年 {c |}
    {c |} {help whatisnew13to14}   Stata 14.0 新发布          2015 年        {c |}
    {c |} {help whatisnew13}       Stata 13.0 和 13.1          2013 年至 2015 年 {c |}
    {c |} {help whatisnew12to13}   Stata 13.0 新发布          2013 年        {c |}
    {c |} {help whatisnew12}       Stata 12.0 和 12.1          2011 年至 2013 年 {c |}
    {c |} {help whatisnew11to12}   Stata 12.0 新发布          2011 年        {c |}
    {c |} {bf:本文件}           Stata 11.0、11.1 和 11.2       2009 年至 2011 年 {c |}
    {c |} {help whatisnew10to11}   Stata 11.0 新发布          2009 年        {c |}
    {c |} {help whatisnew10}       Stata 10.0 和 10.1          2007 年至 2009 年 {c |}
    {c |} {help whatisnew9to10}    Stata 10.0 新发布          2007 年        {c |}
    {c |} {help whatisnew9}        Stata  9.0、9.1 和 9.2      2005 年至 2007 年 {c |}
    {c |} {help whatisnew8to9}     Stata  9.0 新发布          2005 年        {c |}
    {c |} {help whatisnew8}        Stata  8.0、8.1 和 8.2      2003 年至 2005 年 {c |}
    {c |} {help whatisnew7to8}     Stata  8.0 新发布          2003 年        {c |}
    {c |} {help whatisnew7}        Stata  7.0                 2001 年至 2002 年 {c |}
    {c |} {help whatisnew6to7}     Stata  7.0 新发布          2000 年        {c |}
    {c |} {help whatisnew6}        Stata  6.0                 1999 年至 2000 年 {c |}
    {c BLC}{hline 63}{c BRC}

{pstd}
最近的更改被列在最前面。

{hline 8} {hi:更新历史} {hline}

{pstd}
查看 {help whatisnew11to12}。

{marker up01sep2011}{...}
{hline 8} {hi:更新 01sep2011} {hline}

    {title:Ado 文件}

{p 5 9 2}
{* 修复}
1.  {helpb discrim knn} 在选项 {cmd:group()} 中指定的 {it:groupvar} 值不连续时（例如，当组 1 的所有观察值不相互靠近，组 2 的所有观察值也不相互靠近等），可能给出错误结果。已修复。

{p 5 9 2}
{* 修复}
2.  {help margins_zh} 报告所有边际，即使是可估计的边际，在指定使用 {help slogit_zh} 或 {help stcrreg_zh} 的模型中指定因子变量时报告为 “(不可估计)”。已修复。

{p 5 9 2}
{* 修复}
3.  Mata 的 {help mf_optimize_zh:optimize()} 使用 Nelder-Mead 技术和约束条件时，会出现 Mata 跟踪日志错误。已修复。

{p 5 9 2}
{* 修复}
4.  {help sspace_zh} 在 {it:obs_efeq} 方程中，时间序列运算符与依赖变量上的 {cmd:e.} 错误运算符结合时会产生错误消息。已修复。

{p 5 9 2}
{* 增强}
5.  {help svy_zh} 现在会为用户自定义估计命令调用选项验证程序；有关详细信息参见 {help svy_parsing_zh}。

{p 5 9 2}
{* 修复}
6.  {helpb svy brr} 与表达式一起使用时，有时会报告找不到工作变量的错误。已修复。

{p 5 9 2}
{* 修复}
7.  {help svy_zh}{cmd:} {help ivregress_zh} 在变量 {it:varlist_iv} 的工具变量列表中使用因子变量符号法时报告无效运算符错误，而在外生变量列表 {it:varlist1} 中未使用。这已修复。

{p 5 9 2}
{* 修复}
8.  {help var_zh} 对于10个或更多滞后的外生变量未能按正确顺序对滞后进行排序。已修复。

    {title:Stata 可执行文件，所有平台}

{p 5 9 2}
{* 修复}
9.  {help anova_zh} 和 {help manova_zh} 指定的 {it:termlist} 超过 503 个字符时，通常会报告 “{err:未找到变量}” 错误。已修复。

{p 4 9 2}
{* 修复}
10.  Mata 函数 {helpb mf_fget:fget()} 和 {helpb mf_fgetnl:fgetnl()}，在 Windows 风格行尾字符（\r\n）且一行长度为512字符的多倍数减1时，可能在重复调用这些函数时返回额外的空行。已修复。

{p 4 9 2}
{* 增强}
11.  Mata 库路径的最大长度为256字符。现已增加到4096字符。

{p 4 9 2}
{* 增强}
12.  {helpb set memory} 在105 GB 到 208 GB之间进行内存分配时可能会导致Stata崩溃。已修复。

{p 4 9 2}
{* 修复}
13.  {help stcox_zh} 在选项 {cmd:efron} 和 {cmd:vce(robust)} 下对于具有许多相同失败时间的大规模数据集可能计算时间过长。已修复。

{p 4 9 2}
{* 修复}
14.  {help xmlsave_zh} 如果要保存的变量已排序，可能会导致Stata崩溃。已修复。

{p 4 9 2}
{* 增强}
15.  对话框中的 VARLIST 控件的文本限制已增加到 2048 字符。

{title:Stata 可执行文件，Windows}

{p 4 9 2}
{* 修复}
16.  {help graph_zh} 文本与 {help alignmentstyle_zh:vertical alignment} 的 {cmd:middle} 或 {cmd:top} 的上标和下标稍微偏移。已修复。

{title:Stata 可执行文件，Mac}

{p 4 9 2}
{* 增强}
17.  Stata 启动后窗口的显示方式已更改，因为 Mac OS X 10.7 (Lion) 中的行为与早期版本不同。

{p 4 9 2}
{* 增强}
18.  Stata 的文件对话框现在支持打开符号链接到文件或目录。

{p 4 9 2}
{* 修复}
19.  对 Mac OS X 10.6.7 的更改可能导致 Do-file 编辑器的打印崩溃。这已修复。

{p 4 9 2}
{* 修复}
20.  Mac OS X 10.7 (Lion) 中的变化导致光标在 Do-file 编辑器中只有换行符的行上消失。这已修复。

{p 4 9 2}
{* 修复}
21.  {cmd:c(mode)} {help creturn_zh} 值已添加到 Stata 的控制台版本中。

{p 4 9 2}
{* 修复}
22.  从结果窗口或查看器窗口打印时，最后一行不会被打印出去。已修复。

    {title:Stata 可执行文件，Unix}

{p 4 9 2}
{* 修复}
23.  {help graph_zh} 文本与 {help alignmentstyle_zh:vertical alignment} 的 {cmd:middle} 或 {cmd:top} 的上标和下标稍微偏移。已修复。

{p 4 9 2}
{* 修复}
24.  {cmd:c(mode)} {help creturn_zh} 值已添加到 Stata 的控制台版本中。

{marker up19jul2011}{...}
{hline 8} {hi:更新 19jul2011} {hline}

    {title:Ado文件}

{p 5 9 2}
{* 增强}
1.  在线帮助和搜索索引已经更新，适用于 {help sj_zh:Stata Journal} 11(2)。

{p 5 9 2}
{* 修复}
2.  {helpb stcox_postestimation##estatcon:estat concordance} 在 {help stcox_zh} 之后不允许使用 bootstrap 或 jackknife 调整的标准误。这已修复。

{p 5 9 2}
{* 修复}
3.  {helpb ivregress postestimation##estatendog:estat endogenous} 在 {help ivregress_zh} 之后有时报告错误，当指定因子变量时会出现错误。这已修复。

{p 5 9 2}
{* 修复}
4.  {help gmm_zh} 使用字符串集群变量产生了不正确的标准误差。这已修复。

{p 5 9 2}
{* 增强}
5.  {helpb svy jackknife} 现在在由于模型变量的缺失值而丢弃的子人口观察值时报告注释。该注释解释了为何 {cmd:svy} {cmd:jackknife} 可能报告没有足够的观察值来计算标准误差，并给出建议以解决此问题。

{p 5 9 2}
{* 修复}
6.  {help margins_zh} 不正确地允许选项 {cmd:vce(unconditional)} 与 {helpb svy bootstrap} 和 {helpb svy sdr} 一起使用。在这种情况下，标准误没有使用 bootstrap 或 SDR 方法计算，而是基于当前的 {help svyset_zh} 设计线性化。使用选项 {cmd:vce(unconditional)} 的 {cmd:margins} 现在在 {cmd:svyset} 数据上将报告错误，如果默认的 {opt vce()} 与 {cmd:linearized} 不同，或者当前估计的标准误不是 {cmd:linearized}。

{p 5 9 2}
{* 修复}
7.  {help mca_zh} 不允许 {it:{help varlist_zh}} 使用 {cmd:*} 或 {cmd:_all} 的符号表示当前数据集中所有变量。这已修复。

{p 5 9 2}
{* 修复}
8.  {helpb mi estimate} 现在检查结构变量（通过 {cmd:stset}、{cmd:svyset}、{cmd:tsset} 或 {cmd:xtset} 声明的变量）是否被注册为被动或插补，并在有任何情况下发出错误消息。

{p 5 9 2}
{* 修复}
9.  {helpb mi import flongsep} 在选项 {cmd:using()} 中指定的文件夹名称中的空格不被尊重。这已修复。

{p 4 9 2}
{* 修复}
10.  {helpb mi impute} 有以下修复：

{p 9 13 2}
     a.  {helpb mi impute ologit} 失败，未能检测到模拟的后验估计中的切割点未满足单调性约束。这可能导致插补变量的中间类别被低估。这种情况可能发生在独立变量中存在因子变量的情况下。这已修复。

{p 9 13 2}
     b.  {helpb mi impute regress} 和 {helpb mi impute pmm} 与分析权重一起使用会产生小于应有的插补值的离散度。这已修复。

{p 9 13 2}
     c.  {helpb mi impute} 现在在显示完整、不完整、插补和总观察值数时，将缺失频率权重视为1而不是0。这不会影响插补程序，仅会影响插补表中显示的观察值数。

{p 4 9 2}
{* 修复}
11.  {helpb mprobit_postestimation##predict:predict} 在 {help mprobit_zh} 之后不允许选项 {opt equation()} 作为 {opt outcome()} 的同义词。这已修复。

{p 4 9 2}
{* 修复}
12.  {help proportion_zh} 使用前缀 {helpb svy brr} 或 {helpb svy jackknife} 和选项 {opt subpop()}，如果排除一个或多个变量类别，则报告 "{err:计算 jackknife 标准误的观察值不足}" 错误。这已修复。

{p 4 9 2}
{* 修复}
13.  {help proportion_zh}、{help ratio_zh}、{help mean_zh} 和 {help total_zh} 在没有观察到的情况下返回更好的错误消息。

{p 4 9 2}
{* 修复}
14.  {helpb robvar} 不允许选项 {opt group()} 中的字符串变量。这已修复。

{p 4 9 2}
{* 修复}
15.  {help smooth_zh} 在未指定任何平滑器时给出不明确的错误消息。该消息已改进。

{p 4 9 2}
{* 修复}
16.  {help svy_tabulate_zh:svy: tabulate} 使用选项 {opt ci} 和 bootstrap 或 SDR 标准误差时报告的置信区间对于指定的 {opt level()} 而过于狭窄。这已修复。

{p 4 9 2}
{* 修复}
17.  {help svy_tabulate_zh:svy: tabulate} 使用选项 {opt stdize()} 和其中一个用于方差估计的复现方法会错误地报告语法错误，指出不允许选项 {opt stdize()}。这已修复。

{p 4 9 2}
{* 修复}
18.  {help truncreg_zh} 在计算截断之前观察值的数量时未能尊重频率权重，{cmd:e(N_bf)}。这已修复。

{p 4 9 2}
{* 修复}
19.  {help xtpoisson_zh} 使用选项 {opt re} 和 {opt normal} 时未能在指定 {opt noskip} 时估计仅常量模型。这已修复。

{p 4 9 2}
{* 修复}
20.  {help xtreg_zh:xtreg, re} 错误地报告 GLS 估计假设随机效应的高斯分布。已修复。

{p 4 9 2}
{* 修复}
21.  {helpb xttest0} 报告统计量为一度自由度卡方分布时，其实际为一度自由度的 50:50 混合的卡方分布，且其中一个为零。这已修复。

{hline 8} {hi:更新 30mar2011} (Stata 版本 11.2) {hline}

    {title:Ado-files}

{p 5 9 2}
{* 修复}
1.  {help bstat_zh} 忽略了 {opt if} 和 {opt in} 限制。这已修复。

{p 5 9 2}
{* 修复}
2.  在某些情况下，当文本添加到 {helpb graph bar}、{helpb graph box} 或 {helpb graph dot} 图形中，使用选项 {cmd:text()} 并随后在 {help Graph Editor} 中编辑该文本时，{helpb graph use} 在 {helpb graph save} 之后会失败，显示错误消息。已修复。

{p 5 9 2}
{* 修复}
3.  在 {help Graph Editor} 中使用 {bf:Grid} {bf:Edit} 工具时，向上或向下扩展或收缩单元格时可能会失败执行扩展或收缩操作。已修复。

{p 5 9 2}
{* 修复}
4.  {help merge_zh} 如果主数据集中包含临时变量，则很少会报告没有观察值被合并，即使它们被合并。已修复。

{p 5 9 2}
{* 修复}
5.  {help merge_zh} 在选项 {cmd:keep()} 下，在少数情况下可能会报告所需的内存超过实际必要的内存。已修复。

{p 5 9 2}
{* 修复}
6.  {helpb mi impute} 具有以下修复：

{p 9 13 2}
    a.  {helpb mi impute pmm} 有时在生成缺失插补值时未能发出错误信息，而是如同 {cmd:force} 选项被发出后自动继续进行插补。已修复。

{p 9 13 2}
    b.  与文档相反，{helpb mi impute regress} 和 {helpb mi impute pmm} 默认假设频率权重而不是分析权重。实现现在与文档匹配；分析权重为默认。

{p 9 13 2}
    c.  {helpb mi impute} 现在将缺失频率权重视为1而不是0， 以显示完整、不完整、插补和总观察值数。这不会影响插补过程，只会影响显示的观察值数。

{p 5 9 2}
{* 修复}
7.  {helpb mprobit_postestimation##predict:predict} 在 {help mprobit_zh} 之后不允许选项 {opt equation()} 作为 {opt outcome()} 的同义词。这已修复。

{p 5 9 2}
{* 修复}
8.  {help proportion_zh} 在使用前缀 {helpb svy brr} 或 {helpb svy jackknife} 以及选项 {opt subpop()} 排除一个或多个变量类别的情况下，报告 "{err:计算 jackknife 标准误的观察值不足}" 错误。这已修复。

{p 5 9 2}
{* 修复}
9.  {help proportion_zh}、{help ratio_zh}、{help mean_zh} 和 {help total_zh} 在没有观察值的情况下返回更好的错误消息。

{p 5 9 2}
{* 修复}
10.  {helpb robvar} 在选项 {opt group()} 中不允许字符串变量。这已修复。

{p 5 9 2}
{* 修复}
11.  {help smooth_zh} 在未指定任何平滑器时给出不明确的错误消息。该消息已改进。

{p 5 9 2}
{* 修复}
12.  {help svy_tabulate_zh:svy: tabulate} 使用选项 {opt ci} 和 bootstrap 或 SDR 标准误差时报告的置信区间在指定的 {opt level()} 下过于窄。已修复。

{p 5 9 2}
{* 修复}
13.  {help svy_tabulate_zh:svy: tabulate} 使用选项 {opt stdize()} 和一个用于方差估计的方法时，会错误报告语法错误，指出选项 {opt stdize()} 不被允许。已修复。

{p 5 9 2}
{* 修复}
14.  {help truncreg_zh} 未能尊重频率权重以计算截断之前的观察值数，{cmd:e(N_bf)}。已修复。

{p 5 9 2}
{* 修复}
15.  {help xtpoisson_zh} 使用选项 {opt re} 和 {opt normal} 时未能估计只常数模型，指定了 {opt noskip}。已修复。

{p 5 9 2}
{* 修复}
16.  {help xtreg_zh:xtreg, re} 错误地报告 GLS 估计假设随机效应呈高斯分布。已修复。

{p 5 9 2}
{* 修复}
17.  {helpb xttest0} 报告的测试统计量来自于一度自由度卡方分布，而实际上它们来自于一度自由度的 50:50 混合的卡方分布，其中一个值为零。已修复。

{hline 8} {hi:更新 30mar2011} (Stata 版本 11.2) {hline}

{title:Stata 可执行文件，所有平台}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <whatsnew11.sthlp>}