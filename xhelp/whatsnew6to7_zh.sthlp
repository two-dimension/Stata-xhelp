{smcl}
{* *! version 1.3.0  13sep2017}{...}
{vieweralsosee "whatsnew" "help whatsnew_zh"}
{help whatsnew6to7:English Version}
{hline}{...}
{title:发布7（与发布6相比）有什么新变化}

{pstd}
本帮助文件列出了与Stata版本7创建相关的更改：

    {c TLC}{hline 63}{c TRC}
    {c |} 帮助文件      内容                       年份           {c |}
    {c LT}{hline 63}{c RT}
    {c |} {help whatsnew_zh}         Stata 16.0                   2019至今 {c |}
    {c |} {help whatsnew15to16_zh}   Stata 16.0新版本             2019      {c |}
    {c |} {help whatsnew15_zh}       Stata 15.0和15.1              2017至2019 {c |}
    {c |} {help whatsnew14to15_zh}   Stata 15.0新版本             2017      {c |}
    {c |} {help whatsnew14_zh}       Stata 14.0，14.1和14.2      2015至2017 {c |}
    {c |} {help whatsnew13to14_zh}   Stata 14.0新版本             2015      {c |}
    {c |} {help whatsnew13_zh}       Stata 13.0和13.1              2013至2015 {c |}
    {c |} {help whatsnew12to13_zh}   Stata 13.0新版本             2013      {c |}
    {c |} {help whatsnew12_zh}       Stata 12.0和12.1              2011至2013 {c |}
    {c |} {help whatsnew11to12_zh}   Stata 12.0新版本             2011      {c |}
    {c |} {help whatsnew11_zh}       Stata 11.0，11.1和11.2      2009至2011 {c |}
    {c |} {help whatsnew10to11_zh}   Stata 11.0新版本             2009      {c |}
    {c |} {help whatsnew10_zh}       Stata 10.0和10.1              2007至2009 {c |}
    {c |} {help whatsnew9to10_zh}    Stata 10.0新版本             2007      {c |}
    {c |} {help whatsnew9_zh}        Stata  9.0，9.1和9.2         2005至2007 {c |}
    {c |} {help whatsnew8to9_zh}     Stata  9.0新版本             2005      {c |}
    {c |} {help whatsnew8_zh}        Stata  8.0，8.1和8.2         2003至2005 {c |}
    {c |} {help whatsnew7to8_zh}     Stata  8.0新版本             2003      {c |}
    {c |} {help whatsnew7_zh}        Stata  7.0                   2001至2002 {c |}
    {c |} {bf:此文件}            Stata  7.0新版本             2000      {c |}
    {c |} {help whatsnew6_zh}        Stata  6.0                   1999至2000 {c |}
    {c BLC}{hline 63}{c BRC}

{pstd}
最近的更改列在最前面。

{hline 3} {hi:更多最近更新} {hline}

{pstd}
请参见 {help whatsnew7_zh}。

{hline 3} {hi:Stata 7发布于2000年12月15日} {hline}

{p 4 4}添加到 Stata 7 的功能分别列在以下标题下。

{p 8 12}您不能忽视的变化{p_end}
{p 16 20}长（32字符）名称{p_end}
{p 16 20}新的 varlist 缩写规则{p_end}
{p 16 20}现在所有平台都有窗口化 Stata{p_end}
{p 16 20}改进的输出，更加可点击{p_end}
{p 16 20}对 by 的改进{p_end}
{p 16 20}排序稳定性{p_end}
{p 16 20}欧洲小数格式{p_end}
{p 16 20}更快{p_end}

{p 8 12}统计{p_end}
{p 16 20}估计命令（不包括 st 和 xt）{p_end}
{p 16 20}横截面时间序列分析（xt）{p_end}
{p 16 20}生存分析（st）{p_end}
{p 16 20}流行病学家的命令{p_end}
{p 16 20}边际效应{p_end}
{p 16 20}聚类分析{p_end}
{p 16 20}药代动力学{p_end}
{p 16 20}其他统计命令{p_end}
{p 16 20}分布函数{p_end}

{p 8 12}非统计改进{p_end}
{p 16 20}图形{p_end}
{p 16 20}新命令{p_end}
{p 16 20}新字符串函数{p_end}
{p 16 20}其他新函数{p_end}


{hline}

{title:您不能忽视的变化}

    {title:长（32字符）名称}

{p 4 4}
Stata现在允许名称最长为32个字符。这包括变量名、标签名、宏名以及您能想到的任何名称。 这包括程序名称，并且我们已重命名一些现有的Stata程序：

{center:以前的名称    新名称  }
{center:{hline 24}}
{center:{cmd:llogist}       {help llogistic} }
{center:{cmd:xthaus}        {help xthausman_zh} }
{center:{cmd:spikeplt}      {help spikeplot_zh} }
{center:{cmd:stcurv}        {help stcurve_zh}   }
{center:{cmd:svyintrg}      {help svyintreg} }
{center:{cmd:svyprobt}      {help svyprobit} }
{center:{cmd:svymlog}       {help svymlogit} }
{center:{cmd:svyolog}       {help svyologit} }
{center:{cmd:svyoprob}      {help svyoprobit}}

{p 4 4}
旧名称仍然可以使用。

{p 4 4}
无论如何，现在您不必将变量命名为 {hi:f_inc1999}，可以将其命名为 {hi:farm_inc_1999} 或 {hi:farm_income_1999} 甚至 {hi:farm_income_in_fiscal_year_1999}。 在可能的情况下，我们已调整Stata输出以允许12个空格用于显示名称。当名称超过这个长度时，您会发现Stata会缩写并显示，例如 {hi:farm_in~1999}。 {hi:~}是新的Stata缩写字符，Stata不仅在输出中使用它，您还可以在输入中（即在变量列表中使用它；详见帮助 {help varlist_zh}）。 如果您输入 {hi:farm_in~1999}，{hi:f~1999}，或 {hi:f~in~1999}，Stata会理解您是指 {hi:farm_income_in_fiscal_year_1999}。 因此，如果在输出中Stata呈现 {hi:dose~d1~42}，该名称是唯一的，您可以输入它，Stata会理解。

{p 4 4}
{help describe_zh} 现在有两个新选项 {cmd:fullname} 和 {cmd:numbers}。 {cmd:fullname} 显示完整的32个字符名称，而不是较短的{hi:~}缩写，{cmd:numbers} 显示变量编号。


    {title:新的 varlist 缩写规则}

{p 4 4}
变量列表现在当用作其他位置而不是后缀时会理解 {cmd:*}。您仍然可以输入 {hi:pop*}，但您也可以输入 {hi:pop*99} 或 {hi:pop*30_40*1999} 或甚至 {hi:*1999}。 {cmd:*}意味着“这里可以有零个或多个字符”。 同样理解的新字符是上面提到的 {cmd:~} 缩写字符。 {cmd:*} 和 {cmd:~} 的实际含义相同并且工作方式相同，但 {cmd:~} 添加了“只有一个变量与此模式相匹配”的声明，而 {cmd:*} 意味着“给我所有与此模式匹配的变量”。

{p 4 4}
另一个新的缩写字符是 {cmd:?}，表示“这里有一个字符”，所以 {hi:result?10} 可以匹配 {hi:resultb10} 和 {hi:resultc10}，但无法匹配 {hi:resultb110}。


    {title:窗口化 Stata 现在在所有平台上可用}

{p 4 4}
Unix 用户的 Stata 现在具有与 Windows 和 Mac 用户相同的窗口化界面：键入 {cmd:xstata} 而不是 {cmd:stata} 来启动 Stata。 输入 {cmd:stata} 会调出旧的逐行控制台版本的 Stata。 输入 {cmd:xstata} 会调出新的窗口版本。 旧的控制台版本在批处理情况下仍然很有用，但现在称为 Stata(console) 的版本无法呈现图形。


    {title:改进的输出，更加可点击}

{p 4 4}
由于新的输出语言 SMCL（Stata 标记和控制语言），Stata 的输出看起来更好。此外，所有 Stata 输出，无论是在帮助窗口（现在称为查看器）中的帮助文件，结果窗口中的帮助文件，还是统计输出，都是 SMCL，这意味着所有功能在所有上下文中均可用。 其中一个含义是，如果某件事情是可点击的，无论它显示在哪个窗口中，它都是可点击的，因此您可以首先键入 {cmd:help} {cmd:anova}，并像从下拉菜单 {hi:Help} 中拉出帮助并在帮助窗口（查看器）中显示帮助一样单击链接。

{p 4 4}
可点击性不仅限于帮助文件。您可以编写显示可点击链接的输出的程序。 相应的操作甚至可以是执行另一个 Stata 命令或程序！

{p 4 4}
帮助窗口现在称为查看器，因为它的功能不仅仅是显示帮助文件。 例如，查看器是您查看之前创建或正在创建的日志的地方。 这是因为，默认情况下，Stata 日志现在是 SMCL 文件，日志文件的默认文件扩展名是 {hi:.smcl}，以提醒您。 当您键入 `{cmd:log using myfile}' 时，{hi:myfile.smcl} 被创建。 该文件是 ASCII 的，因此您可以在编辑器或文字处理器中查看（甚至编辑），但看起来并不漂亮。

{p 4 4}
但是，格式化后，它就漂亮了。 查看器可以打印 Stata 现在生成的 SMCL 日志，新的 {cmd:translate} 命令可以将 SMCL 文件转换为 PostScript 格式，甚至标准的 ASCII 文本格式，因此您可以回到 Stata 6 的状态；请参见帮助 {help translate_zh}。 此外，如果您希望，可以直接创建旧格式的 ASCII 文本日志；只需键入 `{cmd:log using myfile.log}' 或 `{cmd:log using myfile, text}'；请参见帮助 {help log_zh}。

{p 4 4}
可以通过下拉 {hi:File} 来访问查看器，或者您可以使用新的 {cmd:view} 命令，该命令提供了一些附加功能；请参见帮助 {help view_zh}。

{p 4 4}
程序员希望查看帮助 {help smcl_zh} 以获取有关 SMCL 的完整描述。 您可以在您的 ado 文件中使用 SMCL。

{p 4 4}
还有一个日志的变化：您现在可以使用新的 {cmd:cmdlog} 命令创建命令日志（仅包含您键入的内容的 ASCII 文本日志，以前称为 {cmd:noproc} 日志）。 更好的是，您可以同时创建命令日志和完整会话日志；请参见帮助 {help log_zh}。

{p 4 4}
Unix 用户的 Stata（控制台）：上述所有内容同样适用，但您无法点击。 Stata（控制台）没有 {cmd:view} 命令，但 {cmd:type} 可以显示 {hi:.smcl} 文件，{cmd:translate} 可以转换它们。 请参见帮助 {help conren_zh} 以获取有关如何使 SMCL 输出在逐行控制台上看起来尽可能不错的说明。


    {title:对 by 的改进}

{p 4 4}
{cmd:by} {it:varlist}{cmd::} 现在有一个 {cmd:sort} 选项。 您可以键入，例如，`{cmd:by foreign, sort: summarize mpg}' 或等效地，`{cmd:bysort foreign: summarize mpg}'，而不必先对数据进行排序，然后再键入 {cmd:by} 命令；请参见帮助 {help by_zh}。

{p 4 4}
{cmd:by} 有一个新的括号符号：`{cmd:by} {it:id} {cmd:(}{it:time}{cmd:):} {it:...}` 意味着按 {it:id} 执行 {it:...}，但首先验证数据是否按 {it:id} 和 {it:time} 排序。 `给出`{cmd:by} {it:id} {cmd:(}{it:time}{cmd:), sort:} {it:...}`，表示将数据按 {it:id} 和 {it:time} 排序，然后按 {it:id} 执行 {it:...}。

{p 4 4}
还有一个新的 {cmd:rc0} 选项，表示即使一个 by 组导致错误，也要继续进行。

{p 4 4}
更重要的是，{cmd:by} {it:varlist}{cmd::} 现在几乎在每个 Stata 命令中都可以使用，包括作为 ado 文件实现的命令，包括 {cmd:egen}。 我们已经声称了一段时间，不论一个命令是内置的还是作为 ado 文件实现的都是无关紧要的，它具有相同的功能。 现在这一说法成为了现实。 程序员：请参见帮助 {help byprog_zh} 以获取如何让您的程序和 ado 文件允许 {cmd:by} 前缀的说明；这很简单。

{p 4 4}
命令 {cmd:generate}、{cmd:replace}、{cmd:drop}、{cmd:keep} 和 {cmd:assert} 不再在以 {cmd:by} 为前缀时显示详细的分组报告，这意味着您无需再以 {cmd:quietly} 为前缀：

{p 8 12}{cmd:. by id:  replace bp = bp[_n-1] if bp==.}{p_end}
{p 8 12}{txt:(已做出120次更改)}


    {title:排序稳定性}

{p 4 4}
报告结果的计算命令（不打算更改数据的命令）不再更改数据的排序顺序。 如果您输入 `{cmd:sort} {it:id} {it:time}`，您可以确定数据集将按 {it:id} 和 {it:time} 排序。 即使该命令作为 ado 文件实现，这也是正确的。

{p 4 4}
程序员：请参见 {hi:[P] sortpreserve} 以获取有关如何使您以前的程序和 ado 文件保持排序稳定的说明。 这很简单，性能损失几乎无法测量。


    {title:欧洲小数格式}

{p 4 4}
Stata 现在理解输出格式，例如 {cmd:%9,2f} 以及 {cmd:%9.2f}。 在 {cmd:%9,2f} 中，数字 500.5 显示为 500,50。在 {cmd:%9,2fc} 格式中，数字 1,000.5 显示为 1.000,50。

{p 4 4}
更好的是，您现在可以使用 {cmd:set dp comma} 修改 Stata 的所有输出以使用欧洲格式，包括所有统计输出。 请参见帮助 {help format_zh}。


    {title:更快}

{p 4 4}
Stata 7 有更多功能，但继续我们长期的传统，它也更快；ado 文件的执行速度提高了 8.8% 至 11.8%。 我们观察到一些程序的执行速度提高了 13%。

{hline}

{title:统计}

    {title:估计命令（不包括 st 和 xt）}

{p 4 4}
首先，Stata 的所有最大似然估计命令现在允许线性约束；每个都有一个新的 {cmd:constraint()} 选项。 请参见特定的估计器。

{p 4 4}
{cmd:boxcox} 经过重写。 它现在产生系数和 Box--Cox 变换参数的最大似然估计。 Box--Cox 模型可以以各种形式进行估计，变换在左侧、右侧或两侧。 请参见帮助 {help boxcox_zh}。

{p 4 4}
{cmd:glm} 也经过重写。 它继续估计广义线性模型，但现在提供了扩展的链接函数选择，并且还允许用户指定链接和方差函数。 {cmd:glm} 现在将报告基于最大似然的标准误差估计、基于 IRLS 的估计以及许多其他种类。 请参见帮助 {help glm_zh}。

{p 4 4}
{cmd:nlogit} 估计嵌套的对数模型。 在嵌套的对数模型中，多个结果分组到嵌套树结构中，而嵌套的对数模型相较于多项和条件逻辑模型的优点是允许您参数化抛弃无关替代品独立性假设（IIA）。 请参见帮助 {help nlogit_zh}。

{p 4 4}
{cmd:treatreg} 使用两步估计器或完全最大似然估计器估计处理效果模型。 处理效果模型考虑内生选择的二元处理对另一个内生连续变量的影响，条件是两个独立变量集。 请参见帮助 {help treatreg_zh}。

{p 4 4}
{cmd:truncreg} 估计截断回归模型。 截断回归是指在基于因变量选取的样本上进行的回归，因此在这种情况下（有时）因变量或自变量都没有被观测到（与 {cmd:tobit} 相对，该命令在所有情况下都观测到了自变量）。 请参见帮助 {help truncreg_zh}。


    {title:横截面时间序列分析（xt）}

{p 4 4}
{cmd:xtabond} 生成 Arellano--Bond 单步、稳健的单步和两步估计量，用于动态面板数据模型，其中存在滞后因变量。 {cmd:xtabond} 可以用于外生不平衡面板，并且独特地处理时间序列中的嵌入缺口及其开启和关闭。 {cmd:xtabond} 允许预先确定的协变量。 {cmd:xtabond} 允许您使用完整的工具变量矩阵或简化版本。 {cmd:xtabond} 同时报告 Arellano 和 Bond 推导的 Sargan 和自相关测试。 请参见帮助 {help xtabond_zh}。

{p 4 4}
{cmd:xtregar} 估计横截面时间序列模型，其中假设 epsilon_it 遵循 AR(1) 过程。 {cmd:xtregar} 报告在组内估计量和 GLS 随机效应估计量。 {cmd:xtregar} 可以处理不等间隔的观察和外生不平衡面板。 {cmd:xtregar} 独特地报告 Bhargava 等修改的 Durbin--Watson 统计量和 Baltagi--Wu 局部最佳不变性自相关检验统计量。 请参见帮助 {help xtregar_zh}。

{p 4 4}
{cmd:xtivreg} 估计带有（广义）工具变量的横截面时间序列回归，换句话说，估计二阶段最小二乘时间序列横截面模型。 {cmd:xtivreg} 可以使用固定2SLS 估计量、在组内2SLS 估计量、第一差分2SLS 估计量、Balestra--Varadharajan--Krishnakumar G2SLS 估计量或 Baltagi EC2SLS 估计量来估计此类模型。 所有估计量允许使用平衡或（外生）不平衡面板。 请参见帮助 {help xtivreg_zh}。

{p 4 4}
{cmd:xtpcse} 生成线性横截面时间序列模型的面板校正标准误差（PCSE），其中参数由 OLS 或 Prais--Winsten 回归估计。 在计算标准误差和方差-协方差估计时，默认假设干扰项在面板之间是异方差和同时间相关的。 请参见帮助 {help xtpcse_zh}。


    {title:生存分析（st）}

{p 4 4}
{cmd:stcox} 现在将估计具有持续时间变化协变量的比例风险模型，您无需修改数据即可获得估计。 请参见帮助 {help stcox_zh} 中的 {cmd:tvc()} 和 {cmd:texp()} 选项。

{p 4 4}
{cmd:streg} 现在可以估计具有个体层次脆弱性（未观测的异质性）的参数生存模型。 允许两种脆弱性分布形式：伽马分布和反高斯分布。 脆弱性允许与当前可用的所有参数分布一起使用。 请参见帮助 {help streg_zh}。（新的命令 {cmd:weibullhet}、{cmd:ereghet} 等，允许用户估计这些模型以外的 st 系统；请参见帮助 {help weibull}。）

{p 4 4}
{cmd:streg} 还被修改为允许估计分层模型，这意味着分布参数（附加参数和截距）可以在不同层次之间不同。 请参见帮助 {help streg_zh} 中的 {cmd:strata()} 选项。

{p 4 4}
{cmd:streg} 还被修改为允许您为任何分布参数指定任何线性参数方程，这使您能够创建各种形式的分层，以及允许分布参数是其他协变量的线性函数。 请参见帮助 {help streg_zh} 中的 {cmd:ancillary()} 选项。

{p 4 4}
{cmd:stptime} 计算人时（人年）和发病率，并实施标准化死亡/发病比（SMR）的计算。 请参见帮助 {help stptime_zh}。

{p 4 4}
{cmd:sts test} 已修改为包括比较幸存者分布的额外测试，包括 Tarone--Ware 测试、Fleming--Harrington 测试和 Peto--Peto--Prentice 测试。 还有一个新的趋势测试。 请参见帮助 {help sts_zh}。

{p 4 4}
{cmd:stci} 计算并报告幸存函数的水平和置信区间，并计算和报告平均生存时间及其置信区间。 请参见帮助 {help stci_zh}。

{p 4 4}
{cmd:stsplit} 当前速度显著提高，并允许在失败时间上进行拆分，并提供一些额外的便利选项。 请参见帮助 {help stsplit_zh}，但请记住，{cmd:stcox} 现在可以在不提前进行 {cmd:stsplit} 的情况下估计具有持续时间变化协变量的模型。

{p 4 4}
{cmd:stcurve} 具有新的 {cmd:outfile} 选项。 请参见帮助 {help streg_zh}。


    {title:流行病学家的命令}

{p 4 4}
提供五个新命令用于分析接收器操作特征（ROC）曲线。

{p 4 4}
{cmd:roctab} 用于执行非参数ROC分析。 默认情况下，{cmd:roctab} 计算曲线下面积。 可选地，{cmd:roctab} 可以绘制ROC曲线、以表格形式显示数据并生成类似Lorenz的图。 请参见帮助 {help roctab_zh}。

{p 4 4}
{cmd:rocfit} 假设潜在变量的二项分布来估计最大似然ROC模型。 执行后可以使用 {cmd:rocplot} 绘制拟合的ROC曲线和同时置信带。 请参见帮助 {help rocfit_zh}。

{p 4 4}
{cmd:roccomp} 测试针对同一样本或独立样本应用两种或多种测试方式获得的两个或多个ROC区域的相等性。 请参见帮助 {help roccomp_zh}。

{p 4 4}
{cmd:rocgold} 独立测试多个测试方式的ROC区域与“金标准”ROC曲线的相等性。 对于每个比较，{cmd:rocgold} 报告原始和经过Bonferroni调整的显著性概率。 可选地，还可以获得Sidak的多重比较调整。 请参见帮助 {help rocgold}。

{p 4 4}
{cmd:binreg} 为二项族和各种链接估计广义线性模型。 它可以用于个体级数据或分组数据。 每个链接函数都提供对估计参数的不同流行病学解释。 请参见帮助 {help binreg_zh}。

{p 4 4}
{cmd:cc} 和 {cmd:cci} 默认情况下现在为比值比计算精确的置信区间。 请参见帮助 {help cc_zh}。

{p 4 4}
{cmd:icd9} 和 {cmd:icd9p} 在处理 ICD-9-CM 诊断和程序代码时提供帮助。这些命令允许清理、验证、标记和选择 ICD-9 值。 请参见帮助 {help icd9_zh}。


    {title:边际效应}

{p 4 4}
{cmd:mfx} 在任何模型的估计后报告边际效应。 边际效应是 df()/dx_i 在 x 下的值，其中 f() 是数据和模型估计参数的任意函数，x 为模型的协变量，而 x_i 是其中一个协变量。 例如，模型可能是 probit，而 f() 是累积正态分布，那么 df()/dx_i = 正向结果概率随协变量变化的变化。 x 可以指定为均值，以便在均值处评估变化。

{p 4 4}
{cmd:dprobit} 已经为 probit 模型做了这件事，STB中发布的其他命令会为其他特定模型执行类似操作，例如 {cmd:dtobit} 进行 tobit 估计。

{p 4 4}
{cmd:mfx} 在 Stata 中任何模型的估计后均可计算边际效应，并能够为任何 {cmd:predict} 能产生的内容生成边际效应。例如， {cmd:tobit} 后，您可以获取结果未削减的概率的边际效应，或者未削减结果的预期值，或者削减结果的预期值。

{p 4 4}
{cmd:mfx} 可以计算作为导数或弹性的结果。 请参见帮助 {help mfx_zh}


    {title:聚类分析}

{p 4 4}
{cmd:cluster} 使用多种方法进行分区和层次聚类分析。 提供两种分区聚类方法 - kmeans 和 kmedians - 提供三种层次聚类方法 - 单链接、平均链接和完全链接。 包括14种二元相似性度量和7种不同的连续度量（如 Minkowski 距离 {it:#} 计算为一种）。

{p 4 4}
结果是将各种特征添加到数据集中，包括反映集群成员的变量。 然后，{cmd:cluster} 可以以各种方式显示结果。

{p 4 4}
可以同时保存多个结果，以便比较不同分析的结果。 {cmd:cluster} 允许为分析添加注释，当然，也允许丢弃分析。 {cmd:cluster} 还提供聚类后命令，例如显示层次分析的树状图（聚类树）或根据分析生成新的分组变量。

{p 4 4}
{cmd:cluster} 已被设计为可扩展。 用户可以为新的聚类方法、新的聚类管理例程和新的聚类后摘要方法编写扩展程序。

{p 4 4}
请参见帮助 {help cluster_zh}，如果您有兴趣编程扩展，请参见帮助 {help clprog}。


    {title:药代动力学}

{p 4 4}
提供四个新估计命令和两个新实用程序，旨在分析药代动力学数据；请参见帮助 {help pk_zh}。

{p 4 4}
{cmd:pkexamine} 从时间和浓度的个体级数据计算药代动力学度量。 {cmd:pkexamine} 计算并显示最大测得浓度、最大测得浓度的时间、最后测量的时间、消除率、半衰期和浓度-时间曲线下的面积（AUC）。 请参见帮助 {help pkexamine_zh}。

{p 4 4}
{cmd:pksumm} 从每个药代动力学测量的经验分布中获得前四个矩，并检验测量是否服从正态分布的原假设。 请参见帮助 {help pksumm_zh}。

{p 4 4}
{cmd:pkcross} 分析交叉设计实验的数据。 在分析药物试验数据时，如果已知处理、携带和序列变量，则计算处理效果和携带效果的分离的整体检验。 请参见帮助 {help pkcross_zh}。

{p 4 4}
{cmd:pkequiv} 进行两种处理的生物等效性测试。 默认情况下，{cmd:pkequiv} 计算关于两种处理均值之间差异的对称标准置信区间。 可选地，{cmd:pkequiv} 计算关于零的对称置信区间和基于 Fieller 定理的区间。 此外，{cmd:pkequiv} 可以对生物等效性进行区间假设检验。 请参见帮助 {help pkequiv_zh}。

{p 4 4}
{cmd:pkshape} 和 {cmd:pkcollapse} 在将数据重塑为上述命令所需的形式上提供帮助；请参见帮助 {help pkshape_zh} 和 {help pkcollapse_zh}。


    {title:其他统计命令}

{p 4 4}
{cmd:jknife} 执行 Jackknife 估计，这是（1）对统计量的替代的、一阶无偏估计；（2）计算统计量标准误差并获得显著性水平和置信区间的依赖于数据的方法；（3）产生反映观察对总体统计量影响的测度的方法。 请参见帮助 {help jknife}。

{p 4 4}
{cmd:lfit}、{cmd:lroc}、{cmd:lsens} 和 {cmd:lstat} 现在在使用 {cmd:probit} 估计后就能运行，就像在使用 {cmd:logit} 或 {cmd:logistic} 后一样。

{p 4 4}
{cmd:drawnorm} 从具有指定均值和协方差矩阵的多元正态分布中绘制随机样本。 请参见帮助 {help drawnorm_zh}。

{p 4 4}
{cmd:corr2data} 创建具有指定均值和协方差矩阵（相关结构）的虚构数据集。 因此，您可以采用已发布的结果并复制和修改它们，如果估计量仅是数据前两个矩的函数，例如 {cmd:regress}、{cmd:ivreg}、{cmd:anova} 或 {cmd:factor}。 请参见帮助 {help corr2data_zh}。

{p 4 4}
{cmd:median} 执行非参数检验，以确定 K 个样本是否来自具有相同中位数的总体。 请参见帮助 {help median}。

{p 4 4}
{cmd:tabstat} 显示汇总统计表，可以按另一个变量进行分解（条件）。 请参见帮助 {help tabstat_zh}。

{p 4 4}
命令 {cmd:avplot} 现在在使用 {cmd:robust} 或 {cmd:cluster()} 选项进行估计后有效。 请参见帮助 {help avplot}。

{p 4 4}
{cmd:ml} 现在可以执行带有线性约束的估计。 所有需要做的就是在 {cmd:ml} {cmd:maximize} 命令中指定 {cmd:constraint()} 选项。 请参见帮助 {help ml_zh}。


    {title:分布函数}

{p 4 4}
Stata 的密度和分布函数已重命名。 首先，所有旧名称仍然有效，即使在手册中未记录，但至少在版本控制下。 但新的标准是，如果 {it:X} 是分布的名称，那么

{p 8 26}{it:X}{cmd:den()}{space 8}是它的密度{p_end}
{p 8 26}{it:X}{cmd:()}{space 11}是它的累积分布{p_end}
{p 8 26}{cmd:inv}{it:X}{cmd:()}{space 8}是它的逆累积{p_end}
{p 8 26}{it:X}{cmd:tail()}{space 7}是它的反向累积{p_end}
{p 8 26}{cmd:inv}{it:X}{cmd:tail()}{space 4}是它的逆反向
  累积{p_end}

{p 4 4}
并非所有函数都必然存在，如果它们不存在，那并不只是因为我们懒惰。 特别是，关于选择 {it:X}{cmd:()} 和 {it:X}{cmd:tail()} 之间的选择，确实存在我们准确实现的函数。 从理论上讲，您只需要一个，因为 {bind:{it:X}{cmd:tail()} = 1 - {it:X}{cmd:()}}, 但在实践中，减一会消除很多准确性。 如果一个人真想要一个准确的右尾或左尾概率，需要单独编写的 {it:X}{cmd:tail()} 或 {it:X}{cmd:()} 程序，从头开始编写。

{p 4 4}
无论如何，忘掉您对 Stata 的分布函数的所有记忆。 这里是新集合：

{p 8 31}{cmd:normden()}{space 8}同旧 {cmd:normd()}{p_end}
{p 8 31}{cmd:norm()}{space 11}同旧 {cmd:normprob()}{p_end}
{p 8 31}{cmd:invnorm()}{space 8}同旧 {cmd:invnorm()}{p_end}

{p 8 31}{cmd:chi2()}{space 11}与旧 {cmd:chiprob()} 相关；见下文{p_end}
{p 8 31}{cmd:invchi2()}{space 8}与旧 {cmd:invchi()} 相关；见下文{p_end}
{p 8 31}{cmd:chi2tail()}{space 7}与旧 {cmd:chiprob()} 相关{p_end}
{p 8 31}{cmd:invchi2tail()}{space 4}与旧 {cmd:invchi()} 相关{p_end}

{p 8 31}{cmd:F()}{space 14}与旧 {cmd:fprob()} 相关{p_end}
{p 8 31}{cmd:invF()}{space 11}与旧 {cmd:invfprob()} 相关{p_end}
{p 8 31}{cmd:Ftail()}{space 10}同旧 {cmd:fprob()}{p_end}
{p 8 31}{cmd:invFtail()}{space 7}等于旧 {cmd:invfprob()}{p_end}

{p 8 31}{cmd:ttail()}{space 10}与旧 {cmd:tprob()} 相关；见下文{p_end}
{p 8 31}{cmd:invttail()}{space 7}与旧 {cmd:invt()} 相关；见下文{p_end}

{p 8 31}{cmd:nchi2()}{space 10}等于旧 {cmd:nchi()}{p_end}
{p 8 31}{cmd:invnchi2()}{space 7}等于旧 {cmd:invnchi()}{p_end}
{p 8 31}{cmd:npnchi2()}{space 8}等于旧 {cmd:npnchi()}{p_end}

{p 4 4}
我们要强调的是，如果存在某个函数，那它是精确计算的。 换句话说，{cmd:F()} 精确计算左尾，而 {cmd:Ftail()} 精确计算右尾；{cmd:Ftail()} 的准确性远高于 {bind:1 - {cmd:F()}}。

{p 4 4}
没有 {cmd:normtail()} 函数。 计算左尾概率（z < 0）的准确方法是 {cmd:norm(z)}。 计算右尾概率（z > 0）的准确方法是 {cmd:norm(-z)}。

{p 4 4}
所有旧函数仍然存在，但在两个情况下，它们仅在版本控制下工作：旧的 {cmd:invt()}，在新的命名逻辑下，应该是累积值的倒数，但实际上并不是，因此 {cmd:invt()} 进入强制退休一段时间。 只有当 {cmd:version} 设置为 6 或更早版本时，它才有效；否则，您会收到“未知函数 invt()”的错误消息。 同样，旧的 {cmd:invchi()} 也因为与新名称 {cmd:invchi2()} 太接近而进入强制退休状态。


{hline}

{title:非统计改进}

    {title:图形}

{p 4 4}
Stata 的 {cmd:graph} 命令现在允许线条样式。 之前，您可能在 {cmd:graph} 命令中指定 {cmd:c(lls)} 表示第一个变量将通过线连接，第二个变量将通过线连接，第三个变量将通过立方样条连接，您现在可以指定类似 {cmd:c(l l[-] s[-.])} 的内容来表示相同的事并同时指定显示结果所用线条的样式。 第一个用实线表示，第二个用虚线表示，第三个用点划线表示。

{p 4 4}
您仍然可以指定旧样式，或混合使用旧样式和新样式。在方括号中，您可以输入由以下部分组成的模式：

{p 16 21}{cmd:l}{space 4}(el) 实线（默认）{p_end}
{p 16 21}{cmd:_}{space 4}(下划线) 一个长破折号{p_end}
{p 16 21}{cmd:-}{space 4}(连字符) 一个中等破折号{p_end}
{p 16 21}{cmd:.}{space 4}(点) 一个短破折号（几乎是一个点）{p_end}
{p 16 21}{cmd:#}{space 4}(井号) 一个空格

{p 4 4}
您指定的模式会重复。

{p 4 4}
图形顶部的键已改进 - 现在显示线条样式和点，您现在可以使用新的 {cmd:key1()}、{cmd:key2()}、{cmd:key3()} 和 {cmd:key4()} 选项控制键。 {cmd:key}{it:#}{cmd:()} 选项允许您以任意组合指定文本、符号、线条样式和颜色。 {cmd:key1(c(l[.-]) s(x) p(2) "说明文字")} 创建一个键，显示一个点划线模式的线，符号为小 x（{cmd:symbol(x)} 为新添加），颜色为笔 2 的颜色，文本为“说明文字”。

{p 4 4}
您现在可以在 {cmd:graph}（以及编程命令 {cmd:gph open}）上指定 {cmd:xsize(}{it:#}{cmd:)} 和 {cmd:ysize(}{it:#}{cmd:)} 选项。这些指定图形的大小（以英寸为单位），在打印图形时生效。 默认是 {cmd:xsize(6)} 和 {cmd:ysize(4)}。

{p 4 4}
现在打印略有不同。 由于 Stata 7 现在为所有操作系统包含了窗口化界面（包括 Unix），您可以下拉 {hi:File} 并选择 {hi:Print Graph}。 您也可以使用新的 {cmd:print} 命令；请参见帮助 {help print_zh}。 {cmd:translate} 命令可以将 .gph 格式转换为其他文件格式。

{p 4 4}
与以前的版本相比，这意味着 Unix 独立执行程序 gphdot 和 gphpen 现在已消失；您不再需要它们。 {cmd:print} 更好。 这也意味着 Stata 的旧 {cmd:gphprint} 命令，仅在 Windows 和 Mac 上可用，现在已被 {cmd:print} 取代打印，而文件转换则由 {cmd:translate} 取代。

{p 4 4}
.gph 文件格式已更改，意味着 Stata 6 无法显示或打印 Stata 7 的 .gph 文件（但 Stata 7 可以显示和打印 Stata 6 文件）。 旧的 Stage 编辑器无法编辑 Stata 7 图形。

{p 4 4}
Unix 的逐行控制台版本 Stata 不能再显示图形，尽管 {cmd:graph} 命令仍然有效，这意味着您可以将图形输出到文件并打印结果。 要在屏幕上查看图形，您必须使用窗口化版本的 Stata。

{p 4 4}
程序员命令 {cmd:gph} 保持不变，但程序员需注意 Stata 7 具有新的可编程底层图形引擎。 您可能希望使用此新功能编写您的图形程序，如果是，请访问

{center:{browse "http://developer.stata.com/graphics"}}

{p 4 4}
新开发系统的文档位于此处。

{p 4 4}
注意：您的 Stata 副本可能具有此处未列出的新图形功能。 当您键入 {cmd:update} 获取和安装来自 www.stata.com 的最新更新时，可能会添加新功能。 要了解任何新图形功能，请参见帮助 {help whatsnew_zh}。 帮助 {help whatsnew_zh} 提供了当前更新所提供的所有新功能（图形和其他功能）的完整列表。 帮助 {help graphics} 将记录在 Stata 7 生命周期中添加的新终端用户图形功能。


    {title:新命令}

{p 4 4}
{cmd:foreach} 是一个新的编程命令，但可以直接使用，是 {cmd:for} 和 {cmd:while} 的有用替代方案。 使用 {cmd:foreach}，您可以输入以下内容


	{cmd:. foreach file in this.dta that.dta theother.dta {c -(}}
	  {cmd:2. use `file', clear}
	  {cmd:3. replace bp=. if bp==999}
	  {cmd:4. save `file', replace}
	  {cmd:5. {c )-}}

{p 4 4}
请参见帮助 {help foreach_zh}。

{p 4 4}
同样，新的 {cmd:forvalues} 编程命令是 {cmd:for} 和 {cmd:while} 的有用替代方案，逐步检查数值。 您无需编写

	{cmd:. local i = 1}
	{cmd:. while `i' <= `n' {c -(}}
	  {cmd:2.} {it:...} {cmd:`i'} {it:...}
	  {cmd:3. local i = `i' + 1}
	  {cmd:4. {c )-}}

{p 4 4}
您可以编写成

	{cmd:. forvalues i = 1(1)`n' {c -(}}
	  {cmd:2.} {it:...} {cmd:`i'} {it:...}
	  {cmd:3. {c )-}}

{p 4 4}
请参见帮助 {help forvalues_zh}。

{p 4 4}
{cmd:continue}（以及 {cmd:continue, break}）允许您继续或中断 {cmd:while}、{cmd:forvalues} 和 {cmd:foreach} 循环；请参见帮助 {help continue_zh}。

{p 4 4}
{cmd:net} {cmd:search} 在网上搜索用户编写的 Stata 附加功能，包括但不限于 STB 中发布的用户编写的附加功能。 找到的用户编写材料可通过点击链接进行立即下载和自动安装。 {cmd:net} {cmd:search} 是 {cmd:webseek} 的最新版本，此命令未包含在 Stata 6 中，但在发布期间可用，且仍在使用，但现在未记录。 请参见帮助 {help net_zh}。

{p 4 4}
{cmd:destring} 使将变量从字符串转换为数字变得更简单。 请参见帮助 {help destring_zh}。

{p 4 4}
以下新的 {cmd:egen} 函数已添加：{cmd:any()}、{cmd:concat()}、{cmd:cut()}、{cmd:eqany()}、{cmd:ends()}、{cmd:kurt()}、{cmd:mad()}、{cmd:mdev()}、{cmd:mode()}、{cmd:neqany()}、{cmd:pc()}、{cmd:seq()}、{cmd:skew()} 和 {cmd:tag()}。 此外，{cmd:group()} 和 {cmd:rank()} 有新选项。 请参见帮助 {help egen_zh}。

{p 4 4}
{cmd:statsby} 创建一数据集，该数据集记录根据 {cmd:by} {it:varlist}{cmd::} 执行的命令的结果。 结果可以是指定命令的任何已保存结果，如果它是估计命令，系数和标准误差。 例如，键入 `{cmd:statsby "regress mpg weight" _b _se e(r2), by(foreign)}' 将创建一个包含两个观察值的数据集，第一条记录外资=0 的系数、标准误差和 R^2，第二条记录外资=1 的系数、标准误差和 R^2。 请参见帮助 {help statsby_zh}。

{p 4 4}
{cmd:xi} 经过修改，以利用 Stata 更长的变量名称来创建更具可读性的交互术语名称。 请参见帮助 {help xi_zh}。

{p 4 4}
{cmd:hexdump} 将为您提供文件的十六进制转储。 更有用的是其 {cmd:analyze} 选项，该选项将为您分析转储并报告摘要。 这对于诊断原始数据集的问题很有帮助。 请参见帮助 {help hexdump_zh}。

{p 4 4}
{cmd:type} 新增了 {cmd:asis} 选项。当文件名以 {hi:.smcl} 结尾时，{cmd:type} 的默认行为已更改，以解释 SMCL 代码。 这样，如果您之前通过键入`{cmd:log using mylog}` 创建了会话日志，您可以键入 `{cmd:type mylog.smcl}` 以您想要的方式显示它。 如果您想查看原始的 SMCL 代码，则可以键入 `{cmd:type mylog.smcl, asis}`。 请参见帮助 {help type_zh}。

{p 4 4}
{cmd:net} {hi:stata.toc} 和 {hi:*.pkg} 文件现在允许 {cmd:v} 指令。 您应在文件顶部输入 `{cmd:v 2}`，如果您这样做，您可以使用文件中的 SMCL 指令；请参见帮助 {help net_zh} 和 {help smcl_zh}。

{p 4 4}
{cmd:format} 现在允许您首先或最后输入 {cmd:%}{it:fmt}，因此您同样可以键入 `{cmd:format mpg weight %9.2f}` 或 `{cmd:format %9.2f mpg weight}`。 请参见帮助 {help format_zh}。

{p 4 4}
{cmd:version} 现在可以用作前缀命令；您可以键入 `{cmd:version 6: }{it:...}`，表示 {it:...} 应在版本 6 下运行。 请参见帮助 {help version_zh}。

{p 4 4}
现在有三个 {cmd:shell} 类似命令，具体取决于您的操作系统：{cmd:shell}、{cmd:xshell} 和 {cmd:winexec}。 Stata for Windows 用户：没有改变。 Stata for Mac 用户：没有改变。 Stata(console) for Unix 用户：没有改变。但是，Stata(GUI) for Unix 更复杂，所有这一切都与您是否希望为应用程序创建新的 {hi:xterm} 窗口有关。 请参见帮助 {help shell_zh}。

{p 4 4}
Numlists 现在可以指定为 {it:a}{cmd:[}{it:b}{cmd:]}{cmd:c} 以及 {it:a}{cmd:(}{it:b}{cmd:)}{it:c}。 请参见帮助 {help numlist_zh}。

{p 4 4}
{cmd:list} 现在有一个 {cmd:doublespace} 选项。 请参见帮助 {help list_zh}。

{p 4 4}
{cmd:confirm} {cmd:names} 验证接下来的内容遵循 Stata 命名语法——也就是说，以字母或下划线开头，之后包含字母、下划线或数字——并且不太长。

{p 4 4}
{cmd:estimates} {cmd:hold} 新增了两个新选项和一种新行为，程序员会对此感兴趣。 新行为是，如果在临时名称下持有估计，则在程序终止时会自动丢弃它们。 新的 {cmd:restore} 选项调度将持有的估计在程序终止时自动恢复。 取消先前调度恢复的新的 {cmd:not} 选项。 新的 {cmd:copy} 选项用于 {cmd:estimates} {cmd:hold}，它复制当前估计，而不是移动它们。 请参见帮助 {help estimates_zh}。

{p 4 4}
{cmd:_rmcoll} 和 {cmd:_rmdcoll} 有助于从变量列表中删除共线变量；请参见帮助 {help _rmcoll_zh} 和 {help _rmdcoll}。


    {title:新字符串函数}

{p 4 4}
有四个新的字符串函数：{cmd:match()}、{cmd:subinstr()}、{cmd:subinword()} 和 {cmd:reverse()}。

{p 4 4}
{cmd:match(}{it:s_1}{cmd:,}{it:s_2}{cmd:)} 如果字符串 {it:s_1} 与 {it:s_2}“匹配”则返回 1。 在匹配中，{cmd:*} 在 {it:s_2} 中被理解为“在这里可以有零个或多个字符”，而 {cmd:?} 被理解为“在这里有一个字符”。 {cmd:match("this","*hi*")} 为真。 在 {it:s_2} 中，{cmd:\\}、{cmd:\?} 和 {cmd:\*} 可以使用，如果您真想要 {cmd:\}、{cmd:?} 或 {cmd:*} 字符。

{p 4 4}
{cmd:subinstr(}{it:s_1}{cmd:,}{it:s_2}{cmd:,}{it:s_3}{cmd:,}{it:n}{cmd:)} 和 {cmd:subinword(}{it:s_1}{cmd:,}{it:s_2}{cmd:,}{it:s_3}{cmd:,}{it:n}{cmd:)} 将 {it:s_1} 中的前 {it:n} 次出现的 {it:s_2} 替换为 {it:s_3}。 {cmd:subinword()} 将“出现”限制为单词的出现。 在任何情况下，{it:n} 可以编码为缺失值，表示替换所有出现。 例如，{cmd:subinword("measure me","me","you",.)} 返回“measure you”，而 {cmd:subinstr("measure me","me","you",.)} 返回“youasure you”。

{p 4 4}
{cmd:reverse(}{it:s}{cmd:)} 返回 {it:s} 翻转的结果。 {cmd:reverse("string")} 返回“gnirts”。

{p 4 4}
第五个新字符串函数实际上是针对程序员的：{cmd:abbrev(}{it:s}{cmd:,}{it:n}{cmd:)} 返回变量名称 {it:s} 的 {it:n} 字符 {cmd:~} 缩写。 {cmd:abbrev(}{it:s}{cmd:,12)} 是在 Stata 中用来将 32 个字符名称适应到 12 空间的函数。

{p 4 4}
请参见帮助 {help functions_zh}。


    {title:其他新函数}

{p 4 4}
新函数 {cmd:inrange()} 和 {cmd:inlist()} 使选择正确的观察值变得更容易。

{p 4 4}
{cmd:inrange()} 在选择子样本时优雅地处理缺失值，如 {bind:{it:a} <= {it:x} <= {it:b}}。 {cmd:inrange(}{it:x}{cmd:,}{it:a}{cmd:,}{it:b}{cmd:)} 回答这个问题：“{it:x} 是否已知在范围 {it:a} 到 {it:b} 中？” 显然，{cmd:inrange(.,1000,2000)} 是假的。 {it:a} 或 {it:b} 可能是缺失值。 {cmd:inrange(}{it:x}{cmd:,}{it:a}{cmd:,.)} 回答是否已知 {bind:{it:x} >= {it:a}}，而 {cmd:inrange(}{it:x}{cmd:,.,}{it:b}{cmd:)} 回答是否已知 {bind:{it:x} <= {it:b}}。 {cmd:inrange(.,.,.)} 返回 0，仔细想想，这是不一致的，但可能是您想要的结果。

{p 4 4}
{cmd:inlist(}{it:x}{cmd:,}{it:a}{cmd:,}{it:b}{cmd:,}{it:...}{cmd:)} 如果 {bind:{it:x} = {it:a}} 或 {bind:{it:x} = {it:b}} 或 {it: ...} 则选择观察值。

{p 4 4}
有关上述函数的更多信息，请参见帮助 {help functions_zh}。 还添加了其他函数。 {cmd:_by()}、{cmd:_bylastcall()} 和 {cmd:_byindex()} 处理使程序和 ado 文件允许前缀 {cmd:by} {it:varlist}{cmd::}；请参见帮助 {help byprog_zh}。

{p 4 4}
新的宏扩展功能：{c -(}{cmd:r}|{cmd:e}|{cmd:s}{c )-}{cmd:(}{c -(}{cmd:scalars}|{cmd:macros}|{cmd:matrices}|{cmd:functions}{c )-}{cmd:)} 返回所有已保存结果的名称。 例如，{cmd:local x : e(scalars)} 返回当前存储在 {cmd:e()} 中的所有标量的名称。 请参见帮助 {help macro_zh}。


{hline 3} {hi:先前更新} {hline}

{pstd}
请参见 {help whatsnew6_zh}.{p_end}

{hline}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <whatsnew6to7.sthlp>}