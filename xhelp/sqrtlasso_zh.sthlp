{smcl}
{* *! version 1.0.0  21jun2019}{...}
{viewerdialog sqrtlasso "dialog sqrtlasso"}{...}
{vieweralsosee "[LASSO] sqrtlasso" "mansection lasso sqrtlasso"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[LASSO] lasso postestimation" "help lasso postestimation"}{...}
{vieweralsosee "[LASSO] elasticnet" "help elasticnet_zh"}{...}
{vieweralsosee "[LASSO] lasso" "help lasso_zh"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[R] regress" "help regress_zh"}{...}
{viewerjumpto "Syntax" "sqrtlasso_zh##syntax"}{...}
{viewerjumpto "Menu" "sqrtlasso_zh##menu"}{...}
{viewerjumpto "Description" "sqrtlasso_zh##description"}{...}
{viewerjumpto "Links to PDF documentation" "sqrtlasso_zh##linkspdf"}{...}
{viewerjumpto "Options" "sqrtlasso_zh##options"}{...}
{viewerjumpto "Examples" "sqrtlasso_zh##examples"}{...}
{viewerjumpto "Stored results" "sqrtlasso_zh##results"}{...}
{viewerjumpto "Reference" "sqrtlasso_zh##reference"}
{help sqrtlasso:English Version}
{hline}{...}
{p2colset 1 22 24 2}{...}
{p2col:{bf:[LASSO] sqrtlasso} {hline 2}}平方根 Lasso 用于预测和模型选择{p_end}
{p2col:}({mansection LASSO sqrtlasso:查看完整 PDF 手册条目}){p_end}
{p2colreset}{...}


{marker syntax}{...}
{title:语法}

{p 8 17 2}
{opt sqrtlasso}
{depvar}
[{cmd:(}{it:alwaysvars}{cmd:)}]
{it:othervars}
{ifin}
{weight}
[{cmd:,} {it:options}]

{phang}
{it:alwaysvars} 是模型中始终包含的变量。

{phang}
{it:othervars} 是 {cmd:sqrtlasso} 将选择包含在模型中或排除的变量。

{synoptset 35 tabbed}{...}
{synopthdr}
{synoptline}
{syntab:模型}
{synopt :{opt nocons:tant}}抑制常数项{p_end}
{synopt :{cmdab:sel:ection(}{help sqrtlasso##selmethod:{it:sel_method}}{cmd:)}}选择方法以从可能的 lambda* 集合中选择平方根 Lasso 惩罚参数 lambda 的值{p_end}
{synopt :{opth off:set(varname:varname_o)}}将 {it:varname_o} 包含在模型中，系数约束为 1{p_end}

{syntab:优化}
{synopt :[{cmd:no}]{cmd:log}}显示或抑制迭代日志{p_end}
{synopt :{opt rseed(#)}}设置随机数种子{p_end}
INCLUDE help grid_short
INCLUDE help stop_short
INCLUDE help tolerance_short

INCLUDE help penaltywt_short
{synoptline}

{marker selmethod}{...}
{synoptset 35}{...}
{synopthdr:sel_method}
{synoptline}
{synopt :{cmd:cv} [{cmd:,} {help sqrtlasso##cv:{it:cv_opts}}]}使用 CV 选择 lambda*；默认值{p_end}
{synopt :{cmdab:plug:in} [{cmd:,} {help sqrtlasso##plug:{it:plugin_opts}}]}使用插件迭代公式选择 lambda*{p_end}
{synopt :{opt none}}不选择 lambda*{p_end}
{synoptline}

{marker cv}{...}
{synopthdr:cv_opts}
{synoptline}
INCLUDE help folds_short
INCLUDE help alllambdas_short
INCLUDE help serule_short
INCLUDE help sel_opts_short
{synoptline}

{marker plug}{...}
{synoptset 35}{...}
{synopthdr:plugin_opts}
{synoptline}
{synopt :{opt het:eroskedastic}}假设模型误差是异方差的；默认值{p_end}
{synopt :{opt hom:oskedastic}}假设模型误差是同方差的{p_end}
{synoptline}
{p 4 6 2}
{it:alwaysvars} 和 {it:othervars} 可以包含因子变量； 
请参见 {help fvvarlist_zh}.{p_end}
{p 4 6 2}
{cmd:iweight} 可以与所有 {it:sel_method} 选项一起使用。
{cmd:fweight} 在指定 {cmd:selection(plugin)} 或
{cmd:selection(none)} 时允许使用。
请参见 {help weight_zh}.{p_end}
{p 4 6 2}
{opt penaltywt(matname)} 不会出现在对话框中.{p_end}
{p 4 6 2}
请参见 {manhelp lasso_postestimation LASSO:lasso postestimation} 以获取估计后可用的功能.{p_end}


{marker menu}{...}
{title:菜单}

{phang}
{bf:统计 > Lasso > 平方根 Lasso}


{marker description}{...}
{title:描述}

{pstd}
{cmd:sqrtlasso} 选择协变量并使用平方根 Lasso 拟合线性模型。 {cmd:sqrtlasso} 的结果可用于预测和模型选择。 {cmd:sqrtlasso} 的结果通常与 {cmd:lasso} 的结果相似。

{pstd}
{cmd:sqrtlasso} 保存但不显示估计的系数。 可以使用 {manhelp lasso_postestimation LASSO:lasso postestimation} 命令生成预测，报告系数并显示拟合度量。

{pstd}
要了解 Lasso 的介绍，请参见 {manhelp Lasso_intro LASSO:Lasso intro}.


{marker linkspdf}{...}
{title:PDF 文档链接}

        {mansection LASSO sqrtlassoQuickstart:快速入门}

        {mansection LASSO sqrtlassoRemarksandexamples:备注和示例}

        {mansection LASSO sqrtlassoMethodsandformulas:方法和公式}

{pstd}
上述部分不包含在此帮助文件中。


{marker options}{...}
{title:选项}

{pstd}
请参见 {manlink LASSO lasso fitting} 以获取 Lasso 估计程序的概述以及如何设置选项以控制它的详细说明。

{dlgtab:模型}

{phang}
{cmd:noconstant} 省略常数项。 但是，请注意，当 {it:othervars} 中有因子变量时，{cmd:sqrtlasso} 可以通过包含因子变量的所有级别创建常数项的等效项。 仅在所有 {it:othervars} 是连续变量且有概念理由说明不应存在常数项时，此选项可能最佳。

{phang}
{cmd:selection(cv)}、 {cmd:selection(plugin)} 和 {cmd:selection(none)} 指定用于选择 lambda* 的选择方法。 这些选项还允许次选项用于控制指定的选择方法。

{phang2}
{cmd:selection(cv} [{cmd:,} {it:cv_opts}]{cmd:)} 是默认值。 它选择 lambda* 为使 CV 函数达到最小的 lambda。
在 {cmd:selection(cv)} 后可以使用 {manhelp lasso_postestimation LASSO:lasso postestimation} 命令评估替代的 lambda*。

{marker sel_cv_opts}{...}
{pmore2}
{it:cv_opts} 包括 {opt folds(#)}、 {cmd:alllambdas}、 {cmd:serule}、 {cmd:stopok}、 {cmd:strict} 和 {cmd:gridminok}。

INCLUDE help folds_long_p

INCLUDE help alllambdas_long_p

INCLUDE help serule_long_p

INCLUDE help sel_opts_long_p

{phang2}
{cmd:selection(plugin} [{cmd:,} {it:plugin_opts}]{cmd:)} 根据依赖于数据的“插件”迭代公式选择 lambda*。 插件方法旨在用于 Lasso 推断方法，当使用 {cmd:sqrtlasso} 手动实现推断方法时非常有用，例如双重选择 Lasso。 插件估计器计算一个值的 lambda*，该值主导了估计方程中的噪声，从而使其不太可能包括真实模型中没有的变量。 请参见 
{mansection LASSO sqrtlassoMethodsandformulas:{it:方法和公式}} 在 {bf:[LASSO] sqrtlasso} 中。

{pmore2}
{cmd:selection(plugin)} 不会估计其他值的系数，所以它不需要 lambda 网格，并且不适用任何网格选项。 它比 {cmd:selection(cv)} 快得多，因为估计仅针对单个 lambda 值进行。 但是，它是一个迭代过程，如果插件正在为一个小的 lambda 计算估计（这意味着许多非零系数），估计仍然可能耗时。 由于估计仅针对一个 lambda 进行，因此无法像其他选择方法允许的那样评估替代的 lambda*。 

{pmore2}
{it:plugin_opts} 包括 {cmd:heteroskedastic} 和 {cmd:homoskedastic}。

{phang3}
{cmd:heteroskedastic} 假设模型误差是异方差的。 它是默认值。 指定 {cmd:selection(plugin)} 等同于指定 {cmd:selection(plugin, heteroskedastic)}。

{phang3}
{cmd:homoskedastic} 假设模型误差是同方差的。 请参见
{mansection LASSO sqrtlassoMethodsandformulas:{it:方法和公式}} 在 {bf:[LASSO] sqrtlasso} 中。

{phang2}
{cmd:selection(none)} 不选择 lambda*。 平方根 Lasso 是在一组 lambda 值上估计的，但没有尝试确定应选择哪个 lambda。 可以运行后估计命令 {help lassoknots_zh} 查看定义估计非零系数集合的 knots 的 lambda 表。 可以使用 {help lassoselect_zh} 命令选择 lambda* 的值，并且可以运行 {help lassogof_zh} 以评估 lambda* 的预测性能。

{pmore2}
当指定 {cmd:selection(none)} 时，不计算 CV 函数。
如果要查看带有 CV 函数值的 knot 表并然后选择 lambda*，必须指定 {cmd:selection(cv)}。 {cmd:selection(none)} 没有次选项。

{phang}
{opth "offset(varname:varname_o)"} 指定 {it:varname_o} 以系数约束为 1 包含在模型中。

{marker optimization}{...}
{dlgtab:优化}

{phang}
[{cmd:no}]{cmd:log} 显示或抑制显示估计的进展的日志。

{phang}
{opt rseed(#)} 设置随机数种子。 此选项可用于重现 {cmd:selection(cv)} 的结果。 其他选择方法 {cmd:selection(plugin)} 和 {cmd:selection(none)} 不使用随机数。 {opt rseed(#)} 相当于在运行 {cmd:sqrtlasso} 之前键入 {cmd:set} {cmd:seed} {it:#}。 参见 {manhelp set_seed R:set seed}。

INCLUDE help grid_long

{phang}
{opt stop(#)} 指定停止标准的容忍度，该容忍度是 lambda 迭代的停止标准。 默认值为 1e-5。 当选择方法为 {cmd:selection(plugin)} 时，此选项不适用。 估计从最大网格值 lambda_{gmax} 开始，并向最小网格值 lambda_{gmin} 迭代。 当两个相邻的 lambda 网格值所产生的离差相对差别小于 {opt stop(#)} 时，迭代停止，不再评估更小的 lambda。 满足此容忍度的 lambda 值称为 lambda_{stop}。 通常，此停止标准在迭代达到 lambda_{gmin} 之前就满足了。

{pmore}
将 {opt stop(#)} 设置为更大的值意味着更早停止迭代，在更大的 lambda_{stop} 处停止。 要产生所有 lambda 网格值的系数估计，可以指定 {cmd:stop(0)}。 但是，请注意，对于小的 lambda，计算可能非常耗时。在时间方面，当您使用 {cmd:selection(cv)} 时，{opt stop(#)} 的最佳值是允许刚好足够的lambda被计算以识别 CV 函数的最小值的最大值。 当将 {opt stop(#)} 设置为更大的值时，要注意默认选择过程（由默认的 {cmd:stopok} 给出）带来的后果。 您可能希望通过使用 {cmd:strict} 来覆盖 {cmd:stopok} 的行为。

INCLUDE help tolerance_long

{pstd}
该选项可与 {cmd:sqrtlasso} 一起使用，但未显示在对话框中：

{phang}
{opt penaltywt(matname)} 是一个程序员选项，用于指定惩罚项中系数的权重向量。 每个系数对平方根 Lasso 惩罚项的贡献乘以其对应的权重。 权重必须是非负的。 默认情况下，每个系数的惩罚权重为 1.


{marker examples}{...}
{title:示例}

{pstd}设置{p_end}
{phang2}{cmd:. webuse cattaneo2}{p_end}
{phang2}{cmd:. keep  if fbaby==1}

{pstd}对首次生育母亲的子样本进行 Lasso 线性回归{p_end}
{phang2}{cmd:. sqrtlasso bweight c.mage##c.mage c.fage##c.fage c.mage#c.fage}
    {cmd:c.fedu##c.medu}
    {cmd:i.(mmarried mhisp fhisp foreign alcohol msmoke fbaby prenatal1)}
 
{pstd}使用插件选择 lambda 的平方根 Lasso 回归{p_end}
{phang2}{cmd:. sqrtlasso bweight c.mage##c.mage c.fage##c.fage c.mage#c.fage}
    {cmd:c.fedu##c.medu}
    {cmd:i.(mmarried mhisp fhisp foreign alcohol msmoke fbaby prenatal1),} 
    {cmd:selection(plugin)}


{marker results}{...}
{title:存储的结果}

{pstd}
{cmd:sqrtlasso} 将以下内容存储在 {cmd:e()} 中：

{synoptset 20 tabbed}{...}
{p2col 5 20 24 2: 标量}{p_end}
{synopt:{cmd:e(N)}}观察数{p_end}
{synopt:{cmd:e(k_allvars)}}潜在变量的数量{p_end}
{synopt:{cmd:e(k_nonzero_sel)}}所选模型的非零系数数量{p_end}
{synopt:{cmd:e(k_nonzero_cv)}}CV均值函数最小值的非零系数数量{p_end}
{synopt:{cmd:e(k_nonzero_serule)}}一标准误差规则的非零系数数量{p_end} 
{synopt:{cmd:e(k_nonzero_min)}}估计的 lambdas 中的最小非零系数数量{p_end}
{synopt:{cmd:e(k_nonzero_max)}}估计的 lambdas 中的最大非零系数数量{p_end}
{synopt:{cmd:e(lambda_sel)}}所选的 lambda* 的值{p_end} 
{synopt:{cmd:e(lambda_gmin)}}网格最小值的 lambda 值{p_end} 
{synopt:{cmd:e(lambda_gmax)}}网格最大值的 lambda 值{p_end} 
{synopt:{cmd:e(lambda_last)}}最后计算的 lambda 值{p_end}
{synopt:{cmd:e(lambda_cv)}}CV均值函数最小值的 lambda 值{p_end}
{synopt:{cmd:e(lambda_serule)}}一标准误差规则的 lambda 值{p_end}
{synopt:{cmd:e(ID_sel)}}所选 lambda* 的 ID{p_end}
{synopt:{cmd:e(ID_cv)}}CV均值函数最小值的 lambda ID{p_end}
{synopt:{cmd:e(ID_serule)}}一标准误差规则的 lambda ID{p_end}
{synopt:{cmd:e(cvm_min)}}最小 CV均值函数值{p_end}
{synopt:{cmd:e(cvm_serule)}}一标准误差规则下的 CV均值函数值{p_end}
{synopt:{cmd:e(devratio_min)}}最小离差比{p_end}
{synopt:{cmd:e(devratio_max)}}最大离差比{p_end}
{synopt:{cmd:e(L1_min)}}未标准化惩罚系数的 ell_1范数的最小值{p_end}
{synopt:{cmd:e(L1_max)}}未标准化惩罚系数的 ell_1范数的最大值{p_end}
{synopt:{cmd:e(L2_min)}}未标准化惩罚系数的 ell_2范数的最小值{p_end}
{synopt:{cmd:e(L2_max)}}未标准化惩罚系数的 ell_2范数的最大值{p_end}
{synopt:{cmd:e(ll_sel)}}所选模型的对数似然值{p_end}
{synopt:{cmd:e(n_lambda)}}lambda 的数量{p_end}
{synopt:{cmd:e(n_fold)}}CV折叠的数量{p_end}
{synopt:{cmd:e(stop)}}停止规则的容忍度{p_end}

{synoptset 20 tabbed}{...}
{p2col 5 20 24 2: 宏}{p_end}
{synopt:{cmd:e(cmd)}}{cmd:sqrtlasso}{p_end}
{synopt:{cmd:e(cmdline)}}输入的命令{p_end}
{synopt:{cmd:e(depvar)}}因变量的名称{p_end}
{synopt:{cmd:e(allvars)}}所有潜在变量的名称{p_end}
{synopt:{cmd:e(allvars_sel)}}所有所选变量的名称{p_end}
{synopt:{cmd:e(alwaysvars)}}始终包含的变量的名称{p_end}
{synopt:{cmd:e(othervars_sel)}}所有所选其他变量的名称{p_end}
{synopt:{cmd:e(post_sel_vars)}}平方根 Lasso 后所需的所有变量{p_end}
{synopt:{cmd:e(lasso_selection)}}选择方法{p_end}
{synopt:{cmd:e(sel_criterion)}}用于选择 lambda* 的标准{p_end}
{synopt:{cmd:e(model)}}{cmd:linear}、 {cmd:logit}、 {cmd:poisson} 或 {cmd:probit}{p_end}
{synopt:{cmd:e(title)}}估计输出中的标题{p_end}
{synopt:{cmd:e(rngstate)}}使用的随机数状态{p_end}
{synopt:{cmd:e(properties)}}{cmd:b}{p_end}
{synopt:{cmd:e(predict)}}用于实现 {cmd:predict} 的程序{p_end}
{synopt:{cmd:e(marginsnotok)}} {cmd:margins} 不允许的预测{p_end}

{synoptset 20 tabbed}{...}
{p2col 5 20 24 2: 矩阵}{p_end}
{synopt:{cmd:e(b)}}惩罚的未标准化系数向量{p_end}
{synopt:{cmd:e(b_standardized)}}惩罚的标准化系数向量{p_end}
{synopt:{cmd:e(b_postselection)}}后选择系数向量{p_end}

{synoptset 20 tabbed}{...}
{p2col 5 20 24 2: 函数}{p_end}
{synopt:{cmd:e(sample)}}标记估计样本{p_end}


{marker reference}{...}
{title:参考文献}

{phang}
Hastie, T., R. Tibshirani 和 M. Wainwright. 2015. 
{it:Statistical Learning with Sparsity: The Lasso and Generalizations}.  Boca Raton, FL: CRC Press.{p_end}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <sqrtlasso.sthlp>}