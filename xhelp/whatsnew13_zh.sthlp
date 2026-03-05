{smcl}
{* *! version 1.2.0  13sep2017}{...}
{vieweralsosee "whatsnew" "help whatsnew_zh"}
{help whatsnew13:English Version}
{hline}{...}
{title:Stata 13 版本中新增内容}

{pstd}
此文件记录了 Stata 在 13.0 和 13.1 版本中添加的功能和修复：

    {c TLC}{hline 63}{c TRC}
    {c |} 帮助文件        内容                     适用年份           {c |}
    {c LT}{hline 63}{c RT}
    {c |} {help whatsnew_zh}         Stata 16.0                   2019 至今 {c |}
    {c |} {help whatsnew15to16_zh}   Stata 16.0 新版本           2019            {c |}
    {c |} {help whatsnew15_zh}       Stata 15.0 和 15.1          2017 至 2019    {c |}
    {c |} {help whatsnew14to15_zh}   Stata 15.0 新版本           2017            {c |}
    {c |} {help whatsnew14_zh}       Stata 14.0、14.1 和 14.2   2015 至 2017    {c |}
    {c |} {help whatsnew13to14_zh}   Stata 14.0 新版本           2015            {c |}
    {c |} {bf:本文件}        Stata 13.0 和 13.1          2013 至 2015    {c |}
    {c |} {help whatsnew12to13_zh}   Stata 13.0 新版本           2013            {c |}
    {c |} {help whatsnew12_zh}       Stata 12.0 和 12.1          2011 至 2013    {c |}
    {c |} {help whatsnew11to12_zh}   Stata 12.0 新版本           2011            {c |}
    {c |} {help whatsnew11_zh}       Stata 11.0、11.1 和 11.2   2009 至 2011    {c |}
    {c |} {help whatsnew10to11_zh}   Stata 11.0 新版本           2009            {c |}
    {c |} {help whatsnew10_zh}       Stata 10.0 和 10.1          2007 至 2009    {c |}
    {c |} {help whatsnew9to10_zh}    Stata 10.0 新版本           2007            {c |}
    {c |} {help whatsnew9_zh}        Stata  9.0、9.1 和 9.2     2005 至 2007    {c |}
    {c |} {help whatsnew8to9_zh}     Stata  9.0 新版本           2005            {c |}
    {c |} {help whatsnew8_zh}        Stata  8.0、8.1 和 8.2     2003 至 2005    {c |}
    {c |} {help whatsnew7to8_zh}     Stata  8.0 新版本           2003            {c |}
    {c |} {help whatsnew7_zh}        Stata  7.0                   2001 至 2002    {c |}
    {c |} {help whatsnew6to7_zh}     Stata  7.0 新版本           2000            {c |}
    {c |} {help whatsnew6_zh}        Stata  6.0                   1999 至 2000    {c |}
    {c BLC}{hline 63}{c BRC}

{pstd}
最近的更改列在前面。

{hline 8} {hi:更近的更新} {hline}

{pstd}
参见 {help whatsnew13to14_zh}。

{hline 8} {hi:2016年12月16日更新} {hline}

{p 5 9 2}
1.  (Mac) macOS Sierra 10.12.2 引入了一项更改，导致 Stata 的 Do-file 编辑器崩溃。此问题已修复。

{hline 8} {hi:2016年7月25日更新} {hline}

{p 5 9 2}
1.  Stata 已更新，以考虑国际地球自转和参考系统服务机构 (IERS) 于 2015 年 6 月 30 日添加的闰秒和 IERS 于 2016 年 12 月 31 日将添加的闰秒。Stata 的 datetime/C UTC 日期格式现在将 30jun2015 23:59:60 和 31dec2016 23:59:60 识别为有效时间。

{p 5 9 2}
2.  {help sem_estat_teffects_zh:estat teffects} 未正确计算内生变量之间总效果和间接效果的标准误差。此问题已修复。

{hline 8} {hi:2016年3月10日更新} {hline}

{p 5 9 2}
1.  多级混合效应估计量 {help gsem_command_zh:gsem}、{help meglm_zh}、{help melogit_zh}、{help meprobit_zh}、{help meologit_zh}、{help meoprobit_zh}、{help mepoisson_zh} 和 {help menbreg_zh} 有以下改进和修复：

{p 9 13 2}
     a.  {cmd:gsem}、{cmd:meglm}、{cmd:melogit}、{cmd:meprobit}、{cmd:meologit}、{cmd:meoprobit}、{cmd:mepoisson} 和 {cmd:menbreg} 现在更容易收敛，适用于数据中具有大组大小的模型。

{p 9 13 2}
     b.  {cmd:gsem}、{cmd:meglm}、{cmd:melogit}、{cmd:meprobit}、{cmd:meologit}、{cmd:meoprobit}、{cmd:mepoisson} 和 {cmd:menbreg} 在用于观测数量较多的组的数据集时，可能表示模型已经收敛并报告的结果未在计算中包括大组。要确定您的模型是否受到影响，您可以使用 {cmd:predict} 来获取随机效应的经验贝叶斯均值估计，并检查大组中是否存在零值。此问题已修复。

{p 5 9 2}
2.  在 2015 年 11 月 12 日更新后，{help xtlogit_zh} 和 {help xtprobit_zh} 与选项 {cmd:vce(robust)} 或选项 {cmd:vce(cluster} {it:panelvar}{cmd:)}，当完美预测因子导致样本量减少时，报告的标准误差不正确。此问题已修复。

{hline 8} {hi:2015年12月9日更新} {hline}

{p 5 9 2}
1.  {help fp_zh:fp generate}，当指定了带有引号（""）的 {help exp_zh:expression} 的限定符 {cmd:if} 时，错误地退出并报告错误信息 "{err:无效的表达式}"。此问题已修复。

{p 5 9 2}
2.  {cmd:predict} 在 {help gsem_command_zh:gsem}、{help meologit_zh} 或 {help meoprobit_zh} 之后，当 {it:depvar} 的结果不是从 {cmd:1} 开始的连续值，并且所请求的预测需要经验贝叶斯估计时，错误地退出并报告错误信息 "{err:无法计算经验贝叶斯均值; {err:评估者返回缺失值}}"。此问题已修复。

{p 5 9 2}
3.  (Mac) Do-file 编辑器在执行选定行时，如果选定行之前包含 Unicode 字符的行，错误地执行了错误的行。此问题已修复。

{p 5 9 2}
4.  (Mac) 在更新对话框中，单击手动更新的链接未打开“保持 Stata 13 最新”网页。此问题已修复。

{hline 8} {hi:2015年11月12日更新} {hline}

{p 5 9 2}
1.  {help collapse_zh} 有以下修复：

{p 9 13 2}
     a.  {cmd:collapse} 与选项 {opt percent} 并且在 {opt by()} 变量中有缺失值时，使用错误的分母来计算百分比。此问题已修复。

{p 9 13 2}
     b.  {cmd:collapse} 与选项 {opt percent} 和 {cmd:iweight}s 使用未加权总数而不是加权总数来计算百分比。此问题已修复。

{p 9 13 2}
     c.  {cmd:collapse} 与选项 {opt percent} 和 {cmd:aweight}s 忽略了指定的权重。此问题已修复。

{p 5 9 2}
2.  {help contrast_zh} 与观测权重的正交多项式操作符 {cmd:pw(}{it:numlist}{cmd:).} 和 {cmd:qw(}{it:numlist}{cmd:).} 未正确解释 {it:numlist} 为多项式的度数。当 {cmd:pw.} 或 {cmd:qw.} 被指定时，{it:numlist} 被解释为因变量的值。此问题已修复。

{p 5 9 2}
3.  {help egen_zh:egen cut({it:varname}), group({it:#})}，当 {it:#} > 1000 并且数据未按 {it:varname} 排序时，没有产生 {it:#} 组。此问题已修复。

{p 5 9 2}
4.  {help etregress_zh} 与 {it:aweight}s 错误地退出并出现错误。此问题已修复。

{p 5 9 2}
5.  {helpb forecast solve} 与选项 {cmd:simulate(residuals)} 使用时返回 Mata 错误消息，在定义 {help forecast identity:identity} 之前定义 {help forecast estimates:estimates}，或者在添加 {help forecast coefvector:coefficient vector} 之前。此问题已修复。

{p 5 9 2}
6.  Stata 函数 {help f_regexm_zh:regexm({it:s}, {it:re})} 在一个或两个参数为二进制 strL 时可能导致 Stata 崩溃。此问题已修复。

{p 5 9 2}
7.  Stata 函数 {help f_strproper_zh:strproper({it:s})} 如果参数是二进制 strL 可能导致 Stata 崩溃。此问题已修复。

{p 5 9 2}
8.  {helpb graph export}，当使用导出为 EPS 格式的图形包含超过 2000 个点的字体时，可能导致 Stata 崩溃。此问题已修复。

{p 5 9 2}
9.  {help gsem_command_zh:gsem} 具有截距或某些潜在变量上的固定预测变量可能无法收敛，即使对于其他统计识别的模型也是如此。相反，该命令报告消息 "(not concave)" 或 "(backed up)"，在迭代日志中记录的对数似然值保持不变。此问题已修复。

{p 4 9 2}
10.  {help gsem_command_zh:gsem} 文档指出支持 {help tsvarlist_zh:time-series operators} 。然而，当指定了采用时间序列操作的 {it:depvar} 和多级潜在变量时，这些命令以无信息的错误消息退出。此问题已修复。

{p 4 9 2}
11.  {help icd9_zh} 和 {help icd9p_zh} 有以下修复：

{p 9 13 2}
     a.  {cmd:icd9 check} 和 {cmd:icd9p check}，对于少量类别和子类别代码，错误地指示代码未定义。此问题已修复。请注意，没有可计费 ICD-9-CM 代码受到影响。

{p 9 13 2}
     b.  {cmd:icd9 generate} 和 {cmd:icd9p generate} 与选项 {cmd:description} 返回为空的描述，而不是指示这些代码已进一步细分。此问题已修复。

{p 9 13 2}
     c.  {cmd:icd9 generate} 与选项 {cmd:description} 针对代码 176、764、765、V29 和 V69 返回了包括文本 "(Stata)" 的 StataCorp 制作的非官方描述。对于这些代码，现在的描述为 "{cmd:*}"，这是表明代码已细分的文档指示符。

{p 9 13 2}
     d.  {cmd:icd9 lookup} 和 {cmd:icd9p lookup}，在查找少量类别代码和子类别代码时未指定范围时，错误地返回带有注释的 "(no matches found)"。例如，键入 {cmd:icd9 lookup 040.4} 会触发该注释，但 {cmd:icd9 lookup 040.4*} 则不会。此问题已修复。

{p 4 9 2}
12.  {help ivtobit_zh} 对于具有多个内生变量的模型，现在更容易收敛。

{p 4 9 2}
13.  {help margins_zh} 在不寻常的情况下，{help xtlogit_zh:xtlogit, re} 或 {help xtlogit_zh:xtlogit, pa}，当也选择了选项 {opt noconstant} 并且选项 {cmd:vce(bootstrap)} 或选项 {cmd:vce(jackknife)} 时，不正确地报告错误消息 {err:"conformability error"}。此问题已修复。

{p 4 9 2}
14.  {help meologit_zh} 和 {help meoprobit_zh} 的文档指出支持对于 {it:depvar} 的 {help tsvarlist_zh:time-series operators} 。然而，当指定了使用时间序列操作的 {it:depvar} 时，这些命令以无信息的错误消息退出。此问题已修复。

{p 4 9 2}
15.  {help pctile_zh:pctile {it:newvar} = {it:exp}, nquantiles({it:#})}，当 {it:#} > 1000 并且数据未按 {it:exp} 排序时，正确计算分位数值，但未在数据集的前 {it:#}-1 观察中存储这些值。此问题已修复。

{p 4 9 2}
16.  {help gsem_predict_zh:predict} 与选项 {cmd:latent} 在 {help gsem_command_zh:gsem} 之后，当用于拟合具有两个或多个由观测变量预测的潜在变量的模型时，错误地退出并报告错误信息 "{error:变量 _cons 未找到}"。此问题已修复。

{p 4 9 2}
17.  {help gsem_predict_zh:predict} 在 {help gsem_command_zh:gsem} 之后，具有多项输出错误地退出并报告错误消息，如果指定的预测涉及潜在变量的预测。此问题已修复。

{p 4 9 2}
18.  {helpb ologit_postestimation##predict:predict} 与 {it:stub}{cmd:*} 和选项 {cmd:pr}，在使用 {help ologit_zh} 或 {help oprobit_zh} 拟合没有协变量的模型之后，错误地退出并报告错误信息 "{err:需要变量名}"。此问题已修复。

{p 4 9 2}
19.  {help prtest_zh} 和 {helpb prtesti}，在进行 两个样本的比例检验时，报告了测试的双侧 p 值，标签为 {cmd:Pr(|Z| < |z|)}。标签应为 {cmd:Pr(|Z| > |z|)}。此问题已修复。

{p 4 9 2}
20.  {help svy_zh} 在使用 {help svy estimation:regression model} 对来自多阶段调查设计的数据拟合时，1）如果在最后阶段没有采样单元或分层变量；2）如果在所有阶段都有 FPC 变量，会导致错误信息 "{err:所有观测值在某个分层中必须相同}"，这取决于数据的排序顺序。此问题已修复。

{p 4 9 2}
21.  {helpb svy tabulate:svy: tabulate}，在为表变量的值标签包含引号时，退出时报告错误信息 "{err:兼容性错误}"。此问题已修复。

{p 4 9 2}
22.  {helpb teffects nnmatch}，在不寻常情况下，指定了 {it:fweight}s 与选项 {cmd:vce(robust)}，产生了过小的标准误差。此问题已修复。

{p 4 9 2}
23.  {help xtlogit_zh} 和 {help xtprobit_zh} 与选项 {cmd:vce(robust)} 或选项 {cmd:vce(cluster} {it:panelvar}{cmd:)），当完美预测因子导致样本量减少时，错误地退出并错误消息 "{err:计算稳健标准误差失败}"。此问题已修复。

{p 4 9 2}
24.  与文档相反，{help xtpoisson_zh:xtpoisson, re} 与选项 {opt normal} 并未接受 {help tsvarlist_zh:time-series operators} 在 {it:depvar} 或 {it:indepvars} 中。此问题已修复。

{p 4 9 2}
25.  {help xtregar_zh} 有以下修复：

{p 9 13 2}
     a.  {cmd:xtregar} 与选项 {cmd:re}，在负自相关系数的少数情况下，产生的标准误差过大。此问题已修复。

{p 9 13 2}
     b.  {cmd:xtregar} 与选项 {cmd:fe}，在负自相关系数的少数情况下，生成的标准误差过大，以及一个被偏向 0 的常数项的点估计。此问题已修复。

{p 4 9 2}
26.  (Mac) 在查找对话框中，选中“仅匹配整个单词”时，在 Do-file 编辑器中搜索时，会导致 Stata 正确找到当前搜索中的搜索词，但保存设置错误。后续搜索结果只返回以请求的搜索词开头的文本，而不是整个单词。此问题已修复。

{p 4 9 2}
27.  (Mac) 从结果窗口复制的多个行的表格作为 HTML 时，HTML 输出将显示为一个只有一行的表格。此问题已修复。

{p 4 9 2}
28.  (Mac) Stata 图形可能错误地将多边形的第一个点渲染到屏幕上，例如箭头头。第一个点相对于应绘制的位置向右偏移了一个像素。此问题已修复。

{p 4 9 2}
29.  (Mac) 在 Mac OS X 10.10 的图形对话框中，结合这一特定步骤序列——1) 从变量控制中选择一个变量；2) 切换到一个没有活动文本编辑字段的选项卡；3) 单击 OK 按钮而不进行任何其他更改，会显示警告消息，并在少数情况下导致 Stata 崩溃。此问题已修复。

{p 4 9 2}
30.  (Mac) {help view_zh:view browse} 未能打开 https URI 方案或以引号括起来的 URL。此问题已修复。

{p 4 9 2}
31.  (Mac GUI) OS X 10.11 （El Capitan）的系统完整性保护功能阻止用户对 /usr/bin 目录进行修改。因为 Stata 不再能够写入 /usr/bin 目录，因此 Stata 现在在用户选择从 Apple 菜单中选择“安装终端实用程序...”时，在 /usr/local/bin 目录中创建对控制台版本 {help statamp_zh:Stata/MP} 或 {help statase_zh:Stata/SE} 的符号链接。如果目录不存在，Stata 将创建 /usr/local/bin 目录。

{hline 8} {hi:2015年6月3日更新} {hline}

{p 5 9 2}
1.  {helpb ereturn display}、{helpb ml display} 和 {help _coef_table_zh}，在报告包含交互项的多方程模型的估计结果时，有时会未能识别一些交互项的基级别。在这种情况下，基级别标记为 "(省略)"，而非 "(基数)"。估计的系数和相关统计数据是正确的；该错误仅影响标签。

{p 9 9 2}
    例如，假设我们有因子 A 和 B，每个都有级别 1 和 2。然后来自

		{cmd:. sureg (y1 = A##B) (y2 = A#B), allbase}

{p 9 9 2}
    的系数表会错误地将 {cmd:_b[y1:1.A#2.B]} 和 {cmd:_b[y1:2.A#1.B]} 标记为 "(省略)"，而非 "(基数)"。此问题已修复。

{p 5 9 2}
2.  {helpb estat mfx}，在 {help asclogit_zh} 或 {help asmprobit_zh} 后指定 {bf:alternatives()} 时，如果任何字符串长度超过 26 个字符，则会退出并出错。此问题已修复。

{p 5 9 2}
3.  任何允许 {help fvvarlists:factor 变量} 的估计命令，当 {help matsize_zh} 被设定为大于 1000 时，即使模型参数相对较少，也会变慢。此问题已修复。

{p 5 9 2}
4.  {helpb export excel}，在导出任何日历日期格式的变量时，除了 {cmd:%td}，错误地将变量作为每日日期导出，而不尊重每周、每月、季度、半年或每年的格式。此问题已修复。

{p 5 9 2}
5.  对于形如 {cmd:d#}、{cmd:D#}、{cmd:e#} 和 {cmd:E#} 的变量名，Stata 的表达式解析器错误地将某些 {help fvvarlists:factor-variable} 指定（例如 {cmd:1.d1} 和 {cmd:1.e2}）误解析为数值文字。此问题已修复。

{p 5 9 2}
6.  函数 {help normalden():{bf:normalden(}{it:x},{it:m},{it:s}{bf:)}} 和 {help lnnormalden():{bf:lnnormalden(}{it:x},{it:m},{it:s}{bf:)}}, 当 {it:s} 被指定为字符串值而非表示标准差的数值时，返回指定的字符串而非退出错误消息。此问题已修复。

{p 5 9 2}
7.  {helpb gnbreg}、{help nbreg_zh} 和 {help tnbreg_zh} 现在在选项 {cmd:vce(robust)}、选项 {cmd:vce(cluster} {it:clustvar}{cmd:)}, 或 {help weight_zh:{bf:pweight}s} 被指定时报告伪 R 平方。

{p 5 9 2}
8.  {help graph_zh}，使用 {cmd:.gph} 文件时，该文件是通过要求较新格式的 Stata 新版本创建的，并且当图形文件名在命令行上用引号括起来时，会简单地声明该文件未找到。{cmd:graph} 现在会发出一条消息，表示该文件的格式对于当前运行的 Stata 版本来说太新。

{p 5 9 2}
9.  {helpb graph bar}，当未指定任何变量或统计数据时，并且选项 {cmd:over()} 和 {cmd:by()} 被结合使用时（例如，{cmd:graph bar, over(rep78) by(foreign)}），错误地退出并报告错误。此问题已修复。

{p 4 9 2}
10.  {helpb graph pie}，当片段的数量超过 {help pstyle_zh:{it:pstyle}s} 的定义数目时，在方案中，所有多余的片段都会被渲染为白色，并且报告无帮助的注释。{cmd:graph pie} 现在像 {cmd:graph bar}、{cmd:graph twoway} 和其他图形命令一样，当片段的数量超过定义的 {it:pstyle}s 的数量时会回收定义的 {it:pstyle}s。{cmd:graph pie} 现在还支持 {cmd:pcycle()} 选项以减少在回收之前使用的 {it:pstyle}s 的数量。

{p 4 9 2}
11.  {helpb import haver} 有以下修复：

{p 9 13 2}
     a.  {cmd:import haver} 在将每日序列聚合为每周时，会将周定义为从周一开始的。周五现在被视为一周的第一天。

{p 9 13 2}
     b.  {cmd:import haver} 在某个序列中没有数据时，会将该序列作为包含所有缺失值的变量加载，而不是将此序列从查询中丢弃。此问题已修复。

{p 9 13 2}
     c.  {cmd:import haver, describe} 与选项 {cmd:saving()} 一起使用时，会始终在结果窗口中显示系列元信息。元信息应仅在选项 {cmd:saving()} 中指定子选项 {cmd:verbose} 时才显示。此问题已修复。

{p 4 9 2}
12.  {helpb irf graph} 与选项 {cmd:ci}{it:#}{cmd:opts()} 未能更改第 {it:#} 个统计量的置信区间的表述。此问题已修复。

{p 4 9 2}
13.  {help ivprobit_zh} 对于指定多个内生变量的模型现在更容易收敛。

{p 4 9 2}
14.  {help margins_zh} 在不寻常的情况下，当 {help xtlogit_zh:xtlogit, re} 或 {help xtlogit_zh:xtlogit, pa} 也指定了选项 {opt noconstant} 时，不正确地退出并报告错误消息 {err:"兼容性错误"}。此问题已修复。

{p 4 9 2}
15.  {help meologit_zh} 和 {help meoprobit_zh} 的文档指出支持对于 {it:depvar} 的 {help tsvarlist_zh:时间序列运算符}。然而，当指定了使用时间序列操作的 {it:depvar} 时，这些命令以无信息的错误消息退出。此问题已修复。

{p 4 9 2}
16.  {help pctile_zh:pctile {it:newvar} = {it:exp}, nquantiles({it:#})}，当 {it:#} > 1000 并且数据未按 {it:exp} 排序时，正确计算分位数值，但未在数据集的前 {it:#}-1 观察中存储这些值。此问题已修复。

{p 4 9 2}
17.  {help gsem_predict_zh:predict} 与选项 {cmd:latent} 在 {help gsem_command_zh:gsem} 之后，当用于拟合具有两个或多个由观测变量预测的潜在变量的模型时，错误地退出并报告错误信息 "{error:变量 _cons 未找到}"。此问题已修复。

{p 4 9 2}
18.  {help gsem_predict_zh:predict} 在 {help gsem_command_zh:gsem} 之后，具有多项输出错误地退出并报告错误消息，如果指定的预测涉及潜在变量的预测。此问题已修复。

{p 4 9 2}
19.  {helpb ologit_postestimation##predict:predict} 与 {it:stub}{cmd:*} 和选项 {cmd:pr}，在使用 {help ologit_zh} 或 {help oprobit_zh} 拟合没有协变量的模型之后，错误地退出并报告错误信息 "{err:需要变量名}"。此问题已修复。

{p 4 9 2}
20.  {help prtest_zh} 和 {helpb prtesti}，在进行两个样本的比例检验时，报告了测试的双侧 p 值，标签为 {cmd:Pr(|Z| < |z|)}。标签应为 {cmd:Pr(|Z| > |z|)}。此问题已修复。

{p 4 9 2}
21.  {help svy_zh} 在使用 {help svy estimation:regression model} 对来自多阶段调查设计的数据拟合时，1）如果在最后阶段没有采样单元或分层变量；2）如果在所有阶段都有 FPC 变量，会导致错误信息 "{err:所有观测值在某个分层中必须相同}"，这取决于数据的排序顺序。此问题已修复。

{p 4 9 2}
22.  {helpb svy tabulate:svy: tabulate}，在为表变量的值标签包含引号时，退出时报告错误信息 "{err:兼容性错误}"。此问题已修复。

{p 4 9 2}
23.  {helpb teffects nnmatch}，在不寻常情况下，指定了 {it:fweight}s 与选项 {cmd:vce(robust)}，产生了过小的标准误差。此问题已修复。

{p 4 9 2}
24.  {help xtlogit_zh} 和 {help xtprobit_zh} 与选项 {cmd:vce(robust)} 或选项 {cmd:vce(cluster} {it:panelvar}{cmd:)），当完美预测因子导致样本量减少时，错误地退出并错误消息 "{err:计算稳健标准误差失败}"。此问题已修复。

{p 4 9 2}
25.  与文档相反，{help xtpoisson_zh:xtpoisson, re} 与选项 {opt normal} 并未接受 {help tsvarlist_zh:时间序列运算符} 在 {it:depvar} 或 {it:indepvars} 中。此问题已修复。

{p 4 9 2}
26.  {help xtregar_zh} 有以下修复：

{p 9 13 2}
     a.  {cmd:xtregar} 与选项 {cmd:re}，在负自相关系数的少数情况下，产生的标准误差过大。此问题已修复。

{p 9 13 2}
     b.  {cmd:xtregar} 与选项 {cmd:fe}，在负自相关系数的少数情况下，生成的标准误差过大，以及一个被偏向 0 的常数项的点估计。此问题已修复。

{p 4 9 2}
27.  (Mac) 在查找对话框中，选择“仅匹配整个单词”时，在 Do-file 编辑器中搜索时，会导致 Stata 正确找到当前搜索中的搜索词，但保存设置错误。后续搜索结果只返回以请求的搜索词开头的文本，而不是整个单词。此问题已修复。

{p 4 9 2}
28.  (Mac) 从结果窗口复制的多个行的表格作为 HTML 时，HTML 输出将显示为一个只有一行的表格。此问题已修复。

{p 4 9 2}
29.  (Mac) Stata 图形可能错误地将多边形的第一个点渲染到屏幕上，例如箭头头。第一个点相对于应绘制的位置向右偏移了一个像素。此问题已修复。

{p 4 9 2}
30.  (Mac) 在 Mac OS X 10.10 的图形对话框中，结合这一特定步骤序列——1) 从变量控制中选择一个变量；2) 切换到一个没有活动文本编辑字段的选项卡；3) 单击 OK 按钮而不进行任何其他更改，会显示警告消息，并在少数情况下导致 Stata 崩溃。此问题已修复。

{p 4 9 2}
31.  (Mac) {help view_zh:view browse} 未能打开 https URI 方案或以引号括起来的 URL。此问题已修复。

{p 4 9 2}
32.  (Mac GUI) OS X 10.11 （El Capitan）的系统完整性保护功能阻止用户对 /usr/bin 目录进行修改。因为 Stata 不再能够写入 /usr/bin 目录，因此 Stata 现在在用户选择从 Apple 菜单中选择“安装终端实用程序...”时，在 /usr/local/bin 目录中创建对控制台版本 {help statamp_zh:Stata/MP} 或 {help statase_zh:Stata/SE} 的符号链接。如果目录不存在，Stata 将创建 /usr/local/bin 目录。

{hline 8} {hi:2015年6月3日更新} {hline}

{p 5 9 2}
1.  {helpb ereturn display}、{helpb ml display} 和 {help _coef_table_zh}，在报告包含交互项的多方程模型的估计结果时，有时会未能识别一些交互项的基级别。在这种情况下，基级别标记为 "(省略)"，而非 "(基数)"。估计的系数和相关统计数据是正确的；该错误仅影响标签。

{p 9 9 2}
    例如，假设我们有因子 A 和 B，每个都有级别 1 和 2。然后来自

		{cmd:. sureg (y1 = A##B) (y2 = A#B), allbase}

{p 9 9 2}
    的系数表会错误地将 {cmd:_b[y1:1.A#2.B]} 和 {cmd:_b[y1:2.A#1.B]} 标记为 "(省略)"，而非 "(基数)"。此问题已修复。

{p 5 9 2}
2.  {helpb estat mfx}，在 {help asclogit_zh} 或 {help asmprobit_zh} 后指定 {bf:alternatives()} 时，如果任何字符串长度超过 26 个字符，则会退出并出错。此问题已修复。

{p 5 9 2}
3.  任何允许 {help fvvarlists:factor variables} 的估计命令，当 {help matsize_zh} 被设定为大于 1000 时，即使模型参数相对较少，也会变慢。此问题已修复。

{p 5 9 2}
4.  {helpb export excel}，在导出任何日历日期格式的变量时，除了 {cmd:%td}，错误地将变量作为每日日期导出，而不尊重每周、每月、季度、半年或每年的格式。此问题已修复。

{p 5 9 2}
5.  对于形如 {cmd:d#}、{cmd:D#}、{cmd:e#} 和 {cmd:E#} 的变量名，Stata 的表达式解析器错误地将某些 {help fvvarlists:factor-variable} 指定（例如 {cmd:1.d1} 和 {cmd:1.e2}）误解析为数值文字。此问题已修复。

{p 5 9 2}
6.  函数 {help normalden():{bf:normalden(}{it:x},{it:m},{it:s}{bf:)}} 和 {help lnnormalden():{bf:lnnormalden(}{it:x},{it:m},{it:s}{bf:)}}, 当 {it:s} 被指定为字符串值而非表示标准差的数值时，返回指定的字符串而非退出错误消息。此问题已修复。

{p 5 9 2}
7.  {helpb gnbreg}、{help nbreg_zh} 和 {help tnbreg_zh} 现在在选项 {cmd:vce(robust)}、选项 {cmd:vce(cluster} {it:clustvar}{cmd:)}, 或 {help weight_zh:{bf:pweight}s} 被指定时报告伪 R 平方。

{p 5 9 2}
8.  {help graph_zh}，使用 {cmd:.gph} 文件时，该文件是通过要求较新格式的 Stata 新版本创建的，并且当图形文件名在命令行上用引号括起来时，会简单地声明该文件未找到。{cmd:graph} 现在会发出一条消息，表示该文件的格式对于当前运行的 Stata 版本来说太新。

{p 5 9 2}
9.  {helpb graph bar}，当未指定任何变量或统计数据时，并且选项 {cmd:over()} 和 {cmd:by()} 被结合使用时（例如，{cmd:graph bar, over(rep78) by(foreign)}），错误地退出并报告错误。此问题已修复。

{p 4 9 2}
10.  {helpb graph pie}，当片段的数量超过 {help pstyle_zh:{it:pstyle}s} 的定义数目时，在方案中，所有多余的片段都会被渲染为白色，并且报告无帮助的注释。{cmd:graph pie} 现在像 {cmd:graph bar}、{cmd:graph twoway} 和其他图形命令一样，当片段的数量超过定义的 {it:pstyle}s 的数量时会回收定义的 {it:pstyle}s。{cmd:graph pie} 现在还支持 {cmd:pcycle()} 选项以减少在回收之前使用的 {it:pstyle}s 的数量。

{p 4 9 2}
11.  {helpb import haver} 有以下修复：

{p 9 13 2}
     a.  {cmd:import haver} 在将每日序列聚合为每周时，会将周定义为从周一开始的。周五现在被视为一周的第一天。 

{p 9 13 2}
     b.  {cmd:import haver} 在某个序列中没有数据时，会将该序列作为包含所有缺失值的变量加载，而不是将此序列从查询中丢弃。此问题已修复。

{p 9 13 2}
     c.  {cmd:import haver, describe} 与选项 {cmd:saving()} 一起使用时，会始终在结果窗口中显示系列元信息。元信息应仅在选项 {cmd:saving()} 中指定子选项 {cmd:verbose} 时才显示。此问题已修复。 

{p 4 9 2}
12.  {helpb irf graph} 与选项 {cmd:ci}{it:#}{cmd:opts()} 未能更改第 {it:#} 个统计量的置信区间的表述。此问题已修复。

{p 4 9 2}
13.  {help ivprobit_zh} 对于指定多个内生变量的模型现在更容易收敛。

{p 4 9 2}
14.  {help margins_zh} 在不寻常的情况下，当 {help xtlogit_zh:xtlogit, re} 或 {help xtlogit_zh:xtlogit, pa} 也指定了选项 {opt noconstant} 时，不正确地退出并报告错误消息 {err:"兼容性错误"}。此问题已修复。

{p 4 9 2}
15.  {help meologit_zh} 和 {help meoprobit_zh} 的文档指出支持对于 {it:depvar} 的 {help tsvarlist_zh:时间序列运算符}。然而，当指定了使用时间序列操作的 {it:depvar} 时，这些命令以无信息的错误消息退出。此问题已修复。

{p 4 9 2}
16.  {help pctile_zh:pctile {it:newvar} = {it:exp}, nquantiles({it:#})}，当 {it:#} > 1000 并且数据未按 {it:exp} 排序时，正确计算分位数值，但未在数据集的前 {it:#}-1 观察中存储这些值。此问题已修复。

{p 4 9 2}
17.  {help gsem_predict_zh:predict} 与选项 {cmd:latent} 在 {help gsem_command_zh:gsem} 之后，当用于拟合具有两个或多个由观测变量预测的潜在变量的模型时，错误地退出并报告错误信息 "{error:变量 _cons 未找到}"。此问题已修复。

{p 4 9 2}
18.  {help gsem_predict_zh:predict} 在 {help gsem_command_zh:gsem} 之后，具有多项输出错误地退出并报告错误消息，如果指定的预测涉及潜在变量的预测。此问题已修复。

{p 4 9 2}
19.  {helpb ologit_postestimation##predict:predict} 与 {it:stub}{cmd:*} 和选项 {cmd:pr}，在使用 {help ologit_zh} 或 {help oprobit_zh} 拟合没有协变量的模型之后，错误地退出并报告错误信息 "{err:需要变量名}"。此问题已修复。 

{p 4 9 2}
20.  {help prtest_zh} 和 {helpb prtesti}，在进行两个样本的比例检验时，报告了测试的双侧 p 值，标签为 {cmd:Pr(|Z| < |z|)}。标签应为 {cmd:Pr(|Z| > |z|)}。此问题已修复。

{p 4 9 2}
21.  {help svy_zh} 在使用 {help svy estimation:regression model} 对来自多阶段调查设计的数据拟合时，1）如果在最后阶段没有采样单元或分层变量；2）如果在所有阶段都有 FPC 变量，会导致错误信息 "{err:所有观测值在某个分层中必须相同}"，这取决于数据的排序顺序。此问题已修复。

{p 4 9 2}
22.  {helpb svy tabulate:svy: tabulate}，在为表变量的值标签包含引号时，退出时报告错误信息 "{err:兼容性错误}"。此问题已修复。

{p 4 9 2}
23.  {helpb teffects nnmatch}，在不寻常情况下，指定了 {it:fweight}s 与选项 {cmd:vce(robust)}，产生了过小的标准误差。此问题已修复。

{p 4 9 2}
24.  {help xtlogit_zh} 和 {help xtprobit_zh} 与选项 {cmd:vce(robust)} 或选项 {cmd:vce(cluster} {it:panelvar}{cmd:)），当完美预测因子导致样本量减少时，错误地退出并错误消息 "{err:计算稳健标准误差失败}"。此问题已修复。

{p 4 9 2}
25.  与文档相反，{help xtpoisson_zh:xtpoisson, re} 与选项 {opt normal} 并未接受 {help tsvarlist_zh:时间序列运算符} 在 {it:depvar} 或 {it:indepvars} 中。此问题已修复。

{p 4 9 2}
26.  {help xtregar_zh} 有以下修复：

{p 9 13 2}
     a.  {cmd:xtregar} 与选项 {cmd:re}，在负自相关系数的少数情况下，产生的标准误差过大。此问题已修复。

{p 9 13 2}
     b.  {cmd:xtregar} 与选项 {cmd:fe}，在负自相关系数的少数情况下，生成的标准误差过大，以及一个被偏向 0 的常数项的点估计。此问题已修复。

{p 4 9 2}
27.  (Mac) 在查找对话框中，选择“仅匹配整个单词”时，在 Do-file 编辑器中搜索时，会导致 Stata 正确找到当前搜索中的搜索词，但保存设置错误。后续搜索结果只返回以请求的搜索词开头的文本，而不是整个单词。此问题已修复。

{p 4 9 2}
28.  (Mac) 从结果窗口复制的多个行的表格作为 HTML 时，HTML 输出将显示为一个只有一行的表格。此问题已修复。

{p 4 9 2}
29.  (Mac) Stata 图形可能错误地将多边形的第一个点渲染到屏幕上，例如箭头头。第一个点相对于应绘制的位置向右偏移了一个像素。此问题已修复。

{p 4 9 2}
30.  (Mac) 在 Mac OS X 10.10 的图形对话框中，结合这一特定步骤序列——1) 从变量控制中选择一个变量；2) 切换到一个没有活动文本编辑字段的选项卡；3) 单击 OK 按钮而不进行任何其他更改，会显示警告消息，并在少数情况下导致 Stata 崩溃。此问题已修复。

{p 4 9 2}
31.  (Mac) {help view_zh:view browse} 未能打开 https URI 方案或以引号括起来的 URL。此问题已修复。

{p 4 9 2}
32.  (Mac GUI) OS X 10.11 （El Capitan）的系统完整性保护功能阻止用户对 /usr/bin 目录进行修改。因为 Stata 不再能够写入 /usr/bin 目录，因此 Stata 现在在用户选择从 Apple 菜单中选择“安装终端实用程序...”时，在 /usr/local/bin 目录中创建对控制台版本 {help statamp_zh:Stata/MP} 或 {help statase_zh:Stata/SE} 的符号链接。如果目录不存在，Stata 将创建 /usr/local/bin 目录。

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <whatsnew13.sthlp>}