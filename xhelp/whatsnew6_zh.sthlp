{smcl}
{* *! version 1.3.0  13sep2017}{...}
{vieweralsosee "whatsnew" "help whatsnew_zh"}
{help whatsnew6:English Version}
{hline}{...}
{title:版本 6 中 Stata 的新增项}

{pstd}
此文件记录了在 Stata 版本 6 发布期间所作的新增和修复内容：

    {c TLC}{hline 63}{c TRC}
    {c |} 帮助文件        内容                     年份           {c |}
    {c LT}{hline 63}{c RT}
    {c |} {help whatsnew_zh}         Stata 16.0                   2019 至今 {c |}
    {c |} {help whatsnew15to16_zh}   Stata 16.0 新版发行       2019            {c |}
    {c |} {help whatsnew15_zh}       Stata 15.0 和 15.1          2017 至 2019    {c |}
    {c |} {help whatsnew14to15_zh}   Stata 15.0 新版发行       2017            {c |}
    {c |} {help whatsnew14_zh}       Stata 14.0、14.1 和 14.2   2015 至 2017    {c |}
    {c |} {help whatsnew13to14_zh}   Stata 14.0 新版发行       2015            {c |}
    {c |} {help whatsnew13_zh}       Stata 13.0 和 13.1          2013 至 2015    {c |}
    {c |} {help whatsnew12to13_zh}   Stata 13.0 新版发行       2013            {c |}
    {c |} {help whatsnew12_zh}       Stata 12.0 和 12.1          2011 至 2013    {c |}
    {c |} {help whatsnew11to12_zh}   Stata 12.0 新版发行       2011            {c |}
    {c |} {help whatsnew11_zh}       Stata 11.0、11.1 和 11.2   2009 至 2011    {c |}
    {c |} {help whatsnew10to11_zh}   Stata 11.0 新版发行       2009            {c |}
    {c |} {help whatsnew10_zh}       Stata 10.0 和 10.1          2007 至 2009    {c |}
    {c |} {help whatsnew9to10_zh}    Stata 10.0 新版发行       2007            {c |}
    {c |} {help whatsnew9_zh}        Stata  9.0、9.1 和 9.2     2005 至 2007    {c |}
    {c |} {help whatsnew8to9_zh}     Stata  9.0 新版发行       2005            {c |}
    {c |} {help whatsnew8_zh}        Stata  8.0、8.1 和 8.2     2003 至 2005    {c |}
    {c |} {help whatsnew7to8_zh}     Stata  8.0 新版发行       2003            {c |}
    {c |} {help whatsnew7_zh}        Stata  7.0                   2001 至 2002    {c |}
    {c |} {help whatsnew6to7_zh}     Stata  7.0 新版发行       2000            {c |}
    {c |} {bf:此文件}        Stata  6.0                   1999 至 2000    {c |}
    {c BLC}{hline 63}{c BRC}

{pstd}
最近的更改位于最前面。
注意：带星号 (*) 的项目表示已更新可执行文件。

{hline 5} {hi:更新 20nov2000} {hline}

{pstd}
在线帮助和搜索索引已更新至 STB-58。

{hline 5} {hi:更新 03nov2000} {hline}

{p 0 4}
{help biprobit_zh} 在第二个方程长度超过 80 个字符时解析困难；在这种情况下，如果第一个和第二个方程的前 80 个字符相同，{cmd:biprobit} 会将第一个方程用作第二个方程，从而估计出与请求不一致的模型。这已修复。

{p 0 4}
当被解释变量不变化即使二项分母变化时，使用 {cmd:family(binomial)} 的 {help glm_zh} 会报告错误。这已修复。

{p 0 4}
使用选项 {cmd:correlation(ar1)} 或 {cmd:correlation(psar1)} 的 {help xtpcse_zh} 报告了不偏的 R 平方——一个以 0 为基数，而不是因变量均值的 R 平方——以及相关的模型平方和 {hi:e(mss)} 和模型自由度 {hi:e(df_m)}。现在它计算偏置的 R 平方，除非指定了选项 {cmd:noconstant}。

{hline 5} {hi:更新 25oct2000} {hline}

{p 0 4}
在使用包含超过 32,766 个观察的 数据集时，更新于 19sep2000 的 {help stsplit_zh} 会出现正确分割数据的故障。这已修复。

{hline 5} {hi:更新 12oct2000} {hline}

{p 0 4}
用于多重失效数据和在 {cmd:streg,} {cmd:dist(lognormal)} 后使用的 {help stcurv} 生成的图表曲线有锯齿形情况；这已修复。此外，在 {cmd:streg,} {cmd:dist(exponential)} 后使用的 {cmd:stcurv} 在轴的默认标签上有拼写错误。

{p 0 4}
在少数情况下，{help vif} 可能无法计算模型中所有右侧变量的方差膨胀因子。

{hline 5} {hi:更新 19sep2000} {hline}

{p 0 4}
在线帮助和搜索索引已更新至 STB-57。

{p 0 4}
{help bstat_zh} 有一个新选项 {cmd:title()}，允许更改输出的标题。

{p 0 4}
{help stcox_zh} 在指定和完全拼写的情况下，没有在 {hi:e()} 中保存创建的变量的名称，当指定选项时，如 {cmd:basehazard()}、{cmd:basechazard()} 或 {cmd:basesurv()} 以完整形式给出。这并没有造成任何问题，但如果要使用保存的结果可能会造成问题。

{p 0 4}
新选项 {cmd:outfile(}{it:filename}{cmd:)} 的 {help stcurv} 将生成的图形曲线用于生成的数据保存为 Stata .dta 数据集，以便日后使用。

{p 0 4}
{help stsplit_zh} 已经改进。运行更快，增加了额外选项，并且具有新的语法，便于在失效时间分割。请参考 {help stsplit_zh}。此外，新帮助文件 stsplit2 非常类似于常见问答，因为它解释了在失效时间分割的实用性以及 {help stcox_zh} 的 {cmd:exactp} 选项和通过 {help clogit_zh} 产生的条件逻辑回归估计之间的关系；请查看帮助文档 stsplit2。以前的 {cmd:stsplit} 中没有错误。

{hline 5} {hi:更新 11sep2000} {hline}

{p 0 4}
{help alpha_zh} 在选项 {cmd:generate()} 完全拼写时，会因无效语法错误信息而失败；这已修复。

{p 0 4}
在使用 {help regress_zh} 及 {cmd:cluster()} 选项后，{help avplot} 将生成的图表标题使用非稳健标准误。

{p 0 4}
在少数情况下，{help xtgee_zh} 会出现错误消息 r(505) "矩阵不对称"。此问题已修复。

{hline 5} {hi:更新 18aug2000} {hline}

{p 0 4}
{help tabstat_zh} 添加了新选项 {cmd:statistics(sdmean)} 来生成均值的标准差，现已不区分大小写，且如果只指定一个变量，则默认输出格式已更改。

{hline 5} {hi:更新 15aug2000} {hline}

{p 0 4}
{hi:Stata 可执行文件}(*), 所有平台。

{p 0 4}
在 {cmd:rotate} 选项 {cmd:varimax} 的 {help rotate_zh} 在 {help factor_zh} 之后使用时，产生了不正确的结果；结果现在是正确的。

{hline 5} {hi:更新 14aug2000} {hline}

{p 0 4}
{help dprobit_zh} 会在任何独立变量的名称中包含字符串 "_cons" 时出现错误消息。

{p 0 4}
使用选项 {cmd:correlation(ar1)} 或 {cmd:correlation(psar1)} 的 {help xtpcse_zh} 现允许将面板级自相关参数的估计限制在范围[-1,1]。这个限制施加了理论上的相关性极限，确保了 Prais-Winsten 计算总是可执行。这个变化只是对非常规数据集的估计结果产生影响，此数据集中任何估计的面板级自相关都超出了范围[-1,1]。即使在这些情况下，新的结果与先前结果渐近相等。

{hline 5} {hi:更新 02aug2000} {hline}

{p 0 4}
在使用 {help avplot} 及 {cmd:robust} 选项后，{help predict_zh} 将生成与支持不变的标准误的图。

{p 0 4}
{help dfuller_zh} 当观察数在 101 到 500 之间，而未指定选项 {cmd:trend} 和 {cmd:noconstant} 时，报告了不正确的 1% 临界值。

{p 0 4}
{help pperron_zh} 报告了不正确的 Z(t) 和 Z(rho) 统计量。此外，与 {cmd:dfuller} 一样，{cmd:pperron} 报告了不正确的 1% 临界值，当观察值在 101 到 500 之间时，而未指定选项 {cmd:trend} 和 {cmd:noconstant}。

{hline 5} {hi:更新 17jul2000} {hline}

{p 0 4}
在线帮助和搜索索引已更新至 STB-56。

{hline 5} {hi:更新 07jul2000} {hline}

{p 0 4}
使用选项 {cmd:pairwise} 的 {help xtpcse_zh} 会在异常情况下，报告 "矩阵不正定" 信息，该情况发生在干扰的估计协方差矩阵不是正定时。错误消息已改进，以表示不能使用 pairwise 选项。正如在 {help xtpcse_zh} 中所提到的，这只能在指定 {cmd:pairwise} 选项时发生。

{p 0 4}
{help strate_zh} 使用选项 {cmd:smr} 和 {cmd:output()} 时，会出现错误消息。现在已正常工作。

{p 0 4}
{help stsum_zh} 使用选项 {cmd:by()} 且在 {cmd:by()} 指定两个变量时，有时会在报价标记的位置显示表的预览。此问题已修复。

{hline 5} {hi:更新 03jul2000} {hline}

{p 0 4}
由于最近的更新，当指定 {cmd:exit(}{it:eventvar}{cmd:==}{it:numlist} {cmd:time} {it:varname}{cmd:)} 时，{help stset_zh} 可能会忽略事件而优先使用时间，错误地将选项视为 {cmd:exit(time} {it:varname}{cmd:)}。同样的情况也可能与 {cmd:enter()} 和 {cmd:origin()} 选项相同。该问题仅在同时指定事件列表和时间时发生；在许多语句如 {cmd:exit(}{it:eventvar}{cmd:==}{it:numlist}{cmd:)} 或 {cmd:exit(time} {it:varname}{cmd:)} 中不存在此问题。

{hline 5} {hi:更新 29jun2000} {hline}

{p 0 4}
{help ml_zh} 对于病态似然函数的收敛性已改进，其中一个或多个参数被驱动至正无穷或负无穷。

{p 0 4}
在某种情况下，{help reshape_zh} 给出的错误消息不够有用，现已改善。

{p 0 4}
在罕见情况下，{help sts_zh} {cmd:generate} 会发出错误消息，而不是产生请求的结果。现已修复。

{p 0 4}
{help tabstat_zh} 是一个新的命令，用于显示摘要统计表；请参见 {help tabstat_zh}。

{p 0 4}
如果模型中的一个或多个变量包含常量，{help xi_zh} 就会发出错误消息；{cmd:xi} 不应该抱怨，而应允许估计模型。这种情况是 2000 年 6 月 12 日更新的附带影响，现已修复。

{hline 5} {hi:更新 26jun2000} {hline}

{p 0 4}
{help wntestb_zh} 有一个不必要的全局宏，虽然从未显式使用，但有时会在图形标题中输出。此问题已修复。

{p 0 4}
在没有变化的面板的情况下使用 {help xthaus}，如果未使用任何协变量，将产生语法错误。现在已给出更信息化的错误消息。

{p 0 4}
在使用选项 {cmd:correlation(ar1)} 和 {cmd:pairwise} 的 {help xtpcse_zh} 中，如果没有观察值用于计算自相关参数，则会以“矩阵有缺失值”退出。现在会以“观察不足”的适当错误信息退出。

{hline 5} {hi:更新 12jun2000} {hline}

{p 0 4}
{help collapse_zh} 不允许将两种语法混合，其中一种语法指定新变量的名称而另一种不指定，例如 "{cmd:collapse newvar1=oldvar1 oldvar2 newvar3=oldvar3}"。"{cmd:collapse newvar1=oldvar1 newvar3=oldvar3}" 是允许的，"{cmd:collapse oldvar2}" 也是允许的，但不能将这两者混合为一个语句。现在可以混合。

{p 0 4}
如果引用了 Stata 函数，{help xi_zh} 会产生语法错误。此问题在 2000 年 5 月 31 日已修复，但没有完全修复。

{hline 5} {hi:更新 31may2000} {hline}

{p 0 4}
{help dstdize_zh} 现在保存观察数、未调整和调整后的比率以供其他程序使用；请参阅 {help dstdize_zh} 的详细信息。

{p 0 4}
如果引用了 Stata 函数，{help xi_zh} 会产生语法错误。此问题已修复。

{hline 5} {hi:更新 25may2000} {hline}

{p 0 4}
{hi:Stata 可执行文件}(*), 所有平台。

{p 0 4}
{help xtclog} 产生的参数和标准误的估计只准确到几位小数，或者在某些情况下未能收敛。此问题追溯到第二次导数矩阵计算中的错误，并已修复。

{hline 5} {hi:更新 24may2000} {hline}

{p 0 4}
{help ci_zh} 并且与 {cmd:poisson} 和 {cmd:by()} 选项一起使用，在具有 {cmd:if} 限制时，如果某个 by 组没有满足 if 条件的观察，结果不会产生。

{p 0 4}
{help hausman_zh} 输出现在明确指出，测试中更高效的模型必须是完全高效的。

{hline 5} {hi:更新 08may2000} {hline}

{p 0 4}
在线帮助和搜索索引已更新至 STB-55。

{hline 5} {hi:更新 19apr2000} {hline}

{p 0 4}
{help codebook_zh} 在发送某些变量名称（如 {hi:_d}）时会产生错误。这已修复。

{p 0 4}
具有 {cmd:dresid} 选项的 {help fracpred} 和 {help fracplot} 在 "{cmd:fracpoly clogit} ..." 或 "{cmd:fracpoly probit} ..." 之后给出了不够明确的错误消息。现在生成的错误报告更明确。（手册中未列出 {cmd:fracpoly} 可用于 {help clogit_zh} 和 {help probit_zh}，但实际上它确实有效。然而，{cmd:clogit} 和 {cmd:probit} 无法生成偏差残差，因此 {cmd:fracplot} 和 {cmd:fracpred, dresid} 被禁止在这些命令后面使用。）

{p 0 4}
{help gladder} 现在可以处理具有非正值的变量。

{p 0 4}
{help nl_zh} 现在在 "{cmd:nl ?}" 调用中包含 {cmd:if} exp。请参阅帮助 {help nl_zh} 中的“nlfcns 的高级编程”。在查询调用中，语法现在是

{p 8 16}{cmd:nlfcn} {cmd:?} [{it:varlist}] {cmd:if} {it:exp} [{cmd:,} {it:options}]

{p 4 4}这允许 nlfcn 在初始化计算中限制到相关的子样本，位于将初始参数设置为全局宏的代码部分。此外，{cmd:nl} 不再删除与参数名称（或根据缩写规则的相似名称）相同的现有变量。仍然支持 {cmd:leave} 选项，但首次会检查没有这些名称的现有变量存在，然后再创建变量。

{p 0 4}
在 {help stcox_zh} 和 {cmd:cox} 之后使用的 {help predict_zh} 在 x*b>18 时报告危险比为 1，而不是 exp(x*b)。此问题已修复。

{p 0 4}
{help qladder} 是一个新命令，根据与正态分布的分位数进行对变量的变换分位数的展示。

{p 0 4}
使用选项 {cmd:generate(}{it:newt0var}{cmd:)} 的 {help snapspan_zh} 现在将 {it:newt0var} 格式设置为与 {it:timevar} 相同。

{p 0 4}
{help svyolog}、{help svyoprob} 和 {help svymlog_zh} 在结果中有多于 50 个结果时，会产生不够明确的错误消息（这是 Stata 的限制）。现在会生成适当的错误消息和返回代码 r(149)。

{p 0 4}
{help xtpcse_zh} 现在允许将时间变量与任何选项集合一起用作回归变量。以前，{cmd:xtpcse} 在指定选项 {cmd:correlation(ar1)} 或 {cmd:correlation(psar1)} 时，拒绝将时间变量作为回归变量。

{hline 5} {hi:更新 17apr2000} {hline}

{p 0 4}
{hi:Stata 可执行文件}(*), 所有平台。

{p 0 4}
{help display_zh} 的 {cmd:_request()} 选项现在允许超过 80 个字符的输入。

{p 0 4}
{help format_zh} {cmd:_all} 如果记忆中没有数据则会导致崩溃；已修复。

{p 0 4}
{help matrix_zh} {cmd:accum} 现在在 _N==1 时产生错误。

{p 0 4}
{help matrix_zh} {cmd:glsaccum} 在与时间序列运算符一起使用时现在产生正确的结果，并在使用 {cmd:rows()} 选项重复加权矩阵的行时也是如此。此外，{cmd:matrix} {cmd:glsaccum} 现在在数据未按组排序且加权矩阵为非对称时产生错误消息。

{p 0 4}
{help matrix_zh} {cmd:vecaccum} 在时间序列操作符中现在正确标记行。

{p 0 4}
a^b 的幂计算现在在 b<=32 的整数值时通过重复乘法计算；之前使用了 b<=4。这样可以使结果更加准确。

{p 0 4}
在矩阵表达式中，{cmd:nullmat()} 函数仅在逗号和反斜杠运算符的左侧工作；现在可以在左右两侧工作。

{p 0 4}
{hi:Stata 可执行文件}(*), Unix。

{p 0 4}
在 Solaris 下，当您尝试执行 {help ls} 或 {help shell_zh} 命令时，不再出现“操作系统拒绝生成新进程”的消息。

{p 0 4}
在 Red Hat 6.2 下，有些人报告 Stata 启动时崩溃，这一问题已修复。

{hline 5} {hi:更新 05apr2000} {hline}

{p 0 4}
{help xtgls_zh} 在指定 {cmd:corr(ar1)} 或 {cmd:corr(psar1)} 选项时没有完全遵循 {cmd:force} 选项，这可能导致错误 r(504) "矩阵具有缺失值"。{cmd:xtgls} 现在始终遵循 {cmd:force} 选项。

{p 0 4}
{help xtpcse_zh} 现在允许在面板级自相关参数无法计算的情况下进行估计，并指定了选项 {cmd:correlation(psar1)}。以前，{cmd:xtpcse} 会返回错误消息 r(504) "矩阵具有缺失值"，并拒绝估计模型；现在假设这些相关性为 0 并继续进行估计。

{hline 5} {hi:更新 27mar2000} {hline}

{p 0 4}
{help sts_zh} {cmd:list} 在 {cmd:by()} 选项下，使用时对方变量为数字时使用了不正确的显示格式。虽然输出是正确的，但使用的显示格式不一定是最合适的。

{p 0 4}
{help svytab} 当值标签包含句点时会产生“操作符无效” r(198) 的错误消息。此问题已修复。

{hline 5} {hi:更新 24mar2000} {hline}

{p 0 4}
{help intreg_zh} 现在以不同的方式处理 {help aweight}；请参阅有关 20mar2000 更新对应 {cmd:tobit} 和 {cmd:cnreg} 的评论。

{p 0 4}
{help kwallis_zh} 于 09mar2000 更新，以报告校正后的卡方统计量。此新统计量在存在缺失值时计算不正确。

{p 0 4}
{help xtclog}、{help xtlogit_zh}、{help xtnbreg_zh}、{help xtpois}、{help xtprobit_zh} 和 {help xtreg_zh}，在 {cmd:pa} 选项下不再允许 {help aweight}。然而，使用 {cmd:pa}，它们现在都允许 {help fweight}。现在所有都可以与 {cmd:noconstant} 选项一起使用。

{p 0 4}
{help xtgee_zh} 进行的许多更改。这些包括

{p 4 8}1.  用于计算相关性和标准误差的默认除数已从 1/(N-p) 更改为 1/N。新的选项 {cmd:nmp} 将输出以前的结果。（使用哪个除数几乎没关系，因为两者渐近上是正确的。1/N 在缩放方面有稍微的 优势；参考 {help xtgee_zh}。

{p 4 8}2.  在 {cmd:family(gaussian)} 的特定情况下，计算稳健 VCE 的默认归一化过程现在是 n/(n-1) 而不是 [n/(n-1)]*[(N-1)/(N-p)]，其中 n = 面板数量，N = 观察数量，进行此更改的原因与（1）相同。新的选项 {cmd:rgf} 可以再现以前的结果。

{p 4 8}3.  在不平衡面板的情况下，工作相关矩阵的计算和因此导致的估计已被更改，特别在使用 {cmd:corr(nonstationary)} 或 {cmd:corr(unstructured)} 的情况下。

{p 4 8}4.  {cmd:xtgee} 不再允许 {help aweight}。

{p 4 8}5.  {cmd:xtgee} 现在允许 {help fweight}。

{p 4 8}6.  {cmd:xtgee} 计算加权结果的方式已更改。

{p 4 4}请参见 {browse "http://www.stata.com/support/faqs/stat/xtgeetech.html"} 以获取有关此的技术 FAQ。

{p 4 4}要使这些更改生效，您还必须安装 20mar2000 的可执行更新。

{hline 5} {hi:更新 20mar2000} {hline}

{p 0 4}
{hi:Stata 可执行文件}(*), 所有平台。

{p 0 4}
{help clogit_zh} 在无右侧变量的情况下，报告了在组中存在多个故障时的明确定义的似然值。此外，带有 {cmd:offset()} 选项的 {cmd:clogit} 报告的不正确模型卡方统计量。

{p 0 4}
矩阵函数 {cmd:det()} 报告了在矩阵的对角线上有零时，为行列式返回 0；此问题已修复。

{p 0 4}
{help mlogit_zh} 的收敛性得到了改善；现在在某些模型中收敛，而以前没有。（这是因为改进了内部优化器中处理步进的方式，并应改善所有模型的收敛性）。

{p 0 4}
{help tobit_zh} 和 {help cnreg_zh} 现在以不同的方式处理 {help aweight}。以前，它们只是被缩放，并按"普通"方式应用于似然函数，但这无法解决任何实际问题。现在它们以正确的方式应用于处理单元均值数据的两种似然函数。

{p 4 4}
({cmd:aweight} 近期在发布中经历了变化。它们最初定义为重新缩放的 {cmd:fweight}，可能有用，也可能没有用，并且大多数估计允许它们。后来，依然通过这种机械方式定义的 {cmd:aweight} 从解决没有实际问题的估计器中删除。从这个逻辑，{cmd:aweight} 应该从 {cmd:tobit} 和 {cmd:cnreg} 中删除。现 {cmd:aweight} 正在重新定义：用于产生估计，当估计器应用于单元均值数据时，即使这需要更改机械定义。机械定义之所以存在，是因为它是在处理线性回归中的单元均值数据时的解决方案。）

{p 0 4}
{help tobit_zh} 和 {help cnreg_zh} 现在生成更好的起始值，因此应收敛得更快。以前有一个报告称某个模型中 {cmd:tobit} 拒绝收敛；新的起始值修复了这一问题。

{p 0 4}
对支持 24mar2000 更新 {help xtgee_zh} 的内部变更进行了处理，如上所列。

{p 0 4}
{hi:Stata 可执行文件}(*), Unix。

{p 0 4}
在 Red Hat 6.1 下，Stata 将拒绝执行来自 Gnome 终端的命令。此问题已修复。

{hline 5} {hi:更新 13mar2000} {hline}

{p 0 4}
{help egen_zh} 的 {cmd:robs()} 功能使用了 {cmd:strok} 选项（在 16Aug1999 引入）时计算了缺失的数量，而不是非缺失的观察数量。此问题已修复。

{p 0 4}
在线帮助和搜索索引已更新至 STB-54。

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <whatsnew6.sthlp>}