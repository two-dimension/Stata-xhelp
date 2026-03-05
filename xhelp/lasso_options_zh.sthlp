{smcl}
{* *! version 1.0.0  21jun2019}{...}
{vieweralsosee "[LASSO] lasso 选项" "mansection lasso lassooptions"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[LASSO] Lasso 简介" "help Lasso intro"}{...}
{vieweralsosee "[LASSO] Lasso 推断简介" "mansection lasso Lassoinferenceintro"}{...}
{vieweralsosee "[LASSO] lasso" "help lasso_zh"}{...}
{vieweralsosee "[LASSO] lasso 拟合" "mansection lasso lassofitting"}{...}
{viewerjumpto "语法" "lasso_options_zh##syntax"}{...}
{viewerjumpto "描述" "lasso_options_zh##description"}{...}
{viewerjumpto "PDF 文档链接" "lasso_options_zh##linkspdf"}{...}
{viewerjumpto "选项" "lasso_options_zh##options"}
{help lasso_options:English Version}
{hline}{...}
{p2colset 1 26 28 2}{...}
{p2col:{bf:[LASSO] lasso 选项} {hline 2}}推断模型的 Lasso 选项{p_end}
{p2col:}({mansection LASSO lassooptions:查看完整 PDF 手册条目}){p_end}
{p2colreset}{...}


{marker syntax}{...}
{title:语法}

{p 8 16 2}
{it:lasso_inference_cmd}
...
[{cmd:,}
...
{it:options}]

{phang}
{it:lasso_inference_cmd} 是 {help dslogit_zh}、{help dspoisson_zh}、
{help dsregress_zh}、{help poivregress_zh}、{help pologit_zh}、{help popoisson_zh}、
{help poregress_zh}、{help xpoivregress_zh}、{help xpologit_zh}、{help xpopoisson_zh}、
或 {help xporegress_zh} 中的一个。

{marker loptions}{...}
{synoptset 35 tabbed}{...}
{synopthdr}
{synoptline}
{syntab:模型}
{synopt :{cmdab:sel:ection(}{cmdab:plug:in)}}使用插件迭代公式选择 lambda* 进行所有 lasso 的选择；默认值{p_end}
{synopt :{cmdab:sel:ection(cv)}}使用交叉验证 (CV) 选择 lambda* 进行所有 lasso{p_end}
{synopt :{cmdab:sel:ection(}{cmdab:adapt:ive)}}使用自适应 lasso 选择 lambda* 进行所有 lasso{p_end}
{synopt :{cmdab:sqrt:lasso}}拟合平方根 lasso 而非常规 lasso{p_end}

{syntab:高级}
{synopt :{cmd:lasso(}{varlist}{cmd:,} {it:lasso_options}{cmd:)}}为 {it:varlist} 中的变量指定 lasso 选项{p_end}
{synopt :{cmd:sqrtlasso(}{varlist}{cmd:,} {it:lasso_options}{cmd:)}}为 {it:varlist} 中的变量指定平方根 lasso 选项{p_end}
{synoptline}


{marker lassooptions}{...}
{synoptset 35}{...}
{synopthdr:lasso_options}
{synoptline}
{synopt :{cmdab:sel:ection(}{help lasso_options##selmethod:{it:sel_method}}{cmd:)}}选择方法，从可能的 lambda 集中选择 lasso 惩罚参数的最佳值 lambda*{p_end}
INCLUDE help grid_short
INCLUDE help stop_short
INCLUDE help tolerance_short
{synoptline}


{marker selmethod}{...}
{synoptset 35}{...}
{synopthdr:sel_method}
{synoptline}
{synopt :{cmdab:plug:in}[{cmd:,} {help lasso_options##plug:{it:plugin_opts}}]}使用插件迭代公式选择 lambda*；默认值{p_end}
{synopt :{cmd:cv}[{cmd:,} {help lasso_options##cv:{it:cv_opts}}]}使用 CV 选择 lambda*{p_end}
{synopt :{cmdab:adapt:ive}[{cmd:,} {help lasso_options##adaptive:{it:adapt_opts}} {help lasso_options##cv:{it:cv_opts}}]}使用自适应 lasso 选择 lambda*；仅适用于 {cmd:lasso()}{p_end}
{synoptline}


{marker plug}{...}
{synoptset 20}{...}
{synopthdr:plugin_opts}
{synoptline}
{synopt :{opt het:eroskedastic}}假设模型误差是异方差的；默认值{p_end}
{synopt :{opt hom:oskedastic}}假设模型误差是同方差的{p_end}
{synoptline}


{marker cv}{...}
{synoptset 20}{...}
{synopthdr:cv_opts}
{synoptline}
INCLUDE help folds_short
INCLUDE help alllambdas_short
INCLUDE help serule_short
INCLUDE help sel_opts_short
{synoptline}


{marker adaptive}{...}
{synoptset 20}{...}
{synopthdr:adapt_opts}
{synoptline}
{synopt :{opt steps(#)}}使用 {it:#} 步骤的自适应方法（将初始 lasso 视为第 1 步）{p_end}
{synopt :{cmdab:unpen:alized}}使用未惩罚估计量构造初始权重{p_end}
{synopt :{cmd:ridge}}使用岭估计量构造初始权重{p_end}
{synopt :{opt power(#)}}将权重提高到 {it:#} 次方{p_end}
{synoptline}


{marker description}{...}
{title:描述}

{pstd}
此条目描述控制 lasso 的选项，无论是单独的还是全局的，适用于 {cmd:ds}、{cmd:po} 和 {cmd:xpo} 估计命令。

{pstd}
有关 lasso 推断模型的介绍，请参见
{manlink LASSO Lasso inference intro}。

{pstd}
有关 {cmd:ds}、{cmd:po} 和 {cmd:xpo} 估计命令和使用这些选项的示例，请参见
{manlink LASSO Inference examples}。


{marker linkspdf}{...}
{title:PDF 文档链接}

        {mansection LASSO lassooptionsRemarksandexamples:备注与示例}

{pstd}
上述部分不包含在此帮助文件中。


{marker options}{...}
{title:选项}

{dlgtab:模型}

{phang}
{cmd:selection(plugin}|{cmd:cv}|{cmd:adaptive)} 是全局选项，指定所有 lasso 使用给定的选择方法。 这等同于指定 {cmd:lasso(*, selection(plugin}|{cmd:cv}|{cmd:adaptive))}。 默认值是 {cmd:selection(plugin)}。 也就是说，不指定此选项意味着所有 lasso 都使用全局 {cmd:selection(plugin)}。 此选项的全局形式不允许子选项。 要指定子选项，请使用后面描述的 {helpb lasso_options##lasso:lasso()} 或 
{helpb lasso_options##sqrtlasso:sqrtlasso()} 选项。

{marker sqrtlasso}{...}
{phang}
{cmd:sqrtlasso} 是全局选项，指定所有 lasso 为平方根 lasso。 这等同于指定 {cmd:sqrtlasso(*)}，但对于 logit 和 Poisson 模型而言。 对于 logit 和 Poisson 模型，等同于 {opt sqrtlasso(varsofinterest)}，其中 {it:varsofinterest} 是所有除因变量外的拥有 lasso 的变量。 此选项的全局形式不允许子选项。 要指定子选项，请使用后面描述的 {helpb lasso_options##sqrtlasso:sqrtlasso()} 选项。

{dlgtab:高级}

{marker lasso}{...}
{phang}
{cmd:lasso(}{varlist}{cmd:,}
{help lasso_options##selection:{it:lasso_options}}{cmd:)} 和
{cmd:sqrtlasso(}{varlist}{cmd:,} 
{help lasso_options##selection:{it:lasso_options}}{cmd:)} 允许您为不同的 lasso 和平方根 lasso 设置不同的选项。 这些选项还允许您为所有 lasso 和所有平方根 lasso 指定高级选项。 {cmd:lasso()} 和 {cmd:sqrtlasso()} 选项将覆盖为指定变量的 lasso 指定的全局选项 {cmd:selection(plugin}|{cmd:cv}|{cmd:adaptive)} 和 {cmd:sqrtlasso}。 如果 {cmd:lasso(}{it:varlist}{cmd:,}
{it:lasso_options}{cmd:)} 或 {cmd:sqrtlasso(}{it:varlist}{cmd:,}
{it:lasso_options}{cmd:)} 未包含 {cmd:selection()} 的规范作为 {it:lasso_options} 的一部分，则假定使用 {cmd:selection()} 的全局选项。

{phang2}
{cmd:lasso(}{varlist}{cmd:,} 
{help lasso_options##selection:{it:lasso_options}}{cmd:)} 指定 {it:varlist} 中的变量使用 lasso 进行拟合，选择方法、可能的 lambda 集合和收敛标准由 {it:lasso_options} 确定。

{phang2}
{cmd:sqrtlasso(}{varlist}{cmd:,}
{help lasso_options##selection:{it:lasso_options}}{cmd:)} 指定 {it:varlist} 中的变量使用平方根 lasso 进行拟合，选择方法、可能的 lambda 集合和收敛标准由 {it:lasso_options} 确定。

{pmore2}
对于 {cmd:lasso()} 和 {cmd:sqrtlasso()}，{it:varlist} 包含一个或多个来自 {depvar} 的变量，因变量，或 {it:varsofinterest} 的变量，感兴趣的变量。 要为所有 lasso 指定选项，您可以使用 {cmd:*} 或 {cmd:_all} 来指定 {it:depvar} 和所有 {it:varsofinterest}。

{pmore2}
对于具有内生性的模型，即 {cmd:poivregress} 和 {cmd:xpoivregress} 模型，将为 {it:depvar}、外生变量 {it:exovars} 和内生变量 {it:endovars} 进行 lasso。 这些变量中的任何一个都可以在 {cmd:lasso()} 选项中指定。 它们中的所有变量都可以用 {cmd:*} 或 {cmd:_all} 进行指定。

{pmore2}
{cmd:lasso()} 和 {cmd:sqrtlasso()} 选项可以重复，只要在每次 {cmd:lasso()} 和 {cmd:sqrtlasso()} 的规范中给出不同的变量。 任何未在任何 {cmd:lasso()} 或 {cmd:sqrtlasso()} 选项中指定的 {it:depvar} 或 {it:varsofinterest}（或 {it:exovars} 或 {it:endovars}）的 lasso 类型由上述全局 lasso 选项确定。

{pmore2}
对于所有 lasso 推断命令，线性 lasso 会对每个 {it:varsofinterest}（或 {it:exovars} 和 {it:endovars}）进行处理。 对于线性模型，线性 lasso 也会对 {it:depvar} 进行处理。 然而，对于 logit 模型，logit lasso 会对 {it:depvar} 进行处理。 对于 Poisson 模型，Poisson lasso 会对 {it:depvar} 进行处理。 平方根 lasso 是线性模型，因此 {cmd:sqrtlasso(}{it:depvar}{cmd:,} ...{cmd:)} 不能在 logit 和 Poisson 模型中对因变量进行指定。 出于同样的原因，{cmd:sqrtlasso(*,} ...{cmd:)} 和 {cmd:sqrtlasso(_all,} ...{cmd:)} 不能在 logit 和 Poisson 模型中进行指定。 对于 logit 和 Poisson 模型，您必须指定 {cmd:sqrtlasso(}{it:varsofinterest}{cmd:,} ...{cmd:)} 来设置平方根 lasso 的选项，并指定 {cmd:lasso(}{it:depvar}{cmd:,} ...{cmd:)} 来设置 {it:depvar} 的 logit 或 Poisson lasso 的选项。


{title:lasso() 和 sqrtlasso() 的子选项}

{marker selection}{...}
{phang}
{cmd:selection(plugin} [{cmd:, heteroskedastic homoskedastic}]{cmd:)} 根据依赖于数据的“插件”迭代公式选择 lambda*。 插件估计器计算一个值用于 lambda*，以主导估计方程中的噪声，从而确保被选变量以高概率属于真实模型。 请参见 
{mansection LASSO lassoMethodsandformulas:{it:方法和公式}} 在 {bf:[LASSO] lasso} 中。

{pmore}
{cmd:selection(plugin)} 不对任何其他 lambda 值估计系数，因此不需要 lambda 网格，并且没有网格选项适用。 它比其他选择方法速度快得多，因为仅对单个 lambda 值进行估计。 然而，这是一种迭代过程，如果插件正在计算小 lambda 的估计（这意味着许多非零系数），估计仍然可能耗时。

{phang2}
{cmd:heteroskedastic} 假设模型误差是异方差的。 这是默认值。 对于线性 lasso 指定 {cmd:selection(plugin)} 等同于指定 {cmd:selection(plugin, heteroskedastic)}。 此子选项仅可为线性 lasso 指定。 因此，该子选项不能为 logit 和 Poisson 模型的 {it:depvar} 指定，其中 {it:depvar} 是因变量。 对于这些模型，指定
{cmd:lasso(}{it:depvar}{cmd:, selection(plugin))} 以使用 logit 或 Poisson 插件公式进行 {it:depvar} 的 lasso。 请参见
{mansection LASSO lassoMethodsandformulas:{it:方法和公式}} 在 {bf:[LASSO] lasso} 中。

{phang2}
{cmd:homoskedastic} 假设模型误差是同方差的。 此子选项仅可为线性 lasso 指定。 因此，不能为 logit 和 Poisson 模型的 {it:depvar} 指定该子选项，{it:depvar} 是因变量。

{phang}
{cmd:selection(cv} [{cmd:,} {opt folds(#)} {cmd:alllambdas serule stopok}
{cmd:strict} {cmd:gridminok}]{cmd:)} 选择 lambda* 为使 CV 函数最小化的 lambda。

INCLUDE help folds_long

INCLUDE help alllambdas_long

INCLUDE help serule_long

INCLUDE help sel_opts_long

{phang}
{cmd:selection(adaptive} [{cmd:,} {opt steps(#)} {cmd:unpenalized} {cmd:ridge}
{opt power(#)} {it:cv_options}]{cmd:)} 仅可作为 {cmd:lasso()} 的子选项进行指定。 不能作为 {cmd:sqrtlasso()} 的子选项进行指定。 它使用自适应 lasso 选择方法选择 lambda*。 它由多次 lasso 组成，每次 lasso 步骤使用 CV。 在每次 lasso 之后，具有零系数的变量会被丢弃，具有非零系数的变量会得到旨在将小系数估计推向零的惩罚权重。 因此，最终模型通常具有比单个 lasso 更少的非零系数。

{phang2}
{opt steps(#)} 指定自适应 lasso 运行 {it:#} 次 lasso。 默认值为 {it:#} = 2。 也就是说，运行两个 lasso。 在第一次 lasso 估计后，具有非零系数 beta_i 的项得到的惩罚权重为 1/|beta_i|，零系数的项被省略，估计第二个 lasso。 系数较小的项会得到较大的权重，从而使较小系数在第二次 lasso 中更可能变为零。 设置 {it:#} > 2 可以生成更简约的模型。 请参见 
{mansection LASSO lassoMethodsandformulas:{it:方法和公式}} 在 {bf:[LASSO] lasso} 中。

{phang2}
{cmd:unpenalized} 指定自适应 lasso 使用未惩罚估计量构造第一次 lasso 中的初始权重。 
{cmd:unpenalized} 在 CV 无法找到最小值时非常有用。 {cmd:unpenalized} 不能与 {cmd:ridge} 一起指定。

{phang2}
{cmd:ridge} 指定自适应 lasso 使用岭估计量构造第一次 lasso 中的初始权重。 
{cmd:ridge} 不能与 {cmd:unpenalized} 一起指定。

{phang2}
{opt power(#)} 指定自适应 lasso 将权重提高到 {it:#} 次方。 默认的幂为 1。 指定的幂必须在区间 [0.25, 2] 内。

{phang2}
{it:cv_options} 是可以为 {cmd:selection(cv)} 指定的所有子选项，即 {opt folds(#)}、{cmd:alllambdas}、{cmd:serule}、{cmd:stopok}、{cmd:strict} 和 {cmd:gridminok}。 子选项 {cmd:alllambdas}、{cmd:strict} 和 {cmd:gridminok} 仅适用于第一次估计的 lasso。 对于第二次及后续的 lasso，默认值为 {cmd:gridminok}。 当指定 {cmd:ridge} 时，第一次 lasso 将自动使用 {cmd:gridminok}。

INCLUDE help grid_long

INCLUDE help stop_long

INCLUDE help tolerance_long
{p_end}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <lasso_options.sthlp>}