{smcl}
{* *! version 1.3.0  13sep2017}{...}
{vieweralsosee "whatsnew" "help whatsnew_zh"}
{help whatsnew7:English Version}
{hline}{...}
{title:在 Stata 7 版本中进行的新增功能}

{pstd}
此文件记录了在 Stata 7 版本生命周期内所做的新增和修复：

    {c TLC}{hline 63}{c TRC}
    {c |} 帮助文件        内容                     年份           {c |}
    {c LT}{hline 63}{c RT}
    {c |} {help whatsnew_zh}         Stata 16.0                   2019 至今 {c |}
    {c |} {help whatsnew15to16_zh}   Stata 16.0 新版发布       2019            {c |}
    {c |} {help whatsnew15_zh}       Stata 15.0 和 15.1          2017 至 2019    {c |}
    {c |} {help whatsnew14to15_zh}   Stata 15.0 新版发布       2017            {c |}
    {c |} {help whatsnew14_zh}       Stata 14.0、14.1 和 14.2   2015 至 2017    {c |}
    {c |} {help whatsnew13to14_zh}   Stata 14.0 新版发布       2015            {c |}
    {c |} {help whatsnew13_zh}       Stata 13.0 和 13.1          2013 至 2015    {c |}
    {c |} {help whatsnew12to13_zh}   Stata 13.0 新版发布       2013            {c |}
    {c |} {help whatsnew12_zh}       Stata 12.0 和 12.1          2011 至 2013    {c |}
    {c |} {help whatsnew11to12_zh}   Stata 12.0 新版发布       2011            {c |}
    {c |} {help whatsnew11_zh}       Stata 11.0、11.1 和 11.2   2009 至 2011    {c |}
    {c |} {help whatsnew10to11_zh}   Stata 11.0 新版发布       2009            {c |}
    {c |} {help whatsnew10_zh}       Stata 10.0 和 10.1          2007 至 2009    {c |}
    {c |} {help whatsnew9to10_zh}    Stata 10.0 新版发布       2007            {c |}
    {c |} {help whatsnew9_zh}        Stata  9.0、9.1 和 9.2     2005 至 2007    {c |}
    {c |} {help whatsnew8to9_zh}     Stata  9.0 新版发布       2005            {c |}
    {c |} {help whatsnew8_zh}        Stata  8.0、8.1 和 8.2     2003 至 2005    {c |}
    {c |} {help whatsnew7to8_zh}     Stata  8.0 新版发布       2003            {c |}
    {c |} {bf:此文件}        Stata  7.0                   2001 至 2002    {c |}
    {c |} {help whatsnew6to7_zh}     Stata  7.0 新版发布       2000            {c |}
    {c |} {help whatsnew6_zh}        Stata  6.0                   1999 至 2000    {c |}
    {c BLC}{hline 63}{c BRC}

{pstd}
最近的更改列在最前。
注意：带星号（*）的项目表示更新已应用于可执行文件。


{hline 5} {hi:更近期的更新} {hline}

{pstd}
请参见 {help whatsnew7to8_zh}。


{hline 5} {hi:更新 05dec2002} {hline}

{p 2 6 2}
1.  在线帮助和搜索索引已更新至
    {help sj_zh:Stata Journal 2(4)}.

{p 2 6 2}
2.  {help binreg_zh} 使用 {cmd:by} {it:...}{cmd::} 前缀未限制基于 {cmd:by} 的观察。 现已修复。


{hline 5} {hi:更新 08nov2002} {hline}

{p 2 6 2}
1.  {help xpose_zh} 不允许在可选的 {cmd:_varname} 变量中指定形式为 "v" 后跟数字的变量名称，例如 "v1" 或 "v2"；现已修复。


{hline 5} {hi:更新 28oct2002} {hline}

{p 2 6 2}
1.  {help codebook_zh} 在输出中拼写 "trailing" 错误；现已修复。

{p 2 6 2}
2.  {help savedresults:savedresults compare} 未能比较矩阵；现已修复。

{p 2 6 2}
3.  {help testnl_zh} 在表达式用括号括起来时未允许使用 {cmd:g()} 或 {cmd:r()} 选项（这是 {cmd:testnl} 的第二种语法）；现已修复。


{hline 5} {hi:更新 14oct2002} {hline}

{p 2 6 2}
1.  {help adjust_zh} 在使用 {cmd:offset()} 或 {cmd:exposure()} 指定的模型后进行的调整，如果这些值在由 {cmd:adjust} 的 {cmd:by()} 选项定义的分组内变化，将随意选择每组中发现的一个 {cmd:offset()} 或 {cmd:exposure()} 值来计算预测。现在，{cmd:adjust} 要求 {cmd:offset()} 或 {cmd:exposure()} 在由 {cmd:adjust} 的 {cmd:by()} 选项定义的组内保持常量，或需要指定 {cmd:adjust} 的 {cmd:nooffset} 选项。


{hline 5} {hi:更新 02oct2002} {hline}

{p 2 6 2}
1.  {help mvreg_zh} 使用共线的 x 变量正确删除了共线变量，但未相应从 {cmd:e(k)} 和 {cmd:e(df_r)} 中删除它们的计数，导致标准误差略大于应有值。现已修复。


{hline 5} {hi:更新 25sep2002} {hline}

{p 2 6 2}
1.  {help swilk_zh:swilk, lnnormal} 在有 11 个或更少观察时会失败；现已修复。

{p 2 6 2}
2.  {help xtabond_zh} 在样本因先定变量的滞后比因内生变量的滞后更受限时，生成了不正确的 {cmd:e(sample)}；现已修复。


{hline 5} {hi:更新 18sep2002} {hline}

{p 2 6 2}
1.  在线帮助和搜索索引已更新至
    {help sj_zh:Stata Journal 2(3)}.

{p 2 6 2}
2.  {help kdensity_zh:kdensity, parzen} 在指定 {help weights} 时未能应用权重；现已修复。

{p 2 6 2}
3.  {help svytab:svytab, ci} 现在在指定多个 {cmd:cell}、{cmd:count}、{cmd:row} 或 {cmd:column} 选项时提供更好的错误信息。

{p 2 6 2}
4.  {help tabodds_zh:tabodds, woolf or} 错误地将 Woolf 置信区间标记为 Cornfield；现已修复。 

{hline 5} {hi:更新 09aug2002} {hline}

{p 2 6 2}
1.  {help clkmeans:cluster kmeans} 和 {help clkmed:cluster kmedians} 在使用二进制 {help cldis:dissimilarity measure} 选项（例如 {cmd:matching}、{cmd:Jaccard} 等）且使用没有零的非二进制数据时，会导致 Stata 崩溃。现在会显示适当的错误信息。

{p 2 6 2}
2.  {help egen_zh:egen ... cut()} 在 {cmd:at()} 选项时于 08may2002 更新，使得 {@it:k} 而不是 {it:k}-1 类别在 {cmd:at()} 中被指定的情况下创建。现已恢复原先创建 {it:k}-1 类别的行为。

{p 6 6 2}
    一些人认为 {cmd:at()} 应当创建 {it:k} 类别，而其他人则反驳说 {it:k}-1 是最自然的。无论如何，08may2002 的更改本应不出现，因为 StataCorp 政策规定，版本发布期间的更新只用于修复错误和增加新功能，而不是更改现有功能。

{p 2 6 2}
3.  {help xtivreg_zh:xtivreg, be} 在 [{cmd:if} {it:exp}] 或
    [{cmd:in} {it:range}] 时未保存 {cmd:e(sample)}；现已修复。

{hline 5} {hi:更新 02aug2002} {hline}

{p 2 6 2}
1.  {help collapse_zh} 在所有观察都等于缺失值 (.) 的情况下会生成标准差 ({cmd:sd}) 为 0，尽管均值会生成缺失值。{cmd:collapse} 现在也会为标准差生成缺失值。

{p 2 6 2}
2.  {help ksm_zh:ksm, logit by()} 在正确处理 {cmd:by()} 图形选项时未能执行；现已修复。

{p 2 6 2}
3.  {help roctab_zh} 在由于循环中的临时变量未在每次迭代结束时被删除而导致的 "not enough memory" 错误中可能会出现。现已修复。

{p 2 6 2}
4.  {help ssc_zh} 有了新的子命令 {cmd:whatsnew} -- 只需输入 {cmd:ssc} {cmd:whatsnew} -- 概括了最近可用或更新的包。输出在查看器中呈现，您可以点击以了解更多或安装。
    参见帮助 {help ssc_zh}。

{hline 5} {hi:更新 18jul2002} {hline}

{title:Stata 可执行文件(*)}

{p}
18jul2002 更新仅与 64 位可执行文件相关： 64 位 Sun Solaris、64 位 SGI IRIX 和 Tru64/Digital Unix。对于所有其他平台（包括 Windows、Mac 和所有其他 Unix），11jun2002 的可执行文件仍然是最新的。

对于 64 位可执行文件：

{p 2 6 2}
1.  在 64 位计算机上运行 Stata 时，当内存中数据超过 2GB 且需要某些内存重组时，可能会崩溃。现已修复。

{hline 5} {hi:更新 11jul2002} {hline}

{p 2 6 2}
1.  {help boxcox_zh} 将 {cmd:iweight}s 视为 {cmd:fweight}s，而不允许非整数的 {cmd:iweight}s（见帮助 {help weights}）；现已修复。

{p 2 6 2}
2.  {help egen_zh} 现在允许在 {cmd:values()} 选项中使用更长的 {help numlist_zh}，适用于 {cmd:eqany()} 和 {cmd:neqany()} 函数。

{p 2 6 2}
3.  {help nl_zh} 现在生成更具信息性的错误信息。

{p 2 6 2}
4.  {help svytab:svytab, missing} 在存在缺失值时未能运行；现已修复。

{p 2 6 2}
5.  {help svytab} 偶尔会覆盖用户指定的 {cmd:stubwidth()} 和 {cmd:cellwidth()} 选项（在 21jun2002 更新中添加）。现已修复。

{hline 5} {hi:更新 21jun2002} {hline}

{p 2 6 2}
1.  在线帮助和搜索索引已更新至
    {help sj_zh:Stata Journal 2(2)}.

{p 2 6 2}
2.  {help glm_zh} 先前使用模型自由度作为计算成分来计算贝叶斯信息准则 (BIC)，而文献中更常见的 BIC 公式使用残差自由度。{cmd:glm} 现在使用残差自由度计算 BIC。

{p 2 6 2}
3.  {help newey_zh} 现在保留数据的排序顺序。

{p 2 6 2}
4.  {help svytab} 具有新选项：{cmd:cellwidth()}、{cmd:csepwidth()} 和 {cmd:stubwidth()}。有关详细信息，请参见帮助 {help svytab}。

{hline 5} {hi:更新 11jun2002} {hline}

{p 2 6 2}
1.  {help blogit} 和 {help bprobit} 与 {cmd:cluster()} 或 {cmd:offset()} 选项一起产生错误信息；现已修复。

{p 2 6 2}
2.  {help dstdize_zh} 在检查数据时忽略了 {cmd:if} 和 {cmd:in} 限定符；现已修复。

{p 2 6 2}
3.  {help egen_zh:egen ... cut(), label} 由于 08may2002 ado 文件更新而给出了不正确的值标签；现已修复。

{p 2 6 2}
4.  {help fracpoly_zh} 在模型精确拟合数据时报告了缺失值；现已修复。

{p 2 6 2}
5.  {help icd9_zh:icd9 check} 和 {help icd9p_zh:icd9p check} 与 {cmd:generate()} 选项一起，如果操作系统的临时文件目录名称中有空格，则会失败；现已修复。

{p 2 6 2}
6.  {help glm_zh:predict, anscombe} 在 {help glm_zh} 之后使用负二项和非伯努利二项模型时生成不正确的结果。现已修复。

{p 2 6 2}
7.  {help xtabond_zh}： 进行了多个改进和错误修复。

{p 6 10 2}
    A.  {cmd:xtabond} 未能使用预定变量的第一个可用矩条件，导致估计是一致的但效率低下。现已修复。

{p 6 10 2}
    B.  {cmd:xtabond} 在所有面板共享一个间隔时，未能正确计算 Sargan 测试的自由度。现已修复。

{p 6 10 2}
    C.  {cmd:xtabond, robust} 和 {cmd:xtabond, twostep} 在某些数据集上，可能会由于过于严格的容忍度而不必要地退出，出现错误 "matrix not symmetric", r(505)。现已修复。

{p 6 10 2}
    D.  {cmd:xtabond, noconstant} 要求指定外生变量，即使已指定预定变量。现允许在指定外生或预定变量时使用 {cmd:noconstant}。

{p 6 10 2}
    E.  {cmd:xtabond} 现在允许内生回归变量；有关语法，请参见帮助 {help xtabond_zh}。

{p 6 10 2}
    F.  {cmd:xtabond} 现在快 17%。

{p 2 6 2}
8.  {help xtgls_zh} 改进了错误信息。

{p 2 6 2}
9.  {help xtivreg_zh}:  已进行了一项改进和一项修复。

{p 6 10 2}
    A.  {cmd:xtivreg} 现在分别检查外生变量和工具变量的 varlists 中的共线性。确保当一个工具与外生变量完全共线时，是工具被从回归中删除，而非外生变量。

{p 6 10 2}
    B.  {cmd:xtivreg, fd} 未保存 {cmd:e(sample)}。现已修复。

{p 1 6 2}
10.  {help xtregar_zh:xtregar, fe} 在存在时间序列操作变量时显示临时变量名称。现已修复。

{title:Stata 可执行文件(*)}

{p 1 6 2}
11.  (所有平台)
     {help usersite_zh:.pkg} 文件中的最大显著 {cmd:d}escription 行数已从 20 增加到 100。以前，仅列出前 20 行 {cmd:d}escription。现在，将列出前 100 行。

{p 1 6 2}
12.  (所有平台)
     {help functions_zh:lngamma()} 函数现在具有 8 至 9 位的精度，而以前仅有 6 至 7 位。

{p 1 6 2}
13.  (所有平台)
     内部服务例程已修改，以支持上述 {help xtabond_zh} 中进行的更改。

{p 1 6 2}
14.  ({help specialedition:Stata/SE}, 所有平台)
     使用 {help edit_zh:data editor}，如果您在字符串变量末尾增加内容，使其超过 {help str:str80}，变量内容将被截断为 80 个字符。现已修复（在 Stata/SE 中，字符串的最大长度为 244 个字符）。

{p 1 6 2}
15.  (Stata for Unix)
     使用打印对话框时，如果未定义 PostScript 打印机，将导致 Stata 崩溃。现在，Stata 显示描述问题的错误消息。

{hline 5} {hi:更新 08may2002} {hline}

{p 2 6 2}
1.  {help alpha_zh}，如果与多个变量一起调用并且其中一个变量因常量而被删除，则导致所有后续变量均被删除。现已修复。

{p 2 6 2}
2.  {help destring_zh} 在调用多个变量时可能由于 04apr2002 更新中的更改而失败。现已修复。

{p 2 6 2}
3.  {help egen_zh:egen ... cut()} 在 {cmd:at()} 选项中以前在 {it:k} 数字被指定时创建了 {it:k}-1 类别，超出 {it:k}th 值的值被映射为缺失值。现已创建 {it:k} 类别，并且超出 {it:k}th 元素的值被映射为 {it:k}th 元素。

{p 2 6 2}
4.  {help mfx_zh} 在某些命令之后的预测时产生了不正确的标准误；现已修复。

{p 6 10 2}
    A.  {cmd:mfx} 在任何估计命令之后对通过 {cmd:predict} 计算的任何统计量计算标准误，尽管这可能不合适，例如预测残差。不过，计算的边际效应，尽管不合适，却遵循定义，因此是 "正确" 的，但标准误并不正确，实际上无法通过普通方式计算。在这种情况下，现在报告边际效应，但不报告标准误。

{p 6 10 2}
    B.  {cmd:mfx} 计算的标准误在以下情况下不正确：

{p 10 16 2}
	  B.1.  在 {help regress_zh}、{help truncreg_zh}、{help cnsreg_zh}、{help heckman_zh}、{help eivreg_zh}、{help intreg_zh}、{help svyintreg} 和 {help tobit_zh} 之后，{cmd:pr(}{it:a}{cmd:,}{it:b}{cmd:)}、{cmd:e(}{it:a}{cmd:,}{it:b}{cmd:)} 和 {cmd:ystar(}{it:a}{cmd:,}{it:b}{cmd:)} 的预测。

{p 10 16 2}
	  B.2.  在 {help xtnbreg_zh} 之后，对于 {cmd:nu0} 和 {cmd:iru0} 的预测。

{p 10 16 2}
	  B.3.  在 {help heckman_zh} 之后，预测 {cmd:ycond} 和 {cmd:yexpected}。

{p 10 16 2}
	  B.4.  在 {help streg_zh:streg, dist() frailty()} 之后获得的预测，且不考虑脆弱性。

{p 10 10 2}
	 在所有其他情况下，报告的边际效应和标准误都是正确的。这包括在 {help probit_zh}、{help logit_zh}、{help mlogit_zh} 等之后的使用。

{p 10 10 2}
	 在列出的情况下，报告的边际效应是正确的，但标准误是错误的；现已修复。在（B.1）的情况下，{cmd:pr(}{it:a}{cmd:,}{it:b}{cmd:)}、{cmd:e(}{it:a}{cmd:,}{it:b}{cmd:)} 和 {cmd:ystar(}{it:a}{cmd:,}{it:b}{cmd:)} 的边际效应对所有命令均报告，但标准误不会在 {help regress_zh}、{help cnsreg_zh} 和 {help eivreg_zh} 之后报告。

{p 6 6 2}
    (B) 中的所有案例都涉及在模型中存在副参数时计算标准误，且这些参数要么未在系数向量中记录（例如，在线性回归中 RMSE），要么记录在 e() 标量以及系数向量中，且相应的 {cmd:predict} 命令使用 e() 标量结果编写。{cmd:mfx} 是通过扰动系数向量并重新计算预测来获取标准误的。在上述所有情况下，副参数的不确定性影响在边际效应的标准误计算中被忽略。

{p 6 6 2}
    因此，修复问题实际上是对相应的 {cmd:predict} 命令进行了更改。此外，{cmd:mfx} 已修改，以验证 {cmd:predict} 的结果仅是系数向量的函数，如果不是，则 {cmd:mfx} 阻止报告标准误。

{p 6 6 2}
    (A) 中的案例也类似于预测并不完全是系数向量的函数，但在那些情况下，要求的是不合适的，因为标准误实质上也依赖于其他因素。由于 {cmd:mfx} 现在检查 {cmd:predict} 的结果是否仅为系数向量的函数，因此不合适的标准误将不再报告。

{p 2 6 2}
5.  {help mfx_zh} 未能清除其估计结果，因此如果你输入 "{cmd:mfx compute}"，然后输入 "{cmd:mfx compute, nose}"，会显示好像 {cmd:nose} 选项被忽略。现已修复。

{p 2 6 2}
6.  {help mfx_zh:mfx compute, predict(residual)} 在 {cmd:regress} 之后会声称忽略您的规格 {cmd:predict(residual)}，然后实际上不忽略它。现已修复。

{p 2 6 2}
7.  {help streg_zh:predict} 在 {cmd:streg} 之后现在更好地标记新变量并生成更具信息性的错误信息。

{p 2 6 2}
8.  {help streg_zh:predict, mean time} 现在在 {cmd:streg, dist(gamma)} 之后可用。 ({cmd:predict} 在 {cmd:streg, dist(gamma)} 之后以前无法进行均值时间计算)。

{p 2 6 2}
9.  {help zip_zh:predict, ir} 在 {cmd:zip} 和 {cmd:zinb} 之后使用时生成语法错误。现已修复。

{p 1 6 2}
10.  {help zip_zh:predict, n nooffset} 在 {cmd:zip} 和 {cmd:zinb} 之后使用时，会将 {cmd:nooffset} 选项应用于主方程和 "膨胀" 方程，但实际上只应应用于主方程。现已修复。

{p 1 6 2}
11.  {help xtgls_zh} 和 {help xtpcse_zh} 在指定 {help aweight}s 时给出了错误的标准误；现已修复。

{title:Stata 可执行文件(*)}

{p 1 6 2}
12.  {help tabdisp_zh} 和 {help table_zh} 在 3 维表格中错误地对齐了超列上方的值标签，并显示了诸如 "{c -(}hline -4{c )-}" 的文本，当值标签非常长时。现已修复。

{p 1 6 2}
13.  与 {help reshape_zh} 报告的崩溃原因已修复。崩溃实际上是由以下一系列事件引发的：（1）加载了长且非常窄的数据集，几乎填满内存；（2）数据通过 {help drop_zh:drop _all} 被删除；（3）然后使用 {help obs_zh:set obs} 创建了一个 0 变量的数据集；（4）最后通过 {help generate_zh} 创建的变量本身宽度超过了之前加载的窄数据集的宽度之和。Stata 在 {cmd:generate} 时会崩溃，因为它试图自动重新划分内存。

{p 1 6 2}
14.  (Windows) 现在可以在 do-file 编辑器中打开路径长度超过 128 个字符的文件名。

{p 1 6 2}
15.  (Mac) 使用 {cmd:set slash on} 时，包含文件路径的宏将不正确地扩展；现已修复。

{p 1 6 2}
16.  (Mac) 在按下返回按钮后，如果滚动条未在文档顶部，则查看器窗口有时未能正确刷新其内容。现已修复。

{p 1 6 2}
17.  (Mac) 在 OS X 中，如果查看器窗口位于结果窗口前面，则无法在遮挡结果窗口的查看器区域进行选择。现已修复。

{hline 5} {hi:更新 04apr2002} {hline}

{p 2 6 2}
1.  {help cci} 如果输入的四个数字中有一个为零，可能会进入无限循环；现已修复。

{p 2 6 2}
2.  {help destring_zh} 现在在 {cmd:generate()} 选项中允许简写的 {it:newvarlist}。例如，

{p 10 14 2}
	{cmd:. destring a b c x y z, generate(v1-v6)}

{p 6 6 2}
    生成六个变量 (v1, v2, ... v6)。

{p 2 6 2}
3.  {help destring_zh} 在指定大量变量（300+）时会失败；现已修复。

{p 2 6 2}
4.  {help ir_zh:ir, by() ird} 为分层发生率数据计算标准化比率差 (SRD) 时未给出正确标准误；现已修复。

{p 2 6 2}
5.  在 09jan2002 更新中，{help streg_zh:predict} 在 {cmd:streg, frailty()} 之后忽略了用户指定的可选存储类型，而是使用默认类型（{help float}）创建了变量。现已修复。

{p 2 6 2}
6.  {help tabodds_zh:tabodds, cornfield} 计算确切置信区间而不是请求的 Cornfield 置信区间；现已修复。

{p 2 6 2}
7.  {help tabodds_zh} 在某些情况下对于某些比率报告了缺失值；现已修复。

{hline 5} {hi:update 22mar2002} {hline}

{title:Stata 可执行文件(*)}

{p 2 6 2}
1.  (所有平台)
    {help more_zh:set more} 有新的 {cmd:permanent} 选项，将导致 Stata 
    在会话之间记住 "more" 设置。例如，可以输入 "{cmd:set more off, permanent}"，以便 (1) 关闭 "more"，(2) Stata 随后会自动将 "more" 关闭。

{p 2 6 2}
2.  (所有平台)
    Stata 对按下中断键的反应时间，以及在长时间计算期间窗口的刷新，有了显著改善。

{p 2 6 2}
3.  (Windows) 在 Windows 98 下，Stata 无法分配超过 256MB 的数据区域；现已修复。

{p 2 6 2}
4.  (Windows) 在 Windows XP 下，用户有时无法从开始菜单启动 Stata。现已修复。

{p 2 6 2}
5.  (Windows) 在 Windows 2000 和 Windows XP 下，单击 Stata 窗口以使其激活，有时未能导致窗口条变为蓝色（即窗口未被激活，尽管窗口获得了键盘焦点，因此允许输入）。最明显的副作用是窗口不允许突出显示文本以复制到其他窗口，这在命令窗口中特别明显。现已修复。

{p 2 6 2}
6.  (Mac) {cmd:set slash} 得到更好的文档说明，并且如果您 {cmd:set slash on}，文件名中的反斜杠 ({cmd:/}) 将在任何地方都被理解为目录分隔符。

{p 2 6 2}
7.  (Mac) 已包含与 OS X 兼容的图标。

{p 2 6 2}
8.  (Mac) {help graph_zh} 有时会输出应垂直对齐的文本，但并未对齐；现已修复。

{p 2 6 2}
9.  (Mac) {help window:window menu clear} 不再导致同一菜单项目出现多次实例。

{hline 5} {hi:update 15mar2002} {hline}

{p 2 6 2}
1.  在线帮助和搜索索引已更新至
    {help sj_zh:Stata Journal 2(1)}.

{p 2 6 2}
2.  {help arima_zh} 现在可与 {help by_zh} 前缀命令一起使用。

{p 2 6 2}
3.  {help arima_zh} 现在允许在样本完全包含在面板数据的一组数据中进行估计和预测（已 {help tsset_zh} 的数据集，具有面板和时间标识符）。这允许在面板上对 {cmd:arima} 进行循环。以前，除非指定了 {cmd:condition} 选项，否则 {cmd:arima} 拒绝在面板数据上估计任何模型。

{p 2 6 2}
4.  {help ci_zh:ci, poisson} 先前在指定 {cmd:exposure()} 选项时，将 {it:varlist} 中的缺失值视为零事件，当对应的暴露变量也未缺失时。现在，{cmd:ci} 排除这些观察。

{p 2 6 2}
5.  {help ml_zh} 和所有使用 {cmd:ml} 的估计器都有了新的容忍度选项以确定收敛：{cmd:nrtolerance()}。当 g*inv(H)*g' < {cmd:nrtolerance()} 时声明收敛，其中 g 表示梯度向量，H 表示赫西矩阵；参见帮助 {help maximize_zh}。

{p 2 6 2}
6.  {help reg3_zh} 在指定 {cmd:noheader} 选项时，会产生多余的水平线；现已修复。

{p 2 6 2}
7.  {help sts_zh:sts generate} 在用户之前使用了 {help merge_zh} 命令并且未删除 {cmd:_merge} 变量的情况下，会在使用时产生错误消息 "_merge already defined"。这是因为，{cmd:sts generate} 在其操作中内部使用了 {cmd:merge} 命令。{cmd:sts generate} 仍然这样做，但现在不再使用变量名称 {cmd:_merge} 来标记其内部合并的结果，这意味着如果您已经做过先前的 {cmd:merge}，{cmd:sts generate} 不会抱怨 {cmd:_merge} 已定义，也不会导致现有 {cmd:_merge} 变量的值发生改变。

{p 6 6 2}
    {help stci_zh} 的行为与 {cmd:sts generate} 相同，因为它使用了 {cmd:sts generate} 作为子程序。{cmd:stci} 不再关心数据集中是否存在 {cmd:_merge} 变量。

{p 2 6 2}
8.  {help xi_zh} 在命令行包含引号时可能会失败；现已修复。

{hline 5} {hi:update 27feb2002} {hline}

{p 2 6 2}
1.  {help icd9_zh} 和 {help icd9p_zh} 已更新以使用 V19 代码；以前使用 V18 代码 (参见 11jun2001 更新) 和 V16 代码。V16、V18 和 V19 代码已合并，以便 {cmd:icd9} 和 {cmd:icd9p} 在旧数据集和新数据集上都能正常工作。关于 {cmd:icd9} 和 {cmd:icd9p} 的描述，请参见帮助 {help icd9_zh}；输入 "{stata icd9 query}" 和 "{stata icd9p query}" 以获取关于使用的代码更改的完整描述。

{p 2 6 2}
2.  {help merge_zh} 不再限制匹配变量的数量；以前的限制为 10。此更改是在 01feb2002 可执行文件更新中实施的，但未提及。

{p 2 6 2}
3.  {help mkmat_zh} 现在更快。

{p 2 6 2}
4.  {help rchart} 和 {help shewhart} 现在允许 [{cmd:if} {it:exp}] 和 [{cmd:in} {it:range}]，如 {hi:[R] qc} 所声明。

{p 2 6 2}
5.  {help stcurve_zh} 在使用 {help streg_zh} 的脆弱性模型进行拟合后，新增了两个选项 {cmd:unconditional} 和 {cmd:alpha1}。
    {cmd:unconditional} 绘制不依赖于脆弱性的曲线。
    {cmd:alpha1} 绘制以脆弱性值为 1 条件下的曲线。
    有关详细信息，请参见帮助 {help stcurve_zh}。

{hline 5} {hi:update 01feb2002} {hline}

{p 2 6 2}
1.  {help statase_zh:Stata/SE} 发布了，允许更多变量、较长字符串和较大矩阵。

{p 6 6 2}
    Stata/SE 不是 Stata 的新版本，因此您无需担心如果不升级就会过时。Stata/SE 7 是 Stata 7 的更大版本。如果 Intercooled Stata 的限制对您造成了困扰，Stata/SE 提供了解决方案。

{p 6 6 2}
    有关更多信息，请参见帮助 {help stata/se}，并在浏览器中访问 {browse "http://www.stata.com"} 获取购买信息。

{p 2 6 2}
2.  {help biprobit_zh} 在异常情况下请求了稳健方差估计时，如果参数 {cmd:/athrho} 被约束，会产生多余的约束丢失信息。该消息不正确，且约束已包含在估计中。现已修复。

{p 2 6 2}
3.  {help bstat_zh} 在某些情况下在计算偏差校正 CI 的端点时可能会以不有用的错误消息退出；现已修复。

{p 2 6 2}
4.  {help corr2data_zh} 和 {help drawnorm_zh} 在 {cmd:cov()} 选项中指定协方差矩阵时，如果矩阵包含方程名称，则可能会导致错误的相关性结构；现已修复。

{p 2 6 2}
5.  {help ssc_zh} 现在对使用代理服务器的用户产生与不使用者相同的信息性错误信息。

{p 2 6 2}
6.  {help stset_zh} 现在保留数据的排序顺序。

{p 2 6 2}
7.  {help xtpcse_zh} 在指定时如果声明矩阵大小小于面板数量，会发出错误消息并拒绝估计模型。现已修复。

{title:Stata 可执行文件(*)}

{p 2 6 2}
8.  Intercooled Stata 已更新为如果数据集不包含长度超过 {help str:str80} 的字符串或超过 2,047 个变量，自动读取新的 {help statase_zh:Stata/SE} .dta 文件格式。

{p 2 6 2}
9.  {help matsize_zh:set matsize} 和 {cmd:set memory} 现在有新的 {cmd:permanent} 选项，在会话之间设置值并记住。

{p 1 6 2}
10.  {help anova_zh} 在估计超过 255 项的模型时可能会导致 Stata 崩溃 (a*b 计算为一个项，无论 a 或 b 有多少级)。现已修复。

{p 1 6 2}
11.  与返回代码 900（添加更多变量没有空间）、901（添加更多观察没有空间）、902（由于宽度添加更多变量没有空间）、903（没有空间推广变量）和 908（matsize 太小）相关的错误消息文本已改进。如果您感兴趣，可以在命令窗口中输入 {cmd:error 900}、...、{cmd:error 903} 和 {cmd:error 908} 查看改进后的文本。

{p 1 6 2}
12.  Stata for Mac 现在可以正确显示在 Windows 下创建的帮助文件中的换行。

{hline 5} {hi:update 09jan2002} {hline}

{p 2 6 2}
1.  {help heckman_zh:heckman, twostep} 未能保存 e(sample)。
    这影响未输出的结果，现已修复。

{p 2 6 2}
2.  {help streg_zh:predict} 在 {cmd:streg, frailty()} 之后有了两个新选项，{cmd:alpha1} 和 {cmd:unconditional}。{cmd:alpha1} 生成条件依赖于脆弱性等于 1 的预测。{cmd:unconditional} 生成不依赖于脆弱性的预测。

{p 6 6 2}
    以前，当用 {cmd:streg, frailty()} 拟合一个脆弱性模型时，如果未指定 {cmd:shared()} 选项，{cmd:predict} 将给出不受约束的预测，现在可以通过使用新选项 {cmd:alpha1} 来覆盖此默认值。

{p 6 6 2}
    以前，当用 {cmd:streg, frailty() shared()} 拟合一个共享脆弱性模型时，{cmd:predict} 的预测是基于脆弱性价值为 1 的条件，现可以通过使用新选项 {cmd:unconditional} 覆盖此默认值。

{p 6 6 2}
    参见帮助 {help streg_zh}。

{p 2 6 2}
3.  {help streg_zh:predict} 在 {cmd:streg, dist(llogistic) ancillary()} 或 {cmd:streg, dist(gamma) ancillary() anc2()} 之后有时基于错误的附属参数估计做出预测。这些估计的附属参数应根据数据变化，但在计算预测时参数有时固定在 {cmd:_n==1} 的值。现已修复。

{p 2 6 2}
4.  {help streg_zh:predict} 在 {help streg_zh} 之后更高效地处理 {cmd:if} 和 {cmd:in} 条件（运行速度更快）。

{p 2 6 2}
5.  {help svydes}、{help svymean}、{help svyprop}、{help svyratio}、{help svytab} 和 {help svytotal} 现在保留数据的排序顺序。

{hline 5} {hi:update 20dec2001} {hline}

{p 2 6 2}
1.  {help ivreg_zh} 不再在 {cmd:e(insts)} 中列出完全共线的变量。

{p 2 6 2}
2.  {help pac} （以及调用了 {cmd:pac} 的 {help corrgram_zh}）在回归时会用来自回归的结果覆盖任何现有的 {cmd:e()} 结果。现在会恢复之前的 {cmd:e()} 结果。

{p 2 6 2}
3.  {help treatreg_zh} 在治疗方程中存在完美预测变量时会报告 "fit conformability error" 并未能运行；现已修复。

{p 2 6 2}
4.  {help xtreg_zh} 现在在面板变量与自变量之间存在共线性时，会发出更合适的错误信息。

{p 2 6 2}
5.  {help xtregar_zh:xtregar, fe} 未能保存 {cmd:e(rmse)}；现已修复。

{hline 5} {hi:update 11dec2001} {hline}

{p 2 6 2}
1.  {help streg_zh} 新增选项 {cmd:shared(}{it:varname}{cmd:)}，用于拟合参数共享脆弱模型，类似于面板数据的随机效应模型：脆弱性值在观察组中是共同的，并在组间随机分布。{cmd:streg} 可以（仍然可以）估计脆弱性模型，其中脆弱性被假定在观察水平上随机分布（在没有新选项 {cmd:shared()} 的情况下指定选项 {cmd:frailty()}）。请参见帮助 {help streg_zh}。

{p 2 6 2}
2.  在线帮助和搜索索引更新为包括对更多可用材料的参考，材料可以在 {browse "http://www.ats.ucla.edu/stat/stata/"} 找到。

{p 2 6 2}
3.  {help adjust_zh} 现在允许在使用 {help svylogit}、{help xtlogit_zh}、{help svyprobit} 和 {help xtprobit_zh} 之后使用 {cmd:pr} 选项。

{p 2 6 2}
4.  {help arima_zh} 在没有协变量的模型和指定选项 {cmd:from(armab0)} 和 {cmd:noconstant} 时会发出错误消息并拒绝估计模型；现已修复。

{p 2 6 2}
5.  {help findit_zh} 未指定 {cmd:saving()} 选项时，现在将文件 _finditresults.smcl 放在由 {help macro_zh:global macro} {cmd:FINDIT_DIR} 指定的目录中（如果已定义），如果未定义则放在当前目录中。

{p 2 6 2}
6.  {help linktest_zh} 现在可以在 {help stcox_zh} 和 {help streg_zh} 之后使用。

{p 2 6 2}
7.  {help nlogit_zh} 使用 {help by_zh} 前缀命令会在给出每个 by 组结果后展示完整样本结果。现在仅展示每个 by 组的结果。

{p 2 6 2}
8.  {help roccomp_zh:roccomp, graph} 现在接受 {cmd:l2title()} {help gr7axes_zh:graph} 选项。此外，{cmd:roccomp, graph binormal} 现在允许 {help gr7color_zh:graph} 的 {cmd:pen()} 选项。

{p 6 6 2}
    {cmd:roccomp, graph} 不再给 45 度线分配一个键。现在只为实际曲线提供键。

{p 2 6 2}
9.  {help roctab_zh} 新增选项 {cmd:specificity} 以图形表示敏感性与特异性，而不是默认的敏感性与 (1-特异性)；请参见帮助 {help roctab_zh}。

{p 1 6 2}
10.  {help treatreg_zh:treatreg, twostep} 未能保存 e(sample)；现已修复。

{p 1 6 2}
11.  {help prais_zh} 可能由于共线性而删除因变量；现已修复。

{p 1 6 2}
12.  {help zip_zh} 和 {help zinb_zh} 现在接受 {cmd:from()} 选项。

{hline 5} {hi:update 07dec2001} {hline}

{title:Stata 可执行文件(*), Windows}

{p 2 6 2}
1.  06dec2001 对 Windows 2000 和 XP 中鼠标无法用于选择文本的问题完成了临时修复，导致 Windows 95 和 98 出现了问题；现已修复。

{hline 5} {hi:update 06dec2001} {hline}

{p 2 6 2}
1.  {help ml_zh} 在与 {cmd:constraints()} 一起估计后，留下名为 ML_CT 和 ML_Ca 的矩阵。

{p 6 6 2}
    现在 {cmd:ml} 将约束矩阵保存在内部矩阵 Cns 中，可以通过输入 "{cmd:matrix} {it:name} {cmd:=} {cmd:get(Cns)}" 来获取。

{p 6 6 2}
    {cmd:ml display} 现在显示与估计相关的任何约束。

{p 6 6 2}
    请注意，任何由 {cmd:ml} 产生的结果都没有问题；这些更改仅影响结果的存储和显示方式。


{title:Stata 可执行文件(*)}

{p 2 6 2}
2.  从 SSC 存档下载时，Stata 偶尔会（一些人甚至会说经常）产生错误消息 "I/O error"，您必须重试。现已修复。（Stata 现在会监控此问题并重新建立连接。）

{p 2 6 2}
3.  在 {help exp_zh:expressions} 中，FORTRAN 语法如 "1d+2" 未被理解为意味着 100，尽管文档声称可以。现在 1d+2 甚至 1d2 都被理解。

{p 2 6 2}
4.  {help foreach_zh} 和 {help forvalues_zh} 现在对 Break 键反应更快。

{p 2 6 2}
5.  {help ivreg_zh:ivreg, beta} 生成了随机的 beta 值（标准化系数）；现在修复了。系数、标准误差、t 统计等都是正确的。

{p 2 6 2}
6.  {help mlogit_zh} 先前在迭代日志之前打印任何约束；现在它在日志之后及系数表之前打印这些约束。请注意，使用 {cmd:mlogit} 生成的结果没有问题；此更改仅影响结果的显示方式。

{p 2 6 2}
7.  {help syntax_zh} 允许新的语法元素 {it:anything}；
    请参见帮助 {help syntax_zh}。

{p 2 6 2}
8.  如果您在由 {help window:window dialog} 创建的对话框中编程，您现在可以通过更改与其相关的宏的内容来重新填充组合框。

{p 2 6 2}
9.  (Windows)
    现在运行多个实例的 Stata 在标题栏中清楚地标记了实例编号。

{p 1 6 2}
10.  (Windows)
    结果和查看器窗口现在具有上下文菜单；在窗口中右键单击以尝试。

{p 1 6 2}
11.  (Windows 和 Mac)
     {help rmsg_zh:set rmsg} 可能会不正确地报告时间的十进制部分；现已修复。

{p 1 6 2}
12.  (Mac)
    现在可以通过从 {hi:Edit} 菜单中选择 {hi:Select All} 来选择结果或查看器窗口的所有内容。

{p 1 6 2}
13.  (Mac)
    打印时出现的任何错误现在会被报告。以前，Stata 依赖 Finder 报告打印问题，但在某些情况下，它并没有这样做。

{p 1 6 2}
14.  (Mac)
    单击变量窗口中的文本将覆盖命令窗口中选定的文本。

{p 1 6 2}
15.  (Unix GUI)
    通过打印对话框打印结果或查看器窗口有时会失败；现已修复。

{p 1 6 2}
16.  (Unix GUI)
     {help window:window menu} 在关键字 {cmd:sysmenu} 被引号包围时，未能允许附加到默认 Stata 菜单；现已修复。

{p 1 6 2}
17.  (Unix GUI)
    如果从 {hi:Window} 菜单选择最小化窗口，Stata 有时会崩溃；现已修复。

{hline 5} {hi:update 14nov2001} {hline}

{p 2 6 2}
1.  在线帮助和搜索索引已更新至
    {help sj_zh:Stata Journal 1(1)}.

{p 2 6 2}
2.  {help loneway_zh} 在 {cmd:exact} 选项下产生正确结果，但在表头中显示虚假的 {help smcl_zh} 命令；现已修复。

{p 2 6 2}
3.  {help ml_zh:ml model, waldtest(0)}，而不是执行，会产生错误消息；现已修复。

{p 2 6 2}
4.  {help nl_zh} 现在将迭代次数保存在 {hi:e(ic)} 中。

{p 2 6 2}
5.  {help nlogit_zh} 与 {help weights} 一起使用时未能正确检查组内常数权重；现已修复。

{p 2 6 2}
6.  {help roctab_zh:roctab, detail} 在极少数情况下可能会产生不正确的结果；现已修复。此外，显示格式已更改，以更好地显示非整数值。

{p 2 6 2}
7.  {help ssc_zh} 是一命令，可以列出并安装来自统计软件组件（SSC）档案的包和文件，常被称为波士顿学院档案，由 {browse "http://repec.org":http://repec.org} 提供。

{p 6 6 2}
    {cmd:ssc} 基于来自达勒姆大学的 Nicholas J. Cox 和波士顿学院的 Christopher Baum 的 {cmd:archutil}。其原始重组是在他们的祝福和参与下完成的。

{p 2 6 2}
8.  {help stcurve_zh:stcurve, hazard} 在 {help stcox_zh} 之后不再允许，因为生成的图不是实际的危险曲线。

{p 2 6 2}
9.  {help tabodds_zh}'  display format 以更好的方式在表格中显示非整数值。

{p 1 6 2}
10.  {help xtivreg_zh} 现在保存被工具化变量的列表到 {hi:e(instd)} 和被工具的列表到 {hi:e(insts)}。

{hline 5} {hi:update 26oct2001} {hline}

{title:Stata 可执行文件(*), 所有平台}

{p 2 6 2}
1.  {help matconst:matrix makeCns}，一个程序员命令，现在允许将约束指定为矩阵或约束数字列表；参见帮助 {help matconst}。这个新的矩阵特性也继承自大多数允许 {cmd:constraints()} 选项的命令，例如 {help cnsreg_zh}。在那些命令中，{cmd:constraints()} 选项现在可以像以前一样用约束数字列表或矩阵名称指定。

{p 2 6 2}
2.  {help mat_put_rr_zh} 是一个新的程序员命令，直接指定要在下一个重放调用中使用的 {hi:Rr} 矩阵；参见帮助 {cmd:mat_put_rr}。

{p 2 6 2}
3.  {help post_zh} 改进了错误消息，以处理过多或过少的表达式参数。

{p 2 6 2}
4.  {help program_zh:program drop}（以及自动生成的 {cmd:program drop}）可能会错误地删除子程序，当子程序与所删除模块中的主程序同名时。现已修复。

{p 2 6 2}
5.  {help search_zh} 现在有新选项 {cmd:sj} 作为现有选项 {cmd:stb} 的同义词，限制搜索到 {browse "http://www.stata-journal.com":Stata Journal} 和 Stata 技术公报。

{title:Stata 可执行文件(*), Windows, 2001年10月27日}

{p 2 6 2}
1.  为无法在 Windows 2000 或 XP 的命令窗口中使用鼠标选择文本的持续问题引入了一种权宜之计。应输入 {cmd:set cmdtitle off}。这样可以使鼠标工作，但会导致窗口标题消失，无法移动窗口或更改其字体。输入 {cmd:set cmdtitle on} 将带回来标题栏，同时也带回了鼠标问题。

{p 6 6 2}
    我们正在着手制定一个永久性的、更优雅的解决方案。有关更多信息，请参见 {browse "http://www.stata.com/support/faqs/win/clickcommand.html"}。

{hline 5} {hi:update 17oct2001} {hline}

{p 2 6 2}
1.  {help bitest_zh}、{help prtest_zh}、{help ttest_zh} 和 {help sdtest_zh} 现在允许在其语法中使用 {cmd:==}，无论在什么地方 {cmd:=} 被允许。
    在这些命令中使用 {cmd:==} 与 Stata 的通用语法更一致，后者将 {cmd:==} 视为表示比较，而 {cmd:=} 意味着赋值。

{p 2 6 2}
2.  {help cc_zh} 和 {help cci} 当选项 {cmd:exact} 与 {cmd:cornfield}、{cmd:woolf} 或 {cmd:tb} 选项组合时，不显示部分结果。现已修复。

{p 2 6 2}
3.  当 {help testnl_zh} 的系数的导数几乎为零时，可能会尝试将缺失值发布到 {hi:e(b)}。现已修复，并显示警告消息。

{p 2 6 2}
4.  {help xtgls_zh} 在其输出标题中报告每组的平均观察数过大；现已修复。 


{hline 5} {hi:update 12oct2001} {hline}

{title:Stata 可执行文件(*), 所有平台}

{p 2 6 2}
1.  在 01oct2001 更新中，{help quietly_zh} 和 {help while_zh} 不能在同一个命令行上进行交互使用。与其输入

           . {cmd:quietly while {c -(}}

{p 6 6 2}
不如输入

            . {cmd:quietly {c -(}}
            .    {cmd:while} ...
            . {cmd:{c )-}}

{p 6 6 2}
这已修复。

{title:Stata 可执行文件(*), Mac}

{p 2 6 2}
1.  在 OS X 下，有一个新的菜单项 {hi:Bring All to Front}。该项将所有 Stata 窗口带到最前面。

{p 2 6 2}
2.  数字键盘上的 Enter 键现在被识别为回车。

{p 2 6 2}
3.  在变量窗口中单击变量时，变量名称之前现在输出一个空格，而不是之后。01oct2001 更新声称已修复此问题，但未能做到。

{p 2 6 2}
4.  在 OS 10.1 中，选择 {hi:Minimize} 从 {hi:Window} 菜单时，如果所有窗口已经最小化，会导致崩溃。现已修复；选择 {hi:Minimize} 现在会恢复结果窗口。

{p 2 6 2}
5.  Stata 现在可以正确使用 Internet Config 将非本地 Stata 文件扩展名映射到相应的应用程序。例如，保存扩展名为 .html 的文件将把该文件的类型和创建者设置为您的默认 Internet 浏览器。文件扩展名映射可以通过文件交换控制面板设置。

{p 2 6 2}
6.  原 Mac Menu Manager API 不允许菜单标题中包含 "/"，因此 Stata 将斜杠改为反斜杠 ("\")。新的菜单管理器允许斜杠，因此已删除菜单标题中的反斜杠替换。

{title:Stata 可执行文件(*), 64 位 Sun Solaris 版}

{p 2 6 2}
1.  64 位 Sun Solaris 版的 Stata 已进行 beta 测试。64 位 Sun Solaris 版的 Stata 现在已投入生产并在本次更新中全面支持。

{hline 5} {hi:update 01oct2001} {hline}

{title:Ado 文件, 所有平台}

{p 2 6 2}
1.  {help arima_zh:predict, dyn()} 在 {cmd:arima} 之后有时声称某些缺失值的预测被生成，实际上预测正确生成。现已修复。

{p 2 6 2}
2.  {help xtgls_zh:xtgls, panel(corr)} 在临时文件路径名称中包含空格时会失败；现已修复。

{title:Stata 可执行文件(*), 所有平台}

{p 2 6 2}
1.  {help display_zh} 在极少情况下可能导致 Small Stata 崩溃。现已修复。

{p 2 6 2}
2.  {help gr7oneway_zh:graph, oneway box} 在变量标签过长时可能导致 Stata 崩溃。现已修复。

{p 2 6 2}
3.  {help matscore:matrix score} 在矩阵变量包含时间序列操作符时，极少情况下可能使用错误的时间变量。此问题仅在在 {help tsset_zh} 时间变量更改后立即进行 {cmd:matrix score} 时发生。在这种情况下，将使用先前设置的时间变量。现已修复。

{p 6 6 2}
    {help mleval_zh} 也存在同样的问题，现已修复。

{p 2 6 2}
4.  新的 {help net_zh:net sj} 命令使从新的 {it:{browse "http://www.stata-journal.com/":Stata Journal}} 加载文件变得更容易。该 {it:Journal} 将于 2001 年第四季度开始出版，因此 {cmd:net sj} 现在无任何实用作用。不过，您可以使用第 0 卷第 0 期进行命令测试，表示为 0-0。"{cmd:net sj 0-0}" 显示可用的文件。
    "{cmd:net sj 0-0 xx0001}" 显示与参考编号 xx0001 相关的文件描述。
    请参见帮助 {help net_zh}。

{p 6 6 2}
    命令 {help net_zh:net stb} 现在已记录；请参见帮助 {help net_zh}。{cmd:net stb} 的工作方式类似于 {cmd:net sj}： 输入 "{cmd:net stb 61}" 显示 STB-61 的内容，输入 "{cmd:net stb 61 dm91}" 将显示与 dm91 相关的软件。

{p 2 6 2}
5.  {cmd:translate} 在将图形文件转换为 PostScript 格式时，会错误地转换 {c a'} 和 {c a'g} 等字符。现已修复。

{p 2 6 2}
6.  之前的 17sep2001 可执行文件更新应记录如下： 在极少数情况下，通过交互式定义的程序名称必须会导致导致自动加载的子程序定义被遮蔽。例如，如果 ado 文件 {cmd:mymain} 定义了子程序 {cmd:mysub} 并且 {cmd:mysub} 也被交互式定义，那么即使通过 {cmd:mymain} 被调用时，交互式定义的版本 {cmd:mysub} 将被执行。现已修复。

{title:Stata 可执行文件(*), Mac}

{p 2 6 2}
1.  在 Variables 窗口中单击变量时，变量名称之前现在输出一个空格，而不是之后。现已修复。

{p 2 6 2}
2.  Stata 现在会在显示更改为更小的屏幕尺寸时尝试调整和移动其窗口。

{p 2 6 2}
3.  {help update_zh:update executable} 下载后，在呈现安装新可执行文件的最终说明时，有时会在引用 Stata 可执行文件名称时显示额外（随机）字符。现已修复。

{title:Stata 可执行文件(*), Unix}

{p 2 6 2}
1.  在 Variables 窗口中单击变量时，变量名称之前现在输出一个空格，而不是之后。现已修复。

{p 2 6 2}
2.  {help print_zh} 在将图形文件打印到 PostScript 打印机时，会错误地打印 {c a'} 和 {c a'g} 等字符。现已修复。

{hline 5} {hi:update 17sep2001} {hline}

{title:Stata 可执行文件(*), 所有平台}

{p 2 6 2}
1.  Stata 现在比以前快 6% 到 9% 地运行 ado 文件。

{p 2 6 2}
2.  在 {help edit_zh:data editor} 中复制和粘贴时，Stata 可能会混淆所使用的分隔单元格的字符，从而将所有内容粘贴到单个单元格中。现已修复。

{p 2 6 2}
3.  {help anova_zh} 在没有右侧变量的情况下使用时可能会导致 Stata 崩溃。现已修复。

{p 2 6 2}
4.  {help syntax_zh} 在程序中用于解析用户输入时，未能正确识别业务名称之前带下划线的选项的缩写规则。由于大写字母被理解为最小缩写长度，该语法确实要求用户以大写字母指定选项。现已修复。

{p 2 6 2}
5.  {help checksum_zh:set checksum} 现在默认设置为 {cmd:off} 而不是 {cmd:on}。此更改影响 Stata 通过 Internet 复制文件，包括 {help update_zh}、{help net_zh} 和任何其他使用以 "{cmd:http://}" 开头的文件名的命令。

{p 6 6 2}
    以前，Stata 确定该站点是否存在 checksum 文件，如果存在，则利用该文件中的内容来验证原始文件下载没有错误。为了恢复旧的行为，可以输入 "{cmd:set checksum on}"。

{p 6 6 2}
    我们将默认值设为 {cmd:off}，因为 (1) 我们不知道有任何用户确实存在错误和 (2) 一些位于欧洲的站点使用缓存来节省对美洲的输入/输出。因此，当我们在 www.stata.com 发布新更新时，一些站点会更新其文件的缓存，但不会更新检查文件，从而使 Stata 被误导为下载存在错误。这样会导致一些用户无法更新他们的 Stata。

{title:Stata 可执行文件(*), Mac}

{p 2 6 2}
6.  在编辑器中单击删除按钮时，Stata for OS X 可能会崩溃。现已修复。

{p 2 6 2}
7.  现有 Stata for OS X 的控制台版本。
    有关详情，请参见 {browse "http://www.stata.com/support/osx/#console"}。

{title:Stata 可执行文件(*), Unix}

{p 2 6 2}
8.  {help window:window menu append popout sysmenu} 不是附加一个新菜单到系统菜单，而是错误地首次清空系统菜单；现已修复。

{hline 5} {hi:update 06sep2001} {hline}

{p 2 6 2}
1.  {help mfx_zh} 现在在生成预测时遵循调用程序的版本。

{p 2 6 2}
2.  回归诊断命令 {help acprplot}、{help cprplot}、{help hettest}、{help lvr2plot}、{help ovtest_zh}、{help rvfplot} 和 {help rvpplot} 已扩展为在 {help anova_zh} 之后工作。

{p 2 6 2}
3.  {help savedresults:savedresults drop} 会产生错误消息并未能操作；现已修复。

{p 2 6 2}
4.  {help vif} 在一些变量由共线性从模型中删除后，有时未能为所有适用变量提供输出；现已修复。

{hline 5} {hi:update 24aug2001} {hline}

{p 2 6 2}
1.  在线帮助和搜索索引更新为 STB Reprints Vol. 10。
    Stata 相关的常见问题在 {browse "http://www.ats.ucla.edu/stat/stata/"} 也已添加至搜索索引。

{p 2 6 2}
2.  {help findit_zh} 现在允许包含 "for" 这个词在搜索关键词中。

{p 2 6 2}
3.  {help ksm_zh} 现在允许 {help gr7other_zh:by()} 选项以为 {help graph_zh}。

{p 2 6 2}
4.  {help xtregar_zh} 在回归中包含时间变量并指定 {cmd:lbi} 选项时不会报告结果。{cmd:xtregar} 现在明确禁止在回归中包含时间变量。

{hline 5} {hi:update 14aug2001} {hline}

{p 2 6 2}
1.  {help bs} 在使用某些用户提供的命令时，会从整个数据集中抽样，即使某些观察最初未被使用。现在，{cmd:bs} 会检查用户提供的命令是否为 e 类，并在这种情况下，仅重新抽样估计子样本中的观察；对其他命令，{cmd:bs} 会显示警告消息。

{p 2 6 2}
2.  {help gompertz} 和 {help stphtest_zh} 经过轻微输出格式更正。

{p 2 6 2}
3.  {help jknife} 在 e 类命令上使用时，现在从 leave-one-out 估算中排除未包含的观察。

{p 2 6 2}
4.  {help nlogit_zh} 在变量 {cmd:group()} 的值大于浮动精度时报告了 "unbalanced data" 错误。现已修复。

{p 2 6 2}
5.  {help xtnbreg_zh:predict, nu0} 和 {help xtnbreg_zh:predict, iru0} 在 {help xtnbreg_zh} 之后已纠正为考虑估计的离散参数。

{hline 5} {hi:update 08aug2001} {hline}

{title:Stata 可执行文件(*), 所有平台}

{p 2 6 2}
1.  {help insheet_zh} 现在有新的 {cmd:delimiter("}{it:char}{cmd:")} 选项，允许您指定一个任意字符来分隔值；请参阅帮助 {help insheet_zh}。

{p 2 6 2}
2.  {help gr7hist_zh:graph, histogram} 新增了 {cmd:percent} 选项，以便在纵轴上放置百分比；请参见帮助 {help gr7hist_zh}。

{p 2 6 2}
3.  {help update_zh} 现在在 {cmd:r()} 中保存各种信息以供程序使用；请参见帮助 {help update_zh}。

{p 2 6 2}
4.  在绘制图形时，如果不同的笔的不同线条厚度没有注意到颜色也未更改的情况已修复。

{p 2 6 2}
5.  {help args_zh:args x "a"}（请注意不正确的双引号）除了生成合适的错误消息，还会导致内存泄漏，以至于用户最终看到错误消息 "out of memory"，因此被迫退出并重新启动 Stata。

{p 2 6 2}
6.  （Windows） {help log_zh:log using} 使用 UNC 名称（即，\\{it:computername}\{it:path}）时，会将 UNC 名称前缀添加到当前目录，并拒绝打开文件。现已修复。

{p 2 6 2}
7.  （Unix）当打印对话被调用

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <whatsnew7.sthlp>}