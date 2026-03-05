{smcl}
{* *! version 1.0.0  21jun2019}{...}
{viewerdialog xpopoisson "dialog xpopoisson"}{...}
{vieweralsosee "[LASSO] xpopoisson" "mansection lasso xpopoisson"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[LASSO] lasso inference postestimation" "help lasso inference postestimation"}{...}
{vieweralsosee "[LASSO] dspoisson" "help dspoisson_zh"}{...}
{vieweralsosee "[LASSO] popoisson" "help popoisson_zh"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[R] poisson" "help poisson_zh"}{...}
{viewerjumpto "Syntax" "xpopoisson_zh##syntax"}{...}
{viewerjumpto "Menu" "xpopoisson_zh##menu"}{...}
{viewerjumpto "Description" "xpopoisson_zh##description"}{...}
{viewerjumpto "Links to PDF documentation" "xpopoisson_zh##linkspdf"}{...}
{viewerjumpto "Options" "xpopoisson_zh##options"}{...}
{viewerjumpto "Examples" "xpopoisson_zh##examples"}{...}
{viewerjumpto "Stored results" "xpopoisson_zh##results"}
{help xpopoisson:English Version}
{hline}{...}
{p2colset 1 23 25 2}{...}
{p2col:{bf:[LASSO] xpopoisson} {hline 2}}交叉拟合偏差去除的 Lasso Poisson 回归{p_end}
{p2col:}({mansection LASSO xpopoisson:查看完整 PDF 手册条目}){p_end}
{p2colreset}{...}


{marker syntax}{...}
{title:语法}

{p 8 18 2}
{opt xpopoisson}
{depvar}
{it:varsofinterest}
{ifin}
[{cmd:,} {it:options}]

{pstd}
{it:varsofinterest} 是需要估计其系数及标准误的变量。

{synoptset 35 tabbed}{...}
{synopthdr}
{synoptline}
{syntab:模型}
包含 help controls_short
包含 help selection_short
{synopt :{cmdab:sqrt:lasso}}对 {it:varsofinterest} 使用平方根 Lasso{p_end}
{synopt :{opt xfold:s(#)}}对交叉拟合使用 {it:#} 折{p_end}
{synopt :{opt resample}[{cmd:(}{it:#}{cmd:)}]}重复样本分割 {it:#} 次并平均结果{p_end}
包含 help technique_short
包含 help missingok_short
{synopt :{opth off:set(varname:varname_o)}}将 {it:varname_o} 包含在 Lasso 和 {it:depvar}的模型中，并将其系数约束为 1{p_end}
{synopt :{opth exp:osure(varname:varname_e)}}将 ln({it:varname_e}) 包含在 Lasso 和 {it:depvar}的模型中，并将其系数约束为 1{p_end}

{syntab:报告}
{synopt :{opt l:evel(#)}}设置置信水平；默认值为 {cmd:level(95)}{p_end}
{synopt :{cmd:irr}}报告发生率比；默认值{p_end}
{synopt :{cmd:coef}}报告估计的系数{p_end}
{synopt :{it:{help xpopoisson##display_options:display_options}}}控制
包含 help shortdes-displayoptall

{syntab:优化}
{synopt :[{opt no}]{cmd:log}}显示或抑制迭代日志{p_end}
{synopt :{cmd:verbose}}显示详细的迭代日志{p_end}
{synopt :{opt rseed(#)}}设置随机数种子{p_end}

{syntab:高级}
{synopt :{cmd:lasso(}{varlist}{cmd:,} {it:{help xpopoisson##lasso_options:lasso_options}}{cmd:)}}为 {it:varlist} 中的变量指定 Lasso 选项；可以重复此命令{p_end}
{synopt :{cmd:sqrtlasso(}{varlist}{cmd:,} {it:{help xpopoisson##sqrtlasso_options:lasso_options}}{cmd:)}}为 {it:varlist} 中的变量指定平方根 Lasso 选项；可以重复此命令{p_end}

包含 help robust_short
包含 help reestimate_short
{synopt :{opt nohead:er}}不显示系数表头{p_end}
包含 help shortdes-coeflegend
{synoptline}
包含 help footnotes_po


{marker menu}{...}
{title:菜单}

{phang}
{bf:统计 > Lasso > Lasso 推论模型 > 计数结果 > 交叉拟合偏差去除 Poisson 模型}


{marker description}{...}
{title:描述}

{pstd}
{cmd:xpopoisson} 拟合 Lasso Poisson 回归模型，并报告指定 covariates 的发生率比、标准误、检验统计量和置信区间。使用交叉拟合偏差去除方法来估计这些变量的效应，并从潜在的控制变量中进行选择，以包含在模型中。


{marker linkspdf}{...}
{title:PDF 文档链接}

        {mansection LASSO xpopoissonQuickstart:快速入门}

        {mansection LASSO xpopoissonRemarksandexamples:备注和示例}

        {mansection LASSO xpopoissonMethodsandformulas:方法与公式}

{pstd}
上述部分未包含在此帮助文件中。


{marker options}{...}
{title:选项}

{dlgtab:模型}

{phang}
{cmd:controls(}[{cmd:(}{it:alwaysvars}{cmd:)}] {it:othervars}{cmd:)} 指定控制变量集，用于控制遗漏变量。控制变量也称为混杂变量。{cmd:xpopoisson} 在 {it:depvar} 和每个 {it:varsofinterest} 上拟合 Lasso。{it:alwaysvars} 是始终需包含在这些 Lasso 中的变量。{it:alwaysvars} 是可选的。{it:othervars} 是每个 Lasso 将选择包含或排除的变量。即，每个 Lasso 将选择 {it:othervars} 的一个子集，其他 Lasso 可能选择不同的 {it:othervars} 子集。如果指定了 {it:alwaysvars}，则需要 {it:othervars}。如果未指定 {cmd:controls()}，则拟合标准 Poisson 回归。

包含 help selection_long

{phang}
{cmd:sqrtlasso} 指定对 {it:varsofinterest} 执行平方根 Lasso，而不是常规 Lasso。此选项不适用于 {it:depvar}。平方根 Lasso 是线性模型，{it:depvar} 的 Lasso 始终是 Poisson Lasso。可以与 {cmd:sqrtlasso} 一起使用 {cmd:lasso()} 选项，以便为某些变量执行常规 Lasso，从而覆盖这些变量的全局 {cmd:sqrtlasso} 设置。请参见 {manhelp lasso_options LASSO:lasso 选项}。

{phang}
{opt xfolds(#)} 指定交叉拟合的折数。默认值为 {cmd:xfolds(10)}。

包含 help resample_long

包含 help technique_long
请参见 {mansection LASSO xpopoissonMethodsandformulas:{it:方法与公式}} 在 {bf:[LASSO] xpopoisson} 中。

包含 help missingok_long

{phang}
{opth "offset(varname:varname_o)"} 指定将 {it:varname_o} 包含在 {it:depvar} 的 Lasso 和模型中，并将其系数约束为 1。

{phang}
{opth "exposure(varname:varname_e)"} 指定将 ln({it:varname_e}) 包含在 {it:depvar} 的 Lasso 和模型中，并将其系数约束为 1。

{dlgtab:报告}

{phang}
{opt level(#)}；见 {helpb estimation options##level():[R] 估计选项}。

包含 help irr_long

包含 help displayopts_list

{dlgtab:优化}

包含 help log_long

{phang}
{opt rseed(#)} 设置随机数种子。此选项可用于重现结果。{opt rseed(#)} 等同于在运行 {cmd:xpopoisson} 之前键入 {cmd:set} {cmd:seed} {it:#}。随机数用于产生交叉拟合的分割样本。因此，对于所有 {cmd:selection()} 选项，如果要重现结果，必须使用此选项或使用 {cmd:set} {cmd:seed}。请参见 {manhelp set_seed R:设置种子}。

{dlgtab:高级}

包含 help lasso_opt_long

包含 help sqrtlasso_opt_nonlinear_long

{pstd}
以下选项可与 {cmd:xpopoisson} 一起使用，但在对话框中未显示：

包含 help robust_long

{phang}
{cmd:reestimate} 是一个高级选项，它根据使用 {help lassoselect_zh} 对基础 Lasso 进行的更改，重新拟合 {cmd:xpopoisson} 模型。在运行 {cmd:xpopoisson} 之后，您可以选择对 {cmd:xpopoisson} 估计的一个或多个 Lasso 选择不同的 lambda*。选择 lambda* 后，键入 {cmd:xpopoisson,} {cmd:reestimate} 以根据新选择的 lambda* 重新拟合 {cmd:xpopoisson} 模型。

{pmore}
{cmd:reestimate} 只能与报告选项组合使用。

{phang}
{cmd:noheader} 可防止显示系数表的头部。

{phang}
{cmd:coeflegend}；见 {helpb estimation options##coeflegend:[R] 估计选项}。


{marker examples}{...}
{title:示例}

{pstd}设置{p_end}
{phang2}{cmd:. webuse breathe}

{pstd}关于正确回应数的偏差去除 Lasso Poisson 回归，以及对教室和家庭氮氧化物的推论{p_end}
{phang2}{cmd:. xpopoisson correct no2_class no2_home,}
	{cmd:controls(i.(meducation overweight msmoke sex) noise sev* age)}
	
{pstd}使用交叉验证选择控制变量的正确回应数的偏差去除 Lasso Poisson 回归{p_end}
{phang2}{cmd:. xpopoisson correct no2_class no2_home,}
	{cmd:controls(i.(meducation overweight msmoke sex) noise sev* age)}
	{cmd:xfolds(5)}


{marker results}{...}
{title:存储结果}

{pstd}
{cmd:xpopoisson} 将以下内容存储在 {cmd:e()} 中：

{synoptset 20 tabbed}{...}
{p2col 5 20 24 2: 标量}{p_end}
{synopt:{cmd:e(N)}}观察数量{p_end}
{synopt:{cmd:e(k_varsofinterest)}}感兴趣变量的数量{p_end}
{synopt:{cmd:e(k_controls)}}潜在控制变量的数量{p_end}
{synopt:{cmd:e(k_controls_sel)}}已选择控制变量的数量{p_end}
{synopt:{cmd:e(df)}}感兴趣变量的检验自由度{p_end}
{synopt:{cmd:e(chi2)}}卡方{p_end}
{synopt:{cmd:e(p)}}感兴趣变量检验的 p 值{p_end}
{synopt:{cmd:e(n_xfolds)}}交叉拟合的折数{p_end}
{synopt:{cmd:e(n_resample)}}重采样次数{p_end}
{synopt:{cmd:e(rank)}}{cmd:e(V)} 的秩{p_end}

{synoptset 20 tabbed}{...}
{p2col 5 20 24 2: 宏}{p_end}
{synopt:{cmd:e(cmd)}}{cmd:xpopoisson}{p_end}
{synopt:{cmd:e(cmdline)}}输入的命令{p_end}
{synopt:{cmd:e(depvar)}}因变量名称{p_end}
{synopt:{cmd:e(lasso_depvars)}}所有 Lasso 的因变量名称{p_end}
{synopt:{cmd:e(varsofinterest)}}感兴趣的变量{p_end}
{synopt:{cmd:e(controls)}}潜在控制变量{p_end}
{synopt:{cmd:e(controls_sel)}}已选择的控制变量{p_end}
{synopt:{cmd:e(model)}}{cmd:poisson}{p_end}
{synopt:{cmd:e(title)}}估计输出中的标题{p_end}
{synopt:{cmd:e(offset)}}线性偏移变量{p_end}
{synopt:{cmd:e(chi2type)}}{cmd:Wald}; 卡方检验的类型{p_end}
{synopt:{cmd:e(vce)}}在 {cmd:vce()} 中指定的 {it:vcetype}{p_end}
{synopt:{cmd:e(vcetype)}}用于标记标准误的标题{p_end}
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
{center:翻译自Stata官方帮助文档 <xpopoisson.sthlp>}