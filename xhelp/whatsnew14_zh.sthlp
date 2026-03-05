{smcl}
{* *! version 1.1.4  17may2019}{...}
{vieweralsosee "whatsnew" "help whatsnew_zh"}
{help whatsnew14:English Version}
{hline}{...}
{title:Stata 14 版本所做的新增功能}

{pstd}
此文档记录了在 Stata 14.0、14.1 和 14.2 版本期间所做的新增和修复：

    {c TLC}{hline 63}{c TRC}
    {c |} 帮助文件       内容                      年份            {c |}
    {c LT}{hline 63}{c RT}
    {c |} {help whatsnew_zh}         Stata 16.0                   2019 至今 {c |}
    {c |} {help whatsnew15to16_zh}   Stata 16.0 新发布          2019            {c |}
    {c |} {help whatsnew15_zh}       Stata 15.0 和 15.1         2017 至 2019    {c |}
    {c |} {help whatsnew14to15_zh}   Stata 15.0 新发布         2017            {c |}
    {c |} {bf:此文件}        Stata 14.0、14.1 和 14.2    2015 至 2017    {c |}
    {c |} {help whatsnew13to14_zh}   Stata 14.0 新发布         2015            {c |}
    {c |} {help whatsnew13_zh}       Stata 13.0 和 13.1         2013 至 2015    {c |}
    {c |} {help whatsnew12to13_zh}   Stata 13.0 新发布         2013            {c |}
    {c |} {help whatsnew12_zh}       Stata 12.o 和 12.1         2011 至 2013    {c |}
    {c |} {help whatsnew11to12_zh}   Stata 12.0 新发布         2011            {c |}
    {c |} {help whatsnew11_zh}       Stata 11.0、11.1 和 11.2    2009 至 2011    {c |}
    {c |} {help whatsnew10to11_zh}   Stata 11.0 新发布          2009            {c |}
    {c |} {help whatsnew10_zh}       Stata 10.0 和 10.1         2007 至 2009    {c |}
    {c |} {help whatsnew9to10_zh}    Stata 10.0 新发布          2007            {c |}
    {c |} {help whatsnew9_zh}        Stata  9.0、9.1 和 9.2     2005 至 2007    {c |}
    {c |} {help whatsnew8to9_zh}     Stata  9.0 新发布          2005            {c |}
    {c |} {help whatsnew8_zh}        Stata  8.0、8.1 和 8.2     2003 至 2005    {c |}
    {c |} {help whatsnew7to8_zh}     Stata  8.0 新发布          2003            {c |}
    {c |} {help whatsnew7_zh}        Stata  7.0                   2001 至 2002    {c |}
    {c |} {help whatsnew6to7_zh}     Stata  7.0 新发布          2000            {c |}
    {c |} {help whatsnew6_zh}        Stata  6.0                   1999 至 2000    {c |}
    {c BLC}{hline 63}{c BRC}

{pstd}
最近的更改列在最前面。

{hline 8} {hi:更近的更新} {hline}

{pstd}
见 {help whatsnew14to15_zh}。

{hline 8} {hi:更新内容 2018年1月29日} {hline}

{p 5 9 2}
1.  新命令 {help lmbuild_zh} 使创建 Mata 函数库比 {helpb mata mlib} 更容易。

{p 5 9 2}
2.  {helpb estat mindices} 在 {help sem_command_zh:sem} 后指定大量被观察的内生变量时，有时会报告缺失值，代表省略的路径或协方差的所有修改指标。 这一问题已得到修复。

{p 9 9 2}
    我们的技术服务团队之前建议在 {cmd:estat} {cmd:mindices} 报告缺失值时使用 undocumented 选项 {cmd:slow}。 这个选项现在不再必要。

{p 5 9 2}
3.  {help ml_zh} 与选项 {cmd:technique(bhhh)}、抽样权重及选项 {cmd:group()} 一起指定时，即使权重在组内是常数，依然会以非信息性错误消息退出。 这一问题已得到修复。


{hline 8} {hi:更新内容 2017年12月19日} {hline}

{p 5 9 2}
1.  社区贡献的命令 {help dataex_zh}，生成适合 Statalist 的格式化数据示例，现在与正式的 Stata 一起发布，以方便希望在 Statalist 上发布数据的任何人。

{p 5 9 2}
2.  {help areg_zh} 在拟合模型时，{opt absorb()} 中指定的变量为 {it:indepvars} 并且选项 {cmd:vce(cluster} {it:clustvar}{cmd:)} 中的 {it:clustvar} 是不同于 {opt absorb()} 变量的变量时，错误地退出，以错误消息 "{err:not sorted}"。 这一问题已得到修复。

{p 5 9 2}
3.  {helpb churdle_postestimation##predict:predict} 选项 {cmd:ystar}、{cmd:ystar(}{it:a}{cmd:,}{it:b}{cmd:)} 或 {cmd:e(}{it:a}{cmd:,}{it:b}{cmd:)} 在使用 {help churdle_zh:churdle exponential} 之后生成的结果不正确。 这一问题已得到修复。

{p 9 9 2}
    当因变量的值较大时，例如我们的实验中大于100或以上时，旧结果和新结果的差异可以忽略不计。 在指数均值模型中，因变量较大的值通常是典型的。 然而，罕见情况下如果因变量很小，旧预测和新预测之间的差异可能会更大；在我们的实验中，变化最多为6%。

{p 5 9 2}
4.  {help esize_zh:esize twosample}，当在 {opt by()} 中指定了字符串变量时，错误地以非信息性错误消息退出。 这一问题已得到修复。

{p 5 9 2}
5.  {help gsem_command_zh:gsem}，当拟合一个包含内生和外生潜变量并且包含一个包含潜变量的交互项的模型时，错误地以非信息性错误消息退出。 {cmd:gsem} 现在按指定的方式拟合模型。

{p 5 9 2}
6.  {help gsem_command_zh:gsem}，当指定或暗示 {opt capslatent} 时，如果模型中某些变量的首字母大写，这些变量会被忽略。 现在 {cmd:gsem} 将这些变量识别为潜在变量。

{p 5 9 2}
7.  {help margins_zh} 具有以下改进和修复：

{p 9 13 2}
     a.  {cmd:margins} 改进了用于计算雅可比矩阵的数值导数逻辑。

{p 9 13 2}
     b.  使用选项 {opt asbalanced} 的 {cmd:margins}，在使用如 {help ologit_zh} 和 {help oprobit_zh} 的序数结果模型的估计结果时，如果没有将因子变量包含在 {it:marginsvars} 中，错误地以错误消息 "{cmd:not conformable}" 退出。这已经得到修复。

{p 9 13 2}
     c.  带选项 {cmd:pwcompare} 的 {help margins_pwcompare_zh:margins} 在计算涉及相同数量因子变量的两个或更多交互项的边际时，错误地计算了边际值。 这一问题已得到修复。

{p 5 9 2}
8.  {help marginsplot_zh} 在选项 {opt dydx()} 和 {opt eydx()} 中绘制多个因子变量的边际效应时，改善了 x 轴刻度的间距。

{p 5 9 2}
9.  {help melogit_zh} 和 {help mepoisson_zh} 在使用选项 {cmd:intmethod(laplace)} 时，当用于拟合二级模型时，可能没有收敛；在模型可以确定的情况下。 这一问题已得到修复。

{p 4 9 2}
10.  前缀命令 {help mfp_zh} 与 {help intreg_zh} 一起使用时，错误地从估计样本中删除所有左侧或右侧截尾的观察值。 {cmd:mfp} 现在保留这些观察值。

{p 4 9 2}
11.  {help ml_zh} 使用方法 {cmd:d1debug} 或方法 {cmd:d2debug}，当指定的模型包含因子变量时，以错误消息 "{err:could not calculate numerical derivatives}" 退出。 这一问题已得到修复。

{p 4 9 2}
12.  {cmd:predict} 在 {helpb logit_postestimation##predict:logit} 和 {helpb probit_postestimation##predict:probit} 之后，当拟合的模型因该模型的完美预测器省略了因子变量的基准水平时，未能根据矩阵 {cmd:e(rules)} 中的信息为预测分配缺失值。 这一问题已得到修复。

{p 4 9 2}
13.  {help putexcel_zh} {it:ul_cell}{cmd:=picture(}{it:filename}{cmd:)} 在您使用复合引号包围 {it:filename} 时产生错误。 这一问题已得到修复。

{p 4 9 2}
14.  {helpb pwcorr} 具有以下修复：

{p 9 13 2}
     a.  {cmd:pwcorr} 在没有观察值和仅两个指定变量的情况下错误地将 {cmd:r(rho)} 存储为 0。 它现在以错误消息 "{err:no observations}" 退出。

{p 9 13 2}
     b.  {cmd:pwcorr} 在没有观察值的前两个变量上并且指定了超过两个变量的情况下，错误地将 {cmd:r(rho)} 存储为 0。 它现在将 {cmd:r(rho)} 正确存储为缺失。

{p 4 9 2}
15.  {help stcox_zh}，在指定选项 {opt shared()} 和 {it:indepvars} 中变量名称超出表格的默认 12 个字符宽度时，生成的系数表在 {cmd:theta} 参数估计的行中的元素对齐不正确。 这个问题已经得到修复。

{p 4 9 2}
16.  {help stepwise_zh} 与选项 {cmd:lockterm1} 和 {cmd:lr} 以及前向选择或前向逐步选择在第一个添加步骤时通过将每个模型与包含强制控制的空模型进行比较来计算似然比。 因此，可能会向模型中添加不满足指定显著性水平的项。 这一问题已得到修复。

{p 4 9 2}
17.  {helpb xtile:xtile, altdef} 未能使用替代公式来计算百分位数，而是使用默认公式进行计算。 这个问题已经得到修复。

{p 4 9 2}
18.  在编辑 > 复制表时，如果负数位于正在复制的行的第一个单元格中，可能会省略负号。 这个问题已得到修复。

{p 4 9 2}
19.  (Mac) macOS 10.13 引入的更改导致 Stata 的数据编辑器在与 {help if_zh:if expression} 一起使用时崩溃。 这个问题已得到修复。


{hline 8} {hi:更新内容 2017年10月10日} {hline}

{p 5 9 2}
1.  {help putexcel_zh} 现在支持选项 {cmd:overwritefmt}，当使用单元格格式语法时。 这让您更高效地写入 Excel 单元格格式。

{p 5 9 2}
2.  {help asclogit_zh}, {help asmprobit_zh}, {help asroprobit_zh} 和 {help nlogit_zh}，当选项 {cmd:case()} 指定的变量值超出 {help creturn_zh:c(maxlong)} = 2,147,483,620 时，将所有关联观察值分组到单个案例中。 这一问题已得到修复。

{p 5 9 2}
3.  {help graph_zh} 忽略了图例选项 {helpb legend_options##location:ring()} 如果方案将图例放置在绘图区域内。 这一问题已得到修复。

{p 5 9 2}
4.  {helpb graph export}，当导出 PDF 时， {help graph_text##symbols:希腊字母} 应用斜体字体，却没有将希腊字母显示为斜体。 这一问题已得到修复。

{p 5 9 2}
5.  {helpb import excel}，当 Excel 文件的路径和文件名没有扩展名时，退出时以错误消息 "{err:file not found}" 表示即使文件存在。 这一问题已得到修复。

{p 5 9 2}
6.  {help margins_zh} 与加权估计结果，数据集中的第一个观察值包含缺失权重值，并且所有自变量固定为常量值的情况下，错误地将所有边际估计为零值并附带 "(omitted)" 的备注。 这一问题已得到修复。

{p 5 9 2}
7.  {help marginsplot_zh}，在使用 {help margins_zh} 时，其中一个因子变量的名称可以同样作为连续变量的缩写，并且在选项 {cmd:at()} 中指定了这两个变量，则以错误消息 "{err:_marg_save has a problem. Margins not uniquely identified.}" 退出。 这一问题已得到修复。

{p 5 9 2}
8.  {helpb tebalance box}，当在 {helpb teeffects} 后使用且治疗变量使用带有空格的值标签时，错误地以错误消息 "{err:invalid syntax}" 退出。 这一问题已得到修复。

{p 5 9 2}
9.  {help zip_zh} 和 {help zinb_zh} 不再支持选项 {cmd:vuong}，该选项指定将报告非嵌套模型的 Vuong 测试。 此测试用于比较零膨胀和非膨胀模型。 但是，最近的工作表明，使用 Vuong 测试进行零膨胀测试是 {help j_vuong_zh:不合适} 的。 如果您希望继续进行测试，请使用带有 undocumented 选项 {cmd:forcevuong} 的零膨胀命令。

{p 4 9 2}
10.  (Windows) {helpb window fopen} 总是显示所有文件，而不是过滤的文件列表。 这个问题已得到修复。

{p 4 9 2}
11.  (Unix GUI) “保存首选项”对话框未打开到正确的目录。 这个问题已得到修复。


{hline 8} {hi:更新内容 2017年9月26日} {hline}

{p 5 9 2}
1.  (Mac) macOS High Sierra（10.13）中的错误可能导致 Stata 在从数据、统计和图形菜单中打开的对话框关闭时崩溃。 这一问题已得到修复。


{hline 8} {hi:更新内容 2017年7月13日} {hline}

{p 5 9 2}
1.  {help mixed_zh} 与选项 {cmd:dfmethod()} 现在在使用 Satterthwaite 和 Kenward-Roger 方法计算自由度时更快。 由于簇含有成千上万的观察值，速度的提升非常显著。

{p 5 9 2}
2.  {help gsem_postestimation_zh:estat eform} 现在在 {help svy_zh}{cmd::} {help gsem_command_zh:gsem} 后得到支持。

{p 5 9 2}
3.  {help bayesmh_zh}，当使用 Gibbs 采样用于具有逆 Wishart 事前分布的协方差矩阵参数，并且在指定的情况下，指定的自由度值为非整数时，返回非信息性错误消息。 现在 {cmd:bayesmh} 以错误消息 "{err:the degrees of freedom must be an integer number}" 退出。

{p 5 9 2}
4.  {help clogit_zh} 与选项 {cmd:vce(bootstrap)} 不允许因子变量符号。 这一问题已得到修复。

{p 5 9 2}
5.  {help exp_zh:Expressions} 包含长度超过 129 个字符的数字字面值可能导致 Stata 崩溃。 这一问题已得到修复，使得 Stata 可以处理任意长度的数字字面值。

{p 5 9 2}
6.  {help fvrevar_zh} 现在将默认数字格式附加到由因子变量生成的所有指示变量。 以前，原始因子变量的数字格式被复制到新变量中。 旧的行为不再在版本控制中保留。

{p 5 9 2}
7.  {helpb graph export} 有以下修复：

{p 9 13 2}
     a.  {cmd:graph export}，在以 PDF 文件格式导出时，如果饼图的扇区角接近 0 度，则错误地将饼图显示为一个完整的圆。 这一问题已得到修复。

{p 9 13 2}
     b.  {cmd:graph export}，在以 EPS 文件格式导出图形时，如果指定了 TrueType 字体的选项 {opt fontface()}，则文本不会以粗体或斜体形式渲染。 这一问题已得到修复。

{p 5 9 2}
8.  {help gsem_command_zh:gsem}，当具有多级潜变量、多个结果变量和某些观察变量中缺失值的时候，错误地以错误消息 "{err:missing values not allowed in S}" 退出。 这一问题已得到修复。

{p 5 9 2}
9.  {helpb gmm_postestimation##syntax_predict:predict} 使用选项 {opt scores}，在使用 {help gmm_zh} 选项 {opt onestep} 后，当 {opt onestep} 缩写时，错误地以非信息性错误消息退出。 {cmd:predict} 现在按指定计算分数。

{p 4 9 2}
10.  {helpb import delimited}，当与选项 {cmd:stringcols()} 或选项 {cmd:numericcols()} 一起使用时，错误地将第一行导入为变量名称。 这个问题已得到修复。

{p 4 9 2}
11.  Mata 函数 {help mf_normal_zh:lnwishartden({it:df}, {it:V}, {it:X})} 和 {help mf_normal_zh:lniwishartden({it:df}, {it:V}, {it:X})} 使 Stata 使用的内存比所需的多。 实际的后果是，在这些函数被反复调用时，Stata 运行较慢，比如与使用 Wishart 和逆 Wishart 事前分布的模型结合使用的 {help bayesmh_zh}。 这个问题已得到修复。

{p 4 9 2}
12.  {help mfp_zh} 具有用于选择多变量分数多项式 (MFP) 模型的默认闭合检验算法时，报告的 p 值略低于预期。在大多数情况下，p 值的差异发生在第三个小数位之后。 这一问题已得到修复。

{p 9 9 2}
     请注意，p 值的差异很少影响最终 MFP 模型中选择的变量，并且最终模型回归表中报告的 p 值是正确的。

{p 4 9 2}
13.  前缀 {helpb mi estimate}，当指定选项 {cmd:cmdok} 允许使用不受支持的命令 {help gsem_command_zh:gsem} 进行估计时，错误地以 Mata 跟踪日志和错误消息 "{err:name conflict}" 退出。 {cmd:mi estimate} 现在适配任何指定的广义 SEM 模型。

{p 4 9 2}
14.  {helpb mi impute chained} 选项 {cmd:savetrace()} 不遵守文件夹名称或文件名中的空格或引号。 这一问题已得到修复。

{p 4 9 2}
15.  {help ml_zh}，当选项 {opt technique()} 指定在 {cmd:nr} 和 {cmd:bfgs} 或在 {cmd:nr} 和 {cmd:dfp} 之间切换并指定了约束时，错误地以错误消息退出。 这一问题已得到修复。

{p 4 9 2}
16.  {help pctile_zh} 选项 {opt genp(newvarp)} 和选项 {opt nquantiles()} 指定的分位数超过 1,000 的情况未能存储对应百分位数观察值的百分比。 这一问题已得到修复。

{p 4 9 2}
17.  {help gsem_predict_zh:predict} 选项 {cmd:latent()}，在使用 {help gsem_command_zh:gsem} 后，当正确拟合模型之间存在内生潜变量的路径时，错误地以错误消息退出。 这一问题已得到修复。

{p 4 9 2}
18.  {helpb saveold} 选项 {cmd:all}, 当内存中的数据集包含 {cmd:e(sample)} 变量时，错误地以错误消息 "{err:variable name ... does not meet the restrictions of old .dta format}" 退出。 这一问题已得到修复。

{p 4 9 2}
19.  {help sem_command_zh:sem}，当符号约束名使用 {cmd:@} 定义时，例如 {cmd:@a}，当约束也与自动确定的锚点相一致并在任何其他约束中使用符号约束名时，错误地以错误消息 "{err:'a' not found}" 退出。 {cmd:sem} 现在会保留符号约束名称。

{p 4 9 2}
20.  带前缀 {help stepwise_zh} 和在括号中绑定第一个预测因子的 {help stcrreg_zh} 错误地以错误消息 "{err:option compete() required}" 退出，尽管指定了选项 {opt compete()}。 这一问题已得到修复。

{p 4 9 2}
21.  函数 {helpb tden():tden({it:df},{it:t})}，在分布的尾部的极端情况下，密度接近 0，返回的值大于正确值。 这一问题已得到修复。

{p 4 9 2}
22.  {helpb tebalance box} 和 {helpb tebalance density} 在 {help teffects_zh} 后，当工作目录包含多个 {bf:.gph} 文件时，错误地以错误消息 "{err:invalid syntax}" 退出。 这一问题已得到修复。

{p 4 9 2}
23.  {helpb unicode convertfile} 选项 {cmd:dstcallback()} 将默认方法 {cmd:stop} 应用于规定的特殊方法。 这一问题已得到修复。

{p 4 9 2}
24.  函数 {cmd:ustrregexs()} 在 {help f_ustrregexm_zh:Stata} 和 {help mf_ustrregexm:Mata} 在未首先使用 {cmd:ustrregexm()} 执行有效的正则表达式匹配的情况下导致 Stata 崩溃。 这一问题已得到修复。

{p 4 9 2}
25.  (Unix GUI) 使用 MobaXterm Windows 客户端时，查找对话框在 "查找什么:" 字段中没有找到指定文本的情况下会冻结。 这一问题已得到修复。


{hline 8} {hi:更新内容 2017年5月4日} {hline}

{p 5 9 2}
1.  {help arfima_zh}，当时间序列数据不平稳且无法获得可行的初始值时，错误地以非信息性错误消息退出。 该命令现在以错误消息 "{err:initial values not feasible}" 退出。

{p 5 9 2}
2.  {help factor_zh}，当分析中的任何变量是常数时，错误地以错误消息 "{err:conformability error}" 退出。 现在，{cmd:factor} 会删除常数变量并使用其余变量进行分析。

{p 5 9 2}
3.  {helpb graph box} 和 {helpb graph hbox}，当上邻值等于第75百分位数加上1.5倍四分位距（IQR）或下邻值等于第25百分位数减去1.5倍四分位距（IQR）时，将数据值等于邻接值视为异常值。 由于异常值被定义为大于上邻值或小于下邻值的值，因此该值并不是异常值。 这一问题已得到修复。

{p 5 9 2}
4.  {helpb icd10 lookup}，当请求的代码范围包含格式化的代码（包括 "{bf:.}"），错误地报告 "(no matches found)"。 这一问题已得到修复。

{p 5 9 2}
5.  {helpb irt rsm} 现在通过底层 IRT 参数化强加对项目阈值结构的约束，以符合 Andrich（1978a，{it:Applied Psychological Measurement} 2：581-594；1978b，{it:Psychometrika} 43：561-573）描述的模型。 以前，{cmd:irt rsm} 通过使用斜率-截距参数化施加约束。 旧的行为不再在版本控制中保留。

{p 5 9 2}
6.  {help predict_zh}，在使用 {help tnbreg_zh} 和 {help tpoisson_zh} 后，若初始截断点在推进命令的选项 {cmd:ll()} 中所指定的值不为 0，未能正确考虑截断的条件均值。 结果，条件均值被高估。 这一问题已得到修复。

{p 5 9 2}
7.  {helpb svy tabulate:svy: tabulate}，在对带有值标签的数值变量进行制表时，若值变量名中包含句点（"{cmd:.}"）或冒号（"{cmd::}"），会保留这些字符现在在报告表的行列标题中。 之前，"{cmd:.}" 和 "{cmd::}" 被转换为 "{cmd:,}" 和 "{cmd:;}"。 老的行为不再在版本控制中保留。


{hline 8} {hi:更新内容 2017年3月7日} {hline}

{p 5 9 2}
1.  {help sem_estat_eqgof_zh:estat eqgof}，在拟合包含潜在内生变量的模型，且没有包含任何外生变量后，错误地报告了零值作为 R 平方统计数据。 这一问题已得到修复。

{p 5 9 2}
2.  {helpb import excel} 有以下修复：

{p 9 13 2}
     a.  {cmd:import excel} 选项 {opt sheet(sheetname)}，当 sheetname 以 {bf:$} 开头时，错误地将该工作表命名为 {bf:Sheet1}。 这一问题已得到修复。

{p 9 13 2}
     b.  {cmd:import excel} 错误地使用 Stata 格式 {cmd:%tchh:MM:SS} 而不是 {cmd:%tcHH:MM:SS} 导入 Excel 自定义时间格式 {cmd:h:mm:ss} 数据。 这一问题已得到修复。

{p 5 9 2}
3.  {help margins_zh} 有以下修复：

{p 9 13 2}
     a.  {cmd:margins} 选项 {opt asbalanced} 和 {cmd:emptycells(reweight)} 时，以不允许的零值作为零的交互项。 这一问题已得到修复。

{p 9 13 2}
     b.  {cmd:margins} 选项 {cmd:predict()} 和子选项 {opt psel} 或 {opt xbsel}在 {help heckman_zh}、 {help heckprobit_zh} 或 {help heckoprobit_zh} 之后，不应以缺失值作为排除观察值。 这一问题已得到修复。

{p 5 9 2}
4.  {helpb power oneproportion} 选项 {cmd:continuity} 估计了双边测试的检验功效。 这一问题已得到修复。

{p 5 9 2}
5.  {helpb xtfrontier_postestimation##predict:predict} 选项 {opt te} 在 {help xtfrontier_zh} 后，使用的样本被限制以特定范围，给出了不正确的结果。 这一问题已得到修复。

{p 5 9 2}
6.  do 文件和 ado 文件包含带没有空格的注释定界符（例如，{cmd:/*/*}）可能导致 Stata 崩溃。 这一问题已得到修复。

{p 5 9 2}
7.  Java 运行环境已更新到版本 8 更新 121，随 Stata 重新分发。

{p 5 9 2}
8.  (Mac) 在数据编辑器中，使用 Option 键 + e 组合键输入带音符的字符到单元格，且单元格的行内编辑字段在输入文本之前未被初始化，首个输入字符将无法输入。 这一问题已得到修复。

{p 5 9 2}
9.  (Mac) 在数据编辑器中，使用国际键盘（例如日语键盘）初始化单元格的行内编辑字段时，首个输入字符未被输入。 这一问题已得到修复。

{p 4 9 2}
10.  (Mac) 当从 Do-file 编辑器打印的文件花费较长时间时，Stata 可能崩溃。 这一问题已得到修复。

{p 4 9 2}
11.  (Mac) 在 Do-file 编辑器中打开的文件未经过 UTF-8 编码，Stata 尝试使用您语言环境的默认字符编码将文件转换为 UTF-8。 对某些语言环境，此转换不能使用默认编码进行，因此在 Do-file 编辑器中将不会出现任何内容（例如，从日语语言环境打开 Windows Latin 1 编码的 do-file）。 现在，Stata 在转换为 UTF-8 之前会提示您指定文件的字符编码。

{p 4 9 2}
12.  (Mac) 带有禁用编辑的组合框的可编程对话框未能注册组合框下拉列表中的选择。 这一问题已得到修复。


{hline 8} {hi:更新内容 2017年1月9日} {hline}

{p 5 9 2}
1.  在线帮助和搜索索引已更新至 {help sj_zh:Stata Journal} 16(4)。

{p 5 9 2}
2.  {helpb bayestest model} 在所有边际似然度计算为零的情况下未能评估后验概率并报告缺失值。 现已更准确计算后验概率，因此缺失值出现的可能性大幅降低。

{p 5 9 2}
3.  {help suest_zh}，在计算非 {help svy_zh} 估计结果所拟合的系数的渐近方差三明治估计时，现在使用 {cmd:e(V_modelbased)}（如果存在）而不是 {cmd:e(V)}。 旧行为不再在版本控制中保留。


{hline 8} {hi:更新内容 2016年12月19日} {hline}

{p 5 9 2}
1.  {help sem_estat_gof_zh:estat gof} 在使用 {help sem_command_zh:sem} 拟合带有超标识均值结构的模型后，错误地高估 SRMR 值。 现在 {cmd:estat gof} 在计算 SRMR 时不再包括模型均值。 旧的行为不再在版本控制中保留。

{p 5 9 2}
2.  {help margins_zh} 有以下修复：

{p 9 13 2}
     a.  {cmd:margins} 在 {help stcrreg_zh} 之后与选项 {cmd:vce(unconditional)} 的组合错误退出。 这一问题已得到修复。

{p 9 13 2}
     b.  在使用包含多层权重的 {help svy_zh} 后，{cmd:margins} 与 multilevel weights，错误报告的错误消息为 "{err}{bf:svyset} characteristics disagree with {bf:svy} estimation results{reset}"，虽然 {help svyset_zh} 特性并未改变。 这一问题已得到修复。

{p 5 9 2}
3.  Mata函数 {helpb mf__docx##remarks_file:_docx_new()}，在调用 {helpb mf__docx##remarks_table:_docx_new_table()} 后，清除先前返回的表格ID代码。 这一问题已得到修复。

{p 5 9 2}
4.  Mata函数 {helpb mf_pdf##des_table_matrix:fillStataMatrix({it:name, colnames, rownames})} 在参数 {it:colnames} 不是 0 的情况下错误地用 {help matrix_rownames_zh:matrix rownames} 填充表格的第一行。 这一问题已得到修复。

{p 5 9 2}
5.  Mata函数 {help mf_normal_zh:lnmvnormalden({it:M},{it:V},{it:X})} 以错误消息 "{err:conformability error}" 退出，而当 {it:M} 和 {it:X} 是 {help m2_void_zh:void vectors} 并且 {it:V} 是 {help m2_void_zh:0 {it:x} 0 matrix}。 该情况现在返回 0 {it:x} 0 矩阵。

{p 5 9 2}
6.  Mata函数 {help mf_normal_zh:lnwishartden({it:df},{it:V},{it:X})} 和 {help mf_normal_zh:lniwishartden({it:df},{it:V},{it:X})} 以错误消息 "{err:conformability error}" 退出，而当 {it:V} 和 {it:X} 是 {help m2_void_zh:0 {it:x} 0 matrices}。 {cmd:lnwishartden()} 和 {cmd:lniwishartden()} 现在返回 0 {it:x} 0 矩阵。

{p 5 9 2}
7.  {helpb power twoproportions} 具有以下行为及修复的变化：

{p 9 13 2}
     a.  "{cmd:power twoproportions}" 选项 "{cmd:test(fisher)}"，当控制组或实验组样本量大于 1,000 时，报告为缺失值。 现在它以错误消息 "{err:failure to compute power}" 退出。

{p 9 13 2}
     b.  "{cmd:power twoproportions}" 选项 "{cmd:test(fisher)}" 时，当总样本量大于 1,028 和控制组和实验组样本量均小于或等于 1,000 时，测试功效被低估。 现已以错误消息 "{err:failure to compute power}" 退出。

{p 5 9 2}
8.  (Mac) 当使用 Stata 在全屏模式下时，某些图形以低分辨率显示，或者在窗口过渡到全屏窗口后根本不出现。 这一问题已得到修复。

{p 5 9 2}
9.  (Mac) macOS Sierra 10.12.2 引入的变化导致 Stata 的 Do-file 编辑器崩溃。 这一问题已得到修复。

{p 4 9 2}
10.  (Mac 和 Unix GUI) 保存 SEM 路径图时，Stata 会提示用户输入文件名，即使图已被保存过。 这个问题已得到修复。


{hline 8} {hi:更新内容 2016年11月16日} {hline}

{p 5 9 2}
1.  在 Do-file 编辑器中，现在可以通过选择 "编辑 > 高级 > 切换注释" 菜单项来注释或取消注释选定的行。

{p 5 9 2}
2.  Mata 函数 {help mf__docx_zh:_docx*()} 有以下改进和修复：

{p 9 13 2}
     a.  新 Mata 函数 {browse "http://www.stata.com/docx_styles.html":{bf:_docx_cell_set_border({it:dh, tid, i, j, name, val, color})}} 允许您设置 {it:i} 行和 {it:j} 列单元格的边框格式，其中 {it:name}、{it:val} 和 {it:color} 指定边框名称、样式和颜色。

{p 9 13 2}
     b.  {browse "http://www.stata.com/docx_styles.html":{bf:_docx_table_set_width({it:dh, tid, type, w})}}，当参数 {it:type} 为 {cmd:auto} 时，未能使表格中的列自动适应内容。 这一问题已得到修复。

{p 5 9 2}
3.  {help _diparm_zh} 在 {help meglm_zh}、{help melogit_zh}、{help meprobit_zh}、{help mecloglog_zh}、{help meologit_zh}、{help meoprobit_zh}、{help mepoisson_zh}、{help menbreg_zh} 和 {help mestreg_zh} 中，当 {it:eqname} 指向方差成分时，错误地以错误消息 "{err:equation ___ not found}" 退出。 {cmd:_diparm} 现在按文档工作。

{p 5 9 2}
4.  {help margins_zh} 有以下修复：

{p 9 13 2}
     a.  {cmd:margins} 与选项 {opt asbalanced} 及 {cmd:emptycells(reweight)} 组合处理没有因子变量的交互项时，错误地将其视为零。 这个问题已得到修复。

{p 9 13 2}
     b.  {cmd:margins} 在使用最近与 {help ologit_zh} 或 {help oprobit_zh} 的结果，且没有 {it:indepvars} 或模型 Wald 测试统计值的自由度为零时，错误地以错误信息 "{err:0 invalid name}" 退出，未计算请求中边际效应。 这个问题已得到修复。

{p 5 9 2}
5.  {helpb power oneproportion} 选项 {cmd:continuity} 过高地估算了双边测试的功效。 这个问题已得到修复。

{p 5 9 2}
6.  {helpb xtfrontier_postestimation##predict:predict} 选项 {opt te} 在 {help xtfrontier_zh} 中用于限制特定范围内的样本时，返回不正确的结果。 这个问题已得到修复。

{p 5 9 2}
7.  do 文件和 ado 文件中存在的注释定界符紧邻且无空格（例如，{cmd:/*/*}）可能导致 Stata 崩溃。 这个问题已得到修复。

{p 5 9 2}
8.  Java 运行环境重新编译到版本 8 更新 121，随 Stata 再发布。

{p 5 9 2}
9.  (Mac) 在数据编辑器中，选择特定单元格内容并按下 Enter 键可能会导致 Stata 崩溃。 这个问题已得到修复。

{p 5 9 2}
10.  (Mac) 进入全屏模式后，图形可能无法正确传输。在数据编辑器中，选中的文本改变，也可能导致 Stata 崩溃。 这个问题已得到修复。

{p 4 9 2}
11.  (Mac) Stata 可能在从 DO 文件编辑器打印文档时崩溃。 这个问题已得到修复。

{p 4 9 2}
12.  (Windows) 在数据编辑器内，显示不规则数据（例如从外部导入到数据编辑器中的文件）时，Stata 可能会崩溃。 这个问题已得到修复。

{p 4 9 2}
13.  (Windows 32 位) 更新提示失败至完全使用用户权限。 这个问题已得到修复。  

{hline 8} {hi:更新内容 06sep2016} (Stata 版本 14.2) {hline}

{p 5 9 2}
1.  {help icd10_zh} 命令系列有以下改进和更改：

{p 9 13 2}
     a.  新命令 {cmd:icd10 search} 允许您搜索 ICD-10 代码的文本描述，以查找指定的关键词。 使用选项 {opt version(year)}，您可以将搜索限制为仅在指定年份有效的代码。

{p 9 13 2}
     b.  {cmd:icd10 check} 增加了新选项 {opt summary}。 这个选项提供每个无效或未定义代码的频率。

{p 9 13 2}
     c.  {cmd:icd10 clean} 现在要求使用 {opt generate()} 或 {opt replace}。 选项 {opt generate()} 创建一个新变量，包含清理后的 ICD-10 代码。 选项 {opt replace} 用指定变量中的现有 ICD-10 代码替换。

{p 9 13 2}
     d.  {cmd:icd10 generate} 带选项 {opt description} 现在可以与新的选项 {cmd:addcode(begin}|{cmd:end)} 相结合。 {cmd:addcode(begin)} 把 ICD-10 代码添加到描述的开头，并替换现有选项 {opt long}。 {cmd:addcode(end)} 将代码添加到描述的结尾。 选项 {opt long} 仍然有效，但未文档化。

{p 9 13 2}
     e.  {cmd:icd10 generate} 带选项 {opt description} 和选项 {opt addcode()} 现在可以与新的选项 {opt nodots} 和 {opt pad} 相结合，以控制添加到描述中的代码格式。

{p 9 13 2}
     f.  {cmd:icd10 lookup} 现在可以接受一组 ICD-10 代码，而不是单个代码。

{p 9 13 2}
     g.  {cmd:icd10 clean} 和 {cmd:icd10 generate} 增加了新选项 {opt check}，在清理或创建新变量之前检查 ICD-10 代码的格式。 这是为了避免先运行 {cmd:icd10 check}。

{p 9 13 2}
     h.  {cmd:icd10 check}、{cmd:icd10 clean}、{cmd:icd10 generate} 和 {cmd:icd10 lookup} 增加了新选项 {opt version(year)}，替换了现有的选项 {opt year()}。 {opt year()}仍然有效，但未文档化。

{p 9 13 2}
     i.  {cmd:icd10 check} 具有新选项 {opt fmtonly}，替换了现有选项 {opt any}。 选项 {opt any} 仍然有效，但未文档化。

{p 5 9 2}
2.  {help gmm_zh} 在广义矩估计（GMM）估计之后的时序分析中有以下提高：

{p 9 13 2}
     a.  {helpb gmm_postestimation##margins:margins} 现在在 {cmd:gmm} 后可用。这使您能够在 GMM 估计后估算边际和条件效应，例如均值、预测边际和边际效应。

{p 9 13 2}
     b.  {helpb gmm_postestimation##syntax_predict:predict} 在 {cmd:gmm} 后现在允许选项 {opt xb}。 这使您在 GMM 估计后能够获得线性预测。

{p 9 13 2}
     c.  {helpb gmm_postestimation##syntax_predict:predict} 在 {cmd:gmm} 后现在带有选项 {opt scores}。 这使您在 GMM 估计后能够获取矩条件的值。

{p 5 9 2}
3.  {cmd:predict} 在 {helpb irt_hybrid_postestimation##predict:irt}、{help gsem_predict_zh:gsem}、{helpb meglm_postestimation##predict:meglm}、{helpb melogit_postestimation##predict:melogit}、{helpb meprobit_postestimation##predict:meprobit}、{helpb mecloglog_postestimation##predict:mecloglog}、{helpb meologit_postestimation##predict:meologit}、{helpb meoprobit_postestimation##predict:meprobit}、{helpb mepoisson_postestimation##predict:mepoisson}、{helpb menbreg_postestimation##predict:menbreg} 和 {helpb mestreg_postestimation##predict:mestreg} 有以下改进：

{p 9 13 2}
     a.  {cmd:predict} 现在支持以上所述条件下高斯的均值、模式及其他预测的外推预测。

{p 9 13 2}
     b.  {cmd:predict} 现在即使在估计样本发生变化的情况下，也计算均值和模式的预测。

{p 5 9 2}
     旧行为在版本控制中保留。

{p 5 9 2}
4.  {help sem_command_zh:sem} 的逻辑在构建潜在和自变量模型时的初始值设置的改进。 这将加速拟合目标模型的收敛。

{p 5 9 2}
5.  {help bayesmh_zh}，在使用因子变量作为预测变量时，当设置 {helpb showbaselevels} 时，错误地在最大和平均采样效率的计算中将基线参数包含在内。 基线参数会在模型中省略，因此不会被抽样。 这一问题已得到修复。

{p 5 9 2}
6.  {help fp_zh}，在对包含冠军 vs. 按照启动袜的所有论文进行的模型进行搜索后，错误处理的情况清除了所有入组数据。 这已得到修复。

{p 5 9 2}
7.  {help mprobit_zh}，在没有指定自变量的情况下，错误地退出并报告为 "{err:varlist required}" 的错误消息。 这一问题已得到修复。

{p 5 9 2}
8.  {help mestreg_zh}，在指定选项 {cmd:nolog} 的情况下未能按请求抑制迭代日志。 这一问题已得到修复。

{p 5 9 2}
9.  {help gsem_command_zh:gsem}，与命令 {help mestreg_zh} 配合使用时，与 {help teffects_zh} 一起使用并与 PWTs（"双成分分析"）一起进行分析的变量组错误报告。 这一问题已得到修复。

{p 4 9 2}
10.  在使用 SWIVEL 选择 {cmd:if} 开放式访问权限时，指定的外源变量范围执行时可能会出现标识符命名错误，且未能保留的符号失败的处理。 这一问题已得到修复。

{p 4 9 2}
11.  杂草 беҙ-nji{抓取提升} 和串行手动进入的数学依据指定符号的参数调整。在注释情况安排的情况下, 以修正这一问题。

{p 4 9 2}
12.  输入文本时使用多国语言支持时的表现不一。 这一问题已得到修复， 不再支持通过该函数的成分条件调整。

{p 4 9 2}
13.  由于 {help line_zh} 带有因子变量的基线平衡，进行多逻辑迭代时会忽略临界变量。 333 的错误已修复。

{p 4 9 2}
14.  piped，整型变量流失处理流程一律必须保留在标签内容。 这一问题将修复。

{p 4 9 2}
15.  调整可能会影响外部语作者的选择，给定初始估计，解决方式的顺序可能会改变结果。 使用 sem_groups 时的操作更新。目前不是 coroutine 反映点。

{p 4 9 2}
16.  直接输入下限条件时的反馈错误方式参数。 这一修复是警告的目的是为了让回归之外的内容变得明显。

{p 4 9 2}
17.  成分差异报告代码的行为会更具可预测性。 几种调整已与数据范围的操作可靠报告进行比较。这将保留原始数据。

{p 4 9 2}
18.  发生性爆发，并在四个样本数据中未能输出本地代表的订阅差异，这已得到修复。

{p 4 9 2}
19.  在条件性最大值工程中，代码解析的参数质量 مستقيم若非规范的分数选择然后变得轻收益。 以前的策略得到了更新。

{p 4 9 2}
20.  清空使用要求标准比锁定几分钟。 劣等条件下是合理的选择， 这一方法将更好切实可行。

{p 4 9 2}
21.  回调和 TRM 标记 兼容不突破情形下的数据解析提示。 这将鼓励项目通过不太熟悉的方式进行访问。

{hline 8} {hi:进行数据导入时的修复} {hline}

{p 4 9 2}
1.  需要有效性，导入时数据可能未包含的字符。这使行为变得更高效。

{p 4 9 2}
2.  过量的归属，允许其出现的材料已被图像化流转，部分代码已修复。

{p 4 9 2}
3.  提高整数工具，存在语法不一致引起的文本误解信息感染率。 在重复失败检索中立即以保留的方式确定当前标记。

{p 4 9 2}
4.  当非线性模型中发现准确的约束时，具有回归标准，给定当前视觉可变颜色的输出效果。 这一问题已得到修复。

{p 4 9 2}
5.  先前的参数不应被标记。 这是约束路径下的集合必须作出更好的修复。

{p 4 9 2}
6.  由于迭代的影响，给定条件会大幅改变分析框架。 这将导致会话输出通过不稳定的程序信息。

{p 4 9 2}
7.  如果想要写入 Stata 导入时需要包含更有利于市场的多媒体内容。 这一问题将得到修复。

{p 4 9 2}
8.  应用界面现在保留选择，使用字符串内容和数据，而不是在轮廓选择上下文中禁止完全报告。

{p 5 9 2}
9.  {helpf:tscompare},  는  저희가  강조한 주 언어를 사용할 수 있어야 합니다. 일반 언어 내용 이상을 통해 명확한 샘플을 얻을 수 있습니다. 

{hline 8} {hi:进行更新的修复介绍} {hline}

{p 5 9 2}
1.  新导入标准的默认动态大小与这些重叠的提要提交文档.  这也与调整有争议的文本字符冲突没有关系。

{p 5 9 2}
2.  更正的标准如左多一条边已经更新，可能不符合约定。

{p 5 9 2}
3.  其他的语言也会被打出，尤其是在未定义与目标的标识条件外部。

{hline 8} {hi:熵的变化情况报告} {hline}

{p 5 9 2}
1.  需要结论，而语言排版引导的样本可能未显著区分方式。 这种问题将通过通常不使用的快速路径改善。

{p 5 9 2}
2.  对于最佳排列，定制化的每个约束条件都已经被更新，这完全支持覆写，这将理解其独立的法令。

{p 5 9 2}
3.  在最后的参数下补充变量，将触发选择的许多结果。 这一结果将重点反映在解决方案中。

{p 5 9 2}
4.  内不稳定性，预设细节整合已经不再容易达到。

{p 5 9 2}
5.  初始假设的影响因果反馈不会导致我们干预。 现阶段仍有选择。

{p 5 9 2}
6.  只能使用最后的方法，即便原因没有找错。 可能会要求输出任何额外内容。

{p 5 9 2}
7.  在可回收性下，允许的条件限制在最后的条件以外。 这将超出阀值。

{p 5 9 2}
8.  在 URL 模型的积分建模中，督促回调的选择不再因为供润分而失效。 这一措施将增强政策透明度。

{p 5 9 2}
9.  在建议价机制下禁止进行多层次的实验调整。 这一机制将推动主要操作。

{p 5 9 2}
10.  条件内不应被指定条件打破，当分散未被分配时则多因素影响并不大。 

{p 5 9 2}
11.  对于具有选择的路径，是条件标识与结果必须保留的有效方式。这一过程将加速。

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <whatsnew14.sthlp>}