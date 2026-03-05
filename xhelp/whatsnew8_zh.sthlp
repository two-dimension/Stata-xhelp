
{smcl}
{* *! version 1.3.0  13sep2017}{...}
{help whatsnew_zh}  {title:Stata 8版新增内容}

{help whatsnew8:English Version}
{hline}
{pstd}
本文件记录了 Stata 在 8.0、8.1 和 8.2 版本中新增的功能和修复：

    {c TLC}{hline 63}{c TRC}
    {c |} 帮助文件      内容                        年限           {c |}
    {c LT}{hline 63}{c RT}
    {c |} {help whatsnew_zh}         Stata 16.0                   2019年至今 {c |}
    {c |} {help whatsnew15to16_zh}   Stata 16.0 新版         2019            {c |}
    {c |} {help whatsnew15_zh}       Stata 15.0 和 15.1          2017至2019    {c |}
    {c |} {help whatsnew14to15_zh}   Stata 15.0 新版         2017            {c |}
    {c |} {help whatsnew14_zh}       Stata 14.0、14.1 和 14.2   2015至2017    {c |}
    {c |} {help whatsnew13to14_zh}   Stata 14.0 新版         2015            {c |}
    {c |} {help whatsnew13_zh}       Stata 13.0 和 13.1          2013至2015    {c |}
    {c |} {help whatsnew12to13_zh}   Stata 13.0 新版         2013            {c |}
    {c |} {help whatsnew12_zh}       Stata 12.0 和 12.1          2011至2013    {c |}
    {c |} {help whatsnew11to12_zh}   Stata 12.0 新版         2011            {c |}
    {c |} {help whatsnew11_zh}       Stata 11.0、11.1 和 11.2   2009至2011    {c |}
    {c |} {help whatsnew10to11_zh}   Stata 11.0 新版         2009            {c |}
    {c |} {help whatsnew10_zh}       Stata 10.0 和 10.1          2007至2009    {c |}
    {c |} {help whatsnew9to10_zh}    Stata 10.0 新版         2007            {c |}
    {c |} {help whatsnew9_zh}        Stata  9.0、9.1 和 9.2     2005至2007    {c |}
    {c |} {help whatsnew8to9_zh}     Stata  9.0 新版       2005            {c |}
    {c |} {bf:本文件}        Stata  8.0、8.1 和 8.2     2003至2005    {c |}
    {c |} {help whatsnew7to8_zh}     Stata  8.0 新版       2003            {c |}
    {c |} {help whatsnew7_zh}        Stata  7.0                   2001至2002    {c |}
    {c |} {help whatsnew6to7_zh}     Stata  7.0 新版       2000            {c |}
    {c |} {help whatsnew6_zh}        Stata  6.0                   1999至2000    {c |}
    {c BLC}{hline 63}{c BRC}

{pstd}
最近的变更会被列在最前面。

{hline 8} {hi:更近期的更新} {hline}

{pstd}
请查看 {help whatsnew8to9_zh}。

{hline 8} {hi:更新 24feb2005} {hline}

    {title:Ado 文件}

{p 5 9 2}
{* enhancement}
1.  在线帮助和搜索索引已更新至 {help sj_zh:Stata Journal 5(1)}。

{p 5 9 2}
{* fix}
2.  在更新后的 09dec2004，使用 {help fcast graph}、{help irf graph}、{help irf cgraph}、{help irf ograph} 和 {help sts graph} 时，当采用单色方案，如 {help scheme_s2_zh:s2mono}，且绘制多条线时，所有线条会以相同的实线样式绘制。现每条线都将以独特的样式绘制。

{p 5 9 2}
{* fix}
3.  {help graph box} 不能完全遵从新设置以关闭变量缩写 {c -} {cmd:set varabbrev off}。在在 {cmd:over()} 选项中指定多个 yvar 的特定情况下，{cmd:graph box}会以错误消息终止; 这个问题已得到解决。

{p 5 9 2}
{* fix}
4.  {help svytab} 在使用 {cmd:row} 选项时不正确地计算设计效果，这在指定了 {cmd:se}、{cmd:ci}、{cmd:deff} 和 {cmd:deft} 选项中，有一个或多个的情况下。该问题已得到解决。

{hline 8} {hi:更新 10jan2005} {hline}

    {title:Ado 文件}

{p 5 9 2}
{* fix}
1.  {help streg_zh} 在估计时忽略了 {cmd:level()} 选项。此问题已解决。

{p 5 9 2}
{* fix}
2.  {help streg_zh} 在指定了 {cmd:noconstant} 的情况下没有指定回归变量时，发出了无意义的错误信息。{cmd:streg} 现在会给出合适的错误消息。

{p 5 9 2}
{* fix}
3.  {help rocfit_zh} 在标签为双侧的单个参数测试中错误地提供了单侧显著性水平。{cmd:rocfit} 现在返回正确的双侧显著性水平。

    {title:适用于所有平台的 Stata 可执行文件}

{p 5 9 2}
{* fix}
4.  {help lowess_zh} 和 {help twoway lowess} 在多次使用相同数据且 {cmd:x} 变量有重复值的情况下，产生略微不同的图形; 该问题已解决。

{p 5 9 2}
{* fix}
5.  使用 {cmd:exact} 选项的 {help tabi} 在 05oct2004 更新后，有时向 Fisher 的精确检验报告错误的 p 值; 该问题已解决。

{p 5 9 2}
{* fix}
6.  使用 {cmd:translator(smcl2log)} 选项的 {help translate_zh} 会导致 Stata 退出; 该问题已解决。

{p 5 9 2}
{* fix}
7.  如果矩阵表达式通过观察下标引用变量，例如 {cmd:matrix X[2,4] = mpg[3]}，在极少数情况下，该表达式会返回缺失值，即便变量在该观察值中含有非缺失值；该问题已解决。

{hline 8} {hi:更新 20dec2004} {hline}

    {title:Ado 文件}

{p 5 9 2}
{* fix}
1.  {help estimates stats} 显示了正确的结果，但返回结果矩阵 {cmd:r(S)} 的 {cmd:ll0} 和 {cmd:ll} 列顺序颠倒; 这个问题已解决。

{p 5 9 2}
{* fix}
2.  {help sdtest_zh} 和 {help sdtesti} 对双侧 F 检验的 p 值给出了错误的值; 此问题已解决。输出的格式也有所改善。

{p 5 9 2}
{* fix}
3.  {help statsby_zh} 现在允许在 {cmd:by()} 选项中使用字符串变量。

{hline 8} {hi:更新 17dec2004} {hline}

    {title:适用于所有平台的 Stata 可执行文件}

{p 5 9 2}
{* fix}
1.  {help anova_zh} 与 {cmd:repeated()} 选项一起使用，指定重复测量变量的模式，以至于没有观察主体具有完整的观察水平，导致 {cmd:e(Srep)} 矩阵和 Huynh-Feldt 及 Greenhouse-Geisser ε 值不正确。典型的 ANOVA 结果和 Box ε 未受到损害。该问题已解决。

{p 5 9 2}
{* enhancement}
2.  {help clogit_zh} 现在使用更好的起始值，并且在对数似然评估时不再重新排序数据。这两个更改都导致大多数问题的执行时间更快，特别是对于大型数据集。

{p 5 9 2}
{* fix}
3.  {help filefilter_zh} 现在在不需要双引号的情况下接受文件路径。

{p 5 9 2}
{* enhancement}
4.  （GUI）{dialog labeldefine_dlg:label define} 对话框现在允许您继续添加/修改标签，直到您取消。之前，Stata 要求您单击“添加”或“修改”按钮来添加每个值标签。

{p 5 9 2}
{* fix}
5.  （GUI）{dialog labeldefine_dlg:label define} 对话框显示了缺失值的数值表示; 这个问题已解决。

{p 5 9 2}
{* enhancement}
6.  {help odbc load}（适用于 Windows、Mac OS X 和 Linux）有两个新选项，{cmd:allstring} 和 {cmd:datestring}，可分别导入所有数据或仅将日期作为字符串；详见帮助 {help odbc_zh}。

{p 5 9 2}
{* fix}
7.  {help postfile} 使用 {cmd:every()} 选项，指定为 {cmd:every(0)} 导致 Stata 崩溃; 该问题已解决。

{p 5 9 2}
{* enhancement}
8.  {help rmdir_zh} 是一个用于删除已存在目录（文件夹）的新命令；请参见帮助 {help rmdir_zh}。

{p 5 9 2}
{* fix}
9.  {help tabulate_zh} 配合 {cmd:exact} 选项，如果列数大于行数，耗费了过长的时间。此时，Stata 现改用表的转置来显著减少 Fisher 的精确检验的计算时间。

    {title:适用于 Windows 的 Stata 可执行文件}

{p 4 9 2}
{* enhancement}
10.  现在您可以将审查窗口的内容复制到剪贴板。

{p 4 9 2}
{* fix}
11.  {help doedit_zh:Do-file Editor} 的文本限制为 30K。然而，可以粘贴超出此限制的文本。此问题已解决。

{p 4 9 2}
{* fix}
12.  {help dialog} {cmd:VARNAME} 和 {cmd:VARLIST} 控件现在即使在存在 {cmd:--more--} 条件的情况下也会显示变量列表。之前，Stata 显示了一个错误消息，表示不忙。

{p 4 9 2}
{* fix}
13.  {dialog labeldefine_dlg:label define} 对话框仅在被修改时显示标签的前 10 个字符; 此问题已解决。

    {title:适用于 Mac 的 Stata 可执行文件}

{p 4 9 2}
{* enhancement}
14.  现在的 {help specialedition:Stata/SE} 控制台版本适用于 Mac。有关更多信息，请访问 {browse "http://www.stata.com"}。

{p 4 9 2}
{* fix}
15.  在远程运行 Stata 执行批处理作业时，Stata 现在将 {cmd:-b} 选项视为 {cmd:-e} 选项，以防止警告对话框出现。

{p 4 9 2}
{* fix}
16.  在批处理模式下运行时创建的图形不再显示在屏幕上。

{p 4 9 2}
{* fix}
17.  {help dialog} {cmd:VARNAME} 和 {cmd:VARLIST} 控件即使在存在 {cmd:--more--} 条件的情况下也会显示变量列表。之前，Stata 显示了一个错误消息，表示不忙。

{p 4 9 2}
{* fix}
18.  在 {help doedit_zh:Do-file Editor} 中，如果您找到某些文本并选择“替换...”，它会忽略高亮文本而跳到下一个出现的文本并替换该文本。此问题已解决。

{p 4 9 2}
{* fix}
19.  新打开的 {help doedit_zh:Do-file Editor} 窗口的铺排已被修复。

{p 4 9 2}
{* fix}
20.  如果 {help viewer:Viewer} 的方案已更改，并且在优先菜单中选择了默认窗口，视图的方案将无法恢复为默认设置。此问题已解决。

{p 4 9 2}
{* fix}
21.  工具栏上的 Viewer 按钮在应该仅显示 {help viewer:Viewer} 时会弹出一个查看文件的提示; 此问题已解决。

    {title:适用于 Unix 的 Stata 可执行文件}

{p 4 9 2}
{* fix}
22.  {help edit_zh:Data Editor} 现在允许您接受数据更改，退出时放弃数据更改并取消退出。之前不允许您取消退出。

{p 4 9 2}
{* fix}
23.  当您在 {help viewer:Viewer} 中刷新打开的长文件时，Viewer 会在文件刷新时闪烁。此问题已解决。

{hline 8} {hi:更新 09dec2004} {hline}

    {title:Ado 文件}

{p 5 9 2}
{* enhancement}
1.  在线帮助和搜索索引已更新至 {help sj_zh:Stata Journal 4(4)}。

{p 5 9 2}
{* enhancement}
2.  {help graph twoway}、{help graph bar}、{help graph box}和 
    {help graph dot} 现在有新的 {cmd:aspectratio()} 选项可控制图形的绘图区域的宽高比; 请参见帮助 {help aspect_option_zh}。

{p 5 9 2}
{* enhancement}
3.  {help scheme s2mono:s2mono} 和 {help scheme s2manual:s2manual} 方案的默认连接线模式都得到了改善，以利用可用方案的更大灵活性。{help twoway line} 绘制的默认连接线模式仍然循环使用虚线和点划线，而使用 {help twoway connected} 和 {help twoway scatter} {hline 2} 的模式现在均为实线。

{p 5 9 2}
{* fix}
4.  由 {cmd:margin()} 选项的画图显示设置的图形边距将持续应用于所有后续绘制的图形，直到发出 {cmd:discard} 命令; 该问题已得到解决。

{hline 8} {hi:更新 24nov2004} {hline}

    {title:Ado 文件}

{p 5 9 2}
{* enhancement}
1.  {help graph_zh} 方案文件的文档现已可用; 请参见帮助 {help scheme files}。

{p 5 9 2}
{* enhancement}
2.  数据菜单稍作重组。标签和注释子菜单已拆分为两个单独的条目。在标签下，值标签被组织到了自己的子菜单中。

{p 5 9 2}
{* fix}
3.  当 {cmd:cornfield} 被指定时，使用小数字的病例对照表的 {help cc_zh} 和 {help cci} 进入了一个无限循环; 这个问题已得到解决。

{p 5 9 2}
{* fix}
4.  当数据集中包含变量名为 {cmd:_merge} 时，{help cf_zh} 产生了不正确的消息；现在产生的错误消息是正确的。

{p 5 9 2}
{* fix}
5.  (Windows) {help cf_zh} 创建了与数据集中每个变量同名的本地宏。此行为可能导致与 {cmd:cf} 中使用的本地宏发生命名冲突。此问题已修复。

{p 5 9 2}
{* fix}
6.  {help clonevar_zh} 已改进了错误消息。

{p 5 9 2}
{* enhancement}
7.  {help duplicates report} 现在是 {help return_zh:r-class} 类型，并返回 {cmd:r(unique_value)} 和 {cmd:r(N)}。{cmd:r(unique_value)} 是唯一观察的计数，而 {cmd:r(N)} 是观察的总数。

{p 5 9 2}
{* enhancement}
8.  {help graph twoway} 有新的 {cmd:pcycle()} 选项，指定绘图中的样式再循环的次数; 详见帮助 {help advanced options}。

{p 5 9 2}
{* enhancement}
9.  {help loneway_zh} 现在允许组变量为字符串。

{p 4 9 2}
{* fix}
10.  {dialog mfp} 对话框错误地允许 oprobit 和 ologit; 这个问题已修复。

{p 4 9 2}
{* enhancement}
11.  {help roccomp_zh} 使用 {cmd:graph} 选项现在支持关闭默认的网格线，使用 {cmd:ylabel(,nogrid)} 和 {cmd:xlabel(,nogrid)} 选项。

{p 4 9 2}
{* enhancement}
12.  {help sampsi_zh} 现在

{p 9 13 2}
    a.  有了新的选项 {cmd:nocontinuity}。

{p 9 13 2}
    b.  当违反大样本或二样本检验的假设时，显示一条提示。

{p 9 13 2}
    c.  在返回结果中保存 {cmd:r(warning)}。

{p 9 13 2}
    d.  当同时指定 {cmd:r()} 和 {cmd:onesample} 选项时，显示一条错误消息。

{p 4 9 2}
{* fix}
13.  {help separate_zh} 指定缺失选项失败，如果变量包含扩展缺失值 ({cmd:.a}、{cmd:.b}、...、{cmd:.z}); 此问题已解决。

{p 4 9 2}
{* fix}
14.  {help stcurve_zh} 在 outfile() 选项中引用文件名时在文件名和扩展名之间添加了额外的空格，此问题已解决。

{p 4 9 2}
{* fix}
15.  {help svyprop} 使用 {opt subpop()} 选项时可能会错误地退出并显示 “检测到只有一个 PSU 的层 ” 的错误，此问题已解决。

{p 4 9 2}
{* enhancement}
16.  {help tabodds_zh} 现在将 {cmd:base(}{it:#}{cmd:)} 解释为 {it: expvar} 的分类号码；当与 {cmd:cornfield}、{cmd:tb} 或 {cmd:woolf} 选项结合使用时，选项 {cmd:or base()} 也采用此解释。

{p 4 9 2}
{* fix}
17.  {dialog tobit} 对话框未允许仅指定一个截断限制；此问题已解决。

{p 4 9 2}
{* fix}
18.  {help xtgee_zh} 使用 {cmd:score()} 选项未能计算分数，如果数据集中存在变量 {cmd:_merge}；此问题已解决。

{p 4 9 2}
{* fix}
19.  {help xtreg_zh:xtreg , re} 拒绝在数据包含不平衡面板时估计仅包含常数模型; 此问题已解决。

{hline 8} {hi:update 06oct2004} {hline}

    {title:适用于 Windows 的 Stata 可执行文件}

{p 5 9 2}
{* fix}
1.  (仅限 Windows GUI) 05oct2004 更新引入了 Viewer 中的问题，导致 Stata 崩溃；此问题已修复。

{p 5 9 2}
{* fix}
2.  (仅限 Windows GUI) 截至 05oct2004 更新，在打开对话框时关闭 Stata 会导致无害的异常错误；此问题已修复。

{hline 8} {hi:update 05oct2004} {hline}

    {title:Ado 文件}

{p 5 9 2}
{* fix}
1.  {help areg_zh} 在 20aug2004 更新后，在模型不是满秩时报告 F 统计量缺失值，即使在报告的情况下也应报告 F 统计量；此问题已修复。

{p 5 9 2}
{* fix}
2.  不使用 {cmd:strata()} 和 {cmd:cluster()} 选项的 {help bsample_zh} 忽略了 {help if_zh} 限定词；此问题已修复。

{p 5 9 2}
{* enhancement}
3.  {help clonevar_zh} 是一个新命令，可以创建现有变量的相同副本；请参见帮助 {help clonevar_zh}。此命令基于 Durham 大学 Nicholas J. Cox 的工作。

{p 5 9 2}
{* fix}
4.  {help codebook_zh} 在存在大量 {help labels:value labels} 的情况下失败；此问题已修复。

{p 5 9 2}
{* fix}
5.  {help graph pie} 选项 {cmd:plabel( ... , gap())} 将应用于随后绘制的图形，即使在后续的 {cmd:graph} 命令中未指定该选项。此问题已修复。

{p 5 9 2}
{* fix}
6.  {help graph twoway connected} 在指定了权重时忽略了 {cmd:sort} 选项；此问题已修复。

{p 5 9 2}
{* fix}
7.  {help irf_zh} 在通过 {help var_zh} 估计单变量 VAR 后拒绝估计 IRFs；此问题已修复。

{p 5 9 2}
{* fix}
8.  {help lroc_zh} 现在保留数据的排序顺序。

{p 5 9 2}
{* enhancement}
9.  {help mfp_zh} 有一个新选项，{cmd:aic}，用于通过 Akaike 信息准则（AIC）选择模型；请参见帮助 {help mfp_zh}。

{p 4 9 2}
{* fix}
10.  许多命令已更新，以更好地处理版本控制 {help missing_zh:extended missing values}。请参见下面的项目 20。

    {title:适用于所有平台的 Stata 可执行文件}

{p 4 9 2}
{* enhancement}
11.  {cmd:gllamm} 现在已将更多的实用程序内置到 Stata 的可执行文件中，从而加快了对某些类别模型（包括复合链接和由协变量确定的潜类模型）的估计速度。请参见 {browse "http://www.gllamm.org"}。

{p 4 9 2}
{* fix}
12.  {cmd:format} 日期和时间修饰符 '{cmd:c}' 和 '{cmd:y}' 并未在应当时省略前导零。它们的行为和 '{cmd:C}' 和 '{cmd:Y}' 完全相同。此问题已修复。

{p 4 9 2}
{* fix}
13.  {help graph export} 在图形标签长度超过 128 个字符时创建无效的 PostScript 或 Encapsulated PostScript 文件。此问题已修复。

{p 4 9 2}
{* enhancement}
14.  {help ibeta():ibeta(a,b,x)} 的精度已提高至 10 位数字，当 {bind:0 < a, b < 100,000}。此外，{help atan()}、{help asin()} 和 {help acos()} 现在具有更高的准确性。

{p 4 9 2}
{* fix}
15.  {help matrix opaccum} 和 {help matrix glsaccum} 使用字符串组变量 {cmd:group()} 导致 Stata 崩溃；此问题已修复。

{p 4 9 2}
{* fix}
16.  {help predict_zh:predict, r} 被记录为获取许多估计命令后残差的最小缩写，但在某些情况下，例如 {help regress_zh} 具有稳健标准误时，要求最小缩写为 {cmd:re}。{cmd:predict} 现在允许 {cmd:r} 作为最小缩写。

{p 4 9 2}
{* enhancement}
17.  {help set varabbrev} 是一个新命令，允许用户关闭 Stata 中的变量缩写。请参见帮助 {help set varabbrev}。

{p 4 9 2}
{* enhancement}
18.  {help tabulate_zh} 和 {help tabi} 使用 {cmd:exact} 选项现在显著更快；具体请见帮助 {help tabulate_zh}。

{p 4 9 2}
{* fix}
19.  {help tabulate_zh} 同时使用 {cmd:generate()} 和 {cmd:missing} 选项生成一个 dummy 变量，这个变量在 varname 等于 missing 的观察中包含 {cmd:.} 而不是 {cmd:1}；此问题已修复。

{p 4 9 2}
{* fix}
20.  {help version_zh:version #, missing} 在独立案例中忽略了 {cmd:missing} 选项。当以一行的方式使用，例如 {cmd:version} {it:#}{cmd:, missing :} {it:cmd} 时，导致使用 {it:#} 小于 8 的 ado 文件理解扩展的 {help missing_zh:missing values}。现在在所有情况下，{cmd:missing} 选项使 Stata 采用调用程序的缺失值行为。即，使用 {cmd:version} {it:#}{cmd:, missing} 的 ado 文件在由理解扩展缺失值的程序调用时会理解扩展缺失值。调用不理解扩展缺失值的程序也不会理解扩展缺失值。

{p 4 9 2}
{* fix}
21.  {help window stopbox} 具有长文本导致 Stata 崩溃。现在 Stata 在每个参数中接受最多 500 个字符的文本，如果超过限制，则会给出警告信息。

{p 4 9 2}
{* fix}
22.  当您粘贴到单个单元格时，{help edit_zh:Data Editor} 可以将包含逗号的字符串解释为两个单元格；此问题已修复。

{p 4 9 2}
{* fix}
23.  指定 {help dialog} {cmd:VARLIST} 和 {cmd:VARNAME} 控件的高度将被忽略，默认高度永远被使用。

    {title:适用于 Windows 的 Stata 可执行文件}

{p 4 9 2}
{* enhancement}
24.  现在您可以在结果、图形、变量或审查窗口处于最前时，将文本粘贴到命令窗口中，方法是从编辑菜单选择“在命令窗口中粘贴文本”。

{p 4 9 2}
{* enhancement}
25.  为 Data Editor 的上下文菜单添加了变量属性、排序、隐藏和删除菜单项。

{p 4 9 2}
{* fix}
26.  {help dir_zh} 现在处理大于 2 GB 的文件大小。{cmd:dir} 的输出稍作更改，以更好地适应这些大的文件大小。

{p 4 9 2}
{* fix}
27.  {help dialog} {cmd:COMBOBOX} 控件的下拉部分现在可以根据其初始列表中最长文本重新调整大小。

{p 4 9 2}
{* fix}
28.  如果您在没有 OK 按钮的对话框中按下 Enter 键，或者在没有取消按钮的对话框中按下 Esc 键，则 Stata 崩溃。这个问题已被修复。

{p 4 9 2}
{* fix}
29.  Windows保存为对话框的时间问题在尝试将数据集保存到软盘驱动器时导致错误。此问题已被修复。

    {title:适用于 Mac 的 Stata 可执行文件}

{p 4 9 2}
{* enhancement}
30.  现在您可以在结果、图形、变量或审查窗口处于最前时，将文本粘贴到命令窗口中，方法是从编辑菜单选择“在命令窗口中粘贴文本”。

{p 4 9 2}
{* enhancement}
31.  数据属性、排序、隐藏和删除菜单项在 Data Editor 的上下文菜单中已重新组织。

{p 4 9 2}
{* enhancement}
32.  浮动工具栏现在可以调整大小。

{p 4 9 2}
{* fix}
33.  如果工具栏被固定，您点击一个窗口的缩放按钮，窗口的标题栏会被工具栏遮挡。此问题已解决。

{p 4 9 2}
{* fix}
34.  在全屏显示时，结果和 {help viewer:Viewer} 窗口不再可以调整到屏幕的全部宽度；此问题已修复。

{p 4 9 2}
{* fix}
35.  从 {help viewer:Viewer} 打印长文稿时，页边距将不正确，导致头部的一部分未打印，输出在左边没有边距下打印；此问题已解决。

{p 4 9 2}
{* fix}
36.  在从 {help doedit_zh:Do-file Editor} 打印长文档时，Stata 崩溃或可能不打印最后一页。这两个问题已经解决。

{p 4 9 2}
{* fix}
37.  在图形窗口中绘制的右对齐文本有时偏离一两个像素；此问题已解决。

{p 4 9 2}
{* fix}
38.  {help dialog} {cmd:COMBOBOX} 控件的下拉文本未能正确滚动，当选择长文本时，这一问题已解决。

{p 4 9 2}
{* fix}
39.  指定一些类型的 {help dialog} {cmd:COMBOBOX} 控件的高度改变了控件的位置。现在，始终使用默认高度，位置不受影响。

{p 4 9 2}
{* fix}
40.  Small Stata 在绘制多个图形或调用一系列对话框后崩溃；此问题已解决。

    {title:适用于 Unix 的 Stata 可执行文件}

{p 4 9 2}
{* enhancement}
41.  数据属性、排序、隐藏和删除菜单项已添加到 {help edit_zh:Data Editor} 的上下文菜单。

{p 4 9 2}
{* fix}
42.  指定一些类型的 {help dialog} {cmd:COMBOBOX} 控件的高度改变了控件的位置。现在，始终使用默认高度，位置不受影响。

{hline 8} {hi:update 01sep2004} {hline}

    {title:Ado 文件}

{p 5 9 2}
{* enhancement}
1.  在线帮助和搜索索引已更新至 {help sj_zh:Stata Journal 4(3)}。

{p 5 9 2}
{* fix}
2.  {help dstdize_zh} 通过 20aug2004 更新，保存了一个不正确的 {cmd:r(se)} 矩阵；此问题已解决。

{hline 8} {hi:update 20aug2004} {hline}

    {title:Ado 文件}

{p 5 9 2}
{* enhancement}
1.  {help areg_zh} 现在返回 {cmd:e(ll)} 和 {cmd:e(ll_0)}，允许 {help estimates table} 命令在 {cmd:areg} 之后计算 AIC 和 BIC。

{p 5 9 2}
{* fix}
2.  {help areg_zh} 在使用 {cmd:cluster()} 选项时未使用聚类数来计算分母自由度。现在，当 {help test_zh} 删除任何变量以计算 Wald 统计量时，F 统计量 被设定为 {help missing_zh}。

{p 5 9 2}
{* enhancement}
3.  {help bootstrap_zh}、{help jknife}、{help permute_zh}、{help simulate_zh} 和 {help statsby_zh} 现在在循环之前 {help more_zh:set more off}。

{p 5 9 2}
{* enhancement}
4.  {help dotplot_zh} 有新的 {cmd:over()} 选项，它是 {cmd:by()} 选项的同义词。

{p 5 9 2}
{* enhancement}
5.  {help dstdize_zh} 现在返回 {cmd:r(se)}、{cmd:r(lb)} 和 {cmd:r(ub)} 的标准误。 

{p 5 9 2}
{* enhancement}
6.  {help graph combine} 有一个新选项 {cmd:altshrink}，提供对文本、标记、线条厚度和在线图中线条样式的替代调整；请参见帮助 {help graph combine}。

{p 5 9 2}
{* fix}
7.  {help mfx_zh} 已更改。

{p 9 13 2}
    a.  {cmd:mfx} 不再允许在 {help boxcox_zh} 或 {help vec_zh} 之后使用。

{p 9 13 2}
    b.  {cmd:mfx} 在不适合计算边际效应或标准误时显示链接。

{p 9 13 2}
    c.  {cmd:mfx} 显示 {cmd:e(cmd2)} 作为估计命令，而不是 {cmd:e(cmd)}，当 {cmd:e(cmd2)} 存在时。

{p 9 13 2}
    d.  {cmd:mfx} 如果使用 {cmd:eqlist()} 选项且方程名称包含空格，则现在会显示错误消息。

{p 9 13 2}
    e.  {cmd:mfx} 在完成时返回 {cmd:r()} 空。{cmd:mfx} 仍然返回结果到 {cmd:e()}。

{p 9 13 2}
    f.  {cmd:mfx} 在使用线性法的模型中，由于存在常量方程在方程前面，这样的标准误会不正确；此问题已解决。

{p 9 13 2}
    g.  {cmd:mfx} 如果模型包含一个全部系数为零的方程则未能完成；此问题已解决。

{p 5 9 2}
{* fix}
8.  {help frontier_zh:predict, te} 在使用 {help frontier_zh} 适配模型，指定 {cmd:uhet()} 和 {cmd:vhet()} 选项后，退出错误；此问题已解决。

{p 5 9 2}
{* fix}
9.  {help tabi} 适配一些处理器时，当处理器数量过大时输出不正确；此问题已解决。

{p 4 9 2}
{* fix}
10.  {help doedit_zh} 在执行过程中未看到项的唯一性；此问题已解决。

{hline 8} {hi:update 29apr2003} {hline}

{title:Ado 文件}
{p 5 9 2}
{* enhancement}
1.  {help graph_zh} ，现在有 #
    {cmd:graph bar} 和
    {cmd:twoway histogram} 。
{hline 8} {hi:update 30mar2003} {hline}

{title:Ado 文件}
{p 5 9 2}
{* enhancement}
1.  {help quantile} 定义为一个社团定义的合法变量名称。

{p 5 9 2}
{* enhancement}
2.  {help sktest_zh} 及选项 {cmd:if} 选项的位置不再选择。

{p 5 9 2}
{* fix}
3.  {help ci_zh} 和 {help cii}) *！ 选项的值，保证该数据库有效且已删除；此问题已解决。
{hline 8} {hi:update 15dec2003} {hline}

    {title:Ado-files}

{p 5 9 2}
{* enhancement}
1.  {help arch_zh} 和 {help arima_zh} 帮助已更新以记录 {cmd:vce()} 和 {cmd:technique()} 选项，后者优于指定 {cmd:hessian} 等较旧的方法。

{p 5 9 2}
{* enhancement}
2.  估算命令对话框现在的布局得到了改善。

{p 5 9 2}
{* fix}
3.  {help graph_box_zh:graph box} 和 {help graph_box_zh:graph hbox} 允许您使用要绘制的相同变量标记外部值; 此问题已得到解决。

{p 5 9 2}
{* enhancement}
4.  {help maximize_zh} 帮助已更新以记录 {cmd:vce(oim)}，即与现有的 {cmd:vce(hessian)} 选项的别名，两者依然有效。

{p 5 9 2}
{* fix}
5.  {help ml_zh} 在未指定任何因变量时将中断并退出处理，这已得到修复。

{hline 8} {hi:update 06jun2003} {hline}

{title:Ado 文件}
{p 5 9 2}
{* fix}
1.  {help bootstrap_zh} 在用户指定的命令中包含双引号时退出了错误; 该问题已修复。

{hline 8} {hi:update 15jun2003} {hline}

    {title:Stata executable}

{p 5 9 2}
{* enhancement}
1.  现在，在线帮助和搜索索引已更新为 {help sj_zh:Stata Journal 1(1)}。

{p 5 9 2}
{* fix}
2.  {help histogram_zh} 约束样本，发送超过电影日期线，正确地显示成一个子图；该问题已修复。

{p 5 9 2}
{* fix}
3.  {help growing} 并非是弹出的标签；此问题已解决。

{hline 8} {hi:update 19aug2003} {hline}

{title:Stata executable}

{p 5 9 2}
{* fix}
5.  {help untabulate} 随机获得调节趋势的重要量，只要这个图是反映其它图的关系，这样做是在修复过程中提供的。

{p 5 9 2}
{* fix}
6.  (Windows) {help gras_twoway"graph twoway scatter} 和 {doctor views(2)} 退出不符;这已经修复。 

{p 5 9 2}
{* fix}
7.  (Mac) 使用 {help statslm} 启动的低于平均值的错误即使没有合并自变量，现在将它们与必要参数一起进行。

{p 4 9 2}
{* enhancement}
8.  (Mac) GUI Graphs 框图的结果和变化。{hello new design "graphics_parameters.html"};
    引入了单个图形导入到分析，是专业的解决方案。

{p 4 9 2}
{* fix}
9.  (AI) 在输入命令框中使用 {? stats} 的年份一栏中出现过 伪造过的数值;此问题已修复。

{hline 8} {hi:update 15jun2003} {hline}

{title:Ado-files}

{p 5 9 2}
{* fix}
1.  (Mac) 对话框在更新期间未完成，产生多种命令分清晰更改当前显示：这一问题已修复。
{p 5 9 2}
{* fix}
2.  (Mac) 变量文本入选限制为246字符，长度限制更为合理。

{p 5 9 2}
{* fix}
3.  (Mac) 在运行时结束时不显示参数，就不该更新槽；此问题已修复。

{hline 8} {hi:update 08may2003} {hline}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <whatsnew8.sthlp>}