{smcl}
{* *! version 1.0.7  04dec2018}{...}
{viewerdialog "bayestest model" "dialog bayestest_model"}{...}
{vieweralsosee "[BAYES] bayestest model" "mansection BAYES bayestestmodel"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[BAYES] bayes" "help bayes_zh"}{...}
{vieweralsosee "[BAYES] bayesmh" "help bayesmh_zh"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[BAYES] Bayesian estimation" "help bayesian estimation"}{...}
{vieweralsosee "[BAYES] Bayesian postestimation" "help bayesian postestimation"}{...}
{vieweralsosee "[BAYES] bayesstats ic" "help bayesstats ic"}{...}
{vieweralsosee "[BAYES] bayesstats summary" "help bayesstats summary"}{...}
{vieweralsosee "[BAYES] bayestest interval" "help bayestest interval"}{...}
{viewerjumpto "语法" "bayestest model##syntax"}{...}
{viewerjumpto "菜单" "bayestest model##menu"}{...}
{viewerjumpto "描述" "bayestest model##description"}{...}
{viewerjumpto "PDF 文档链接" "bayestest_model_zh##linkspdf"}{...}
{viewerjumpto "选项" "bayestest model##options"}{...}
{viewerjumpto "示例" "bayestest model##examples"}{...}
{viewerjumpto "存储的结果" "bayestest model##results"}
{help bayestest_model:English Version}
{hline}{...}
{p2colset 1 28 30 2}{...}
{p2col:{bf:[BAYES] bayestest model} {hline 2}}使用模型后验概率进行假设检验{p_end}
{p2col:}({mansection BAYES bayestestmodel:查看完整的 PDF 手册条目}){p_end}
{p2colreset}{...}


{marker syntax}{...}
{title:语法}

{p 8 11 2}
{opt bayestest} {cmd:model} [{it:namelist}] [{cmd:,} {it:options}]

{phang}
其中 {it:namelist} 是一个名称、名称列表、{cmd:_all} 或 {cmd:*}。
名称可以是 {cmd:.}，表示当前（活动）估计。
{cmd:_all} 和 {cmd:*} 的含义相同。

{synoptset 24 tabbed}{...}
{marker options_table}{...}
{synopthdr}
{synoptline}
{syntab:主要}
{synopt :{opth prior(numlist)}}指定被检验模型的先验概率；默认情况下所有模型被认为是同等可能的{p_end}
包含帮助 bayespost_chainopts

{syntab:高级}
{synopt :{cmdab:marglm:ethod(}{it:{help bayestest model##method:method}}{cmd:)}}指定边际似然近似方法；
默认使用拉普拉斯-梅特罗波利斯近似，{cmd:lmetropolis}; 很少使用{p_end}
{synoptline}
{p2colreset}{...}
包含帮助 bayespost_syntablegend

{synoptset 24}{...}
{marker method}{...}
{synopthdr:method}
{synoptline}
{synopt :{cmdab:lmet:ropolis}}拉普拉斯-梅特罗波利斯近似；默认{p_end}
{synopt :{cmd:hmean}}调和均值近似{p_end}
{synoptline}


{marker menu}{...}
{title:菜单}

{phang}
{bf:统计 > 贝叶斯分析 > 使用模型后验概率进行假设检验}


{marker description}{...}
{title:描述}

{pstd}
{cmd:bayestest model} 计算使用 {cmd:bayesmh} 命令或 {cmd:bayes} 前缀拟合的贝叶斯模型的后验概率。 这些后验概率可用于检验关于模型参数的假设。该命令报告所有被检验模型的边际似然、先验概率和后验概率。


{marker linkspdf}{...}
{title:PDF 文档链接}

        {mansection BAYES bayestestmodelQuickstart:快速入门}

        {mansection BAYES bayestestmodelRemarksandexamples:备注和示例}

        {mansection BAYES bayestestmodelMethodsandformulas:方法与公式}

{pstd}
以上部分不包括在此帮助文件中。


{marker options}{...}
{title:选项}

{dlgtab:主要}

{phang}
{opth prior(numlist)}指定模型的先验概率。默认情况下，假设所有模型同等可能。可以为所有被检验的模型指定概率，但这些概率的和必须为一。
或者，可以为除最后一个模型外的所有模型指定概率，此时指定的概率之和必须小于一，而最后一个模型的概率是通过一减去该和计算得出的。

包含帮助 bayespost_chainoptsdes

{dlgtab:高级}

{phang}
{cmd:marglmethod(}{it:{help bayestest model##method:method}}{cmd:)}指定逼近边际似然的方法。 {it:method} 可以是 {cmd:lmetropolis}，默认的拉普拉斯-梅特罗波利斯近似，或 {cmd:hmean} 用于调和均值近似。此选项很少使用。


{marker examples}{...}
{title:示例}

{pstd}设置{p_end}
{phang2}{cmd:. webuse oxygen}{p_end}
{phang2}{cmd:. set seed 14}{p_end}
{phang2}{cmd:. bayesmh change c.age##i.group, likelihood(normal({c -(}var{c )-}))}
        {cmd:prior({change:}, flat) prior({c -(}var{c )-}, jeffreys)}
	{cmd:saving(full_simdata)}{p_end}
{phang2}{cmd:. estimates store full}

{phang2}{cmd:. set seed 14}{p_end}
{phang2}{cmd:. bayesmh change age i.group, likelihood(normal({c -(}var{c )-}))}
        {cmd:prior({change:}, flat) prior({c -(}var{c )-}, jeffreys)} 
        {cmd:saving(reduced_simdata)}{p_end}
{phang2}{cmd:. estimates store reduced}

{phang2}{cmd:. set seed 14}{p_end}
{phang2}{cmd:. bayesmh change, likelihood(normal({c -(}var{c )-}))}
	{cmd:prior({change:}, flat) prior({c -(}var{c )-}, jeffreys)}
        {cmd:saving(intonly_simdata)}{p_end}
{phang2}{cmd:. estimates store intonly}

{pstd}获得与模型 {bf:full}、{bf:reduced} 和 {bf:intonly} 相关的概率{p_end}
{phang2}{cmd:. bayestest model full reduced intonly}

{pstd}为每个模型指定先验概率{p_end}
{phang2}{cmd:. bayestest model full reduced intonly, prior(.5 .4 .1)}


{marker results}{...}
{title:存储的结果}

{pstd}
{cmd:bayestest model} 将以下内容存储在 {cmd:r()}中：

{synoptset 19 tabbed}{...}
{p2col 5 19 21 2: 宏}{p_end}
{synopt:{cmd:r(names)}}使用的估计结果名称{p_end}
{synopt:{cmd:r(marglmethod)}}近似边际似然的方法：
{cmd:lmetropolis} 或 {cmd:hmean}{p_end}
包含帮助 bayespost_macro_chains

{p2col 5 19 21 2: 矩阵}{p_end}
{synopt:{cmd:r(test)}}模型在 {cmd:r(names)} 中的测试结果{p_end}
{synopt:{cmd:r(test_chain}{it:#}{cmd:)}}如果指定了 {cmd:sepchains}，则为链 {it:#} 的 {cmd:test} 矩阵{p_end}
{p2colreset}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <bayestest_model.sthlp>}