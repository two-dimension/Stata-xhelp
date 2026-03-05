{smcl}
{* *! version 1.0.13  25apr2019}{...}
{viewerdialog "bayesstats summary" "dialog bayesstats_summary"}{...}
{vieweralsosee "[BAYES] bayesstats summary" "mansection BAYES bayesstatssummary"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[BAYES] bayes" "help bayes_zh"}{...}
{vieweralsosee "[BAYES] bayesmh" "help bayesmh_zh"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[BAYES] Bayesian estimation" "help bayesian estimation"}{...}
{vieweralsosee "[BAYES] Bayesian postestimation" "help bayesian postestimation"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[BAYES] bayesgraph" "help bayesgraph_zh"}{...}
{vieweralsosee "[BAYES] bayespredict" "help bayespredict_zh"}{...}
{vieweralsosee "[BAYES] bayesstats ess" "help bayesstats ess"}{...}
{vieweralsosee "[BAYES] bayesstats ppvalues" "help bayesstats ppvalues"}{...}
{vieweralsosee "[BAYES] bayestest interval" "help bayestest interval"}{...}
{viewerjumpto "语法" "bayesstats_summary_zh##syntax"}{...}
{viewerjumpto "菜单" "bayesstats_summary_zh##menu"}{...}
{viewerjumpto "描述" "bayesstats_summary_zh##description"}{...}
{viewerjumpto "PDF 文档链接" "bayesstats_summary_zh##linkspdf"}{...}
{viewerjumpto "选项" "bayesstats_summary_zh##options"}{...}
{viewerjumpto "示例" "bayesstats_summary_zh##examples"}{...}
{viewerjumpto "存储结果" "bayesstats_summary_zh##results"}
{help bayesstats_summary:English Version}
{hline}{...}
{p2colset 1 31 33 2}{...}
{p2col:{bf:[BAYES] bayesstats summary} {hline 2}}贝叶斯汇总统计{p_end}
{p2col:}({mansection BAYES bayesstatssummary:查看完整的 PDF 手册条目}){p_end}
{p2colreset}{...}


{marker syntax}{...}
{title:语法}

{pstd}
语法如下：

        {help bayesstats_summary##statparams:模型参数的汇总统计}
        {help bayesstats_summary##statpred:预测的汇总统计}


{marker statparams}{...}
{title:模型参数的汇总统计}

{phang}
所有模型参数的汇总统计 

{p 8 11 2}
{opt bayesstats} {opt summ:ary} [{cmd:,} {it:{help bayesstats_summary##options_table:选项}}
{opt showreffects}[{cmd:(}{it:{help bayesian postestimation##bayesian_post_reref:reref}}{cmd:)}]]

{p 8 11 2}
{opt bayesstats} {opt summ:ary} {cmd:_all} [{cmd:,} {it:{help bayesstats_summary##options_table:选项}}
{opt showreffects}[{cmd:(}{it:{help bayesian postestimation##bayesian_post_reref:reref}}{cmd:)}]]


{phang}
所选模型参数的汇总统计

{p 8 11 2}
{opt bayesstats} {opt summ:ary} {it:{help bayesstats_summary##paramspec:paramspec}} [{cmd:,} {it:{help bayesstats_summary##options_table:选项}}]


{phang}
模型参数表达式的汇总统计

{p 8 11 2}
{opt bayesstats} {opt summ:ary} {it:{help bayesstats_summary##exprspec:exprspec}} [{cmd:,} {it:{help bayesstats_summary##options_table:选项}}]


{phang}
对对数似然或对数后验函数的汇总统计 

{p 8 11 2}
{opt bayesstats} {opt summ:ary} {cmd:_loglikelihood} | {cmd:_logposterior} [{cmd:,} {it:{help bayesstats_summary##options_table:选项}}]


{phang}
完整语法 

{p 8 11 2}
{opt bayesstats} {opt summ:ary} {it:{help bayesstats_summary##spec:spec}}
[{it:spec} ...] 
[{cmd:,} {it:{help bayesstats_summary##options_table:选项}}]


{marker paramspec}{...}
INCLUDE help bayes_paramspec

{marker exprspec}{...}
INCLUDE help bayes_exprspec

{phang}
{cmd:_loglikelihood} 和 {cmd:_logposterior} 也有相应的同义词
{cmd:_ll} 和 {cmd:_lp}。

{marker spec}{...}
{phang}
{it:spec} 是 {it:{help bayesstats_summary##paramspec:paramspec}}, 
{it:{help bayesstats_summary##exprspec:exprspec}}, 
{cmd:_loglikelihood}（或 {cmd:_ll}），或 {cmd:_logposterior}（或 {cmd:_lp}）。


{marker statpred}{...}
{title:预测的汇总统计}

{pstd}
对模拟结果、残差等的汇总统计

{p 8 11 2}
{cmd:bayesstats} {cmdab:summ:ary}
{it:{help bayesstats_summary##yspec:yspec}} [{it:yspec} ...] 
{cmd:using} {it:{help bayesstats_summary##predfile:predfile}}
[{cmd:,} {it:{help bayesstats_summary##options_table:选项}}]


{pstd}
对模拟结果、残差等的表达式的汇总统计

{p 8 11 2}
{cmd:bayesstats} {cmdab:summ:ary}
{cmd:(}{it:{help bayesstats_summary##yexprspec:yexprspec}}{cmd:)}
     [{cmd:(}{it:yexprspec}{cmd:)} ...] 
{cmd:using} {it:{help bayesstats_summary##predfile:predfile}}
[{cmd:,} {it:{help bayesstats_summary##options_table:选项}}]


{pstd}
对模拟结果、残差等的 Mata 函数的汇总统计

{p 8 11 2}
{cmd:bayesstats} {cmdab:summ:ary}
{cmd:(}{it:{help bayesstats_summary##funcspec:funcspec}}{cmd:)}
     [{cmd:(}{it:funcspec}{cmd:)} ...] 
{cmd:using} {it:{help bayesstats_summary##predfile:predfile}}
[{cmd:,} {it:{help bayesstats_summary##options_table:选项}}]


{pstd}
完整语法

{p 8 11 2}
{cmd:bayesstats} {cmdab:summ:ary}
{it:{help bayesstats_summary##predspec:predspec}} [{it:predspec} ...] 
{cmd:using} {it:{help bayesstats_summary##predfile:predfile}}
[{cmd:,} {it:{help bayesstats_summary##options_table:选项}}]


INCLUDE help bayesstats_predfile

{marker yspec}{...}
{p 4 6 2}
{it:yspec} 是 {c -(}{it:{help bayesstats_summary##ysimspec:ysimspec}} {c |}
                    {it:{help bayesstats_summary##residspec:residspec}} {c |}
		    {it:{help bayesstats_summary##muspec:muspec}} {c |}
		    {it:{help bayesstats summary##label:label}}{c )-}.{p_end}

{marker ysimspec}{...}
{p 4 6 2}
{it:ysimspec} 是 {cmd:{c -(}_ysim}{it:#}{cmd:{c )-}} 或
{cmd:{c -(}_ysim}{it:#}{cmd:[}{it:{help numlist_zh}}{cmd:]{c )-}}, 其中
{cmd:{c -(}_ysim}{it:#}{cmd:{c )-}} 指的是第 {it:#} 个模拟结果的所有观测值，而
{cmd:{c -(}_ysim}{it:#}{cmd:[}{it:numlist}{cmd:]{c )-}} 指的是第 {it:#} 个模拟结果的选定观测值 {it:numlist}。
{cmd:{c -(}_ysim{c )-}} 是 {cmd:{c -(}_ysim1{c )-}} 的同义词.{p_end}

{marker residspec}{...}
{p 4 6 2}
{it:residspec} 是 {cmd:{c -(}_resid}{it:#}{cmd:{c )-}} 或
{cmd:{c -(}_resid}{it:#}{cmd:[}{it:{help numlist_zh}}{cmd:]{c )-}}, 其中
{cmd:{c -(}_resid}{it:#}{cmd:{c )-}} 是第 {it:#} 个模拟结果的所有残差，而
{cmd:{c -(}_resid}{it:#}{cmd:[}{it:numlist}{cmd:]{c )-}} 是第 {it:#} 个模拟结果的选定残差 {it:numlist}。{cmd:{c -(}_resid{c )-}} 是 {cmd:{c -(}_resid1{c )-}} 的同义词。
{p_end}

INCLUDE help bayesstats_muspec.ihlp

INCLUDE help bayesstats_label.ihlp

INCLUDE help bayesstats_largedta.ihlp

{marker yexprspec}{...}
{p 4 6 2}
{it:yexprspec} 是 [{it:exprlabel}{cmd::}]{it:yexpr},
其中 {it:exprlabel} 是有效的 Stata 名称，{it:yexpr} 是一个标量表达式，可以包含
模拟结果的单个观测值、
{cmd:{c -(}_ysim}{it:#}{cmd:[}{it:#}{cmd:]{c )-}}; 单个
期望结果值， {cmd:{c -(}_mu}{it:#}{cmd:[}{it:#}{cmd:]{c )-}};
单个模拟残差，
{cmd:{c -(}_resid}{it:#}{cmd:[}{it:#}{cmd:]{c )-}}; 以及其他标量
预测， {cmd:{c -(}}{it:label}{cmd:{c )-}}.{p_end}

INCLUDE help bayesstats_funcspec.ihlp

{marker predspec}{...}
{p 4 6 2}
{it:predspec} 是 {it:{help bayesstats_summary##yspec:yspec}},
{cmd:(}{it:{help bayesstats_summary##yexprspec:yexprspec}}{cmd:)}, 或
{cmd:(}{it:{help bayesstats_summary##funcspec:funcspec}}{cmd:)}.  参见
{mansection BAYES BayesianpostestimationRemarksandexamplesDifferentwaysofspecifyingpredictionsandtheirfunctions:{it:指定预测及其函数的不同方式}}
在 {bf:[BAYES] 贝叶斯后验估计} 中。


{synoptset 24 tabbed}{...}
{marker options_table}{...}
{synopthdr}
{synoptline}
{syntab:主要}
{synopt :{opt clev:el(#)}}设置可信区间水平；默认为 {cmd:clevel(95)}{p_end}
{synopt :{opt hpd}}显示 HPD 可信区间，而不是默认的等尾可信区间{p_end}
{synopt :{opt batch(#)}}指定批次均值计算的块长度；默认为 {cmd:batch(0)}{p_end}
INCLUDE help bayespost_chainopts
{synopt :{opt skip(#)}}跳过 MCMC 样本中的每 {it:#} 个观测值；
默认值为 {cmd:skip(0)}{p_end}
{synopt :{opt noleg:end}}抑制表图例{p_end}
{synopt :{it:{help bayesstats_summary##display_options:display_options}}}控制
INCLUDE help shortdes-displayoptbayes

{syntab:高级}
{synopt :{opt corrlag(#)}}指定最大自相关滞后；默认值可变{p_end}
{synopt :{opt corrtol(#)}}指定自相关容忍度；默认值为 {cmd:corrtol(0.01)}{p_end}
{synoptline}
INCLUDE help bayespost_syntablegend


{marker menu}{...}
{title:菜单}

{phang}
{bf:统计 > 贝叶斯分析 > 汇总统计}


{marker description}{...}
{title:描述}

{pstd}
{cmd:bayesstats summary} 计算并报告模型参数及其函数的后验汇总统计，使用当前的
贝叶斯估计结果。后验汇总统计包括后验均值、后验标准差、MCMC标准误差（MCSE）、后验中位数，以及等尾可信区间或最高后验密度（HPD）可信区间。


{marker linkspdf}{...}
{title:PDF 文档链接}

        {mansection BAYES bayesstatssummaryQuickstart:快速入门}

        {mansection BAYES bayesstatssummaryRemarksandexamples:备注和示例}

        {mansection BAYES bayesstatssummaryMethodsandformulas:方法和公式}

{pstd}
以上部分未包含在此帮助文件中。


{marker options}{...}
{title:选项}

{dlgtab:主要}

INCLUDE help bayes_clevel_hpd

INCLUDE help bayesmh_batchoptdes

INCLUDE help bayespost_chainoptsdes

INCLUDE help bayespost_showreoptdes

INCLUDE help bayespost_skipoptsdes

{phang}
{opt nolegend} 抑制表图例的显示，该图例标识表的行及其所代表的表达式。

{marker display_options}{...}
{phang}
{it:display_options}:
{opt vsquish},
{opt noempty:cells},
{opt base:levels},
{opt allbase:levels},
{opt nofvlab:el},
{opt fvwrap(#)},
{opt fvwrapon(style)}, 和
{opt nolstretch};
   参见 {helpb estimation options##display_options:[R] 估计选项}。

{dlgtab:高级}

INCLUDE help bayes_corr


{marker examples}{...}
{title:示例}

    {hline}
{pstd}设置{p_end}
{phang2}{cmd:. webuse oxygen}{p_end}
{phang2}{cmd:. set seed 14}{p_end}
{phang2}{cmd:. bayesmh change age group, likelihood(normal({c -(}var{c )-}))}
        {cmd:prior({change:}, flat) prior({c -(}var{c )-}, jeffreys)}

{pstd}所有模型参数的汇总{p_end}
{phang2}{cmd:. bayesstats summary}

{pstd}模型参数 {cmd:{change:age}} 和 {cmd:{c -(}var{c )-}} 的汇总{p_end}
{phang2}{cmd:. bayesstats summary {change:age} {c -(}var{c )-}}

{pstd}模型参数 {cmd:{change:age}} 和 {cmd:{change:_cons}} 的汇总{p_end}
{phang2}{cmd:. bayesstats summary {change:age _cons}}
	
{pstd}关于 {bf:change} 方程中模型参数的汇总{p_end}
{phang2}{cmd:. bayesstats summary {change:}}

{pstd}标记为 {cmd:sd} 的模型参数函数的汇总{p_end}
{phang2}{cmd:. bayesstats summary (sd: sqrt({c -(}var{c )-}))}

    {hline}
{pstd}设置{p_end}
{phang2}{cmd:. webuse oxygen, clear}{p_end}
{phang2}{cmd:. bayesmh change age group, likelihood(normal({c -(}var{c )-}))}
        {cmd:prior({change:}, flat) prior({c -(}var{c )-}, jeffreys)} 
        {cmd:nchains(3) rseed(16)}

{pstd}所有三条链的汇总{p_end}
{phang2}{cmd:. bayesstats summary}

{pstd}每条链分别计算的汇总{p_end}
{phang2}{cmd:. bayesstats summary, sepchains}

    {hline}


{marker results}{...}
{title:存储结果}

{pstd}
{cmd:bayesstats summary} 将以下内容存储在 {cmd:r()} 中：

{synoptset 19 tabbed}{...}
{p2col 5 19 21 2: 标量}{p_end}
{synopt:{cmd:r(mcmcsize)}}用于计算的 MCMC 样本大小{p_end}
{synopt:{cmd:r(clevel)}}可信区间水平{p_end}
{synopt:{cmd:r(hpd)}}{cmd:1} 如果 {cmd:hpd} 被指定，否则为 {cmd:0}{p_end}
{synopt:{cmd:r(batch)}}批处理长度，用于批均值计算{p_end}
{synopt:{cmd:r(skip)}}在计算中跳过的 MCMC 观测数；每 {cmd:r(skip)} 观测被跳过{p_end}
{synopt:{cmd:r(corrlag)}}最大自相关滞后{p_end}
{synopt:{cmd:r(corrtol)}}自相关容忍度{p_end}
INCLUDE help bayespost_scalar_nchains

{p2col 5 19 21 2: 宏}{p_end}
{synopt:{cmd:r(names)}}模型参数和表达式的名称{p_end}
{synopt:{cmd:r(expr_}{it:#}{cmd:)}}第 {it:#} 个表达式{p_end}
{synopt:{cmd:r(exprnames)}}表达式标签{p_end}
INCLUDE help bayespost_macro_chains

{p2col 5 19 21 2: 矩阵}{p_end}
{synopt:{cmd:r(summary)}}存储 {cmd:r(names)} 中参数的后验汇总统计的矩阵{p_end}
{synopt:{cmd:r(summary_chain}{it:#}{cmd:)}}如果指定了 {cmd:sepchains}，则为链 {it:#} 的 {cmd:summary} 矩阵{p_end}
{p2colreset}{...}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <bayesstats_summary.sthlp>}