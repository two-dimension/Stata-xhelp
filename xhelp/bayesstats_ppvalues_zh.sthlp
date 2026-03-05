{smcl}
{* *! version 1.0.0  04apr2019}{...}
{viewerdialog "bayesstats ppvalues" "dialog bayesstats_ppvalues"}{...}
{vieweralsosee "[BAYES] bayesstats ppvalues" "mansection BAYES bayesstatsppvalues"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[BAYES] bayesmh" "help bayesmh_zh"}{...}
{vieweralsosee "[BAYES] bayespredict" "help bayespredict_zh"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[BAYES] Bayesian postestimation" "help bayesian postestimation"}{...}
{viewerjumpto "Syntax" "bayesstats_ppvalues_zh##syntax"}{...}
{viewerjumpto "Menu" "bayesstats_ppvalues_zh##menu"}{...}
{viewerjumpto "Description" "bayesstats_ppvalues_zh##description"}{...}
{viewerjumpto "Links to PDF documentation" "bayesstats_ppvalues_zh##linkspdf"}{...}
{viewerjumpto "Options" "bayesstats_ppvalues_zh##options"}{...}
{viewerjumpto "Examples" "bayesstats_ppvalues_zh##examples"}{...}
{viewerjumpto "Stored results" "bayesstats_ppvalues_zh##results"}
{help bayesstats_ppvalues:English Version}
{hline}{...}
{p2colset 1 32 34 2}{...}
{p2col:{bf:[BAYES] bayesstats ppvalues} {hline 2}}贝叶斯预测 p 值及其他预测摘要{p_end}
{p2col:}({mansection BAYES bayesstatsppvalues:查看完整的 PDF 手册条目}){p_end}
{p2colreset}{...}


{marker syntax}{...}
{title:语法}

{marker bayespred}{...}
{marker statpred}{...}
{pstd}
后验预测摘要用于复制结果、残差等

{p 8 11 2}
{cmd:bayesstats} {cmdab:ppval:ues}
{it:{help bayesstats_ppvalues##yspec:yspec}} [{it:yspec} ...] 
{cmd:using} {it:{help bayesstats_ppvalues##predfile:predfile}}
[{cmd:,} {it:{help bayesstats_ppvalues##options_table:选项}}]


{pstd}
用于复制结果、残差等的表达式的后验预测摘要

{p 8 11 2}
{cmd:bayesstats} {cmdab:ppval:ues}
{cmd:(}{it:{help bayesstats_ppvalues##yexprspec:yexprspec}}{cmd:)}
     [{cmd:(}{it:yexprspec}{cmd:)} ...] 
{cmd:using} {it:{help bayesstats_ppvalues##predfile:predfile}}
[{cmd:,} {it:{help bayesstats_ppvalues##options_table:选项}}]


{pstd}
针对复制结果、残差等的 Mata 函数的后验预测摘要

{p 8 11 2}
{cmd:bayesstats} {cmdab:ppval:ues}
{cmd:(}{it:{help bayesstats_ppvalues##funcspec:funcspec}}{cmd:)}
     [{cmd:(}{it:funcspec}{cmd:)} ...] 
{cmd:using} {it:{help bayesstats_ppvalues##predfile:predfile}}
[{cmd:,} {it:{help bayesstats_ppvalues##options_table:选项}}]


{pstd}
完整语法

{p 8 11 2}
{cmd:bayesstats} {cmdab:ppval:ues}
{it:{help bayesstats_ppvalues##predspec:predspec}} [{it:predspec} ...] 
{cmd:using} {it:{help bayesstats_ppvalues##predfile:predfile}}
[{cmd:,} {it:{help bayesstats_ppvalues##options_table:选项}}]


包含 help bayesstats_predfile

{marker yspec}{...}
{p 4 6 2}
{it:yspec} 是 {c -(}{it:{help bayesstats_ppvalues##ysimspec:ysimspec}} {c |}
                    {it:{help bayesstats_ppvalues##residspec:residspec}} {c |}
		    {it:{help bayesstats ppvalues##label:label}}{c )-}.{p_end}

{marker ysimspec}{...}
{p 4 6 2}
{it:ysimspec} 是 {cmd:{c -(}_ysim}{it:#}{cmd:{c )-}} 或
{cmd:{c -(}_ysim}{it:#}{cmd:[}{it:{help numlist_zh}}{cmd:]{c )-}}，其中
{cmd:{c -(}_ysim}{it:#}{cmd:{c )-}} 指的是第 {it:#} 个复制结果的所有观测值，而
{cmd:{c -(}_ysim}{it:#}{cmd:[}{it:numlist}{cmd:]{c )-}} 指的是所选的第 {it:#} 个复制结果的观测值 {it:numlist}。
{cmd:{c -(}_ysim{c )-}} 是 {cmd:{c -(}_ysim1{c )-}} 的同义词。{p_end}

{marker residspec}{...}
{p 4 6 2}
{it:residspec} 是 {cmd:{c -(}_resid}{it:#}{cmd:{c )-}} 或
{cmd:{c -(}_resid}{it:#}{cmd:[}{it:{help numlist_zh}}{cmd:]{c )-}}，其中
{cmd:{c -(}_resid}{it:#}{cmd:{c )-}} 指的是第 {it:#} 个复制结果的所有残差，而
{cmd:{c -(}_resid}{it:#}{cmd:[}{it:numlist}{cmd:]{c )-}} 指的是所选的第 {it:#} 个复制结果的残差 {it:numlist}。
{cmd:{c -(}_resid{c )-}} 是 {cmd:{c -(}_resid1{c )-}} 的同义词。
{p_end}

包含 help bayesstats_label.ihlp

{* 包含 help bayesstats_largedta.ihlp *}{...}
{pstd}
在大型数据集下，规范
{cmd:{c -(}_ysim}{it:#}{cmd:{c )-}} 和
{cmd:{c -(}_resid}{it:#}{cmd:{c )-}}
可能会耗费大量时间和内存，应该避免使用。详见
{mansection BAYES bayespredictRemarksandexamplesGeneratingandsavingsimulatedoutcomes:{it:生成和保存模拟结果}}在
{bf:[BAYES] bayespredict}.{p_end}

{marker yexprspec}{...}
{p 4 6 2}
{it:yexprspec} 是 [{it:exprlabel}{cmd::}]{it:yexpr}，
其中 {it:exprlabel} 是有效的 Stata 名称，{it:yexpr} 是一个标量
表达式，可以包含
模拟结果的各个观测值，
{cmd:{c -(}_ysim}{it:#}{cmd:[}{it:#}{cmd:]{c )-}}; 期望输出值，
{cmd:{c -(}_mu}{it:#}{cmd:[}{it:#}{cmd:]{c )-}}; 期望残差，
{cmd:{c -(}_resid}{it:#}{cmd:[}{it:#}{cmd:]{c )-}}; 以及其他标量
预测，{cmd:{c -(}}{it:label}{cmd:{c )-}}.{p_end}

包含 help bayesstats_funcspec.ihlp

{marker predspec}{...}
{p 4 6 2}
{it:predspec} 是 {it:{help bayesstats_ppvalues##yspec:yspec}}、{cmd:(}{it:{help bayesstats_ppvalues##yexprspec:yexprspec}}{cmd:)} 或
{cmd:(}{it:{help bayesstats_ppvalues##funcspec:funcspec}}{cmd:)}。详见
{mansection BAYES BayesianpostestimationRemarksandexamplesDifferentwaysofspecifyingpredictionsandtheirfunctions:{it:不同方式指定预测及其函数}}
在 {bf:[BAYES] 贝叶斯后验估计}。

{synoptset 24 tabbed}{...}
{marker options_table}{...}
{synopthdr}
{synoptline}
包含 help bayespost_chainopts
{synopt :{opt noleg:end}}抑制表图例{p_end}
{synoptline}
{p 4 6 2}
* 选项 {cmd:chains()} 和 {cmd:sepchains} 仅在选项 {opt nchains()} 与 {help bayesmh_zh} 一同使用时相关。

{marker menu}{...}
{title:菜单}

{phang}
{bf:统计 > 贝叶斯分析 > 后验预测 p 值}


{marker description}{...}
{title:描述}

{pstd}
{cmd:bayesstats ppvalues} 执行后验预测检查，以评估 贝叶斯模型的拟合优度。它计算
{help bayes_glossary##posterior_predictive_pvalue:后验预测 p 值}
(PPPs) 用于通过 {help bayespredict_zh} 生成的
{help bayes_glossary##replicated_outcome:复制结果}，这些结果是在使用 {help bayesmh_zh} 进行拟合模型后产生的。PPPs 测量复制数据与观察数据之间的一致性。接近 0 或 1 的 PPPs 表示模型拟合不足。该命令还报告与
{help bayes_glossary##posterior_predictive_checking:后验预测检查}相关的其他摘要统计信息。


{marker linkspdf}{...}
{title:PDF 文档链接}

        {mansection BAYES bayesstatsppvaluesQuickstart:快速入门}

        {mansection BAYES bayesstatsppvaluesRemarksandexamples:备注和示例}

        {mansection BAYES bayesstatsppvaluesMethodsandformulas:方法和公式}

{pstd}
上述章节不包括在此帮助文件中。


{marker options}{...}
{title:选项}

{* 包含 help bayespost_chainoptsdes *}{...}
{marker chainsspec}{...}
{phang}
{cmd:chains(_all} | {it:{help numlist_zh}}{cmd:)} 指定用于计算的 MCMC 样本中的链。默认是 {cmd:chains(_all)} 或使用所有模拟链。在链收敛的情况下，使用多个链通常会改善 MCMC 摘要统计。选项 {cmd:chains()} 仅在指定选项 {cmd:nchains()} 与 {help bayesmh_zh} 时相关。

{phang}
{opt sepchains} 指定分别为每个链计算结果。默认是根据选项 {opt chains()} 使用所有链计算结果。选项 {opt sepchains} 仅在指定选项 {opt nchains()} 与 {help bayesmh_zh} 时相关。

{phang}
{opt nolegend} 抑制表图例的显示，该图例用于标识表中的行以及它们所代表的表达式。


{marker examples}{...}
{title:示例}

{pstd}设置{p_end}
{phang2}{cmd:. webuse auto}{p_end}
{phang2}{cmd:. bayesmh mpg weight length, likelihood(normal({c -(}var{c )-}))}
        {cmd:prior({mpg:}, normal(0, 1e4)) block({mpg:}, gibbs)}
        {cmd:prior({c -(}var{c )-}, igamma(.01,.01)) block({c -(}var{c )-}, gibbs)}
        {cmd:mcmcsize(1000) saving(simdata) rseed(14)}

{pstd}为 {cmd:mpg} 生成模拟结果并将其保存在 {cmd:prdata.dta}{p_end}
{phang2}{cmd:. bayespredict {_ysim}, saving(prdata)}

{pstd}使用 {cmd:prdata.dta} 计算第一个模拟观测值的后验预测 p 值{p_end}
{phang2}{cmd:. bayesstats ppvalues {_ysim[1]} using prdata}

{pstd}使用 {cmd:prdata.dta} 计算模拟残差的最小值和最大值的后验预测 p 值{p_end}
{phang2}{cmd:. bayesstats ppvalues (@min({_resid})) (@max({_resid})) using prdata}

{pstd}清除预测数据{p_end}
{phang2}{cmd:. rm prdata.dta}{p_end}
{phang2}{cmd:. rm prdata.ster}


{marker results}{...}
{title:存储的结果}

{pstd}
{cmd:bayesstats ppvalues} 在 {cmd:r()} 中存储如下内容：

{synoptset 19 tabbed}{...}
{p2col 5 19 21 2: 标量}{p_end}
{synopt :{cmd:r(mcmcsize)}}用于计算的 MCMC 样本数量{p_end}
包含 help bayespost_scalar_nchains

{p2col 5 19 21 2: 宏}{p_end}
{synopt :{cmd:r(names)}}模型参数和表达式的名称{p_end}
{synopt :{cmd:r(expr_}{it:#}{cmd:)}}第 {it:#} 个表达式{p_end}
{synopt :{cmd:r(exprnames)}}表达式标签{p_end}
包含 help bayespost_macro_chains

{p2col 5 19 21 2: 矩阵}{p_end}
{synopt :{cmd:r(summary)}}包含参数预测统计信息的矩阵
{cmd:r(names)}{p_end}
{synopt :{cmd:r(summary_chain}{it:#}{cmd:)}}如果指定了 {cmd:sepchains}，则为第 {it:#} 个链的 {cmd:summary} 矩阵{p_end}
{p2colreset}{...}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <bayesstats_ppvalues.sthlp>}