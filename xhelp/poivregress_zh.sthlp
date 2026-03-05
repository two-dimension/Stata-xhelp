{smcl}
{* *! version 1.0.0  21jun2019}{...}
{viewerdialog poivregress "dialog poivregress"}{...}
{vieweralsosee "[LASSO] poivregress" "mansection lasso poivregress"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[LASSO] lasso inference postestimation" "help lasso inference postestimation"}{...}
{vieweralsosee "[LASSO] xpoivregress" "help xpoivregress_zh"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[R] ivregress" "help ivregress_zh"}{...}
{viewerjumpto "语法" "poivregress_zh##syntax"}{...}
{viewerjumpto "菜单" "poivregress_zh##menu"}{...}
{viewerjumpto "描述" "poivregress_zh##description"}{...}
{viewerjumpto "PDF文档链接" "poivregress_zh##linkspdf"}{...}
{viewerjumpto "选项" "poivregress_zh##options"}{...}
{viewerjumpto "示例" "poivregress_zh##examples"}{...}
{viewerjumpto "存储结果" "poivregress_zh##results"}
{help poivregress:English Version}
{hline}{...}
{p2colset 1 24 26 2}{...}
{p2col:{bf:[LASSO] poivregress} {hline 2}}剔除 lasso 工具变量回归{p_end}
{p2col:}({mansection LASSO poivregress:查看完整的 PDF 手册条目}){p_end}
{p2colreset}{...}


{marker syntax}{...}
{title:语法}

{p 8 16 2}
{opt poivregress}
{depvar}
[{it:exovars}]
{cmd:(}{it:endovars} {cmd:=} {it:instrumvars}{cmd:)}
{ifin}
[{cmd:,} {it:options}]

{pstd}
估计 exogenous 变量 {it:exovars} 和 endogenous 变量 {it:endovars} 的系数和标准误。  
工具变量集 {it:instrumvars} 可以是高维的。

{synoptset 35 tabbed}{...}
{synopthdr}
{synoptline}
{syntab:模型}
{synopt :{cmdab:cont:rols(}[{cmd:(}{it:alwaysvars}{cmd:)}] {it:othervars}{cmd:)}}{it:alwaysvars} 和 {it:othervars} 是 {it:depvar}、{it:exovars} 和 {it:endovars} 的控制变量；{it:instrumvars} 是仅适用于 {it:endovars} 的附加控制变量；{it:alwaysvars} 始终包含；lasso 选择是否包括或排除 {it:othervars}{p_end}
INCLUDE help selection_short
{synopt :{opt sqrt:lasso}}使用平方根 lasso{p_end}
INCLUDE help missingok_iv_short

{syntab:报告}
{synopt :{opt l:evel(#)}}设置置信水平；默认值为 {cmd:level(95)}{p_end}
{synopt :{it:{help poivregress##display_options:display_options}}}控制
INCLUDE help shortdes-displayoptall

{syntab:优化}
{synopt :[{opt no}]{cmd:log}}显示或抑制迭代日志{p_end}
{synopt :{cmd:verbose}}显示详细的迭代日志{p_end}
{synopt :{opt rseed(#)}}设定随机数种子{p_end}

{syntab:高级}
{synopt :{cmd:lasso(}{varlist}{cmd:,} {it:{help poivregress##lasso_options:lasso_options}}{cmd:)}}为 {it:varlist} 中的变量指定 lasso 的选项；可以重复{p_end}
{synopt :{cmd:sqrtlasso(}{varlist}{cmd:,} {it:{help poivregress##sqrtlasso_options:lasso_options}}{cmd:)}}为 {it:varlist} 中的变量指定平方根 lasso 的选项；可以重复{p_end}

INCLUDE help robust_short
INCLUDE help reestimate_short
{synopt :{opt nohead:er}}不在系数表中显示标题{p_end}
INCLUDE help shortdes-coeflegend
{synoptline}
INCLUDE help footnotes_po


{marker menu}{...}
{title:菜单}

{phang}
{bf:统计 > Lasso > Lasso 推断模型 > 连续结果 > 剔除 IV 模型}


{marker description}{...}
{title:描述}

{pstd}
{cmd:poivregress} 拟合一个 lasso 工具变量线性回归模型，并报告指定 covariates 的系数及其标准误、检验统计量和置信区间。感兴趣的协变量可以是内生的或外生的。采用剔除法来估计这些变量的效应，并从可能的控制变量和仪器中选择要包含在模型中的变量。


{marker linkspdf}{...}
{title:PDF文档链接}

        {mansection LASSO poivregressQuickstart:快速入门}

        {mansection LASSO poivregressRemarksandexamples:备注和示例}

        {mansection LASSO poivregressMethodsandformulas:方法和公式}

{pstd}
上述部分未包含在此帮助文件中。


{marker options}{...}
{title:选项}

{dlgtab:模型}

{phang}
{cmd:controls(}[{cmd:(}{it:alwaysvars}{cmd:)}] {it:othervars}{cmd:)}
指定控制变量集，以控制遗漏变量。控制变量也称为混杂变量。
{it:alwaysvars} 是始终包含在 lasso 中的变量。{it:alwaysvars} 是可选的。
{it:othervars} 是 lasso 将选择是否包含或排除的变量。
如果指定了此选项，则必须有 {it:othervars}。不能在没有 {it:othervars} 的情况下具有 {it:alwaysvars}。
工具变量 {it:instrumvars} 是一组附加控制变量，但仅适用于 {it:endovars}。

{pmore}
{cmd:poivregress} 为 {it:depvar} 和每个 {it:exovars} 和 {it:endovars} 拟合 lasso。
{it:depvar} 和 {it:exovars} 的 lasso 控制变量是 {it:alwaysvars}（始终包含）和 {it:othervars}（lasso 将包含或排除）。
{it:endovars} 的 lasso 控制变量是 {it:exovars}（始终包含）、{it:alwaysvars}（始终包含）、{it:instrumvars}（lasso 将包含或排除）和 {it:othervars}（lasso 将包含或排除）。

INCLUDE help selection_long

{phang}
{cmd:sqrtlasso}
指定执行平方根 lasso 而非常规 lasso。选项 {cmd:lasso()} 可与 {cmd:sqrtlasso} 一起使用，以指定对某些变量执行常规 lasso，从而覆盖这些变量的全局 {cmd:sqrtlasso} 设置。
请参阅 {manhelp lasso_options LASSO:lasso 选项}。

INCLUDE help missingok_iv_long

{dlgtab:报告}

{phang}
{opt level(#)}；见 {helpb estimation options##level():[R] 估计选项}。

INCLUDE help displayopts_list

{dlgtab:优化}

{phang}
[{cmd:no}]{cmd:log} 显示或抑制显示估计进度的日志。默认情况下，会显示一行消息，指示每个 lasso 估计开始时的状态。指定 {cmd:verbose} 以查看更详细的日志。

{phang}
{cmd:verbose} 显示详细日志，显示每个 lasso 估计的迭代。当进行 {cmd:selection(cv)} 或 {cmd:selection(adaptive)} 时，此选项非常有用。它使您能够监控这些选择方法的 lasso 估计的进度，在 {cmd:controls()} 中有许多 {it:othervars} 或许多 {it:instrumvars} 时，这可能会耗时较长。

{phang}
{opt rseed(#)} 设置随机数种子。此选项可用于重现 {cmd:selection(cv)} 和 {cmd:selection(adaptive)} 的结果。默认选择方法 {cmd:selection(plugin)} 不使用随机数。
{opt rseed(#)} 相当于在运行 {cmd:poivregress} 之前输入 {cmd:set} {cmd:seed} {it:#}。请参阅 {manhelp set_seed R:set seed}。

{dlgtab:高级}

INCLUDE help lasso_opt_iv_long

INCLUDE help sqrtlasso_opt_iv_long

{pstd}
{cmd:poivregress} 可用的以下选项未在对话框中显示：

INCLUDE help robust_long

{phang}
{cmd:reestimate} 是一项高级选项，用于根据使用 {help lassoselect_zh} 对基础 lasso 进行的更改重新拟合 {cmd:poivregress} 模型。在运行 {cmd:poivregress} 之后，您可以为一个或多个由 {cmd:poivregress} 估计的 lasso 选择不同的 λ*。选择 λ* 后，输入 {cmd:poivregress,} {cmd:reestimate} 以根据新选择的 λ 重新拟合 {cmd:poivregress} 模型。

{pmore}
{cmd:reestimate} 只能与报告选项组合。

{phang}
{cmd:noheader} 使得不显示系数表的标题。

{phang}
{cmd:coeflegend}；见
{helpb estimation options##coeflegend:[R] 估计选项}。


{marker examples}{...}
{title:示例}

{pstd}设置{p_end}
{phang2}{cmd:. webuse nlsy80}

{pstd}针对结果 {cmd:wage} 进行剔除 lasso 工具变量回归，并对 {cmd:exper} 和内生变量 {cmd:educ} 进行推断{p_end}
{phang2}{cmd:. poivregress wage exper}
    {cmd:(educ = i.pcollege##c.(meduc feduc) i.urban sibs iq),}
    {cmd:controls(c.age##c.age tenure kww i.(married black south urban))}

{pstd}针对结果 {cmd:wage} 进行剔除 lasso 工具变量回归，并对 {cmd:exper} 和内生变量 {cmd:educ} 进行推断，使用交叉验证选择仪器变量和控制变量{p_end}
{phang2}{cmd:. poivregress wage exper}
    {cmd:(educ = i.pcollege##c.(meduc feduc) i.urban sibs iq),}
    {cmd:controls(c.age##c.age tenure kww i.(married black south urban))}
    {cmd:selection(cv)}


{marker results}{...}
{title:存储结果}

{pstd}
{cmd:poivregress} 在 {cmd:e()} 中存储如下内容：

{synoptset 20 tabbed}{...}
{p2col 5 20 24 2: 标量}{p_end}
{synopt:{cmd:e(N)}}观察数量{p_end}
{synopt:{cmd:e(k_varsofinterest)}}感兴趣的变量数量{p_end}
{synopt:{cmd:e(k_controls)}}潜在控制变量数量{p_end}
{synopt:{cmd:e(k_controls_sel)}}选择的控制变量数量{p_end}
{synopt:{cmd:e(k_inst)}}潜在仪器数量{p_end}
{synopt:{cmd:e(k_inst_sel)}}选择的仪器数量{p_end}
{synopt:{cmd:e(df)}}感兴趣变量的自由度{p_end}
{synopt:{cmd:e(chi2)}}卡方值{p_end}
{synopt:{cmd:e(p)}}感兴趣变量检验的 p 值{p_end}
{synopt:{cmd:e(rank)}}{cmd:e(V)}的秩{p_end}

{synoptset 20 tabbed}{...}
{p2col 5 20 24 2: 宏}{p_end}
{synopt:{cmd:e(cmd)}}{cmd:poivregress}{p_end}
{synopt:{cmd:e(cmdline)}}输入的命令{p_end}
{synopt:{cmd:e(depvar)}}因变量名称{p_end}
{synopt:{cmd:e(lasso_depvars)}}所有 lasso 的因变量名称{p_end}
{synopt:{cmd:e(varsofinterest)}}感兴趣的变量{p_end}
{synopt:{cmd:e(controls)}}潜在控制变量{p_end}
{synopt:{cmd:e(controls_sel)}}选择的控制变量{p_end}
{synopt:{cmd:e(exog)}}外生变量{p_end}
{synopt:{cmd:e(endog)}}内生变量{p_end}
{synopt:{cmd:e(inst)}}潜在仪器{p_end}
{synopt:{cmd:e(inst_sel)}}选择的仪器{p_end}
{synopt:{cmd:e(model)}}{cmd:linear}{p_end}
{synopt:{cmd:e(title)}}估计输出中的标题{p_end}
{synopt:{cmd:e(chi2type)}}{cmd:Wald}; 卡方检验的类型{p_end}
{synopt:{cmd:e(vce)}}在 {cmd:vce()} 中指定的 {it:vcetype}{p_end}
{synopt:{cmd:e(vcetype)}}用于标记标准误的标题{p_end}
{synopt:{cmd:e(rngstate)}}所用的随机数状态{p_end}
{synopt:{cmd:e(properties)}}{cmd:b V}{p_end}
{synopt:{cmd:e(predict)}}用于实现 {cmd:predict} 的程序{p_end}
{synopt:{cmd:e(select_cmd)}}用于实现 {cmd:lassoselect} 的程序{p_end}
{synopt:{cmd:e(marginsnotok)}}不允许的预测{p_end}
{synopt:{cmd:e(asbalanced)}}因子变量 {cmd:fvset} 为 {cmd:asbalanced}{p_end}
{synopt:{cmd:e(asobserved)}}因子变量 {cmd:fvset} 为 {cmd:asobserved}{p_end}

{synoptset 20 tabbed}{...}
{p2col 5 20 24 2: 矩阵}{p_end}
{synopt:{cmd:e(b)}}系数向量{p_end}
{synopt:{cmd:e(V)}}估计量的方差-协方差矩阵{p_end}

{synoptset 20 tabbed}{...}
{p2col 5 20 24 2: 函数}{p_end}
{synopt:{cmd:e(sample)}}标记估计样本{p_end}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <poivregress.sthlp>}