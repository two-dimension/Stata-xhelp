{smcl}
{* *! version 1.0.0  21jun2019}{...}
{viewerdialog xporegress "dialog xporegress"}{...}
{vieweralsosee "[LASSO] xporegress" "mansection lasso xporegress"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[LASSO] lasso inference postestimation" "help lasso inference postestimation"}{...}
{vieweralsosee "[LASSO] dsregress" "help dsregress_zh"}{...}
{vieweralsosee "[LASSO] poregress" "help poregress_zh"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[R] regress" "help regress_zh"}{...}
{viewerjumpto "Syntax" "xporegress_zh##syntax"}{...}
{viewerjumpto "Menu" "xporegress_zh##menu"}{...}
{viewerjumpto "Description" "xporegress_zh##description"}{...}
{viewerjumpto "Links to PDF documentation" "xporegress_zh##linkspdf"}{...}
{viewerjumpto "Options" "xporegress_zh##options"}{...}
{viewerjumpto "Examples" "xporegress_zh##examples"}{...}
{viewerjumpto "Stored results" "xporegress_zh##results"}
{help xporegress:English Version}
{hline}{...}
{p2colset 1 23 25 2}{...}
{p2col:{bf:[LASSO] xporegress} {hline 2}}交叉拟合偏倚消除 LASSO 线性回归{p_end}
{p2col:}({mansection LASSO xporegress:查看完整 PDF 手册条目}){p_end}
{p2colreset}{...}


{marker syntax}{...}
{title:语法}

{p 8 20 2}
{opt xporegress}
{depvar}
{it:varsofinterest}
{ifin}
[{cmd:,} {it:options}]

{pstd}
{it:varsofinterest} 为需要估计系数及其标准误的变量。

{synoptset 35 tabbed}{...}
{synopthdr}
{synoptline}
{syntab:模型}
INCLUDE help controls_short
INCLUDE help selection_short
{synopt :{cmdab:sqrt:lasso}}使用平方根 LASSO{p_end}
{synopt :{opt xfold:s(#)}}使用 {it:#} 折进行交叉拟合{p_end}
{synopt :{opt resample}[{cmd:(}{it:#}{cmd:)}]}重复样本拆分 {it:#} 次并平均结果{p_end}
INCLUDE help technique_short
{synopt :{opt semi}}使用半偏 LASSO 回归估计量{p_end}
INCLUDE help missingok_short

{syntab:报告}
{synopt :{opt l:evel(#)}}设置置信水平；默认值为 {cmd:level(95)}{p_end}
{synopt :{it:{help xpoivregress##display_options:display_options}}}控制
INCLUDE help shortdes-displayoptall

{syntab:优化}
{synopt :[{opt no}]{cmd:log}}显示或抑制迭代日志{p_end}
{synopt :{cmd:verbose}}显示详细的迭代日志{p_end}
{synopt :{opt rseed(#)}}设置随机数种子{p_end}

{syntab:高级}
{synopt :{cmd:lasso(}{varlist}{cmd:,} {it:{help xporegress##lasso_options:lasso_options}}{cmd:)}}为 {it:varlist} 中的变量指定 LASSO 选项；可以重复使用{p_end}
{synopt :{cmd:sqrtlasso(}{varlist}{cmd:,} {it:{help xporegress##sqrtlasso_options:lasso_options}}{cmd:)}}为 {it:varlist} 中的变量指定平方根 LASSO 选项；可以重复使用{p_end}

INCLUDE help robust_short
INCLUDE help reestimate_short
{synopt :{opt nohead:er}}不显示系数表的标题{p_end}
INCLUDE help shortdes-coeflegend
{synoptline}
INCLUDE help footnotes_po


{marker menu}{...}
{title:菜单}

{phang}
{bf:统计 > Lasso > Lasso 推断模型 > 连续结果 > 交叉拟合偏倚消除模型}


{marker description}{...}
{title:描述}

{pstd}
{cmd:xporegress} 拟合 LASSO 线性回归模型，并报告所需协变量的系数及其标准误、检验统计量和置信区间。使用交叉拟合偏倚消除方法来估计这些变量的效应，并从可能的控制变量中选择纳入模型的变量。


{marker linkspdf}{...}
{title:PDF 文档链接}

        {mansection LASSO xporegressQuickstart:快速入门}

        {mansection LASSO xporegressRemarksandexamples:备注和示例}

        {mansection LASSO xporegressMethodsandformulas:方法和公式}

{pstd}
上述部分不包括在此帮助文件中。


{marker options}{...}
{title:选项}

{dlgtab:模型}

{phang}
{cmd:controls(}[{cmd:(}{it:alwaysvars}{cmd:)}] {it:othervars}{cmd:)} 指定控制变量集，以控制省略变量。控制变量也称为混杂变量。{cmd:xporegress} 拟合 {it:depvar} 及每个 {it:varsofinterest} 的 LASSO。{it:alwaysvars} 是始终要在这些 LASSO 中包含的变量。{it:alwaysvars} 是可选的。{it:othervars} 是每个 LASSO 将选择包含或排除的变量。即每个 LASSO 将选择 {it:othervars} 的一个子集，而其他 LASSO 可能选择 {it:othervars} 的不同子集。如果指定了 {it:alwaysvars}，则 {it:othervars} 是必需的。如果未指定 {cmd:controls()}，则会拟合标准线性回归。

INCLUDE help selection_long

{phang}
{cmd:sqrtlasso} 指定进行平方根 LASSO，而不是常规 LASSO。可以使用选项 {cmd:lasso()} 与 {cmd:sqrtlasso} 配合使用，以指定某些变量的常规 LASSO，覆盖这些变量的全局 {cmd:sqrtlasso} 设置。请参见 {manhelp lasso_options LASSO:lasso options}。

{phang}
{opt xfolds(#)} 指定交叉拟合的折数。默认值为 {cmd:xfolds(10)}。

INCLUDE help resample_long

INCLUDE help technique_long
请参见 {mansection LASSO xporegressMethodsandformulas:方法和公式} 在 {bf:[LASSO] xporegress} 中。

{phang}
{cmd:semi} 指定使用半偏 LASSO 回归估计量，而不是默认的完全偏 LASSO 估计量。请参见 {mansection LASSO xporegressMethodsandformulas:方法和公式} 在 {bf:[LASSO] xporegress} 中。

INCLUDE help missingok_long

{dlgtab:报告}

{phang}
{opt level(#)}；请参见 {helpb estimation options##level():[R] 估计选项}。

INCLUDE help displayopts_list

{dlgtab:优化}

INCLUDE help log_long

{phang}
{opt rseed(#)} 设置随机数种子。可以使用此选项重现结果。{opt rseed(#)} 相当于在运行 {cmd:xporegress} 之前键入 {cmd:set} {cmd:seed} {it:#}。随机数用于生成交叉拟合的拆分样本。因此，对于所有 {cmd:selection()} 选项，如果您想重现结果，则必须使用此选项或使用 {cmd:set} {cmd:seed}。请参阅 {manhelp set_seed R:set seed}。

{dlgtab:高级}

INCLUDE help lasso_opt_long

INCLUDE help sqrtlasso_opt_linear_long

{pstd}
以下选项可与 {cmd:xporegress} 一起使用，但未在对话框中显示：

INCLUDE help robust_long

{phang}
{cmd:reestimate} 是一个高级选项，它根据对底层 LASSO 进行的更改重新拟合 {cmd:xporegress} 模型。运行 {cmd:xporegress} 后，您可以选择一个或多个由 {cmd:xporegress} 估计的 LASSO 的不同 lambda*。选择 lambda* 后，输入 {cmd:xporegress,} {cmd:reestimate} 以重新拟合基于新选择的 lambda 的 {cmd:xporegress} 模型。

{pmore}
{cmd:reestimate} 只能与报告选项结合使用。

{phang}
{cmd:noheader} 防止显示系数表的标题。

{phang}
{cmd:coeflegend}；请参见 {helpb estimation options##coeflegend:[R] 估计选项}。


{marker examples}{...}
{title:示例}

{pstd}设置{p_end}
{phang2}{cmd:. webuse breathe}
	
{pstd}针对课堂和家庭氮氧化物的反应时间交叉拟合偏倚消除 LASSO 线性回归和推断{p_end}
{phang2}{cmd:. xporegress react no2_class no2_home,}
	{cmd:controls(i.(meducation overweight msmoke sex) noise sev* age)}

{pstd}针对课堂和家庭氮氧化物的反应时间，使用 5 折进行交叉拟合的偏倚消除 LASSO 线性回归{p_end}
{phang2}{cmd:. xporegress react no2_class no2_home,}
	{cmd:controls(i.(meducation overweight msmoke sex) noise sev* age)}
	{cmd:xfolds(5)}


{marker results}{...}
{title:存储结果}

{pstd}
{cmd:xporegress} 将以下内容存储在 {cmd:e()} 中：

{synoptset 20 tabbed}{...}
{p2col 5 20 24 2: 标量}{p_end}
{synopt:{cmd:e(N)}}观察数{p_end}
{synopt:{cmd:e(k_varsofinterest)}}变量数量{p_end}
{synopt:{cmd:e(k_controls)}}潜在控制变量数量{p_end}
{synopt:{cmd:e(k_controls_sel)}}选择的控制变量数量{p_end}
{synopt:{cmd:e(df)}}感兴趣变量检验的自由度{p_end}
{synopt:{cmd:e(chi2)}}卡方{p_end}
{synopt:{cmd:e(p)}}感兴趣变量检验的 p 值{p_end}
{synopt:{cmd:e(n_xfolds)}}交叉拟合的折数{p_end}
{synopt:{cmd:e(n_resample)}}重抽样次数{p_end}
{synopt:{cmd:e(rank)}}{cmd:e(V)} 的秩{p_end}

{synoptset 20 tabbed}{...}
{p2col 5 20 24 2: 宏}{p_end}
{synopt:{cmd:e(cmd)}}{cmd:xporegress}{p_end}
{synopt:{cmd:e(cmdline)}}输入的命令{p_end}
{synopt:{cmd:e(depvar)}}因变量名称{p_end}
{synopt:{cmd:e(lasso_depvars)}}所有 LASSO 的因变量名称{p_end}
{synopt:{cmd:e(varsofinterest)}}感兴趣的变量{p_end}
{synopt:{cmd:e(controls)}}潜在控制变量{p_end}
{synopt:{cmd:e(controls_sel)}}选择的控制变量{p_end}
{synopt:{cmd:e(model)}}{cmd:linear}{p_end}
{synopt:{cmd:e(title)}}估计输出中的标题{p_end}
{synopt:{cmd:e(chi2type)}}{cmd:Wald}; 卡方检验类型{p_end}
{synopt:{cmd:e(vce)}}{it:vcetype} 在 {cmd:vce()} 中指定{p_end}
{synopt:{cmd:e(vcetype)}}标签用于标记 Std. Err.{p_end}
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
{center:翻译自Stata官方帮助文档 <xporegress.sthlp>}