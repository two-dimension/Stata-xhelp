{smcl}
{* *! version 1.0.0  14may2019}{...}
{viewerdialog bayespredict "dialog bayespredict"}{...}
{vieweralsosee "[BAYES] bayespredict" "mansection BAYES bayespredict"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[BAYES] bayesmh" "help bayesmh_zh"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[BAYES] bayesgraph" "help bayesgraph_zh"}{...}
{vieweralsosee "[BAYES] Bayesian postestimation" "help bayesian postestimation"}{...}
{vieweralsosee "[BAYES] bayesstats ess" "help bayesstats ess"}{...}
{vieweralsosee "[BAYES] bayesstats ppvalues" "help bayesstats ppvalues"}{...}
{vieweralsosee "[BAYES] bayesstats summary" "help bayesstats summary"}{...}
{vieweralsosee "[BAYES] bayestest interval" "help bayestest interval"}{...}
{viewerjumpto "Syntax" "bayespredict_zh##syntax"}{...}
{viewerjumpto "Menu" "bayespredict_zh##menu"}{...}
{viewerjumpto "Description" "bayespredict_zh##description"}{...}
{viewerjumpto "Links to PDF documentation" "bayespredict_zh##linkspdf"}{...}
{viewerjumpto "Options" "bayespredict_zh##options"}{...}
{viewerjumpto "Examples" "bayespredict_zh##examples"}{...}
{viewerjumpto "Stored results" "bayespredict_zh##results"}
{help bayespredict:English Version}
{hline}{...}
{p2colset 1 25 27 2}{...}
{p2col:{bf:[BAYES] bayespredict} {hline 2}}贝叶斯预测{p_end}
{p2col:}({mansection BAYES bayespredict:查看完整 PDF 手册条目}){p_end}
{p2colreset}{...}


{marker syntax}{...}
{title:语法}

{pstd}
语法按以下标题呈现：

        {help bayespredict##bayespred:计算预测}
        {help bayespredict##postsumm:计算模拟结果的后验摘要}
        {help bayespredict##replicates:生成模拟结果的 MCMC 重复样本子集}


{marker bayespred}{...}
{title:计算预测}

{phang}
选择的结果变量和观测值的预测

{p 8 11 2}
{cmd:bayespredict}
{it:{help bayespredict##ysimspec:ysimspec}} [{it:ysimspec} ...]
{ifin}{cmd:,}
{opth sav:ing(bayespredict##savingopt:filespec)}
[{it:{help bayespredict##simopts:simopts}}]


{phang}
模拟结果、期望值和残差的函数

{p 8 11 2}
{cmd:bayespredict}
{cmd:(}{it:{help bayespredict##funcspec:funcspec}}{cmd:)}
[{cmd:(}{it:funcspec}{cmd:)} ...] 
{ifin}{cmd:,}
{opth sav:ing(bayespredict##savingopt:filespec)}
[{it:{help bayespredict##simopts:simopts}}]

{marker ysimspec}{...}
{p 4 6 2}
{it:ysimspec} 是 {cmd:{c -(}_ysim}{it:#}{cmd:{c )-}} 或
{cmd:{c -(}_ysim}{it:#}{cmd:[}{it:{help numlist_zh}}{cmd:]}{cmd:{c )-}}，其中
{cmd:{c -(}_ysim}{it:#}{cmd:{c )-}} 指的是第 {it:#} 个模拟结果的所有观测值，
而 {cmd:{c -(}_ysim}{it:#}{cmd:[}{it:numlist}{cmd:]}{cmd:{c )-}} 指的是
第 {it:#} 个模拟结果的选定观测值 {it:numlist}。
{cmd:{c -(}_ysim{c )-}} 是 {cmd:{c -(}_ysim1{c )-}} 的同义词。
对于大型数据集，指定 {cmd:{c -(}_ysim}{it:#}{cmd:{c )-}} 可能会使用大量时间和内存，应予以避免。参见
{mansection BAYES bayespredictRemarksandexamplesGeneratingandsavingsimulatedoutcomes:{it:生成和保存模拟结果}}
在 {bf:[BAYES] bayespredict} 中。

{marker funcspec}{...}
{p 4 6 2}
{it:funcspec} 为以下之一，

{phang3}
        [{it:label}{cmd::}]{cmd:@}{it:func}{cmd:(}{it:arg1}
	         [{cmd:,} {it:arg2}]{cmd:)}

{phang3}
        [{it:label}{cmd::}]{cmd:@}{it:userprog} {it:arg1}
	         [{it:arg2}]
        [{cmd:,} {opth extravars(varlist)} {opt passthru:opts(string)}]

{marker args}{...}
{p 6 6 2}
其中 {it:label} 是有效的 Stata 名称； {it:func} 是一个官方或用户定义的 Mata 函数，它作用于列向量并返回一个实数标量； {it:userprog} 是用户定义的 Stata 程序； {it:arg1} 和 {it:arg2} 为 {cmd:{c -(}_ysim}[{it:#}]{cmd:{c )-}}、{cmd:{c -(}_resid}[{it:#}]{cmd:{c )-}} 或 {cmd:{c -(}_mu}[{it:#}]{cmd:{c )-}} 之一。
{cmd:{c -(}_mu}{it:#}{cmd:{c )-}} 指的是期望值，而 {cmd:{c -(}_resid}{it:#}{cmd:{c )-}} 指的是
第 {it:#} 个结果的残差，后者定义为 {cmd:{c -(}_ysim}{it:#}{cmd:{c )-}} 和
{cmd:{c -(}_mu}{it:#}{cmd:{c )-}} 之间的差。 
{it:arg2} 主要用于用户定义的 Mata 函数；参见
{mansection BAYES bayespredictRemarksandexamplesDefiningteststatisticsusingMatafunctions:{it:使用 Mata 函数定义测试统计量}} 
在 {bf:[BAYES] bayespredict} 中。


{marker postsumm}{...}
{title:计算模拟结果的后验摘要}

{pstd}
模拟结果的后验均值

{p 8 11 2}
{cmd:bayespredict}
{dtype}
{it:{help bayespredict##newvarspec:newvarspec}}
{ifin}{cmd:,} {cmd:mean}
[{opth outcome:(bayespredict##outsim:depvar)}
{it:{help bayespredict##meanopts:meanopts}}
{it:{help bayespredict##simopts:simopts}}]


{pstd}
模拟结果的后验中位数或后验标准差

{p 8 11 2}
{cmd:bayespredict}
{dtype} 
{it:{help bayespredict##newvarspec:newvarspec}}
{ifin}{cmd:,}
{cmd:median}{c |}{cmd:std}
[{opth outcome:(bayespredict##outsim:depvar)}
{it:{help bayespredict##simopts:simopts}}]


{pstd}
模拟结果的可信区间

{p 8 11 2}
{cmd:bayespredict}
{dtype}
{newvar}_l {it:newvar}_u
{ifin}{cmd:,} {cmd:cri}
[{opth outcome:(bayespredict##outsim:depvar)}
{it:{help bayespredict##criopts:criopts}}
{it:{help bayespredict##simopts:simopts}}]


{phang}
{marker newvarspec}{...}
{it:newvarspec} 是单一结果模型的 {newvar} 和 
{it:{help newvarlist_zh}} 或 {it:{help newvarlist##stub*:stub}}{cmd:*} 用于多结果模型。


{marker replicates}{...}
{title:生成模拟结果的 MCMC 重复样本子集}

{p 8 11 2}
{cmd:bayesreps}
{dtype}
{it:{help bayespredict##newrepspec:newrepspec}}
{ifin}{cmd:,} {opt nreps(#)}
[{opth outcome:(bayespredict##outreps:depvar)}
{it:{help bayespredict##simopts:simopts}}]


{phang}
{marker newrepspec}{...}
{it:newrepspec} 是 {newvar}，对于单个重复样本，使用 {cmd:nreps(1)}，对于多个重复样本，使用 {it:{help newvarlist##stub*:stub}}{cmd:*} 和 {opt nreps(#)}，其中 {it:#} 大于 1。


{marker meanopts}{...}
{synoptset 24 tabbed}{...}
{marker meanopts}{...}
{synopthdr:均值选项}
{synoptline}
{syntab:主要}
{synopt :{opth mcse(newvar)}}创建包含 MCSE 的 {it:newvar}{p_end}

{syntab:高级}
{synopt :{opt batch(#)}}指定批量均值计算的块长度；默认值为 {cmd:batch(0)}{p_end}
{synopt :{opt corrlag(#)}}指定最大自相关滞后；默认值各异{p_end}
{synopt :{opt corrtol(#)}}指定自相关容差；默认值为 {cmd:corrtol(0.01)}{p_end}
{synoptline}

{marker simopts}{...}
{synopthdr:模拟选项}
{synoptline}
{syntab:模拟}
{synopt :{opt rseed(#)}}随机数种子{p_end}
{p2coldent :* {cmd:chains(_all} | {it:{help numlist_zh}}{cmd:)}}指定用于计算的链；默认为 {cmd:chains(_all)}{p_end}
{synopt :{opt dots}}每100次迭代显示点，每1,000次迭代显示迭代次数{p_end}
{synopt :{cmd:dots(}{it:#}[{cmd:,} {opt every(#)}]{cmd:)}}在执行模拟时显示点{p_end}
{synoptline}
{p 4 6 2}
* 选项 {cmd:chains()} 仅与选项 {opt nchains()} 在 {help bayesmh_zh} 中一起使用时相关。
{p_end}

{marker criopts}{...}
{synopthdr:可信区间选项}
{synoptline}
{syntab:主要}
{synopt :{opt clev:el(#)}}设置可信区间水平；默认值为 {cmd:clevel(95)}{p_end}
{synopt :{opt hpd}}计算 HPD 可信区间，而不是默认的等尾可信区间{p_end}
{synoptline}
{p2colreset}{...}


{marker menu}{...}
{title:菜单}

{phang}
{bf:统计 > 贝叶斯分析 > 预测}


{marker description}{...}
{title:描述}

{pstd}
{cmd:bayespredict} 使用 {cmd:bayesmh} 命令生成的当前估计结果来计算贝叶斯预测，并将其保存在一个单独的 Stata 数据集里。贝叶斯预测包括模拟结果，这是来自所拟合贝叶斯模型的
{help bayes_glossary##posterior_predictive_distribution:后验预测分布} 的样本及其函数。您还可以计算模拟结果的后验摘要并将其存储为当前数据集中的新变量。

{pstd}
{cmd:bayesreps} 从整个 MCMC 样本中生成模拟结果的随机子集，并将其存储为当前数据集中的新变量。此命令用于检查模型拟合效果。


{marker linkspdf}{...}
{title:PDF 文档链接}

        {mansection BAYES bayespredictQuickstart:快速入门}

        {mansection BAYES bayespredictRemarksandexamples:备注与示例}

        {mansection BAYES bayespredictMethodsandformulas:方法与公式}

{pstd}
以上章节未包含在此帮助文件中。


{marker options}{...}
{title:选项}

{pstd}
选项按以下标题呈现：

        {help bayespredict##optspredict:预测选项}
        {help bayespredict##optspostsumm:后验摘要选项}
        {help bayespredict##optsbayesreps:bayesreps 选项}


{marker optspredict}{...}
{title:预测选项}

{dlgtab:主要}

{marker savingopt}{...}
{phang}
{cmd:saving(}{it:{help filename_zh}}[{cmd:, replace}]{cmd:)} 保存所请求的预测，例如模拟结果和残差到 {it:filename}{cmd:.dta}。它还将辅助估计结果保存在 {it:filename}{cmd:.ster}，通过指定 {helpb estimates use} {it:filename} 可以访问。 {cmd:replace} 选项指定如果存在则覆盖 {it:filename}{cmd:.dta} 和 {it:filename}{cmd:.ster}。 在计算预测时需要使用 {cmd:saving()}。结果仅保存指定的结果变量、观测值和使用 {cmd:bayespredict} 指定的函数。有关详细信息，请参见
{mansection BAYES bayespredictRemarksandexamplesPredictiondataset:{it:预测数据集}} 在 {bf:[BAYES] bayespredict} 中。

{marker option_extravars}{...}
{phang}
{opth extravars(varlist)} 供用户定义的 Stata 程序使用。它指定除因变量和自变量之外，计算预测所需的任何变量。例如，这些变量可能是计数数据模型的偏移变量和曝光变量。

{phang}
{opt passthruopts(string)} 供用户定义的 Stata 程序使用。
它指定在计算预测时，您可能希望传递给程序的选项列表。例如，这些选项可能包含模型参数和超参数的固定值。

{dlgtab:模拟}

{phang}
{opt rseed(#)} 设置随机数种子。可以用此选项重现结果。对于单链， {opt rseed(#)} 相当于在调用 {cmd:bayespredict} 之前输入 {cmd:set} {cmd:seed} {it:#}；参见 {manhelp set_seed R:set seed}。对于多条链，您应该使用 {cmd:rseed()} 以实现可重现性；参见
{mansection BAYES bayesmhRemarksandexamplesReproducingresults:{it:重现结果}} 在 {bf:[BAYES] bayesmh} 中。

{marker chainsspec}{...}
{phang}
{cmd:chains(_all} | {it:{help numlist_zh}}{cmd:)} 指定用于计算的 MCMC 样本中的链。默认值是 {cmd:chains(_all)}，即使用所有模拟链。使用多条链（前提是链已收敛），通常会改善 MCMC 摘要统计。选项 {cmd:chains()} 仅在与选项 {cmd:nchains()} 与 {help bayesmh_zh} 一起使用时相关。

{phang}
{opt dots} 和 {opt dots(#)} 指定在模拟过程中显示点。
对于多条链，这些选项会影响所有链。
{opt dots(#)} 每 {it:#} 次迭代显示一个点。 
如果指定了 {cmd:dots(}...{cmd:,} {opt every(#)}{cmd:)}，则在每 {it:#} 次迭代显示一个迭代次数而不是点。
{cmd:dots(,} {opt every(#)}{cmd:)} 等同于
{cmd:dots(1,} {opt every(#)}{cmd:)}。 {opt dots} 每100次迭代显示点，每1,000次迭代显示迭代次数；这相当于 
{cmd:dots(100, every(1000))}。  


{marker optspostsumm}{...}
{title:后验摘要选项}

{dlgtab:主要}

{phang}
{cmd:mean} 计算模拟结果变量的后验均值，并将其存储为当前数据集中的新变量。

{phang}
{cmd:median} 计算模拟结果变量的后验中位数，并将其存储为当前数据集中的新变量。

{phang}
{cmd:std} 计算模拟结果变量的后验标准差，并将其存储为当前数据集中的新变量。

{pstd}
{cmd:mean}、{cmd:median} 和 {cmd:std} 可以计算所有模拟结果变量的结果或特定变量的结果。要计算所有模拟结果变量的结果，您需要指定 p 个新变量，其中 p 是因变量的数量。或者，您可以指定 {it:stub}{cmd:*}，在这种情况下，这些选项将把结果存储在变量 {it:stub}{cmd:1}、{it:stub}{cmd:2}、...、{it:stub}p 中。要计算特定模拟结果变量的结果，您需指定一个新变量，并可选择性地在选项 {cmd:outcome()} 中指定结果变量名称；如果省略 {cmd:outcome()}，则假定使用第一个结果变量。

{phang}
{cmd:cri} 计算模拟结果变量的可信区间，并在当前数据集中将对应的上下限存储在两个新变量中。对于多结果模型，它计算在选项 {cmd:outcome()} 中指定的结果变量或默认的第一个结果变量的结果。

{marker outsim}{...}
{phang}
{opt outcome(depvar)} 供多个结果模型在计算模拟结果的后验摘要时使用。它指定要计算其后验摘要的模拟结果。 {cmd:outcome()} 应包含因变量的名称。默认值为第一个结果变量。 {cmd:outcome()} 不可与 {it:{help newvarlist_zh}} 或 {it:{help newvarlist##stub*:stub}}{cmd:*} 组合使用。

{phang}
{opth mcse(newvar)} 与选项 {cmd:mean} 结合使用。它添加一个类型为 {it:type} 的 {it:newvar}，包含模拟结果变量的后验均值的 MCSE。如果使用 {cmd:bayespredict} 指定了多个变量，则 {it:newvar} 用作存根 {it:newvar}{cmd:*}。

{* INCLUDE help bayes_clevel_hpd *}{...}
{phang}
{opt clevel(#)} 指定等尾和 HPD 可信区间的可信水平，百分比形式。默认值为 {cmd:clevel(95)} 或由 {manhelp clevel BAYES:set clevel} 设置。
此选项要求还需指定 {cmd:cri}。

{phang}
{opt hpd} 计算 HPD 可信区间，而不是默认的等尾可信区间。
此选项要求还需指定 {cmd:cri}。

{dlgtab:模拟}

{phang}
{opt rseed(#)} 设置随机数种子。此选项可用于重现结果。对于单链， {opt rseed(#)} 相当于在调用 {cmd:bayespredict} 之前输入 {cmd:set seed} {it:#}；参见 {help set_seed_zh:[R] set seed}。
对于多条链，您应使用 {cmd:rseed()} 以实现可重现性；参见 
{mansection BAYES bayesmhRemarksandexamplesReproducingresults:{it:重现结果}} 在 {bf:[BAYES] bayesmh} 中。

{marker chainsspec}{...}
{phang}
{cmd:chains(_all} | {it:{help numlist_zh}}{cmd:)} 指定用于计算的 MCMC 样本中的链。默认值为 {cmd:chains(_all)}，即使用所有模拟链。使用多条链（前提是链已收敛）通常会改善 MCMC 摘要统计。选项 {cmd:chains()} 仅在与选项 {cmd:nchains()} 与 {help bayesmh_zh} 一起使用时相关。

{phang}
{opt dots} 和 {opt dots(#)} 指定在模拟过程中显示点。
对于多条链，这些选项会影响所有链。
{opt dots(#)} 每 {it:#} 次迭代显示一个点。 
如果指定了 {cmd:dots(}...{cmd:,} {opt every(#)}{cmd:)}，则在每 {it:#} 次迭代显示一个迭代次数而不是点。
{cmd:dots(,} {opt every(#)}{cmd:)} 等同于
{cmd:dots(1,} {opt every(#)}{cmd:)}。 {opt dots} 每100次迭代显示点，每1,000次迭代显示迭代次数；这相当于 
{cmd:dots(100, every(1000))}。  

{dlgtab:高级}

{pstd}
高级选项仅在与选项 {cmd:mean} 结合使用时可用。

INCLUDE help bayesmh_batchoptdes

INCLUDE help bayes_corr


{marker optsbayesreps}{...}
{title:bayesreps 选项}

{dlgtab:主要}

{phang}
{opt nreps(#)} 指定要随机抽取的模拟结果的 MCMC 重复样本数量，从整个 MCMC 重复样本中选择。 {it:#} 必须是 1 到 MCMC 样本大小之间的整数（包括 1 和样本大小）。生成的重复样本作为新变量存储在当前数据集中。对于单个重复样本，使用 {cmd:nreps(1)} 指定一个新变量名。对于多个重复样本，您需指定一个 {it:{help newvarlist##stub*:stub}}{cmd:*}，在这种情况下，重复样本将存储在变量 {it:stub}{cmd:1}、{it:stub}{cmd:2}、...、{it:stub}R 中，其中 R 为在 {cmd:nreps()} 中指定的重复样本数量。

{marker outreps}{...}
{phang}
{opt outcome(depvar)} 在使用 {cmd:bayesreps} 生成模拟结果的 MCMC 重复样本时用于多个结果模型。它指定要生成其 MCMC 重复样本的模拟结果。默认值为使用第一个结果变量。您可以在 {cmd:outcome()} 中指定其他因变量名称。

{dlgtab:模拟}

{phang}
{opt rseed(#)} 设置随机数种子。此选项可用于重现结果。对于单链， {opt rseed(#)} 相当于在调用 {cmd:bayespredict} 之前输入 {cmd:set seed} {it:#}；参见 {help set_seed_zh:[R] set seed}。
对于多条链，您应使用 {cmd:rseed()} 以实现可重现性；参见 
{mansection BAYES bayesmhRemarksandexamplesReproducingresults:{it:重现结果}} 在 {bf:[BAYES] bayesmh} 中。

{marker chainsspec}{...}
{phang}
{cmd:chains(_all} | {it:{help numlist_zh}}{cmd:)} 指定用于计算的 MCMC 样本中的链。默认值为 {cmd:chains(_all)}，即使用所有模拟链。使用多条链（前提是链已收敛）通常会改善 MCMC 摘要统计。选项 {cmd:chains()} 仅在与选项 {cmd:nchains()} 与 {help bayesmh_zh} 一起使用时相关。

{phang}
{opt dots} 和 {opt dots(#)} 指定在模拟过程中显示点。
对于多条链，这些选项会影响所有链。
{opt dots(#)} 每 {it:#} 次迭代显示一个点。 
如果指定了 {cmd:dots(}...{cmd:,} {opt every(#)}{cmd:)}，则在每 {it:#} 次迭代显示一个迭代次数而不是点。
{cmd:dots(,} {opt every(#)}{cmd:)} 等同于
{cmd:dots(1,} {opt every(#)}{cmd:)}。 {opt dots} 每100次迭代显示点，每1,000次迭代显示迭代次数；这相当于 
{cmd:dots(100, every(1000))}。  


{marker examples}{...}
{title:示例}

    {hline}
{pstd}设置{p_end}
{phang2}{cmd:. webuse auto}{p_end}
{phang2}{cmd:. bayesmh mpg weight length, likelihood(normal({c -(}var{c )-}))}
   {cmd:prior({mpg:}, normal(0, 1e4)) block({mpg:}, gibbs)}
   {cmd:prior({c -(}var{c )-}, igamma(.01,.01)) block({c -(}var{c )-}, gibbs)}
   {cmd:mcmcsize(1000) saving(simdata, replace) rseed(16)}

{pstd}为 {cmd:mpg} 模拟结果并将其保存在 {cmd:prdata.dta}{p_end}
{phang2}{cmd:. bayespredict {_ysim}, saving(prdata) rseed(16)}
{p_end}

{pstd}使用 {cmd:prdata.dta} 计算第一个模拟观测值的后验摘要{p_end}
{phang2}{cmd:. bayesstats summary {_ysim[1]} using prdata}

{pstd}使用 {cmd:prdata.dta} 计算模拟残差的后验摘要{p_end}
{phang2}{cmd:. bayesstats summary (@mean({_resid})) using prdata}

{pstd}使用 {cmd:prdata.dta} 计算期望结果的后验摘要{p_end}
{phang2}{cmd:. bayesstats summary (@mean({_mu})) using prdata}

{pstd}计算 {cmd:mpg} 的模拟结果的最小值并将其保存在 {cmd:prdata.dta}{p_end}
{phang2}{cmd:. bayespredict (prmin:@min({_ysim})), saving(prdata, replace)}

{pstd}使用 {cmd:prdata.dta} 计算 {cmd:prmin} 的后验摘要{p_end}
{phang2}{cmd:. bayesstats summary {prmin} using prdata}

{pstd}计算模拟结果的后验均值并将其存储在新变量 {cmd:pmean} 中{p_end}
{phang2}{cmd:. bayespredict pmean, mean}

{pstd}计算模拟结果的后验中位数并将其存储在新变量 {cmd:pmedian} 中{p_end}
{phang2}{cmd:. bayespredict pmedian, median}

{pstd}生成 3 个模拟结果的 MCMC 重复样本，并将其存储在变量 {cmd:mpgrep1}、{cmd:mpgrep2} 和 {cmd:mpgrep3} 中{p_end}
{phang2}{cmd:. bayesreps mpgrep*, nreps(3)}

{pstd}清除预测数据{p_end}
{phang2}{cmd:. rm prdata.dta}{p_end}
{phang2}{cmd:. rm prdata.ster}

    {hline}
{pstd}设置{p_end}
{phang2}{cmd:. webuse auto, clear}{p_end}
{phang2}{cmd:. bayesmh mpg length = weight, likelihood(mvnormal({Sigma,matrix}))}
   {cmd:prior({mpg:}, normal(0, 1e4)) block({mpg:}, gibbs)}
   {cmd:prior({length:}, normal(0, 1e4)) block({length:}, gibbs)}
   {cmd:prior({Sigma,m}, iwishart(2,10,I(2))) block({Sigma,m}, gibbs)}
   {cmd:mcmcsize(1000) saving(simdata, replace)}

{pstd}为观察值 1 到 10 的 {cmd:mpg} 和 {cmd:length} 模拟结果并将预测保存在 {cmd:prdata.dta}{p_end}
{phang2}{cmd:. bayespredict {_ysim1} {_ysim2} in 1/10, saving(prdata)}

{pstd}计算 {cmd:mpg} 被模拟残差的后验预测 p 值{p_end}
{phang2}{cmd:. bayesstats ppvalues {_resid1} using prdata}

{pstd}计算 {cmd:length} 的后验摘要{p_end}
{phang2}{cmd:. bayesstats summary {_ysim2} using prdata}

{pstd}清除预测数据{p_end}
{phang2}{cmd:. rm prdata.dta}{p_end}
{phang2}{cmd:. rm prdata.ster}

    {hline}


{marker results}{...}
{title:存储的结果}

{pstd}
{cmd:bayespredict} 在一个估计文件中存储以下内容，{it:filename}{cmd:.ster}，其中 {it:filename} 在 
{opth saving(filename)} 选项中指定。 

{synoptset 19 tabbed}{...}
{p2col 5 19 21 2: 标量}{p_end}
{synopt :{cmd:e(N)}}观测值的数量{p_end}
{synopt :{cmd:e(nchains)}}MCMC 链的数量{p_end}
{synopt :{cmd:e(mcmcsize)}}MCMC 样本大小{p_end}

{p2col 5 19 21 2: 宏}{p_end}
{synopt :{cmd:e(cmd)}}{cmd:bayespredict}{p_end}
{synopt :{cmd:e(est_cmd)}}{cmd:bayesmh}{p_end}
{synopt :{cmd:e(cmdline)}}以键入的形式命令{p_end}
{synopt :{cmd:e(est_cmdline)}}以键入的形式估计命令{p_end}
{synopt :{cmd:e(predfile)}}包含预测结果的文件{p_end}
{synopt :{cmd:e(mcmcfile)}}包含模拟结果的文件{p_end}
{synopt :{cmd:e(predynames)}}模拟结果观测值的名称，{cmd:_ysim}{it:#}{cmd:_}{it:#}{p_end}
{synopt :{cmd:e(predfnames)}}指定函数和程序的名称{p_end}
{synopt :{cmd:e(predrngstate}{it:#}{cmd:)}}第 {it:#} 个链的预测随机数状态{p_end}
{synopt :{cmd:e(rngstate)}}模拟的随机数状态（仅在单链时）{p_end}
{synopt :{cmd:e(rngstate}{it:#}{cmd:)}}第 {it:#} 个链的模拟随机数状态（仅在使用 {cmd:nchains()} 时）{p_end}
{p2colreset}{...}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <bayespredict.sthlp>}