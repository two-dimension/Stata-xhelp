{smcl}
{* *! version 1.0.9  04dec2018}{...}
{viewerdialog "bayesstats ic" "dialog bayesstats_ic"}{...}
{vieweralsosee "[BAYES] bayesstats ic" "mansection BAYES bayesstatsic"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[BAYES] bayes" "help bayes_zh"}{...}
{vieweralsosee "[BAYES] bayesmh" "help bayesmh_zh"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[BAYES] Bayesian estimation" "help bayesian estimation"}{...}
{vieweralsosee "[BAYES] Bayesian postestimation" "help bayesian postestimation"}{...}
{vieweralsosee "[BAYES] bayestest model" "help bayestest model"}{...}
{vieweralsosee "[R] estimates" "help estimates_zh"}{...}
{viewerjumpto "Syntax" "bayesstats_ic_zh##syntax"}{...}
{viewerjumpto "Menu" "bayesstats_ic_zh##menu"}{...}
{viewerjumpto "Description" "bayesstats_ic_zh##description"}{...}
{viewerjumpto "Links to PDF documentation" "bayesstats_ic_zh##linkspdf"}{...}
{viewerjumpto "Option" "bayesstats_ic_zh##options"}{...}
{viewerjumpto "Examples" "bayesstats_ic_zh##examples"}{...}
{viewerjumpto "Stored results" "bayesstats_ic_zh##results"}
{help bayesstats_ic:English Version}
{hline}{...}
{p2colset 1 26 28 2}{...}
{p2col:{bf:[BAYES] bayesstats ic} {hline 2}}贝叶斯信息准则和贝叶斯因子{p_end}
{p2col:}({mansection BAYES bayesstatsic:查看完整PDF手册条目}){p_end}
{p2colreset}{...}


{marker syntax}{...}
{title:语法}

{p 8 12 2}
{opt bayesstats ic} 
[{it:namelist}]
[{cmd:,} {it:options}]

{phang}
其中 {it:namelist} 是一个名称、名称列表、{cmd:_all} 或 {cmd:*}。一个名称可以是 {cmd:.}，表示当前（活动）估计。{cmd:_all} 和 {cmd:*} 的含义相同。

{synoptset 24 tabbed}{...}
{synopthdr}
{synoptline}
{syntab:主要}
{synopt :{opt basem:odel(name)}}指定用作基准模型的模型名称；默认是第一个列出的模型{p_end}
{synopt :{opt bayesf:actor}}报告贝叶斯因子，而非默认的对数贝叶斯因子{p_end}
{synopt :{opt diconly}}仅报告DIC{p_end}
包含帮助 bayespost_chainopts

{syntab:高级}
{synopt :{opth marglm:ethod(bayesstats_ic##method:method)}}指定边际似然近似方法；默认使用拉普拉斯-梅特罗波利斯近似，{opt lmetropolis}；很少使用{p_end}
{synoptline}
包含帮助 bayespost_syntablegend

{marker method}{...}
{synoptset 14}{...}
{synopthdr:方法}
{synoptline}
{synopt :{opt lmet:ropolis}}拉普拉斯-梅特罗波利斯近似；默认{p_end}
{synopt :{opt hmean}}调和均值近似{p_end}
{synoptline}


{marker menu}{...}
{title:菜单}

{phang}
{bf:统计 > 贝叶斯分析 > 信息准则}


{marker description}{...}
{title:描述}

{pstd}
{cmd:bayesstats ic} 计算并报告模型选择统计量，包括偏差信息准则（DIC）、对数边际似然和贝叶斯因子（BF），使用当前贝叶斯估计结果。贝叶斯因子可以以原始度量或对数度量显示。该命令还提供两种不同的方法来 approximation 边际似然。


{marker linkspdf}{...}
{title:PDF文档链接}

        {mansection BAYES bayesstatsicQuickstart:快速入门}

        {mansection BAYES bayesstatsicRemarksandexamples:备注和示例}

        {mansection BAYES bayesstatsicMethodsandformulas:方法和公式}

{pstd}
上述部分不包括在此帮助文件中。


{marker options}{...}
{title:选项}

{dlgtab:主要}

{phang}
{opt basemodel(name)} 指定在计算贝叶斯因子时用作基准或参考模型的模型名称。默认情况下，使用第一个列出的模型作为基准模型。

{phang}
{opt bayesfactor} 指定报告贝叶斯因子，而非默认的对数贝叶斯因子。

{phang}
{opt diconly} 指定仅在表中报告DIC，并省略对数边际似然和贝叶斯因子。选项 {opt basemodel()}、{opt bayesfactor} 和 {opt marglmethod()} 在指定 {opt diconly} 选项时无效。

包含帮助 bayespost_chainoptsdes

{dlgtab:高级}

{marker marglmethod}{...}
{phang}
{cmd:marglmethod(}{it:{help bayesstats_ic##method:method}}{cmd:)} 指定一种近似边际似然的方法。{it:method} 可以是 {cmdab:lmetropolis}，默认使用拉普拉斯-梅特罗波利斯近似，或 {cmd:hmean}，用于调和均值近似。此选项很少使用。


{marker examples}{...}
{title:示例}

    {hline}
{pstd}设置{p_end}
{phang2}{cmd:. webuse oxygen}
	
{pstd}最新模型的信息准则{p_end}
{phang2}{cmd:. set seed 14}{p_end}
{phang2}{cmd:. bayesmh change age group, likelihood(normal({c -(}var{c )-}))}
        {cmd:prior({change:}, flat) prior({c -(}var{c )-}, jeffreys)}{p_end}
{phang2}{cmd:. bayesmh, saving(reduced_simdata)}{p_end}
{phang2}{cmd:. estimates store reduced}{p_end}
{phang2}{cmd:. bayesstats ic}

{pstd}模型 {bf:full} 和 {bf:reduced} 的信息准则{p_end}
{phang2}{cmd:. set seed 14}{p_end}
{phang2}{cmd:. bayesmh change c.age##i.group, likelihood(normal({c -(}var{c )-}))}
        {cmd:prior({change:}, flat) prior({c -(}var{c )-}, jeffreys)}
        {cmd:saving(full_simdata)}{p_end}
{phang2}{cmd:. estimates store full}{p_end}
{phang2}{cmd:. bayesstats ic full reduced}
	
{pstd}以 {cmd:reduced} 作为贝叶斯因子的基准模型的信息准则{p_end}
{phang2}{cmd:. bayesstats ic full reduced, basemodel(reduced)}

    {hline}
{pstd}设置{p_end}
{phang2}{cmd:. webuse oxygen}{p_end}
{phang2}{cmd:. bayesmh change age group, likelihood(normal({c -(}var{c )-}))}
        {cmd:prior({change:}, flat) prior({c -(}var{c )-}, jeffreys)}
        {cmd:nchains(3) rseed(16)}

{pstd}三条链的平均DIC{p_end}
{phang2}{cmd:. bayesstats ic, diconly}

{pstd}每条链分别计算的DIC{p_end}
{phang2}{cmd:. bayesstats ic, diconly sepchains}

    {hline}


{marker results}{...}
{title:存储结果}

{pstd}
{cmd:bayesstats} {cmd:ic} 将以下结果存储在 {cmd:r()} 中：

{synoptset 20 tabbed}{...}
{p2col 5 20 24 2: 标量}{p_end}
{synopt:{cmd:r(bayesfactor)}}{cmd:1} 如果指定了 {cmd:bayesfactor}，否则为 {cmd:0}{p_end}
包含帮助 bayespost_scalar_nchains

{p2col 5 20 24 2: 宏}{p_end}
{synopt:{cmd:r(names)}}用于的估计结果名称{p_end}
{synopt:{cmd:r(basemodel)}}基准或参考模型的名称{p_end}
{synopt:{cmd:r(marglmethod)}}近似边际可能性的方法： {cmd:lmetropolis} 或 {cmd:hmean}{p_end}
包含帮助 bayespost_macro_chains

{synoptset 20 tabbed}{...}
{p2col 5 20 24 2: 矩阵}{p_end}
{synopt:{cmd:r(ic)}}报告 {cmd:DIC}、{cmd:log(ML)} 和 {cmd:log(BF)} 或 {cmd:BF} 如果使用了 {cmd:bayesfactor}{p_end}
{synopt:{cmd:r(ic_chain}{it:#}{cmd:)}}如果指定了 {cmd:sepchains} 的链 {it:#} 的矩阵 {cmd:ic}{p_end}
{p2colreset}{...}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <bayesstats_ic.sthlp>}