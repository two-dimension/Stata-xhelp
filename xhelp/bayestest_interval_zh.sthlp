{smcl}
{* *! version 1.0.9  03apr2019}{...}
{viewerdialog "bayestest interval" "dialog bayestest_interval"}{...}
{vieweralsosee "[BAYES] bayestest interval" "mansection BAYES bayestestinterval"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[BAYES] bayes" "help bayes_zh"}{...}
{vieweralsosee "[BAYES] bayesmh" "help bayesmh_zh"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[BAYES] Bayesian estimation" "help bayesian estimation"}{...}
{vieweralsosee "[BAYES] Bayesian postestimation" "help bayesian postestimation"}{...}
{vieweralsosee "[BAYES] bayespredict" "help bayespredict_zh"}{...}
{vieweralsosee "[BAYES] bayesstats summary" "help bayesstats summary"}{...}
{vieweralsosee "[BAYES] bayestest model" "help bayestest model"}{...}
{vieweralsosee "" "--"}{...}
{viewerjumpto "Syntax" "bayestest interval##syntax"}{...}
{viewerjumpto "Menu" "bayestest interval##menu"}{...}
{viewerjumpto "Description" "bayestest interval##description"}{...}
{viewerjumpto "Links to PDF documentation" "bayestest_interval_zh##linkspdf"}{...}
{viewerjumpto "Options" "bayestest interval##options"}{...}
{viewerjumpto "Examples" "bayestest interval##examples"}{...}
{viewerjumpto "Stored results" "bayestest interval##results"}
{help bayestest_interval:English Version}
{hline}{...}
{p2colset 1 31 33 2}{...}
{p2col:{bf:[BAYES] bayestest interval} {hline 2}}区间假设检验{p_end}
{p2col:}({mansection BAYES bayestestinterval:查看完整的 PDF 手册条目}){p_end}
{p2colreset}{...}


{marker syntax}{...}
{title:语法}

{phang}
测试一个关于连续或离散参数的区间假设

{p 8 11 2}
{opt bayestest} {cmdab:int:erval}
   {it:{help bayestest_interval##intspecs:exspec}}
   [{cmd:using} {it:{help bayestest_interval##predfile:predfile}}]
   [{cmd:,} {it:{help bayestest_interval##luspec_table:luspec}}
                   {it:{help bayestest_interval##options_table:options}}]


{phang}
测试一个关于离散参数的点假设

{p 8 11 2}
{opt bayestest} {cmdab:int:erval}
   {it:{help bayestest_interval##intspecs:exspec}}{cmd:==}{it:#} 
   [{cmd:using} {it:{help bayestest_interval##predfile:predfile}}]
   [{cmd:,} {it:{help bayestest_interval##options_table:options}}]


{phang}
单独测试多个假设

{p 8 11 2}
{opt bayestest} {cmdab:int:erval}
   {cmd:(}{it:{help bayestest_interval##intspecs:testspec}}{cmd:)}
   [{cmd:(}{it:{help bayestest_interval##intspecs:testspec}}{cmd:)} ...]
   [{cmd:using} {it:{help bayestest_interval##predfile:predfile}}]
   [{cmd:,} {it:{help bayestest_interval##options_table:options}}]


{phang}
联合测试多个假设

{p 8 11 2}
{opt bayestest} {cmdab:int:erval}
   {cmd:(}{it:{help bayestest_interval##intspecs:jointspec}}{cmd:)}
   [{cmd:using} {it:{help bayestest_interval##predfile:predfile}}]
   [{cmd:,} {it:{help bayestest_interval##options_table:options}}]


{phang}
完整语法

{p 8 11 2}
{opt bayestest} {cmdab:int:erval} 
{cmd:(}{it:{help bayestest_interval##intspecs:spec}}{cmd:)} 
[{cmd:(}{it:{help bayestest_interval##intspecs:spec}}{cmd:)} ...]
[{cmd:using} {it:{help bayestest_interval##predfile:predfile}}]
[{cmd:,} {it:{help bayestest_interval##options_table:options}}]


{marker intspecs}{...}
{marker expr}{...}
{phang}
{it:exspec} 是可选的模型参数标签表达式，
[{it:prlabel}{cmd::}]{it:expr}，其中 {it:prlabel} 是有效的 Stata 名称（默认是 {cmd:prob}{it:#}），而 {it:expr} 是一个
{help bayes_glossary##scalar_model_parameter:标量模型参数} 或
包含（括号是可选的）标量模型参数的标量表达式。表达式 {it:expr} 不能包含变量名。

{marker predfile}{...}
{phang}
{it:predfile} 是由
{help bayespredict_zh} 创建的数据集的名称，该数据集包含预测
结果。当你指定 {cmd:using} {it:predfile} 时，
{help bayestest_interval##expr:{it:expr}} 可能包含模拟结果的个别观测值
{cmd:{c -(}_ysim}{it:#}{cmd:[}{it:#}{cmd:]{c )-}}, 期望结果值
{cmd:{c -(}_mu}{it:#}{cmd:[}{it:#}{cmd:]{c )-}}, 模拟残差
{cmd:{c -(}_resid}{it:#}{cmd:[}{it:#}{cmd:]{c )-}}，
以及如 {help bayespredict##bayespred:{it:模拟结果、期望值和残差的函数}} 所述的它们的表达式。
{it:expr} 也可以包含
{cmd:{c -(}{help bayespredict##args:{it:label}}{c )-}}，这是使用 {manhelp bayespredict BAYES} 模拟的函数名称。请参见
{mansection BAYES BayesianpostestimationRemarksandexamplesDifferentwaysofspecifyingpredictionsandtheirfunctions:{it:不同的指定预测及其函数的方法}}
在 {help bayesian_postestimation_zh:[BAYES] Bayesian 后验估计} 中。
当指定 {cmd:using} {it:predfile} 时，{it:expr} 不能包含模型参数。

{phang}
{it:testspec} 是 {it:exspec}[{cmd:,} {it:luspec}] 或
{it:exspec}{cmd:==}{it:#}（仅适用于离散参数）。

{phang}
{it:jointspec} 是 [{it:prlabel:}]{cmd:(}{it:testspec}{cmd:)}
{cmd:(}{it:testspec}{cmd:)} ...{cmd:, joint}。{it:testspec} 的标签（如果有）将被忽略。

{phang}
{it:spec} 是 {it:testspec} 或 {it:jointspec}。当使用 {cmd:using} {cmd:predfile} 时，{it:spec} 不能包含模型参数。

{synoptset 43}{...}
{marker luspec_table}{...}
{p2coldent :{it:luspec}}零假设{p_end}
{synoptline}
{synopt :{opt l:ower(#)} [{opt u:pper(.)}]}{it:theta > #}{p_end}
{synopt :{opt l:ower}{cmd:(}#{cmd:,}{opt incl:usive)} [{opt u:pper(.)}]}{it:theta >= #}{p_end}
{synopt :[{opt l:ower(.)}] {opt u:pper(#)}}{it:theta < #}{p_end}
{synopt :[{opt l:ower(.)}] {opt u:pper}{cmd:(}#{cmd:,}{opt incl:usive)}}{it:theta <= #}{p_end}
{synopt :{opt l:ower(#_l)} {opt u:pper(#_u)}}{it:#_l < theta < #_u}{p_end}
{synopt :{opt l:ower(#_l)} {opt u:pper}{cmd:(}{it:#_u}{cmd:,}{opt incl:usive)}}{it:#_l < theta <= #_u}{p_end}
{synopt :{opt l:ower}{cmd:(}{it:#_l}{cmd:,}{opt incl:usive)} {opt u:pper(#_u)}}{it:#_l <= theta < #_u}{p_end}
{synopt :{opt l:ower}{cmd:(}{it:#_l}{cmd:,}{opt incl:usive)} {opt u:pper}{cmd:(}{it:#_u}{cmd:,}{opt incl:usive)}}{it:#_l <= theta <= #_u}{p_end}
{synoptset 30 tabbed}{...}
{synoptline}

{p2colreset}{...}
{p 4 6 2}{cmd:lower(}{it:intspec}{cmd:)} 和 {cmd:upper(}{it:intspec}{cmd:)}
分别指定下限和上限区间值。{p_end}

{p 4 6 2}{it:intspec} 是 {p_end}
{p 8 10 2}{it:#} [{cmd:,} {opt incl:usive}] {p_end}
{p 4 6 2}其中 # 是区间值，副选项 {opt inclusive} 指定该值应包含在区间内，这意味着是一个闭区间。
闭区间仅适用于离散参数。{p_end}
{it:intspec} 还可以包含一个点（{cmd:.}），表示负无穷大
对于 {cmd:lower()} 和正无穷大对于 {cmd:upper()}。
必须指定选项 {cmd:lower(.)} 或选项 {cmd:upper(.)}。


{synoptset 24 tabbed}{...}
{marker options_table}{...}
{synopthdr}
{synoptline}
{syntab:主选项}
包含 help bayespost_chainopts
{synopt :{opt skip(#)}}跳过每 {it:#} 个 MCMC 样本的观测值；默认值是 {cmd:skip(0)}{p_end}
{synopt :{opt noleg:end}}抑制表的图例{p_end}

{syntab:高级}
{synopt :{opt corrlag(#)}}指定用于计算有效样本大小的最大自相关滞后；默认值各异{p_end}
{synopt :{opt corrtol(#)}}指定用于计算有效样本大小的自相关容忍度；默认值是 {cmd:corrtol(0.01)}{p_end}
{synoptline}
包含 help bayespost_syntablegend


{marker menu}{...}
{title:菜单}

{phang}
{bf:统计 > 贝叶斯分析 > 区间假设检验}


{marker description}{...}
{title:描述}

{pstd}
{cmd:bayestest interval} 使用当前的贝叶斯估计结果执行模型参数及其函数的区间假设检验。
{cmd:bayestest interval} 报告与区间假设相关的均值估计、标准差和 MCMC 标准误差的后验概率。


{marker linkspdf}{...}
{title:PDF 文档链接}

        {mansection BAYES bayestestintervalQuickstart:快速入门}

        {mansection BAYES bayestestintervalRemarksandexamples:备注和示例}

        {mansection BAYES bayestestintervalMethodsandformulas:方法和公式}

{pstd}
上述部分不包含在此帮助文件中。


{marker options}{...}
{title:选项}

{dlgtab:主选项}

包含 help bayespost_chainoptsdes

包含 help bayespost_skipoptsdes

{phang}
{cmd:nolegend} 抑制表图例的显示，该图例用于标识表行所代表的表达式。

{dlgtab:高级选项}

{phang}
{opt corrlag(#)} 指定用于计算有效样本大小的最大自相关滞后。默认值为
min{500,{cmd:mcmcsize()}/2}。总自相关是所有滞后-k 自相关值的总和，k 从 0 到 {cmd:corrlag()} 或自相关值小于 {cmd:corrtol()} 的索引。

{phang}
{opt corrtol(#)} 指定用于计算有效样本大小的自相关容忍度。默认值是 {cmd:corrtol(0.01)}。对于给定的模型参数，如果滞后-k 自相关的绝对值小于 {cmd:corrtol()}，则将丢弃超出第 k 期的所有自相关滞后。


{marker examples}{...}
{title:示例}

    {hline}
{pstd}设置{p_end}
{phang2}{cmd:. sysuse auto}{p_end}
{phang2}{cmd:. set seed 14}{p_end}
{phang2}{cmd:. bayesmh mpg, likelihood(normal({c -(}var{c )-})) prior({mpg:_cons}, flat)}
	{cmd:prior({c -(}var{c )-}, jeffreys)}

{pstd}对 {bf:{mpg:_cons}} 的区间假设的后验均值概率估计{p_end}
{phang2}{cmd:. bayestest interval {mpg:_cons}, lower(19) upper(22)}

{pstd}将估计标记为 {cmd:prob_mean}{p_end}
{phang2}{cmd:. bayestest interval (prob_mean:{mpg:_cons}), lower(19) upper(22)}

{pstd}单独测试多个假设{p_end}
{phang2}{cmd:. bayestest interval ({mpg:_cons}, lower(19) upper(22))}
	{cmd:({c -(}var{c )-}, lower(24) upper(47))}

{pstd}联合测试多个假设{p_end}
{phang2}{cmd:. bayestest interval (({mpg:_cons}, lower(19) upper(22))}
	{cmd:({c -(}var{c )-}, lower(24) upper(47)), joint)}

{pstd}测试模型参数的函数{p_end}
{phang2}{cmd:. bayestest interval (sd:sqrt({c -(}var{c )-})), lower(4.9) upper(6.9)}
		
    {hline}
{pstd}设置{p_end}
{phang2}{cmd:. clear}{p_end}
{phang2}{cmd:. set seed 12345}{p_end}
{phang2}{cmd:. set obs 20}{p_end}
{phang2}{cmd:. generate double y = rpoisson(2)}{p_end}
{phang2}{cmd:. set seed 14}{p_end}
{phang2}{cmd:. bayesmh y, likelihood(dpoisson({mu}))}
	{cmd:prior({mu}, index(0.25,0.25,0.25,0.25)) initial({mu} 2)}

{pstd}测试离散参数的点假设{p_end}
{phang2}{cmd:. bayestest interval {mu}==1}{p_end}

{pstd}单独测试多个点假设{p_end}
{phang2}{cmd:. bayestest interval ({mu}==1) ({mu}==2) ({mu}==3)}
	{cmd:({mu}==4)}

{pstd}测试开放区间假设{p_end}
{phang2}{cmd:. bayestest interval {mu}, lower(2) upper(4)}

{pstd}测试闭合区间假设{p_end}
{phang2}{cmd:. bayestest interval {mu}, lower(2, inclusive) upper(4, inclusive)}

    {hline}
{pstd}设置{p_end}
{phang2}{cmd:. clear}{p_end}
{phang2}{cmd:. set seed 12345}{p_end}
{phang2}{cmd:. set obs 20}{p_end}
{phang2}{cmd:. generate double y = rpoisson(2)}{p_end}
{phang2}{cmd:. bayesmh y, likelihood(dpoisson({mu})) prior({mu},}
        {cmd:index(0.25,0.25,0.25,0.25)) initial({mu} 2)} 
        {cmd:nchains(3) rseed(16)}

{pstd}使用所有三个链的开放区间测试{p_end}
{phang2}{cmd:. bayestest interval {mu}, lower(2) upper(4)}

{pstd}分别对每个链进行开放区间测试{p_end}
{phang2}{cmd:. bayestest interval {mu}, lower(2) upper(4) sepchains}

    {hline}


{marker results}{...}
{title:存储的结果}

{pstd}
{cmd:bayestest interval} 将以下内容存储在 {cmd:r()} 中：

{synoptset 19 tabbed}{...}
{p2col 5 19 21 2: 标量}{p_end}
{synopt:{cmd:r(mcmcsize)}}计算中使用的 MCMC 样本大小{p_end}
{synopt:{cmd:r(skip)}}在计算中跳过的 MCMC 观测数量；每 {cmd:r(skip)} 个观测值被跳过{p_end}
{synopt:{cmd:r(corrlag)}}最大自相关滞后{p_end}
{synopt:{cmd:r(corrtol)}}自相关容忍度{p_end}
包含 help bayespost_scalar_nchains

{p2col 5 19 21 2: 宏}{p_end}
{synopt:{cmd:r(names)}}概率表达式的名称{p_end}
{synopt:{cmd:r(expr_}{it:#}{cmd:)}}{it:#} 号概率表达式{p_end}
包含 help bayespost_macro_chains

{p2col 5 19 21 2: 矩阵}{p_end}
{synopt:{cmd:r(summary)}}{cmd:r(names)} 中参数的测试结果{p_end}
{synopt:{cmd:r(summary_chain}{it:#}{cmd:)}}如果指定了 {cmd:sepchains}，则为链 {it:#} 的矩阵 {cmd:summary}{p_end}
{p2colreset}{...}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <bayestest_interval.sthlp>}