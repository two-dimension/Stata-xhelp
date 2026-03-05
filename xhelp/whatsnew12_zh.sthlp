{smcl}
{* *! version 1.3.0  13sep2017}{...}
{vieweralsosee "whatsnew" "help whatsnew_zh"}
{help whatsnew12:English Version}
{hline}{...}
{title:在 Stata 12 版本中新增的功能}

{pstd}
此文件记录了在 Stata 12.0 和 12.1 发布期间所进行的新增功能和修复：

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
    {c |} {bf:此文件}        Stata 12.0 和 12.1          2011 至 2013    {c |}
    {c |} {help whatsnew11to12_zh}   Stata 12.0 新版发布       2011            {c |}
    {c |} {help whatsnew11_zh}       Stata 11.0、11.1 和 11.2   2009 至 2011    {c |}
    {c |} {help whatsnew10to11_zh}   Stata 11.0 新版发布       2009            {c |}
    {c |} {help whatsnew10_zh}       Stata 10.0 和 10.1          2007 至 2009    {c |}
    {c |} {help whatsnew9to10_zh}    Stata 10.0 新版发布       2007            {c |}
    {c |} {help whatsnew9_zh}        Stata  9.0、9.1 和 9.2     2005 至 2007    {c |}
    {c |} {help whatsnew8to9_zh}     Stata  9.0 新版发布       2005            {c |}
    {c |} {help whatsnew8_zh}        Stata  8.0、8.1 和 8.2     2003 至 2005    {c |}
    {c |} {help whatsnew7to8_zh}     Stata  8.0 新版发布       2003            {c |}
    {c |} {help whatsnew7_zh}        Stata  7.0                   2001 至 2002    {c |}
    {c |} {help whatsnew6to7_zh}     Stata  7.0 新版发布       2000            {c |}
    {c |} {help whatsnew6_zh}        Stata  6.0                   1999 至 2000    {c |}
    {c BLC}{hline 63}{c BRC}

{pstd}
最近的更改列在最前面。


{hline 8} {hi:最近更新} {hline}

{pstd}
请参见 {help whatsnew12to13_zh}。


{hline 8} {hi:更新 2014年1月23日} {hline}

{p 5 9 2}
1.  2013年11月25日的更新引入了一个错误，使您无法通过简单地点击希望放置对象的位置向 SEM Builder 添加默认大小的对象。您必须点击并拖动以添加并设置对象的大小。此问题已修复。

{hline 8} {hi:更新 2013年12月18日} {hline}

{p 5 9 2}
1.  {help ivregress_zh} 在与带有多个类别的因子变量的交互作用一起指定时，会产生错误消息。此问题已修复。

{p 5 9 2}
2.  {help nlcom_zh} 和 {help lincom_zh} 在估计涉及逗号的表达式时（如 {cmd:_b[/cov(e.x,e.y)]}），产生错误消息。此问题已修复。

{hline 8} {hi:更新 2013年11月25日} {hline}

{p 5 9 2}
1.  {help asmprobit_zh} 当模型中没有案例变量和常数项时未能显示系数表。此问题已修复。

{p 5 9 2}
2.  在 {help Business calendars} 中使用 {cmd:dateformat} 指定如何在
    {help datetime_business_calendars_creation_zh:business calendar files} 中输入日期。 {cmd:dateformat} 的选项包括 {cmd:ymd}、{cmd:ydm}、{cmd:myd}、{cmd:mdy}、{cmd:dym} 和 {cmd:dmy}。并非所有这些选项都有效，例如，在 {helpb bofd()} 函数或 {help bcal_zh:bcal describe} 命令中。此问题已修复。

{p 5 9 2}
3.  {help cluster_zh} 与子命令 {cmd:averagelinkage}、{cmd:completelinkage}、{cmd:waveragelinkage}、{cmd:medianlinkage}、{cmd:centroidlinkage} 或 {cmd:wardslinkage} 和大量观察数（例如 400,000）可能会导致 Stata 崩溃，而不是发出错误信息。此问题已修复。

{p 5 9 2}
4.  函数 {helpb dunnettprob()} 如果 {it:df} 参数不是整数值，则会返回缺失值。 {cmd:dunnettprob()} 现在行为类似于 {helpb invdunnettprob()}，允许 {it:df} 参数在其文档域中为任何实值。

{p 5 9 2}
5.  {help expoisson_zh} 在使用具有大量计数的 {it:depvar}（总计数超过 125）及暴露变量时，可能会产生错误结果。此问题已修复。

{p 5 9 2}
6.  {helpb export excel} 未按日期格式导出变量。此问题已修复。

{p 5 9 2}
7.  {helpb fcast compute} 有以下修复：

{p 9 13 2}
    a.  {cmd:fcast compute} 在 {help vec_zh} 后未能清除运行期间使用的全局宏，因此在重复调用时会在此宏中累积一个长字符串。当生成的字符串超过允许的最大长度时，该命令会产生错误 "{err:macro substitution results in line that is too long}"。此问题已修复。

{p 9 13 2}
    b.  {cmd:fcast compute} 在 {cmd:vec} 后，如果当前调用导致错误，将删除之前调用 {cmd:fcast compute} 创建的所有变量。此问题已修复。

{p 5 9 2}
8.  {help gmm_zh} 在指定选项 {opt xtinstruments()} 时，并且用户要求集群稳健权重矩阵或 VCE，忽略了集群变量，而是基于面板变量进行聚类。此问题已修复。

{p 5 9 2}
9.  {help icd9_zh} 数据库已更新为使用最新版本（V31）的 ICD-9 码。

{p 4 9 2}
10.  对于 {cmd:.xls} 文件，{helpb import excel} 可能会遗漏工作表末尾的行或列，因为在 {cmd:.xls} 文件中记录的行或列数与实际行或列数不匹配。此问题已修复。

{p 4 9 2}
11.  {help ivregress_zh} 有以下修复：

{p 9 13 2}
     a.  {cmd:ivregress 2sls} 现在对高度共线的回归变量更为宽容。

{p 9 13 2}
     b.  {cmd:ivregress} 在选项 {cmd:first} 中报告了错误，当外生变量列表中包含与工具有高度相关的因子变量时。此问题已修复。

{p 9 13 2}
     c.  当使用非常长的 {cmd:if} 表达式时， {cmd:ivregress} 会报告语法错误。此问题已修复。

{p 9 13 2}
     d.  选项 {cmd:noconstant} 没有正确传递通过工具的共线性检查。此问题已修复。

{p 4 9 2}
12.  如果指定的变量类型多于变量名的数量，Mata 函数 {help mf_st_addvar_zh:st_addvar()} 会崩溃。此问题已修复。

{p 4 9 2}
13.  Mata 函数 {helpb mf_asarray_keys:asarray_keys()} 在发生哈希冲突时会生成 3201 错误。此问题已修复。

{p 4 9 2}
14.  Mata 函数 {help mf_st_view_zh:st_view()} 现在在变量规格不包含时间序列或因子变量操作符时更快地创建视图。

{p 4 9 2}
15.  {helpb matrix accum} 在连续变量和因子变量之间错误地计算交叉乘积总和，当同时指定涉及连续变量的交互作用时。此问题已修复。

{p 4 9 2}
16.  {help mi_zh} 有以下修复：

{p 9 13 2}
     a.  {helpb mi estimate} 如果指定的命令行长度超过 244 个字符，则会产生错误。此问题已修复。

{p 9 13 2}
     b.  {cmd:mi estimate} 与 {cmd:mean}、{cmd:proportion}、{cmd:ratio} 或 {cmd:total} 一起使用时，可能会在某些插补特定标准误为有效零时产生缺失的多次插补标准误。例如，{cmd:mean} 命令在常数变量上报告零的标准误。{cmd:mi estimate} 现在报告估计值而不是缺失值。

{p 9 13 2}
     c.  与 {cmd:mean}、{cmd:proportion}、{cmd:ratio} 或 {cmd:total} 一起使用的 {cmd:mi estimate} 现在会对任何在任何插补中基于仅一个观察值的样本中估计的参数产生缺失的多次插补标准误，即，对于在任何插补中，{cmd:e(_N)} 矩阵的相应元素为一的任何参数。

{p 9 13 2}
     d.  {helpb mi impute chained} 在指定了选项 {cmd:noimputed} 和在选项 {cmd:include()} 中包含了具有其他因素规范的分类或二元插补变量时，会错误地产生错误 "{err:missing imputed values are produced}"。此问题已修复。

{p 9 13 2}
     e.  在条件插补时，{helpb mi impute chained} 和 {helpb mi impute monotone} 未能检查条件变量与条件变量之间的插补顺序，当条件变量的缺失观察数与一个条件变量的数量相同。此命令现在会在插补模型的规范中，如果列出一个条件变量在其条件变量之前，则会产生错误。

{p 9 13 2}
     f.  {helpb mi impute mvn} 在独立变量检查失败时，产生 Mata 回溯日志。现在会产生适当的错误消息。

{p 4 9 2}
17.  {help ml_zh} 在选项 {opt subpop()} 中报道了错误的样本大小，当一些变量在子群体样本之外包含缺失值时。由于这些缺失值，也可能由于这些缺失值而导致整个抽样单元被丢弃，从而基于错误的样本大小推出子群体方差估计。此问题已修复。

{p 4 9 2}
18.  {help nestreg_zh} 与前缀 {help svy_zh} 和 {cmd:svy} 选项一起使用时，当前缀估计命令包含圆括号绑定的变量时，会以语法错误退出。此问题已修复。

{p 4 9 2}
19.  {help nlogit_zh} 可能会丢弃太多替代特定变量，如果一个替代特定变量与最后（叶子）替代的指定变量共线。在其与替代的指示符进行交互作用之后，这种情况特别会发生。此问题已修复。

{p 4 9 2}
20.  在 {helpb arfima postestimation:predict} 后面，{help arfima_zh} 的对话框未在您按下 {hi:Submit} 按钮时生成命令。此问题已修复。

{p 4 9 2}
21.  在少数情况下，{help qreg_zh} 可能导致 Stata 崩溃。此问题已修复。

{p 4 9 2}
22.  负二项随机数生成器 {helpb rnbinomial()} 的参数域已更改，以允许更大范围的参数组合。

{p 4 9 2}
23.  在 Stata 执行命令时进行 Stata 帮助系统搜索可能会导致该命令失败并出现错误，甚至可能导致 Stata 崩溃。Stata 现在不允许在 Stata 执行命令时进行 Stata 帮助系统搜索。

{p 4 9 2}
24.  {helpb set cformat}、{cmd:set pformat} 和 {cmd:set sformat} 有以下修复：

{p 9 13 2}
     a.  它们现在会在指定的格式宽度过大时报告错误。{cmd:cformat} 的最大格式宽度为 9。{cmd:pformat} 的最大格式宽度为 5。{cmd:sformat} 的最大格式宽度为 8。

{p 9 13 2}
     b.  当选项 {opt permanently} 以空格格式在逗号之前指定时，在空白格式规范上报告错误 "{err:invalid numeric format}"。此问题已修复。

{p 4 9 2}
25.  当按变量进行排序时，{helpb set obs} 会在变量的最后值含有 {help missing_zh:extended missing value} 时未能标记该变量为不再被排序。此问题已修复。

{p 4 9 2}
26.  当使用自助方法时，{help stptime_zh:stptime} 和 {help strate_zh:strate} 可能会报告在包含没有故障、仅一个故障或仅一个带有故障的群组的生存数据集中，不包含估计率的自助置信区间。现在在这些情况下会报告缺失的置信区间并附带说明的注释。

{p 4 9 2}
27.  {help ivregress_zh} 与前缀 {help svy_zh} 有以下修复：

{p 9 13 2}
     a.  外生变量列表中的交互产生了错误。此问题已修复。

{p 9 13 2}
     b.  当使用 {cmd:svy: ivregress} 和选项 {cmd:first} 时，外生变量列表中的因子变量导致错误。此问题已修复。

{p 4 9 2}
28.  {helpb svy tabulate}在与字符串变量一起使用时，报告了临时变量名而不是指定变量。此问题已修复。

{p 4 9 2}
29.  {help symmetry_zh} 在空的 {cmd:if} 条件下返回了 tempvar 未找到错误。此问题已修复。

{p 4 9 2}
30.  函数 {helpb tukeyprob()} 如果参数 {it:df} 不是整数值则返回缺失值。{cmd:tukeyprob()} 现在行为类似于 {helpb invtukeyprob()} 并允许 {it:df} 在其文档域中为任何实数值。

{p 4 9 2}
31.  {help var_zh} 在选项 {cmd:small} 和约束条件下会在头部显示 F 统计量的缺失值。此问题已修复。

{p 4 9 2}
32.  {help xtmixed_zh} 在随机效应方程中的因子变量共线时，会以错误和 Mata 跟踪日志退出。此问题已修复。

{p 4 9 2}
33.  允许因子变量表示法的估计命令有时会错误省略连续变量，因为同时指定了涉及连续变量的交互作用。此问题已修复。

{p 4 9 2}
34.  执行定义超过 3500 行的 ado 文件时，Stata 可能崩溃。现在 Stata 正确发出错误信息 "{err:system limit exceeded}"。

{p 4 9 2}
35.  当在执行 do 文件时发生 I/O 错误（即 do 文件在 Stata 执行时被擦除）时，Stata 在执行 do 文件时似乎会锁死。现在 Stata 会在执行 do 文件时遇到 I/O 错误时停止并显示错误信息。

{p 4 9 2}
36.  数据编辑器有以下修复：

{p 9 13 2}
     a.  长值标签可能会超出列宽，导致它们显示在相邻列中。此问题已修复。

{p 9 13 2}
     b.  粘贴数据到数据编辑器后未能更新内部已排序变量的列表。现在，如果您将数据粘贴到数据已排序的变量中，列表将会更新。

{p 4 9 2}
37.  {help sem_gui:SEM Builder} 不再允许您添加宽度或高度为 0 的对象。

{p 4 9 2}
38.  在 Do-file 编辑器中，全局宏的语法高亮超过了空白字符。此问题已修复。

{p 4 9 2}
39.  （Stata/MP）{helpb matrix score} 在与无法并行运行的 {cmd:if} 表达式一起使用时（例如，{cmd:if runiform()>0.5}），可能产生错误结果。此问题已修复。

{p 4 9 2}
40.  （Windows）{helpb file seek} 对于超过 2GB 的文件总是失败。此问题已修复。

{p 4 9 2}
41.  （Windows）{helpb graph export} 使用 UNC 路径时，会失败并显示错误 {search r(603)}。此问题已修复。

{p 4 9 2}
42.  （Windows）{helpb set httpproxyport} 允许使用 1 到 32,000 之间的端口，但设置大于 9,999 的端口将不再在后续的 Stata 会话中重新加载。此问题已修复。

{p 4 9 2}
43.  （Windows）Do-file 编辑器偏好对话框在从 {bf:Editor Font} 选项卡中的 {bf:Restore Factory Defaults} 按钮按下时设置了错误的默认字体大小。此问题已修复。

{p 4 9 2}
44.  （Windows）{help update_zh} 在从本地目录安装时失败而 Stata 是从网络共享运行时。此问题已修复。

{p 4 9 2}
45.  （Mac）Do-file 编辑器现在使用不同的方法在运行之前将临时文件保存到磁盘。以前的方法在发生崩溃时防止数据丢失，但在临时文件被覆盖的情况下不必要。然而，这种方法在 Stata 准备运行时可能使临时文件不可用。

{p 4 9 2}
46.  （Mac）{helpb import excel} 和 {cmd:export excel} 在导入时未将字符串从 Unicode 转换，导出时也未将其转换为 Unicode。此问题已修复。

{p 4 9 2}
47.  （Mac）{helpb odbc load} 在 Mac 上未能加载 SQL_WCHAR、SQL_WVARCHAR 和 SQL_WLONGVARCHAR 类型的变量。此问题已修复。

{p 4 9 2}
48.  （Mac）保存的偏好 {cmd:max_memory} 如果设置过大，将无法正确读取。此问题已修复。

{p 4 9 2}
49.  （Mac）Mac OS X 10.8.2 引入了一个错误，导致 Adobe Reader 无法接收来自 Stata 的打开 Stata PDF 文档的消息。如果用户退出 Adobe Reader 并随后从 Stata 内部单击 Stata PDF 文档链接，这种情况可能会发生。现在 Stata 具有该错误的解决方法。

{p 4 9 2}
50.  （Mac）导出到 PDF 的图表中的点标记符号未出现，因为标记符号太小。此问题已修复。标记符号现在呈现为圆形，而不是方形。

{p 4 9 2}
51.  （Mac）在 Graph Editor 中编辑的图表无法导出为 EPS 或 PS。此问题已修复。

{p 4 9 2}
52.  （Mac）如果在全屏模式下运行 Do-file 编辑器时绘制多个图表，Stata 可能会崩溃。此问题已修复。

{p 4 9 2}
53.  （Mac）SEM Builder 的工具图标的 Retina 版本未被 Mac OS X 使用。此问题已修复。

{p 4 9 2}
54.  （Mac）当数据编辑器从浏览模式更改为编辑模式时，Stata 会显示警告。如果数据已经更改并且在浏览模式时在命令窗口中输入了 {help edit_zh}，Stata 会显示警告对话框并立即消失。此问题已修复，警告对话框不再立即消失。

{p 4 9 2}
55.  （Mac）在数据编辑器中编辑文本并应用更改后选择 {bf:Edit > Undo} 将导致 Stata 崩溃。此问题已修复。

{p 4 9 2}
56.  （Mac）使用 {help translate_zh} 将 SMCL 文件转换为 PDF 文件时，如果 PDF 文件名包含空格，则不会生成 PDF 文件。此问题已修复。

{p 4 9 2}
57.  （Mac）在 Stata 背景中执行命令结束时 Stata 播放通知声音的功能在 OS X 10.7 和 10.8 中无法播放。此问题已修复。

{p 4 9 2}
58.  （Mac）OS X 10.9（Mavericks）引入的变化导致 Stata 总是从根目录 "/" 开始，而不是 Stata 上次会话的工作目录。仅在通过双击 Finder 中的 Stata 启动时会影响 Stata，而不是从 Finder 双击 do-file 或数据集。此问题已修复。

{p 4 9 2}
59.  （Unix）在打开 Viewer 的情况下选择菜单项 {bf:Edit > Preferences > Manage Preferences > Factor Settings} 时，Stata for Unix GUI 崩溃。此问题已修复。

{hline 8} {hi:更新 2013年7月9日} {hline}

{p 5 9 2}
1.  {help histogram_zh} 在用 {opt by()} 的子选项指定带引号空格时，不正确地报告语法错误 "{err:parentheses do not balance}"。此问题已修复。

{p 5 9 2}
2.  {help intreg_zh} 在不使用选项 {opt het()} 时，留下了无效的 {cmd:e(V_modelbased)} 当 {cmd:vce(robust)} 或 {cmd:vce(cluster} {it:...}{cmd:)} 被指定。这对使用选项 {cmd:vce(unconditional)} 的 {help margins_zh} 仅影响。此问题已修复。

{p 5 9 2}
3.  {help margins_zh} 有以下修复：

{p 9 13 2}
    a.  {help margins_zh} 与选项 {cmd:vce(unconditional)} 一起使用，之后 {help xtmixed_zh} 会产生一个有关找不到方程的难以理解的错误。此问题已修复。

{p 9 13 2}
    b.  {help margins_zh} 会报出警告 "{err:cannot perform check}{err:for estimable functions}"，当 {help reg3_zh} 的结果不包含因子变量的约束时。此问题已修复。

{p 9 13 2}
    c.  {help margins_zh} 不正确处理了选项 {opt predict()} 中的引号字符串，导致报道结果时出错。此问题已修复。

{p 5 9 2}
4.  {help marginsplot_zh} 在指定带 {opt at()} 选项时，会在数据集中设置超出给定回归变量范围的值时，产生错误消息或缺少点的图。情况最常见是 {opt at()} 变量为 {help byte} 类型且 {opt at()} 的值大于 100。此问题已修复。

{p 5 9 2}
5.  Mata 函数 {helpb mf_moptimize##result_display:moptimize_result_display()} 使用 Nelder-Mead 技术和约束条件将报告 "{error}estimates post: matrix has missing values{reset}"，而应该报告缺失标准误的估计表。此问题已修复。

{p 5 9 2}
6.  {helpb ml plot} 和 {helpb ml graph} 在指定的绘制点数与数据集中观察值相同或更多时，会异常退出并生成 Mata 跟踪日志，而这些命令本应生成一个图形。此问题已修复。

{p 5 9 2}
7.  {help pwmean_zh} 仅在选项 {opt over()} 中指定的前两个变量中进行交互，而不是与所有 {opt over()} 变量进行交互。此问题已修复。

{hline 8} {hi:更新 2013年3月20日} {hline}

{p 5 9 2}
1.  在线帮助和搜索索引已更新到 {help sj_zh:Stata Journal} 13(1)。

{p 5 9 2}
2.  {helpb areg_postestimation##predict:predict, residuals} 在 {help areg_zh} 后用于使用时间序列运算符的模型时将失败并显示错误 "{err:not sorted}"。此问题已修复。

{p 5 9 2}
3.  在某些情况下，{help proportion_zh} 返回模糊的错误消息时，实际上应返回 "{err:no observations}"。此问题已修复。

{p 5 9 2}
4.  {help tsset_zh} 在商业日历 ({cmd:%tb}) 格式中包含时间变量时，报告了不正确的时间期 (delta)。此问题已修复。

{hline 8} {hi:更新 2013年2月25日} {hline}

{p 5 9 2}
1.  {help sem_zh} 使用 {cmd:method(mlmv)} 现在会尝试拟合指定模型，即使饱和模型未能收敛。

{p 5 9 2}
2.  {helpb xtile} 在使用 {cmd:if} 条件并且导致的观察数少于请求的分位数时，不会产生缺失分位数，而是返回错误。此问题已修复。

{hline 8} {hi:更新 2013年1月30日} {hline}

{p 5 9 2}
1.  {help expandcl_zh:expandcl, cluster() generate()} 在扩展数据之前存在许多群集时，无法为重复的群集生成唯一的标识符。此问题已修复。

{p 5 9 2}
2.  {help graph_zh} 与选项 {cmd:yscale(range())} 不正确扩展范围，当数据的自然范围为负且在 {cmd:range()} 指定的最大值也为负时。此问题已修复。

{p 5 9 2}
3.  {help gmm_zh} 在使用面板样式的工具指定 {cmd:vce(cluster} {it:id}{cmd:)} 或 {cmd:wmatrix(cluster} {it:id}{cmd:)} 时，可能会退出并报告错误信息 "{err:panels are not nested within clusters}"。此问题已修复。

{p 5 9 2}
4.  {help ivtobit_zh} 如果内生回归变量由时间序列运算符装饰，就会产生错误结果。此问题已修复。

{p 5 9 2}
5.  在 {help sembuilder:SEM Builder} 中，使用位置控制移动文本时未能生效。此问题已修复。

{p 5 9 2}
6.  {help stcox_zh} 和 {help streg_zh} 与选项 {cmd:shared()} 不再允许出现延迟条目（左截断）或间隔（区间截断）。一般来说，使用此选项对于截断生存数据可能会导致不一致的结果，除非脆弱性分布与协变量和截断点无关，这在实际中是相当严格的假设。如果愿意，在描述情况下，您可以通过指定未记录的选项 {cmd:forceshared} 强制估计，但我们强烈不建议用户这样做。

{hline 8} {hi:更新 2012年12月18日} {hline}

{p 5 9 2}
1.  {help infile1_zh:infile}（自由格式）在遇到观察中间的文件结尾指定时会错误地丢弃整个观察并用缺失值 {cmd:.} 或 {cmd:""} 填充前一个观察的变量。此问题已修复。

{p 5 9 2}
2.  {help ivprobit_zh} 的最大似然估计器会为外生性 Wald 测试报告正确的 p 值，但在 {cmd:e(p_exog)} 中存储了错误值。此问题已修复。

{p 5 9 2}
3.  对 {help margins_zh} 的两个更新：

{p 9 13 2}
    a.  {cmd:margins} 不再允许交互术语在边际列表中包含连续变量。

{p 9 13 2}
    b.  {cmd:margins} 如果内存中有 Stata 图形，且其中一个名称为: asbal、base、mstat、phat或 p 的名称，便会报告错误 "{err:not an array}"。此问题已修复。

{p 5 9 2}
4.  {helpb matrix accum} 在使用选项 {opt deviations} 和因子变量表示法指示单独的因子水平与至少一个连续变量交互作用时，会生成不正确的交叉乘积值。此问题已修复。

{p 5 9 2}
5.  {help ml_zh} 使用类型 {cmd:gf0} 的评估器与约束和选项 {cmd:vce(robust)} 或 {cmd:vce(cluster} {it:...}{cmd:)} 时，报告会在收敛后生成 Mata 跟踪日志。此问题已修复。

{p 5 9 2}
6.  {helpb ml check} 在使用选项 {opt technique()} 的 {helpb ml model} 时，当多种技术被指明时，会报告 Mata 跟踪日志。现在，如果生效的不是 {cmd:technique(nr)}，{cmd:ml check} 将报告错误。

{p 5 9 2}
7.  {help net_zh} 如果来自特定位置的 Stata 包的内容表中存在 150 个以上的条目，则将不会显示所有条目。此问题已修复。

{p 5 9 2}
8.  {helpb notes search} 如果不存在数据集范围内 (_dta) 的笔记，则无法找到正在搜索的文本。此问题已修复。

{p 5 9 2}
9.  对 {help sem_gui:SEM Builder} 的几个更新：

{p 9 13 2}
    a.  现在您可以通过新的菜单项 {bf:View > Confidence Level} 轻松更改用于计算置信区间的置信水平。在此处进行的更改会反映在 SEM 估计对话框的 {bf:Reporting} 选项卡的 {bf:Confidence level} 字段中。对话框中的更改同样反映在 {bf:View > Confidence Level} 中。

{p 9 13 2}
    b.  显示在路径和协方差上的结果的字体可能无法更改，斜体和粗体设置被忽略。此问题已修复。

{p 9 13 2}
    c.  在属性窗格中显示的方差置信区间在方差度量上进行计算，这意味着下限可能会变为负值。虽然渐近等价，这些置信区间不匹配图表上和结果窗口中显示的内容。现在这些置信区间在对数方差度量上进行计算，并转换回来以适应方差度量。它们现在与图表和结果窗口中的置信区间匹配。

{p 9 13 2}
    d.  在 {help sem_gui:SEM Builder} 中的设置现在会保留在 Stata 会话之间，甚至在随后的 Stata 会话中的路径图中。将变量标签设置为“无”则在设置对话框中会从当前图中正确删除标签，但在新 SEM Builder 窗口中创建新图表时未能保留。此问题已修复。

{p 4 9 2}
10.  对 {help sem_zh} 的几个更新：

{p 9 13 2}
     a.  {cmd:sem} 在选项 {opt pattern()} 或 {opt fixed()} 的选项 {opt covstructure()} 中使用了矩阵参数的上三角元素，而不是下三角元素。现在 {cmd:sem} 使用下三角元素，如最初所企图和记录的那样。

{p 9 13 2}
     b.  {cmd:sem} 在与选项 {opt standardized} 一起使用时，现在假设选项 {opt showginvariant} 对使用选项 {opt groups()} 拟合的模型。

{p 9 13 2}
     c.  当 {cmd:sem} 遇到一个模型，其中观察的内生变量对潜在变量有路径，但模型不包含任何观察的外生变量时，会报告一个模糊的错误消息。此问题已修复。

{p 4 9 2}
11.  {help xtdpd_zh} 和 {help xtabond_zh} 在同时指定 {cmd:twostep} 和 {cmd:vce(robust)} 选项时，且面板数量相对于仪器数量相对较少，可能导致不稳定的标准误计算，并可能导致标准误的潜在覆盖不良。这是罕见的，但最有可能在仪器数量超过面板数量时发生。计算的稳健性得到了显著提高，新的计算有名义覆盖。

{p 4 9 2}
12.  (Mac) 在数据编辑器中粘贴文本时，任何无法转换为 ASCII 的文本将导致没有文本被粘贴。Stata 现在会提示使用有损转换来转换文本，这会删除或更改一些字符。例如，无法转换的带重音字符将失去重音。

{p 4 9 2}
13.  (Unix) 如果清除多个偏好设置，则可能（尽管很不可能）在 Stata 的未来实例中仍然使用某些已清除的设置。此问题已修复。

{p 4 9 2}
14.  在线帮助和搜索索引已更新到 {help sj_zh:Stata Journal} 12(4)。

{hline 8} {hi:更新 2012年10月22日} {hline}

{p 5 9 2}
1.  [SEM] {it:Stata 结构方程建模参考手册} 中示例中显示的路径图现在可以在 {help sem_gui:SEM Builder} 中打开。在 Builder 中，单击 {bf:Help} 菜单并选择 {bf:Example Diagrams}。

{p 5 9 2}
2.  {help gmm_zh} 在包含替代变量时，因为一个可替代表达式仅包含在以前的表达式中声明的线性组合而产生错误，表示方程没有参数。此问题已修复。

{p 5 9 2}
3.  {help icd9_zh} 数据库已更新为使用最新版本（V30）的 ICD-9 代码，该版本于 2012 年 10 月 1 日生效。

{p 5 9 2}
4.  （Windows）如果多个图 tabbed 在同一 Graph 窗口中，Stata 在更改图形偏好设置时可能会进入无限循环。此问题已修复。

{p 5 9 2}
5.  （Windows）列出打开图形的工具栏项目和菜单未显示所有图形，如果它们被 tabbed。此问题已修复。

{p 5 9 2}
6.  （Mac）从导入 Excel 对话框导入 Excel 文件如果该 Excel 文件没有工作表，会导致 Stata 崩溃。此问题已修复。

{p 5 9 2}
7.  （Mac）加载已保存的偏好集并重新启动 Stata 后，您将不再被提示检查更新。

{p 5 9 2}
8.  （Mac）在上一次更新中，Stata 将其文件和应用程序图标更新为 Apple 推荐的 Mac Retina Display 格式。但是，运行 Mac OS X 10.5 的 Mac 不支持这种新图标格式。Stata 现在使用较旧的图标格式。Stata 仍然使用其他图形资源，这些资源与支持 Retina 显示和 Mac OS X 10.5 的 Mac 兼容。

{p 5 9 2}
9.  （Mac）如果界面布局设置为 Combined，且变量/审查视图被隐藏，从窗口菜单选择它们仍然会导致它们保持隐藏。此问题已修复。

{hline 8} {hi:更新 2012年10月1日} {hline}

{p 5 9 2}
1.  在线帮助和搜索索引已更新到 {help sj_zh:Stata Journal} 12(3)。

{p 5 9 2}
2.  {helpb graph twoway} 样式选项 {cmd:lcolor()} 和 {cmd:lpattern()} 可能会在 {helpb _parse factor} 中触发错误，导致 Stata 崩溃。此问题已修复。

{p 5 9 2}
3.  {helpb import excel} 给 {bf:.xls} 文件的 {err:file too big} 错误，文件超过 40 MB。该限制仅适用于 {bf:.xlsx} 文件。此问题已修复。

{p 5 9 2}
4.  {help lpoly_zh} 在特定情况下会因指定 {cmd:fweight}s 或 {cmd:aweight}s 而退出并产生错误消息。此问题已修复。

{p 5 9 2}
5.  {help margins_zh} 命令与包含重复值的 {opt at()} 选项同时使用时会重复边际结果。这不是预期的行为，因此现在 {cmd:margins} 只保留给定变量的唯一值。

{p 5 9 2}
6.  {help marginsplot_zh} 如果前面的 {help margins_zh} 命令有带有重复值的 {opt at()} 选项，可能会失败。此问题已修复。

{p 5 9 2}
7.  {help marginsplot_zh} 如果参与绘图的任何变量都有值标签，并且那个值标签没有标签，则会失败。此问题已修复。

{p 5 9 2}
8.  Mata {help mf_moptimize_zh:moptimize()} 子例程 {cmd:moptimize_util_vecsum()} 和 {cmd:moptimize_util_matsum()} 现在跳过得分变量等于零的观察值。这个改变是为了促进具有处理缺失值的方法的似然评估器函数中的 {it:indepvars}。

{p 5 9 2}
9.  {help matlist_zh} 与列标题中的因子变量表示法一起使用时，输出中会不小心显示一些 {help smcl_zh:SMCL} 标签。此问题已修复。

{p 4 9 2}
10.  {helpb matrix accum} 在使用 {opt deviations} 选项和因子变量表示法指示的因子变量中的层次时，会生成与其他不包含因子变量的项的交叉乘积的不正确值。此问题已修复。

{p 4 9 2}
11.  {helpb mi impute intreg} 和 {helpb mi impute truncreg} 有时会在完备预测变量集存在共线性时产生超出隐含范围的估计值。此问题已修复。

{p 4 9 2}
12.  {helpb odbc insert} 在向 dBASE 文件插入数据时，有时会产生错误消息并未能生成该文件。此问题已修复。

{p 4 9 2}
13.  {helpb arch_postestimation##predict:predict} 在 {help arch_zh} 和 {help arima_zh} 之后未能在指定 {cmd:dynamic(.)} 的情况下正确计算动态预测。此问题已修复。

{p 4 9 2}
14.  {help reg3_zh} 和 {help sureg_zh} 具有包含许多识别约束的复杂系统以及相对较少的观察值，有时会报告估计的协方差矩阵不是对称的，从而导致无约束模型系数的缺失值。此问题已修复。

{p 4 9 2}
15.  {helpb _return hold} 使用 {helpb tempname} 命名的结果未在程序结束时被自动删除。此问题已修复。

{p 4 9 2}
16.  {helpb _return restore} 选项 {opt hold} 未能正确复制矩阵条带，最终导致 Stata 崩溃。此问题已修复。

{p 4 9 2}
17.  在 {help sem_gui:SEM Builder} 中，按住 {bf:Shift} 键同时添加路径或协方差现在会在水平或垂直方向上约束它们。

{p 4 9 2}
18.  {help sem_gui:SEM Builder} 现在在“显示标准化系数和数值”选项选中时显示标准化估计值。

{p 4 9 2}
19.  {help spearman_zh} 不再创建不必要的临时变量。

{p 4 9 2}
20.  {helpb tssmooth ma} 在选项 {opt weights()} 被指定且数据集超过 3,201 个观察时会退出并产生错误消息。此问题已修复。

{p 4 9 2}
21.  Stata 的变量列表解析逻辑在交互作用项的模型规范中未能正确分配时间序列操作符。当时间序列操作符在包含交互项的括号绑定列表中指定时。此问题已修复。

{p 4 9 2}
22.  （Mac）在 {help sem_gui:SEM Builder} 中，在 SEM 估计选项对话框的 {bf:Group} 选项卡上，从“在组间相同的参数”下拉框中选择参数将把参数的文本描述插入下拉框，而不是它的选项名称。这样会导致提交命令时出错。此问题已修复。

{p 4 9 2}
23.  （Mac）在没有键盘焦点的窗口中，选定的选项卡的颜色将呈现错误的颜色。此问题已修复。

{p 4 9 2}
24.  （Mac）在使用导入 Excel 对话框时，选择文件名中包含 Unicode 字符可能会导致 Stata 崩溃。此问题已修复。

{hline 8} {hi:更新 2012年8月8日} {hline}

{p 5 9 2}
1.  {help glm_zh} 在因子变量项的一级或多个级别被遗漏情况下会退出并产生错误消息。此问题已修复。

{p 5 9 2}
2.  {helpb import excel} 对话框在第一张表为空的情况下未能输出正确的表名。此问题已修复。

{p 5 9 2}
3.  {help sem_zh} 与摘要统计数据 ({help ssd_zh}) 一起使用时，在观察变量名称是另一个观察变量名称的子字符串时未能正确计算饱和模型的对数似然。因此，{cmd:sem} 未能正确拟合所指定的模型并报告比较拟合模型与饱和模型的似然比检验。此外，{help sem_estat_gof_zh:estat gof} 报告了 Mata 跟踪日志。此问题已修复。

{p 5 9 2}
4.  （Mac）在 Mac OS X 10.8（山狮）中进行的变化导致在 Stata 更新后重新启动时崩溃。尽管所有 ado 文件和 Stata 可执行文件都已成功更新，用户仍需在更新后手动重新启动 Stata。此问题已修复。

{hline 8} {hi:更新 2012年7月18日} {hline}

{p 5 9 2}
1.  {help alpha_zh} 在无法以经验方式确定每项的意义时现在会报告更具信息性的错误消息。

{p 5 9 2}
2.  {helpb blogit}、{helpb bprobit}、{help glogit_zh} 和 {helpb gprobit}，当 {cmd:vce(bootstrap)} 和 {cmd:vce(jackknife)} 的选项被指定时，将总人口变量 {it:pop_var} 视为独立变量进行共线性检查。此问题已修复。

{p 5 9 2}
3.  {helpb graph twoway function} 将错误版本传递给函数 {it:f}{cmd:()}。这很少重要，但可能会影响 {help f_invbinomial_zh:invbinomial()}。此问题已修复。

{p 5 9 2}
4.  如果在 {help title_options_zh} 的 {cmd:legend()} 中指定了 {cmd:position()}，则同一位置错误地应用于绘图的主标题。此问题已修复。

{p 5 9 2}
5.  {helpb import excel} 现在可以直接从 URL 打开 Excel 文件。

{p 5 9 2}
6.  {cmd:import excel} 对话框禁用复选框“将第一行导入为变量名”，如果第一行数据包含数值。此问题已修复。

{p 5 9 2}
7.  {helpb keep:keep _all} 会错误地 {cmd:drop} 所有变量。此问题已修复。

{p 5 9 2}
8.  （Windows）当您将 SEM 图复制到剪贴板时，现在整个工作区背景被包含在内。

{p 5 9 2}
9.  （Mac）在 Do-file 编辑器中打印时现在可禁用换行，并使用 {bf:General Preferences} 对话框的 {bf:Do-file Editor > Advanced} 选项卡中的“换行”复选框。

{p 4 9 2}
10.  （Mac）坏的符号链接（例如，指向不存在的文件的符号链接）会导致 Stata 的 {bf:Open} 对话框挂起，需强制退出 Stata。此问题已修复。

{p 4 9 2}
11.  （Mac）Stata for Mac 现在已按 Mac OS X 10.8（山狮）所需的代码签名。

{p 4 9 2}
12.  （Ubuntu Linux）最新版本的 Ubuntu Linux（例如，12.04）使用的 Linux glibc 库版本 2.15 中存在数学函数 logb(x) 的错误。此错误影响 {help exlogistic_zh} 和 {help expoisson_zh} 命令。Stata 现在在内部使用自己的 logb() 实现，因此不再受 glibc 中错误的影响。

{p 4 9 2}
13.  （Unix）如果您点击 Stata 帮助菜单中的菜单项，则新查看器将被创建。之前，它会覆盖当前活动的查看器。

{hline 8} {hi:更新 2011年9月15日} {hline}

{p 5 9 2}
1.  {helpb ereturn display} 和某些估计命令会报告遗漏的系数，即使 {helpb set_showomitted:showomitted} 设置为 {cmd:off} 或指定了 {opt noomitted} 选项。此问题已修复。

{p 5 9 2}
2.  {helpb estimates table} 对选项 {opt keep()} 和 {opt drop()} 的解析逻辑得到了改善。

{p 5 9 2}
3.  当模型规范的交互项中有空单元时的估计命令如果使用了 {helpb set emptycells}，则会导致 Stata 崩溃。此问题已修复。

{p 5 9 2}
4.  {helpb graph export} 在输出格式为 PDF 时未能设置字体面。此问题已修复。

{p 5 9 2}
5.  {helpb import excel} 和 {helpb export excel} 如果 Excel 文件包含一个仅图表的工作表，可能会导致 Stata 崩溃。此问题已修复。

{p 5 9 2}
6.  {helpb import excel} 与选项 {cmd:allstring} 一起使用时可能将数值以更低精度导入为字符串。此问题已修复。

{p 5 9 2}
7.  {helpb import excel} 将数字单元和空单元的列视为字符串列而非数字列。此问题已修复。

{p 5 9 2}
8.  Mata 库路径的最大长度已从 256 增加到 4096 个字符。

{p 5 9 2}
9.  前缀命令在未能正确报告错误时忽略了错误的 {opt if} 条件。此问题已修复。

{p 4 9 2}
10.  {help rename_zh} 现在在时间变量或面板变量重命名时，将更新 {help tsset_zh} 和 {help xtset_zh} 的信息。

{p 4 9 2}
11.  从 {help sem_gui:SEM Builder} 缩放进出现在窗口中，当前可见内容将始终保持在窗口的中心位置。

{p 4 9 2}
12.  {help sem_zh} 在使用 {cmd:method(mlmv)} 及在估计样本中存在缺失值模式时将以 {cmd:method(mlmv)} 使用。不当的模型可能导致数据不一致。此问题已修复。

{p 4 9 2}
13.  允许因子变量的单方程估计命令在使用时间序列运算符和不使用 {opt nopreserve} 时，报告 {err:initial values not feasible} 错误。此问题已修复。

{p 4 9 2}
14.  单个变量的估计命令未能正常工作，在 {help margins_zh} 中与该点进行有效的通过检验。此问题已修复。

{p 4 9 2}
15.  在 {helpb odbc load} 中运行未记录的文件时未能正确地跟踪文件信息。此问题已修复。

{p 4 9 2}
16.  在 (Windows) 使用 {helpb browse} 或 {help edit_zh} 指定时，在内存中没有数据的情况下可能导致 Stata 崩溃。此问题已修复。

{p 4 9 2}
17.  在 (Windows) 导出 SEM 图到位图格式时，右侧和底部边缘上线为黑色的内容。此问题已修复。

{p 4 9 2}
18.  在 (Windows) 在极少数情况下，{helpb update all} 仍然要求错误即使可执行文件名正确。此问题已修复。

{p 4 9 2}
19.  在 (Mac) 在打开的 Do-file 编辑器窗口中使用 Open 按钮打开 do 文件将仅在 Mac OS X 10.5（豹）上导致 Stata 崩溃。此崩溃不会发生在 Mac OS X 10.6 和 Mac OS X 10.7，并且在 Mac OS X 10.5 上即使您使用 File > Open 打开 do 文件也不会发生。我们已修改 Do-file 编辑器以避免该问题。

{p 4 9 2}
20.  在 (Mac) Mac OS X 10.7（狮子）引入的功能称为自动文本替换，允许用户输入 tm 等文本并替换为商标符号。默认情况下，OS 操作系统会打开它，但它可能会干扰 Stata 的 ado 语言。现在在 Do-file 编辑器和命令窗口中禁用自动文本替换。

{p 4 9 2}
21.  (Mac) 在 [SEM] {it: Stata 结构方程建模解释手册} 中使用路径图的示例，现在可以使用对话框打开。此问题已修复。

{hline 8} {hi:更新 24juil2011} {hline}

{p 5 9 2}
1.  在线帮助和搜索索引已带更新至 {help sj_zh:Stata Journal} 11(2)。
{hline 8}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <whatsnew12.sthlp>}