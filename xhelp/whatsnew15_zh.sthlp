{smcl}
{* *! version 1.0.1  02jul2019}{...}
{vieweralsosee "whatsnew" "help whatsnew_zh"}
{help whatsnew15:English Version}
{hline}{...}
{title:版本 15 中对 Stata 的新增内容}

{pstd}
此文件记录了在 15.0 版本发布期间对 Stata 进行的新增和修复：

    {c TLC}{hline 63}{c TRC}
    {c |} 帮助文件        内容                     年份           {c |}
    {c LT}{hline 63}{c RT}
    {c |} {help whatsnew_zh}         Stata 16.0                   2019 至今 {c |}
    {c |} {help whatsnew15to16_zh}   Stata 16.0 新发布          2019            {c |}
    {c |} {bf:此文件}        Stata 15.0 和 15.1          2017 至 2019    {c |}
    {c |} {help whatsnew14to15_zh}   Stata 15.0 新发布          2017            {c |}
    {c |} {help whatsnew14_zh}       Stata 14.0、14.1 和 14.2   2015 至 2017    {c |}
    {c |} {help whatsnew13to14_zh}   Stata 14.0 新发布          2015            {c |}
    {c |} {help whatsnew13_zh}       Stata 13.0 和 13.1          2013 至 2015    {c |}
    {c |} {help whatsnew12to13_zh}   Stata 13.0 新发布          2013            {c |}
    {c |} {help whatsnew12_zh}       Stata 12.0 和 12.1          2011 至 2013    {c |}
    {c |} {help whatsnew11to12_zh}   Stata 12.0 新发布          2011            {c |}
    {c |} {help whatsnew11_zh}       Stata 11.0、11.1 和 11.2   2009 至 2011    {c |}
    {c |} {help whatsnew10to11_zh}   Stata 11.0 新发布          2009            {c |}
    {c |} {help whatsnew10_zh}       Stata 10.0 和 10.1          2007 至 2009    {c |}
    {c |} {help whatsnew9to10_zh}    Stata 10.0 新发布          2007            {c |}
    {c |} {help whatsnew9_zh}        Stata 9.0、9.1 和 9.2      2005 至 2007    {c |}
    {c |} {help whatsnew8to9_zh}     Stata 9.0 新发布           2005            {c |}
    {c |} {help whatsnew8_zh}        Stata 8.0、8.1 和 8.2      2003 至 2005    {c |}
    {c |} {help whatsnew7to8_zh}     Stata 8.0 新发布           2003            {c |}
    {c |} {help whatsnew7_zh}        Stata 7.0                   2001 至 2002    {c |}
    {c |} {help whatsnew6to7_zh}     Stata 7.0 新发布           2000            {c |}
    {c |} {help whatsnew6_zh}        Stata 6.0                   1999 至 2000    {c |}
    {c BLC}{hline 63}{c BRC}

{pstd}
最近的更改在前面列出。

{hline 8} {hi:更新记录} {hline}

{pstd}
参见 {help whatsnew15to16_zh}。

{hline 8} {hi:更新 02jul2019} {hline}

{p 5 9 2}
1.  在线帮助和搜索索引已更新，以便与 {help sj_zh:Stata Journal} 19(2) 保持一致。

{p 5 9 2}
2.  {help bayes_mlogit_zh:bayes: mlogit} 在结果变量标签中包含空格时，未能识别基本结果级别，并以 Mata 错误消息退出。此问题已解决。

{p 5 9 2}
3.  {help bayesmh_zh} 和 {helpb bayesstats summary}，均在选项 {cmd:batch()} 中，不正确地报告了批量标准差而不是通常的标准差。此问题已解决。

{p 5 9 2}
4.  {help binreg_zh} 有以下修复：

{p 9 13 2}
     a.  {cmd:binreg} 在选项 {cmd:iter(0)} 中错误地退出，并显示不具信息的错误消息，而不是计算不迭代的偏差。此问题已解决。

{p 9 13 2}
     b.  当最大化选项 {cmd:search} 和 {cmd:from()} 不带选项 {cmd:ml} 被指定时，{cmd:binreg} 并未以错误消息退出。此问题已解决。

{p 5 9 2}
5.  {help eivreg_zh} 有以下修复：

{p 9 13 2}
     a.  {cmd:eivreg} 使用错误的公式来计算标准误差，导致标准误差过小。此问题已解决。

{p 9 13 2}
     b.  {cmd:eivreg} 后的后验估计命令 {cmd:forecast}、{cmd:linktest} 和 {cmd:predictnl} 在 {cmd:eivreg} 后不再可用。

{p 9 13 2}
     c.  {cmd:predict} 在 {cmd:eivreg} 后不再允许选项 {cmd:residuals}、{cmd:stdp}、{cmd:stdf}、{cmd:pr()}、{cmd:e()} 或 {cmd:ystar()}。

{p 9 13 2}
     d.  {cmd:margins} 在 {cmd:eivreg} 后不再允许选项 {opt predict(statistic)} 对以下 {it:statistics}：
         {cmd:residuals}、{cmd:stdp}、{cmd:stdf}、{cmd:pr()}、{cmd:e()} 或 {cmd:ystar()}。

{p 5 9 2}
6.  {help fmm_zh} 在选项 {helpb set emptycells:set emptycells drop} 生效时错误地以没有帮助的信息退出，即使模型正确指定。此问题已解决。

{p 5 9 2}
7.  {help glm_zh} 有以下修复：

{p 9 13 2}
     a.  {cmd:glm} 在选项 {cmd:irls} 和 {cmd:iter(0)} 与任何组合的选项 {cmd:family()} 和 {cmd:link()} 混合使用（除了 {cmd:family(gaussian)} 与 {cmd:link(identity)}）时错误退出，并显示不具信息的错误消息，而不是在不迭代的情况下计算偏差。此问题已解决。

{p 9 13 2}
     b.  {cmd:glm} 在与选项 {cmd:irls} 指定的最大化选项 {cmd:search} 和 {cmd:from()} 一起使用时未能退出并显示错误消息。此问题已解决。

{p 5 9 2}
8.  {helpb import delimited} 当选项 {cmd:case()} 未被指定或当 {cmd:case(lower)} 被指定，且待导入文件的变量名称为 Stata 保留字（例如，{cmd:if} 或 {cmd:in}）并包含大写字母（例如，{cmd:If} 或 {cmd:IN}）时，显示无信息错误消息。此问题已解决。

{p 5 9 2}
9.  {helpb import fred} 当 FRED 服务器返回 HTTP 错误代码 429（请求过多）时，显示错误消息 "{err:I/O error}"。当对 FRED 服务器的请求数量超过其限制时会出现此情况。现在，Stata 报告说明 {cmd:"FRED 服务器报告请求过多；请稍等。"}，然后将等待一段时间，之后会自动尝试再次请求。

{p 4 9 2}
10.  {help ir_zh} 和 {help stir_zh}，均与选项 {cmd:ird} 一起使用，忽略了选项 {cmd:estandard}、{cmd:istandard} 和 {cmd:standard()}。现在会产生错误消息。

{p 4 9 2}
11.  {help irt_zh} 当条目变量包含所有缺失值时，以非信息性错误消息退出。{cmd:irt} 现在会以错误消息 "{err:item ... contains only missing values}" 退出。

{p 4 9 2}
12.  {help lincom_zh} 无意中在内存中留下了矩阵 {cmd:rtable}。此问题已解决。

{p 4 9 2}
13.  {help menl_zh} 在拟合包含因子变量的线性混合效应模型时，忽略了基础规范，从而产生了过参数化的模型。此问题已解决。

{p 4 9 2}
14.  {helpb mi estimate} 有以下修复：

{p 9 13 2}
     a.  {cmd:mi estimate} 与估计命令 {help clogit_zh} 一起未能显示关于组内多个正结果或在估计期间丢弃了多少组的说明性笔记。现在已显示适当的注释。

{p 9 13 2}
     b.  {cmd:mi estimate} 在选项 {cmd:cmdok} 和估计命令 {help mestreg_zh} 一起错误地退出，出现错误消息 "{err:command prefix mestreg <cmdline> not allowed}"。现在 {cmd:mi estimate, cmdok: mestreg} 无错误执行。

{p 9 13 2}
     c.  当 {it:estimation_command} 包含一个用单个条形 "| " 内包围的 {it:if} 表达式时，{cmd:mi estimate} 会退出并出现语法错误消息。此问题已解决。

{p 4 9 2}
15.  {helpb mi impute chained} 有以下修复：

{p 9 13 2}
     a.  {cmd:mi impute chained} 与插补变量的函数组合时未能在双精度下生成这些变量。这可能会在原始插补变量为整数且使用回归插补方法进行插补时影响插补值的精度。此问题已解决。

{p 9 13 2}
     b.  {cmd:mi impute chained}，当选项 {cmd:include()} 中包含相同操作符多次时，例如 {cmd:include(x1 + x2 + x3)}，发生了无信息的错误消息。此问题已解决。

{p 9 13 2}
     c.  当选项 {cmd:savetrace()} 启用时，{cmd:mi impute chained} 在多个插补变量具有相同前缀名称时出现无信息的错误消息。此问题已解决。

{p 4 9 2}
16.  {help pkequiv_zh} 有以下改进和修复：

{p 9 13 2}
     a.  {cmd:pkequiv} 在选项 {cmd:limit()} 内仅接受 0.1 到 0.99 的等价限。现在它接受 0.01 到 0.99 的等价限制。

{p 9 13 2}
     b.  {cmd:pkequiv} 使用不平衡数据（每个序列中的主体数不同）或任何变量中缺失值产生了不正确的结果（它采用了均衡数据的公式）。{cmd:pkequiv} 现在在计算时正确考虑了不平衡数据。

{p 9 13 2}
     c.  {cmd:pkequiv} 未遵循 {cmd:if} {it:exp} 或 {cmd:in} {it:range}。此问题已解决。

{p 9 13 2}
     d.  当某些 {it:id}s 未接受两种 {it:treatment}s 时，{cmd:pkequiv} 错误计算了自由度，导致置信区间稍窄。此问题已解决。

{p 9 13 2}
     e.  {cmd:pkequiv} 在与选项 {cmd:tost} 一起使用时错误计算了两个单侧检验（TOST）的 p 值，返回了应为的两倍 p 值。此问题已解决。

{p 9 13 2}
     f.  {cmd:pkequiv} 在与选项 {cmd:tost} 或 {cmd:anderson} 和选项 {cmd:limit()} 一起使用时，在计算 TOST 或 Anderson 和 Hauck 测试时忽略了指定的限制。它错误地使用了默认的 0.2 等价限。此问题已解决。

{p 9 13 2}
     g.  {cmd:pkequiv} 未使用选项 {cmd:noboot}、{cmd:symmetric} 或 {cmd:fieller} 采用未分层引导法计算置信区间位于等价限制中的概率。此问题已解决。

{p 9 13 2}
     h.  {cmd:pkequiv} 在 {it:treatment} 变量采取值为除 1 和 2 之外的其他值时，产生了不正确的结果。此问题已解决。

{p 9 13 2}
     i.  {cmd:pkequiv} 与选项 {cmd:compare()} 一起，任何值只要不是 {opt compare(1 2)}，都产生了不正确的结果。此问题已解决。

{p 9 13 2}
     j.  {cmd:pkequiv} 与选项 {cmd:fieller} 一起，错误计算了置信区间并将其标记为等价限，未能报告。现在它正确地报告了等价限和比率的置信区间。

{p 9 13 2}
     k.  {cmd:pkequiv} 与选项 {cmd:symmetric} 一起错误地标记置信区间为等价限，未能报告。现在它正确地报告了均值差异的等价限和置信区间。

{p 9 13 2}
     l.  {cmd:pkequiv} 在未选项 {cmd:fieller} 或 {cmd:symmetric} 的情况下，显示均值差异的置信区间时，使用标题为“测试限制”。现在它使用标题“置信区间”。

{p 9 13 2}
     m.  {cmd:pkequiv} 在选项 {cmd:fieller} 或 {cmd:symmetric} 中，当序列变量包含奇数个观察值，并且序列等于 1 或 2 时，错误退出并显示错误消息“{err:option df() incorrectly specified}”。此问题已解决，不再导致错误。

{p 4 9 2}
17.  {help pkshape_zh} 有以下改进和修复：

{p 9 13 2}
     a.  {cmd:pkshape} 现在为新创建的变量创建变量标签。

{p 9 13 2}
     b.  {cmd:pkshape} 现在使用用户提供的治疗信息为序列、治疗和携带变量的值标记。

{p 9 13 2}
     c.  {cmd:pkshape} 现在支持变量名称和治疗标签中的 Unicode 字符。

{p 9 13 2}
     d.  {cmd:pkshape} 在使用超过九个治疗时，产生了不正确的结果。此情况下，{cmd:pkshape} 错误标记了一个或多个治疗，从而导致不正确的结果。此问题已解决。

{p 9 13 2}
     e.  {cmd:pkshape} 在使用以 1-9 为治疗代码时，会产生错误的治疗和传播值。此问题已解决。

{p 9 13 2}
     f.  {cmd:pkshape} 与选项 {cmd:order()} 和字符串输入序列变量一起使用时，没有像应该那样产生错误消息，并忽略了输入序列变量提供的治疗顺序。这可能会在 {cmd:order()} 中指定的顺序不是字母顺序时，产生不正确的治疗分配。{cmd:pkshape} 现在在这种情况下生成错误消息。

{p 9 13 2}
     g.  {cmd:pkshape} 在不保存原始数据的情况下退出，导致以下变量存在，并且在未指定新变量名的情况下未应用相应选项：变量 {it:outcome} 和选项 {cmd:outcome()}，变量 {it:treat} 和选项 {cmd:treatment()}，变量 {it:carry} 和选项 {cmd:carryover()}，变量 {it:sequence} 和选项 {cmd:sequence()}，以及变量 {it:period} 和选项 {cmd:period()}。现在数据保留。

{p 9 13 2}
     h.  {cmd:pkshape} 现在将结果变量保存为“double”类型，只要输入的变量保存为“double”类型。

{p 9 13 2}
     i.  {cmd:pkshape} 当期变量（除了前两个）包含非数值值时，以误导性错误消息退出。现在会生成适当的错误消息。

{p 9 13 2}
     j.  {cmd:pkshape} 在发现 {it:id} 和 {it:sequence} 的组合的重复时，出现误导性错误消息。现在会生成适当的错误消息。

{p 4 9 2}
18.  {helpb menl_postestimation##predict:predict} 在 {help menl_zh} 后，使用包含连续变量和因子变量之间交互的线性组合时，出现了无信息的错误消息。此问题已解决。

{p 4 9 2}
19.  {help qreg_zh} 在前缀 {help by_zh} 下运行模型 {it:k} x {it:k} 次，而不是 {it:k} 次，其中 {it:k} 是 by 组的数量。此问题已解决。

{p 4 9 2}
20.  {help stir_zh} 在未指定选项 {cmd:strata()} 的情况下，使用选项 {cmd:ird}、{cmd:estandard}、{cmd:istandard}、{cmd:standard()}、{cmd:pool}、{cmd:nocrude} 和 {cmd:nohom} 时产生错误消息 "{err:missing by() option}"。现在产生错误消息 "{err:missing strata() option}"。

{hline 8} {hi:更新 21mar2019} {hline}

{p 5 9 2}
1.  在线帮助和搜索索引已更新，使其与 {help sj_zh:Stata Journal} 19(1) 保持一致。

{p 5 9 2}
2.  {help asclogit_zh} 在选项 {cmd:vce(cluster} {it:clustvar}{cmd:)} 使用字符串 {it:clustvar} 变量时，当案例变量没有放置在集群中时，不正确地报告结果，未生成错误消息。此问题已解决。

{p 5 9 2}
3.  {help churdle_zh} 在频率加权条件下报告了错误的观察数。此问题已解决。报告的系数、测试统计值和置信区间是正确的。

{p 5 9 2}
4.  {help compare_zh} 在极端的双精度值条件下，无数值连续性(如 {cmd:c(mindouble)} 或 {cmd:c(maxdouble)})，可能会在输出表中显示缺失值。此问题已解决。

{p 5 9 2}
5.  {helpb me estat sd:estat sd} 在 {help mixed_zh} 后现在允许选项 {opt coeflegend} 的指定，当选项 {opt post} 也被指定时。{opt coeflegend} 请求 {cmd:estat sd} 显示一个图例，标识如何在表达式中指定所发布的系数、标准差和相关性。

{p 5 9 2}
6.  {helpb me estat sd:estat sd} 在 {help meglm_zh}、{help melogit_zh}、{help meprobit_zh}、{help meologit_zh}、{help meoprobit_zh}、{help mepoisson_zh}、{help menbreg_zh}、{help meqrlogit_zh} 和 {help meqrpoisson_zh} 之后不再允许指定选项 {opt coeflegend}，除非同时指定选项 {opt post}。在版本控制下不保留此前的行为。

{p 5 9 2}
7.  在 20feb2019 更新后，{helpb estimates table} 指定的结果中，包含两部分命名的自由参数（如 {cmd:/mills:lambda} 的 {help heckman_zh:heckman, twostep}）时，出现了错误消息 {err:/mills not found}。此问题已解决。

{p 5 9 2}
8.  {help nlogit_zh} 在选项 {cmd:vce(cluster} {it:clustvar}{cmd:)}, 当案例变量没有嵌套在集合中时，不正确地报告了结果，而不是生成错误消息。此问题已解决。

{hline 8} {hi:更新 20feb2019} {hline}

{p 5 9 2}
1.  函数 {helpb tin()} 和 {helpb twithin()} 现在支持以商业日历 ({cmd:%tb}) 格式表示的日期。

{p 5 9 2}
2.  {help describe_zh} 现在将数据集标签存储在 {cmd:r(datalabel)} 中。

{p 5 9 2}
3.  {help areg_zh} 在指定有单个选择级别的因子变量时，当这个因子级别没有在一个或多个吸收组中观察到，并且模型包含后续的与连续变量有关的交互项时，产生了不正确的系数和标准误差。此问题已解决。

{p 5 9 2}
4.  {helpb ereturn post} 和 {helpb ereturn repost} 在使用选项 {cmd:esample()} 时，未能更新已存在的 Mata 视图中的变量索引。对于那些使用的具有索引高于选定变量的变量创建的 Mata 视图，那些列引用了比它们应该引用的更高的索引。此问题已解决。

{p 5 9 2}
5.  {help fracreg_zh} 在频率加权情况下报告了错误的观察数。此问题已解决。报告的系数、标准误差、测试统计值和置信区间是正确的。

{p 5 9 2}
6.  {help gsem_command_zh:gsem} 在不再要求选项 {cmd:nocapslatent} 的情况下，当选项 {cmd:lclass()} 被指定时，并且模型中的任何观察变量名称以大写字母开头时。 

{p 5 9 2}
7.  {help svy_zh}{cmd::} {help gsem_command_zh:gsem} , 当 {help svyset_zh} 权重包含零值时， 有时退出与无帮助的错误信息。 {cmd:svy} 现在在这种情况下正确标记 {cmd:gsem} 的估计样本。

{p 5 9 2}
8.  {help gsem_command_zh:gsem} 在在因子的变量上未被指定 {opt lclass()} 时，退出并显示错误消息。 现在 {cmd:gsem} 适当地处理变量不被识别的情况。

{p 5 9 2}
9.  在 15 Oct 2018 更新后，{helpb import excel} 在导入已在 Excel 中打开的 {cmd:.xlsx} 文件时，显示了无信息的错误消息。此问题已解决。

{p 4 9 2}
10.  {help makecns_zh} 现在允许约束数与参数数量相等。这会影响使用 {help cnsreg_zh} 和使用 {help ml_zh} 的任何估计命令。

{p 4 9 2}
11.  Mata 功能 {help mf_fopen_zh:fputmatrix()} 和 {help mf_fopen_zh:fgetmatrix()} 无法保存 Mata 结构矩阵和向量。此问题已解决。

{p 4 9 2}
12.  Mata 功能 {helpb mf_regexr:regexr()} , 当 a) 要匹配的正则表达式为单个字节，b) 匹配发生在源字符串的末尾，c) 替换字符串的长度为 0 或 1 时，未能替换匹配的子字符串。

{p 9 9 2}
     例如，

		{cmd:mata: regexr("ABCDa","a","")}
		{cmd:mata: regexr("ABCDa","a","c")}

{p 9 9 2}
     这两个操作都错误地返回了 {cmd:"ABCDa"}，而不是 {cmd:"ABCD"} 和 {cmd:"ABCDc"}。此问题已解决。

{p 4 9 2}
13.  {help ml_zh}, 在拟合带有选项 {cmd:svy} 的模型时，且样本权重未被 {help svyset_zh} 设定时，出现了 {cmd:e(wvar)} 和 {cmd:e(wexp)} 的名称临时变量发布。此问题已解决。

{p 4 9 2}
14.  {help predict_zh} 在使用新变量名称时，即使该变量在当前数据集中不存在，也会以错误消息退出。旧行为未被保留，这预示着无效的预测值。

{p 4 9 2}
15.  {helpb asmixlogit_postestimation##predict:predict} 在 {help asmixlogit_zh} 后，当与选项 {cmd:scores} 和指定的变量类型一起，保留了指定变量类型仅用于第一个得分变量。此问题已解决。

{p 4 9 2}
16.  {helpb asmixlogit_postestimation##predict:predict} 在 {help asmixlogit_zh} 和选项 {cmd:scores} 之后，当 {cmd:asmixlogit} 以固定系数之间的全因子交互被指定，并指定选项 {cmd:random(}{it:varlist}{cmd:, correlated)}，只有一个变量时，产生了得分，设置错误为 0。此问题已经解决。

{p 4 9 2}
17.  {help gsem_predict_zh:predict} 在 {help gsem_command_zh:gsem} 后，当指定选项 {opt classposteriorpr} 并且拟合模型包含两个或多个多项式结果时，出现了未经帮助的错误消息，导致估计样本中丢失一个或多个观察。此问题已解决。

{p 4 9 2}
18.  {cmd:predict} 在 {helpb ologit_postestimation##predict:ologit} 和 {helpb oprobit_postestimation##predict:oprobit} 后，忽视选项 {cmd:nooffset}。此问题已解决。

{p 4 9 2}
19.  {cmd:predict} 在 {helpb ologit_postestimation##predict:ologit} 和 {helpb oprobit_postestimation##predict:oprobit} 后，在使用选项 {cmd:scores} 时，不会出现错误消息，尽管已指定选项 {cmd:nooffset}。此问题已解决。

{p 4 9 2}
20.  {help sem_command_zh:sem} 在因子变量上被指定时，现在将产生一种信息性错误消息。旧行为被保留，不会在任何情况下被忽略。

{p 4 9 2}
21.  {help sem_command_zh:sem} 在观察到外生和两个或多个潜在外生变量时，在指定路径的顺序上某种程度上无法拟合合格的模型。此问题已解决。

{p 4 9 2}
22.  {help sembuilder:SEM Builder} 有以下修复：

{p 9 13 2}
     a.  在选择连接的自定义外观中包含标准误差时，SEM Builder 报告的报告了标准化估计而不是标准误差。因此已解决。

{p 9 13 2}
     b.  SEM Builder 在尝试更改路径箭头大小时没有变化。此问题已解决。

{p 9 13 2}
     c.  当路径箭头小于 0 时，SEM Builder 的箭头替换为在画布上延伸的线条。此已被修复。

{p 4 9 2}
23.  {help svy_zh}{cmd::} {help total_zh}，对于具有单一抽样单位的分层数据以及{help svyset_zh} 设置为 {cmd:singleunit(centered)} 的数据，现在使用一给定阶段的比例总数的平均值，而不是使用总均值。而旧行为输出的标准误差过大而且不会在版本控制中保留。

{p 4 9 2}
24.  {helpb teffects nnmatch} 使用精确和距离匹配时忽略了指定的卡尺。此问题已解决。

{p 4 9 2}
25.  Stata 现在在将图表导出为 SVG 格式时为 SVG 路径元素创建随机名称。当一个 HTML 文档包含多个 Stata SVG 图形，这些 SVG 路径共享公共名称时，浏览器可能会在呈现 SVG 图形时出现问题；随机化路径名称可防止这一点。如果希望控制 SVG 路径的命名方式，请在导出图形时指定选项 {cmd:pathprefix()}。Stata 将使用您的路径前缀和为每个路径创建递增索引创建稳定路径名称。更多信息请参见 {manhelpi svg_options G-3}。

{hline 8} {hi:更新 17dec2018} {hline}

{p 5 9 2}
1.  在线帮助和搜索索引已更新，以便与 {help sj_zh:Stata Journal} 18(4) 保持一致。

{p 5 9 2}
2.  {help churdle_zh} 有以下修复：

{p 9 13 2}
     a.  {cmd:churdle} 与 {help svy_zh} 的前缀以及缺失值的权重一起指定时，欢迎退出并显示错误消息。现在会生成点估计。

{p 9 13 2}
     b.  {cmd:churdle} 在 {help svy_zh} 前缀中指定生成的辅助参数时，报告错误的标准误差，现已解决。

{p 5 9 2}
3.  {help cpoisson_zh} 在指定约束条件且初始值不可行时，退出错误消息。此问题已解决。

{p 5 9 2}
4.  {helpb ereturn display} 在使用 {help mean_zh} 和 {help total_zh} 的结果时未能报告估计参数的指数形式。此问题已解决。

{p 5 9 2}
5.  {helpb estat sbknown} 在多面数据集的一个面上进行估计时，退出一条无信息的错误消息。此问题已解决。

{p 5 9 2}
6.  {help histogram_zh} 在使用 {cmd:if} 表达式或 {cmd:in} 范围时，错误地将这些样本限制应用于选项 {cmd:addplot()} 中指定的附加图上。此问题已解决。

{p 9 9 2}
    不过当同时指定选项 {cmd:by()} 时，{cmd:if} 表达式或 {cmd:in} 范围将会应用于选项 {cmd:addplot()} 中指定的附加图。例如 {cmd:histogram} 的行为在指定选项时并没有改变。

{p 5 9 2}
7.  {help mestreg_zh} 现在得到了建议，并处理了延迟条目或间隙的存在。

{p 5 9 2}
8.  {help gsem_predict_zh:predict} 使用选项 {cmd:pr} 之后，生成 Conn-Exponential 价格区间时，不再允许整合。但是返回了已估计的值；其类型和顺序相同。此问题已解决。

{p 5 9 2}
9.  {helpb tpoisson_postestimation##predict:predict} 使用选项 {cmd:scores} 同时且未截断地返回不变量的预测。

{p 4 9 2}
10.  {helpb stteffects ipwra} 的生存时间结果模型是 {cmd:weibull}、{cmd:exponential} 或 {cmd:lnormal} 时，可能未收敛。对于这些情况，已改进收敛性。

{hline 8} {hi:更新 15oct2018} {hline}

{p 5 9 2}
1.  {help icd10cm_zh} 和 {help icd10pcs_zh} 在 2019 财年进行了更新。键入 {cmd:icd10cm query} 或 {cmd:icd10pcs query} 查看这些更改的信息。

{p 5 9 2}
2.  {help areg_zh} 在指定因子变量和权重时，可能未排除在 {cmd:absorb()} 变量中的常数水平。此行为已修复。

{p 5 9 2}
3.  {helpb estat lcmean} 和 {helpb estat lcprob} ，按后的 {help fmm_zh} 或 {help gsem_command_zh:gsem} 估计了模型的点质量，进入了不正反馈。因此现在能使用，如 {cmd:pointmass} 的基本层级数量应为 6 的等级工作。

{p 5 9 2}
4.  {helpb estimates table} 出现相对频宽，基于先前操作的结果选项时，退出时只显示主观性条件的完全统计量。 现已修复。

{p 5 9 2}
5.  {helpb import excel} 的选项的复杂性，可能会带来更复杂的相关性感知能力，并在基本机密的情况下失去相关性。 现已修复。

{p 5 9 2}
6.  {help exp_zh:Expressions} 函数计算区域解释的关联性与估计和被遗漏的部分区域重叠。此问题已修复。

{p 5 9 2}
7.  {helpb pwcorr} 适当返回合成推论矩阵。 现已修复。

{p 5 9 2}
8.  {help stepwise_zh} 时存在很多短期预测结果和单元和上下估计路线不在单化x中。 现已修复。

{p 5 9 2}
9.  {help logit_zh} 在未给出参数的情况下始终提供推断情报和量化均衡，现已修复。

{p 4 9 2}
10.  {helpb claims} 现针对应用程序有效反馈可用的功能进行固定。

{p 4 9 2}
11. 在特定条件下，{helpb regression} 被正确实施并调整了对特定变量的自由条件。因此现已修复。

{p 4 9 2}
12. 经过通用模型的仿真，{helpb chi_square} 现通过动态过滤并增强了包裹价值的信息。此问题现已解决。

{p 5 9 2}
13. {help predict_zh} 不能通过变换行之间的影响进行直接返回。这现在还将按选择年度重写。

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <whatsnew15.sthlp>}