{smcl}
{* *! version 1.0.0  21jun2019}{...}
{viewerdialog pologit "dialog pologit"}{...}
{vieweralsosee "[LASSO] pologit" "mansection lasso pologit"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[LASSO] lasso inference postestimation" "help lasso inference postestimation"}{...}
{vieweralsosee "[LASSO] dslogit" "help dslogit_zh"}{...}
{vieweralsosee "[LASSO] xpologit" "help xpologit_zh"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[R] logit" "help logit_zh"}{...}
{vieweralsosee "[R] logistic" "help logistic_zh"}{...}
{viewerjumpto "Syntax" "pologit_zh##syntax"}{...}
{viewerjumpto "Menu" "pologit_zh##menu"}{...}
{viewerjumpto "Description" "pologit_zh##description"}{...}
{viewerjumpto "Links to PDF documentation" "pologit_zh##linkspdf"}{...}
{viewerjumpto "Options" "pologit_zh##options"}{...}
{viewerjumpto "Examples" "pologit_zh##examples"}{...}
{viewerjumpto "Stored results" "pologit_zh##results"}
{help pologit:English Version}
{hline}{...}
{p2colset 1 20 22 2}{...}
{p2col:{bf:[LASSO] pologit} {hline 2}}部分剔除的 Lasso 逻辑回归{p_end}
{p2col:}({mansection LASSO pologit:查看完整 PDF 手册条目}){p_end}
{p2colreset}{...}


{marker syntax}{...}
{title:语法}

{p 8 16 2}
{opt pologit}
{depvar}
{it:varsofinterest}
{ifin}
[{cmd:,} {it:options}]

{pstd}
{it:varsofinterest} 是要估计系数及其标准误差的变量。

{synoptset 35 tabbed}{...}
{synopthdr}
{synoptline}
{syntab:模型}
INCLUDE help controls_short
INCLUDE help selection_short
{synopt :{opt sqrt:lasso}}对 {it:varsofinterest} 使用平方根 Lasso{p_end}
INCLUDE help missingok_short
{synopt :{opth off:set(varname)}}将 {it:varname} 包含在 Lasso 和 {it:depvar} 的模型中，限制其系数为 1{p_end}

{syntab:报告}
{synopt :{opt l:evel(#)}}设置信心水平；默认为 {cmd:level(95)}{p_end}
{synopt :{cmd:or}}报告几率比；默认设置{p_end}
{synopt :{cmd:coef}}报告估计的系数{p_end}
{synopt :{it:{help pologit##display_options:display_options}}}控制
INCLUDE help shortdes-displayoptall

{syntab:优化}
{synopt :[{opt no}]{cmd:log}}显示或抑制迭代日志{p_end}
{synopt :{cmd:verbose}}显示详细的迭代日志{p_end}
{synopt :{opt rseed(#)}}设置随机数种子{p_end}

{syntab:高级}
{synopt :{cmd:lasso(}{varlist}{cmd:,} {it:{help pologit##lasso_options:lasso_options}}{cmd:)}}为 {it:varlist} 中的变量指定 Lasso 选项；可以重复使用{p_end}
{synopt :{cmd:sqrtlasso(}{varlist}{cmd:,} {it:{help pologit##sqrtlasso_options:lasso_options}}{cmd:)}}为 {it:varlist} 中的变量指定平方根 Lasso 选项；可以重复使用{p_end}

INCLUDE help robust_short
INCLUDE help reestimate_short
{synopt :{opt nohead:er}}不显示系数表的标题{p_end}
INCLUDE help shortdes-coeflegend
{synoptline}
INCLUDE help footnotes_po


{marker menu}{...}
{title:菜单}

{phang}
{bf:统计 > Lasso > Lasso 推断模型 > 二元结果 > 部分剔除的逻辑模型}


{marker description}{...}
{title:描述}

{pstd}
{cmd:pologit} 拟合 Lasso 逻辑回归模型，并报告指定协变量的几率比及其标准误、检验统计量和置信区间。使用部分剔除法来估计这些变量的效应，并从潜在控制变量中进行选择，以纳入模型中。


{marker linkspdf}{...}
{title:PDF 文档链接}

        {mansection LASSO pologitQuickstart:快速入门}

        {mansection LASSO pologitRemarksandexamples:备注和示例}

        {mansection LASSO pologitMethodsandformulas:方法和公式}

{pstd}
上述部分不包含在此帮助文档中。


{marker options}{...}
{title:选项}

{dlgtab:模型}

{phang}
{cmd:controls(}[{cmd:(}{it:alwaysvars}{cmd:)}] {it:othervars}{cmd:)} 指定控制变量的集合，控制遗漏变量。控制变量也称为混杂变量。{cmd:pologit} 为 {it:depvar} 和每个 {it:varsofinterest} 拟合 Lasso。{it:alwaysvars} 是始终包含在这些 Lasso 中的变量。{it:alwaysvars} 是可选的。{it:othervars} 是每个 Lasso 将选择包含或排除的变量。即，每个 Lasso 将选择一组 {it:othervars} 的子集。所选的 {it:othervars} 子集可能在不同的 Lasso 中有所不同。如果指定了 {it:alwaysvars}，则 {it:othervars} 是必需的。如果未指定 {cmd:controls()}，则拟合标准逻辑回归。

INCLUDE help selection_long

{phang}
{cmd:sqrtlasso} 指定对 {it:varsofinterest} 使用平方根 Lasso，而非常规 Lasso。此选项不适用于 {it:depvar}。平方根 Lasso 是线性模型，而 {it:depvar} 的 Lasso 始终是一个逻辑 Lasso。可以将选项 {cmd:lasso()} 与 {cmd:sqrtlasso} 一起使用，以指定对某些变量执行常规 Lasso，从而覆盖这些变量的全局 {cmd:sqrtlasso} 设置。请参阅 {manhelp lasso_options LASSO:lasso options}。

INCLUDE help missingok_long

{phang}
{opth offset(varname)} 指定将 {it:varname} 包含在 Lasso 和 {it:depvar} 的模型中，限制其系数为 1。

{dlgtab:报告}

{phang}
{opt level(#)}；见 {helpb estimation options##level():[R] 估计选项}。

INCLUDE help or_long

INCLUDE help displayopts_list

{dlgtab:优化}

INCLUDE help log_long

{phang}
{opt rseed(#)} 设置随机数种子。可用于重现 {cmd:selection(cv)} 和 {cmd:selection(adaptive)} 的结果。默认选择方法 {cmd:selection(plugin)} 不使用随机数。{opt rseed(#)} 相当于在运行 {cmd:pologit} 之前输入 {cmd:set} {cmd:seed} {it:#}。请参见 {manhelp set_seed R:set seed}。

{dlgtab:高级}

INCLUDE help lasso_opt_long

INCLUDE help sqrtlasso_opt_nonlinear_long

{pstd}
以下选项可与 {cmd:pologit} 一起使用，但未在对话框中显示：

INCLUDE help robust_long

{phang}
{cmd:reestimate} 是一个高级选项，可根据使用 {help lassoselect_zh} 对基础 Lasso 进行的更改重新拟合 {cmd:pologit} 模型。运行 {cmd:pologit} 后，可以为 {cmd:pologit} 估计的一个或多个 Lasso 选择不同的 lambda*。选择 lambda* 后，输入 {cmd:pologit,} {cmd:reestimate} 以根据新选择的 lambda 重新拟合 {cmd:pologit} 模型。

{pmore}
{cmd:reestimate} 仅可与报告选项结合使用。

{phang}
{cmd:noheader} 防止显示系数表的标题。

{phang}
{cmd:coeflegend}；请参考
{helpb estimation options##coeflegend:[R] 估计选项}。


{marker examples}{...}
{title:示例}

{pstd}设置{p_end}
{phang2}{cmd:. webuse breathe}

{pstd}对低出生体重的结果进行部分剔除的逻辑回归，并对母亲教育水平进行推断{p_end} 
{phang2}{cmd:. pologit lbweight i.meducation,}
    {cmd:controls(i.(sex grade overweight feducation msmoke)}
    {cmd:sev_home c.age##c.age)}

{pstd}对低出生体重的结果进行部分剔除的逻辑回归，并使用交叉验证选择控制变量{p_end} 
{phang2}{cmd:. pologit lbweight i.meducation,}
   {cmd:controls(i.(sex grade overweight feducation msmoke)}
   {cmd:sev_home c.age##c.age) selection(cv)}


{marker results}{...}
{title:存储结果}

{pstd}
{cmd:pologit} 将以下内容存储在 {cmd:e()} 中：

{synoptset 20 tabbed}{...}
{p2col 5 20 24 2: 标量}{p_end}
{synopt:{cmd:e(N)}}观测数{p_end}
{synopt:{cmd:e(k_varsofinterest)}}关注变量的数量{p_end}
{synopt:{cmd:e(k_controls)}}潜在控制变量的数量{p_end}
{synopt:{cmd:e(k_controls_sel)}}所选控制变量的数量{p_end}
{synopt:{cmd:e(df)}}关注变量检验的自由度{p_end}
{synopt:{cmd:e(chi2)}}卡方{p_end}
{synopt:{cmd:e(p)}}关注变量检验的 p 值{p_end}
{synopt:{cmd:e(rank)}}{cmd:e(V)}的秩{p_end}

{synoptset 20 tabbed}{...}
{p2col 5 20 24 2: 宏}{p_end}
{synopt:{cmd:e(cmd)}}{cmd:pologit}{p_end}
{synopt:{cmd:e(cmdline)}}输入的命令{p_end}
{synopt:{cmd:e(depvar)}}因变量的名称{p_end}
{synopt:{cmd:e(lasso_depvars)}}所有 Lasso 的因变量名称{p_end}
{synopt:{cmd:e(varsofinterest)}}关注的变量{p_end}
{synopt:{cmd:e(controls)}}潜在控制变量{p_end}
{synopt:{cmd:e(controls_sel)}}所选控制变量{p_end}
{synopt:{cmd:e(model)}}{cmd:logit}{p_end}
{synopt:{cmd:e(title)}}估计输出中的标题{p_end}
{synopt:{cmd:e(offset)}}线性偏移变量{p_end}
{synopt:{cmd:e(chi2type)}}{cmd:Wald}; 卡方检验类型{p_end}
{synopt:{cmd:e(vce)}}{it:vcetype} 在 {cmd:vce()} 中指定{p_end}
{synopt:{cmd:e(vcetype)}}用于标记标准误的标题{p_end}
{synopt:{cmd:e(rngstate)}}使用的随机数状态{p_end}
{synopt:{cmd:e(properties)}}{cmd:b V}{p_end}
{synopt:{cmd:e(predict)}}用于实现 {cmd:predict} 的程序{p_end}
{synopt:{cmd:e(select_cmd)}}用于实现 {cmd:lassoselect} 的程序{p_end}
{synopt:{cmd:e(marginsnotok)}}{cmd:margins} 不允许的预测{p_end}
{synopt:{cmd:e(asbalanced)}}因子变量 {cmd:fvset} 为 {cmd:asbalanced}{p_end}
{synopt:{cmd:e(asobserved)}}因子变量 {cmd:fvset} 为 {cmd:asobserved}{p_end}

{synoptset 20 tabbed}{...}
{p2col 5 20 24 2: 矩阵}{p_end}
{synopt:{cmd:e(b)}}系数向量{p_end}
{synopt:{cmd:e(V)}}估计量的方差-协方差矩阵{p_end}

{synoptset 20 tabbed}{...}
{p2col 5 20 24 2: 功能}{p_end}
{synopt:{cmd:e(sample)}}标记估计样本{p_end}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <pologit.sthlp>}