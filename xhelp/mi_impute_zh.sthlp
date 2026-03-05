{smcl}
{* *! version 1.0.28  15may2018}{...}
{viewerdialog mi "dialog mi"}{...}
{vieweralsosee "[MI] mi impute" "mansection MI miimpute"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[MI] Intro" "help mi_zh"}{...}
{vieweralsosee "[MI] Intro substantive" "help mi intro substantive"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[MI] mi estimate" "help mi_estimate_zh"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[MI] Glossary" "help mi_glossary_zh"}{...}
{viewerjumpto "Syntax" "mi_impute_zh##syntax"}{...}
{viewerjumpto "Menu" "mi_impute_zh##menu"}{...}
{viewerjumpto "Description" "mi_impute_zh##description"}{...}
{viewerjumpto "Links to PDF documentation" "mi_impute_zh##linkspdf"}{...}
{viewerjumpto "Options" "mi_impute_zh##options"}{...}
{viewerjumpto "Remarks" "mi_impute_zh##remarks"}{...}
{viewerjumpto "Examples" "mi_impute_zh##examples"}{...}
{viewerjumpto "Stored results" "mi_impute_zh##results"}{...}
{viewerjumpto "References" "mi_impute_zh##references"}
{help mi_impute:English Version}
{hline}{...}
{p2colset 1 19 21 2}{...}
{p2col:{bf:[MI] mi impute} {hline 2}}填补缺失值
{p_end}
{p2col:}({mansection MI miimpute:查看完整PDF手册条目}){p_end}
{p2colreset}{...}


{marker syntax}{...}
{title:语法}

{p 8 19 2}{cmd:mi} {cmdab:imp:ute} {it:{help mi_impute##methods:方法}} ...
   [{cmd:,} {it:{help mi_impute##impopts:填补选项}} ... ]


{synoptset 24 tabbed}{...}
{marker methods}{...}
{synopthdr:方法}
{synoptline}
{syntab:单变量}
{synopt: {help mi_impute_regress_zh:{ul:回归}分析}}线性回归用于连续变量{p_end}
{synopt: {help mi_impute_pmm_zh:pmm}}用于连续变量的预测均值匹配{p_end}
{synopt: {help mi_impute_truncreg_zh:truncreg}}用于具有限制范围的连续变量的截断回归{p_end}
{synopt: {help mi_impute_intreg_zh:intreg}}用于连续半观察（右删失）变量的区间回归{p_end}
{synopt: {help mi_impute_logit_zh:{ul:逻辑}回归}}用于二元变量的逻辑回归{p_end}
{synopt: {help mi_impute_ologit_zh:{ul:有序逻辑}回归}}用于有序变量的有序逻辑回归{p_end}
{synopt: {help mi_impute_mlogit_zh:{ul:多项逻辑}回归}}用于名义变量的多项逻辑回归{p_end}
{synopt: {help mi_impute_poisson_zh:poisson}}用于计数变量的泊松回归{p_end}
{synopt: {help mi_impute_nbreg_zh:nbreg}}用于超分散计数变量的负二项回归{p_end}

{syntab:多变量}
{synopt: {help mi_impute_monotone_zh:{ul:单}调}}使用单调缺失模式的顺序填补{p_end}
{synopt: {help mi_impute_chained_zh:{ul:链}式}}使用链式方程的顺序填补{p_end}
{synopt: {help mi_impute_mvn_zh:mvn}}多元正态回归{p_end}

{syntab:用户定义}
{synopt: {help mi_impute_usermethod_zh:{it:用户方法}}}用户定义的填补方法{p_end}
{synoptline}


{synoptset 24 tabbed}{...}
{marker impopts}{...}
{synopthdr:填补选项}
{synoptline}
{syntab:主要}
{p2coldent :* {opt add(#)}}指定要添加的填补数量；当不存在填补时为必需{p_end}
{p2coldent:* {opt replace}}用新的填补值替换现有填补{p_end}
{synopt: {opt rseed(#)}}指定随机数种子{p_end}
{synopt: {opt double}}以双精度存储填补值；默认以{cmd:float}存储{p_end}
{synopt:{cmd:by(}{help varlist_zh:{it:变量列表}} [{cmd:,} {help mi_impute##byopts:{it:byopts}}]{cmd:)}}对由{it:varlist}形成的每个组单独进行填补（不允许与{it:usermethod}一起使用）{p_end}

{syntab:报告}
{synopt: {opt dots}}在完成填补时显示点{p_end}
{synopt: {opt noi:sily}}显示中间输出{p_end}
{synopt: {opt noleg:end}}抑制所有表格图例{p_end}

{syntab:高级}
{synopt: {opt force}}即使遇到缺失的填补值也继续填补{p_end}

{synopt: {opt noup:date}}不执行{cmd:mi update}（与{it:usermethod}一起不允许）；参见
{manhelp mi_noupdate_option MI:noupdate option}{p_end}
{synoptline}
{p2colreset}{...}
{p 4 6 2}
* {opt add(#)} 在没有填补的情况下是必需的； 如果存在填补，则需要 {opt add(#)} 或 {cmd:replace}。{p_end}
{p 4 6 2}
{opt noupdate} 不会出现在对话框中。{p_end}
{p 4 6 2}
您必须在使用 {cmd:mi} {cmd:填补} 前 {cmd:mi set} 您的数据；参见 {manhelp mi_set MI:mi set}.{p_end}


{marker menu}{...}
{title:菜单}

{phang}
{bf:统计 > 多重填补}


{marker description}{...}
{title:描述}

{pstd}
{cmd:mi} {cmd:impute} 使用指定方法填补单个变量或多个变量的缺失值（{cmd:.}）。可用的方法（按变量类型和缺失数据模式）在下表中进行了总结。

{col 8}单填补变量（单变量填补）
{col 8}{hline 60}
{col 8}{ralign 20:模式}{ralign 20:类型}{ralign 20:填补方法}
{col 8}{hline 60}
{col 28}{ralign 20:连续}{ralign 20:{cmd:regress}, {cmd:pmm},}
{col 28}{ralign 20:          }{ralign 20:{cmd:truncreg}, {cmd:intreg}}
{col 8}{ralign 20:始终单调}{ralign 20:二元}{ralign 20:{cmd:logit}}
{col 28}{ralign 20:分类}{ralign 20:{cmd:ologit}, {cmd:mlogit}}
{col 28}{ralign 20:计数}{ralign 20:{cmd:poisson}, {cmd:nbreg}}
{col 8}{hline 60}

{col 8}多填补变量（多变量填补）
{col 8}{hline 60}
{col 8}{ralign 20:模式}{ralign 20:类型}{ralign 20:填补方法}
{col 8}{hline 60}
{col 8}{ralign 20:单调缺失}{ralign 20:混合}{ralign 20:{cmd:monotone}}
{col 8}{ralign 20:任意缺失}{ralign 20:混合}{ralign 20:{cmd:chained}}
{col 8}{ralign 20:任意缺失}{ralign 20:连续}{ralign 20:{cmd:mvn}}
{col 8}{hline 60}

{pstd}
对于 {cmd:mi} {cmd:impute} 子条目的建议阅读顺序是

        {manhelp mi_impute_regress MI:mi impute regress}
        {manhelp mi_impute_pmm MI:mi impute pmm}
        {manhelp mi_impute_truncreg MI:mi impute truncreg}
        {manhelp mi_impute_intreg MI:mi impute intreg}
        {manhelp mi_impute_logit MI:mi impute logit}
        {manhelp mi_impute_ologit MI:mi impute ologit}
        {manhelp mi_impute_mlogit MI:mi impute mlogit}
        {manhelp mi_impute_poisson MI:mi impute poisson}
        {manhelp mi_impute_nbreg MI:mi impute nbreg}

        {manhelp mi_impute_monotone MI:mi impute monotone}
        {manhelp mi_impute_chained MI:mi impute chained}
        {manhelp mi_impute_mvn MI:mi impute mvn}
        {manhelpi mi_impute_usermethod MI:mi impute usermethod}


{marker linkspdf}{...}
{title:PDF文档链接}

        {mansection MI miimputeRemarksandexamples:备注与示例}

        {mansection MI miimputeMethodsandformulas:方法和公式}

{pstd}
上述部分不包括在此帮助文件中。


{marker options}{...}
{title:选项}

{dlgtab:主要}

{phang}
{opt add(#)} 指定要添加到 {cmd:mi} 数据中的填补数量。如果数据中没有填补，则该选项是必需的。如果存在填补，则 {cmd:add()} 可选。填补的总数量不能超过 1,000。

{phang}
{opt replace} 指定用新的填补值替换现有填补值。当 {cmd:mi} 数据中已经存在填补时，必须指定 {cmd:replace} 或 {cmd:add()} 之一。

{phang}
{opt rseed(#)} 设置随机数种子。该选项可用于重现结果。 {opt rseed(#)} 等效于在调用 {cmd:mi} {cmd:impute} 之前键入 {cmd:set} {cmd:seed} {it:#}；参见 {manhelp set_seed R:set seed}。

{phang} 
{opt double} 指定填补值以 {cmd:double} 类型存储。默认情况下，以 {cmd:float} 存储。{cmd:mi} {cmd:impute} 仅在必要时才做此区分。例如，如果使用 {cmd:logit} 方法，则填补值存储为 {cmd:byte}。

{marker byopts}{...}
{phang}
{cmd:by(}{varlist} [{cmd:,} {it:byopts}]{cmd:)} 指定对每个按组进行单独填补。通过在 {it:varlist} 中的变量相等值来识别按组。在{help mi_glossary##original_data:原始数据}中（{it:m}=0）。缺失的分类在 {it:varlist} 中会被省略，除非在 {cmd:by()} 内指定了 {cmd:missing} 子选项。填补变量和被动变量不能在 {cmd:by()} 中指定。该选项不允许与用户自定义填补方法 {it:usermethod} 一起使用。

{phang2}
{it:byopts} 为 {cmdab:mis:sing}, {cmd:noreport}, {cmdab:noleg:end} 和 {cmd:nostop}。

{phang3}
{cmd:missing} 指定在 {it:varlist} 中缺失分类不被省略。

{phang3}
{cmd:noreport} 抑制报告每个组的中间信息。

{phang3}
{cmd:nolegend} 抑制在填补表之前出现的组图例的显示，当发现长组描述时。

{phang3}
{cmd:nostop} 指定在某些组中填补失败时继续填补。默认情况下，{cmd:mi impute} 在这种情况下会终止并报错。

{dlgtab:报告}

{marker dots}{...}
{phang}
{cmd:dots} 指定在成功完成填补时显示点。如果指定的填补变量中的任何一个仍有缺失值，则会显示 {bf:x}。

{phang}
{cmd:noisily} 指定显示 {cmd:mi impute} 的中间输出。 

{phang}
{cmd:nolegend} 抑制所有在填补表之前出现的图例显示。

{dlgtab:高级}

{phang}
{cmd:force} 指定在遇到缺失填补值时也继续填补。默认情况下，如果遇到缺失填补值，{cmd:mi impute} 会终止并报错。

{pstd}
以下选项可在 {opt mi impute} 中使用，但未显示在对话框中：

{phang}
{cmd:noupdate} 在某些情况下抑制该命令可能执行的自动 {cmd:mi update}；参见 {manhelp noupdate_option MI:noupdate option}。该选项很少使用，不适用于用户自定义填补方法 {it:usermethod}。


{marker remarks}{...}
{title:备注}

	{help mi_impute##mi_impute_use:使用 mi impute}
	{help mi_impute##mi_impute_methods:填补方法}


{marker mi_impute_use}{...}
{title:使用 mi impute}

{pstd}
在使用 {cmd:mi} {cmd:impute} 之前，数据必须已 {helpb mi set}。所有需填补缺失值的变量必须注册为填补变量；参见 {helpb mi register}。如果没有填补，您必须指定 {cmd:add()}。如果填补已存在，则必须指定 {cmd:add()} 或 {cmd:replace}。

{pstd}
如果没有填补，您必须在 {cmd:add()} 中指定要添加的填补数量。如果已存在填补，您有三个选择：

{phang}
1. 通过指定 {cmd:add()} 选项，将新的填补添加到现有填补中。{p_end}
{phang}
2. 通过同时指定 {cmd:add()} 和 {cmd:replace} 选项来添加新填补并替换现有填补。{p_end}
{phang}
3. 通过指定 {cmd:replace} 选项替换现有填补值。{p_end}

{pstd}
{cmd:mi} {cmd:impute} 可能会更改指定填补变量的类型和数据的排序。这些更改是特定于声明的 {cmd:mi} 风格。


{marker mi_impute_methods}{...}
{title:填补方法}

{pstd}
{cmd:mi impute} 在缺失数据随机缺失假设下支持单变量和多变量填补（见 {mansection MI IntrosubstantiveRemarksandexamplesAssumptionsaboutmissingdata:{it:缺失数据的假设}} 相关条目，在 {bf:[MI] 介绍实质性} 中。

{pstd}
单变量填补用于填补单个变量。仅在变量独立且将在单独分析中使用时，可以重复使用以填补多个变量。要填补单个变量，您可以选择以下填补方法：{helpb mi impute regress:回归分析}、{helpb mi impute pmm:预测均值匹配}、{helpb mi impute truncreg:截断回归}、{helpb mi impute intreg:区间回归}、{helpb mi impute logit:逻辑回归}、{helpb mi impute ologit:有序逻辑回归}、{helpb mi impute mlogit:多项逻辑回归}、{helpb mi impute poisson:泊松回归}、和 {helpb mi impute nbreg:负二项回归}。

{pstd}
对于连续变量，可以使用 {cmd:regress} 或 {cmd:pmm} （例如，{help mi impute##R1987:Rubin [1987]} 和 {help mi impute##ST1996:Schenker和Taylor [1996]}）。对于具有限制范围的连续变量，用于截断变量，可以使用 {cmd:pmm} 或 {cmd:truncreg} （{help mi impute##R2001:Raghunathan et al. 2001}）。对于部分观测（或删失）变量，{cmd:intreg} 可用于填补（{help mi impute##R2007:Royston 2007}）。对于二元变量，可以使用 {cmd:logit} （{help mi impute##R1987:Rubin 1987}）。对于分类变量，如果它们是有序的，可以使用 {cmd:ologit} 填补缺失分类，如果它们是无序的，则可以使用 {cmd:mlogit} 填补缺失分类（{help mi impute##R2001:Raghunathan et al. 2001}）。对于计数变量，当存在过分散时，建议使用 {cmd:poisson} （{help mi impute##R2001:Raghunathan et al. 2001}）或 {cmd:nbreg} （{help mi impute##R2009:Royston 2009}）。另请参见 {help mi impute##vb2007:van Buuren (2007)} 获得单变量填补方法的详细列表。

{pstd}
在实践中，通常必须同时填补多个变量，这需要使用多变量填补方法。在这种情况下，填补方法的选择也取决于缺失值的模式。

{pstd}
如果变量遵循 {help mi_glossary##def_monotone:单调缺失模式}（见 {mansection MI IntrosubstantiveRemarksandexamplesPatternsofmissingdata:{it:缺失数据模式}} 在 {bf:[MI] 介绍实质性} 中），则可以使用单变量条件分布顺序填补，使用 {cmd:monotone} 方法实现（见 {helpb mi impute monotone:[MI] mi impute monotone}）。可以为每个填补变量指定单独的单变量填补模型，这允许同时填补不同类型的变量（{help mi impute##R1987:Rubin 1987}）。

{pstd} 当缺失值的模式是任意的时，使用迭代方法填补缺失值。{cmd:mvn} 方法（见 {helpb mi impute mvn:[MI] mi impute mvn}）使用多元正态数据增补来填补连续填补变量的缺失值（{help mi impute##S1997:Schafer 1997}）。例如，{help mi impute##A2001:Allison (2001)} 也讨论了如何使用该方法填补二元和分类变量。

{pstd}
另一种处理任意缺失值模式的多变量填补方法是使用链式方程的多重填补（MICE），也称为使用完全条件规范的填补（{help mi impute##vb1999:van Buuren, Boshuizen和Knook 1999}）和文献中的顺序回归多变量填补（{help mi impute##R2001:Raghunathan et al. 2001}）。MICE 方法在 {cmd:chained} 方法中实现（见 {manhelp mi_impute_chained MI:mi impute chained}），并使用类似吉布斯的算法通过单变量完全条件规格顺序填补多个变量。尽管缺乏理论依据，但 MICE 的灵活性使其成为实践中最受欢迎的选择之一。

{pstd}
有关 MICE 和多元正态填补的近期比较，请参见 {help mi impute##L2010:Lee和Carlin (2010)}。


{marker examples}{...}
{title:示例：单变量填补}

{pstd}
    设置
{p_end}
{phang2}{cmd:. webuse mheart1s0}
{p_end}

{pstd}
    描述 {cmd:mi} 数据
{p_end}
{phang2}{cmd:. mi describe}
{p_end}

{pstd}
    使用回归填补创建 20 个填补，然后添加 30 个
{p_end}
{phang2}{cmd:. mi impute regress bmi attack smokes age female hsgrad, add(20)}
{p_end}
{phang2}{cmd:. mi impute regress bmi attack smokes age female hsgrad, add(30)}
{p_end}

{pstd}
使用预测均值匹配并替换 50 个现有填补
{p_end}
{phang2}{cmd:. mi impute pmm bmi attack smokes age female hsgrad, replace knn(5)}
{p_end}


{title:示例：多变量填补}

{pstd}
设置
{p_end}
{phang2}
{cmd:. webuse mheart5s0, clear}
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
{cmd:. mi misstable nested}
{p_end}

{pstd}
使用单调填补（单调缺失模式）创建 10 个填补
{p_end}
{phang2}
{cmd:. mi impute monotone (regress) age bmi = attack smokes hsgrad female, add(10)}

{pstd}
使用多元正态填补（任意模式）并替换现有填补
{p_end}
{phang2}
{cmd:. mi impute mvn bmi = attack smokes hsgrad female, replace nolog}
{p_end}

{pstd}
使用链式方程填补（任意模式）并替换现有填补
{p_end}
{phang2}
{cmd:. mi impute chained (regress) age bmi = attack smokes hsgrad female, replace}
{p_end}


{title:示例：在子样本上填补}

{pstd}
设置
{p_end}
{phang2}
{cmd:. webuse mheart1s0, clear}
{p_end}

{pstd}
分性别填补，并创建 20 个填补
{p_end}
{phang2}
{cmd:. mi impute regress bmi attack smokes age hsgrad, add(20) by(female)}
{p_end}


{title:示例：条件填补}

{pstd}
设置
{p_end}
{phang2}
{cmd:. webuse mheart7s0, clear}
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
{cmd:. mi misstable nested}
{p_end}

{pstd}
仅使用填补变量 {cmd:smokes} 等于 1 的观测值填补 {cmd:hightar}
{p_end}
{phang2}
{cmd:. mi impute monotone}{break}
{cmd:    (regress) bmi age}{break} 
{cmd:    (logit, conditional(if smokes==1)) hightar}{break} 
{cmd:    (logit) smokes = attack hsgrad female, add(2)}
{p_end}


{title:示例：用户自定义填补方法}

{pstd}
参见 {help mi_impute_usermethod##examples:{it:示例}} 在
{manhelpi mi_impute_usermethod MI:mi impute usermethod}.


{marker results}{...}
{title:存储结果}

{pstd}
{cmd:mi impute} 在 {cmd:r()} 中存储以下内容：

{synoptset 25 tabbed}{...}
{p2col 5 25 29 2: 标量}{p_end}
{synopt:{cmd:r(M)}}填补的总数{p_end}
{synopt:{cmd:r(M_add)}}添加的填补数量{p_end}
{synopt:{cmd:r(M_update)}}更新的填补数量{p_end}
{synopt:{cmd:r(k_ivars)}}填补变量的数量{p_end}
{synopt:{cmd:r(N_g)}}被填补组的数量（如果未指定 {cmd:by()} 则为 {cmd:1}）{p_end}

{synoptset 25 tabbed}{...}
{p2col 5 25 29 2: 宏}{p_end}
{synopt:{cmd:r(method)}}填补方法名称{p_end}
{synopt:{cmd:r(ivars)}}填补变量名称{p_end}
{synopt:{cmd:r(rngstate)}}使用的随机数状态{p_end}
{synopt:{cmd:r(by)}}在 {cmd:by()} 中指定的变量名称{p_end}

{synoptset 25 tabbed}{...}
{p2col 5 25 29 2: 矩阵}{p_end}
{synopt:{cmd:r(N)}}在每个组中的填补样本中观察的数量（每个变量）{p_end}
{synopt:{cmd:r(N_complete)}}在每个组中的填补样本中完整观察的数量（每个变量）
{p_end}
{synopt:{cmd:r(N_incomplete)}}在每个组中的填补样本中不完整观察的数量（每个变量）
{p_end}
{synopt:{cmd:r(N_imputed)}}在每个组中的填补样本中填补的观察数量（每个变量）{p_end}

{pstd}
另请参见方法特定条目中的 {it:存储结果} 以获取附加存储结果的列表。


{marker references}{...}
{title:参考文献}

{marker A2001}{...}
{phang}
Allison, P. D. 2001. {it:缺失数据}. 加利福尼亚州千橡市: Sage.

{marker L2010}{...}
{phang}
Lee, K. J., 和 J. B. Carlin. 2010. 多重填补缺失数据：完全条件规范与多元正态填补的比较。
{it:美国流行病学杂志} 171: 624-632.

{marker R2001}{...}
{phang}
Raghunathan, T. E., J. M. Lepkowski, J. Van Hoewyk, 和 P. Solenberger. 2001.
使用回归模型序列进行多重填补缺失值的多元技术。 {it:调查方法} 27: 85-95.

{marker R2007}{...}
{phang}
Royston, P. 2007. 
    {browse "http://www.stata-journal.com/sjpdf.html?articlenum=st0067_3":缺失值的多重填补：冰的进一步更新，重点是区间删失。}
    {it:Stata Journal} 7: 445-464.

{marker R2009}{...}
{phang}
------. 2009.
    {browse "http://www.stata-journal.com/article.html?article=st0067_4":缺失值的多重填补：冰的进一步更新，重点在于分类变量。}
    {it:Stata Journal} 9: 466-477.

{marker R1987}{...}
{phang}
Rubin, D. B. 1987. {it:调查中的非响应的多重填补}.
纽约: Wiley.

{marker S1997}{...}
{phang}
Schafer, J. L. 1997. {it:不完全多元数据分析}.
佛罗里达州博卡拉顿: Chapman & Hall/CRC.

{marker ST1996}{...}
{phang}
Schenker, N., 和 J. M. G. Taylor. 1996. 多重填补的部分参数技术。 {it:计算统计与数据分析} 22: 425-446.

{marker vb2007}{...}
{phang}
van Buuren, S. 2007. 使用完全条件规范的离散和连续数据的多重填补。 {it:医学统计方法}
16: 219-242.

{marker vb1999}{...}
{phang}
van Buuren, S., H. C. Boshuizen, 和 D. L. Knook. 1999. 在生存分析中对缺失血压协变量的多重填补。 
{it:医学统计} 18: 681-694.
{p_end}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <mi_impute.sthlp>}