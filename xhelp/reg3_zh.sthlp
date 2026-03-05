{smcl}
{* *! version 1.2.9  11dec2018}{...}
{viewerdialog reg3 "dialog reg3"}{...}
{vieweralsosee "[R] reg3" "mansection R reg3"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[R] reg3 postestimation" "help reg3 postestimation"}{...}
{vieweralsosee "" "--"}{...}
{findalias assemnrsm}{...}
{vieweralsosee "[TS] forecast" "help forecast_zh"}{...}
{vieweralsosee "[SEM] Intro 5" "mansection SEM Intro5"}{...}
{vieweralsosee "[R] ivregress" "help ivregress_zh"}{...}
{vieweralsosee "[MV] mvreg" "help mvreg_zh"}{...}
{vieweralsosee "[R] nlsur" "help nlsur_zh"}{...}
{vieweralsosee "[R] regress" "help regress_zh"}{...}
{vieweralsosee "[R] sureg" "help sureg_zh"}{...}
{viewerjumpto "Syntax" "reg3_zh##syntax"}{...}
{viewerjumpto "Menu" "reg3_zh##menu"}{...}
{viewerjumpto "Description" "reg3_zh##description"}{...}
{viewerjumpto "Links to PDF documentation" "reg3_zh##linkspdf"}{...}
{viewerjumpto "Nomenclature" "reg3_zh##nomenclature"}{...}
{viewerjumpto "Options" "reg3_zh##options"}{...}
{viewerjumpto "Examples" "reg3_zh##examples"}{...}
{viewerjumpto "Stored results" "reg3_zh##results"}{...}
{viewerjumpto "Reference" "reg3_zh##reference"}
{help reg3:English Version}
{hline}{...}
{p2colset 1 13 15 2}{...}
{p2col:{bf:[R] reg3} {hline 2}}三阶段估计同时方程组{p_end}
{p2col:}({mansection R reg3:查看完整的PDF手册条目}){p_end}
{p2colreset}{...}


{marker syntax}{...}
{title:语法}

{phang}
基本语法

{p 8 14 2}
{cmd:reg3} {cmd:(}{depvar:1} {varlist:1}{cmd:)}
{cmd:(}{depvar:2} {varlist:2}{cmd:)} {it:...}{cmd:(}{depvar:N}
{varlist:N}{cmd:)} {ifin}
[{it:{help reg3##weight:权重}}]


{phang}
完整语法

{p 8 14 2}
{cmd:reg3} {cmd:(}[{it:eqname1}{cmd::}]{depvar:1a}
	[{depvar:1b} {it:...}{cmd:=}]{varlist:1} 
        [{cmd:,} {opt nocons:tant}]{cmd:)}{break}
        {cmd:(}[{it:eqname2}{cmd::}]{depvar:2a}
	[{depvar:2b} {it:...}{cmd:=}]{varlist:2} 
        [{cmd:,} {opt nocons:tant}]{cmd:)}{break}
        {it:...}{break}
        {cmd:(}[{it:eqnameN}{cmd::}]{depvar:Na}
	[{depvar:Nb} {it:...}{cmd:=}]{varlist:N} 
        [{cmd:,} {opt nocons:tant}]{cmd:)}{break}
        {ifin} 
        [{it:{help reg3##weight:权重}}]
	[{cmd:,} {it:{help reg3##options_table:选项}}]{p_end}


{marker options_table}{...}
{synoptset 26 tabbed}{...}
{synopthdr}
{synoptline}
{syntab:模型}
{synopt :{opt ir:eg3}}迭代直到估计收敛{p_end}
{synopt :{cmdab:c:onstraints(}{it:{help estimation options##constraints():约束}}{cmd:)}}应用指定的线性约束{p_end}

{syntab:模型 2}
{synopt :{opth ex:og(varlist)}}在系统方程中未指定的外生变量{p_end}
{synopt :{opth en:dog(varlist)}}额外的右侧内生变量{p_end}
{synopt :{opth in:st(varlist)}}所有外生变量的完整列表{p_end}
{synopt :{opt a:llexog}}所有右侧变量都是外生的{p_end}
{synopt :{opt nocons:tant}}从工具列表中去除常数项{p_end}

{syntab:估计方法}
{synopt :{opt 3sls}}三阶段最小二乘法；默认{p_end}
{synopt :{opt 2sls}}两阶段最小二乘法{p_end}
{synopt :{opt o:ls}}普通最小二乘法 (OLS){p_end}
{synopt :{opt su:re}}表面不相关回归估计 (SURE){p_end}
{synopt :{opt m:vreg}}{cmd:sure} 并进行 OLS 自由度调整{p_end}
{synopt :{opt cor:r(相关性)}}{opt u:nstructured} 或 {opt i:ndependent}相关结构；默认为 {opt unstructured}{p_end}

{syntab:自由度调整}
{synopt :{opt sm:all}}报告小样本统计信息{p_end}
{synopt :{opt dfk}}使用小样本调整{p_end}
{synopt :{opt dfk2}}使用替代调整{p_end}

{syntab:报告}
{synopt :{opt l:evel(#)}}设置置信水平；默认为 {cmd:level(95)}{p_end}
{synopt :{opt f:irst}}报告第一阶段回归{p_end}
{synopt :{opt nocnsr:eport}}不显示约束{p_end}
{synopt :{it:{help reg3##display_options:显示选项}}}控制
包含帮助短描述显示选项

{syntab:优化}
{synopt :{it:{help reg3##optimization_options:优化选项}}}控制
优化过程；很少使用{p_end}

{synopt :{opt noh:eader}}抑制标题显示{p_end}
{synopt :{opt not:able}}抑制系数表显示{p_end}
{synopt :{opt nofo:oter}}抑制页脚显示{p_end}
包含帮助短描述系数图例
{synoptline}
{p2colreset}{...}
{p 4 6 2}{it:varlist1}, ..., {it:varlistN} 和 {cmd:exog()} 以及 
{cmd:inst()} 变量列表可以包含因子变量；见 {help fvvarlist_zh}。你必须在所有包含因子变量的方程中具有相同的因子变量级别。{p_end}
{p 4 6 2}{it:depvar} 和 {it:varlist} 可以包含时间序列运算符；见 {help tsvarlist_zh}。{p_end}
{p 4 6 2}{cmd:bootstrap}, {cmd:by}, {cmd:fp}, {cmd:jackknife}, {cmd:rolling},
和 {cmd:statsby} 是允许的；见 {help prefix_zh}。{p_end}
{p 4 6 2}权重不允许与 {help bootstrap_zh} 前缀一起使用。{p_end}
{p 4 6 2}{cmd:aweight} 不允许与 {help jackknife_zh} 前缀一起使用。{p_end}
{marker weight}{...}
{p 4 6 2}{cmd:aweight} 和 {cmd:fweight} 是允许的，见 
{help weight_zh}。{p_end}
{p 4 6 2}{opt noheader}, {opt notable}, {opt nofooter}, 和 {opt coeflegend}
不会出现在对话框中。{p_end}
{p 4 6 2}参见 {manhelp reg3_postestimation R:reg3 后估计} 以获取估计后可用的特性。{p_end}

{pstd}
显式方程命名 ({it:eqname}{cmd::}) 不能与方程规范中的多个因变量结合使用。


{marker menu}{...}
{title:菜单}

{phang}
{bf:统计 > 内生协变量 > 三阶段最小二乘法}


{marker description}{...}
{title:描述}

{pstd}
{cmd:reg3} 估计一个结构方程组，其中某些方程包含内生变量作为解释变量。估计通过三阶段最小二乘法 (3SLS) 进行；见 {help reg3##ZT1962:Zellner 和 Theil (1962)}。通常，内生解释变量是来自系统中其他方程的因变量。{cmd:reg3} 支持迭代的广义最小二乘法估计和线性约束。

{pstd}
{cmd:reg3} 还可以通过表面不相关回归估计 (SURE)、多变量回归 (MVREG) 以及逐方程普通最小二乘法 (OLS) 或两阶段最小二乘法 (2SLS) 来估计方程系统。


{marker linkspdf}{...}
{title:PDF文档链接}

        {mansection R reg3Quickstart:快速入门}

        {mansection R reg3Remarksandexamples:备注和示例}

        {mansection R reg3Methodsandformulas:方法和公式}

{pstd}
以上部分不包括在此帮助文件中。


{marker nomenclature}{...}
{title:术语表}

{pstd}
在 3SLS 或 2SLS 估计中，结构方程被定义为系统中指定的方程之一。因变量将其通常的解释作为方程中的左侧变量，具有相应的扰动项。所有因变量被明确视为内生，并与系统方程中的扰动项相关联。除非在 {cmd:endog()} 选项中另有说明，系统中的所有其他变量被视为外生，并与扰动项不相关。外生变量被视为内生变量的工具。


{marker options}{...}
{title:选项}

{dlgtab:模型}

{phang}
{cmd:ireg3} 使得 {cmd:reg3} 在估计的扰动协方差矩阵和参数估计上进行迭代，直到参数估计收敛。尽管迭代通常是成功的，但不能保证它会收敛到一个稳定的点。在 SURE 下，此迭代收敛到最大似然估计。

{phang}
{opt constraints(constraints)}；见 {helpb estimation options##constraints():[R] 估计选项}。

{dlgtab:模型 2}

{phang}
{opth exog(varlist)} 指定额外的外生变量，这些变量未在任何系统方程中包含。当系统包含未估计的身份时，可能会发生这种情况。如果此处列出了方程中的隐含外生变量，{cmd:reg3} 将忽略这些额外信息。指定的变量将被添加到系统中的外生变量中，并在第一阶段用作内生变量的工具。通过指定来自结构方程的因变量，可以使用 {opt exog()} 来覆盖它们的内生性。

{phang}
{opth endog(varlist)} 识别系统中的变量，尽管这些变量不是因变量，但仍对系统内生。这些变量必须出现在系统中至少一个方程的变量列表中。再次强调，通常需要这种识别是因为系统中包含身份。例如，一个由外生变量和因变量的和组成的变量可能作为某些方程的解释变量出现。

{phang}
{opth inst(varlist)} 指定所有外生变量的完整列表，并且不能与 {opt endog()} 或 {opt exog()} 选项一起使用。它必须包含用于内生回归变量的工具的完整变量列表。像 {opt exog()} 一样，列表可以包含在方程系统中未指定的变量。此选项可以用于实现与 {opt endog()} 和 {opt exog()} 选项相同的结果，选择是出于方便。任何未在 {opt inst()} 选项的 {it:varlist} 中指定的变量被假定为内生。与 {opt exog()} 一样，包含来自结构方程的因变量将覆盖它们的内生性。

{phang}
{opt allexog} 表示所有右侧变量将被视为外生 -- 即使它们作为系统中其他方程的因变量出现。此选项可用于强制执行 SURE 或 MVREG 估计，即使某些因变量作为回归变量出现。

{phang}
{cmd:noconstant}；见 {helpb estimation options##noconstant:[R] 估计选项}。

{dlgtab:估计方法}

{phang}
{opt 3sls} 指定系统的完整 3SLS 估计，是 {cmd:reg3} 的默认设置。

{phang}
{opt 2sls} 使 {cmd:reg3} 在完整的方程系统上执行逐方程 2SLS。这一选项意味着使用 {opt dfk}、{opt small} 和 {cmd:corr(independent)}。

{pmore}
在使用此选项后不应进行跨方程测试。使用 {opt 2sls} 时，不会对方程参数之间的协方差进行估计。要进行跨方程测试，请使用 {opt 3sls}。

{phang}
{opt ols} 使得 {cmd:reg3} 在方程系统上执行逐方程 OLS -- 即使因变量作为回归变量出现或每个方程的回归变量不同；见 {manhelp mvreg MV}。 {opt ols} 意味着 {opt allexog}、{opt dfk}、{opt small} 和 {cmd:corr(independent)}；可以指定 {opt nodfk} 和 {opt nosmall} 来覆盖 {opt dfk} 和 {opt small}。

{pmore}
在此选项下，不会估计方程之间的系数协方差，因此在使用 {opt ols} 估计后不应进行跨方程测试。要进行跨方程测试，请使用 {opt sure} 或 {opt 3sls}（默认）。

{phang}
{opt sure} 使 {cmd:reg3} 执行系统的 SURE 
-- 即使某些方程的因变量作为回归变量出现；见 {manhelp sureg R}。 {opt sure} 是 {opt allexog} 的同义词。

{phang}
{opt mvreg} 与 {opt sure} 相同，只是扰动协方差矩阵经过 OLS 自由度调整进行估计 -- {opt dfk} 选项。如果回归变量对于所有方程都是相同的，参数点估计将是标准的 MVREG 结果。如果任何回归变量不同，则点估计为 SURE 的结果，其扰动协方差矩阵在计算时进行了 OLS 自由度调整。可以指定 {opt nodfx} 和 {opt nosmall} 来覆盖 {opt dfk} 和 {opt small}。

{phang}
{opt corr(correlation)} 指定方程扰动的相关结构的假定形式，通常不会明确请求。对于 {cmd:reg3} 拟合的模型族，只有 {opt u:nstructured} 和 {opt i:ndependent} 这两种相关结构是允许的。默认值为 {opt unstructured}。

{pmore}
此选项几乎仅用于通过 2SLS 估计方程系统，或在多个方程上对 {cmd:reg3} 进行 OLS 回归。在这些情况下，相关性被设置为 {opt independent}，迫使 {cmd:reg3} 在估计模型参数时将方程扰动的协方差矩阵视为对角矩阵。因此，如果系统包含内生的右侧变量，可以获得一组两阶段的系数估计，或者可以强加 OLS 回归，即使在不同方程中回归变量不同。如果不强加独立扰动，{cmd:reg3} 将通过 3SLS 估计前者，通过 SURE 估计后者。

{pmore}
在使用 {opt independent} 选项进行估计后，执行的任何测试将视不同方程中的系数没有协方差；在指定 {cmd:corr(independent)} 之后不应使用跨方程测试。

{dlgtab:自由度调整}

{phang}
{opt small} 指定计算小样本统计信息。它将测试统计数从卡方和 z 统计数转换为 F 统计数和 t 统计数。此选项主要旨在支持 MVREG。尽管每个方程的标准误差是根据方程的自由度计算的，但 t 统计数的自由度均取为第一个方程的自由度。这种方法在 MVREG 下没有问题，因为回归变量在方程之间是相同的。

{phang}
{opt dfk} 指定在计算方程残差的协方差矩阵时使用替代除数。作为渐进公正的估计量，{cmd:reg3} 默认使用样本观察值 n 作为除数。当设置 {opt dfk} 选项时，进行小样本调整，除数取为 sqrt((n - k_i) * (n - k_j))，其中 k_i 和 k_j 分别是方程 i 和 j 的参数个数。

{phang}
{opt dfk2} 指定在计算方程误差的协方差矩阵时使用替代除数。当设置 {opt dfk2} 选项时，除数取为来自各个方程的残差自由度的均值。

{dlgtab:报告}

{phang}
{opt level(#)}；见 {helpb estimation options##level():[R] 估计选项}。 

{phang}
{opt first} 请求在估计过程中显示第一阶段回归结果。

{phang}
{opt nocnsreport}；见
     {helpb estimation options##nocnsreport:[R] 估计选项}。

包含帮助显示选项列表

{marker optimization_options}{...}
{dlgtab:优化}

{phang}
{it:优化选项} 控制当指定 {opt ireg3} 时最小化平方误差和的迭代过程。这些选项很少使用。

{phang2}
{opt iter:ate(#)} 指定最大迭代次数。当迭代次数等于 {it:#} 时，优化器停止并呈现当前结果，即使收敛容忍度尚未达到。默认值为 {opt iterate()} 的当前值，未更改时为 {cmd:iterate(16000)}。

{phang2}
{opt tr:ace} 在迭代日志中添加当前参数向量的显示。

{phang2}
包含帮助日志不记录

{phang2}
{opt tol:erance(#)} 指定系数向量的容忍度。当系数向量从一次迭代到下一次的相对变化小于或等于 {it:#} 时，优化过程停止。默认值为 {cmd:tolerance(1e-6)}。

{phang}
{cmd:reg3} 的以下选项可用，但在对话框中未显示：

{phang}
{opt noheader} 抑制显示估计方法和方程摘要统计信息的标题。

{phang}
{opt notable} 抑制显示系数表。

{phang}
{opt nofooter} 抑制显示模型中内生和外生变量列表的页脚。

{phang}
{opt coeflegend}；见 {helpb estimation options##coeflegend:[R] 估计选项}。


{marker examples}{...}
{title:示例}

    {hline}
{pstd}设置{p_end}
{phang2}{cmd:. webuse klein}{p_end}

{pstd}通过三阶段最小二乘法估计系统{p_end}
{phang2}{cmd:. reg3 (consump wagepriv wagegovt) (wagepriv consump govt capital1)}{p_end}

    {hline}
{pstd}设置{p_end}
{phang2}{cmd:. webuse supDem}{p_end}

{pstd}将方程存储在全局宏中{p_end}
{phang2}{cmd:. global demand  "(qDemand: quantity price pcompete income)"}{p_end}
{phang2}{cmd:. global supply  "(qSupply: quantity price praw)"}{p_end}

{pstd}估计系统，指定 {cmd:price} 为内生变量{p_end}
{phang2}{cmd:. reg3 $demand $supply, endog(price)}{p_end}

    {hline}
{pstd}设置{p_end}
{phang2}{cmd:. webuse klein}{p_end}

{pstd}将方程和变量列表存储在全局宏中{p_end}
{phang2}{cmd:. global conseqn "(consump profits profits1 wagetot)"}{p_end}
{phang2}{cmd:. global inveqn "(invest profits profits1 capital1)"}{p_end}
{phang2}{cmd:. global wageqn "(wagepriv totinc totinc1 year)"}{p_end}
{phang2}{cmd:. global enlist "wagetot profits totinc"}{p_end}
{phang2}{cmd:. global exlist "taxnetx wagegovt govt"}{p_end}

{pstd}估计系统，指定内生和外生变量列表；
迭代直到估计收敛{p_end}
{phang2}{cmd:. reg3 $conseqn $inveqn $wageqn, endog($enlist) exog($exlist) ireg3}{p_end}

{pstd}修改消费方程{p_end}
{phang2}{cmd:. global conseqn "(consump profits profits1 wagepriv wagegovt)"}{p_end}

{pstd}约束消费方程中 {cmd:wagepriv} 和 {cmd:wagegovt} 的系数相等{p_end}
{phang2}{cmd:. constraint 1 [consump]wagepriv = [consump]wagegovt}{p_end}

{pstd}在约束下估计系统{p_end}
{phang2}{cmd:. reg3 $conseqn $inveqn $wageqn, endog($enlist) exog($exlist)}
              {cmd:constr(1) ireg3}{p_end}

    {hline}


{marker results}{...}
{title:存储结果}

{pstd}
{cmd:reg3} 在 {cmd:e()} 中存储以下内容：

{synoptset 18 tabbed}{...}
{p2col 5 15 19 2: 标量}{p_end}
{synopt:{cmd:e(N)}}观察数量{p_end}
{synopt:{cmd:e(k)}}参数数量{p_end}
{synopt:{cmd:e(k_eq)}}{cmd:e(b)} 中方程数量{p_end}
{synopt:{cmd:e(mss_}{it:#}{cmd:)}}方程 {it:#} 的模型平方和{p_end}
{synopt:{cmd:e(df_m}{it:#}{cmd:)}}方程 {it:#} 的模型自由度{p_end}
{synopt:{cmd:e(rss_}{it:#}{cmd:)}}方程 {it:#} 的残差平方和{p_end}
{synopt:{cmd:e(df_r)}}残差自由度 ({cmd:small}){p_end}
{synopt:{cmd:e(r2_}{it:#}{cmd:)}}方程 {it:#} 的 R 方{p_end}
{synopt:{cmd:e(F_}{it:#}{cmd:)}}方程 {it:#} 的 F 统计量 ({cmd:small}){p_end}
{synopt:{cmd:e(rmse_}{it:#}{cmd:)}}方程 {it:#} 的均方根误差{p_end}
{synopt:{cmd:e(dfk2_adj)}}在指定 {cmd:dfk2} 时与 VCE 一起使用的除数{p_end}
{synopt:{cmd:e(ll)}}对数似然{p_end}
{synopt:{cmd:e(chi2_}{it:#}{cmd:)}}方程 {it:#} 的卡方{p_end}
{synopt:{cmd:e(p_}{it:#}{cmd:)}}方程 {it:#} 的模型检验 p 值{p_end}
{synopt:{cmd:e(cons_}{it:#}{cmd:)}}方程 {it:#} 中存在常数时为 {cmd:1}，否则为 {cmd:0}{p_end}
{synopt:{cmd:e(rank)}}{cmd:e(V)} 的秩{p_end}
{synopt:{cmd:e(ic)}}迭代次数{p_end}

{synoptset 18 tabbed}{...}
{p2col 5 15 19 2: 宏}{p_end}
{synopt:{cmd:e(cmd)}}{cmd:reg3}{p_end}
{synopt:{cmd:e(cmdline)}}以输入的形式{p_end}
{synopt:{cmd:e(depvar)}}因变量名称{p_end}
{synopt:{cmd:e(exog)}}外生变量名称{p_end}
{synopt:{cmd:e(endog)}}内生变量名称{p_end}
{synopt:{cmd:e(eqnames)}}方程名称{p_end}
{synopt:{cmd:e(corr)}}相关结构{p_end}
{synopt:{cmd:e(wtype)}}权重类型{p_end}
{synopt:{cmd:e(wexp)}}权重表达式{p_end}
{synopt:{cmd:e(method)}}{cmd:3sls}、{cmd:2sls}、{cmd:ols}、{cmd:sure} 或 {cmd:mvreg}{p_end}
{synopt:{cmd:e(small)}}{cmd:small}，如果指定{p_end}
{synopt:{cmd:e(dfk)}}{cmd:dfk}，如果指定{p_end}
{synopt:{cmd:e(properties)}}{cmd:b V}{p_end}
{synopt:{cmd:e(predict)}}用于实现 {cmd:predict} 的程序{p_end}
{synopt:{cmd:e(marginsok)}}{cmd:margins} 允许的预测{p_end}
{synopt:{cmd:e(marginsnotok)}}{cmd:margins} 不允许的预测{p_end}
{synopt:{cmd:e(marginsdefault)}}{cmd:margins} 的默认 {opt predict()} 规范{p_end}
{synopt:{cmd:e(asbalanced)}}因子变量 {cmd:fvset} 作为 {cmd:asbalanced}{p_end}
{synopt:{cmd:e(asobserved)}}因子变量 {cmd:fvset} 作为 {cmd:asobserved}{p_end}

{synoptset 18 tabbed}{...}
{p2col 5 15 19 2: 矩阵}{p_end}
{synopt:{cmd:e(b)}}系数向量{p_end}
{synopt:{cmd:e(Cns)}}约束矩阵{p_end}
{synopt:{cmd:e(Sigma)}}Sigma 估计矩阵{p_end}
{synopt:{cmd:e(V)}}估计量的方差-协方差矩阵{p_end}

{synoptset 18 tabbed}{...}
{p2col 5 15 19 2: 函数}{p_end}
{synopt:{cmd:e(sample)}}标记估计样本{p_end}
{p2colreset}{...}


{marker reference}{...}
{title:参考资料}

{marker ZT1962}{...}
{phang}
Zellner, A., 和 H. Theil. 1962. 三阶段最小二乘法：同时估计同时方程。《经济计量学》29: 54-78。
{p_end}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <reg3.sthlp>}