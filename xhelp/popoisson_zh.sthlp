{smcl}
{* *! version 1.0.0  21jun2019}{...}
{viewerdialog popoisson "dialog popoisson"}{...}
{vieweralsosee "[LASSO] popoisson" "mansection lasso popoisson"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[LASSO] lasso inference postestimation" "help lasso inference postestimation"}{...}
{vieweralsosee "[LASSO] dspoisson" "help dspoisson_zh"}{...}
{vieweralsosee "[LASSO] xpopoisson" "help xpopoisson_zh"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[R] poisson" "help poisson_zh"}{...}
{viewerjumpto "Syntax" "popoisson_zh##syntax"}{...}
{viewerjumpto "Menu" "popoisson_zh##menu"}{...}
{viewerjumpto "Description" "popoisson_zh##description"}{...}
{viewerjumpto "Links to PDF documentation" "popoisson_zh##linkspdf"}{...}
{viewerjumpto "Options" "popoisson_zh##options"}{...}
{viewerjumpto "Examples" "popoisson_zh##examples"}{...}
{viewerjumpto "Stored results" "popoisson_zh##results"}
{help popoisson:English Version}
{hline}{...}
{p2colset 1 22 24 2}{...}
{p2col:{bf:[LASSO] popoisson} {hline 2}}部分因子Lasso Poisson回归{p_end}
{p2col:}({mansection LASSO popoisson:查看完整PDF手册条目}){p_end}
{p2colreset}{...}


{marker syntax}{...}
{title:语法}

{p 8 16 2}
{opt popoisson}
{depvar}
{it:varsofinterest}
{ifin}
[{cmd:,} {it:options}]

{pstd}
{it:varsofinterest} 是用于估计系数及其标准误差的变量。

{synoptset 35 tabbed}{...}
{synopthdr}
{synoptline}
{syntab:模型}
INCLUDE help controls_short
INCLUDE help selection_short
{synopt :{cmdab:sqrt:lasso}}对 {it:varsofinterest} 使用平方根 Lasso{p_end}
INCLUDE help missingok_short
{synopt :{opth off:set(varname:varname_o)}}在 Lasso 和 {it:depvar} 模型中包含 {it:varname_o}，其系数约束为 1{p_end}
{synopt :{opth exp:osure(varname:varname_e)}}在 Lasso 和 {it:depvar} 模型中包含 ln({it:varname_e})，其系数约束为 1{p_end}

{syntab:报告}
{synopt :{opt l:evel(#)}}设定置信水平；默认值为 {cmd:level(95)}{p_end}
{synopt :{opt irr}}报告发生率比；默认值{p_end}
{synopt :{opt coef}}报告估计系数{p_end}
{synopt :{it:{help popoisson##display_options:display_options}}}控制
INCLUDE help shortdes-displayoptall

{syntab:优化}
{synopt :[{opt no}]{cmd:log}}显示或抑制迭代日志{p_end}
{synopt :{opt verbose}}显示冗长的迭代日志{p_end}
{synopt :{opt rseed(#)}}设置随机数种子{p_end}

{syntab:高级}
{synopt :{cmd:lasso(}{varlist}{cmd:,} {it:{help popoisson##lasso_options:lasso_options}}{cmd:)}}为 {it:varlist} 中的变量指定 Lasso 选项；可以重复{p_end}
{synopt :{cmd:sqrtlasso(}{varlist}{cmd:,} {it:{help popoisson##sqrtlasso_options:lasso_options}}{cmd:)}}为 {it:varlist} 中的变量指定平方根 Lasso 选项；可以重复{p_end}

INCLUDE help robust_short
INCLUDE help reestimate_short
{synopt :{opt nohead:er}}不在系数表中显示标题{p_end}
INCLUDE help shortdes-coeflegend
{synoptline}
INCLUDE help footnotes_po


{marker menu}{...}
{title:菜单}

{phang}
{bf:统计 > Lasso > Lasso 推断模型 > 计数结果 > 部分因子Poisson模型}


{marker description}{...}
{title:描述}

{pstd}
{cmd:popoisson} 拟合 Lasso Poisson 回归模型，并报告发生率比及标准误、检验统计量和指定协变量的置信区间。部分因子方法用于估计这些变量的效果，并选择潜在的控制变量以纳入模型。


{marker linkspdf}{...}
{title:PDF文档链接}

        {mansection LASSO popoissonQuickstart:快速入门}

        {mansection LASSO popoissonRemarksandexamples:注意事项和示例}

        {mansection LASSO popoissonMethodsandformulas:方法和公式}

{pstd}
上述部分未包含在本帮助文件中。


{marker options}{...}
{title:选项}

{dlgtab:模型}

{phang}
{cmd:controls(}[{cmd:(}{it:alwaysvars}{cmd:)}] {it:othervars}{cmd:)} 指定控制变量集，以控制遗漏变量。控制变量也称为混杂变量。{cmd:popoisson} 为 {it:depvar} 和每个 {it:varsofinterest} 拟合 Lasso。{it:alwaysvars} 是始终包含在这些 Lasso 中的变量。{it:alwaysvars} 是可选的。{it:othervars} 是每个 Lasso 将选择包含或排除的变量。也就是说，每个 Lasso 将选择 {it:othervars} 的一个子集。所选的 {it:othervars} 子集可能在 Lasso 之间有所不同。如果指定了 {it:alwaysvars}，则需要提供 {it:othervars}。如果未指定 {cmd:controls()}，则将拟合标准的 Poisson 回归。

INCLUDE help selection_long

{phang}
{cmd:sqrtlasso} 指定对 {it:varsofinterest} 进行平方根 Lasso 而非常规 Lasso。此选项不适用于 {it:depvar}。平方根 Lasso 是线性模型，而 {it:depvar} 的 Lasso 始终为 Poisson Lasso。选项 {cmd:lasso()} 可以与 {cmd:sqrtlasso} 一起使用，以为某些变量指定执行常规 Lasso，从而覆盖全局的 {cmd:sqrtlasso} 设置。请参见 {manhelp lasso_options LASSO:lasso options}。

INCLUDE help missingok_long

{phang}
{opth "offset(varname:varname_o)"} 指定在 Lasso 和 {it:depvar} 模型中将 {it:varname_o} 包含在内，其系数约束为 1。

{phang}
{opth "exposure(varname:varname_e)"} 指定在 Lasso 和 {it:depvar} 模型中将 ln({it:varname_e}) 包含在内，其系数约束为 1。

{dlgtab:报告}

{phang}
{opt level(#)}；参见 {helpb estimation options##level():[R] 估计选项}。

INCLUDE help irr_long

INCLUDE help displayopts_list

{dlgtab:优化}

INCLUDE help log_long

{phang}
{opt rseed(#)} 设置随机数种子。此选项可用于再现 {cmd:selection(cv)} 和 {cmd:selection(adaptive)} 的结果。默认选择方法 {cmd:selection(plugin)} 不使用随机数。{opt rseed(#)} 相当于在运行 {cmd:popoisson} 之前输入 {cmd:set} {cmd:seed} {it:#}。请参见 {manhelp set_seed R:set seed}。

{dlgtab:高级}

INCLUDE help lasso_opt_long

INCLUDE help sqrtlasso_opt_nonlinear_long

{pstd}
以下选项适用于 {cmd:popoisson} ，但未在对话框中显示：

INCLUDE help robust_long

{phang}
{cmd:reestimate} 是一个高级选项，它根据使用 {help lassoselect_zh} 对底层 Lasso 的更改重新拟合 {cmd:popoisson} 模型。在运行 {cmd:popoisson} 后，可以为 {cmd:popoisson} 所估计的一个或多个 Lasso 选择不同的 lambda*。选择 lambda* 后，输入 {cmd:popoisson,} {cmd:reestimate} 以根据新选择的 lambda* 重新拟合 {cmd:popoisson} 模型。

{pmore}
{cmd:reestimate} 只能与报告选项组合。

{phang}
{cmd:noheader} 防止在系数表中显示标题。

{phang}
{cmd:coeflegend}；参见
{helpb estimation options##coeflegend:[R] 估计选项}。


{marker examples}{...}
{title:示例}

{pstd}设置{p_end}
{phang2}{cmd:. webuse breathe}
	
{pstd}部分因子Lasso Poisson回归（结果为正确的响应数），推断课堂和家庭氮氧化物{p_end}
{phang2}{cmd:. popoisson correct no2_class no2_home,}
	{cmd:controls(i.(meducation overweight msmoke sex) noise sev* age)}
	
{pstd}部分因子 Lasso Poisson 回归（结果为正确的响应数），并使用交叉验证选择控制变量{p_end}
{phang2}{cmd:. popoisson correct no2_class no2_home,}
	{cmd:controls(i.(meducation overweight msmoke sex) noise sev* age)}
	{cmd:selection(cv)}


{marker results}{...}
{title:存储结果}

{pstd}
{cmd:popoisson} 在 {cmd:e()} 中存储以下内容：

{synoptset 20 tabbed}{...}
{p2col 5 20 24 2: 标量}{p_end}
{synopt:{cmd:e(N)}}观察数量{p_end}
{synopt:{cmd:e(k_varsofinterest)}}关注变量数量{p_end}
{synopt:{cmd:e(k_controls)}}潜在控制变量数量{p_end}
{synopt:{cmd:e(k_controls_sel)}}选定控制变量数量{p_end}
{synopt:{cmd:e(df)}}关注变量检验的自由度{p_end}
{synopt:{cmd:e(chi2)}}卡方{p_end}
{synopt:{cmd:e(p)}}关注变量检验的 p 值{p_end}
{synopt:{cmd:e(rank)}}{cmd:e(V)} 的秩{p_end}

{synoptset 20 tabbed}{...}
{p2col 5 20 24 2: 宏}{p_end}
{synopt:{cmd:e(cmd)}}{cmd:popoisson}{p_end}
{synopt:{cmd:e(cmdline)}}输入的命令{p_end}
{synopt:{cmd:e(depvar)}}因变量名称{p_end}
{synopt:{cmd:e(lasso_depvars)}}所有 Lasso 的因变量名称{p_end}
{synopt:{cmd:e(varsofinterest)}}关注变量{p_end}
{synopt:{cmd:e(controls)}}潜在控制变量{p_end}
{synopt:{cmd:e(controls_sel)}}选定的控制变量{p_end}
{synopt:{cmd:e(model)}}{cmd:poisson}{p_end}
{synopt:{cmd:e(title)}}估计输出中的标题{p_end}
{synopt:{cmd:e(offset)}}线性偏移变量{p_end}
{synopt:{cmd:e(chi2type)}}{cmd:Wald}；卡方检验类型{p_end}
{synopt:{cmd:e(vce)}}{it:vcetype} 在 {cmd:vce()} 中指定{p_end}
{synopt:{cmd:e(vcetype)}}用于标记标准误的标题{p_end}
{synopt:{cmd:e(rngstate)}}使用的随机数状态{p_end}
{synopt:{cmd:e(properties)}}{cmd:b V}{p_end}
{synopt:{cmd:e(predict)}}用于实施 {cmd:predict} 的程序{p_end}
{synopt:{cmd:e(select_cmd)}}用于实施 {cmd:lassoselect} 的程序{p_end}
{synopt:{cmd:e(marginsnotok)}}{cmd:margins} 不允许的预测{p_end}
{synopt:{cmd:e(asbalanced)}}因子变量 {cmd:fvset} 作为 {cmd:asbalanced}{p_end}
{synopt:{cmd:e(asobserved)}}因子变量 {cmd:fvset} 作为 {cmd:asobserved}{p_end}

{synoptset 20 tabbed}{...}
{p2col 5 20 24 2: 矩阵}{p_end}
{synopt:{cmd:e(b)}}系数向量{p_end}
{synopt:{cmd:e(V)}}估计值的方差协方差矩阵{p_end}

{synoptset 20 tabbed}{...}
{p2col 5 20 24 2: 函数}{p_end}
{synopt:{cmd:e(sample)}}标记估计样本{p_end}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <popoisson.sthlp>}