{smcl}
{* *! version 1.0.14  14may2019}{...}
{viewerdialog bayes "dialog bayes"}{...}
{vieweralsosee "[BAYES] bayes" "mansection BAYES bayes"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[BAYES] Bayesian estimation" "help bayesian_estimation_zh"}{...}
{vieweralsosee "[BAYES] Bayesian postestimation" "help bayesian_postestimation_zh"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[BAYES] Bayesian commands" "help bayesian_commands_zh"}{...}
{vieweralsosee "[BAYES] bayesmh" "help bayesmh_zh"}{...}
{vieweralsosee "[BAYES] Glossary" "help bayes_glossary_zh"}{...}
{viewerjumpto "Syntax" "bayes_zh##syntax"}{...}
{viewerjumpto "Menu" "bayes_zh##menu"}{...}
{viewerjumpto "Description" "bayes_zh##description"}{...}
{viewerjumpto "Links to PDF documentation" "bayes_zh##linkspdf"}{...}
{viewerjumpto "Options" "bayes_zh##options"}{...}
{viewerjumpto "Examples" "bayes_zh##examples"}{...}
{viewerjumpto "Video examples" "bayes_zh##video"}{...}
{viewerjumpto "Stored results" "bayes_zh##results"}
{help bayes:English Version}
{hline}{...}
{p2colset 1 18 20 2}{...}
{p2col:{bf:[BAYES] bayes} {hline 2}}使用 bayes 前缀的贝叶斯回归模型{p_end}
{p2col:}({mansection BAYES bayes:查看完整 PDF 手册条目}){p_end}
{p2colreset}{...}


{marker syntax}{...}
{title:语法}

{p 8 15 2}
{cmd:bayes} [{cmd:,} {help bayes##bayesopts:{it:bayesopts}}] {cmd::}
{it:估计命令} [{cmd:,} {it:estopts}]

{phang}
{marker estimation_command}{...}
{it:估计命令}是基于似然的估计命令，{it:estopts}是特定于命令的估计选项；请参见
{manhelp bayesian_estimation BAYES:贝叶斯估计} 
以获取支持的命令列表，并查看命令特定条目以获取支持的估计选项 {it:estopts}。

{marker bayesopts}{...}
{synoptset 30 tabbed}{...}
{synopthdr:bayesopts}
{synoptline}
{marker options_priors}{...}
{syntab:{help bayes##priors_options:先验}}
{p2coldent:* {opt gibbs}}指定使用 Gibbs 抽样；仅在某些先验组合的 {cmd:regress} 或 {cmd:mvreg} 中可用{p_end}
{p2coldent:* {opt normalpr:ior(#)}}指定回归系数和其他实标量参数的默认正态先验的标准差；默认值为 {cmd:normalprior(100)}{p_end}
{p2coldent:* {opt igammapr:ior(# #)}}指定默认逆伽马先验的形状和规模；默认值为 {cmd:igammaprior(0.01 0.01)}{p_end}
{p2coldent:* {cmdab:iwishartpr:ior(}{help bayes##iwishartpriorspec:{it:#} [...]}{cmd:)}}指定无结构随机效应协方差的默认逆 Wishart 先验的自由度，并可选择地指定规模矩阵{p_end}
INCLUDE help bayesmh_prioropts

{marker options_simulation}{...}
  {syntab:{help bayes##simulation_options:模拟}}
INCLUDE help bayesmh_simopts
{synopt :{opt restubs(restub1 restub2 ...)}}指定所有级别随机效应参数的名称前缀；仅适用于多层模型{p_end}

{marker options_blocking}{...}
{syntab:{help bayes##blocking_options:阻塞}}
{p2coldent:* {opt blocksize(#)}}模型参数的最大块大小；默认值为 {cmd:blocksize(50)}{p_end}
{synopt: {cmd:block(}{help bayesmh##paramref:{it:paramref}}[{cmd:,} {help bayes##blockopts:{it:blockopts}}]{cmd:)}}指定一组模型参数；此选项可以重复使用{p_end}
{synopt: {opt blocksumm:ary}}显示块汇总{p_end}
{p2coldent:* {opt noblock:ing}}默认情况下不阻塞参数{p_end}

{marker options_initialization}{...}
{syntab:{help bayes##initialization_options:初始化}}
INCLUDE help bayesmh_initopts
{p2coldent:* {opt noi:sily}}在初始化期间显示估计命令的输出{p_end}

{marker options_adaptation}{...}
{syntab:{help bayes##adaptation_options:适应}}
INCLUDE help bayesmh_adaptopts

{marker options_reporting}{...}
{syntab:{help bayes##reporting_options:报告}}
INCLUDE help bayes_clevel_hpd_short
INCLUDE help bayes_eform
{synopt :{opt remargl}}计算多层模型的对数边际似然{p_end}
{synopt :{opt batch(#)}}指定批均值计算的区块长度；默认值为 {cmd:batch(0)}{p_end}
{synopt :{cmdab:sav:ing(}{help filename_zh:{it:filename}}[{cmd:, replace}]{cmd:)}}将模拟结果保存到 {it:filename}{cmd:.dta}{p_end}
{synopt :{opt nomodelsumm:ary}}抑制模型摘要{p_end}
{synopt :{opt nomesumm:ary}}抑制多层结构摘要；仅适用于多层模型{p_end}
{synopt :{opt chainsdetail}}显示每个链的详细模拟摘要{p_end}
{synopt :[{cmd:no}]{opt dots}}抑制点或每 100 次迭代显示点，每 1,000 次迭代显示迭代次数；默认是特定命令{p_end}
{synopt :{cmd:dots(}{it:#}[{cmd:,} {opt every(#)}]{cmd:)}}在执行模拟时显示点 {p_end}
{synopt :[{cmd:no}]{opth show:(bayesmh##paramref:paramref)}}指定要从结果中排除或包含的模型参数{p_end}
{synopt :{opt showre:ffects}[{cmd:(}{it:{help bayesian postestimation##bayesian_post_reref:reref}}{cmd:)}]}指定要输出的所有或部分随机效应参数；仅适用于多层命令{p_end}
{synopt :{opt melabel}}使用与 {it:估计命令} 相同的行标签显示估计表；仅适用于多层命令{p_end}
{synopt :{opt nogr:oup}}抑制总结组的表格；仅适用于多层模型{p_end}
{synopt :{opt notab:le}}抑制估计表{p_end}
{synopt :{opt nohead:er}}抑制输出头部{p_end}
{synopt :{opt title(string)}}在参数估计表上方显示 {it:string} 作为标题{p_end}
{synopt :{help bayesmh##display_options:{it:display_options}}}控制间距、线宽、基本单元和空单元{p_end}

{marker options_advanced}{...}
{syntab:{help bayes##advanced_options:高级}}
INCLUDE help bayesmh_advancedopts
{synoptline}
{p 4 6 2}* 带星号的选项特定于 {cmd:bayes} 前缀；其他选项在 {cmd:bayes} 和 {help bayesmh_zh} 之间是共同的。{p_end}
{p 4 6 2}参数 {opt iwishartprior()} 的完整规格为 {break}
{cmdab:iwishartpr:ior(}{help bayes##iwishartpriorspec:{it:#} [{it:matname}] [{bf:,} {bf:{ul:relev}el(}{it:levelvar}{bf:)}]}{cmd:)}。{p_end}
{p 4 6 2}选项 {cmd:prior()} 和 {cmd:block()} 可以重复。{p_end}
{p 4 6 2}{helpb bayesmh##priorspec:{it:priorspec}} 和
{helpb bayesmh##paramref:{it:paramref}} 在 {manhelp bayesmh BAYES} 中定义。{p_end}
{p 4 6 2}{it:paramref} 可以包含因素变量；见 {help fvvarlist_zh}。{p_end}
{p 4 6 2}参见 {manhelp bayesian_postestimation BAYES:贝叶斯后估计} 以获取估计后可用的特性。{p_end}
{p2colreset}{...}


{marker menu}{...}
{title:菜单}

{phang}
{bf:统计 > 贝叶斯分析 > 回归模型 >}
{it:估计命令}


{marker description}{...}
{title:描述}

{pstd}
{opt bayes} 前缀拟合
{help bayesian estimation:贝叶斯回归模型}。它为许多基于似然的估计命令提供贝叶斯支持。{opt bayes} 前缀使用默认或用户提供的模型参数先验，并通过从相应的后验模型中抽取模拟样本来估计参数。另请参见 {manhelp bayesmh BAYES} 和
{manhelp bayesmh_evaluators BAYES:bayesmh 评估器} 以拟合更一般的贝叶斯模型。


{marker linkspdf}{...}
{title:PDF 文档链接}

        {mansection BAYES bayesQuickstart:快速入门}

        {mansection BAYES bayesRemarksandexamples:备注和例子}

        {mansection BAYES bayesMethodsandformulas:方法和公式}

{pstd}
上述各节未包括在此帮助文件中。


{marker options}{...}
{title:选项}

{marker priors_options}{...}
{dlgtab:先验}

{phang}
{opt gibbs} 指定使用 Gibbs 抽样来模拟模型参数，而不是默认的自适应 Metropolis-Hastings 抽样。此选项仅在 {cmd:regress} 和 {cmd:mvreg} 估计命令中允许。仅在某些先验组合可用，例如回归系数的正态先验和方差的逆伽马先验。
指定 {cmd:gibbs} 选项等同于指定 {cmd:block()}'s {cmd:gibbs} 子选项以适用于所有默认参数块。如果您使用 {cmd:block()} 选项来定义您自己的参数块，则 {cmd:gibbs} 选项对这些块将没有效果，除非您也指定 {cmd:block()}'s {cmd:gibbs} 子选项。

{phang}
{opt normalprior(#)} 指定默认正态先验的标准差。默认值为 {cmd:normalprior(100)}。正态先验用于定义在整个实数线上的标量参数；有关详细信息，请参见
{mansection BAYES bayesRemarksandexamplesDefaultpriors:{it:默认先验}}。

{phang}
{opt igammaprior(# #)} 指定默认逆伽马先验的形状和尺度参数。默认值为 {cmd:igammaprior(0.01 0.01)}。逆伽马先验用于诸如方差以下的正标量参数；有关详细信息，请参见
{mansection BAYES bayesRemarksandexamplesDefaultpriors:{it:默认先验}}。
您可以指定缺失值（{cmd:.}）来引用默认值0.01，而不是数字 {it:#}。

{marker iwishartpriorspec}{...}
{phang}
{cmd:iwishartprior(}{it:#} [{it:matname}] [{cmd:,} {opt relev:el(levelvar)}])
指定多层模型中随机效应的无结构协方差的默认逆 Wishart 先验的自由度，并可选择地指定规模矩阵 {it:matname}。自由度 {it:#} 是一个正实标量，默认值为 d+1，其中 d 是层级 {it:levelvar} 下的随机效应项数。您可以指定缺失值（{cmd:.}）来引用默认值。矩阵名称 {it:matname} 是一个正定 Stata 矩阵，默认值为I(d)，即维度为 d 的单位矩阵。如果省略 {opt relevel(levelvar)}，则指定的参数用于所有层级的逆 Wishart 先验，以具有无结构随机效应的协方差。否则，它们仅用于指定级别 {it:levelvar} 的先验。有关详细信息，请参见
{mansection BAYES bayesRemarksandexamplesDefaultpriors:{it:默认先验}}。

{phang}
{opth prior:(bayesmh##priorspec:priorspec)} 指定模型参数的先验分布。此选项可以重复。对于模型参数中的任何参数均可以指定先验，除了多层模型中的随机效应参数。具有相同先验规范的模型参数被放置在一个单独的块中。未被包括在先验规范中的模型参数分配默认先验；有关详细信息，请参见
{mansection BAYES bayesRemarksandexamplesDefaultpriors:{it:默认先验}}。模型参数可以是标量或矩阵，但这两种类型不能在一个先验语句中结合使用。如果将多个标量参数分配给一个单变量先验，则它们被视为独立，并将该指定先验用于每个参数。您可以将一个维度为 d 的多变量先验分配给 d 个标量参数。另请参见
{mansection BAYES bayesmhRemarksandexamplesReferringtomodelparameters:{it:引用模型参数}}中 {bf:[BAYES] bayesmh}。

{pmore}
允许所有 {opt prior()} 分布，但并不能保证它们对应于所有似然模型的适当后验分布。您需要仔细考虑您正在构建的模型，并彻底评估其收敛性；见
{mansection BAYES bayesmhRemarksandexamplesConvergenceofMCMC:{it:MCMC 的收敛性}}在 {bf:[BAYES] bayesmh} 中。

{phang}
{opt dryrun} 指定显示将要拟合的模型的汇总，而无需实际拟合模型。此选项建议在拟合模型之前检查模型的规范。模型摘要报告关于似然模型和所有模型参数的先验的信息。

{marker simulation_options}{...}
{dlgtab:模拟}

INCLUDE help bayesmh_nchainsoptdes

{phang}
{opt mcmcsize(#)} 指定目标 MCMC 样本大小。默认的 MCMC 样本大小为 {cmd:mcmcsize(10000)}。MH 算法的总迭代次数等于烧入迭代的总和和 MCMC 样本大小，不考虑缩减。如果存在缩减，则总的 MCMC 迭代次数字面计算为 {cmd:burnin()} + ({cmd:mcmcsize()} - 1) x {cmd:thinning()} + 1。
MH 算法的计算时间与总迭代次数成正比。MCMC 样本大小决定了后验摘要的精度，这可能因模型参数而异，并将取决于马尔可夫链的有效性。对于多个链，{cmd:mcmcsize()} 适用于每条链。另请参见
{mansection BAYES bayesmhRemarksandexamplesBurn-inperiodandMCMCsamplesize:{it:烧入期和 MCMC 样本大小}}
在 {bf:[BAYES] bayesmh} 中。

{phang}
{opt burnin(#)} 指定 MCMC 的烧入期的迭代次数。在烧入期间模拟的参数值仅用于适应目的，而不用于估计。默认值为 {cmd:burnin(2500)}。通常，烧入期选择得与适应期一样长或更长。多层模型可能需要更大的烧入期，因为这些模型引入高维随机效应参数，因此需要更长的适应期。
对于多个链，{cmd:burnin()} 适用于每条链。另请参见
{mansection BAYES bayesmhRemarksandexamplesBurn-inperiodandMCMCsamplesize:{it:烧入期和 MCMC 样本大小}}
在 {bf:[BAYES] bayesmh} 和
{mansection BAYES bayesmhRemarksandexamplesConvergenceofMCMC:{it:MCMC 的收敛性}}  
在 {bf:[BAYES] bayesmh} 中。

{phang}
{opt thinning(#)} 指定缩减间隔。仅保存来自每个 (1+k x {it:#}) 次迭代的模拟值，其中
k = 0, 1, 2, ...，并在最终 MCMC 样本中，其余模拟值将被丢弃。默认值为 {cmd:thinning(1)}；也就是说，保存所有模拟值。通常，缩减大于1是为了降低模拟的 MCMC 样本的自相关性。对于多个链，{cmd:thinning()} 适用于每条链。

{phang}
{opt rseed(#)} 设置随机数种子。这个选项可以用来重现结果。对于单条链，{opt rseed(#)} 等同于在调用 {cmd:bayes} 前输入 {cmd:set} {cmd:seed} {it:#}；见
{manhelp set_seed R:set seed}。对于多个链，您应该使用 {cmd:rseed()} 以确保可重复性；见
{mansection BAYES bayesmhRemarksandexamplesReproducingresults:{it:重现结果}}  
在 {bf:[BAYES] bayesmh} 中。

{phang}
{opth exclude:(bayesmh##paramref:paramref)} 指定哪些模型参数应从最终 MCMC 样本中排除。这些模型参数将不会出现在估计表中，并且其后估计功能和对数边际似然将不可用。此选项有助于抑制干扰模型参数。例如，如果您有一个具有许多水平的因素预测变量，但您只对与其水平相关的系数的变异性感兴趣，而不是它们的实际值，那么您可能希望将该因素变量排除在模拟结果之外。如果您仅想从输出中遗漏某些模型参数，请参见 {helpb bayes##noshow():noshow()} 选项。
{it:paramref} 可以包括个别随机效应参数。

{phang}
{opt restubs(restub1 restub2 ...)} 指定随机效应参数名称的前缀。您必须为所有级别指定前缀 -- 每个级别一个前缀。此选项覆盖默认的随机效应前缀。见
{mansection BAYES bayesRemarksandexamplesbayes_prefix_renames:{it:似然模型}}  
以了解关于默认随机效应参数名称的详细信息。

{marker blocking_options}{...}
{dlgtab:阻塞}

{phang}
{opt blocksize(#)} 指定模型参数的最大块大小；默认值为 {cmd:blocksize(50)}。此选项不适用于随机效应参数。每组随机效应参数被放置在一个块中，无论该组中随机效应参数的数量如何。

{marker blockopts}{...}
{phang}
{cmd:block(}{help bayesmh##paramref:{it:paramref}}[{cmd:,} {it:blockopts}]{cmd:)}指定阻塞 MH 算法的模型参数组。默认情况下，模型参数（随机效应参数除外）被作为独立的 50 个参数块或按 {opt blocksize()} 选项指定的大小进行抽样。不同方程的回归系数被放置在不同的块中。方差和相关性等辅助参数作为单个独立块进行抽样，而有序结果回归的切点参数则作为一个单独块进行抽样。对于多层模型，每组随机效应参数被放置在一个单独的块中，{cmd:block()} 选项在随机效应参数中是不允许的。{opt block()} 选项可以重复使用以定义多个块。不同类型的模型参数（例如标量和矩阵）不能在一个 {opt block()} 中指定。一个块中的参数是同时更新的，并且每个参数块的更新顺序是根据其指定的顺序进行的；第一个指定的块优先更新，第二个以此类推。见
{mansection BAYES bayesmhRemarksandexamplesImprovingefficiencyoftheMHalgorithm---blockingofparameters:{it:改善 MH 算法的效率---参数阻塞}}  
在 {bf:[BAYES] bayesmh} 中。

{phang2}
{it:blockopts} 包括 {cmd:gibbs}, {cmd:split}, 
{cmd:scale()}, {cmd:covariance()} 和 {cmd:adaptation()}。

{phang2}
{opt gibbs} 指定使用 Gibbs 抽样来更新块中的参数。此选项仅适用于超参数和特定组合的先验和超先验分布；见
{mansection BAYES bayesmhMethodsandformulasGibbssamplingforsomelikelihood-priorandprior-hyperpriorconfigurations:{it:某些似然-先验和先验-超先验配置的 Gibbs 抽样}}  
在 {bf:[BAYES] bayesmh} 中。有关更多信息，请参见
{mansection BAYES bayesmhRemarksandexamplesGibbsandhybridMHsampling:{it:Gibbs 和混合 MH 抽样}}  
在 {bf:[BAYES] bayesmh} 中。{cmd:gibbs} 不能与 
{cmd:scale()}, {cmd:covariance()} 或 {cmd:adaptation()} 结合使用。

{phang2}
{opt split} 指定将块中的所有参数视为单独的块。这对因素变量的级别可能很有用。

{phang2}
{opt scale(#)} 指定与指定块相关的比例因子的初始乘数。初始比例因子计算为 
{it:#}/sqrt{n_p}（对于连续参数）和 
{it:#}/n_p（对于离散参数），其中 n_p 是块中的参数数量。默认值为 {cmd:scale(2.38)}。如果指定，则此选项将覆盖由命令中指定的 {cmd:scale()} 选项中的设置。
{cmd:scale()} 不能与 {cmd:gibbs} 结合使用。

{phang2}
{opt covariance(matname)} 指定一个规模矩阵 {it:matname}，用于计算与指定块相关的初步建议协方差矩阵。初步建议方差是计算为 {it:rho} x {it:Sigma}，其中 {it:rho} 是比例因子，而 {it:Sigma} = {it:matname}。
默认情况下，{it:Sigma} 是单位矩阵。如果指定，则此选项将覆盖由命令中指定的 {opt covariance()} 选项中的设置。{opt covariance()} 不能与 {opt gibbs} 结合使用。

{phang2}
{cmd:adaptation(tarate())} 和 {cmd:adaptation(tolerance())} 指定特定于块的 TAR 和接受容忍度。如果指定，它们将覆盖在命令中指定的 {opt adaptation()} 选项中的设置。
{opt adaptation()} 不能与 {opt gibbs} 结合使用。

{phang}
{opt blocksummary} 显示指定块的汇总。当指定 {opt block()} 时，此选项很有用。

{phang}
{opt noblocking} 请求模型参数不适用默认阻塞。默认情况下，模型参数被采样为独立的 50 个参数块或按 {opt blocksize()} 选项指定的大小。
对于多层模型，此选项对随机效应参数没有影响；始终对它们应用阻塞。

{marker initialization_options}{...}
{marker initspec}{...}
{dlgtab:初始化}

{phang}
{opt initial(initspec)} 指定用于仿真的模型参数的初始值。对于多个链，此选项等同于指定 {cmd:init1()} 选项。您可以指定参数名称、其初始值、另一个参数名称、其初始值，依此类推。例如，要将标量参数 {cmd:alpha} 初始化为 0.5 和 2x2 矩阵 {cmd:Sigma} 初始化为单位矩阵 {cmd:I(2)}，您可以键入

{phang3}
  {cmd:bayes}{cmd:,} {cmd:initial({c -(}alpha{c )-}} {cmd:0.5} {cmd:{c -(}Sigma,m{c )-}} {cmd:I(2))}{cmd::} ...
 
{pmore}
您还可以使用 {mansection BAYES bayesmhRemarksandexamplesReferringtomodelparameters:{it:引用模型参数}}  
中描述的任何规格来指定参数列表，在 {bf:[BAYES] bayesmh} 中。例如，要将方程 {cmd:y1} 和 {cmd:y2} 中的所有回归系数初始化为零，您可以键入

{phang3}
  {cmd:bayes,} {cmd:initial({c -(}y1:{c )-} {c -(}y2:{c )-} 0)}{cmd::} ...

{pmore}
{it:initspec} 的常规规格为

{pmore2}
{help bayesmh##paramref:{it:paramref}} {it:initval} [{it:paramref} {it:initval} [{...}]]

{pmore}
其中 {it:initval} 可以是一个数字，一个计算为数字的 Stata 表达式，或用于初始化矩阵参数的 Stata 矩阵。

{pmore}
标量参数的括号可以省略，但矩阵参数的括号必须指定。使用此选项声明的初始值覆盖默认初始值或在 {cmd:likelihood()} 选项的参数声明中声明的任何初始值。有关详细信息，请参见
{mansection BAYES bayesRemarksandexamplesinitvals:{it:初始值}}
在 {bf:[BAYES] bayes} 中。

{phang}
{cmd:init}{it:#}{cmd:(}{it:{help bayes##initspec:initspec}}{cmd:)} 指定 {it:#}th 链的模型参数的初始值。此选项需要 {cmd:nchains()} 选项。{cmd:init1()} 覆盖第一条链的默认初始值，{cmd:init2()} 适用于第二条链，依此类推。您可以在 {cmd:init}{it:#}{cmd:()} 中指定初始值，方法与在 {cmd:initial()} 选项中相同。有关详细信息，请参见
{mansection BAYES bayesRemarksandexamplesinitvals:{it:初始值}}
在 {bf:[BAYES] bayes} 中。

{phang}
{opth initall:(bayes##initspec:initspec)} 指定所有链的模型参数的初始值。此选项需要 {cmd:nchains()} 选项。您可以在 {cmd:initall()} 中指定初始值，方法与在 {cmd:initial()} 选项中相同。您应避免在 {cmd:initall()} 中指定固定的初始值，因为那样所有链都将使用相同的初始值。
{cmd:initall()} 对于在 {cmd:prior()}'s {cmd:density()} 和 {cmd:logdensity()} 子选项中定义自己的先验时，指定随机初始值非常有用。有关详细信息，请参见
{mansection BAYES bayesRemarksandexamplesinitvals:{it:初始值}} 
在 {bf:[BAYES] bayes} 中。

{phang}
{opt nomleinitial} 抑制使用最大似然估计（MLE）作为模型参数的起始值。对于多个链，此选项和下面的讨论仅适用于第一链。默认情况下，当未指定初始值时，来自 {it:估计命令} 的 MLE 值用作初始值。对于多层命令，MLE 估计仅用于回归系数。随机效应被分配为零值，而随机效应的方差和协方差分别初始化为 1 和 0。如果指定了 {opt nomleinitial} 并且没有提供初始值，则该命令将为正标量参数使用 1，对于其他标量参数使用 0，对于矩阵参数使用单位矩阵。
{cmd:nomleinitial} 在检查 MCMC 收敛性时可能是提供替代起始状态的有用选项。此选项不能与 {cmd:initrandom} 一起使用。

{phang}
{opt initrandom} 请求随机初始化模型参数。随机初始值来自模型参数的先验分布。如果您希望对某些参数使用固定的初始值，可以在 {opt initial()} 选项中或在 {opt likelihood()} 选项的参数声明中指定它们。随机初始值不适用于 {opt flat}, {opt jeffreys}, {opt density()}, {opt logdensity()} 和 {opt jeffreys()} 先验的参数；您必须为这些参数提供自己的初始值。此选项不能与 {opt nomleinitial} 结合使用。有关详细信息，请参见
{mansection BAYES bayesmhRemarksandexamplesSpecifyinginitialvalues:{it:指定初始值}}  
在 {bf:[BAYES] bayesmh} 中。

{phang}
{opt initsummary} 指定显示用于仿真的初始值。

{phang}
{opt noisily} 指定在初始化期间显示估计命令的输出。估计命令执行一次，以设置模型并计算模型参数的初始值。

{marker adaptation_options}{...}
{marker adaptopts}{...}
{dlgtab:适应}

{phang}
{opt adaptation(adaptopts)} 控制 MCMC 过程的适应性。适应性在每个预先指定的 MCMC 迭代数后进行，并包括调节每个模型参数块的建议比例因子和建议协方差。使用适应性有助于提高采样效率。
提供的默认值基于理论结果，并可能不足以满足所有应用。有关适应性及其参数的详细信息，见
{mansection BAYES bayesmhRemarksandexamplesAdaptationoftheMHalgorithm:{it:MH 算法的适应性}}
在 {bf:[BAYES] bayesmh} 中。

{pmore}
{it:adaptopts} 为以下选项中的任何一个：  

{phang2}
{opt every(#)} 指定每 {it:#} 次迭代尝试进行适应。默认值是 {cmd:every(100)}。要确定适应间隔，您需要考虑模型中指定的最大块大小。
更新带有 k 个模型参数的块需要估计 k x k 的协方差矩阵。如果适应间隔不足以估计该矩阵的 k(k+1)/2 个元素，则适应可能不足。

{phang2}
{opt maxiter(#)} 指定最大的自适应迭代次数。适应包括调整每个模型参数块的建议协方差和比例因子。一旦在指定的容忍度内达到了 TAR，适应过程将停止。然而，总共不会执行超过 {it:#} 自适应步骤。默认值是变量，并计算为 max{25,{cmd:floor(burnin()/adaptation(every()))}}。

{pmore2}
{cmd:maxiter()} 通常选择不大于 
({cmd:mcmcsize()}+{cmd:burnin()})/{cmd:adaptation(every())}。

{phang2}
{opt miniter(#)} 指定无论是否已达到 TAR，执行的最小自适应迭代次数。默认值为 {cmd:miniter(5)}。如果指定的 {opt miniter()} 大于 {opt maxiter()}，则会将 {opt miniter()} 重置为 {opt maxiter()}。因此，如果您指定 {cmd:maxiter(0)}，则将不会执行适应。

{phang2}
{opt alpha(#)} 指定用于调整 AR 的参数。{opt alpha()} 应在 [0,1] 之间。默认值为 {cmd:alpha(0.75)}。

{phang2}
{opt beta(#)} 指定用于调整建议协方差矩阵的参数。{opt beta()} 必须在 [0,1] 之间。{opt beta()} 越接近零，建议协方差的适应性越差。当 {opt beta()} 为零时，在所有 MCMC 迭代中将使用相同的建议协方差。默认值为 {cmd:beta(0.8)}。

{phang2}
{opt gamma(#)} 指定用于调整建议协方差矩阵的适应率的参数。{opt gamma()} 必须在 [0,1] 之间。{opt gamma()} 的值越大，建议协方差的适应性越差。默认值为 {cmd:gamma(0)}。

{phang2}
{opt tarate(#)} 指定所有模型参数块的 TAR；这一点很少使用。{opt tarate()} 必须在 (0,1) 之间。对于连续多个参数块，默认 AR 为 0.234，对于只有一个连续参数的块为 0.44，对于离散参数的块为 1/{it:n_maxlev}，其中 {it:n_maxlev} 是块中离散参数的最大级别数。

{phang2}
{opt tolerance(#)} 指定基于 TAR 的适应的容忍度标准。{opt tolerance()} 应在 (0,1) 之间。
每当当前 AR 与 TAR 之间的绝对差异小于 {opt tolerance()} 时，适应就会停止。默认值为 {cmd:tolerance(0.01)}。

{phang}
{opt scale(#)} 指定所有块的比例因子的初始乘数。初始比例因子是计算为 {it:#}/sqrt{n_p}（对于连续参数）和 
{it:#}/n_p（对于离散参数），其中 n_p 是块中的参数数量。默认值为 {cmd:scale(2.38)}。

{phang}
{opt covariance(cov)} 指定一个规模矩阵 {it:cov} 用于计算初步建议协方差矩阵。初步建议协方差计算为 rho x Sigma，其中 rho 是比例因子，Sigma = {it:matname}。默认情况下，Sigma 为单位矩阵。部分指定 Sigma 也是允许的。{it:cov} 的行和列应以某些或所有模型参数命名。根据一些理论结果，最优建议协方差是模型参数的后验协方差矩阵，而这一矩阵通常是未知的。此选项不适用于包含随机效应参数的块。

{marker reporting_options}{...}
{dlgtab:报告}

INCLUDE help bayesmh_credintoptsdes

{phang}
  {it:eform_option} 指定以指数形式显示系数表；见 {manhelpi eform_option R}。估计命令确定允许的 {it:eform_option}（{opt eform(string)} 和 {cmd:eform} 总是允许的）。

{phang}
{cmd:remargl} 指定计算多层模型的对数边际似然。对于多层模型，默认情况下不报告此值。贝叶斯多层模型包含许多参数，因为除了回归系数和方差成分外，它们还估计各个随机效应。计算对数边际似然涉及所有参数的样本协方差矩阵的行列式的逆，随着参数数量的增加，其精确度会降低。对于高维模型如多层模型，计算对数边际似然可能耗时，且其精确度可能变得不可接受低。因为很难在所有多层模型中访问计算的精确度，因此默认情况下不报告对数边际似然。对于包含少量随机效应的多层模型，您可以使用 {cmd:remargl} 选项计算并显示对数边际似然。

INCLUDE help bayesmh_batchoptdes

{phang}
{cmd:saving(}{it:{help filename_zh}}[{cmd:, replace}]{cmd:)} 将模拟结果保存到 {it:filename}{cmd:.dta}。{cmd:replace} 选项指定在存在时覆盖 {it:filename}{cmd:.dta}。如果未指定 {opt saving()} 选项，则 {cmd:bayes} 前缀将模拟结果保存到临时文件中，以便后续访问后估计命令。每次运行 {cmd:bayes} 前缀时，此临时文件都将被覆盖，并且如果当前的估计结果被清除，该文件也将被删除。{cmd:saving()} 可以在估计期间或重放时指定。

{pmore}
保存的数据集具有以下结构。变量 {cmd:_chain} 记录链的标识符。变量 {cmd:_index} 记录迭代次数。{cmd:bayes} 前缀只保存在每次迭代之间有所不同的状态（参数值集）以及在变量 {cmd:_frequency} 中每个状态的频率。（某些状态可能在离散参数中重复。）因此，{cmd:_index} 可能不包含连续的整数。如果您需要获得此数据集的任何汇总，请记得使用 {cmd:_frequency} 作为频率权重。每个参数的值在数据集中以单独变量的形式保存。包含无方程名称的参数值的变量名称为 {cmd:eq0_p}{it:#}，按照在 {cmd:bayes} 前缀中声明的顺序。包含方程名称的参数值的变量名称为 {cmd:eq}{it:#}{cmd:_p}{it:#}，同样按照参数定义的顺序。具有相同方程名称的参数将具有相同的变量前缀 {cmd:eq}{it:#}。例如，

{phang3}
  {cmd:. bayes, saving(mcmc):} ...

{pmore}
将创建一个数据集 {cmd:mcmc.dta} ，其变量名称为 {cmd:eq1_p1} 对应 {cmd:{c -(}y:x1{c )-}}， {cmd:eq1_p2} 对应 {cmd:{c -(}y:_cons{c )-}}，及 {cmd:eq0_p1} 对应 {cmd:{c -(}var{c )-}}。
另请查看宏 {cmd:e(parnames)} 和 {cmd:e(varnames)}，了解参数名称与变量名称之间的对应关系。

{pmore}
此外，{cmd:bayes} 前缀还保存变量 {cmd:_loglikelihood} 来包含每次迭代的对数似然值，保存变量 {cmd:_logposterior} 来包含每次迭代的对数后验值。

{phang}
{opt nomodelsummary} 抑制指定模型的详细摘要。
默认情况下会报告模型摘要。

{phang}
{opt nomesummary} 抑制模型的多层结构摘要。此摘要对于多层命令默认报告。

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <bayes.sthlp>}