{smcl}
{* *! version 1.0.9  14may2019}{...}
{viewerdialog "bayesstats ess" "dialog bayesstats_ess"}{...}
{vieweralsosee "[BAYES] bayesstats ess" "mansection BAYES bayesstatsess"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[BAYES] bayes" "help bayes_zh"}{...}
{vieweralsosee "[BAYES] bayesmh" "help bayesmh_zh"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[BAYES] Bayesian estimation" "help bayesian estimation"}{...}
{vieweralsosee "[BAYES] Bayesian postestimation" "help bayesian postestimation"}{...}
{vieweralsosee "[BAYES] bayesstats summary" "help bayesstats summary"}{...}
{viewerjumpto "Syntax" "bayesstats_ess_zh##syntax"}{...}
{viewerjumpto "Menu" "bayesstats_ess_zh##menu"}{...}
{viewerjumpto "Description" "bayesstats_ess_zh##description"}{...}
{viewerjumpto "Links to PDF documentation" "bayesstats_ess_zh##linkspdf"}{...}
{viewerjumpto "Options" "bayesstats_ess_zh##options"}{...}
{viewerjumpto "Examples" "bayesstats_ess_zh##examples"}{...}
{viewerjumpto "Stored results" "bayesstats_ess_zh##results"}
{help bayesstats_ess:English Version}
{hline}{...}
{p2colset 1 27 27 2}{...}
{p2col:{bf:[BAYES] bayesstats ess} {hline 2}}有效样本大小及相关统计量{p_end}
{p2col:}({mansection BAYES bayesstatsess:查看完整PDF手册条目}){p_end}
{p2colreset}{...}


{marker syntax}{...}
{title:语法}

{pstd}
语法在以下标题下呈现：

        {help bayesstats_ess##statparams:模型参数的统计量}
        {help bayesstats_ess##statpred:预测的统计量}


{marker statparams}{...}
{title:模型参数的统计量}

{phang}
所有模型参数的统计量 

{p 8 11 2}
{opt bayesstats ess} [{cmd:,} {it:{help bayesstats_ess##options_table:选项}}
{opt showreffects}[{cmd:(}{it:{help bayesian postestimation##bayesian_post_reref:reref}}{cmd:)}]]

{p 8 11 2}
{opt bayesstats ess} {cmd:_all} [{cmd:,} {it:{help bayesstats_ess##options_table:选项}}
{opt showreffects}[{cmd:(}{it:{help bayesian postestimation##bayesian_post_reref:reref}}{cmd:)}]]


{phang}
选择的模型参数的统计量

{p 8 11 2}
{opt bayesstats ess} {it:{help bayesstats_ess##paramspec:paramspec}} [{cmd:,} {it:{help bayesstats_ess##options_table:选项}}]


{phang}
模型参数表达式的统计量

{p 8 11 2}
{opt bayesstats ess} {it:{help bayesstats_ess##exprspec:exprspec}} [{cmd:,} {it:{help bayesstats_ess##options_table:选项}}]


{phang}
完整语法 

{p 8 11 2}
{opt bayesstats ess} {it:{help bayesstats_ess##spec:spec}}
[{it:spec} ...] [{cmd:,} {it:{help bayesstats_ess##options_table:选项}}]


{marker paramspec}{...}
包含 help bayes_paramspec

{marker exprspec}{...}
包含 help bayes_exprspec

{marker spec}{...}
{phang}
{it:spec} 是 {it:{help bayesstats_ess##paramspec:paramspec}}  
或 {it:{help bayesstats_ess##exprspec:exprspec}}之一。


{marker statpred}{...}
{title:预测的统计量}

{pstd}
模拟结果、残差等的统计量

{p 8 11 2}
{cmd:bayesstats} {cmd:ess}
{it:{help bayesstats_ess##yspec:yspec}} [{it:yspec} ...] 
{cmd:using} {it:{help bayesstats_ess##predfile:predfile}}
[{cmd:,} {it:{help bayesstats_ess##options_table:选项}}]


{pstd}
模拟结果、残差等表达式的统计量

{p 8 11 2}
{cmd:bayesstats} {cmd:ess}
{cmd:(}{it:{help bayesstats_ess##yexprspec:yexprspec}}{cmd:)}
     [{cmd:(}{it:yexprspec}{cmd:)} ...] 
{cmd:using} {it:{help bayesstats_ess##predfile:predfile}}
[{cmd:,} {it:{help bayesstats_ess##options_table:选项}}]


{pstd}
模拟结果、残差等的Mata函数统计量

{p 8 11 2}
{cmd:bayesstats} {cmd:ess}
{cmd:(}{it:{help bayesstats_ess##funcspec:funcspec}}{cmd:)}
     [{cmd:(}{it:funcspec}{cmd:)} ...] 
{cmd:using} {it:{help bayesstats_ess##predfile:predfile}}
[{cmd:,} {it:{help bayesstats_ess##options_table:选项}}]


{pstd}
完整语法

{p 8 11 2}
{cmd:bayesstats} {cmd:ess}
{it:{help bayesstats_ess##predspec:predspec}} [{it:predspec} ...] 
{cmd:using} {it:{help bayesstats_ess##predfile:predfile}}
[{cmd:,} {it:{help bayesstats_ess##options_table:选项}}]


包含 help bayesstats_predfile

{marker yspec}{...}
{p 4 6 2}
{it:yspec} 是 {c -(}{it:{help bayesstats_ess##ysimspec:ysimspec}} {c |}
                    {it:{help bayesstats_ess##residspec:residspec}} {c |}
		    {it:{help bayesstats_ess##muspec:muspec}} {c |}
		    {it:{help bayesstats ess##label:label}}{c )-}.{p_end}

{marker ysimspec}{...}
{p 4 6 2}
{it:ysimspec} 是 {cmd:{c -(}_ysim}{it:#}{cmd:{c )-}} 或
{cmd:{c -(}_ysim}{it:#}{cmd:[}{it:{help numlist_zh}}{cmd:]{c )-}}, 其中
{cmd:{c -(}_ysim}{it:#}{cmd:{c )-}} 指的是第 {it:#} 个模拟结果的所有观察值，以及
{cmd:{c -(}_ysim}{it:#}{cmd:[}{it:numlist}{cmd:]{c )-}} 指的是第 {it:#} 个模拟结果的选定观察值 {it:numlist}。
{cmd:{c -(}_ysim{c )-}} 是 {cmd:{c -(}_ysim1{c )-}} 的同义词.{p_end}

{marker residspec}{...}
{p 4 6 2}
{it:residspec} 是 {cmd:{c -(}_resid}{it:#}{cmd:{c )-}} 或
{cmd:{c -(}_resid}{it:#}{cmd:[}{it:{help numlist_zh}}{cmd:]{c )-}}, 其中
{cmd:{c -(}_resid}{it:#}{cmd:{c )-}} 指的是第 {it:#} 个模拟结果的所有残差，以及
{cmd:{c -(}_resid}{it:#}{cmd:[}{it:numlist}{cmd:]{c )-}} 指的是第 {it:#} 个模拟结果的选定残差 {it:numlist}。
{cmd:{c -(}_resid{c )-}} 是 {cmd:{c -(}_resid1{c )-}} 的同义词。
{p_end}

包含 help bayesstats_muspec.ihlp

包含 help bayesstats_label.ihlp

包含 help bayesstats_largedta.ihlp

{marker yexprspec}{...}
{p 4 6 2}
{it:yexprspec} 是 [{it:exprlabel}{cmd::}]{it:yexpr}，
其中 {it:exprlabel} 是有效的 Stata 名称，{it:yexpr} 是一个标量表达式，可能包含
模拟结果的个别观察值，
{cmd:{c -(}_ysim}{it:#}{cmd:[}{it:#}{cmd:]{c )-}}; 期望结果值，
{cmd:{c -(}_mu}{it:#}{cmd:[}{it:#}{cmd:]{c )-}}; 以及其他标量预测， 
{cmd:{c -(}}{it:label}{cmd:{c )-}}.{p_end}

包含 help bayesstats_funcspec.ihlp

{marker predspec}{...}
{p 4 6 2}
{it:predspec} 是 {it:{help bayesstats_ess##yspec:yspec}}、
{cmd:(}{it:{help bayesstats_ess##yexprspec:yexprspec}}{cmd:)}，或
{cmd:(}{it:{help bayesstats_ess##funcspec:funcspec}}{cmd:)}。请参见
{mansection BAYES BayesianpostestimationRemarksandexamples不同的预测及其函数的指定方式:{it:不同的预测及其函数的指定方式}}
在 {bf:[BAYES] 贝叶斯后估计}中。


{synoptset 24 tabbed}{...}
{marker options_table}{...}
{synopthdr}
{synoptline}
{syntab:主}
包含 help bayespost_chainopts
{synopt :{opt skip(#)}}跳过 MCMC 样本中的每 {it:#} 观察值；
默认值为 {cmd:skip(0)}{p_end}
{synopt :{opt noleg:end}}抑制表的图例{p_end}
{synopt :{it:{help bayesstats ess##display_options:display_options}}}控制
间距、行宽以及基本和空单元{p_end}

{syntab:高级}
{synopt :{opt corrlag(#)}}指定最大自相关滞后；默认值变化{p_end}
{synopt :{opt corrtol(#)}}指定自相关容忍度；默认值为
{cmd:corrtol(0.01)}{p_end}
{synoptline}
包含 help bayespost_syntablegend


{marker menu}{...}
{title:菜单}

{phang}
{bf:统计 > 贝叶斯分析 > 有效样本大小}


{marker description}{...}
{title:描述}

{pstd}
{cmd:bayesstats ess} 计算模型参数及其函数的有效样本大小（ESS）、相关时间和效率，使用当前的贝叶斯估计结果。


{marker linkspdf}{...}
{title:链接到PDF文档}

        {mansection BAYES bayesstatsess快速开始:快速开始}

        {mansection BAYES bayesstatsess备注与示例:备注和示例}

        {mansection BAYES bayesstatsess方法和公式:方法和公式}

{pstd}
上述部分未包含在本帮助文件中。


{marker options}{...}
{title:选项}

{dlgtab:主}

包含 help bayespost_chainoptsdes

包含 help bayespost_showreoptdes

包含 help bayespost_skipoptsdes

{phang}
{cmd:nolegend} 抑制表图例的显示，该图例用于标识表的行及其代表的表达式。

{marker display_options}{...}
{phang}
{it:display_options}：
{opt vsquish},
{opt noempty:cells},
{opt base:levels},
{opt allbase:levels}, 
{opt nofvlab:el},
{opt fvwrap(#)}, 
{opt fvwrapon(style)}, 和 
{opt nolstretch};
   请参见 {helpb estimation options##display_options:[R] 估计选项}。

{dlgtab:高级}

{phang}
{opt corrlag(#)} 指定用于计算有效样本大小的最大自相关滞后。默认值为
min{500,{cmd:mcmcsize()}/2}。总自相关被计算为从 0 到 {cmd:corrlag()} 或自相关值变小于 {cmd:corrtol()} 的索引的所有滞后 k 自相关值之和，前提是后者小于 {cmd:corrlag()}。

{phang}
{opt corrtol(#)} 指定用于计算有效样本大小的自相关容忍度。默认值为 {cmd:corrtol(0.01)}。对于给定的模型参数，如果 lag-k 自相关的绝对值小于 {cmd:corrtol()}，则丢弃 k 滞后后的所有自相关滞后。


{marker examples}{...}
{title:示例}

    {hline}
{pstd}设置{p_end}
{phang2}{cmd:. webuse oxygen}{p_end}
{phang2}{cmd:. set seed 14}{p_end}
{phang2}{cmd:. bayesmh change age group, likelihood(normal({c -(}var{c )-}))}
        {cmd:prior({change:}, flat) prior({c -(}var{c )-}, jeffreys)}

{pstd}所有模型参数的有效样本大小{p_end}
{phang2}{cmd:. bayesstats ess}

{pstd}参数 {cmd:{change:age}} 的有效样本大小{p_end}
{phang2}{cmd:. bayesstats ess {change:age}}

{pstd}模型参数 {cmd:{c -(}var{c )-}} 函数的有效样本大小{p_end}
{phang2}{cmd:. bayesstats ess (sqrt({c -(}var{c )-}))}

{pstd}多个模型参数函数的有效样本大小，并为每个表达式添加标签{p_end}
{phang2}{cmd:. bayesstats ess (exp_age: exp({change:age})) (sd: sqrt({c -(}var{c )-}))}
 
    {hline}
{pstd}设置{p_end}
{phang2}{cmd:. webuse oxygen, clear}{p_end}
{phang2}{cmd:. bayesmh change age group, likelihood(normal({c -(}var{c )-}))}
        {cmd:prior({change:}, flat) prior({c -(}var{c )-}, jeffreys)} 
        {cmd:nchains(3) rseed(16)}

{pstd}合并所有三条链的有效样本大小{p_end}
{phang2}{cmd:. bayesstats ess}

{pstd}合并第二和第三条链的有效样本大小{p_end}
{phang2}{cmd:. bayesstats ess, chains(2 3)}

    {hline}


{marker results}{...}
{title:存储结果}

{pstd}
{cmd:bayesstats ess} 将以下内容存储在 {cmd:r()} 中：

{synoptset 15 tabbed}{...}
{p2col 5 15 17 2: 标量}{p_end}
{synopt:{cmd:r(mcmcsize)}}计算中使用的 MCMC 样本大小{p_end}
{synopt:{cmd:r(skip)}}在计算中跳过的 MCMC 观察值的数量；每 {cmd:r(skip)} 观察值会被跳过{p_end}
{synopt:{cmd:r(corrlag)}}最大自相关滞后{p_end}
{synopt:{cmd:r(corrtol)}}自相关容忍度{p_end}
包含 help bayespost_scalar_nchains

{synoptset 15 tabbed}{...}
{p2col 5 15 17 2: 宏}{p_end}
{synopt:{cmd:r(names)}}模型参数和表达式的名称{p_end}
{synopt:{cmd:r(expr_}{it:#}{cmd:)}}第 {it:#} 个表达式{p_end}
{synopt:{cmd:r(exprnames)}}表达式标签{p_end}
包含 help bayespost_macro_chains

{p2col 5 15 17 2: 矩阵}{p_end}
{synopt:{cmd:r(ess)}}有效样本大小、相关时间和参数效率的矩阵，存储在 {cmd:r(names)} 中{p_end}
{synopt:{cmd:r(ess_chain}{it:#}{cmd:)}}链 {it:#} 的 {cmd:ess} 矩阵，如果指定了 {cmd:sepchains}{p_end}
{p2colreset}{...}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <bayesstats_ess.sthlp>}