{smcl}
{* *! version 1.0.0  23jun2019}{...}
{viewerdialog poregress "dialog poregress"}{...}
{vieweralsosee "[LASSO] poregress" "mansection lasso poregress"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[LASSO] lasso inference postestimation" "help lasso inference postestimation"}{...}
{vieweralsosee "[LASSO] dsregress" "help dsregress_zh"}{...}
{vieweralsosee "[LASSO] xporegress" "help xporegress_zh"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[R] regress" "help regress_zh"}{...}
{viewerjumpto "Syntax" "poregress_zh##syntax"}{...}
{viewerjumpto "Menu" "poregress_zh##menu"}{...}
{viewerjumpto "Description" "poregress_zh##description"}{...}
{viewerjumpto "Links to PDF documentation" "poregress_zh##linkspdf"}{...}
{viewerjumpto "Options" "poregress_zh##options"}{...}
{viewerjumpto "Examples" "poregress_zh##examples"}{...}
{viewerjumpto "Stored results" "poregress_zh##results"}
{help poregress:English Version}
{hline}{...}
{p2colset 1 22 24 2}{...}
{p2col:{bf:[LASSO] poregress} {hline 2}}部分最小二乘 lasso 线性回归{p_end}
{p2col:}({mansection LASSO poregress:查看完整 PDF 手册条目}){p_end}
{p2colreset}{...}


{marker syntax}{...}
{title:语法}

{p 8 16 2}
{opt poregress}
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
{synopt :{cmdab:sqrt:lasso}}使用平方根 lasso{p_end}
{synopt :{cmd:semi}}使用半部分 lasso 回归估计器{p_end}
INCLUDE help missingok_short

{syntab:报告}
{synopt :{opt l:evel(#)}}设定置信水平；默认为 {cmd:level(95)}{p_end}
{synopt :{it:{help poregress##display_options:display_options}}}控制
INCLUDE help shortdes-displayoptall

{syntab:优化}
{synopt :[{opt no}]{cmd:log}}显示或抑制迭代日志{p_end}
{synopt :{cmd:verbose}}显示详细的迭代日志{p_end}
{synopt :{opt rseed(#)}}设定随机数种子{p_end}

{syntab:高级}
{synopt :{cmd:lasso(}{varlist}{cmd:,} {it:{help poregress##lasso_options:lasso_options}}{cmd:)}}为 {it:varlist} 中的变量指定 lasso 选项；可重复使用{p_end}
{synopt :{cmd:sqrtlasso(}{varlist}{cmd:,} {it:{help poregress##sqrtlasso_options:lasso_options}}{cmd:)}}为 {it:varlist} 中的变量指定平方根 lasso 选项；{p_end}

INCLUDE help robust_short
INCLUDE help reestimate_short
{synopt :{opt nohead:er}}不显示系数表头{p_end}
INCLUDE help shortdes-coeflegend
{synoptline}
INCLUDE help footnotes_po


{marker menu}{...}
{title:菜单}

{phang}
{bf:统计 > Lasso > Lasso 推断模型 > 连续结果 > 部分最小二乘模型}


{marker description}{...}
{title:描述}

{pstd}
{cmd:poregress} 拟合 lasso 线性回归模型，并报告指定感兴趣协变量的系数及其标准误差、检验统计量和置信区间。使用部分最小二乘法来估计这些变量的效应，并选择潜在控制变量以纳入模型中。


{marker linkspdf}{...}
{title:PDF 文档链接}

        {mansection LASSO poregressQuickstart:快速入门}

        {mansection LASSO poregressRemarksandexamples:备注和示例}

        {mansection LASSO poregressMethodsandformulas:方法和公式}

{pstd}
上述部分不包括在此帮助文件中。


{marker options}{...}
{title:选项}

{dlgtab:模型}

{phang}
{cmd:controls(}[{cmd:(}{it:alwaysvars}{cmd:)}] {it:othervars}{cmd:)} 指定控制变量的集合，控制省略变量。控制变量也称为混淆变量。{cmd:poregress} 为 {it:depvar} 和每个 {it:varsofinterest} 拟合 lasso。{it:alwaysvars} 是始终应包含在这些 lasso 中的变量。{it:alwaysvars} 是可选的。{it:othervars} 是每个 lasso 将选择包含或排除的变量。也就是说， 每个 lasso 将选择一部分 {it:othervars}。所选择的 {it:othervars} 子集可能在不同的 lasso 之间不同。如果指定了 {it:alwaysvars}，则需要提供 {it:othervars}。如果未指定 {cmd:controls()}，则拟合常规线性回归。

INCLUDE help selection_long

{phang}
{cmd:sqrtlasso} 指定进行平方根 lasso，而非常规 lasso。可以与 {cmd:sqrtlasso} 一起使用 {cmd:lasso()} 选项，为某些变量指定进行常规 lasso，这将覆盖这些变量的全局 {cmd:sqrtlasso} 设置。有关更多信息，请参阅 {manhelp lasso_options LASSO:lasso options}。

{phang}
{cmd:semi} 指定使用半部分 lasso 回归估计器，而不是完全部分 lasso 估计器（这是默认设置）。有关更多信息，请参阅 {mansection LASSO poregressMethodsandformulas:方法和公式} 在 {bf:[LASSO] poregress} 中。

INCLUDE help missingok_long

{dlgtab:报告}

{phang}
{opt level(#)}; 参见 {helpb estimation options##level():[R] 估计选项}。

INCLUDE help displayopts_list

{dlgtab:优化}

INCLUDE help log_long

{phang}
{opt rseed(#)} 设置随机数种子。此选项可用于重现 {cmd:selection(cv)} 和 {cmd:selection(adaptive)} 的结果。默认选择方法 {cmd:selection(plugin)} 不使用随机数。
{opt rseed(#)} 相当于在运行 {cmd:poregress} 之前键入 {cmd:set} {cmd:seed} {it:#}。有关更多信息，请参阅 {manhelp set_seed R:set seed}。

{dlgtab:高级}

INCLUDE help lasso_opt_long

INCLUDE help sqrtlasso_opt_linear_long

{pstd}
以下选项可用于 {cmd:poregress}，但在对话框中未显示：

INCLUDE help robust_long

{phang}
{cmd:reestimate} 是一个高级选项，可以基于使用 {help lassoselect_zh} 对基础 lasso 所做的更改重新拟合 {cmd:poregress} 模型。在运行 {cmd:poregress} 之后，可以为 {cmd:poregress} 估计的一个或多个 lasso 选择不同的 lambda*。在选择 lambda* 后，输入 {cmd:poregress,} {cmd:reestimate} 以在新的选择的 lambdas 基础上重新拟合 {cmd:poregress} 模型。

{pmore}
{cmd:reestimate} 只能与报告选项结合使用。

{phang}
{cmd:noheader} 阻止显示系数表的表头。

{phang}
{cmd:coeflegend}; 参见 {helpb estimation options##coeflegend:[R] 估计选项}。


{marker examples}{...}
{title:示例}

{pstd}设置{p_end}
{phang2}{cmd:. webuse breathe}
	
{pstd}对反应时间的部分最小二乘 lasso 线性回归，以及对教室和家庭氮氧化物的推断{p_end}
{phang2}{cmd:. poregress react no2_class no2_home,}
   {cmd:controls(i.(meducation overweight msmoke sex) noise sev* age)}

{pstd}对反应时间的部分最小二乘 lasso 线性回归，以及使用交叉验证选择控制变量的教室和家庭氮氧化物推断{p_end}
{phang2}{cmd:. poregress react no2_class no2_home,}
    {cmd:controls(i.(meducation overweight msmoke sex) noise sev* age)}
    {cmd:selection(cv)}


{marker results}{...}
{title:存储结果}

{pstd}
{cmd:poregress} 在 {cmd:e()} 中存储以下内容：

{synoptset 20 tabbed}{...}
{p2col 5 20 24 2:标量}{p_end}
{synopt:{cmd:e(N)}}观察数量{p_end}
{synopt:{cmd:e(k_varsofinterest)}}感兴趣变量的数量{p_end}
{synopt:{cmd:e(k_controls)}}潜在控制变量的数量{p_end}
{synopt:{cmd:e(k_controls_sel)}}选择的控制变量数量{p_end}
{synopt:{cmd:e(df)}}感兴趣变量测试的自由度{p_end}
{synopt:{cmd:e(chi2)}}卡方{p_end}
{synopt:{cmd:e(p)}}感兴趣变量测试的 p 值{p_end}
{synopt:{cmd:e(rank)}}{cmd:e(V)}的秩{p_end}

{synoptset 20 tabbed}{...}
{p2col 5 20 24 2:宏}{p_end}
{synopt:{cmd:e(cmd)}}{cmd:poregress}{p_end}
{synopt:{cmd:e(cmdline)}}输入的命令{p_end}
{synopt:{cmd:e(depvar)}}因变量名称{p_end}
{synopt:{cmd:e(lasso_depvars)}}所有 lasso 的因变量名称{p_end}
{synopt:{cmd:e(varsofinterest)}}感兴趣的变量{p_end}
{synopt:{cmd:e(controls)}}潜在控制变量{p_end}
{synopt:{cmd:e(controls_sel)}}已选择的控制变量{p_end}
{synopt:{cmd:e(model)}}{cmd:linear}{p_end}
{synopt:{cmd:e(title)}}估计输出中的标题{p_end}
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
{p2col 5 20 24 2:矩阵}{p_end}
{synopt:{cmd:e(b)}}系数向量{p_end}
{synopt:{cmd:e(V)}}估计量的方差-协方差矩阵{p_end}

{synoptset 20 tabbed}{...}
{p2col 5 20 24 2:函数}{p_end}
{synopt:{cmd:e(sample)}}标记估计样本{p_end}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <poregress.sthlp>}