{smcl}
{* *! version 1.0.0  23jun2019}{...}
{viewerdialog xpologit "dialog xpologit"}{...}
{vieweralsosee "[LASSO] xpologit" "mansection lasso xpologit"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[LASSO] lasso inference postestimation" "help lasso inference postestimation"}{...}
{vieweralsosee "[LASSO] dslogit" "help dslogit_zh"}{...}
{vieweralsosee "[LASSO] pologit" "help pologit_zh"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[R] logit" "help logit_zh"}{...}
{vieweralsosee "[R] logistic" "help logistic_zh"}{...}
{viewerjumpto "Syntax" "xpologit_zh##syntax"}{...}
{viewerjumpto "Menu" "xpologit_zh##menu"}{...}
{viewerjumpto "Description" "xpologit_zh##description"}{...}
{viewerjumpto "Links to PDF documentation" "xpologit_zh##linkspdf"}{...}
{viewerjumpto "Options" "xpologit_zh##options"}{...}
{viewerjumpto "Examples" "xpologit_zh##examples"}{...}
{viewerjumpto "Stored results" "xpologit_zh##results"}
{help xpologit:English Version}
{hline}{...}
{p2colset 1 21 23 2}{...}
{p2col:{bf:[LASSO] xpologit} {hline 2}}交叉拟合偏应 lasso 逻辑回归{p_end}
{p2col:}({mansection LASSO xpologit:查看完整 PDF 手册条目}){p_end}
{p2colreset}{...}


{marker syntax}{...}
{title:语法}

{p 8 16 2}
{opt xpologit}
{depvar}
{it:varsofinterest}
{ifin}
[{cmd:,} {it:options}]

{pstd}
{it:varsofinterest} 是需要估算系数及其标准误差的变量。

{synoptset 35 tabbed}{...}
{synopthdr}
{synoptline}
{syntab:模型}
包括 help controls_short
包括 help selection_short
{synopt :{opt sqrt:lasso}}使用平方根 lasso{p_end}
{synopt :{opt xfold:s(#)}}使用 {it:#} 折进行交叉拟合{p_end}
{synopt :{opt resample}[{cmd:(}{it:#}{cmd:)}]}重复样本分割 {it:#} 次并平均结果{p_end}
包括 help technique_short
包括 help missingok_short
{synopt :{opth off:set(varname)}}在 lasso 和 {it:depvar} 模型中包括 {it:varname}，并将其系数约束为 1{p_end}

{syntab:报告}
{synopt :{opt l:evel(#)}}设置信心水平；默认值为 {cmd:level(95)}{p_end}
{synopt :{cmd:or}}报告赔率比；这是默认值{p_end}
{synopt :{cmd:coef}}报告估计系数{p_end}
{synopt :{it:{help xpologit##display_options:display_options}}}控制
包括 help shortdes-displayoptall

{syntab:优化}
{synopt :[{opt no}]{cmd:log}}显示或抑制迭代日志{p_end}
{synopt :{cmd:verbose}}显示冗长的迭代日志{p_end}
{synopt :{opt rseed(#)}}设置随机数种子{p_end}

{syntab:高级}
{synopt :{cmd:lasso(}{varlist}{cmd:,} {it:{help xpologit##lasso_options:lasso_options}}{cmd:)}}为 {it:varlist} 中的变量指定 lasso 选项；可以重复{p_end}
{synopt :{cmd:sqrtlasso(}{varlist}{cmd:,} {it:{help xpologit##sqrtlasso_options:lasso_options}}{cmd:)}}为 {it:varlist} 中的变量指定平方根 lasso 选项；可以重复{p_end}

包括 help robust_short
包括 help reestimate_short
{synopt :{opt nohead:er}}不显示系数表头{p_end}
包括 help shortdes-coeflegend
{synoptline}
包括 help footnotes_po


{marker menu}{...}
{title:菜单}

{phang}
{bf:统计 > Lasso > Lasso 推论模型 > 二元结果 > 交叉拟合偏应逻辑模型}


{marker description}{...}
{title:描述}

{pstd}
{cmd:xpologit} 拟合一个 lasso 逻辑回归模型，并报告指定协变量的赔率比、标准误差、检验统计量和置信区间。交叉拟合偏应方法用于估计这些变量的效应，并选择潜在的控制变量以包含在模型中。


{marker linkspdf}{...}
{title:PDF 文档链接}

        {mansection LASSO xpologitQuickstart:快速入门}

        {mansection LASSO xpologitRemarksandexamples:备注和示例}

        {mansection LASSO xpologitMethodsandformulas:方法和公式}

{pstd}
上述部分未包含在此帮助文件中。


{marker options}{...}
{title:选项}

{dlgtab:模型}

{phang}
{cmd:controls(}[{cmd:(}{it:alwaysvars}{cmd:)}] {it:othervars}{cmd:)} 指定控制变量集，以控制遗漏变量。控制变量也称为混杂变量。{cmd:xpologit} 为 {it:depvar} 和每个 {it:varsofinterest} 拟合 lasso。{it:alwaysvars} 是始终包含在这些 lasso 中的变量。{it:alwaysvars} 是可选的。{it:othervars} 是每个 lasso 将选择包含或排除的变量。也就是说，每个 lasso 将选择 {it:othervars} 的子集，而其他 lasso 可能选择 {it:othervars} 的不同子集。如果指定了 {it:alwaysvars}，则要求提供 {it:othervars}。如果未指定 {cmd:controls()}，则拟合标准逻辑回归。

包括 help selection_long

{phang}
{cmd:sqrtlasso} 指定对 {it:varsofinterest} 进行平方根 lasso，而不是常规 lasso。此选项不适用于 {it:depvar}。平方根 lasso 是线性模型，而 {it:depvar} 的 lasso 始终是逻辑 lasso。可以使用 {cmd:lasso()} 与 {cmd:sqrtlasso} 结合，以便对某些变量进行常规 lasso，从而覆盖这些变量的全局 {cmd:sqrtlasso} 设置。请参阅 {manhelp lasso_options LASSO:lasso 选项}。

{phang}
{opt xfolds(#)} 指定交叉拟合的折数。默认值为 {cmd:xfolds(10)}。

包括 help resample_long

包括 help technique_long
请参见 
{mansection LASSO xpologitMethodsandformulas:方法和公式} 在
{bf:[LASSO] xpologit} 中。

包括 help missingok_long

{phang}
{opth offset(varname)} 指定 {it:varname} 以在 {it:depvar} 的 lasso 和模型中包含，其系数约束为 1。

{dlgtab:报告}

{phang}
{opt level(#)}；见 {helpb estimation options##level():[R] 估计选项}。

包括 help or_long

包括 help displayopts_list

{dlgtab:优化}

包括 help log_long

{phang}
{opt rseed(#)} 设置随机数种子。此选项可用于重现结果。{opt rseed(#)} 等价于在运行 {cmd:xpologit} 之前输入 {cmd:set} {cmd:seed} {it:#}。随机数用于产生交叉拟合的分割样本。因此，对于所有 {cmd:selection()} 选项，如果您希望重新产生结果，必须使用此选项或使用 {cmd:set} {cmd:seed}。请参阅 {manhelp set_seed R:set seed}。

{dlgtab:高级}

包括 help lasso_opt_long

包括 help sqrtlasso_opt_nonlinear_long

{pstd}
以下选项适用于 {cmd:xpologit}，但未在对话框中显示：

包括 help robust_long

{phang}
{cmd:reestimate} 是一个高级选项，它根据使用 {help lassoselect_zh} 对基础 lasso 所做更改重新拟合 {cmd:xpologit} 模型。在运行 {cmd:xpologit} 后，您可以为 {cmd:xpologit} 估计的一个或多个 lasso 选择不同的 lambda*。选择 lambda* 后，您输入 {cmd:xpologit,} {cmd:reestimate} 以根据新选定的 lambda 重新拟合 {cmd:xpologit} 模型。

{pmore}
{cmd:reestimate} 只能与报告选项结合使用。

{phang}
{cmd:noheader} 防止显示系数表头。

{phang}
{cmd:coeflegend}；见 
{helpb estimation options##coeflegend:[R] 估计选项}。


{marker examples}{...}
{title:示例}

{pstd}设置{p_end}
{phang2}{cmd:. webuse cattaneo2}

{pstd}低出生体重的交叉拟合偏应逻辑回归，以及关于母亲在怀孕期间是否吸烟的推断{p_end} 
{phang2}{cmd:. xpologit lbweight i.mbsmoke,}
    {cmd:controls(i.(alcohol mmarried prenatal1)}
    {cmd:c.mage#i.foreign c.medu##c.fedu)}
	
{pstd}低出生体重的交叉拟合偏应逻辑回归，以及关于母亲在怀孕期间是否吸烟的推断，使用 5 折进行交叉拟合{p_end} 
{phang2}{cmd:. xpologit lbweight i.mbsmoke,}
    {cmd: controls(i.(alcohol mmarried prenatal1)}
    {cmd:c.mage#i.foreign c.medu##c.fedu) xfolds(5)}


{marker results}{...}
{title:存储结果}

{pstd}
{cmd:xpologit} 将以下内容存储在 {cmd:e()} 中：

{synoptset 20 tabbed}{...}
{p2col 5 20 24 2: 标量}{p_end}
{synopt:{cmd:e(N)}}观测数{p_end}
{synopt:{cmd:e(k_varsofinterest)}}兴趣变量数{p_end}
{synopt:{cmd:e(k_controls)}}潜在控制变量数{p_end}
{synopt:{cmd:e(k_controls_sel)}}选定控制变量数{p_end}
{synopt:{cmd:e(df)}}兴趣变量检验的自由度{p_end}
{synopt:{cmd:e(chi2)}}卡方{p_end}
{synopt:{cmd:e(p)}}兴趣变量检验的 p 值{p_end}
{synopt:{cmd:e(n_xfolds)}}交叉拟合的折数{p_end}
{synopt:{cmd:e(n_resample)}}重新抽样次数{p_end}
{synopt:{cmd:e(rank)}}{cmd:e(V)} 的秩{p_end}

{synoptset 20 tabbed}{...}
{p2col 5 20 24 2: 宏}{p_end}
{synopt:{cmd:e(cmd)}}{cmd:xpologit}{p_end}
{synopt:{cmd:e(cmdline)}}输入的命令{p_end}
{synopt:{cmd:e(depvar)}}因变量名称{p_end}
{synopt:{cmd:e(lasso_depvars)}}所有 lasso 的因变量名称{p_end}
{synopt:{cmd:e(varsofinterest)}}兴趣变量{p_end}
{synopt:{cmd:e(controls)}}潜在控制变量{p_end}
{synopt:{cmd:e(controls_sel)}}选定控制变量{p_end}
{synopt:{cmd:e(model)}}{cmd:logit}{p_end}
{synopt:{cmd:e(title)}}估计输出中的标题{p_end}
{synopt:{cmd:e(offset)}}线性偏移变量{p_end}
{synopt:{cmd:e(chi2type)}}{cmd:Wald}; 卡方检验类型{p_end}
{synopt:{cmd:e(vce)}}{it:vcetype} 在 {cmd:vce()} 中指定{p_end}
{synopt:{cmd:e(vcetype)}}用于标记标准误差的标题{p_end}
{synopt:{cmd:e(rngstate)}}使用的随机数状态{p_end}
{synopt:{cmd:e(properties)}}{cmd:b V}{p_end}
{synopt:{cmd:e(predict)}}用于实现 {cmd:predict} 的程序{p_end}
{synopt:{cmd:e(select_cmd)}}用于实现 {cmd:lassoselect} 的程序{p_end}
{synopt:{cmd:e(marginsnotok)}}{cmd:margins} 禁止的预测{p_end}
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
{center:翻译自Stata官方帮助文档 <xpologit.sthlp>}