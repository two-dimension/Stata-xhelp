{smcl}
{* *! version 1.0.0  21jun2019}{...}
{viewerdialog elasticnet "dialog elasticnet"}{...}
{vieweralsosee "[LASSO] elasticnet" "mansection lasso elasticnet"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[LASSO] lasso postestimation" "help lasso postestimation"}{...}
{vieweralsosee "[LASSO] lasso" "help lasso_zh"}{...}
{vieweralsosee "[LASSO] sqrtlasso" "help sqrtlasso_zh"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[R] logit" "help logit_zh"}{...}
{vieweralsosee "[R] poisson" "help poisson_zh"}{...}
{vieweralsosee "[R] probit" "help probit_zh"}{...}
{vieweralsosee "[R] regress" "help regress_zh"}{...}
{viewerjumpto "Syntax" "elasticnet_zh##syntax"}{...}
{viewerjumpto "Menu" "elasticnet_zh##menu"}{...}
{viewerjumpto "Description" "elasticnet_zh##description"}{...}
{viewerjumpto "Links to PDF documentation" "elasticnet_zh##linkspdf"}{...}
{viewerjumpto "Options" "elasticnet_zh##options"}{...}
{viewerjumpto "Examples" "elasticnet_zh##examples"}{...}
{viewerjumpto "Stored results" "elasticnet_zh##results"}{...}
{viewerjumpto "Reference" "elasticnet_zh##reference"}
{help elasticnet:English Version}
{hline}{...}
{p2colset 1 23 25 2}{...}
{p2col:{bf:[LASSO] elasticnet} {hline 2}}弹性网预测和模型选择{p_end}
{p2col:}({mansection LASSO elasticnet:查看完整的PDF手册条目}){p_end}
{p2colreset}{...}


{marker syntax}{...}
{title:语法}

{p 8 16 2}
{opt elasticnet}
{it:model}
{depvar}
[{cmd:(}{it:alwaysvars}{cmd:)}]
{it:othervars}
{ifin}
{weight}
[{cmd:,} {it:options}]

{phang}
{it:model} 可以是 {cmd:linear}、{cmd:logit}、{cmd:probit} 或 {cmd:poisson} 中的任何一种。

{phang}
{it:alwaysvars} 是始终包含在模型中的变量。

{phang}
{it:othervars} 是 {cmd:elasticnet} 将选择包含或排除在模型中的变量。

{synoptset 35 tabbed}{...}
{synopthdr}
{synoptline}
{syntab:模型}
{synopt :{opt nocons:tant}}抑制常数项{p_end}
{synopt :{cmdab:sel:ection(cv}[{cmd:,} {help elasticnet##cv:{it:cv_opts}}]{cmd:)}}使用CV选择混合参数 alpha* 和 lasso惩罚参数 lambda*{p_end}
{synopt :{cmdab:sel:ection(none)}}不选择 alpha* 或 lambda*{p_end}
{synopt :{opth off:set(varname:varname_o)}}以系数限制为1的形式把 {it:varname_o} 包括在模型中{p_end}
{synopt :{opth exp:osure(varname:varname_e)}}在模型中加入 ln({it:varname_e})，系数限制为1（仅适用于 {cmd:poisson} 模型){p_end}

{syntab:优化}
{synopt :[{opt no}]{cmd:log}}显示或抑制迭代日志{p_end}
{synopt :{opt rseed(#)}}设置随机数种子{p_end}
{synopt :{cmdab:alpha:s(}{it:{help numlist_zh}}|{it:matname}{cmd:)}}指定 alpha 网格，使用 {it:numlist} 或矩阵{p_end}
{synopt :{cmd:grid(}{it:#_g}[{cmd:,} {opt ratio(#)} {opt min(#)}]{cmd:)}}使用对数网格指定可能的 lambdas 集合，网格点数量为 {it:#_g}{p_end}
{synopt :{cmdab:cross:grid(}{cmdab:aug:mented)}}根据需要扩展每个 alpha 的 lambda 网格，以生成一个单一的 lambda 网格；这是默认值{p_end}
{synopt :{cmdab:cross:grid(union)}}使用每个 alpha 的 lambda 网格的并集来生成单一的 lambda 网格{p_end}
{synopt :{cmdab:cross:grid(}{cmdab:diff:erent)}}为每个 alpha 使用不同的 lambda 网格{p_end}
INCLUDE help stop_short
INCLUDE help tolerance_short

INCLUDE help penaltywt_short
{synoptline}

{marker cv}{...}
{synoptset 35 tabbed}{...}
{synopthdr:cv_opts}
{synoptline}
INCLUDE help folds_short
INCLUDE help alllambdas_short
INCLUDE help serule_short
{synopt :{cmd:stopok}}当某个 alpha 的 CV 函数没有识别到最小值，并且 lambda 的 {opt stop(#)} 停止标准已经在 lambda_{stop} 达到时，允许 lambda_{stop} 被包括在 (alpha, lambda) 对中，可能被选为 (alpha*, lambda*)；这是默认值{p_end}
{synopt :{cmd:strict}}要求每个 alpha 的 CV 函数都有一个已识别的最小值；这是比默认 {cmd:stopok} 更严格的替代方案{p_end}
{synopt :{cmd:gridminok}}当某个 alpha 的 CV 函数没有识别到最小值，并且 lambda 的 {opt stop(#)} 停止标准尚未达到时，允许 lambda 网格的最小值 lambda_{gmin} 被包括在 (alpha, lambda) 对中，可能被选为 (alpha*, lambda*)；此选项很少使用{p_end}
{synoptline}
{p 4 6 2}
{it:alwaysvars} 和 {it:othervars} 可以包含因子变量；请参见 {help fvvarlist_zh}.{p_end}
{marker weight}{...}
{p 4 6 2}
{cmd:iweight}s 允许与 {cmd:selection(cv)} 和 {cmd:selection(none)} 一起使用。 当指定 {cmd:selection(none)} 时，允许使用 {cmd:fweight}s。请参见 {help weight_zh}.{p_end}
{p 4 6 2}
{opt penaltywt(matname)} 不会在对话框中出现。{p_end}
{p 4 6 2}
有关估计后可用功能，请参见 {manhelp lasso_postestimation LASSO:lasso postestimation}.{p_end}


{marker menu}{...}
{title:菜单}

{phang}
{bf:统计 > Lasso > 弹性网}


{marker description}{...}
{title:描述}

{pstd}
{cmd:elasticnet} 选择协变量并拟合线性、逻辑、概率和泊松模型，使用弹性网。
{cmd:elasticnet} 的结果可用于预测和模型选择。

{pstd}
{cmd:elasticnet} 保存但不显示估计系数。
可以使用在 {manhelp lasso_postestimation LASSO:lasso postestimation} 中列出的估计后命令来生成预测、报告系数并显示拟合优度度量。

{pstd}
有关lasso的介绍，请参见 {manhelp Lasso_intro LASSO:Lasso intro}。


{marker linkspdf}{...}
{title:PDF文档链接}

        {mansection LASSO elasticnetQuickstart:快速入门}

        {mansection LASSO elasticnetRemarksandexamples:备注和示例}

        {mansection LASSO elasticnetMethodsandformulas:方法和公式}

{pstd}
上述部分不包括在此帮助文件中。


{marker options}{...}
{title:选项}

{pstd}
有关 lasso 估计程序的概述和如何设置选项以控制它的详细说明，请参见 {manlink LASSO lasso fitting}。

{dlgtab:模型}

{phang}
{cmd:noconstant} 省略常数项。然而请注意，当 {it:othervars} 中存在因子变量时， {cmd:elasticnet} 有可能通过包含因子变量的所有水平来创建常数项的等效值。此选项通常最好在所有 {it:othervars} 为连续变量且有概念原因不需要常数项时使用。

{phang}
{cmd:selection(cv)} 和 {cmd:selection(none)} 指定用于选择 lambda* 的选择方法。

{phang2}
{cmd:selection(cv} [{cmd:,} {it:cv_opts}]{cmd:)} 是默认值。它选择使 CV 函数最小的 (alpha*, lambda*)。

INCLUDE help folds_long_p

{phang3}
{cmd:alllambdas} 指定，对于每个 alpha，为网格中的所有 lambdas 拟合模型，或直到达到 {opt stop(#)} 容忍度。默认情况下，模型是从最大的 lambda 计算到最小的 lambda，并且在每次模型拟合后计算 CV 函数。如果找到 CV 函数的最小值，则在不评估额外较小的 lambda 的情况下结束计算。

{pmore3}
{cmd:alllambdas} 计算这些额外较小的 lambdas 的模型。由于较小 lambda 的计算时间更大，指定 {cmd:alllambdas} 可能会大幅增加计算时间。通常情况下， {cmd:alllambdas} 只在需要全面绘制 CV 函数以确保找到了真正最小时使用。无论是否指定 {cmd:alllambdas}，选择的 (alpha*, lambda*) 将是相同的。

{phang3}
{cmd:serule} 基于 Hastie、Tibshirani 和 Wainwright（2015，13-14）推荐的“一个标准误差规则”选择 lambda*，而不是最小化 CV 函数的 lambda。一个标准误差规则为每个 alpha 选择 CV 函数值在最小值的一个标准误差范围内的最大 lambda。然后，从这些 (alpha, lambda) 对中，选择 CV 函数值最小的对。

{phang3}
{cmd:stopok}、{cmd:strict} 和 {cmd:gridminok} 指定当某个 alpha 的 CV 函数在网格中的任何 lambda 值下没有被识别为最小时该如何处理。当 CV 函数的值随着 lambda 变小而单调下降且始终未上升以识别一个最小值时，CV 函数在 alpha 的某个值下没有被识别为最小时，{cmd:stopok} 和 {cmd:gridminok} 将为将被评估的 (alpha, lambda) 对中选择替代 lambda。这些选项中的每个选项都能保持估计结果，并可以选择和评估替代 (alpha, lambda) 对。

{p 16 20 2}
{cmd:stopok} 指定，对于某个 alpha，当 CV 函数没有识别到最小值时，且 lambda 的 {opt stop(#)} 停止容忍度在 lambda_{stop} 达到时，(alpha, lambda_{stop}) 对将被选为可能的最小值对。 lambda_{stop} 为系数估计的最小 lambda，被认为 lambda_{stop} 在该 alpha 的真实最小值附近。对于某个 alpha 的值未识别到最小值且未满足 {opt stop(#)} 标准时，将发出错误。

{p 16 20 2}
{cmd:strict} 要求每个 alpha 的 CV 函数都有识别的最小值，否则将发出错误。

{p 16 20 2}
{cmd:gridminok} 是很少使用的选项，指定在某个 alpha 的 CV 函数没有识别最小值且未满足 {opt stop(#)} 停止标准的情况下，选择 lambda_{gmin}，即 lambda 网格的最小值，作为 (alpha, lambda_{gmin}) 的一部分，可能被选为最小值。

{p 16 16 2}
{cmd:gridminok} 标准比默认的 {cmd:stopok} 更宽松，并且比 {cmd:strict} 更宽松。在使用 {cmd:strict} 时，选择的 (alpha*, lambda*) 对是从所有被识别为最小值的 (alpha, lambda_{cvmin}) 对中选择的 CV 函数的最小值。在使用 {cmd:stopok} 时，被考虑的 (alpha, lambda) 对的集合包括被识别的最小值 lambda_{cvmin} 或满足停止标准的 lambda_{stop} 值。使用 {cmd:gridminok} 时，被考虑的 (alpha, lambda) 对的集合可能包括 lambda_{cvmin}、lambda_{stop}，或 lambda_{gmin}。

{phang2}
{cmd:selection(none)} 指定不选择任何 (alpha*, lambda*) 对。在这种情况下，弹性网对于每个 alpha 的一系列 lambda 值进行估计，但不尝试确定最佳的 (alpha, lambda) 对。可以运行估计后命令 {help lassoknots_zh} 来查看定义每个 alpha 的结节的 lambda 表格（即，非零系数的不同集合）。然后可以使用 {help lassoselect_zh} 命令来选择 (alpha*, lambda*) 对，并运行 {help lassogof_zh} 来评估所选对的预测性能。

{pmore2}
当指定 {cmd:selection(none)} 时，CV 函数不会被计算。如果希望查看 CV 函数值的结节表并选择 (alpha*, lambda*)，必须指定 {cmd:selection(cv)}。 {cmd:selection(none)} 没有子选项。

{phang}
{opth "offset(varname:varname_o)"} 指定 {it:varname_o} 以系数限制为1形式包括在模型中。

{phang}
{opth "exposure(varname:varname_e)"} 仅适用于 {cmd:poisson} 模型。它指定 ln({it:varname_e}) 以系数限制为1的形式包括在模型中。

{dlgtab:优化}

{phang}
[{cmd:no}]{cmd:log} 显示或抑制显示估计进度的日志。

{phang}
{opt rseed(#)} 设置随机数种子。此选项可用于复制 {cmd:selection(cv)} 的结果。({cmd:selection(none)} 不使用随机数) {opt rseed(#)} 相当于在运行 {cmd:elasticnet} 前输入 {cmd:set} {cmd:seed} {it:#}。请参见 {manhelp set_seed R:set seed}。

{phang}
{cmd:alphas(}{it:{help numlist_zh}}|{it:matname}{cmd:)} 
指定 alpha 网格的数值列表或矩阵。默认值为 {cmd:alphas(0.5 0.75 1)}。
为 {cmd:alphas()} 的某个值指定一个较小的非零值将导致计算时间很长，因为用于惩罚的优化算法在大部分情况下是岭回归，而混合了少量的 lasso，这在效率上是低效的。
然而，纯岭回归（alpha=0）是计算效率高的。

INCLUDE help grid_long

{phang}
{cmd:crossgrid(augmented)}、{cmd:crossgrid(union)} 和 
{cmd:crossgrid(different)}
指定用于 (alpha, lambda) 的二维网格类型。{cmd:crossgrid(augmented)} 和 {cmd:crossgrid(union)} 生成的网格是两个一维网格的乘积。
也就是说，lambda 网格对每个 alpha 的值都是相同的。
{cmd:crossgrid(different)} 为不同的 alpha 值使用不同的 lambda 网格。

{phang2}
{cmd:crossgrid(augmented)}，默认网格，是通过扩展算法形成的。首先，计算出适合每个 alpha 的 lambda 网格。然后，形成这些网格的不重叠部分并组合成一个单一的 lambda 网格。

{phang2}
{cmd:crossgrid(union)} 指定使用每个 alpha 的 lambda 网格的并集。也就是说，为每个 alpha 计算出一个 lambda 网格，然后通过简单地将所有 lambda 值放入一个网格中进行组合，该网格用于每个 alpha。这样产生的精细网格在大多数情况下会显著延长计算时间，而得不到显著的收益。

{phang2}
{cmd:crossgrid(different)} 指定为每个 alpha 值使用不同的 lambda 网格。此选项很少使用。对不同的 alpha 值使用不同的 lambda 网格会使 CV 选择方法的解释变得复杂。当 lambda 网格对每个 alpha 的值不相同时，对比是基于不在同一尺度上的参数区间。

{phang}
{opt stop(#)} 指定 lambda 迭代的停止标准的容忍度。默认值为 1e-5。估计从最大网格值 lambda_{gmax} 开始，逐渐迭代到最小网格值 lambda_{gmin}。当两个相邻 lambda 网格值产生的偏差的相对差小于 {opt stop(#)} 时，迭代停止，不评估更小的 lambdas。满足该容忍度的 lambda 值称为 lambda_{stop}。通常情况下，在迭代到达 lambda_{gmin} 前，此停止标准便会被满足。

{pmore}
将 {opt stop(#)} 设置为更大的值意味着在较大的 lambda_{stop} 时更早停止迭代。要对 lambda 网格中的所有值生成系数估计，可以指定 {cmd:stop(0)}。然而，请注意，计算小的 lambdas 可能非常耗时。在时间上，当您使用 {cmd:selection(cv)} 时，最佳的 {opt stop(#)} 值是允许仅计算足够的 lambdas 以识别 CV 函数最小值的最大值。如果设置 {opt stop(#)} 为更大的值，请注意在默认情况下 {cmd:stopok} 提供的 lambda* 选择过程的后果。您可能希望通过使用 {cmd:strict} 来覆盖 {cmd:stopok} 的行为。

INCLUDE help tolerance_long

{pstd}
以下选项适用于 {cmd:elasticnet}，但未显示在对话框中：

INCLUDE help penaltywt_long


{marker examples}{...}
{title:示例}

{pstd}设置{p_end}
{phang2}{cmd:. webuse cattaneo2}{p_end}
{phang2}{cmd:. keep  if foreign==1}

{pstd}弹性网线性回归{p_end}
{phang2}{cmd:. elasticnet linear bweight c.mage##c.mage c.fage##c.fage}
    {cmd:c.mage#c.fage c.fedu##c.medu} 
    {cmd:i.(mmarried mhisp fhisp foreign alcohol msmoke fbaby prenatal1),}
    {cmd:rseed(123)}

{pstd}指定 alpha 网格的弹性网线性回归{p_end}
{phang2}{cmd:. elasticnet linear bweight c.mage##c.mage c.fage##c.fage}
    {cmd:c.mage#c.fage c.fedu##c.medu}
    {cmd:i.(mmarried mhisp fhisp foreign alcohol msmoke fbaby prenatal1),}
    {cmd:alphas(.8(.05)1)}

{pstd}针对首次怀孕母亲的弹性网逻辑回归{p_end}
{phang2}{cmd:. elasticnet logit lbweight c.mage##c.mage c.fage##c.fage}
    {cmd:c.mage#c.fage c.fedu##c.medu}
    {cmd:i.(mmarried mhisp fhisp alcohol msmoke fbaby prenatal1)}

{pstd}修改 lambda 网格的首次怀孕母亲的弹性网逻辑回归{p_end}
{phang2}{cmd:. elasticnet logit lbweight c.mage##c.mage c.fage##c.fage}
    {cmd:c.mage#c.fage c.fedu##c.medu}
    {cmd:i.(mmarried mhisp fhisp foreign alcohol msmoke fbaby prenatal1),}
    {cmd:alphas(.9(.05)1)}
  
{pstd}针对外国母亲的弹性网泊松回归{p_end}
{phang2}{cmd:. elasticnet poisson nprenatal c.mage##c.mage c.fage##c.fage}
    {cmd:c.mage#c.fage c.fedu##c.medu}
    {cmd:i.(mmarried mhisp fhisp foreign alcohol msmoke fbaby prenatal1)}

{pstd}扩大 lambda 网格以包含更小值的外国母亲的弹性网泊松回归{p_end}
{phang2}{cmd:. elasticnet poisson nprenatal c.mage##c.mage c.fage##c.fage}
    {cmd:c.mage#c.fage c.fedu##c.medu}
    {cmd:i.(mmarried mhisp fhisp foreign alcohol msmoke fbaby prenatal1),}
    {cmd:grid(100, ratio(1e-5))}


{marker results}{...}
{title:存储结果}

{pstd}
{cmd:elasticnet} 在 {cmd:e()} 中存储以下内容：

{synoptset 20 tabbed}{...}
{p2col 5 20 24 2: 标量}{p_end}
{synopt:{cmd:e(N)}}观察数量{p_end}
{synopt:{cmd:e(k_allvars)}}潜在变量的数量{p_end}
{synopt:{cmd:e(k_nonzero_sel)}}所选模型的非零系数数量{p_end}
{synopt:{cmd:e(k_nonzero_cv)}} 在 CV 平均函数最低点的非零系数数量{p_end}
{synopt:{cmd:e(k_nonzero_serule)}} 一标准误差规则的非零系数数量{p_end}
{synopt:{cmd:e(k_nonzero_min)}} 估计 lambdas 中的非零系数的最小数量{p_end}
{synopt:{cmd:e(k_nonzero_max)}} 估计 lambdas 中的非零系数的最大数量{p_end}
{synopt:{cmd:e(alpha_sel)}} 选择的 alpha* 值{p_end}
{synopt:{cmd:e(alpha_cv)}} 在 CV 平均函数最低点的 alpha 值{p_end}
{synopt:{cmd:e(lambda_sel)}} 选择的 lambda* 值{p_end}
{synopt:{cmd:e(lambda_gmin)}} 在网格最低点的 lambda 值{p_end}
{synopt:{cmd:e(lambda_gmax)}} 在网格最高点的 lambda 值{p_end}
{synopt:{cmd:e(lambda_last)}} 计算的最后一个 lambda 值{p_end}
{synopt:{cmd:e(lambda_cv)}} 在 CV 平均函数最低点的 lambda 值{p_end}
{synopt:{cmd:e(lambda_serule)}} 一标准误差规则的 lambda 值{p_end}
{synopt:{cmd:e(ID_sel)}} 选择的 lambda* 的 ID{p_end}
{synopt:{cmd:e(ID_cv)}} 在 CV 平均函数最低点的 lambda 的 ID{p_end}
{synopt:{cmd:e(ID_serule)}} 一标准误差规则的 lambda 的 ID{p_end}
{synopt:{cmd:e(cvm_min)}} CV 平均函数的最小值{p_end}
{synopt:{cmd:e(cvm_serule)}} 一标准误差规则下的 CV 平均函数值{p_end}
{synopt:{cmd:e(devratio_min)}} 最小的偏差比率{p_end}
{synopt:{cmd:e(devratio_max)}} 最大的偏差比率{p_end}
{synopt:{cmd:e(L1_min)}} 未标准化系数的 L1 范数的最小值{p_end}
{synopt:{cmd:e(L1_max)}} 未标准化系数的 L1 范数的最大值{p_end}
{synopt:{cmd:e(L2_min)}} 未标准化系数的 L2 范数的最小值{p_end}
{synopt:{cmd:e(L2_max)}} 未标准化系数的 L2 范数的最大值{p_end}
{synopt:{cmd:e(ll_sel)}} 所选模型的对数似然值{p_end}
{synopt:{cmd:e(n_lambda)}} lambdas 的数量{p_end}
{synopt:{cmd:e(n_fold)}} CV 折数数量{p_end}
{synopt:{cmd:e(stop)}} 停止规则容忍度{p_end}

{synoptset 20 tabbed}{...}
{p2col 5 20 24 2: 宏}{p_end}
{synopt:{cmd:e(cmd)}}{cmd:elasticnet}{p_end}
{synopt:{cmd:e(cmdline)}}输入的命令{p_end}
{synopt:{cmd:e(depvar)}}因变量名称{p_end}
{synopt:{cmd:e(allvars)}}所有潜在变量的名称{p_end}
{synopt:{cmd:e(allvars_sel)}}所有所选变量的名称{p_end}
{synopt:{cmd:e(alwaysvars)}}始终包含的变量的名称{p_end}
{synopt:{cmd:e(othervars_sel)}}其他所选变量的名称{p_end}
{synopt:{cmd:e(post_sel_vars)}} 所有模型估计后需要的变量{p_end}
{synopt:{cmd:e(lasso_selection)}}选择方法{p_end}
{synopt:{cmd:e(sel_criterion)}} 选择 lambda* 时使用的标准{p_end}
{synopt:{cmd:e(model)}}{cmd:linear}、{cmd:logit}、{cmd:poisson} 或 {cmd:probit}{p_end}
{synopt:{cmd:e(title)}}估计输出中的标题{p_end}
{synopt:{cmd:e(rngstate)}}使用的随机数状态{p_end}
{synopt:{cmd:e(properties)}}{cmd:b}{p_end}
{synopt:{cmd:e(predict)}}用于实现 {cmd:predict} 的程序{p_end}
{synopt:{cmd:e(marginsnotok)}} {cmd:margins} 阻止的预测{p_end}

{synoptset 20 tabbed}{...}
{p2col 5 20 24 2: 矩阵}{p_end}
{synopt:{cmd:e(b)}}惩罚性未标准化系数向量{p_end}
{synopt:{cmd:e(b_standardized)}}惩罚性标准化系数向量{p_end}
{synopt:{cmd:e(b_postselection)}}选择后的系数向量{p_end}

{synoptset 20 tabbed}{...}
{p2col 5 20 24 2: 函数}{p_end}
{synopt:{cmd:e(sample)}}标记估计样本{p_end}


{marker reference}{...}
{title:参考文献}

{phang}
Hastie, T.、R. Tibshirani 和 M. Wainwright。2015。 {it:Statistical Learning with Sparsity: The Lasso and Generalizations}.
佛罗里达州博卡拉顿：CRC出版社。{p_end}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <elasticnet.sthlp>}