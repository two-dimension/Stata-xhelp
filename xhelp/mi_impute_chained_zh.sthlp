{smcl}
{* *! version 1.0.18  15may2018}{...}
{viewerdialog mi "dialog mi"}{...}
{vieweralsosee "[MI] mi impute chained" "mansection MI miimputechained"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[MI] Intro" "help mi_zh"}{...}
{vieweralsosee "[MI] Intro substantive" "help mi intro substantive"}{...}
{vieweralsosee "[MI] mi impute" "help mi_impute_zh"}{...}
{vieweralsosee "[MI] Glossary" "help mi glossary"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[MI] mi impute monotone" "help mi_impute_monotone_zh"}{...}
{vieweralsosee "[MI] mi impute mvn" "help mi_impute_mvn_zh"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[MI] mi estimate" "help mi_estimate_zh"}{...}
{viewerjumpto "Syntax" "mi_impute_chained_zh##syntax"}{...}
{viewerjumpto "Menu" "mi_impute_chained_zh##menu"}{...}
{viewerjumpto "Description" "mi_impute_chained_zh##description"}{...}
{viewerjumpto "Links to PDF documentation" "mi_impute_chained_zh##linkspdf"}{...}
{viewerjumpto "Options" "mi_impute_chained_zh##options"}{...}
{viewerjumpto "Examples" "mi_impute_chained_zh##examples"}{...}
{viewerjumpto "Stored results" "mi_impute_chained_zh##results"}
{help mi_impute_chained:English Version}
{hline}{...}
{p2colset 1 27 29 2}{...}
{p2col:{bf:[MI] mi impute chained} {hline 2}}使用链式方程填补缺失值{p_end}
{p2col:}({mansection MI miimputechained:查看完整的 PDF 手册条目}){p_end}
{p2colreset}{...}


{marker syntax}{...}
{title:语法}

{p 4 4 2}预测方程的默认规范，基本语法

{p 8 19 2}{cmd:mi} {cmdab:imp:ute} {cmdab:chain:ed}
{cmd:(}{it:{help mi_impute_chained##uvmethod:uvmethod}}{cmd:)}
       {it:{help mi_impute_chained##ivars:ivars}} 
[{cmd:=} {it:{help indepvars}}] [{it:{help if_zh}}]
[{it:{help mi_impute_chained##weight:weight}}]
[{cmd:,} {it:{help mi_impute##impopts:impute_options}} {it:{help mi_impute_chained##opts1:options}}]


{p 4 4 2}预测方程的默认规范，完整语法

{p 8 19 2}{cmd:mi} {cmdab:imp:ute} {cmdab:chain:ed} {it:lhs}
[{cmd:=} {it:{help indepvars}}] [{it:{help if_zh}}]
[{it:{help mi_impute_chained##weight:weight}}]
[{cmd:,} {it:{help mi_impute##impopts:impute_options}} {it:{help mi_impute_chained##opts1:options}}]


{p 4 4 2}预测方程的自定义规范

{p 8 19 2}{cmd:mi} {cmdab:imp:ute} {cmdab:chain:ed} {it:lhsc}
[{cmd:=} {it:{help indepvars}}] [{it:{help if_zh}}]
[{it:{help mi_impute_chained##weight:weight}}]
[{cmd:,} {it:{help mi_impute##impopts:impute_options}}
 {it:{help mi_impute_chained##opts1:options}}]


{marker lhs}{...}
{phang}
其中 {it:lhs} 是 {it:lhs_spec} [{it:lhs_spec} [...]]，且 {it:lhs_spec} 是

{phang2}
{cmd:(}{it:{help mi_impute_chained##uvmethod:uvmethod}} [{it:{help if_zh}}] 
[{cmd:,} {it:{help mi_impute_chained##uvspec_options:uvspec_options}}]{cmd:)}
         {it:{help mi_impute_chained##ivars:ivars}}

{marker lhsc}{...}
{phang}
{it:lhsc} 是 {it:lhsc_spec} [{it:lhsc_spec} [...]]，且 {it:lhsc_spec} 是

{phang2}
{cmd:(}{it:{help mi_impute_chained##uvmethod:uvmethod}} [{it:{help if_zh}}] 
[{cmd:,} {opth incl:ude(mi_impute_chained##xspec:xspec)} {opth omit(varlist)}
{opt noimp:uted} {it:{help mi_impute_chained##uvspec_options:uvspec_options}}]{cmd:)}
{it:{help mi_impute_chained##ivars:ivars}}

{marker ivars}{...}
{phang}
{it:ivars}（如果 {it:uvmethod} 是 {cmd:intreg} 则为 {it:newivar}）是填补变量的名称。

{marker uvspec_options}{...}
{phang}
{it:uvspec_options} 是 {opt asc:ontinuous}、{opt noi:sily} 和方法特定的 {it:options}，如手册条目中描述的每个 {help mi_impute_chained##uvmethod:单变量填补方法}。

{phang}
{cmd:include()},{cmd:omit()} 和 {cmd:noimputed} 选项允许您自定义默认预测方程。


{marker uvmethod}{...}
{synoptset 20}{...}
{synopthdr:uvmethod}
{synoptline}
{synopt: {opt reg:ress}}连续变量的线性回归；
       {manhelp mi_impute_regress MI:mi impute regress}{p_end}
{synopt: {opt pmm}}连续变量的预测均值匹配；
       {manhelp mi_impute_pmm MI:mi impute pmm}{p_end}
{synopt: {opt truncreg}}受限范围的连续变量的截断回归；
       {manhelp mi_impute_truncreg MI:mi impute truncreg}{p_end}
{synopt: {opt intreg}}用于部分观察（审查）连续变量的区间回归； {manhelp mi_impute_intreg MI:mi impute intreg}{p_end}
{synopt: {opt logi:t}}二元变量的逻辑回归； 
       {manhelp mi_impute_logit MI:mi impute logit}{p_end}
{synopt: {opt olog:it}}序数变量的有序逻辑回归； 
       {manhelp mi_impute_ologit MI:mi impute ologit}{p_end}
{synopt: {opt mlog:it}}名义变量的多项式逻辑回归；
       {manhelp mi_impute_mlogit MI:mi impute mlogit}{p_end}
{synopt: {opt poisson}}计数变量的泊松回归；
       {manhelp mi_impute_poisson MI:mi impute poisson}{p_end}
{synopt: {opt nbreg}}过度离散计数变量的负二项回归；
       {manhelp mi_impute_nbreg MI:mi impute nbreg}{p_end}
{synoptline}


{marker opts1}{...}
{synoptset 20 tabbed}{...}
{synopthdr:options}
{synoptline}
{syntab:MICE 选项}
{synopt:{opt burn:in(#)}}指定预热期的迭代次数； 
默认值为 {cmd:burnin(10)}{p_end}
{synopt:{opt chainonly}}在不创建数据填补的情况下，仅在预热期的长度内执行链式迭代{p_end}
{synopt:{opt aug:ment}}在所有分类填补变量中存在完美预测的情况下执行增强回归{p_end}
{synopt:{opt noimp:uted}}不在任何预测方程中包含填补变量{p_end}
{synopt:{opt boot:strap}}使用有放回抽样的方法估计模型参数{p_end}
{synopt:{helpb mi_impute_chained##savetrace:savetrace(...)}}将每次迭代的填补值摘要保存到 {it:filename}{cmd:.dta} 文件中{p_end}

{syntab:报告}
{synopt: {opt dryrun}}显示条件规范而不填补数据{p_end}
{synopt: {opt report}}显示有关每个条件规范的报告{p_end}
{synopt: {opt chaindots}}在执行链式迭代时显示点{p_end}
{synopt: {opt showe:very(#)}}显示来自每个 {it:#} 次迭代的中间结果{p_end}
{synopt: {opth showi:ter(numlist)}}显示来自 {it:numlist} 的每次迭代的中间结果{p_end}

{syntab:高级}
{synopt: {opt orderasis}}按照指定顺序填补变量{p_end}
{synopt: {opt nomonotone}}即使变量遵循单调缺失模式，也使用链式方程进行 填补； 默认值是使用单调方法{p_end}
{synopt: {opt nomonotonechk}}不检查变量是否遵循单调缺失模式{p_end}
{synoptline}
{p 4 6 2}
在使用 {cmd:mi} {cmd:impute} {cmd:chained} 之前，您必须 {cmd:mi} {cmd:set} 数据； 请参见 {manhelp mi_set MI:mi set}。{p_end}
{p 4 6 2}
在使用 {cmd:mi} {cmd:impute} {cmd:chained} 之前，您必须 {cmd:mi} {cmd:register} {it:ivars} 作为填补变量； 请参见 {manhelp mi_set MI:mi set}。{p_end}
{p 4 6 2}
{it:indepvars} 可以包含因子变量； 请参见 {help fvvarlist_zh}。
{p_end}
{marker weight}{...}
{p 4 6 2}
允许使用 {cmd:fweight}s，{cmd:aweight}s（仅适用于 {cmd:regress}、{cmd:pmm}、{cmd:truncreg} 和 {cmd:intreg}）、{cmd:iweight}s 和 {cmd:pweight}s； 请参见 {help weight_zh}。


{marker menu}{...}
{title:菜单}

{phang}
{bf:统计 > 多重填补}


{marker description}{...}
{title:描述}

{pstd}
{cmd:mi} {cmd:impute} {cmd:chained} 使用链式方程迭代填补多个变量中的缺失值，链式方程是单变量填补方法的序列，具有
{help mi_glossary##def_FCS:完全条件规范}（FCS）的预测方程。 它适应任意缺失值模式。 
您可以通过指定 {cmd:by()} 选项对数据的不同子集执行单独的填补。 
您还可以考虑频率、分析性（仅适用于连续变量）、重要性和抽样权重。


{marker linkspdf}{...}
{title:PDF 文档链接}

        {mansection MI miimputechainedRemarksandexamples:备注和示例}

        {mansection MI miimputechainedMethodsandformulas:方法和公式}

{pstd}
以上部分不包含在此帮助文件中。


{marker options}{...}
{title:选项}

{dlgtab:主要}

{phang}
{cmd:add()}, {cmd:replace}, {cmd:rseed()}, {cmd:double}, {cmd:by()}; 请参见 {manhelp mi_impute MI:mi impute}。

{pstd}
单击 {bf:创建 ...} 按钮时弹出的规格对话框中出现以下选项，这些选项允许您自定义默认预测方程。

{marker xspec}{...}
{phang}
{opt include(xspec)} 指定在与当前左侧规范 {it:{help mi_impute_chained##lhsc:lhsc_spec}} 相应的所有填补变量的预测方程中包括 {it:xspec}。 
{it:xspec} 包含用括号括起来的完整变量和填补变量的表达式。 
如果在 {it:lhsc_spec} 或与 {opt mi impute chained} 中指定了 {opt noimputed} 选项，则 {it:xspec} 还可以包含填补变量。 
{it:xspec} 可以包含因子变量； 请参见 {help fvvarlist_zh}。

{phang}
{opth omit(varlist)} 指定从与当前左侧规范 {it:{help mi_impute_chained##lhsc:lhsc_spec}} 相应的所有填补变量的预测方程中省略 {it:varlist}。 
{it:varlist} 可以包含完整变量或填补变量。 
{it:varlist} 可以包含因子变量； 请参见 {help fvvarlist_zh}。 在 {opt omit()} 中，您应按它们在预测方程中出现的方式列出要省略的变量（允许使用缩写）。 
例如，如果变量 {opt x1} 被列为因子变量，则使用 {cmd:omit(i.x1)} 将其从预测方程中省略。

{phang}
{opt noimputed} 指定不自动在与当前 {it:uvmethod} 相应的填补变量的预测方程中包括填补变量。

{phang}
{it:uvspec_options} 是在每个单变量填补方法（{it:uvmethod}）中指定的选项。 
{it:uvspec_options} 包括 {opt asc:ontinuous}、{opt noi:sily} 和每个单变量填补方法手册条目中描述的特定方法的 {it:options}。

{phang2}
{opt ascontinuous} 指定当前 {it:uvmethod} 相应的分类填补变量应在所有预测方程中作为连续变量包括。 仅当 {it:uvmethod} 是 {cmd:logit}、{cmd:ologit} 或 {cmd:mlogit} 时才允许此选项。

{phang2}
{opt noisily} 指定显示当前单变量模型对观察数据的拟合输出。 
此选项在与 {opt showevery(#)} 或 {opt showiter(numlist)} 选项配合使用时，显示特定迭代的特定单变量填补模型的结果是非常有用的。

{dlgtab:MICE 选项}

{phang}
{opt burnin(#)} 指定每个链的预热期的迭代次数（每个填补一个链）。 
默认值为 {cmd:burnin(10)}。 
此选项指定链达到近似平稳性或相应地收敛到平稳分布所需的迭代次数。 
预热期所需的长度将取决于使用的起始值和观察到的缺失数据模式。 
在获得填补之前，查看链的收敛性以确保预热期的充分长度是重要的； 
请参见 {it:{mansection MI miimputechainedRemarksandexamplesConvergenceofMICE:Convergence of MICE}} 下的 {it:备注和示例} 在 {bf:[MI] mi impute chained} 中。 
所提供的默认值是当前文献推荐的。 
但是，您有责任确定进行的迭代是否足够。

{phang}
{opt chainonly} 指定 {cmd:mi impute chained} 在预热期的长度内执行链式迭代，然后停止。 
此选项在与 {cmd:savetrace()} 结合使用时非常有用，以在填补之前检查方法的收敛性。 
当指定 {cmd:chainonly} 时，不会创建填补，因此不需要使用 {cmd:add()} 或 {cmd:replace}，并在指定时会被忽略。

{phang}
包含帮助 mi_impute_uvopt_augment 
此选项等价于在所有分类填补方法的单变量规范中指定 {cmd:augment}：{cmd:logit}、{cmd:ologit} 和 {cmd:mlogit}。

{phang}
{opt noimputed} 指定在任何预测方程中不自动包含填补变量。 
此选项很少使用。 
如果您希望在所有预测方程中使用不同的填补变量集，此选项非常方便。 
它等价于在所有单变量规范中指定 {cmd:noimputed}。

{phang}
包含帮助 mi_impute_uvopt_bootstrap 
此选项等价于在所有单变量规范中指定 {cmd:bootstrap}。

{marker savetrace}{...}
{phang}
{cmd:savetrace(}{help filename_zh:{it:filename}}[{cmd:,} {it:traceopts}]{cmd:)} 指定将每次迭代的填补值的均值和标准差保存到名为 {it:filename}{cmd:.dta} 的 Stata 数据集中。 
如果文件已存在，则 {cmd:replace} 子选项指定覆盖现有文件。 
{cmd:savetrace()} 对于监控链算法的收敛性非常有用。 
此选项不能与 {cmd:by()} 结合使用。

{phang2}
{it:traceopts} 是 {cmd:replace}、{cmd:double} 和 {cmd:detail}。

{phang3}
{cmd:replace} 表示如果存在，则将 {it:filename}{cmd:.dta} 覆盖。

{phang3}
{cmd:double} 指定变量以 {cmd:double} 存储，表示 8 字节的实数。 
默认情况下，它们以 {cmd:float} 存储，表示 4 字节的实数。 
请参见 {helpb datatypes:[D] 数据类型}。

{phang3}
{cmd:detail} 指定保存额外的填补值摘要，包括最小值、最大值以及第 25、第 50 和第 75 个百分位数，在 {it:filename}{cmd:.dta} 中。

{dlgtab:报告}

{phang}
{cmd:dots}、{cmd:noisily}、{cmd:nolegend}； 请参见 {manhelp mi_impute MI:mi impute}。 
{cmd:noisily} 指定显示所有单变量条件模型对观察数据的拟合输出。 
{cmd:nolegend} 抑制所有填补表的图例，这些图例包含使用的单变量填补方法的标题的图例、在单变量规范中使用 {cmd:conditional()} 时的条件填补图例，以及在指定 {cmd:by()} 时的组图例。

{phang}
{cmd:dryrun} 指定显示将用于填补每个变量的条件规范，而不实际填补数据。 
建议在填补之前检查条件模型的规范时使用此选项。

{phang}
{cmd:report} 指定显示有关每个单变量条件规范的报告。 
建议在填补之前检查条件模型的规范时，将此选项与 {cmd:dryrun} 结合使用。

{phang}
{opt chaindots} 指定在所有链式迭代时以点的形式显示。 
每次失败的迭代显示一个 {cmd:x}。

{phang}
{opt showevery(#)} 指定显示来自每个 {it:#} 次迭代的中间回归输出。 
此选项要求 {cmd:noisily}。 
如果 {cmd:noisily} 在 {cmd:mi impute chained} 中指定，则显示所有单变量条件模型的指定迭代的输出。 
如果 {cmd:noisily} 在单变量规范中使用，则显示来自指定迭代的对应单变量模型的输出。

{phang}
{opth showiter(numlist)} 指定显示来自 {it:numlist} 中每次迭代的中间回归输出。 
此选项要求 {cmd:noisily}。 
如果 {cmd:noisily} 在 {cmd:mi impute chained} 中指定，则显示所有单变量条件模型的指定迭代的输出。 
如果 {cmd:noisily} 在单变量规范中使用，则显示来自指定迭代的对应单变量模型的输出。

{dlgtab:高级}

{phang}
{cmd:force}; 请参见 {manhelp mi_update MI:mi impute}。

{phang}
{cmd:orderasis} 请求按指定顺序填补变量。 
默认情况下，变量按照从观察最多的到观察最少的顺序填补。

{phang}
{opt nomonotone}，一个很少使用的选项，指定不使用单调填补，并继续链式迭代，即使填补变量遵循单调缺失模式。 
{opt mi impute chained} 检查填补变量是否具有单调缺失数据模式，如果是，则使用单调方法（不进行迭代）进行填补。 
如果使用 {opt nomonotone}，则 {opt mi impute chained} 进行迭代填补，即使变量是单调缺失的。

{phang}
{opt nomonotonechk} 指定不检查填补变量是否遵循单调缺失模式。 
默认情况下，{opt mi impute chained} 检查填补变量是否具有单调缺失数据模式，如果是，则使用单调方法（不进行迭代）进行填补。 
如果使用 {opt nomonotonechk}，则 {opt mi impute chained} 不检查缺失数据模式并进行迭代填补，即使变量是单调缺失的。 
一旦确定填补变量具有任意缺失数据模式，可以使用此选项以避免可能耗时的检查； 当填补大量变量时，单调性检查可能会耗时。

{pstd}
以下选项可与 {opt mi impute} 一起使用，但在对话框中未显示：

{phang}
{cmd:noupdate}; 请参见 {manhelp noupdate_option MI:noupdate option}。


{marker examples}{...}
{title:示例： 默认预测方程}

{pstd}
    设置
{p_end}
{phang2}
{cmd:. webuse mheart8s0}
{p_end}

{pstd}
    描述 {cmd:mi} 数据
{p_end}
{phang2}
{cmd:. mi describe}
{p_end}

{pstd}
    检查缺失数据模式
{p_end}
{phang2}
{cmd:. mi misstable pattern}
{p_end}

{pstd}
填补 {cmd:bmi} 和 {cmd:age}，使用线性回归
{p_end}
{phang2}
{cmd:. mi impute chained (regress) bmi age = attack smokes hsgrad female, add(10)}
{p_end}

{pstd}
用预测均值匹配填补 {cmd:bmi}，用线性回归填补 {cmd:age}
{p_end}
{phang2}
{cmd:. mi impute chained (pmm, knn(5)) bmi (regress) age = attack smokes hsgrad female, replace}
{p_end}


{title:示例： 自定义预测方程}

{pstd}
    设置
{p_end}
{phang2}
{cmd:. webuse mheart8s0, clear}
{p_end}

{pstd}
填补 {cmd:bmi}，使用预测均值匹配，用线性回归填补 {cmd:age}； 从 {cmd:bmi} 的预测方程中省略 {cmd:hsgrad}
{p_end}
{phang2}
{cmd:. mi impute chained ///}{break}
{cmd:    (pmm, knn(5) omit(hsgrad)) bmi ///}{break}
{cmd:    (regress) age = attack smokes hsgrad female, add(10)}
{p_end}

{pstd}
在上述内容中，填补 {cmd:age} 使用预测均值匹配，并将年龄平方包含在 {cmd:bmi} 的预测方程中
{p_end}
{phang2}
{cmd:. mi impute chained ///}{break}
{cmd:    (pmm, knn(5) omit(hsgrad) include((age^2))) bmi ///}{break}
{cmd:    (pmm, knn(5)) age = attack smokes hsgrad female, replace}
{p_end}


{title:示例： 在子样本上填补}

{pstd}
在上一个示例中，分别对男性和女性填补 {cmd:bmi} 和 {cmd:age}； 执行填补时显示点
{p_end}
{phang2}
{cmd:. mi impute chained ///}{break}
{cmd:    (pmm, knn(5) omit(hsgrad) include((age^2))) bmi ///}{break}
{cmd:    (pmm, knn(5)) age = attack smokes hsgrad, replace by(female) dots}
{p_end}


{title:示例： 条件填补}

{pstd}
    设置
{p_end}
{phang2}
{cmd:. webuse mheart10s0, clear}
{p_end}

{pstd}
    描述 {cmd:mi} 数据
{p_end}
{phang2}
{cmd:. mi describe}
{p_end}

{pstd}
    用预测均值匹配填补 {cmd:bmi} 和 {cmd:age}，用逻辑回归填补 {cmd:smokes} 和 {cmd:hightar}； 仅使用 {cmd:smokes==1} 的观察值填补 {cmd:hightar}
{p_end}
{phang2}
{cmd:. mi impute chained ///}{break}
{cmd:    (pmm, knn(5)) bmi ///}{break}
{cmd:    (pmm, knn(5)) age ///}{break}
{cmd:    (logit, cond(if smokes==1) omit(i.smokes)) hightar ///}{break}
{cmd:    (logit) smokes = attack hsgrad female, add(10)}
{p_end}


{marker results}{...}
{title:存储结果}

{pstd}
{cmd:mi impute chained} 在 {cmd:r()} 中存储以下内容：

{synoptset 25 tabbed}{...}
{p2col 5 25 29 2: 标量}{p_end}
{synopt:{cmd:r(M)}}填补的总次数{p_end}
{synopt:{cmd:r(M_add)}}新增填补的次数{p_end}
{synopt:{cmd:r(M_update)}}更新填补的次数{p_end}
{synopt:{cmd:r(k_ivars)}}填补变量的数量{p_end}
{synopt:{cmd:r(burnin)}}预热迭代次数{p_end}
{synopt:{cmd:r(N_g)}}填补组的数量（如果未指定 {cmd:by()} 则为 {cmd:1}）{p_end}

{synoptset 25 tabbed}{...}
{p2col 5 25 29 2: 宏}{p_end}
{synopt:{cmd:r(method)}}填补方法的名称（{cmd:chained}）{p_end}
{synopt:{cmd:r(ivars)}}填补变量的名称{p_end}
{synopt:{cmd:r(uvmethods)}}单变量填补方法的名称{p_end}
{synopt:{cmd:r(init)}}初始化类型{p_end}
{synopt:{cmd:r(rngstate)}}使用的随机数状态{p_end}
{synopt:{cmd:r(by)}}在 {cmd:by()} 中指定的变量的名称{p_end}

{synoptset 25 tabbed}{...}
{p2col 5 25 29 2: 矩阵}{p_end}
{synopt:{cmd:r(N)}}每组中的填补样本的观察数量（按变量）{p_end}
{synopt:{cmd:r(N_complete)}}每组中的填补样本中的完整观察数量（按变量）{p_end}
{synopt:{cmd:r(N_incomplete)}}每组中的填补样本中的不完整观察数量（按变量）{p_end}
{synopt:{cmd:r(N_imputed)}}每组中的填补样本中的填补观察数量（按变量）{p_end}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <mi_impute_chained.sthlp>}