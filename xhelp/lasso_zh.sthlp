{smcl}
{* *! version 1.0.0  21jun2019}{...}
{viewerdialog lasso "dialog lasso"}{...}
{vieweralsosee "[LASSO] lasso" "mansection lasso lasso"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[LASSO] lasso postestimation" "help lasso postestimation"}{...}
{vieweralsosee "[LASSO] elasticnet" "help elasticnet_zh"}{...}
{vieweralsosee "[LASSO] lasso examples" "mansection lasso lassoexamples"}{...}
{vieweralsosee "[LASSO] Lasso intro" "help Lasso intro"}{...}
{vieweralsosee "[LASSO] sqrtlasso" "help sqrtlasso_zh"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[R] logit" "help logit_zh"}{...}
{vieweralsosee "[R] poisson" "help poisson_zh"}{...}
{vieweralsosee "[R] probit" "help probit_zh"}{...}
{vieweralsosee "[R] regress" "help regress_zh"}{...}
{viewerjumpto "Syntax" "lasso_zh##syntax"}{...}
{viewerjumpto "Menu" "lasso_zh##menu"}{...}
{viewerjumpto "Description" "lasso_zh##description"}{...}
{viewerjumpto "Links to PDF documentation" "lasso_zh##linkspdf"}{...}
{viewerjumpto "Options" "lasso_zh##options"}{...}
{viewerjumpto "Examples" "lasso_zh##examples"}{...}
{viewerjumpto "Stored results" "lasso_zh##results"}{...}
{viewerjumpto "Reference" "lasso_zh##reference"}
{help lasso:English Version}
{hline}{...}
{p2colset 1 18 20 2}{...}
{p2col:{bf:[LASSO] lasso} {hline 2}}Lasso用于预测和模型选择{p_end}
{p2col:}({mansection LASSO lasso:查看完整的PDF手册条目}){p_end}
{p2colreset}{...}

{marker syntax}{...}
{title:语法}

{p 8 16 2}
{opt lasso}
{it:model}
{depvar}
[{cmd:(}{it:alwaysvars}{cmd:)}]
{it:othervars}
{ifin}
{weight}
[{cmd:,} {it:options}]

{phang}
{it:model} 是 {cmd:linear}、{cmd:logit}、{cmd:probit} 或 {cmd:poisson} 之一。

{phang}
{it:alwaysvars} 是始终包含在模型中的变量。

{phang}
{it:othervars} 是 {cmd:lasso} 将选择包含或排除在模型中的变量。

{synoptset 35 tabbed}{...}
{synopthdr}
{synoptline}
{syntab:模型}
{synopt :{opt nocons:tant}}抑制常数项{p_end}
{synopt :{cmdab:sel:ection(}{help lasso##selmethod:{it:sel_method}}{cmd:)}}选择方法，从可能的 lambda 集中选择一个 lasso 惩罚参数的值{p_end}
{synopt :{opth off:set(varname:varname_o)}}在模型中包含 {it:varname_o}，并将系数约束为 1{p_end}
{synopt :{opth exp:osure(varname:varname_e)}}在模型中包含 ln({it:varname_e})，并将系数约束为 1（仅 {cmd:poisson} 模型）{p_end}

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
{synopt :{cmd:cv} [{cmd:,} {help lasso##cv:{it:cv_opts}}]}使用 CV 选择 lambda*；默认设置{p_end}
{synopt :{cmdab:adapt:ive} [{cmd:,} {help lasso##adaptive:{it:adapt_opts}} {help lasso##cv:{it:cv_opts}}]}使用自适应 lasso 选择 lambda*{p_end}
{synopt :{cmdab:plug:in} [{cmd:,} {help lasso##plug:{it:plugin_opts}}]}使用插件迭代公式选择 lambda*{p_end}
{synopt :{opt none}}不选择 lambda*{p_end}
{synoptline}

{marker cv}{...}
{synoptset 35}{...}
{synopthdr:cv_opts}
{synoptline}
INCLUDE help folds_short
INCLUDE help alllambdas_short
INCLUDE help serule_short
INCLUDE help sel_opts_short
{synoptline}

{marker adaptive}{...}
{synoptset 35}{...}
{synopthdr:adapt_opts}
{synoptline}
{synopt :{opt step:s(#)}}使用 {it:#} 自适应步骤（将初始 lasso 视为步骤 1）{p_end}
{synopt :{opt unpen:alized}}使用未惩罚估计量构造初始权重{p_end}
{synopt :{opt ridge}}使用岭估计量构造初始权重{p_end}
{synopt :{opt power(#)}}将权重提升至 {it:#} 次方{p_end}
{synoptline}

{marker plug}{...}
{synoptset 35}{...}
{synopthdr:plugin_opts}
{synoptline}
{synopt :{opt het:eroskedastic}}假设模型误差为异方差；默认设置{p_end}
{synopt :{opt hom:oskedastic}}假设模型误差为同方差{p_end}
{synoptline}
{p 4 6 2}
{it:alwaysvars} 和 {it:othervars} 可以包含因子变量；
请参见 {help fvvarlist_zh}.{p_end}
{p 4 6 2}
{cmd:iweight} 在所有 {it:sel_method} 选项中均被允许。
{cmd:fweight} 在 {cmd:selection(plugin)} 或
{cmd:selection(none)} 指定时被允许。
请参见 {help weight_zh}.{p_end}
{p 4 6 2}
{opt penaltywt(matname)} 不会出现在对话框中.{p_end}
{p 4 6 2}
请参见 {manhelp lasso_postestimation LASSO:lasso postestimation} 以获取估计后可用的功能.{p_end}

{marker menu}{...}
{title:菜单}

{phang}
{bf:统计 > Lasso > Lasso}


{marker description}{...}
{title:描述}

{pstd}
{cmd:lasso} 选择协变量并拟合线性、逻辑斯蒂、probit 和 Poisson 模型。{cmd:lasso} 的结果可以用于预测和模型选择。

{pstd}
{cmd:lasso} 保存但不显示估计系数。可以使用 
在 {manhelp lasso_postestimation LASSO:lasso postestimation} 中列出的估计后命令生成预测、报告系数和显示拟合度量。

{pstd}
有关 lasso 的介绍，请参见 {manhelp Lasso_intro LASSO:Lasso intro}。

{pstd}
有关 lasso 拟合过程的描述，请参见
{manlink LASSO lasso fitting}。

{marker linkspdf}{...}
{title:链接到 PDF 文档}

        {mansection LASSO lassoQuickstart:快速入门}

        {mansection LASSO lassoRemarksandexamples:备注和示例}

        {mansection LASSO lassoMethodsandformulas:方法和公式}

{pstd}
上述部分未包含在此帮助文件中。

{marker options}{...}
{title:选项}

{pstd}
Lasso 估计由软件自动执行三步。理解这些步骤对了解如何指定选项至关重要。请注意，{cmd:selection(plugin)} 跳过第 1 步和第 2 步。
它不需要 lambda 网格。

{pstd}
第 1 步：设置 lambda 网格

{pmore}
为 lambda 设置网格。可以使用默认网格或指定网格选项以修改默认设置。网格中的最大 lambda 是 lambda_{gmax}，它自动设置为所有系数为零的模型所产生的最小 lambda。网格中的最小 lambda 是 lambda_{gmin}。通常，当找到 CV 功能的最小值时，估计会在达到 lambda_{gmin} 之前结束。如果没有找到最小值而达到 lambda_{gmin}，您可能需要将 lambda_{gmin} 设置得更小。您可以通过设置 lambda_{gmin} 来实现这一点，或通过将比例 lambda_{gmin}/lambda_{gmax} 设置为较小的值。请参见下面的 {helpb lasso##grid():grid()} 选项。

{pstd}
第 2 步：拟合网格中下一个 lambda 的模型

{pmore}
对于网格中的每个 lambda，估计一组非零系数。估计从 lambda_{gmax} 开始，并向 lambda_{gmin} 迭代。当找到 CV 功能的最小值、满足 {opt stop(#)} 停止容忍度或达到 lambda_{gmin} 时，迭代停止。当偏差变化小于 {opt stop(#)} 的相对差异时，迭代结束。要关闭此停止规则，请指定 {cmd:stop(0)}。请参见下面的 {help lasso##optimization:优化选项}。

{pstd}
第 3 步：选择 lambda*

{pmore}
选择一个被称为 lambda* 的 lambda。{opt selection(sel_method)} 指定选择 lambda* 时使用的方法。允许的 {it:sel_method} 有 {cmd:cv}（默认）、{cmd:adaptive}、{cmd:plugin} 和 {cmd:none}：

{pmore}
{cmd:cv} 是默认使用 CV 选择 lambda*。对于每个 lambda 拟合模型后，计算 CV 函数。如果找到 CV 函数的最小值，迭代将结束。要为最小值之后的额外 lambda 计算 CV 函数，请指定子选项 {cmd:alllambdas}。指定此选项时，首先执行第 2 步以获取所有 lambda，直到达到停止容忍度或到达网格的末尾。然后，计算所有 lambda 的 CV 函数并搜索最小值。请参见下面的 {help lasso##sel_cv_opts:子选项}。

{pmore}
{cmd:adaptive} 也使用 CV 选择 lambda*，但执行多个 lasso。在第一次 lasso 中，选择一个 lambda*，并根据系数估计构造惩罚权重。然后，在第二次 lasso 中使用这些权重选择另一个 lambda*。默认情况下，将执行两个 lasso，但可以指定更多。请参见下面的 {help lasso##sel_adapt_opts:子选项}。

{pmore}
{cmd:plugin} 基于迭代公式计算 lambda*。仅为此单个 lambda 的估计值获得系数。

{pmore}
{cmd:none} 不选择 lambda*。不计算 CV 函数。为所有 lambda 拟合模型，直到达到停止容忍度或到达网格的末尾。可以使用 {manhelp lasso_postestimation LASSO:lasso postestimation} 命令评估不同的 lambda 并选择 lambda*。

{pstd}
有关 lasso 拟合过程的详细描述，请参见 {manlink LASSO lasso fitting}。

{dlgtab:模型}

{phang}
{cmd:noconstant} 省略常数项。但是，请注意，当 {it:othervars} 中有因子变量时，{cmd:lasso} 可能通过包含因子变量的所有级别来创建常数项的等效项。此选项可能最好仅在所有 {it:othervars} 为连续变量且理论上无常数项时使用。

{phang}
{cmd:selection(cv)}、{cmd:selection(adaptive)}、{cmd:selection(plugin)} 和
{cmd:selection(none)} 指定用于选择 lambda* 的选择方法。
这些选项还允许子选项控制指定的选择方法。

{phang2}
{cmd:selection(cv} [{cmd:,} {it:cv_opts}]{cmd:)} 是默认的。它选择的 lambda* 是提供 CV 函数最小值的 lambda。它在预测目标时使用广泛。
在执行 {cmd:selection(cv)} 后，可以使用 {manhelp lasso_postestimation LASSO:lasso postestimation} 命令评估替代的 lambda* 值。

{marker sel_cv_opts}{...}
{pmore2}
{it:cv_opts} 是 {opt folds(#)}、{cmd:alllambdas}、{cmd:serule}、{cmd:stopok}、{cmd:strict} 和 {cmd:gridminok}。

INCLUDE help folds_long_p

INCLUDE help alllambdas_long_p

INCLUDE help serule_long_p

INCLUDE help sel_opts_long_p

{marker selection_adapt}{...}
{phang2}
{cmd:selection(adaptive} [{cmd:,} {it:adapt_opts} {it:cv_opts}]{cmd:)} 使用自适应 lasso 选择方法选择 lambda*。它由多个 lasso 组成，每个 lasso 步骤使用 CV。在每个连续的 lasso 后，丢弃系数为零的变量，并为非零系数的变量分配惩罚权重，旨在使小的系数估计在下一步中趋向于零。因此，最终模型通常具有比单个 lasso 更少的非零系数。自适应方法历史上用于 lasso 的模型选择目标。与 {cmd:selection(cv)} 一样，在执行 {cmd:selection(adaptive)} 后，可以使用 {manhelp lasso_postestimation LASSO:lasso postestimation} 命令评估替代的 lambda*。

{marker sel_adapt_opts}{...}
{pmore2}
{it:adapt_opts} 是 {opt steps(#)}、{cmd:unpenalized}、{cmd:ridge} 和
{opt power(#)}。

{phang3}
{opt steps(#)} 指定应执行的自适应 lasso 步数为 {it:#}。默认值为 {it:#}=2。也就是说，运行两次 lasso。在第一个 lasso 估计后，具有非零系数 beta_i 的项会获得权重为 1/|beta_i|，系数为零的项被省略，并估计一个第二次 lasso。小系数的项将被分配较大的权重，使其更有可能在第二次 lasso 中变为零。将 {it:#} > 2 可以产生更简练的模型。请参见 {mansection LASSO lassoMethodsandformulas:{it:方法和公式}} 在 {bf:[LASSO] lasso} 中。

{phang3}
{cmd:unpenalized} 指定自适应 lasso 在第一次 lasso 的初始权重构造中使用未惩罚估计量。当 CV 无法找到最小值时，此选项是有用的。{cmd:unpenalized} 不能与 {cmd:ridge} 一起指定。

{phang3}
{cmd:ridge} 指定自适应 lasso 在第一次 lasso 的初始权重构造中使用岭估计量。{cmd:ridge} 不能与 {cmd:unpenalized} 一起指定。

{phang3}
{opt power(#)} 指定自适应 lasso 将权重提升至 {it:#} 次方。默认值为 {cmd:power(1)}。指定的幂必须在 [0.25, 2] 的区间内。

{pmore2}
{it:cv_options} 是可以为 {cmd:selection(cv)} 指定的所有子选项，即 {opt folds(#)}、{cmd:alllambdas}、{cmd:serule}、{cmd:stopok}、{cmd:strict} 和 {cmd:gridminok}。选项 {cmd:alllambdas}、{cmd:strict} 和 {cmd:gridminok} 仅适用于第一个估计的 lasso。第二次及后次 lasso 使用的默认设置是 {cmd:gridminok}。当指定 {cmd:ridge} 时，第一次 lasso 将自动使用 {cmd:gridminok}。

{phang2}
{cmd:selection(plugin} [{cmd:,} {it:plugin_opts}]{cmd:)} 根据依赖于数据的“插件”迭代公式选择 lambda*。插件方法是为 lasso 推断方法设计的，在手动实现推断方法（如双重选择 lasso）时非常有用。插件估计量计算一个对于估计方程中的噪声占主导地位的 lambda* 值，这使得其不太可能包括不在真实模型中的变量。请参见 {mansection LASSO lassoMethodsandformulas:{it:方法和公式}} 在 {bf:[LASSO] lasso} 中。

{pmore2}
{cmd:selection(plugin)} 不估计任何其他 lambda 的系数，因此不需要 lambda 网格，且不适用任何网格选项。它比其他选择方法快得多，因为估计仅为单个 lambda 执行。然而，它是一个迭代过程，如果插件正在计算小 lambda 的估计（这意味着许多非零系数），则估计过程仍可能消耗时间。由于仅为一个 lambda 执行估计，因此您不能像其他选择方法那样评估替代的 lambda*。

{pmore2}
{it:plugin_opts} 是 {cmd:heteroskedastic} 和 {cmd:homoskedastic}。

{phang3}
{cmd:heteroskedastic}（仅 {cmd:linear} 模型）假设模型误差为异方差。这是默认设置。对于 {cmd:linear} 模型，指定 {cmd:selection(plugin)} 相当于指定 {cmd:selection(plugin, heteroskedastic)}。

{phang3}
{cmd:homoskedastic}（仅 {cmd:linear} 模型）假设模型误差为同方差。请参见 {mansection LASSO lassoMethodsandformulas:{it:方法和公式}} 在 {bf:[LASSO] lasso} 中。

{phang2}
{cmd:selection(none)} 不选择 lambda*。为 lambda 的网格值进行 lasso 估计，但不试图确定应该选择哪个 lambda。可以运行估计的后置命令 {help lassoknots_zh} 查看定义节点的 lambda 表（非零系数的顺序集合）。{help lassoselect_zh} 命令可以用来选择 lambda* 的值，{help lassogof_zh} 可以用来评估 lambda* 的预测性能。

{pmore2}
当指定 {cmd:selection(none)} 时，不计算 CV 函数。如果您想查看包含 CV 函数值的节点表并选择 lambda*，则必须指定 {cmd:selection(cv)}。 {cmd:selection(none)} 没有子选项。

{phang}
{opth "offset(varname:varname_o)"} 指定在模型中包含 {it:varname_o}，并将其系数约束为 1。

{phang}
{opth "exposure(varname:varname_e)"} 只能为 {cmd:poisson} 模型指定。它指定在模型中包含 ln({it:varname_e})，并将其系数约束为 1。

{marker optimization}{...}
{dlgtab:优化}

{phang}
[{cmd:no}]{cmd:log} 显示或抑制一个日志，显示估计的进度。

{phang}
{opt rseed(#)} 设置随机数种子。此选项可用于重现 {cmd:selection(cv)} 和 {cmd:selection(adaptive)} 的结果。其他选择方法 {cmd:selection(plugin)} 和 {cmd:selection(none)} 不使用随机数。{opt rseed(#)} 相当于在运行 {cmd:lasso} 之前输入 {cmd:set}
{cmd:seed} {it:#}。请参见 {manhelp set_seed R:set seed}。

INCLUDE help grid_long

INCLUDE help stop_long

INCLUDE help tolerance_long

{pstd}
以下选项适用于 {cmd:lasso} 但未在对话框中显示：

INCLUDE help penaltywt_long


{marker examples}{...}
{title:示例}

{pstd}设置{p_end}
{phang2}{cmd:. webuse cattaneo2}

{pstd}Lasso 线性回归{p_end}
{phang2}{cmd:. lasso linear bweight c.mage##c.mage c.fage##c.fage}
    {cmd:c.mage#c.fage c.fedu##c.medu}
    {cmd:i.(mmarried mhisp fhisp foreign alcohol msmoke fbaby prenatal1)}

{pstd}使用插件选择进行 Lasso 线性回归以获得 lambda{p_end}
{phang2}{cmd:. lasso linear bweight c.mage##c.mage c.fage##c.fage}
    {cmd:c.mage#c.fage c.fedu##c.medu} 
    {cmd:i.(mmarried mhisp fhisp foreign alcohol msmoke fbaby prenatal1),} 
    {cmd:selection(plugin)}
  
{pstd}Lasso 逻辑回归{p_end}
{phang2}{cmd:. lasso logit lbweight c.mage##c.mage c.fage##c.fage}
    {cmd:c.mage#c.fage c.fedu##c.medu}
    {cmd:i.(mmarried mhisp fhisp foreign alcohol msmoke fbaby prenatal1)}

{pstd}使用自适应 lasso 选择 lambda 的 Lasso 逻辑回归{p_end}
{phang2}{cmd:. lasso logit lbweight c.mage##c.mage c.fage##c.fage}
    {cmd:c.mage#c.fage c.fedu##c.medu}
    {cmd:i.(mmarried mhisp fhisp foreign alcohol msmoke fbaby prenatal1),}
    {cmd:selection(adaptive)}
  
{pstd}Lasso Poisson 回归{p_end}
{phang2}{cmd:. lasso poisson nprenatal c.mage##c.mage c.fage##c.fage}
    {cmd:c.mage#c.fage c.fedu##c.medu}
    {cmd:i.(mmarried mhisp fhisp foreign alcohol msmoke fbaby prenatal1)}
  
{pstd}扩展 lambda 网格以包括更小值的 Lasso Poisson 回归{p_end}
{phang2}{cmd:. lasso poisson nprenatal c.mage##c.mage c.fage##c.fage}
   {cmd:c.mage#c.fage c.fedu##c.medu}
   {cmd:i.(mmarried mhisp fhisp foreign alcohol msmoke fbaby prenatal1),}
   {cmd:grid(100, ratio(1e-5))}


{marker results}{...}
{title:存储结果}

{pstd}
{cmd:lasso} 在 {cmd:e()} 中存储以下内容：

{synoptset 20 tabbed}{...}
{p2col 5 20 24 2: 标量}{p_end}
{synopt:{cmd:e(N)}}观察数{p_end}
{synopt:{cmd:e(k_allvars)}}潜在变量数量{p_end}
{synopt:{cmd:e(k_nonzero_sel)}}选定模型的非零系数数量{p_end}
{synopt:{cmd:e(k_nonzero_cv)}}CV均值函数最小值处的非零系数数量{p_end}
{synopt:{cmd:e(k_nonzero_serule)}}一标准误规则下的非零系数数量{p_end} 
{synopt:{cmd:e(k_nonzero_min)}}在估计的 lambdas 中非零系数的最小数量{p_end}
{synopt:{cmd:e(k_nonzero_max)}}在估计的 lambdas 中非零系数的最大数量{p_end}
{synopt:{cmd:e(lambda_sel)}}选定的 lambda* 的值{p_end} 
{synopt:{cmd:e(lambda_gmin)}}网格最小值处的 lambda 值{p_end} 
{synopt:{cmd:e(lambda_gmax)}}网格最大值处的 lambda 值{p_end} 
{synopt:{cmd:e(lambda_last)}}计算的最后 lambda 的值{p_end}
{synopt:{cmd:e(lambda_cv)}}CV均值函数最小值处的 lambda 值{p_end}
{synopt:{cmd:e(lambda_serule)}}一标准误规则下的 lambda 值{p_end}
{synopt:{cmd:e(ID_sel)}}选定 lambda* 的 ID{p_end}
{synopt:{cmd:e(ID_cv)}}CV均值函数最小值处的 lambda 的 ID{p_end}
{synopt:{cmd:e(ID_serule)}}一标准误规则下的 lambda 的 ID{p_end}
{synopt:{cmd:e(cvm_min)}}最小的 CV 均值函数值{p_end}
{synopt:{cmd:e(cvm_serule)}}一标准误规则下的 CV 均值函数值{p_end}
{synopt:{cmd:e(devratio_min)}}最小的偏度比{p_end}
{synopt:{cmd:e(devratio_max)}}最大的偏度比{p_end}
{synopt:{cmd:e(L1_min)}}惩罚未标准化系数的 ell_1 范数的最小值{p_end}
{synopt:{cmd:e(L1_max)}}惩罚未标准化系数的 ell_1 范数的最大值{p_end}
{synopt:{cmd:e(L2_min)}}惩罚未标准化系数的 ell_2 范数的最小值{p_end}
{synopt:{cmd:e(L2_max)}}惩罚未标准化系数的 ell_2 范数的最大值{p_end}
{synopt:{cmd:e(ll_sel)}}选定模型的对数可能性值{p_end}
{synopt:{cmd:e(n_lambda)}} lambda 的数量{p_end}
{synopt:{cmd:e(n_fold)}} CV 折叠的数量{p_end}
{synopt:{cmd:e(stop)}}停止规则容忍度{p_end}

{synoptset 20 tabbed}{...}
{p2col 5 20 24 2: 宏}{p_end}
{synopt:{cmd:e(cmd)}}{cmd:lasso}{p_end}
{synopt:{cmd:e(cmdline)}}键入的命令{p_end}
{synopt:{cmd:e(depvar)}}因变量的名称{p_end}
{synopt:{cmd:e(allvars)}}所有潜在变量的名称{p_end}
{synopt:{cmd:e(allvars_sel)}}所有选定变量的名称{p_end}
{synopt:{cmd:e(alwaysvars)}}始终包含变量的名称{p_end}
{synopt:{cmd:e(othervars_sel)}}其他选定变量的名称{p_end}
{synopt:{cmd:e(post_sel_vars)}}后 lasso 所需的所有变量{p_end}
{synopt:{cmd:e(lasso_selection)}}选择方法{p_end}
{synopt:{cmd:e(sel_criterion)}}用于选择 lambda* 的标准{p_end}
{synopt:{cmd:e(model)}}{cmd:linear}、{cmd:logit}、{cmd:poisson} 或 {cmd:probit}{p_end}
{synopt:{cmd:e(title)}}估计输出中的标题{p_end}
{synopt:{cmd:e(rngstate)}}使用的随机数状态{p_end}
{synopt:{cmd:e(properties)}}{cmd:b}{p_end}
{synopt:{cmd:e(predict)}}用于实现 {cmd:predict} 的程序{p_end}
{synopt:{cmd:e(marginsnotok)}}被 {cmd:margins} 禁止的预测{p_end}

{synoptset 20 tabbed}{...}
{p2col 5 20 24 2: 矩阵}{p_end}
{synopt:{cmd:e(b)}}惩罚未标准化系数向量{p_end}
{synopt:{cmd:e(b_standardized)}}惩罚标准化系数向量{p_end}
{synopt:{cmd:e(b_postselection)}}后选择系数向量{p_end}

{synoptset 20 tabbed}{...}
{p2col 5 20 24 2: 函数}{p_end}
{synopt:{cmd:e(sample)}}标记估计样本{p_end}

{marker reference}{...}
{title:参考}

{phang}
Hastie, T., R. Tibshirani, 和 M. Wainwright. 2015.
{it:Statistical Learning with Sparsity: The Lasso and Generalizations}. Boca
Raton, FL: CRC Press.{p_end}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <lasso.sthlp>}