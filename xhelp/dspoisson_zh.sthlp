{smcl}
{* *! version 1.0.0  21jun2019}{...}
{viewerdialog dspoisson "dialog dspoisson"}{...}
{vieweralsosee "[LASSO] dspoisson" "mansection lasso dspoisson"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[LASSO] lasso inference postestimation" "help lasso inference postestimation"}{...}
{vieweralsosee "[LASSO] popoisson" "help popoisson_zh"}{...}
{vieweralsosee "[LASSO] xpopoisson" "help xpopoisson_zh"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[R] poisson" "help poisson_zh"}{...}
{viewerjumpto "Syntax" "dspoisson_zh##syntax"}{...}
{viewerjumpto "Menu" "dspoisson_zh##menu"}{...}
{viewerjumpto "Description" "dspoisson_zh##description"}{...}
{viewerjumpto "Links to PDF documentation" "dspoisson_zh##linkspdf"}{...}
{viewerjumpto "Options" "dspoisson_zh##options"}{...}
{viewerjumpto "Examples" "dspoisson_zh##examples"}{...}
{viewerjumpto "Stored results" "dspoisson_zh##results"}
{help dspoisson:English Version}
{hline}{...}
{p2colset 1 22 24 2}{...}
{p2col:{bf:[LASSO] dspoisson} {hline 2}}双重选择lasso Poisson回归{p_end}
{p2col:}({mansection LASSO dspoisson:查看完整PDF手册条目}){p_end}
{p2colreset}{...}


{marker syntax}{...}
{title:语法}

{p 8 17 2}
{cmd:dspoisson}
{depvar}
{it:varsofinterest}
{ifin}
[{cmd:,} {it:options}]

{pstd}
{it:varsofinterest} 是需要估计系数及其标准误差的变量。

{synoptset 35 tabbed}{...}
{synopthdr}
{synoptline}
{syntab:模型}
INCLUDE help controls_short
INCLUDE help selection_short
{synopt :{opt sqrt:lasso}}为 {it:varsofinterest} 使用平方根lassos{p_end}
INCLUDE help missingok_short
{synopt :{opth off:set(varname:varname_o)}}在lasso中包括 {it:varname_o}，并将其系数固定为1{p_end}
{synopt :{opth exp:osure(varname:varname_e)}}在lasso中包括 ln({it:varname}_e)，并将其系数固定为1{p_end}

{syntab:标准误/稳健性}
{synopt :{opth vce(vcetype)}}{it:vcetype} 可以是 {opt r:obust}（默认）或 {cmd:oim}{p_end}

{syntab:报告}
{synopt :{opt l:evel(#)}}设置信心水平；默认是 {cmd:level(95)}{p_end}
{synopt :{cmd:irr}}报告发生率比；默认为{p_end}
{synopt :{cmd:coef}}报告估计系数{p_end}
{synopt :{it:{help dspoisson##display_options:display_options}}}控制
INCLUDE help shortdes-displayoptall

{syntab:优化}
{synopt :[{cmd:no}]{cmd:log}}显示或抑制迭代日志{p_end}
{synopt :{cmd:verbose}}显示详细迭代日志{p_end}
{synopt :{opt rseed(#)}}设置随机数种子{p_end}

{syntab:高级}
{synopt :{cmd:lasso(}{varlist}{cmd:,} {it:{help dspoisson##lasso_options:lasso_options}}{cmd:)}}为 {it:varlist} 中的变量指定lasso选项；可以重复{p_end}
{synopt :{cmd:sqrtlasso(}{varlist}{cmd:,} {it:{help dspoisson##sqrtlasso_options:lasso_options}}{cmd:)}}为 {it:varlist} 中的变量指定平方根lasso选项；可以重复{p_end}

INCLUDE help reestimate_short
{synopt :{opt nohead:er}}不显示系数表头{p_end}
INCLUDE help shortdes-coeflegend
{synoptline}
INCLUDE help footnotes_inference


{marker menu}{...}
{title:菜单}

{phang}
{bf:统计 > Lasso > Lasso推理模型 > 计数结果 > 双重选择Poisson模型}


{marker description}{...}
{title:描述}

{pstd}
{cmd:dspoisson} 拟合一个lasso Poisson回归模型，并报告指定协变量的发生率比及标准误差、检验统计量和置信区间。采用双重选择方法来估计这些变量的效应，并从潜在的控制变量中选择要包含在模型中的变量。


{marker linkspdf}{...}
{title:PDF文档链接}

        {mansection LASSO dspoissonQuickstart:快速入门}

        {mansection LASSO dspoissonRemarksandexamples:备注和示例}

        {mansection LASSO dspoissonMethodsandformulas:方法和公式}

{pstd}
上述部分不包括在此帮助文件中。


{marker options}{...}
{title:选项}

{dlgtab:模型}

{phang}
{cmd:controls(}[{cmd:(}{it:alwaysvars}{cmd:)}] {it:othervars}{cmd:)} 指定控制变量集，控制未包含的变量。控制变量也称为混杂变量。{cmd:dspoisson} 为 {it:depvar} 和每个 {it:varsofinterest} 拟合lassos。{it:alwaysvars} 是始终包含在这些lassos中的变量。{it:alwaysvars} 是可选的。{it:othervars} 是每个lasso将选择包含或排除的变量。即，每个lasso将选择一个 {it:othervars} 的子集。选择的 {it:othervars} 的子集在不同lassos中可能不同。如果指定了 {it:alwaysvars}，则需要 {it:othervars}。如果不指定 {cmd:controls()}，则拟合标准的Poisson回归。

INCLUDE help selection_long

{phang}
{cmd:sqrtlasso} 指定对 {it:varsofinterest} 进行平方根lassos，而不是常规的lassos。此选项不适用于 {it:depvar}。平方根lassos是线性模型，而 {it:depvar} 的lasso始终是Poisson lasso。可以使用 {cmd:lasso()} 与 {cmd:sqrtlasso} 结合，以指定某些变量执行常规lasso，覆盖这些变量的全局 {cmd:sqrtlasso} 设置。请参见 {manhelp lasso_options LASSO:lasso 选项}。

INCLUDE help missingok_long

{phang}
{opth "offset(varname:varname_o)"} 指定 {it:varname_o} 在lasso和 {it:depvar} 的模型中，其系数被约束为1。

{phang}
{opth "exposure(varname:varname_e)"} 指定 ln({it:varname_e}) 在lasso和 {it:depvar} 的模型中，其系数被约束为1。

{dlgtab:标准误/稳健性}

{phang}
{opt vce(vcetype)} 指定报告的标准误类型。默认值为 {cmd:vce(robust)}，对某些类型的错误规格具有鲁棒性。还有 {cmd:vce(oim)}，观察信息矩阵 (OIM)。
请参见 {help vce_option_zh:[R] {it:vce_option}}。

{dlgtab:报告}

{phang}
{opt level(#)}；参见 {helpb estimation options##level():[R] 估计选项}。

INCLUDE help irr_long

INCLUDE help displayopts_list

{dlgtab:优化}

INCLUDE help log_long

{phang}
{opt rseed(#)} 设置随机数种子。此选项可用于重复 {cmd:selection(cv)} 和 {cmd:selection(adaptive)} 的结果。默认选择方法 {cmd:selection(plugin)} 不使用随机数。
{opt rseed(#)} 相当于在运行 {cmd:dspoisson} 之前输入 {cmd:set} {cmd:seed} {it:#}。请参见 {manhelp set_seed R:set seed}。

{dlgtab:高级}

INCLUDE help lasso_opt_long

INCLUDE help sqrtlasso_opt_nonlinear_long

{pstd}
以下选项可与 {cmd:dspoisson} 一起使用，但未在对话框中显示：

{phang}
{cmd:reestimate} 是一个高级选项，基于使用 {help lassoselect_zh} 对底层lassos实施的更改重新拟合 {cmd:dspoisson} 模型。在运行 {cmd:dspoisson} 后，您可以为 {cmd:dspoisson} 估计的一个或多个lassos 选择不同的 lambda*。选择lambda*后，输入 {cmd:dspoisson,} {cmd:reestimate} 根据新选择的 lambda*s 重新拟合 {cmd:dspoisson} 模型。

{pmore}
{cmd:reestimate} 仅可与报告选项结合使用。

{phang}
{cmd:noheader} 防止显示系数表头。

{phang}
{cmd:coeflegend}；见 {helpb estimation options##coeflegend:[R] 估计选项}。


{marker examples}{...}
{title:示例}

{pstd}设置{p_end}
{phang2}{cmd:. webuse breathe}

{pstd}针对结果正确响应数量的双重选择lasso Poisson回归和课堂及家庭氮氧化物的推理{p_end}
{phang2}{cmd:. dspoisson correct no2_class no2_home,}
	{cmd:controls(i.(meducation overweight msmoke sex) noise sev* age)}

{pstd}使用交叉验证选择控制变量的结果正确响应数量的双重选择lasso Poisson回归{p_end}
{phang2}{cmd:. dspoisson correct no2_class no2_home,}
	{cmd:controls(i.(meducation overweight msmoke sex) noise sev* age)}
	{cmd:selection(cv)}


{marker results}{...}
{title:存储结果}

{pstd}
{cmd:dspoisson} 在 {cmd:e()} 中存储以下内容：

{synoptset 20 tabbed}{...}
{p2col 5 20 24 2: 标量}{p_end}
{synopt:{cmd:e(N)}}观察数量{p_end}
{synopt:{cmd:e(k_varsofinterest)}}感兴趣变量的数量{p_end}
{synopt:{cmd:e(k_controls)}}潜在控制变量的数量{p_end}
{synopt:{cmd:e(k_controls_sel)}}选择的控制变量的数量{p_end}
{synopt:{cmd:e(df)}}感兴趣变量的检验自由度{p_end}
{synopt:{cmd:e(chi2)}}卡方{p_end}
{synopt:{cmd:e(p)}}感兴趣变量的检验p值{p_end}
{synopt:{cmd:e(rank)}}{cmd:e(V)}的秩{p_end}

{synoptset 20 tabbed}{...}
{p2col 5 20 24 2: 宏}{p_end}
{synopt:{cmd:e(cmd)}}{cmd:dspoisson}{p_end}
{synopt:{cmd:e(cmdline)}}输入的命令{p_end}
{synopt:{cmd:e(depvar)}}因变量的名称{p_end}
{synopt:{cmd:e(lasso_depvars)}}所有lassos的因变量名称{p_end}
{synopt:{cmd:e(varsofinterest)}}感兴趣的变量{p_end}
{synopt:{cmd:e(controls)}}潜在控制变量{p_end}
{synopt:{cmd:e(controls_sel)}}选择的控制变量{p_end}
{synopt:{cmd:e(model)}}{cmd:poisson}{p_end}
{synopt:{cmd:e(title)}}估计输出中的标题{p_end}
{synopt:{cmd:e(offset)}}线性偏移变量{p_end}
{synopt:{cmd:e(chi2type)}}{cmd:Wald}；卡方检验类型{p_end}
{synopt:{cmd:e(vce)}}在 {cmd:vce()} 中指定的 {it:vcetype}{p_end}
{synopt:{cmd:e(vcetype)}}用于标记标准误差的标题{p_end}
{synopt:{cmd:e(rngstate)}}使用的随机数状态{p_end}
{synopt:{cmd:e(properties)}}{cmd:b V}{p_end}
{synopt:{cmd:e(predict)}}用于实现 {cmd:predict} 的程序{p_end}
{synopt:{cmd:e(select_cmd)}}用于实现 {cmd:lassoselect} 的程序{p_end}
{synopt:{cmd:e(marginsnotok)}} {cmd:margins} 不允许的预测{p_end}
{synopt:{cmd:e(asbalanced)}}因子变量 {cmd:fvset} 作为 {cmd:asbalanced}{p_end}
{synopt:{cmd:e(asobserved)}}因子变量 {cmd:fvset} 作为 {cmd:asobserved}{p_end}

{synoptset 20 tabbed}{...}
{p2col 5 20 24 2: 矩阵}{p_end}
{synopt:{cmd:e(b)}}系数向量{p_end}
{synopt:{cmd:e(V)}}估计值的方差-协方差矩阵{p_end}

{synoptset 20 tabbed}{...}
{p2col 5 20 24 2: 函数}{p_end}
{synopt:{cmd:e(sample)}}标记估计样本{p_end}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <dspoisson.sthlp>}