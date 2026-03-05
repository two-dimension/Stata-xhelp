{smcl}
{* *! version 1.3.0  13sep2017}{...}
{vieweralsosee "whatsnew" "help whatsnew_zh"}
{help whatsnew7to8:English Version}
{hline}{...}
{title:8.0版的新功能（与7.0版相比）}

{pstd}
本文件列出了 Stata 8.0 版的更改信息：

    {c TLC}{hline 63}{c TRC}
    {c |} 帮助文件            内容                        年份           {c |}
    {c LT}{hline 63}{c RT}
    {c |} {help whatsnew_zh}         Stata 16.0                   2019 至今 {c |}
    {c |} {help whatsnew15to16_zh}   Stata 16.0 新版本             2019            {c |}
    {c |} {help whatsnew15_zh}       Stata 15.0 和 15.1             2017 至 2019    {c |}
    {c |} {help whatsnew14to15_zh}   Stata 15.0 新版本             2017            {c |}
    {c |} {help whatsnew14_zh}       Stata 14.0, 14.1 和 14.2       2015 至 2017    {c |}
    {c |} {help whatsnew13to14_zh}   Stata 14.0 新版本             2015            {c |}
    {c |} {help whatsnew13_zh}       Stata 13.0 和 13.1             2013 至 2015    {c |}
    {c |} {help whatsnew12to13_zh}   Stata 13.0 新版本             2013            {c |}
    {c |} {help whatsnew12_zh}       Stata 12.0 和 12.1             2011 至 2013    {c |}
    {c |} {help whatsnew11to12_zh}   Stata 12.0 新版本             2011            {c |}
    {c |} {help whatsnew11_zh}       Stata 11.0, 11.1 和 11.2       2009 至 2011    {c |}
    {c |} {help whatsnew10to11_zh}   Stata 11.0 新版本             2009            {c |}
    {c |} {help whatsnew10_zh}       Stata 10.0 和 10.1             2007 至 2009    {c |}
    {c |} {help whatsnew9to10_zh}    Stata 10.0 新版本             2007            {c |}
    {c |} {help whatsnew9_zh}        Stata 9.0, 9.1 和 9.2         2005 至 2007    {c |}
    {c |} {help whatsnew8to9_zh}     Stata 9.0 新版本             2005            {c |}
    {c |} {help whatsnew8_zh}        Stata 8.0, 8.1 和 8.2         2003 至 2005    {c |}
    {c |} {bf:本文件}           Stata 8.0 新版本             2003            {c |}
    {c |} {help whatsnew7_zh}        Stata 7.0                     2001 至 2002    {c |}
    {c |} {help whatsnew6to7_zh}     Stata 7.0 新版本              2000            {c |}
    {c |} {help whatsnew6_zh}        Stata 6.0                     1999 至 2000    {c BLC}{hline 63}{c BRC}

{pstd}
最近的更改列在前面。

{hline 3} {hi:最近的更新} {hline}

{pstd}
请参阅 {help whatsnew8_zh}。

{hline 3} {hi:Stata 8.0 版发布于 02jan2003} {hline}

{p 4 4 2}
与以往一样，Stata 8.0 完全兼容于之前发布的 Stata，但我们再次提醒程序员，如果要使旧的 do 文件和 ado 文件正常工作，务必在文件顶部写上 {cmd:version 7.0}；查看帮助 {help version_zh}。编写这些文件时本应做到这一点，但如果未做到，请及时补上。我们对 Stata 进行了许多更改（改进）。

{p 4 4 2}
此外，由于新的更长数据存储类型的引入和 Stata 现在有多个缺失值表示形式，其数据集格式也发生了变化。您不会在意，因为 Stata 会自动读取旧格式的数据集，但如果您需要向仍在使用 Stata 7 的人发送数据集，请记得使用 {cmd:saveold} 命令；查看帮助 {help saveold}。

{p 4 4 2}
加入 Stata 8.0 的功能列在以下标题下。

	    {bf:重要新功能}
		{bf:图形}
		{bf:图形用户界面（GUI）}
	    {bf:有用的新功能}
	    {bf:便捷的新功能}
	    {bf:急需的新功能}
	    {bf:速度更快的功能}
	    {bf:时间序列分析的新功能}
	    {bf:横断面时间序列分析的新功能}
	    {bf:生存分析的新功能}
	    {bf:调查分析的新功能}
	    {bf:聚类分析的新功能}
	    {bf:在各个领域中有用的统计学的新功能}
	    {bf:数据管理的新功能}
	    {bf:表达式和函数的新功能}
	    {bf:显示格式的新功能}
	    {bf:编程的新功能}
	    {bf:用户界面的新功能}
	    {bf:其他新功能}

{title:重要新功能}

{p 4 4 2}
重要消息是新的 GUI 和新的图形。它们没有特别的顺序。

    {title:图形}

{p 4 4 2}
您可以创建看起来像这样的图形

{p 12 12 2}
({stata gr_example2 line3:点击运行})

{p 4 4 2}
或这样

{p 12 12 2}
({stata "gr_example auto: twoway (qfitci mpg weight, stdf) (scatter mpg weight), by(foreign)":点击运行})

{p 4 4 2}
请查看帮助 {help graph_intro_zh} 中的 {hi:简要介绍}。您需要了解的一切都在网上。

{p 4 4 2}
那么 Stata 图形的新内容是什么？一切都是新的。没有一小部分是旧的，即使看起来熟悉。

{p 4 4 2}
在您感到恐慌之前，让我们告诉您，所有旧的图形在 Stata 中依然存在。如果您输入

	{cmd:. graph7} ...

{p 4 4 2}
或

	{cmd:. gr7} ...

{p 4 4 2}
您将返回使用旧的 {cmd:graph} 命令；请查看帮助 {help graph7_zh}。此外，旧的 {cmd:graph} 命令在版本控制下依然可以调用；请查看帮助 {help version_zh}。如果将您的版本设置为 7.0 或更早版本，{cmd:graph} 不再代表帮助 {help graph_zh} 中定义的内容，而是代表以前的内容，这意味着旧的 do 文件和 ado 文件将继续正常工作。

{p 4 4 2}
一个新功能需要进行一些调整。过去称为符号的现在称为标记，标记符号是标记的形状。因此，您不再指定 {cmd:symbol()} 或 {cmd:s()} 选项，而是指定 {cmd:msymbol()} 或 {cmd:ms()} 选项。此外，旧的 {cmd:s(.)} 用于指定点符号现在变为 {cmd:ms(p)}（{cmd:p} 代表点）。{cmd:ms(.)} 表示使用默认值。

{p 4 4 2}
所有生成图形的现有统计命令都已更新，以利用新图形。

    {title:图形用户界面（GUI）}

{p 4 4 2}
GUI 代表图形用户界面，要尝试它，您无需阅读任何内容。下拉 {hi:数据}、{hi:图形} 或 {hi:统计}，找到您所需的内容，然后点击。

{p 4 4 2}
填写对话框并单击提交。请不要忽视顶部的选项卡 -- 其中隐藏着非常有用的内容。

{p 4 4 2}
如果您知道所需的命令，则可以跳过菜单，并输入 {cmd:db} 后跟命令名。例如，您可以通过输入 {cmd:db stcox}（或 {dialog stcox:点击这里}）直接跳转到 {cmd:stcox} 对话框。请查看帮助 {help db_zh}。

{title:有用的新功能}

{p 4 4 2}
Stata 8 拥有如此多的功能，以至于找到您想要的东西可能成为一项挑战。我们已经解决了这个问题：

{p 6 10 2}
1.  下拉 {hi:帮助} 并选择 {hi:目录}。您将看到基本、数据管理、统计、图形和编程等类别。点击其中一个 -- 比如，统计 -- 您将看到另一组类别：摘要统计与检验、表格、估计、多元分析、重抽样与模拟、统计手动计算和特殊主题。点击其中一个，您明白的。

{p 6 10 2}
2.  帮助文件的标题现在具有超链接，用于启动与该命令相关的对话框。因此，有三种方式调用对话框： (1) 使用菜单（下拉 {hi:数据}、{hi:图形} 或 {hi:统计}）； (2) 使用新的 {cmd:db} 命令（请查看帮助 {help db_zh}）； 或 (3) 从在线帮助中选择命令。

{p 6 10 2}
3.  当您确实需要搜索时，{cmd:findit} 是关键。{cmd:findit} 会在所有地方进行搜索：Stata 本身、Stata 网站、常见问题解答、{it:Stata Journal}，甚至是网络上可用的用户编写程序。早期版本的 {cmd:findit} 作为 Stata 7 的更新发布，但新版本更好。您还可以通过下拉 {hi:帮助} 并选择 {hi:搜索} 来访问 {cmd:findit}。如果这样做，请确保在对话框中单击 {hi:搜索所有}。请查看帮助 {help search_zh}。

{p 6 10 2}
4.  新的 {cmd:ssc} 命令列出并安装来自统计软件组件（SSC）存档的用户编写的软件包，也称为波士顿学院存档，位于 {browse "http://www.repec.org"}。请查看帮助 {help ssc_zh}。

{p 6 10 2}
5.  新的 {cmd:net sj} 命令简化了从新的 {it:Stata Journal} 加载文件的过程；请查看帮助 {help net_zh}。

{title:便捷的新功能}

{p 4 4 2}
现有的 {cmd:set} 命令新增了 {cmd:permanently} 选项，允许您使设置永久生效。这消除了大多数用户需要拥有 {cmd:profile.do} 文件的必要性。

{title:急需的新功能}

{p 4 4 2}
Stata 现在拥有多个缺失值！除了过去存在的 {cmd:.}，现在还有 {cmd:.a}、{cmd:.b}、...、{cmd:.z}，您可以将值标签附加到新的缺失代码上！

{p 4 4 2}
注意一件事情：请勿键入

{p 8 12 2}
	{cmd:.} {it:stata_command} ... {cmd:if} {it:x} {cmd:!= .}

{p 4 4 2}
相反，请键入

{p 8 12 2}
	{cmd:.} {it:stata_command} ... {cmd:if} {it:x} {cmd:< .}

{p 4 4 2}
只有在使用新的缺失值时才需要记住这一点，但最好养成良好的习惯。现在的工作机制是，

{p 8 12 2}
	{it:所有数字} < {cmd:.} < {cmd:.a} < {cmd:.b} < ... < {cmd:.z}

{p 4 4 2}
因此，如果您想列出 {it:x} 缺失的所有观察，您应输入

{p 8 12 2}
	{cmd:. list if} {it:x} {cmd:>= .}

{p 4 4 2}
请查看帮助 {help missing_zh}。

{title:速度更快的功能}

{p 4 4 2}
Stata 8 在执行编程命令时的平均速度是 Stata 7 的一半。这使得以 ado 文件实现的命令运行速度提高了约 17% 至 43%。

{p 6 10 2}
1.  这种加速归功于新的、更快的内存管理器，它减少了找到、访问和存储结果所需的时间。因此，这种改进对运行内置的、重计算命令没有太大变化。例如，{help regress_zh} 仅运行快 1.43%。然而，对其他命令影响明显。{help poisson_zh} 运行时快 31%，而 {help heckman_zh} 运行时快 43%。数据集越大，改进效果越小：在 4,000 个观测值上，{cmd:heckman} 运行速度快 17%。

{p 6 10 2}
2.  统计命令运行更快是个意外的好处。加速的主要优势是，它允许某些问题使用 ado 文件处理，而之前需要内部代码，例如 Stata 的新图形，这是 ado 文件实现的一部分！某些编程命令的运行速度提高了 400%。以 ado 文件实现功能是为了保持 Stata 的开放性和可扩展性。

{title:时间序列分析的新功能}

{p 6 10 2}
1.  Stata 现在可以拟合向量自回归（VAR）和结构向量自回归（SVAR）模型。新命令 {cmd:var}、{cmd:varbasic} 和 {cmd:svar} 进行估计；请查看帮助 {help varintro}。

{p 10 14 2}
    a.  一系列 {cmd:varirf} 命令估计、制表和绘制冲击响应函数、累积冲击响应函数、正交冲击响应函数、结构冲击响应函数及其置信区间，以及预测误差方差分解和结构预测误差方差分解；请查看帮助 {help varirf}。该系列命令可以在模型和排序之间进行 IRF 和方差分解的图形比较。

{p 10 14 2}
    b.  {cmd:varfcast} 从先前拟合的 {cmd:var} 或 {cmd:svar} 模型生成动态预测；请查看帮助 {help varfcast_zh}。

{p 10 14 2}
    c.  还提供了一系列诊断和测试工具，包括

{p 16 20 2}
	i.  {cmd:vargranger}，进行 Granger 因果检验；请查看帮助 {help vargranger_zh}。

{p 15 20 2}
	ii.  {cmd:varlmar}，进行残差自相关的拉格朗日乘子（LM）检验；请查看帮助 {help varlmar_zh}。

{p 14 20 2}
	iii.  {cmd:varnorm}，进行干扰项正态性的系列检验；请查看帮助 {help varnorm_zh}。

{p 15 20 2}
	iv.  {cmd:varsoc}，报告一系列滞后顺序选择统计量；请查看帮助 {help varsoc_zh}。

{p 16 20 2}
	v.  {cmd:varstable}，检查特征值稳定条件；请查看帮助 {help varstable_zh}。

{p 15 20 2}
	vi.  {cmd:varwle}，进行 Wald 检验，检验给定滞后的内生变量是否为零，分别针对每个方程和所有方程进行联合检验；请查看帮助 {help varwle_zh}。

{p 6 10 2}
2.  新的 {cmd:tssmooth} 命令使用加权或未加权的移动平均、单重指数平滑、双重指数平滑、霍特-温特斯非季节性平滑、霍特-温特斯季节性平滑或非线性平滑来平滑和预测单变量时间序列。请查看帮助 {help tssmooth_zh}。

{p 6 10 2}
3.  新的 {cmd:tsappend} 命令将观察附加到时间序列数据集中，按照 {cmd:tsset} 中设置的信息自动填写时间变量和面板变量（如果已设置）。请查看帮助 {help tsappend_zh}。

{p 6 10 2}
4.  新的 {cmd:archlm} 命令计算 autoregressive conditional heteroskedasticity (ARCH) 效果的拉格朗日乘子检验；请查看帮助 {help archlm}。

{p 6 10 2}
5.  新的 {cmd:bgodfrey} 命令计算 Breusch-Godfrey 拉格朗日乘子（LM）检验，以检测回归后干扰项的序列相关性；请查看帮助 {help bgodfrey}。

{p 6 10 2}
6.  新的 {cmd:durbina} 命令计算 Durbin（1970）替代统计量，以检测回归后干扰项的序列相关性，当一些回归变量不是严格外生时；请查看帮助 {help durbina}。

{p 6 10 2}
7.  新的 {cmd:dfgls} 命令执行修改过的 Dickey-Fuller t 检验，以测试单位根（由 Elliott、Rothenberg 和 Stock（1996）提出），使用具有 1 到 {it:maxlags} 滞后的增广 Dickey-Fuller 回归中的一阶差分变量；请查看帮助 {help dfgls_zh}。

{p 6 10 2}
8.  现有的 {cmd:arima} 命令现可与 {cmd:by} 前缀命令一起使用，并允许在跨面板循环中进行预测；请查看帮助 {help arima_zh}。

{p 6 10 2}
9.  现有的 {cmd:newey} 命令现在允许（并要求）您 {help tsset_zh} 数据；请查看帮助 {help newey_zh}。

{title:横断面时间序列分析的新功能}

{p 6 10 2}
1.  新的 {cmd:xthtaylor} 命令使用 Hausman-Taylor 和 Amemiya-MaCurdy 工具变量估计量拟合面板数据随机效应模型；请查看帮助 {help xthtaylor_zh}。

{p 6 10 2}
2.  新的 {cmd:xtfrontier} 命令为面板数据拟合随机生产或成本边界模型，允许对效率项进行两种不同的参数化：一个时间不变模型和 Battese-Coelli（1992）时间效应参数化；请查看帮助 {help xtfrontier_zh}。

{p 6 10 2}
3.  现有的 {cmd:xtabond} 命令现在允许内生回归变量；请查看帮助 {help xtabond_zh}。

{p 6 10 2}
4.  现有的 {cmd:xtivreg} 命令现在可以选择性地报告 Baltagi 的 EC2SLS 随机效应估计量的第一阶段结果；请查看帮助 {help xtivreg_zh}。

{p 6 10 2}
5.  现有的 {cmd:xttobit} 和 {cmd:xtintreg} 命令有新的 {cmd:predict} 选项：

{p 10 14 2}
    a.  {cmd:pr0(}{it:#_a}{cmd:,}{it:#_b}{cmd:)} 生成被截断的因变量在区间 P({it:#_a}< y < {it:#_b}) 的概率。

{p 10 14 2}
    b.  {cmd:e0(}{it:#_a}{cmd:,}{it:#_b}{cmd:)} 生成相应的期望值 E(y | {it:#_a} < y < {it:#_b})。

{p 10 14 2}
    c.  {cmd:ystar(}{it:#_a}{cmd:,}{it:#_b}{cmd:)} 生成在截断点截断的因变量的期望值 E(y^*), 其中 y^* = max({it:#_a}, min(y,{it:#_b}))。

{p 10 10 2}
  请查看帮助 {help xttobit_zh} 和 {help xtintreg_zh}。

{p 6 10 2}
6.  现有的 {cmd:xtgee} 和 {cmd:xtlogit} 命令有新的 {cmd:nodisplay} 选项，抑制系数表头和表格；{cmd:xtregar, fe} 现在允许 {cmd:aweight}s 和 {cmd:fweight}s；{cmd:xtpcse} 现在对 {cmd:aweight}s 应用没有限制。请查看帮助 {help xtgee_zh}、{help xtlogit_zh} 和 {help xtpcse_zh}。

{p 6 10 2}
7.  有两个命令被重命名： {cmd:xtpois} 现在称为 {cmd:xtpoisson}，而 {cmd:xtclog} 现在称为 {cmd:xtcloglog}。旧名称仍然有效。请查看帮助 {help xtpoisson_zh} 和 {help xtcloglog_zh}。

{title:生存分析的新功能}

{p 6 10 2}
1.  现有命令 {cmd:stcox} 有一个重要的新特性和一些小改进：

{p 10 14 2}
    a.  {cmd:stcox} 现在将拟合具有伽马分布的脆弱性模型。在该模型中，脆弱性被假设为跨观察组共享。以前，如果要使用 Cox 模型分析多元生存数据，人们将拟合标准模型并通过调整聚类的标准误差来考虑组内的相关性。现在，人们可以通过假设潜在的伽马分布随机效应或脆弱性，直接建模相关性；组内观察是相关的，因为它们共享相同的脆弱性。估计通过惩罚似然法进行。可获得脆弱性方差的估计，并可以检索组级脆弱性估计。

{p 10 14 2}
    b.  {help fracpoly_zh}、{help sw} 和 {help linktest_zh} 现在可以在 {cmd:stcox} 后正常工作。

{p 10 10 2}
    请查看 {help stcox_zh}。

{p 6 10 2}
2.  现有命令 {cmd:streg} 有一个重要的新特性和一些小改进：

{p 10 14 2}
    a.  {cmd:streg} 有新选项 {cmd:shared(}{it:varname}{cmd:)} 用于拟合参数共享脆弱性模型，类似于面板数据的随机效应模型。 {cmd:streg} 可以拟合脆弱性模型，其中脆弱性假设在观察级别上是随机分布的。

{p 10 14 2}
    b.  {help fracpoly_zh}、{help sw} 和 {help linktest_zh} 现在在 {cmd:streg} 后可以正常工作。

{p 10 14 2}
    c.  {cmd:streg} 有另外四个新选项： {cmd:noconstant}、{cmd:offset()}、{cmd:noheader} 和 {cmd:nolrtest}。

{p 10 10 2}
    请查看 {help streg_zh}。

{p 6 10 2}
3.  {cmd:predict} 在 {cmd:streg, frailty()} 后有两个新选项：

{p 10 14 2}
    a.  {cmd:alpha1} 生成条件于脆弱性等于 1 的预测。

{p 10 14 2}
    b.  {cmd:unconditional} 生成在脆弱性分布上“平均”的预测。

{p 10 10 2}
    这些新选项也可以与 {cmd:stcurve} 一起使用。请查看 {help streg_zh}。

{p 6 10 2}
4.  {cmd:sts graph} 和 {cmd:stcurve}（在 {cmd:stcox} 后）现在可以绘制估计的风险函数，风险函数通过估计的风险贡献的加权核平滑计算；请查看 {help sts_zh}。

{p 6 10 2}
5.  {cmd:streg, dist(gamma)} 现在更快且更准确。此外，您现在可以预测伽马之后的平均时间；请查看 {help streg_zh}。

{p 6 10 2}
6.  旧命令 {cmd:ereg}、{cmd:ereghet}、{cmd:llogistic}、{cmd:llogistichet}、{cmd:gamma}、{cmd:gammahet}、{cmd:weibull}、{cmd:weibullhet}、{cmd:lnormal}、{cmd:lnormalhet}、{cmd:gompertz}、{cmd:gompertzhet} 被弃用（仍可正常工作），建议使用 {cmd:streg}。旧命令 {cmd:cox} 现在被弃用（仍可正常工作），推荐使用 {cmd:stcox}。请查看 {help streg_zh} 和 {help stcox_zh}。

{title:调查分析的新功能}

{p 6 10 2}
1.  Stata 的 {cmd:ml} 用户可编程似然估计例程具有新的选项，自动处理调查估计，包括分层和在子人群上进行估计；请查看帮助 {help ml_zh}。

{p 6 10 2}
2.  有四个新的调查估计命令可用：

{p 10 14 2}
    a.  {cmd:svynbreg} 用于负二项回归；请查看帮助 {help svynbreg}。

{p 10 14 2}
    b.  {cmd:svygnbreg} 用于广义负二项回归；请查看帮助 {help svygnbreg}。

{p 10 14 2}
    c.  {cmd:svyheckman} 用于 Heckman 选择模型；请查看帮助 {help svyheckman}。

{p 10 14 2}
    d.  {cmd:svyheckprob} 用于有选择的概率回归；请查看帮助 {help svyheckprob}。

{p 6 10 2}
3.  调查命令的使用变得更加一致。

{p 10 14 2}
    a.  {cmd:svyset} 具有新的语法。之前的语法为

{p 18 22 2}
	    {cmd:svyset} {it:thing_to_set} [{cmd:, clear} ]

{p 14 14 2}
	现在的语法为

{p 18 22 2}
	    {cmd:svyset} [{it:weight}] [{cmd:, strata(}{it:varname}{cmd:)}
		{cmd:psu(}{it:varname}{cmd:)} {cmd:fpc(}{it:varname}{cmd:)} ]

{p 14 14 2}
	详情请参阅帮助 {help svyset_zh}。此外，您现在必须在使用调查命令之前先 {cmd:svyset} 数据；不再可以通过其他调查命令的选项设置数据。

{p 10 14 2}
    b.  两个调查估计命令已重命名：{cmd:svyreg} 变更为 {cmd:svyregress}，{cmd:svypois} 变更为 {cmd:svypoisson}；请查看帮助 {help svyregress} 和 {help svypois}。

{p 10 14 2}
    c.  {cmd:svyintreg} 现在以与所有其他估计命令相同的方式应用约束；请查看帮助 {help svyintreg}。

{p 10 14 2}
    d.  {cmd:lincom} 现在适用于所有 {cmd:svy} 估计量；请查看帮助 {help lincom_zh}。({cmd:svylc} 现在已弃用。)

{p 10 14 2}
    e.  {cmd:testnl} 现在适用于所有 {cmd:svy} 估计量；请查看帮助 {help testnl_zh}。

{p 10 14 2}
    f.  {cmd:testparm} 现在适用于所有 {cmd:svy} 估计量；请查看帮助 {help test_zh}。

{p 10 14 2}
    g.  新的 {cmd:nlcom} 和 {cmd:predictnl} 命令，它们在所有 {cmd:svy} 估计量后形成非线性估计和广义预测；请查看帮助 {help nlcom_zh} 和 {help predictnl_zh}。

{p 6 10 2}
4.  现有命令 {cmd:svytab} 有三个新选项： {cmd:cellwidth()}、{cmd:csepwidth()} 和 {cmd:stubwidth()}；它们指定输出中表元素的宽度。请查看帮助 {help svytab}。

{title:聚类分析的新功能}

{p 6 10 2}
1.  新的 {cmd:cluster wardslinkage} 命令提供 Ward 的链接分层聚类，并可以生成最小方差聚类，也称为 Ward 方法。请查看帮助 {help clward}。

{p 6 10 2}
2.  新的 {cmd:cluster waveragelinkage} 命令提供加权平均链接分层聚类，以配合先前可用的平均链接聚类。请查看帮助 {help clwav}。

{p 6 10 2}
3.  新的 {cmd:cluster centroidlinkage} 命令提供中心点链接分层聚类。这与先前可用的 {cmd:cluster averagelinkage} 不同，因为它基于要合并的两个组的观察之间的平均距离进行组合。请查看帮助 {help clcent}。

{p 6 10 2}
4.  新的 {cmd:cluster medianlinkage} 命令提供中位数链接分层聚类，也称为 Gower 方法。请查看帮助 {help clmedian}。

{p 6 10 2}
5.  新的 {cmd:cluster stop} 命令提供停止规则。提供两种流行的停止规则： Calinski 和 Harabasz 假伪 F 指数（Calinski 和 Harabasz（1974））以及与假伪 T 平方相关联的 Duda 和 Hart Je(2)/Je(1) 指数（Duda 和 Hart（1973））。请查看帮助 {help clstop}。

{p 10 10 2}
    可以添加更多的停止规则；请查看帮助 {help clprog}。

{p 6 10 2}
6.  新增了两个不相似性测度： {cmd:L2squared} 和 {cmd:Lpower(}{it:#}{cmd:)}。 {cmd:L2squared} 提供平方欧几里德距离。 {cmd:Lpower(}{it:#}{cmd:)} 提供以 {it:#} 为指数的 Minkowski 距离度量。请查看帮助 {help cldis}。

{p 6 10 2}
7.  现在在聚类分析结构中保存了用于聚类分析的变量列表，这对程序员非常有用；请查看帮助 {help clprog}。

{title:在各个领域中有用的统计学的新功能}

{p 6 10 2}
1.  有以下新估计量可用：

{p 10 14 2}
    a.  {cmd:manova} 拟合多元方差分析（MANOVA）和多元协方差分析（MANCOVA）模型，适用于平衡和不平衡的设计，包括具有缺失单元的设计；适用于因子、嵌套或混合设计。请查看帮助 {help manova_zh}。
	({cmd:manovatest} 提供与最近拟合的 {cmd:manova} 相关的多元检验；请查看帮助 {help manovatest}。)

{p 10 14 2}
    b.  {cmd:rologit} 拟合秩序 logit 模型，也称为爆炸 logit 模型。该模型是由 {cmd:clogit} 拟合的广义 McFadden 选择模型。在选择模型中，仅观察到最大化效用的替代品。 {cmd:rologit} 拟合相应的模型，其中观察到偏好排名，而不仅仅是排名第一的替代品。 {cmd:rologit} 支持不完整排名和平局（“无差别”）。请查看帮助 {help rologit_zh}。

{p 10 14 2}
    c.  {cmd:frontier} 拟合具有技术或成本低效率效应的随机边界模型。 {cmd:frontier} 可以拟合假设低效率误差成分取自三种分布之一：半正态、指数或截断正态。此外，当低效率项假设为半正态或指数时， {cmd:frontier} 可以拟合假设干扰成分是条件异方差的模型，基于一组协变量。 {cmd:frontier} 还可以拟合那些将低效率项的均值建模为一组协变量的线性函数的模型。请查看帮助 {help frontier_zh}。

{p 10 10 2}
这些新估计量是对之前章节中列出的新估计量的补充。

{p 6 10 2}
2.  新命令 {cmd:mfp} 根据自变量选择最佳预测因变量的分数多项式模型；请查看帮助 {help mfp_zh}。

{p 6 10 2}
3.  新的 {cmd:nlcom} 命令计算非线性组合系数的点估计、标准误差、t 统计量和 Z 统计量、p 值和置信区间。结果以常用表格格式显示，适用于显示估计结果。标准误差基于 delta 方法，对大样本恰当。请查看帮助 {help nlcom_zh}。

{p 6 10 2}
4.  新的 {cmd:predictnl} 命令在任何 Stata 估计命令后生成非线性预测，并可选择计算这些预测的方差、标准误差、Wald 检验统计量、显著性水平和逐点置信区间。与 {cmd:testnl} 和 {cmd:nlcom} 不同，{cmd:predictnl} 生成的量可以在数据的观察中变化。标准误差和其他与推断相关的量基于“delta 方法”，对大样本恰当。请查看帮助 {help predictnl_zh}。

{p 6 10 2}
5.  新的 {cmd:bootstrap} 命令替换旧的 {cmd:bstrap} 和 {cmd:bs} 命令。 {cmd:bootstrap} 具有改进的语法，允许分层抽样。请查看帮助 {help bootstrap_zh}。

{p 10 10 2}
    现有命令 {cmd:bsample} 现在也接受 {cmd:strata()} 选项，且新增的 {cmd:weight()} 选项允许用户保存样本频率，而不是更改存储中的数据。请查看帮助 {help bootstrap_zh}。

{p 6 10 2}
6.  现有命令 {cmd:bstat} 现在可以构建偏差修正和加速（BCa）置信区间。此外， {cmd:bstat} 现在是 e 类命令，意味着可以对自助结果使用所有后置估计命令。请查看帮助 {help bootstrap_zh}。

{p 6 10 2}
7.  现有命令 {cmd:jknife} 现在接受 {cmd:cluster()} 选项；请查看帮助 {help jknife}。

{p 6 10 2}
8.  新命令 {cmd:permute} 基于蒙特卡洛模拟为置换检验估计 p 值。这些估计可以是单边的或双边的；请查看帮助 {help permute_zh}。

{p 6 10 2}
9.  现有命令 {cmd:sample} 具有新选项 {cmd:count}，允许绘制指定数目的观察样本（而不是百分比）。此外， {cmd:sample} 现在允许 {bind:{cmd:by} {it:varlist}{cmd::}} 前缀作为现有 {cmd:by(}{it:varlist}{cmd:)} 选项的替代方案；两者效果相同。请查看帮助 {help sample_zh}。

{p 5 10 2}
10.  新命令 {cmd:simulate} 替换 {cmd:simul}，并为指定模拟提供了改进的语法；请查看帮助 {help simulate_zh}。

{p 5 10 2}
11.  现有命令 {cmd:statsby} 具有新语法、新选项，现允许时间序列操作；请查看帮助 {help statsby_zh}。

{p 5 10 2}
12.  新的 {cmd:estimates} 命令提供了一种新的一致方法来存储和引用估计结果。进行模型间比较的后估计命令，例如 {cmd:lrtest} 和 {cmd:hausman}，以前有自己的特定方法来存储和引用估计结果。现在，这些命令支持使用新的 {cmd:estimates} 系列方法检索估计结果。

{p 10 10 2}
     在新方案下，拟合模型后，您可以输入

{p 14 18 2}
	{cmd:. estimates store} {it:name}

{p 10 10 2}
     来保存结果。在会话的某个时刻，您可以输入

{p 14 18 2}
	{cmd:. estimates restore} {it:name}

{p 10 10 2}
     来恢复估计值。您可以通过输入

{p 14 18 2}
	{cmd:. estimates replay} {it:name}

{p 10 10 2}
     来重新显示估计（无需恢复它们）。提供了其他估计操作命令；请查看帮助 {help estimates_zh}。

{p 10 14 2}
     a.  现有命令 {help lrtest_zh} 已修改，语法为

{p 18 22 2}
	{cmd:lrtest} {it:name} {it:name}

{p 10 14 2}
     b.  现有命令 {help hausman_zh} 已修改，语法为

{p 18 22 2}
	{cmd:hausman} {it:name} {it:name}

{p 10 14 2}
     c.  新的 {cmd:estimates for} 命令可以在任何后估计命令之前使用，例如 {help test_zh} 或 {help predict_zh}，以在指定的估计结果集上执行操作，而不干扰当前的估计结果。使用 {cmd:estimates for}，您可以输入以下内容：

{p 18 22 2}
	{cmd:. estimates for} {it:earlierresults}{cmd:: predict expected}

{p 14 14 2}
     请查看帮助 {help estimates_zh}。

{p 10 14 2}
     d.  新的 {cmd:estimates stats} 命令显示 Akaike 信息标准（AIC）和 Schwarz 信息标准（BIC）模型选择指标。请查看帮助 {help estimates_zh}。

{p 5 10 2}
13.  现有命令 {cmd:lrtest} 现在支持由括号列表指定的复合模型。在复合模型中，假设完整模型的对数似然和维度是分子模型的对数似然和维度之和。

{p 10 10 2}
     {cmd:lrtest} 具有新选项 {cmd:stats}，用于显示限制模型和解限制模型的统计信息，包括 AIC 和 BIC 模型选择统计量。请查看帮助 {help lrtest_zh}。

{p 5 10 2}
14.  {cmd:test} 的语法已改进：

{p 10 14 2}
     a.  您现在可以输入

{p 18 22 2}
	    {cmd:. test} {it:a} {cmd:=} {it:b}

{p 14 14 2}
	 对于表达式 {it:a} 和 {it:b}，或者您可以输入

{p 18 22 2}
	    {cmd:. test} {it:a} {cmd:==} {it:b}

{p 14 14 2}
	 使用 {cmd:==} 更符合 Stata 的语法，表示比较，{cmd:=} 意味着赋值。

{p 10 14 2}
     b.  您现在可以在一行中指定多个检验：

{p 18 22 2}
	 {cmd:. test} {cmd:(}{it:a} {cmd:==} {it:b} {cmd:==} {it:c}{cmd:)}

{p 18 22 2}
	 {cmd:. test} {cmd:(}{it:a} {cmd:==} {it:b}{cmd:)}
			{cmd:(}{it:c} {cmd:==} {it:d}{cmd:)}

{p 10 14 2}
     c.  {cmd:test} 新增了选项 {cmd:coef}，指定显示被约束系数。

{p 10 14 2}
     d.  {cmd:test} 有两个新选项可与 {cmd:test} {cmd:[}{it:eq1}{cmd:==}{it:eq2}{cmd:]} 语法一起使用： {cmd:constant} 和 {cmd:common}。{cmd:constant} 指定 {cmd:_cons} 应该包含在需要检验的系数列表中。{cmd:common} 指定 {cmd:test} 限制自己只对 {it:eq1} 和 {it:eq2} 之间的系数进行检验。

{p 10 14 2}
     e.  {cmd:test} 现在可以在调查估计后使用。

{p 10 14 2}
     f.  {cmd:test} 具有新的程序员选项 {cmd:matvlc(}{it:matname}{cmd:)}, 可保存线性组合的方差-协方差矩阵。

{p 10 10 2}
     请查看帮助 {help test_zh}。

{p 5 10 2}
15.  {cmd:testnl} 现在允许输入
     {cmd:testnl} {it:exp}{cmd:==} {it:exp} {cmd:==} ... {cmd:==} {it:exp}
     来检验两个或多个表达式是否相等。可以使用单个等号：
     {cmd:testnl} {it:exp}{cmd:=} {it:exp} {cmd:=} ... {cmd:=} {it:exp}。

{p 10 10 2}
     此外， {cmd:testnl} 具有新选项 {cmd:iterate(}{it:#}{cmd:)}，指定用于查找优化步骤大小的最大迭代次数。请查看帮助 {help testnl_zh}。

{p 5 10 2}
16.  {cmd:testparm} 具有新选项 {cmd:equation()}，可在拟合多方程模型（如 {help mvreg_zh}、{help mlogit_zh}、{help heckman_zh} 等）之后使用。它指定要检验所有零或全等假设的方程。请查看帮助 {help test_zh}。

{p 5 10 2}
17.  {cmd:lincom} 现在在 {help anova_zh} 和所有调查估计器之后有效；请查看帮助 {help lincom_zh}。

{p 5 10 2}
18.  {cmd:bitest}、{cmd:prtest}、{cmd:ttest} 和 {cmd:sdtest} 现在允许在其语法中使用 {cmd:==}，而不再只是允许 {cmd:=}；请查看帮助 {help bitest_zh}、{help prtest_zh}、{help ttest_zh} 和 {help sdtest_zh}。

{p 5 10 2}
19.  新命令 {cmd:suest} 是一个后估计命令，它将多个估计结果（参数向量及其方差-协方差矩阵）合并为一次性结果，生成一个堆叠的参数向量和一个稳健（三明治）方差-协方差矩阵。要合并的估计结果可以基于不同的、重叠的，甚至相同的数据。在创建了同时的估计结果后，可以使用 {help test_zh} 或 {help testnl_zh} 进行 Hausman 类型的跨模型假设检验。 {cmd:suest} 支持调查数据。请查看帮助 {help suest_zh}。

{p 5 10 2}
20.  新命令 {cmd:imtest} 对回归模型进行信息矩阵检验。此外，它提供 Cameron-Trevedi 对信息矩阵检验在检测异方差性、偏态和峰态的分解，以及 White 原始的异方差性检验。请查看帮助 {help imtest}。

{p 5 10 2}
21.  新命令 {cmd:szroeter} 对回归模型进行 Szroeter 异方差性检验；请查看帮助 {help szroeter}。

{p 5 10 2}
22.  现有命令 {cmd:hettest} 现在提供选项 {cmd:rhs}，用于检验独立变量的异方差性。它现在还支持多重比较检验。请查看帮助 {help hettest}。

{p 5 10 2}
23.  现有命令 {cmd:tabulate} 有输出更改、新功能和扩展限制。

{p 10 14 2}
     a.  对于双重列联表，提供三种新统计量： {cmd:expected}、 {cmd:cchi2} 和 {cmd:clrchi2}。 {cmd:expected} 报告每个单元格的期望值。 {cmd:cchi2} 报告对 Pearson 卡方的贡献。 {cmd:clrchi2} 报告对似然比卡方的贡献。

{p 10 14 2}
     b.  新选项 {cmd:key} 和 {cmd:nokey} 强制或抑制解释表中条目的键。

{p 10 14 2}
     c.  双重列联表现在遵循 {cmd:set linesize}，意味着您可以生成宽表格。

{p 10 14 2}
     d.  单列和双列联表现在在报告的频率计数中添加逗号。

{p 10 14 2}
     e.  对于单列联表， {cmd:tabulate} 具有新选项 {cmd:sort}，将表格按频率降序排列。

{p 10 14 2}
     f.  {cmd:tabulate} 的限制已扩展：

		  {c TLC}{hline 19}{c TT}{hline 8}{c TT}{hline 13}{c TRC}
		  {c |} 类型            {c |}  单列 {c |}    双列    {c |}
		  {c LT}{hline 19}{c +}{hline 8}{c +}{hline 13}{c RT}
		  {c |} {help SpecialEdition:Stata/SE}          {c |} 12,000 {c |} 12,000 x 80 {c |}
		  {c |} Intercooled Stata {c |}  3,000 {c |}    300 x 20 {c |}
		  {c |} 小型 Stata       {c |}    500 {c |}    160 x 20 {c |}
		  {c BLC}{hline 19}{c BT}{hline 8}{c BT}{hline 13}{c BRC}

{p 10 10 2}
     请查看帮助 {help tabulate_zh}。

{p 5 10 2}
24.  现有命令 {cmd:tabstat} 具有新选项 {cmd:statistics(variance)} 和 {cmd:statistics(semean)}，显示方差和均值的标准误；（新选项 {cmd:varwidth(}{it:#}{cmd:)} 指定用于显示变量名称的字符数。）请查看帮助 {help tabstat_zh}。

{p 5 10 2}
25.  现有命令 {cmd:roctab} 具有新选项 {cmd:specificity}，用于绘制敏感性与特异性的关系，而不是默认的敏感性与（1-特异性）；请查看帮助 {help roctab_zh}。

{p 5 10 2}
26.  现有命令 {cmd:ologit} 现在具有选项 {cmd:or}，以显示结果为优势比（显示指数化的系数）；请查看帮助 {help ologit_zh}。

{p 5 10 2}
27.  新命令 {cmd:lowess} 替换旧命令 {cmd:ksm}。 {cmd:lowess} 允许 {cmd:graph} {cmd:twoway} 的 {cmd:by()} 选项，并且比 {cmd:ksm} 更快；请查看帮助 {help lowess_zh}。

{p 5 10 2}
28.  现有命令 {cmd:kdensity} 已重新编写，执行速度更快；请查看帮助 {help kdensity_zh}。

{p 5 10 2}
29.  现有命令 {cmd:intreg} 现在以与所有其他估计命令相同的方式应用约束，现有命令 {cmd:mlogit} 现在允许与常数一起施加约束；请查看帮助 {help intreg_zh} 和 {help mlogit_zh}。

{p 5 10 2}
30.  新命令 {cmd:pca} 执行主成分分析，替代 {cmd:factor,} {cmd:pc}; 请查看帮助 {help pca_zh}。

{p 5 10 2}
31.  现有命令 {cmd:ml} {cmd:maximize} 和所有使用 {cmd:ml} 的估计器具有新的容忍度选项 {cmd:nrtolerance(}{it:#}{cmd:)}，用于确定收敛。收敛通过满足 {bf:g}*inv({bf:H})*{bf:g}' < {cmd:nrtolerance(}{it:#}{cmd:)} 来声明，其中 {bf:g} 表示梯度向量，{bf:H} 表示海森矩阵；请查看帮助 {help maximize_zh}。

{p 5 10 2}
32.  现有命令 {cmd:mfx} 现在将在计算使用了 {cmd:pweight}s 或 {cmd:iweight}s 的估计命令后，计算均值或中位数时也使用 {cmd:pweight}s 或 {cmd:iweight}s。此前，仅支持 {cmd:fweight}s 和 {cmd:aweight}s。请查看帮助 {help mfx_zh}。

{p 5 10 2}
33.  现有命令 {cmd:adjust} 现在允许 {cmd:pr} 选项，在 {help svylogit}、{help svyprobit}、{help xtlogit_zh} 和 {help xtprobit_zh} 后显示预测概率。请查看帮助 {help adjust_zh}。

{p 5 10 2}
34.  现有回归诊断命令 {help acprplot}、{help cprplot}、{help hettest}、{help lvr2plot}、{help ovtest_zh}、{help rvfplot} 和 {help rvpplot} 的扩展现已适用于 {help anova_zh}。此外， {help cprplot} 和 {help acprplot} 新增选项 {cmd:lowess} 和 {cmd:mspline}，允许将低点平滑曲线或中位数样条曲线绘制到数据上。请查看帮助 {help regdiag}。

{p 5 10 2}
35.  现有命令 {cmd:ranksum} 具有新选项 {cmd:porder}，估计 P(x_1>x_2)；请查看帮助 {help signrank_zh}。

{p 5 10 2}
36.  现有命令 {cmd:poisgof} 具有新选项 {cmd:pearson}，以请求 Pearson 卡方拟合优度统计量；请查看帮助 {help poisson_zh}。

{p 5 10 2}
37.  现有命令 {cmd:binreg} 现在尊重 {cmd:init()} 选项；请查看帮助 {help binreg_zh}。

{p 5 10 2}
38.  现有命令 {cmd:boxcox} 现在接受 {cmd:iweight}s；请查看帮助 {help boxcox_zh}。

{p 5 10 2}
39.  现有命令 {cmd:zip} 和 {cmd:zinb} 现在接受 {it:maximize_option} {cmd:from()}，以提供起始值；请查看帮助 {help zip_zh}。

{p 5 10 2}
40.  现有命令 {cmd:cnsreg} 现在接受 {cmd:noconstant} 选项；请查看帮助 {help cnsreg_zh}。

{p 5 10 2}
41.  现有命令 {cmd:hotel} 已重命名为 {cmd:hotelling}； {cmd:hotel} 现在是 {cmd:hotelling} 的缩写；请查看帮助 {help hotelling}。

{p 5 10 2}
42.  {cmd:score()} 选项现在在所有估计命令中统一。您必须指定正确的得分变量数，在多方程估计量中，您可以指定 {it:stub}{cmd:*}，表示创建新变量，命名为 {it:stub}{cmd:1}、{it:stub}{cmd:2} 等。

{p 10 10 2}
     估计命令现在会在 {cmd:e(scorevars)} 中保存得分变量的名称（如果已指定 {cmd:score()}）。

{p 5 10 2}
43.  现有命令 {cmd:summarize} 在不使用 {cmd:detail} 选项时，现在允许使用 {cmd:iweight}s；请查看帮助 {help summarize_zh}。

{p 5 10 2}
44.  现有命令 {cmd:ci} 和 {cmd:summarize} 具有新选项 {cmd:separator(}{it:#}{cmd:)}，指定应将分隔线插入到输出中的频率；请查看帮助 {help ci_zh} 和 {help summarize_zh}。

{p 5 10 2}
45.  现有命令 {cmd:impute} 具有三个新选项： {cmd:regsample}、{cmd:all} 和 {cmd:copyrest}，控制用于形成插补的样本以及如何处理样本外值；请查看帮助 {help impute_zh}。

{p 5 10 2}
46.  现有命令 {cmd:collapse} 现在允许使用时间序列操作；请查看帮助 {help collapse_zh}。

{title:数据管理的新功能}

{p 6 10 2}
1.  新命令 {cmd:odbc} 允许 Windows 版 Stata 作为 ODBC 客户端运行，这意味着您可以直接从 ODBC 源提取数据；请查看帮助 {help odbc_zh}。

{p 6 10 2}
2.  现有命令 {cmd:generate} 具有新的、更便捷的语法。现在您可以输入

{p 14 18 2}
	{cmd:. generate a = 2 + 3}

{p 10 10 2}
    或

{p 14 18 2}
	{cmd:. generate b = "this" + "that"}

{p 10 10 2}
    无需指定新变量 {cmd:b} 是数值型还是字符串或特定长度的字符串。如果您愿意，还可以输入

{p 14 18 2}
	{cmd:. generate str b = "this" + "that"}

{p 10 10 2}
    这表明 {cmd:b} 是字符串，但让 {cmd:generate} 确定字符串的长度。这在编程场合中很有用，因为它有助于防止错误。当然，您还可以继续输入

{p 14 18 2}
	{cmd:. generate double a = _pi/2}

{p 10 10 2}
    以及

{p 14 18 2}
	{cmd:. generate str8 b = "this" + "that"}

{p 10 10 2}
    请查看帮助 {help generate_zh}。

{p 6 10 2}
3.  现有命令 {cmd:list} 已彻底重做。输出不仅更加可读，甚至还更美观，程序员将更愿意使用 {cmd:list} 格式化表格。请查看帮助 {help list_zh}。

{p 6 10 2}
4.  现有命令 {cmd:merge} 已得到改进：

{p 10 14 2}
    a.  新选项 {cmd:unique}、{cmd:uniqmaster} 和 {cmd:uniqusing} 确保合并按您想要的方式进行。这些选项旨在声明，如果不成立，则导致 {cmd:merge} 停止。 {cmd:unique} 指定匹配变量内不能存在重复观察，同时如果您输入 "{cmd:merge} {it:id} {cmd:using} {it:myfile}"，则主数据（内存中的数据）中的每个 {it:id} 值应有一个观察，以及使用数据中的每个 {it:id} 应有一个观察。如果观察值不唯一， {cmd:merge} 将报告错误。

{p 14 14 2}
	选项 {cmd:uniqmaster} 和 {cmd:uniqusing} 对合并的一方或另一方提出相同的要求； {cmd:uniq} 等效于同时指定 {cmd:uniqmaster} 和 {cmd:uniqusing}。

{p 10 14 2}
    b.  {cmd:merge} 不再限制匹配（键）变量的数量。

{p 10 14 2}
    c.  {cmd:merge} 新选项 {cmd:keep(}{it:varlist}{cmd:)} 指定保留来自使用数据的变量。

{p 10 10 2}
    请查看帮助 {help merge_zh}。

{p 6 10 2}
5.  现有命令 {cmd:append} 具有新选项 {cmd:keep(}{it:varlist}{cmd:)}，指定要保留的来自使用数据的变量；请查看帮助 {help append_zh}。

{p 6 10 2}
6.  新命令 {cmd:tsappend} 在时间序列上下文中追加观察。 {cmd:tsappend} 使用 {help tsset_zh} 所设置的信息，自动填写时间变量，并根据设置填写面板变量。请查看帮助 {help tsappend_zh}。

{p 6 10 2}
7.  现有命令 {cmd:describe using} 现在允许您指定 {it:varlist}，因此您可以在合并或追加之前检查变量在数据集中是否存在。程序员将对新选项 {cmd:varlist} 感兴趣，使用该选项会将数据集内变量的名称保留在 {cmd:r()} 中。请查看帮助 {help describe_zh}。

{p 6 10 2}
8.  新命令 {cmd:isid} 验证一个变量或一组变量是否唯一标识观察，因此适合用于 {cmd:merge}；请查看帮助 {help isid_zh}。

{p 6 10 2}
9.  现有命令 {cmd:codebook} 具有新选项 {cmd:problems}，报告数据中的潜在问题；请查看帮助 {help codebook_zh}。

{p 5 10 2}
10.  新命令 {cmd:labelbook} 类似于 {cmd:codebook}，但是针对值标签。除了提供文档，输出中还包括潜在问题的列表。

{p 10 10 2}
     新命令 {cmd:numlabel} 在值标签前加上数字值并将其移除。例如，映射 2 --> "Catholic" 变为 "2. Catholic" 和反之。

{p 10 10 2}
     请查看帮助 {help labelbook_zh} 和 {help numlabel}。

{p 5 10 2}
11.  新命令 {cmd:duplicates} 报告、给出示例、列出、浏览、标记和/或删除重复观察；请查看帮助 {help duplicates_zh}。

{p 5 10 2}
12.  现有命令 {cmd:recode} 具有三个新功能：

{p 10 14 2}
     a.  {cmd:recode} 现在允许使用 {it:varlist} 而不只是 {it:varname}，以便可以同时对多个变量进行重新编码。

{p 10 14 2}
     b.  {cmd:recode} 具有新选项 {cmd:generate()}，指定转换后的变量存储在不同于原始变量的名称下。

{p 10 14 2}
     c.  {cmd:recode} 具有新选项 {cmd:prefix()}，是 {cmd:generate} 的一种替代方案，指定转换后的变量将获得其原始名称，但带有前缀。

{p 10 10 2}
     请查看帮助 {help recode_zh}。

{p 5 10 2}
13.  现有命令 {cmd:sort} 具有新选项 {cmd:stable}，说在排序键的相等值内，观察应以原来的顺序出现。请查看帮助 {help sort_zh}。

{p 5 10 2}
14.  新命令 {cmd:webuse} 加载指定数据集，通过网络获取。默认情况下，数据集从 {browse "http://www.stata-press.com/data/r8/"} 获取，但您可以重置该地址。请查看帮助 {help webuse_zh}。

{p 10 10 2}
     新命令 {cmd:sysuse} 加载随 Stata 一起提供的数据集，以及任何其他沿 ado-path 存储的数据集；请查看帮助 {help sysuse_zh}。

{p 5 10 2}
15.  现有命令 {cmd:insheet} 具有新选项 {cmd:delimiter(}{it:char}{cmd:)}，允许您指定一个任意字符作为值分隔符；请查看帮助 {help insheet_zh}。

{p 5 10 2}
16.  现有命令 {cmd:infile} 和 {cmd:infix} 不再将 {cmd:^Z} 视为文件结束；请查看帮助 {help infile1_zh}、{help infile2_zh} 和 {help infix_zh}。

{p 5 10 2}
17.  现有命令 {cmd:save} 具有以下功能：

{p 10 14 2}
     a.  新选项 {cmd:orphans} 指定所有值标签，包括未附加到任何变量的标签，应保存在文件中。

{p 10 14 2}
     b.  新选项 {cmd:emptyok} 指定即使数据集不包含变量和观察，也应保存数据集。

{p 10 14 2}
     c.  现有选项 {cmd:old} 被移除。要以 Stata 7 格式保存数据集，请使用新的 {cmd:saveold} 命令；请查看帮助 {help saveold}。

{p 10 10 2}
     请查看帮助 {help save_zh}。顺便提一下，Stata 8 现在具有单一的 {cmd:.dta} 数据集格式，供 {help SpecialEdition:Stata/SE} 和 Intercooled Stata 使用，这意味着与同事共享数据变得简单。

{p 5 10 2}
18.  现有命令 {cmd:outfile} 有新功能：

{p 10 14 2}
     a.  新选项 {cmd:rjs} 和 {cmd:fjs} 指定字符串在输出文件中的对齐方式。默认情况下为左对齐。{cmd:rjs} 指定右对齐。{cmd:fjs} 指定按变量格式设定的对齐。

{p 10 14 2}
     b.  新选项 {cmd:runtogether} 供程序员使用；它指定将所有字符串变量一起处理，没有额外空间或引号。

{p 10 10 2}
    请查看帮助 {help outfile_zh}。

{p 5 10 2}
19.  您可以将值标签附加到新的扩展缺失值 ({cmd:.a}、{cmd:.b}、...、{cmd:.z})；请查看帮助 {help label_zh}。

{p 5 10 2}
20.  由于引入了 26 个新的缺失值代码， {cmd:byte}、{cmd:int} 和 {cmd:long} 能够存储的最大值分别降低到 100、32,740 和 2,147,483,620；请查看帮助 {help datatypes}。

{p 5 10 2}
21.  新命令 {cmd:split} 将字符串变量的内容拆分为一个或多个部分，对于将单词分隔到多个变量中非常有用；请查看帮助 {help split_zh}。

{p 5 10 2}
22.  改进事项包括：

{p 10 14 2}
     a.  现有命令 {cmd:egen} 现在允许在 {cmd:values()} 选项中使用更长的 {it:numlists}，用于 {cmd:eqany()} 和 {cmd:neqany()} 函数；请查看帮助 {help egen_zh}。

{p 10 14 2}
     b.  现有命令 {cmd:destring} 现在允许在 {cmd:generate()} 选项中使用缩写 {it:newvarlist}；请查看帮助 {help destring_zh}。

{p 10 14 2}
     c.  现有命令 {cmd:icd9} 和 {cmd:icd9p} 已更新为使用 V18 和 V19 代码；V16、V18 和 V19 代码已合并，使得 {cmd:icd9} 和 {cmd:icd9p} 在处理旧数据集和新数据集时都能正常运作；请查看帮助 {help icd9_zh}。

{p 10 14 2}
     d.  现有命令 {cmd:egen} {cmd:mtr()} 已更新，包含 2000 和 2001 年的边际税率；请查看帮助 {help egen_zh}。

{p 10 14 2}
     e.  现有命令 {cmd:mvdecode} 的 {cmd:mv()} 选项现在允许 {it:numlist}；请查看帮助 {help mvencode_zh}。

{p 10 14 2}
     f.  现有命令 {cmd:mvencode} 具有更灵活的新语法，以适应扩展缺失值；请查看帮助 {help mvencode_zh}。

{p 10 14 2}
     g.  现有命令 {cmd:xpose} 现在有三个新选项： {cmd:format}、{cmd:format(%}{it:fmt}{cmd:)} 和 {cmd:promote}。 {cmd:format} 选项查找转置数据中最大数值显示格式，并将其应用于转置数据中。 {cmd:format(%}{it:fmt}{cmd:)} 选项将转置数据设置为指定的格式。 {cmd:promote} 选项使转置的数据具有保留原始数据精度的最紧凑数值数据类型。请查看帮助 {help xpose_zh}。

{p 10 14 2}
     h.  现有命令 {cmd:notes} 现在允许单个注释中包含 SMCL 指令；请查看帮助 {help notes_zh}。

{p 10 14 2}
     i.  现有命令 {cmd:mkmat} 具有新选项 {cmd:nomissing}，使得具有缺失值的观察被排除（因为矩阵现在可以包含缺失值）。 {cmd:mkmat} 也变得更快。请查看帮助 {help mkmat_zh}。

{p 10 14 2}
     j.  现有命令 {cmd:ds} 具有三个新选项： {cmd:alpha}、{cmd:varwidth(}{it:#}{cmd:)} 和 {cmd:skip(}{it:#}{cmd:)}。 {cmd:alpha} 将变量按字母顺序排列。 {cmd:varwidth(}{it:#}{cmd:)} 指定变量名称的显示宽度。 {cmd:skip(}{it:#}{cmd:)} 指定变量之间的空格数。请查看帮助 {help describe_zh}。

{p 10 14 2}
     k.  现有命令 {cmd:label dir} 现在会在 {cmd:r(names)} 中返回已定义的值标签的名称，而 {cmd:label list} 现在会在 {cmd:r(min)} 和 {cmd:r(max)} 中返回映射值的最小值和最大值；请查看帮助 {help label_zh}。

{title:表达式和函数的新功能}

{p 6 10 2}
1.  首先，警告：请勿输入

{p 14 18 2}
	{cmd:. generate} {it:newvar} {cmd:=} ... {cmd:if} {it:oldvar} {cmd:!= .}

{p 14 18 2}
	{cmd:. replace} {it:oldvar

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <whatsnew7to8.sthlp>}