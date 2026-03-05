
{smcl}
{* *! version 1.3.0  13sep2017}{...}
{helpb "whatsnew" "help whatsnew"}{...}
{title:Stata 9 版本新增的功能}
{help whatsnew9:English Version}
{hline}

{pstd}
此文件记录了 Stata 9.0、9.1 和 9.2 版本的添加项和修复内容：

    {c TLC}{hline 63}{c TRC}
    {c |} 帮助文件        内容                         年份           {c |}
    {c LT}{hline 63}{c RT}
    {c |} {help whatsnew_zh}         Stata 16.0                   2019 至今 {c |}
    {c |} {help whatsnew15to16_zh}   Stata 16.0 新功能           2019            {c |}
    {c |} {help whatsnew15_zh}       Stata 15.0 和 15.1          2017 至 2019    {c |}
    {c |} {help whatsnew14to15_zh}   Stata 15.0 新功能           2017            {c |}
    {c |} {help whatsnew14_zh}       Stata 14.0、14.1 和 14.2   2015 至 2017    {c |}
    {c |} {help whatsnew13to14_zh}   Stata 14.0 新功能           2015            {c |}
    {c |} {help whatsnew13_zh}       Stata 13.0 和 13.1          2013 至 2015    {c |}
    {c |} {help whatsnew12to13_zh}   Stata 13.0 新功能           2013            {c |}
    {c |} {help whatsnew12_zh}       Stata 12.0 和 12.1          2011 至 2013    {c |}
    {c |} {help whatsnew11to12_zh}   Stata 12.0 新功能           2011            {c |}
    {c |} {help whatsnew11_zh}       Stata 11.0、11.1 和 11.2   2009 至 2011    {c |}
    {c |} {help whatsnew10to11_zh}   Stata 11.0 新功能           2009            {c |}
    {c |} {help whatsnew10_zh}       Stata 10.0 和 10.1          2007 至 2009    {c |}
    {c |} {help whatsnew9to10_zh}    Stata 10.0 新功能           2007            {c |}
    {c |} {bf:本文件}        Stata  9.0、9.1 和 9.2     2005 至 2007    {c |}
    {c |} {help whatsnew8to9_zh}     Stata  9.0 新功能           2005            {c |}
    {c |} {help whatsnew8_zh}        Stata  8.0、8.1 和 8.2     2003 至 2005    {c |}
    {c |} {help whatsnew7to8_zh}     Stata  8.0 新功能           2003            {c |}
    {c |} {help whatsnew7_zh}        Stata  7.0                   2001 至 2002    {c |}
    {c |} {help whatsnew6to7_zh}     Stata  7.0 新功能           2000            {c |}
    {c |} {help whatsnew6_zh}        Stata  6.0                   1999 至 2000    {c |}
    {c BLC}{hline 63}{c BRC}

{pstd}
最近的变化列在前面。

{hline 8} {hi:更近的更新} {hline}

{pstd}
请参见 {help whatsnew9to10_zh}。

{hline 8} {hi:更新 2007年7月20日} {hline}

    {title:自定义文件}

{p 5 9 2}
{* fix}
1.  {help adoupdate_zh} 在某些情况下未能正确设置保存的结果 {cmd:r(pkglist)}。
    {cmd:adoupdate} 应该在 {cmd:r(pkglist)} 中保存一个以空格分隔的包名称列表，该列表需要更新（未指定选项 {cmd:update}）或已更新（指定了选项 {cmd:update}）。实际上，{cmd:adoupdate} 这样做了，除了当指定了包列表时，然后它返回了指定的包列表。已修复。

{p 5 9 2}
{* fix}
2.  {help _diparm_zh} 在多方程规范中，当某个方程包含预测变量时，报告了一项相符合性错误。此问题已修复。

{p 5 9 2}
{* fix}
3.  {help fcast_zh} 在应用于只有一个滞后的 VAR 时产生语法错误。此问题已修复。

{p 5 9 2}
{* fix}
4.  {helpb irf cgraph} 在引用的副标题的末尾存在空格时，报告了不平衡引号错误。此问题已修复。

{p 5 9 2}
{* fix}
5.  {helpb irf cgraph} 当 {cmd:level()} 被指定为要组合的其中一张图时，产生了语法错误。此问题已修复。

{p 5 9 2}
{* fix}
6.  {help nestreg_zh} 在与 {help stcox_zh} 或 {help streg_zh} 一起使用时，当第一个块被用括号括起来时，错误地将独立变量的变量绑定到多个变量的块中。 例如，

{p 13 13 2}
	{cmd:. nestreg: stcox (x1 x2) x3 x4 x5}

{p 9 9 2}
    被错误地解释为

{p 13 13 2}
	{cmd:. nestreg: stcox (x1 x2) (x3 x4 x5)}

{p 9 9 2}
    此问题已修复。

{p 5 9 2}
{* fix}
7.  {help nlcom_zh} 和 {help testnl_zh} 在与 {helpb svy jackknife} 以及抽样权重后使用时返回错误。此问题已修复。

{p 5 9 2}
{* fix}
8.  {help nlogit_zh} 未能省略因依赖变量或水平替代变量中缺失值而被省略的观察值。此问题已修复。

{p 5 9 2}
{* enhancement}
9.  {helpb nlogittree} 现允许使用 {cmd:if} 和 {cmd:in} 限定符。

{p 4 9 2}
{* fix}
10.  {helpb heckprobit_postestimation##predict:predict} 在 {help heckprobit_zh} 后无法生成分数，而在选择方程中未指定因变量时。此问题已修复。

{p 4 9 2}
{* fix}
11.  {help stepwise_zh} 在与 {help stcox_zh} 或 {help streg_zh} 一起使用时，当第一个项被括号括起来时，错误地将独立变量与多个变量的项绑定在一起。例如，

{p 13 13 2}
	{cmd:. stepwise, pr(.4): stcox (x1 x2) x3 x4 x5}

{p 9 9 2}
    被错误地解释为

{p 13 13 2}
	{cmd:. stepwise, pr(.4): stcox (x1 x2) (x3 x4 x5)}

{p 9 9 2}
    此问题已修复。

{p 4 9 2}
{* fix}
12.  {helpb sts graph} 和 {opt hazard} 选项不再会产生错误消息 “变量 __ub 未找到”，当 {help set varabbrev: 变量缩写} 关闭时。此问题已修复。

{p 4 9 2}
{* fix}
13.  {help suest_zh} 在与 {help heckman_zh} 一起使用时，主变量包含缺失值时抱怨缺失的分数值。此问题已修复。

{p 4 9 2}
{* fix}
14.  {help sunflower_zh} 未能绘制六角形的最终段轮廓。此问题在 Mac 计算机上尤为明显，现已修复。

{p 4 9 2}
{* fix}
15.  {helpb "svy: tabulate"} 与 {opt subpop()} 选项在所有子群观察值都包含缺失值时，未能正确计算遗漏的层次。此问题已修复。

{p 4 9 2}
{* fix}
16.  {help testnl_zh} 在估计的参数值接近函数所指定的边界时报告了不正确的标准错误。例如，

{pin2}
     {cmd:. testnl sqrt(_b[x1]^2 - _b[x2])}

{p 9 9 2}
     如果 {cmd:_b[x1]} 的平方值非常接近 {cmd:_b[x2]} 的值，则应导致负数的平方根。此问题已修复。

{p 4 9 2}
{* fix}
17.  {helpb vce_options:vce(bootstrap)} 和 {helpb vce_options:vce(jackknife)} 选项在处理与常数共线的指示变量时，不接受 {opt noconstant} 选项。这导致了不正确的指示变量被删除。此问题已修复。

{p 4 9 2}
{* fix}
18.  {help xi_zh} 与 {opt noomit} 选项未能跟踪其生成的指示变量之一。在后续的具有 {opt noomit} 选项的 {cmd:xi} 调用中，{cmd:xi} 未能删除先前生成的指示变量之一。此问题已修复。

{p 4 9 2}
{* fix}
19.  {help xi_zh} 与 {opt noomit} 选项在 {opt prefix()} 选项未指定时生成的变量没有默认的 {cmd:_I} 前缀。此问题已修复。

    {title:Stata 可执行程序，所有平台}

{p 4 9 2}
{* fix}
20.  数据编辑器无法同时显示超过 20 个变量。此限制影响了具有非常高分辨率显示器的用户。此问题已修复。

{p 4 9 2}
{* fix}
21.  {help fcast_zh} 在 {cmd:var} 后仅包含一个内生变量的 VAR 时产生了错误。此问题已修复。

{p 4 9 2}
{* fix}
22.  在 {cmd:if} 子句中使用返回标量的 Stata 矩阵函数时，造成 {cmd:e(b)} 和 {cmd:e(V)} 保存不正确，从而导致 {cmd:regress} 后的后估计命令无法工作。此问题已修复。

{p 4 9 2}
{* fix}
23.  在 {helpb invbinomial()}、{helpb invFtail()}、{helpb invibeta()}、{helpb invnFtail()} 和 {helpb invnibeta()} 反概率函数由于机器精度的限制无法找到唯一解时，可能进入无尽循环。现在，和其他逆函数一样，在这种情况下它们将返回缺失值。同时，{helpb nibeta()} 现在在 {bind:{it:x} > 1} 且非中心参数 {bind:{it:L} {ul:<} 1} 时返回 1。

{p 4 9 2}
{* enhancement}
24.  {help infile2_zh:infile}（固定格式）现在接受 {cmd:%}[{opt #}]{opt S} {it:infmt}。{cmd:%}[{opt #}]{opt S} 类似于 {cmd:%}[{opt #}]{opt s}，但 {cmd:%}[{opt #}]{opt S} 保留前导和尾随空格；而 {cmd:%}[{opt #}]{opt s} 则不保留。

{p 4 9 2}
{* fix}
25.  {help infile2_zh:infile}（固定格式）将 ASCII 字符 255（十六进制 0xFF）视为文件结束标记，而在遇到时便停止读取文件。此字符现在被视为任何其他 ASCII 字符。

{p 4 9 2}
{* fix}
26.  Mata 错误编译了 {cmd:y[p] = y} 表达式。这个表达式的显著特征是 {cmd:y[p]} 出现在表达式的左侧，而 {cmd:y}，同一变量，在右侧。此问题已修复。

{p 4 9 2}
{* fix}
27.  Mata 的 {helpb mf_bufput:bufput()} 函数在复制元素到缓冲区时忽略了 {it:offset} 参数。此问题已修复。

{p 4 9 2}
{* fix}
28.  {helpb odbc load} 错误地将真实数据导入为缺失值，尤其是在这些值接近整数数据类型的上边界时。此问题已修复。

{p 4 9 2}
{* fix}
29.  从 r 类程序返回的值在某些罕见情况下可能意外包括 {cmd:r()} 值。此问题已修复。

{p 4 9 2}
{* fix}
30.  {helpb sreturn:sreturn list} 意外地列出了在 {cmd:r()} 中返回的矩阵。这已被修复。

{p 4 9 2}
{* fix}
31.  {help svy_zh} 在与回归命令（如 {cmd:regress}）一起使用时，报告多个样本单元时错误的缺失标准误。此问题已修复。

{p 4 9 2}
{* fix}
32.  {help unabcmd_zh} 现在识别以下以前内置命令的缩写：{opt cnr:eg}、{opt logi:t}、{opt mlog:it}、{opt olog:it}、{opt oprob:it}、{opt prob:it}、{opt reg:ress} 和 {opt tob:it}。

    {title:Stata 可执行程序，Windows}

{p 4 9 2}
{* fix}
33.  在某些情况下，双缓冲可能导致某些 Stata 窗口在使用多个显示器时无法正确呈现。此问题已修复。

{p 4 9 2}
{* fix}
34.  在 Do-file 编辑器中，搜索 - 查找下一个菜单项及其相应的 F3 快捷键不工作。此问题已修复。

{p 4 9 2}
{* fix}
35.  Stata 数据编辑器在 Windows Vista 下显示空的系统菜单。此问题已修复。

{p 4 9 2}
{* fix}
36.  在 Windows Vista 下，变量窗口有时会出现两个滚动条。此问题已修复。

    {title:Stata 可执行程序，Mac}

{p 4 9 2}
{* fix}
37.  在转换 SMCL 文件为其他格式时，不再显示“输出设置”对话框。

{p 4 9 2}
{* fix}
38.  滚动条无法滚动过第 32,767 行。此问题已修复。

{p 4 9 2}
{* fix}
39.  在数据编辑器的变量属性窗口多次单击“应用”按钮可能会导致早期版本的 Mac OS X 上 Stata 崩溃。此问题已修复。

{p 4 9 2}
{* fix}
40.  复制到剪贴板的图形可能包含两个填充矩形作为背景，而不仅仅是一个。此问题已修复。

    {title:Stata 可执行程序，Unix}

{p 4 9 2}
{* fix}
41.  远程启动 Stata（例如，{cmd:ssh mymachine xstata-se}）将使 Stata 认为自己处于批处理模式。此问题已修复。

{hline 8} {hi:更新 2007年5月22日} {hline}

    {title:自定义文件}

{p 5 9 2}
{* fix}
1.  {help binreg_zh} 报告了“选项 rrr 不允许”的错误，当 {opt rr} 与 {cmd:vce(bootstrap)} 或 {cmd:vce(jackknife)} 选项一起使用时。此问题已修复。

{p 5 9 2}
{* fix}
2.  {help ivprobit_zh} 在检查完美预测变量时未能应用用户指定的 {cmd:if} 或 {cmd:in} 限制。同时，如果使用了两步估计，并且约简形式模型具有完美预测变量，{cmd:ivprobit} 将以错误退出。这些问题已修复。

{p 5 9 2}
{* fix}
3.  {help jackknife_zh} 在带有权重的使用多方程规范的命令中报告了错误。此问题已修复。

{p 5 9 2}
{* fix}
4.  在 {help ksmirnov_zh} 输出中添加了一条注释，以提醒用户在发现变量分布时存在重复值。

{p 5 9 2}
{* fix}
5.  {help nlogit_zh} 在计算标准误时未能对 {cmd:vce(robust)} 进行聚类。这已修复。

{p 9 9 2}
    用 {cmd:nlogit} 指定 {opt robust} 时未出现此问题。

{p 5 9 2}
{* fix}
6.  {help roccomp_zh} 在对评级应用单调变换时，可能产生不同的卡方检验。这已修复。

{p 5 9 2}
{* fix}
7.  {help rreg_zh} 在与 {help bootstrap_zh} 前缀一起使用时报告了“选项 noheader 不允许”的错误。此问题已修复。

{p 5 9 2}
{* fix}
8.  {helpb svyintreg} 对于仅含常数的模型报告了“初始值不可行”的错误。此问题已修复。{helpb "svy: intreg"} 不存在此问题。

{p 5 9 2}
{* fix}
9.  {helpb "svy: tabulate"} 在一项或多个层次因为未包含子集成员而未能正确发布样本大小和人口规模。此问题已修复。

{p 5 9 2}
{* fix}
10.  {helpb "svy: tabulate"} 在未指定 {opt ci} 或 {opt se} 时未能报告遗漏的 strata。此问题已修复。

{p 5 9 2}
{* fix}
11.  {help xtgee_zh} 在与 {helpb vce(jackknife)} 一起使用时，报告了“选项 level() 不正确的错误”。此问题已修复。

{p 5 9 2}
{* fix}
12.  {help xtlogit_zh} 在报告组的数量和大小时，忽略了 32,740 个以上观察的组。此问题已修复。

{p 5 9 2}
{* fix}
13.  {help xtreg_zh} 若面板变量的规模过大，退出时报告了“独立变量与面板变量共线”的错误信息。此问题已修复。

{hline 8} {hi:更新 2007年3月7日} {hline}

    {title:自定义文件}

{p 5 9 2}
{* fix}
1.  {help ctset_zh} 的 {cmd:clear} 选项未能清除 ct 设置。此问题已修复。

{p 5 9 2}
{* fix}
2.  {helpb estimates table} 在 {help mlogit_zh} 后使用时，报告了相符性错误，并且其中一个方程包含空格。此问题已修复。

{p 5 9 2}
{* enhancement}
3.  {help icd9_zh} 和 {help icd9p_zh} 已更新以使用代码至 V24，描述也已更新，以便在旧的无效代码结束时添加井号 (#)。

{p 5 9 2}
{* fix}
4.  {bf:{dialog matrix_input:matrix input}} 对话框在指定负数时未能正确创建对称矩阵。此问题已修复。

{hline 8} {hi:更新 2007年2月16日} {hline}

    {title:自定义文件}

{p 5 9 2}
{* enhancement}
1.  在线帮助和搜索索引已更新至 {help sj_zh:Stata Journal} 7(1)。

{p 5 9 2}
{* fix}
2.  {help cttost_zh} 在某个时间段内失败时，退出时的错误信息不明确。此问题已修复。

{p 5 9 2}
{* fix}
3.  {helpb svy jackknife} 在预设的估计命令因缺失值而丢失观察时，报告了错误的 subpopulation 大小和 subpopulation 观察的数量。此问题已修复。

{hline 8} {hi:更新 2007年2月6日} {hline}

    {title:自定义文件}

{p 5 9 2}
{* enhancement}
1.  {help lookfor_zh} 现在可以搜索用双引号括起来的短语。

{p 5 9 2}
{* fix}
2.  {cmd:predict, scores} 在 {helpb ologit_postestimation##predict:ologit} 和 {helpb oprobit_postestimation##predict:oprobit} 之后，错误地返回了一个预测值的缺失。这已修复。

{p 5 9 2}
{* fix}
3.  {helpb "svy: ologit"} 和 {helpb "svy: oprobit"} 当用来拟合只有两种值的响应变量时，产生了不正确的标准误。这是由于这些模型的预测方程得分存在问题，已修复。

    {title:可执行程序，所有平台}

{p 5 9 2}
{* fix}
4.  {helpb gprobit} 计算 GLS 计算的权重不准确。这已修复。

{hline 8} {hi:更新 2007年1月12日} {hline}

    {title:自定义文件}

{p 5 9 2}
{* fix}
1.  {help adjust_zh} 已被修改，使用双精度执行中间计算。精度的提升一般会在第四或第五个小数中显现。

{p 5 9 2}
{* fix}
2.  {help glm_zh} 的 Newey-West 标准误计算，在与 Anderson 核函数一起使用时，未能考虑到此核的非标准性。已修复。

{p 5 9 2}
{* fix}
3.  {helpb gprobit} 计算的 GLS 计算的权重不正确。因此，系数估计是不有效的。已修复。

{p 5 9 2}
{* fix}
4.  {help graph_zh} 现在更好地支持默认用于标记轴和图例关键的变量标签。现在支持带有不平衡括号和方括号的标签，以及带有单独双引号的字符串。与出现在图表选项中的文本一样，每个双引号文本部分现在在标题或标签中单独显示。{cmd:xtitle()}、{cmd:ytitle()}、{cmd:legend(label())} 和 {cmd:legend(order())} 的效果同样得到了改善。

{p 5 9 2}
{* fix}
5.  {helpb pac} 在使用 {cmd:yw} 时发生了错误，如果 {cmd:varabbrev} 设置为 {cmd:off}。此问题已修复。

{p 5 9 2}
{* fix}
6.  {help stcox_zh} 和 {help streg_zh} 现在在指定了 {cmd:vce(bootstrap)} 或 {cmd:vce(jackknife)} 时退出时存在错误。此问题已修复。

{p 5 9 2}
{* fix}
7.  {help suest_zh} 允许混合使用具有后期分层的方法的调查估计结果，但不应这样做。此问题已修复。

{hline 8} {hi:更新 2006年12月12日} {hline}

    {title:自定义文件}

{p 5 9 2}
{* fix}
1.  修正了一些帮助文件中的错误。


{hline 8} {hi:更新 2006年12月5日} {hline}

    {title:自定义文件}

{p 5 9 2}
{* enhancement}
1.  在线帮助和搜索索引已更新至 {help sj_zh:Stata Journal} 5(4)。

{p 5 9 2}
{* enhancement}
2.  {help adoupdate_zh} 是一种新命令，保持您已从 {it:Stata Journal}、SSC 和其他来源安装的用户编写的 ado 文件保持最新。

{p 5 9 2}
{* fix}
3.  {help bootstrap_zh} 在指定了 {opt nodrop} 选项时未能传递该选项给 {help jackknife_zh}。此问题已修复。

{p 5 9 2}
{* fix}
4.  {help estat_zh} 在 {help arima_zh} 之后退出错，若指定了 {opt condition} 选项。此问题已修复。

{p 5 9 2}
{* fix}
5.  {help glm_zh} 忽视了 {cmd:exposure()} 选项。此问题已修复。

{p 5 9 2}
{* fix}
6.  {help histogram_zh} 偶尔报告的桶数比图上产生的桶数少。此问题已修复。

{p 5 9 2}
{* fix}
7.  {help jackknife_zh} 报告了“未找到最后的估计”错误，当在没有参数的情况下前缀调用命令时。此问题已修复。

{p 5 9 2}
{* fix}
8.  {help jackknife_zh} 报告了“选项不允许”错误，当作为不允许选项的命令的前缀调用时，即使没有指定选项。此问题已修复。

{p 5 9 2}
{* fix}
9.  {help lrtest_zh} 输出错误地换行，如果被测试模型的名称过长。此问题已修复。

{p 4 9 2}
{* enhancement}
10.  {help nl_zh} 现在使用格式 {it:/param} 列出参数在系数表中。

{p 4 9 2}
{* fix}
11.  {help nl_zh} 在使用权重时报告了一份不正确的权重总和和残差偏差。这已修复。

{p 4 9 2}
{* fix}
12.  {help recode_zh} 的 {cmd:max} 元素在变量全为缺失时将其值替换为缺失。此问题已修复。

{p 4 9 2}
{* fix}
13.  {helpb stphplot} 在某些情况下未能正确显示图例。此问题已修复。

{p 4 9 2}
{* enhancement}
14.  {help suest_zh} 现在具有选项 {opt svy}，以便将当前 {help svyset_zh} 特性应用于方差计算。

{p 4 9 2}
{* fix}
15.  15sep2005 更新更改了一些低级图形调用。在极少数情况下，某些 HP 打印机驱动程序不能正确解释先前的低级图形调用，导致整个图打印为黑色。我们已与体验过此问题的用户确认，15sep2005 更新允许这些驱动程序正确呈现图形。

{p 9 9 2}
     此问题在将其复制并粘贴到 Mac 平台的 Microsoft Office 时也会出现。15sep2005 更新修复了这个问题。

{hline 8} {hi:更新 11月15日 2005} {hline}

    {title:自定义文件}

{p 5 9 2}
{* fix}
1.  {help nestreg_zh} 在与其他 {help survey_zh} 估计命令一起使用时错误地退出并报告错误。此问题已修复。

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <whatsnew9.sthlp>}