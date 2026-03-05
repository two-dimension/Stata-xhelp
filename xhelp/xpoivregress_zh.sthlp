{smcl}
{* *! version 1.0.0  21jun2019}{...}
{viewerdialog xpoivregress "dialog xpoivregress"}{...}
{vieweralsosee "[LASSO] xpoivregress" "mansection lasso xpoivregress"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[LASSO] lasso inference postestimation" "help lasso inference postestimation"}{...}
{vieweralsosee "[LASSO] poivregress" "help poivregress_zh"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[R] ivregress" "help ivregress_zh"}{...}
{viewerjumpto "Syntax" "xpoivregress_zh##syntax"}{...}
{viewerjumpto "Menu" "xpoivregress_zh##menu"}{...}
{viewerjumpto "Description" "xpoivregress_zh##description"}{...}
{viewerjumpto "Links to PDF documentation" "xpoivregress_zh##linkspdf"}{...}
{viewerjumpto "Options" "xpoivregress_zh##options"}{...}
{viewerjumpto "Examples" "xpoivregress_zh##examples"}{...}
{viewerjumpto "Stored results" "xpoivregress_zh##results"}
{help xpoivregress:English Version}
{hline}{...}
{p2colset 1 25 27 2}{...}
{p2col:{bf:[LASSO] xpoivregress} {hline 2}}交叉拟合偏差去除的 Lasso 工具变量回归{p_end}
{p2col:}({mansection LASSO xpoivregress:查看完整 PDF 手册条目}){p_end}
{p2colreset}{...}

{marker syntax}{...}
{title:语法}

{p 8 20 2}
{opt xpoivregress}
{depvar}
[{it:exovars}]
{cmd:(}{it:endovars} {cmd:=} {it:instrumvars}{cmd:)}
{ifin}
[{cmd:,} {it:options}]

{pstd}
为外生变量 {it:exovars} 和内生变量 {it:endovars} 估计系数和标准误差。
工具变量集 {it:instrumvars} 可能是高维的。

{synoptset 35 tabbed}{...}
{synopthdr}
{synoptline}
{syntab:模型}
{synopt :{cmdab:cont:rols(}[{cmd:(}{it:alwaysvars}{cmd:)}] {it:othervars}{cmd:)}}{it:alwaysvars} 和 {it:othervars} 是 {it:depvar}、{it:exovars} 和 {it:endovars} 的控制变量；{it:instrumvars} 是只适用于 {it:endovars} 的额外控制变量；{it:alwaysvars} 始终包含；lasso 选择是否包含或排除 {it:othervars}{p_end}
INCLUDE help selection_short
{synopt :{cmdab:sqrt:lasso}}使用平方根 Lasso{p_end}
{synopt :{opt xfold:s(#)}}使用 {it:#} 个折叠进行交叉拟合{p_end}
{synopt :{opt resample}[{cmd:(}{it:#}{cmd:)}]}重复抽样拆分 {it:#} 次并平均结果{p_end}
INCLUDE help technique_short
INCLUDE help missingok_iv_short

{syntab:报告}
{synopt :{opt l:evel(#)}}设置置信水平；默认是 {cmd:level(95)}{p_end}
{synopt :{it:{help xpoivregress##display_options:display_options}}}控制
INCLUDE help shortdes-displayoptall

{syntab:优化}
{synopt :[{opt no}]{cmd:log}}显示或抑制迭代日志{p_end}
{synopt :{cmd:verbose}}显示详细的迭代日志{p_end}
{synopt :{opt rseed(#)}}设置随机数种子{p_end}

{syntab:高级}
{synopt :{cmd:lasso(}{varlist}{cmd:,} {it:{help xpoivregress##lasso_options:lasso_options}}{cmd:)}}为 {it:varlist} 中的变量指定 Lasso 选项；可以重复{p_end}
{synopt :{cmd:sqrtlasso(}{varlist}{cmd:,} {it:{help xpoivregress##sqrtlasso_options:lasso_options}}{cmd:)}}为 {it:varlist} 中的变量指定平方根 Lasso 选项；可以重复{p_end}

INCLUDE help robust_short
INCLUDE help reestimate_short
{synopt :{opt nohead:er}}不在系数表中显示标题{p_end}
INCLUDE help shortdes-coeflegend
{synoptline}
INCLUDE help footnotes_iv

{marker menu}{...}
{title:菜单}

{phang}
{bf:统计 > Lasso > Lasso 推论模型 > 连续结果 > 交叉拟合偏差去除 IV 模型}

{marker description}{...}
{title:描述}

{pstd}
{cmd:xpoivregress} 拟合 Lasso 工具变量线性回归模型，并报告指定协变量的系数、标准误差、检验统计量和置信区间。协变量可能是内生或外生的。使用交叉拟合偏差去除方法来估计这些变量的效应，并从潜在控制变量和工具中进行选择以纳入模型。

{marker linkspdf}{...}
{title:PDF 文档链接}

        {mansection LASSO xpoivregressQuickstart:快速开始}

        {mansection LASSO xpoivregressRemarksandexamples:备注和示例}

        {mansection LASSO xpoivregressMethodsandformulas:方法和公式}

{pstd}
上述部分不包含在此帮助文件中。

{marker options}{...}
{title:选项}

{dlgtab:模型}

{phang}
{cmd:controls(}[{cmd:(}{it:alwaysvars}{cmd:)}] {it:othervars}{cmd:)} 指定控制变量集，用于控制遗漏变量。控制变量也称为混杂变量。{it:alwaysvars} 是始终包含在 Lasso 中的变量。{it:alwaysvars} 是可选的。{it:othervars} 是 Lasso 将选择包含或排除的变量。如果指定此选项，则必须有 {it:othervars}。如果没有 {it:othervars}，不能有 {it:alwaysvars}。工具变量 {it:instrumvars} 是额外的控制变量，但仅适用于 {it:endovars}。

{pmore}
{cmd:xpoivregress} 为 {it:depvar} 和每一个 {it:exovars} 及 {it:endovars} 拟合 Lasso。用于 {it:depvar} 和 {it:exovars} 的 Lasso 的控制变量是 {it:alwaysvars}（始终包含）和 {it:othervars}（Lasso 将选择包含或排除）。用于 {it:endovars} 的 Lasso 的控制变量是 {it:exovars}（始终包含）、{it:alwaysvars}（始终包含）、{it:instrumvars}（Lasso 将选择包含或排除）和 {it:othervars}（Lasso 将选择包含或排除）。

INCLUDE help selection_long

{phang}
{cmd:sqrtlasso} 指定使用平方根 Lasso 而不是常规 Lasso。选项 {cmd:lasso()} 可以与 {cmd:sqrtlasso} 一起使用，以指定某些变量进行常规 Lasso，这将覆盖这些变量的全局 {cmd:sqrtlasso} 设置。有关更多信息，请参见 {manhelp lasso_options LASSO:lasso options}。

{phang}
{opt xfolds(#)} 指定交叉拟合的折叠数量。默认值为 {cmd:xfolds(10)}。

INCLUDE help resample_long

INCLUDE help technique_long
参见 {mansection LASSO xpoivregressMethodsandformulas:方法和公式} 中的 {bf:[LASSO] xpoivregress}。

INCLUDE help missingok_iv_long

{dlgtab:报告}

{phang}
{opt level(#)}；参见 {helpb estimation options##level():[R] 估计选项}。

INCLUDE help displayopts_list

{dlgtab:优化}

{phang}
[{cmd:no}]{cmd:log} 显示或抑制显示估计进度的日志。默认情况下，会显示每次 Lasso 估计开始时的单行消息。指定 {cmd:verbose} 可以查看更详细的日志。

{phang}
{cmd:verbose} 显示详细日志，显示每次 Lasso 估计的迭代。当进行 {cmd:selection(cv)} 或 {cmd:selection(adaptive)} 时，此选项非常有用。它允许您监控这些选择方法的 Lasso 估计的进度，在指定了许多 {it:othervars} 或许多 {it:instrumvars} 时可能会耗时。

{phang}
{opt rseed(#)} 设置随机数种子。可以使用此选项重现结果。{opt rseed(#)} 等同于在运行 {cmd:xpoivregress} 之前输入 {cmd:set} {cmd:seed} {it:#}。随机数用于生成交叉拟合的拆分样本。因此，对于所有 {cmd:selection()} 选项，如果您希望重现结果，必须使用此选项或使用 {cmd:set} {cmd:seed}。有关更多信息，请参见 {manhelp set_seed R:set seed}。

{dlgtab:高级}

INCLUDE help lasso_opt_iv_long

INCLUDE help sqrtlasso_opt_iv_long

{pstd}
{cmd:xpoivregress} 提供以下选项，但未在对话框中显示：

INCLUDE help robust_long

{phang}
{cmd:reestimate} 是一个高级选项，根据使用 {help lassoselect_zh} 对基础 Lasso 进行更改的结果重新拟合 {cmd:xpoivregress} 模型。在运行 {cmd:xpoivregress} 后，您可以选择一个或多个由 {cmd:xpoivregress} 估计的 Lasso 的不同 lambda*。选择 lambda* 后，输入 {cmd:xpoivregress,} {cmd:reestimate} 以根据新选择的 lambda 重新拟合 {cmd:xpoivregress} 模型。

{pmore}
{cmd:reestimate} 只能与报告选项结合使用。

{phang}
{cmd:noheader} 防止显示系数表的标题。

{phang}
{cmd:coeflegend}；参见 {helpb estimation options##coeflegend:[R] 估计选项}。

{marker examples}{...}
{title:示例}

{pstd}设置{p_end}
{phang2}{cmd:. webuse nlsy80}

{pstd}针对结果 {cmd:wage} 进行交叉拟合偏差去除的 Lasso 工具变量回归，推论关于 {cmd:exper} 和工具内生 {cmd:educ}{p_end}
{phang2}{cmd:. xpoivregress wage exper}
    {cmd:(educ = i.pcollege##c.(meduc feduc) i.urban sibs iq),}
    {cmd:controls(c.age##c.age tenure kww i.(married black south urban))}

{pstd}针对结果 {cmd:wage} 进行交叉拟合偏差去除的 Lasso 工具变量回归，推论关于 {cmd:exper} 和工具内生 {cmd:educ}，使用 5 个折叠进行交叉拟合{p_end}
{phang2}{cmd:. xpoivregress wage exper}
    {cmd:(educ = i.pcollege##c.(meduc feduc) i.urban sibs iq),}
    {cmd:controls(c.age##c.age tenure kww i.(married black south urban))}
    {cmd:xfolds(5)}

{marker results}{...}
{title:存储结果}

{pstd}
{cmd:xpoivregress} 在 {cmd:e()} 中存储以下内容：

{synoptset 20 tabbed}{...}
{p2col 5 20 24 2: 标量}{p_end}
{synopt:{cmd:e(N)}}观察数量{p_end}
{synopt:{cmd:e(k_varsofinterest)}}关注变量的数量{p_end}
{synopt:{cmd:e(k_controls)}}潜在控制变量的数量{p_end}
{synopt:{cmd:e(k_controls_sel)}}已选择控制变量的数量{p_end}
{synopt:{cmd:e(k_inst)}}潜在工具的数量{p_end}
{synopt:{cmd:e(k_inst_sel)}}已选择工具的数量{p_end}
{synopt:{cmd:e(df)}}关注变量检验的自由度{p_end}
{synopt:{cmd:e(chi2)}}卡方{p_end}
{synopt:{cmd:e(p)}}关注变量检验的 p 值{p_end}
{synopt:{cmd:e(n_xfolds)}}交叉拟合的折叠数量{p_end}
{synopt:{cmd:e(n_resample)}}重抽样次数{p_end}
{synopt:{cmd:e(rank)}}{cmd:e(V)}的秩{p_end}

{synoptset 20 tabbed}{...}
{p2col 5 20 24 2: 宏}{p_end}
{synopt:{cmd:e(cmd)}}{cmd:xpoivregress}{p_end}
{synopt:{cmd:e(cmdline)}}输入的命令{p_end}
{synopt:{cmd:e(depvar)}}因变量名称{p_end}
{synopt:{cmd:e(lasso_depvars)}}所有 Lasso 因变量的名称{p_end}
{synopt:{cmd:e(varsofinterest)}}关注的变量{p_end}
{synopt:{cmd:e(controls)}}潜在控制变量{p_end}
{synopt:{cmd:e(controls_sel)}}已选择的控制变量{p_end}
{synopt:{cmd:e(exog)}}外生变量{p_end}
{synopt:{cmd:e(endog)}}内生变量{p_end}
{synopt:{cmd:e(inst)}}潜在工具{p_end}
{synopt:{cmd:e(inst_sel)}}已选择的工具{p_end}
{synopt:{cmd:e(model)}}{cmd:linear}{p_end}
{synopt:{cmd:e(title)}}估计输出中的标题{p_end}
{synopt:{cmd:e(chi2type)}}{cmd:Wald}; 卡方检验类型{p_end}
{synopt:{cmd:e(vce)}}在 {cmd:vce()} 中指定的 {it:vcetype}{p_end}
{synopt:{cmd:e(vcetype)}}用于标记 Std. Err. 的标题{p_end}
{synopt:{cmd:e(rngstate)}}使用的随机数状态{p_end}
{synopt:{cmd:e(properties)}}{cmd:b V}{p_end}
{synopt:{cmd:e(predict)}}用于实现 {cmd:predict} 的程序{p_end}
{synopt:{cmd:e(select_cmd)}}用于实现 {cmd:lassoselect} 的程序{p_end}
{synopt:{cmd:e(marginsnotok)}}被 {cmd:margins} 禁止的预测{p_end}
{synopt:{cmd:e(asbalanced)}}因子变量 {cmd:fvset} 作为 {cmd:asbalanced}{p_end}
{synopt:{cmd:e(asobserved)}}因子变量 {cmd:fvset} 作为 {cmd:asobserved}{p_end}

{synoptset 20 tabbed}{...}
{p2col 5 20 24 2: 矩阵}{p_end}
{synopt:{cmd:e(b)}}系数向量{p_end}
{synopt:{cmd:e(V)}}估计量的方差-协方差矩阵{p_end}

{synoptset 20 tabbed}{...}
{p2col 5 20 24 2: 函数}{p_end}
{synopt:{cmd:e(sample)}}标记估计样本{p_end}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <xpoivregress.sthlp>}