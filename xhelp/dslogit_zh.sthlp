{smcl}
{* *! version 1.0.0  21jun2019}{...}
{viewerdialog dslogit "dialog dslogit"}{...}
{vieweralsosee "[LASSO] dslogit" "mansection lasso dslogit"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[LASSO] lasso inference postestimation" "help lasso inference postestimation"}{...}
{vieweralsosee "[LASSO] pologit" "help pologit_zh"}{...}
{vieweralsosee "[LASSO] xpologit" "help xpologit_zh"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[R] logit" "help logit_zh"}{...}
{vieweralsosee "[R] logistic" "help logistic_zh"}{...}
{viewerjumpto "Syntax" "dslogit_zh##syntax"}{...}
{viewerjumpto "Menu" "dslogit_zh##menu"}{...}
{viewerjumpto "Description" "dslogit_zh##description"}{...}
{viewerjumpto "Links to PDF documentation" "dslogit_zh##linkspdf"}{...}
{viewerjumpto "Options" "dslogit_zh##options"}{...}
{viewerjumpto "Examples" "dslogit_zh##examples"}{...}
{viewerjumpto "Stored results" "dslogit_zh##results"}
{help dslogit:English Version}
{hline}{...}
{p2colset 1 20 22 2}{...}
{p2col:{bf:[LASSO] dslogit} {hline 2}}双重选择套索逻辑回归{p_end}
{p2col:}({mansection LASSO dslogit:查看完整 PDF 手册条目}){p_end}
{p2colreset}{...}


{marker syntax}{...}
{title:语法}

{p 8 16 2}
{opt dslogit}
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
{synopt :{opt sqrt:lasso}}对 {it:varsofinterest} 使用平方根套索{p_end}
INCLUDE help missingok_short
{synopt :{opth off:set(varname)}}将 {it:varname} 包含在套索中，并对 {it:depvar} 的模型中其系数约束为 1{p_end}

{syntab:标准误/稳健性}
{synopt :{opth vce(vcetype)}}{it:vcetype} 可以是 {opt r:obust}（默认）或 {cmd:oim}{p_end}

{syntab:报告}
{synopt :{opt l:evel(#)}}设置置信水平；默认值为 {cmd:level(95)}{p_end}
{synopt :{opt or}}报告赔率比；默认{p_end}
{synopt :{opt coef}}报告估计系数{p_end}
{synopt :{it:{help dslogit##display_options:display_options}}}控制
INCLUDE help shortdes-displayoptall

{syntab:优化}
{synopt :[{opt no}]{cmd:log}}显示或抑制迭代日志{p_end}
{synopt :{opt verbose}}显示详细的迭代日志{p_end}
{synopt :{opt rseed(#)}}设置随机数种子{p_end}

{syntab:高级}
{synopt :{cmd:lasso(}{varlist}{cmd:,} {it:{help dslogit##lasso_options:lasso_options}}{cmd:)}}为 {it:varlist} 中的变量指定套索选项；可以重复使用{p_end}
{synopt :{cmd:sqrtlasso(}{varlist}{cmd:,} {it:{help dslogit##sqrtlasso_options:lasso_options}}{cmd:)}}为 {it:varlist} 中的变量指定平方根套索选项；可以重复使用{p_end}

INCLUDE help reestimate_short
{synopt :{opt nohead:er}}不显示系数表头{p_end}
INCLUDE help shortdes-coeflegend
{synoptline}
INCLUDE help footnotes_inference


{marker menu}{...}
{title:菜单}

{phang}
{bf:统计 > 套索 > 套索推断模型 > 二元结果 > 双重选择逻辑模型}


{marker description}{...}
{title:描述}

{pstd}
{cmd:dslogit} 拟合一个套索逻辑回归模型，并报告赔率比及其标准误、检验统计量和指定协变量的置信区间。采用双重选择方法来估计这些变量的效应，并从潜在控制变量中选择要包含在模型中的变量。


{marker linkspdf}{...}
{title:PDF 文档链接}

        {mansection LASSO dslogitQuickstart:快速入门}

        {mansection LASSO dslogitRemarksandexamples:备注和示例}

        {mansection LASSO dslogitMethodsandformulas:方法和公式}

{pstd}
上述部分未包含在此帮助文件中。


{marker options}{...}
{title:选项}

{dlgtab:模型}

{phang}
{cmd:controls(}[{cmd:(}{it:alwaysvars}{cmd:)}] {it:othervars}{cmd:)} 指定控制变量集，用于控制被遗漏的变量。控制变量也称为混杂变量。{cmd:dslogit} 为 {it:depvar} 和每个 {it:varsofinterest} 拟合套索。{it:alwaysvars} 是始终包含在这些套索中的变量。
{it:alwaysvars} 是可选的。{it:othervars} 是每个套索将选择包含或排除的变量。也就是说，每个套索将选择 {it:othervars} 的一个子集。所选的 {it:othervars} 子集在不同的套索中可能不同。如果指定了 {it:alwaysvars}，则需要 {it:othervars}。
如果未指定 {cmd:controls()}，则拟合标准逻辑回归。

INCLUDE help selection_long

{phang}
{cmd:sqrtlasso}
指定对 {it:varsofinterest} 进行平方根套索，而非常规套索。
该选项不适用于 {it:depvar}。平方根套索是线性模型，而 {it:depvar} 的套索始终是逻辑套索。
对于某些变量，可以使用 {cmd:lasso()} 与 {cmd:sqrtlasso} 结合，覆盖这些变量的全局 {cmd:sqrtlasso} 设置。
请参阅 {manhelp lasso_options LASSO:lasso options}。

INCLUDE help missingok_long

{phang}
{opt offset(varname)}
指定 {it:varname} 包含在 
套索和 {it:depvar} 的模型中，其系数约束为 1。

{dlgtab:标准误/稳健性}

{phang}
{opt vce(vcetype)} 指定报告的标准误型。
默认值为 {cmd:vce(robust)}，对此类错配具有稳健性。 也可以选择 {cmd:vce(oim)}，即观察到的信息矩阵 (OIM)。请参阅 {help vce_option_zh:[R] {it:vce_option}}。

{dlgtab:报告}

{phang}
{opt level(#)}；请参见 {helpb estimation options##level():[R] 估计选项}。

INCLUDE help or_long

INCLUDE help displayopts_list

{dlgtab:优化}

INCLUDE help log_long

{phang}
{opt rseed(#)} 设置随机数种子。此选项可用于重现 {cmd:selection(cv)} 和 {cmd:selection(adaptive)} 的结果。
默认选择方法 {cmd:selection(plugin)} 不使用随机数。
{opt rseed(#)} 相当于在运行 {cmd:dslogit} 之前输入 {cmd:set} {cmd:seed} {it:#}。请参阅 {manhelp set_seed R:set seed}。

{dlgtab:高级}

INCLUDE help lasso_opt_long

INCLUDE help sqrtlasso_opt_nonlinear_long

{pstd}
以下选项可与 {cmd:dslogit} 一起使用，但未在对话框中显示：

{phang}
{cmd:reestimate} 是一个高级选项，根据使用 {help lassoselect_zh} 对基本套索的更改对 {cmd:dslogit} 模型进行重新拟合。
运行 {cmd:dslogit} 后，可以为 {cmd:dslogit} 估计的一个或多个套索选择不同的 lambda*。选择 lambda* 后，键入 {cmd:dslogit,} {cmd:reestimate} 以根据新选择的 lambda 重新拟合 {cmd:dslogit} 模型。

{pmore}
{cmd:reestimate} 只能与报告选项结合使用。

{phang}
{cmd:noheader} 防止显示系数表头。

{phang}
{cmd:coeflegend}；请参见
{helpb estimation options##coeflegend:[R] 估计选项}。


{marker examples}{...}
{title:示例}

{pstd}设置{p_end}
{phang2}{cmd:. webuse breathe}

{pstd}低出生体重结果的双重选择套索逻辑回归，以及对母亲教育水平的推断{p_end}
{phang2}{cmd:. dslogit lbweight i.meducation,}
  {cmd:controls(i.(sex grade overweight feducation msmoke)}
  {cmd:sev_home c.age##c.age)}

{pstd}低出生体重结果的双重选择套索逻辑回归，以及对母亲教育水平的推断，使用交叉验证选择控制变量{p_end}
{phang2}{cmd:. dslogit lbweight i.meducation,}
   {cmd:controls(i.(sex grade overweight feducation msmoke)}
   {cmd:sev_home c.age##c.age) selection(cv)}


{marker results}{...}
{title:存储的结果}

{pstd}
{cmd:dslogit} 将以下结果存储在 {cmd:e()} 中：

{synoptset 20 tabbed}{...}
{p2col 5 20 24 2: 标量}{p_end}
{synopt:{cmd:e(N)}}观察值数量{p_end}
{synopt:{cmd:e(k_varsofinterest)}}关注变量的数量{p_end}
{synopt:{cmd:e(k_controls)}}潜在控制变量的数量{p_end}
{synopt:{cmd:e(k_controls_sel)}}选择的控制变量数量{p_end}
{synopt:{cmd:e(df)}}关注变量的自由度{p_end}
{synopt:{cmd:e(chi2)}}卡方{p_end}
{synopt:{cmd:e(p)}}关注变量的 p 值{p_end}
{synopt:{cmd:e(rank)}}{cmd:e(V)} 的秩{p_end}

{synoptset 20 tabbed}{...}
{p2col 5 20 24 2: 宏}{p_end}
{synopt:{cmd:e(cmd)}}{cmd:dslogit}{p_end}
{synopt:{cmd:e(cmdline)}}输入的命令{p_end}
{synopt:{cmd:e(depvar)}}因变量名称{p_end}
{synopt:{cmd:e(lasso_depvars)}}所有套索的因变量名称{p_end}
{synopt:{cmd:e(varsofinterest)}}关心的变量{p_end}
{synopt:{cmd:e(controls)}}潜在控制变量{p_end}
{synopt:{cmd:e(controls_sel)}}选择的控制变量{p_end}
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
{synopt:{cmd:e(marginsnotok)}}{cmd:margins} 禁止的预测{p_end}
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
{center:翻译自Stata官方帮助文档 <dslogit.sthlp>}