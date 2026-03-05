{smcl}
{* *! version 1.0.16  03apr2019}{...}
{viewerdialog bayesgraph "dialog bayesgraph"}{...}
{vieweralsosee "[BAYES] bayesgraph" "mansection BAYES bayesgraph"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[BAYES] bayes" "help bayes_zh"}{...}
{vieweralsosee "[BAYES] bayesmh" "help bayesmh_zh"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[BAYES] Bayesian postestimation" "help bayesian postestimation"}{...}
{vieweralsosee "[BAYES] bayesstats ess" "help bayesstats ess"}{...}
{vieweralsosee "[BAYES] bayesstats summary" "help bayesstats summary"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[TS] corrgram" "help corrgram_zh"}{...}
{vieweralsosee "[G-2] graph matrix" "help graph matrix"}{...}
{vieweralsosee "[G-2] graph twoway kdensity" "help graph twoway kdensity"}{...}
{vieweralsosee "[R] histogram" "help histogram_zh"}{...}
{vieweralsosee "[R] kdensity" "help kdensity_zh"}{...}
{vieweralsosee "[TS] tsline" "help tsline_zh"}{...}
{viewerjumpto "Syntax" "bayesgraph_zh##syntax"}{...}
{viewerjumpto "Menu" "bayesgraph_zh##menu"}{...}
{viewerjumpto "Description" "bayesgraph_zh##description"}{...}
{viewerjumpto "Links to PDF documentation" "bayesgraph_zh##linkspdf"}{...}
{viewerjumpto "Options" "bayesgraph_zh##options"}{...}
{viewerjumpto "Remarks" "bayesgraph_zh##remarks"}{...}
{viewerjumpto "Examples" "bayesgraph_zh##examples"}
{help bayesgraph:English Version}
{hline}{...}
{p2colset 1 23 23 2}{...}
{p2col:{bf:[BAYES] bayesgraph} {hline 2}}图形摘要与收敛诊断{p_end}
{p2col:}({mansection BAYES bayesgraph:查看完整 PDF 手册条目}){p_end}
{p2colreset}{...}


{marker syntax}{...}
{title:语法}

{pstd}
语法按以下标题呈现：

        {help bayesgraph##statparams:模型参数的图形摘要}
        {help bayesgraph##statpred:预测的图形摘要}


{marker statparams}{...}
{title:模型参数的图形摘要}

{phang}
单个参数的图形摘要和收敛诊断

{p 8 11 2}
{opt bayesgraph} {it:{help bayesgraph##graph:图形}} {it:{help bayesgraph##scalar_param:标量参数}} [{cmd:,} 
{it:{help bayesgraph##singleopts:单选项}}] 


{phang}
多个参数的图形摘要和收敛诊断

{p 8 11 2}
{opt bayesgraph} {it:{help bayesgraph##graph:图形}} {it:{help bayesgraph##scalar_param:规格}} [{it:规格} ...] [{cmd:,} 
{it:{help bayesgraph##multiopts:多选项}}] 

{p 8 11 2}
{opt bayesgraph matrix} {it:{help bayesgraph##scalar_param:规格}} {it:规格}
[{it:规格} ...] [{cmd:,} 
{it:{help bayesgraph##singleopts:单选项}}] 


{phang}
所有参数的图形摘要和收敛诊断 

{p 8 11 2}
{opt bayesgraph} {it:{help bayesgraph##graph:图形}} {cmd:_all}
[{cmd:,} {it:{help bayesgraph##multiopts:多选项}}
{opt showreffects}[{cmd:(}{it:{help bayesian postestimation##bayesian_post_reref:reref}}{cmd:)}]]


{marker scalar_param}{...}
{p 4 6 2}
{it:标量参数} 是一个 {help bayes_glossary##scalar_model_parameter:标量模型参数}，指定为 
{cmd:{c -(}}{cmd:param}{cmd:{c )-}} 或 
{cmd:{c -(}}{cmd:eqname:param}{cmd:{c )-}} 或一个标量模型参数的表达式 {it:exprspec}。不允许使用矩阵模型参数，但可以引用它们的各个元素。

{p 4 6 2}
{it:exprspec} 是一个以括号指定的可选标记的模型参数表达式：

{p 12 15 2}
{cmd:(}[{it:exprlabel}{cmd::}]{it:expr}{cmd:)}

{p 6 6 2}
{it:exprlabel} 是一个有效的 Stata 名称，{it:expr} 是一个标量表达式
不能包含矩阵模型参数。有关示例，请参见 
{it:{mansection BAYES BayesianpostestimationRemarksandexamplesSpecifyingfunctionsofmodelparameters:指定模型参数的函数}} 在 {bf:[BAYES] Bayesian后验估计} 中。

{p 4 6 2}
{it:规格} 是 {it:标量参数} 或 {it:exprspec} 中的任一个。


{marker statpred}{...}
{title:预测的图形摘要}

{pstd}
单个预测的图形摘要

{p 8 11 2}
{cmd:bayesgraph}
{it:{help bayesgraph##graph:图形}}
{it:{help bayesgraph##predspecsc:预测规格}}
{cmd:using} {it:{help bayesgraph##predfile:预测文件}}
[{cmd:,} {it:{help bayesgraph##singleopts:单选项}}] 


{pstd}
多个预测的图形摘要

{p 8 11 2}
{cmd:bayesgraph}
{it:{help bayesgraph##graph:图形}}
{it:{help bayesgraph##predspec:预测规格}} [{it:预测规格} ...] 
{cmd:using} {it:{help bayesgraph##predfile:预测文件}}
[{cmd:,} {it:{help bayesgraph##multiopts:多选项}}]


{p 8 11 2}
{cmd:bayesgraph} {cmd:matrix}
{it:{help bayesgraph##predspec:预测规格}} {it:预测规格} [{it:预测规格} ...] 
{cmd:using} {it:{help bayesgraph##predfile:预测文件}}
[{cmd:,} {it:{help bayesgraph##singleopts:单选项}}] 


包含 help bayesstats_predfile

{marker predspecsc}{...}
{p 4 6 2}
{it:预测规格} 可以包含模拟结果的单个观察，
{cmd:{c -(}_ysim}{it:#}{cmd:[}{it:#}{cmd:]{c )-}}；单个期望结果值， {cmd:{c -(}_mu}{it:#}{cmd:[}{it:#}{cmd:]{c )-}}；单个模拟残差， {cmd:{c -(}_resid}{it:#}{cmd:[}{it:#}{cmd:]{c )-}}；以及其他标量预测， {cmd:{c -(}}{it:标记}{cmd:{c )-}}。

{marker predspec}{...}
{p 4 6 2}
{it:预测规格} 是 {it:{help bayesgraph##yspec:yspec}}，
{cmd:(}{it:{help bayesgraph##yexprspec:yexprspec}}{cmd:)}，或者
{cmd:(}{it:{help bayesgraph##funcspec:funcspec}}{cmd:)}。请参见
{mansection BAYES BayesianpostestimationRemarksandexamplesDifferentwaysofspecifyingpredictionsandtheirfunctions:{it:指定预测及其函数的不同方法}}
在 {bf:[BAYES] Bayesian后验估计} 中。

{marker yspec}{...}
{p 4 6 2}
{it:yspec} 是 {c -(}{it:{help bayesgraph##ysimspec:ysimspec}} {c |}
                    {it:{help bayesgraph##residspec:residspec}} {c |}
		    {it:{help bayesgraph##muspec:muspec}} {c |}
		    {it:{help bayesgraph##label:标记}}{c )-}.{p_end}

{marker ysimspec}{...}
{p 4 6 2}
{it:ysimspec} 是 {cmd:{c -(}_ysim}{it:#}{cmd:{c )-}} 或
{cmd:{c -(}_ysim}{it:#}{cmd:[}{it:{help numlist_zh}}{cmd:]{c )-}}，其中
{cmd:{c -(}_ysim}{it:#}{cmd:{c )-}} 指的是所有的
{it:#}次模拟结果的观察值，而
{cmd:{c -(}_ysim}{it:#}{cmd:[}{it:numlist}{cmd:]{c )-}} 指的是所选
观察值 {it:numlist}，该观察值与第 {it:#} 次模拟结果对应。
{cmd:{c -(}_ysim{c )-}} 是 {cmd:{c -(}_ysim1{c )-}} 的同义词。{p_end}

{marker residspec}{...}
{p 4 6 2}
{it:residspec} 是 {cmd:{c -(}_resid}{it:#}{cmd:{c )-}} 或
{cmd:{c -(}_resid}{it:#}{cmd:[}{it:{help numlist_zh}}{cmd:]{c )-}}，其中
{cmd:{c -(}_resid}{it:#}{cmd:{c )-}} 指的是第 {it:#} 次
模拟结果的所有残差，而 {cmd:{c -(}_resid}{it:#}{cmd:[}{it:numlist}{cmd:]{c )-}}
指的是所选残差 {it:numlist}，与第 {it:#} 次模拟结果对应。 {cmd:{c -(}_resid{c )-}} 是 {cmd:{c -(}_resid1{c )-}} 的同义词。
{p_end}

包含 help bayesstats_muspec.ihlp

包含 help bayesstats_label.ihlp

包含 help bayesstats_largedta.ihlp

{marker yexprspec}{...}
{p 4 6 2}
{it:yexprspec} 是 [{it:exprlabel}{cmd::}]{it:yexpr}，
其中 {it:exprlabel} 是有效的 Stata 名称，{it:yexpr} 是一个标量
表达式，可以包含
单个观察的模拟结果，
{cmd:{c -(}_ysim}{it:#}{cmd:[}{it:#}{cmd:]{c )-}}；单个
期望结果值， {cmd:{c -(}_mu}{it:#}{cmd:[}{it:#}{cmd:]{c )-}}；单个
模拟残差，
{cmd:{c -(}_resid}{it:#}{cmd:[}{it:#}{cmd:]{c )-}}；以及其他标量
预测， {cmd:{c -(}}{it:标记}{cmd:{c )-}}.{p_end}

包含 help bayesstats_funcspec.ihlp


{synoptset 25}{...}
{marker graph}{...}
{synopthdr:图形}
{synoptline}
{synopt :{opt diag:nostics}}以紧凑形式显示多个诊断{p_end}
{synopt :{opt trace}}轨迹图{p_end}
{synopt :{opt ac}}自相关图{p_end}
{synopt :{opt hist:ogram}}直方图{p_end}
{synopt :{opt kdens:ity}}密度图{p_end}
{synopt :{opt cusum}}累积和图{p_end}
{synopt :{opt matrix}}散点图矩阵{p_end}
{synoptline}
{p2colreset}{...}
{p 4 6 2}{cmd:bayesgraph matrix} 至少需要两个参数。
{cmd:diagnostics}、 {cmd:trace}、 {cmd:ac} 和 {cmd:cusum} 对
预测不相关。{p_end}

{synoptset 25 tabbed}{...}
{marker singleopts}{...}
{synopthdr:单选项}
{synoptline}
{syntab:链}
{synopt :{it:{help bayesgraph##chainopts:链选项}}}控制多个链的选项{p_end}

{syntab:选项}
{synopt :{opt skip(#)}}跳过每 {it:#} 个观察值来自 MCMC 样本；默认是 {cmd:skip(0)}{p_end}
{synopt :{cmd:name(}{it:name}{cmd:,} ...{cmd:)}}指定图形名称{p_end}
{synopt :{cmd:saving(}{it:{help filename_zh}}{cmd:,} ...{cmd:)}}将图形保存到文件{p_end}
{synopt :{it:{help bayesgraph##graphopts:图形选项}}}特定于图形的选项{p_end}
{synoptline}
{p2colreset}{...}

{synoptset 25 tabbed}{...}
{marker multiopts}{...}
{synopthdr:多选项}
{synoptline}
{syntab:链}
{synopt :{it:{help bayesgraph##chainopts:链选项}}}控制多个链的选项{p_end}

{syntab:选项}
{synopt :{opt byparm}[{cmd:(}{it:{help graph_by##byopts:按参数选项}}{cmd:)}]}在一个图形上指定绘图的显示；默认是每个图形一个单独图形；与图形 {cmd:diagnostics} 或 {cmd:matrix} 以及选项 {cmd:combine()} 和 {cmd:bychain()} 不允许一起使用{p_end}
{synopt :{opt combine}[{cmd:(}{it:{help graph_combine##options:组合选项}}{cmd:)}]}在一张图形上指定绘图的显示；在参数数量较大时建议使用；与图形 {cmd:diagnostics} 或 {cmd:matrix} 或选项 {cmd:byparm()} 和 {cmd:bychain()} 不允许一起使用{p_end}
{synopt :{opt sleep(#)}}在多个图形之间暂停 {it:#} 秒；默认是 {cmd:sleep(0)}{p_end}
{synopt :{opt wait}}暂停，直到 {hline 2}{cmd:more}{hline 2} 条件被清除{p_end}
{synopt :[{opt no}]{opt close}}在显示下一个图形时（不）关闭图形窗口；默认是 {cmd:noclose}{p_end}
{synopt :{opt skip(#)}}跳过每 {it:#} 个观察值来自 MCMC 样本；默认是 {cmd:skip(0)}{p_end}
{synopt :{opt name}{cmd:(}{it:{help bayesgraph##namespec:名称规格}}{cmd:,} ...{cmd:)}}指定图形名称{p_end}
{synopt :{opt saving}{cmd:(}{it:{help bayesgraph##filespec:文件规格}}{cmd:,} ...{cmd:)}}将图形保存到文件{p_end}
{synopt :{cmd:graphopts(}{it:{help bayesgraph##graphopts:图形选项}}{cmd:)} } 控制所有图形的外观；与 {cmd:byparm()} 不允许一起使用{p_end}
{synopt :{opt graph}{it:#}{cmd:opts(}{it:{help bayesgraph##graphopts:图形选项}}{cmd:)}} 控制第 {it:#} 张图形的外观；与 {cmd:byparm()} 不允许一起使用{p_end}
{synopt :{it:{help bayesgraph##graphopts:图形选项}}} 等同于 {opt graphopts(graphopts)}；仅可以指定一个{p_end}
{synoptline}
{p2colreset}{...}

{synoptset 25}{...}
{marker chainopts}{...}
{synopthdr:链选项}
{synoptline}
{synopt :{cmd:chains(}{cmd:_all} | {it:{help numlist_zh}}{cmd:)}}指定要绘制的链；默认绘制前 10 条链{p_end}
{synopt :{opt sepchains}}绘制每条链的单独图形；默认情况下是覆盖各链{p_end}
{synopt :{opt chainsleg:end}}显示与链编号对应的图例；与图形 {opt diagnostics} 和 {opt matrix} 或选项 {opt combine()} 和 {opt byparm()} 不允许一起使用{p_end}
{synopt :{cmd:bychain}[{cmd:(}{it:{help bayesgraph##grbychainopts:按链选项}}{cmd:)}]}将每条链绘制为一个子图，默认是所有链绘制在一张图上；与图形 {opt diagnostics} 和 {opt matrix} 或选项 {opt combine()} 和 {opt byparm()} 不允许一起使用{p_end}
{synopt :{opth chainopts:(bayesgraph##graphopts:图形选项)}}控制所有链的外观{p_end}
{synopt :{cmd:chain}{it:#}{cmd:opts(}{it:{help bayesgraph##graphopts:图形选项}}{cmd:)}}控制第 {it:#}条链的外观{p_end}
{synoptline}
{p2colreset}{...}
{phang}
选项 {it:chainopts} 仅在与 {help bayesmh_zh} 或 {help bayes_zh} 前缀一起使用时与 {opt nchains()} 有关。

{synoptset 25}{...}
{marker graphopts}{...}
{synopthdr:图形选项}
{synoptline}
{synopt :{it:{help bayesgraph##diagopts:诊断选项}}} {cmd:bayesgraph diagnostics} 的选项{p_end}
{synopt :{it:{help tsline##tsline_options:tslineopts}}} {cmd:bayesgraph trace} 和 {cmd:bayesgraph cusum} 的选项{p_end}
{synopt :{it:{help ac##ac_options:acopts}}} {cmd:bayesgraph ac} 的选项{p_end}
{synopt :{it:{help hist##options:histopts}}} {cmd:bayesgraph histogram} 的选项{p_end}
{synopt :{it:{help bayesgraph##kdens_opts:kdensityopts}}} {cmd:bayesgraph kdensity} 的选项{p_end}
{synopt :{it:{help graph_matrix##options:grmatrixopts}}} {cmd:bayesgraph matrix} 的选项{p_end}
{synoptline}

{synoptset 25}{...}
{marker diagopts}{...}
{synopthdr:诊断选项}
{synoptline}
{synopt :{cmd:traceopts(}{it:{help tsline##tsline_options:tslineopts}}{cmd:)}}影响所有轨迹图的表现{p_end}
{synopt :{opt trace}{it:#}{cmd:opts(}{it:{help tsline##tsline_options:tslineopts}}{cmd:)}}影响第 {it:#} 张轨迹图的表现{p_end}
{synopt :{cmd:acopts(}{it:{help ac##ac_options:acopts}}{cmd:)}}影响所有自相关图的表现{p_end}
{synopt :{opt ac}{it:#}{cmd:opts(}{it:{help ac##ac_options:acopts}}{cmd:)}}影响第 {it:#} 张自相关图的表现{p_end}
{synopt :{cmd:histopts(}{it:{help hist##options:histopts}}{cmd:)}}影响所有直方图的表现{p_end}
{synopt :{opt hist}{it:#}{cmd:opts(}{it:{help hist##options:histopts}}{cmd:)}}影响第 {it:#} 张直方图的表现{p_end}
{synopt :{cmd:kdensopts(}{it:{help bayesgraph##kdens_opts:kdensityopts}}{cmd:)}}影响所有密度图的表现{p_end}
{synopt :{opt kdens}{it:#}{cmd:opts(}{it:{help bayesgraph##kdens_opts:kdensityopts}}{cmd:)}}影响第 {it:#} 张密度图的表现{p_end}
{synopt :{it:{help graph_combine##options:grcombineopts}}}任何在 {manhelp graph_combine G-2:graph combine} 中记录的选项{p_end}
{synoptline}
{p2colreset}{...}

{synoptset 25}{...}
{marker ac_options}{...}
{synopthdr:自相关选项}
{synoptline}
{synopt :{cmd:ci}}绘制带有置信区间的自相关图；与 {cmd:byparm()} 不允许一起使用{p_end}
{synopt :{it:{help ac##ac_options:acopts}}} 任何除 {cmd:generate()} 以外在 {manhelp corrgram TS} 中记录的 {cmd:ac} 选项{p_end}
{synoptline}
{p2colreset}{...}

{synoptset 25}{...}
{marker kdens_opts}{...}
{synopthdr:密度选项}
{synoptline}
{synopt :{it:{help kdensity##options:kdensopts}}} 用于整体核密度图的选项{p_end}
{synopt :{cmd:show(}{it:{help bayesgraph##showspec:showspec}}{cmd:)}}显示第一半密度 ({cmd:first})、第二半密度 ({cmd:second})、{cmd:both} 或 {cmd:none}；默认值不同{p_end}
{synopt :{opt kdensfirst}{cmd:(}{it:{help kdensity##options:kdens1opts}}{cmd:)}}影响第一半密度图的表现{p_end}
{synopt :{opt kdenssecond}{cmd:(}{it:{help kdensity##options:kdens2opts}}{cmd:)}}影响第二半密度图的表现{p_end}
{synoptline}
{p2colreset}{...}


{marker menu}{...}
{title:菜单}

{phang}
{bf:统计 > 贝叶斯分析 > 图形摘要}


{marker description}{...}
{title:描述}

{pstd}
{cmd:bayesgraph} 提供关于模拟后验分布（MCMC样本）的图形摘要和收敛诊断，这些分布是参见贝叶斯估计后得到的模型参数及模型参数函数。图形摘要包括轨迹图、自相关图和各种分布图。


{marker linkspdf}{...}
{title:PDF 文档链接}

        {mansection BAYES bayesgraphQuickstart:快速入门}

        {mansection BAYES bayesgraphRemarksandexamples:备注与示例}

        {mansection BAYES bayesgraphMethodsandformulas:方法与公式}

{pstd}
上述部分不包含在该帮助文件中。


{marker options}{...}
{title:选项}

{dlgtab:链}

{marker chainsspec}{...}
{phang}
{cmd:chains(}{cmd:_all} | {it:{help numlist_zh}}{cmd:)} 指定要绘制的 MCMC 样本中的链。默认情况下绘制前 10 条链。您可以使用 {cmd:chains(_all)} 来绘制所有链。

{phang}
{cmd:sepchains} 指定为每个链绘制一个单独图形。对于 {cmd:bayesgraph matrix} 此选项是隐含的，且无法与 {cmd:bychain()} 结合使用。

{phang}
{cmd:chainslegend} 指定以图例显示对应链编号的图形。此选项在图形 {cmd:diagnostics} 和 {cmd:matrix} 或选项 {cmd:combine()} 和 {cmd:byparm()} 中不允许使用。

{marker grbychainopts}{...}
{phang}
{cmd:bychain}[{cmd:(}{it:grbychainopts}{cmd:)}] 指定将每条链绘制为一个子图。在默认情况下，所有链会重叠在一张图上。此选项在图形 {cmd:diagnostics} 和 {cmd:matrix} 或选项 {cmd:combine()}、{cmd:byparm()}、{cmd:sepchains} 中不允许使用。

{pmore}
{it:grbychainopts} 是 {cmd:by()} 中记录的任何子选项，如需要可以查阅 {manhelpi by_option G-3}。

{phang}
{opth chainopts:(bayesgraph##graphopts:图形选项)} 和 {cmd:chain}{it:#}{cmd:opts(}{it:{help bayesgraph##graphopts:图形选项}}{cmd:)} 控制链的表现。{opt chainopts()} 控制所有链的表现，但可以通过使用 {cmd:chain}{it:#}{cmd:opts()} 选项为特定链覆盖此设置。

{pstd}
链特定的选项在没有与 {help bayesmh_zh} 或 {help bayes_zh} 前缀组合使用的情况下，将被忽略。

{dlgtab:选项}

{phang}
{cmd:byparm}[{cmd:(}{it:grbyparmopts}{cmd:)}] 指定绘制所有参数的图形作为子图在一张图上。默认情况下，当指定多个参数时，每个图形将会生成一个单独的图。此选项不允许与 {cmd:bayesgraph diagnostics} 或 {cmd:bayesgraph} {cmd:matrix} 一起使用，也不允许与选项 {cmd:combine()} 和 {cmd:bychain()} 结合使用。指定很多参数或表达式时，这个选项可能因为内存限制而失效。在这种情况下，可以改用选项 {cmd:combine()}。

{pmore}
{it:grbyparmopts} 是 {cmd:by()} 中记录的任何子选项。

{pmore}
{cmd:byparm()} 允许 y 轴为所有图形类型不同，而仅对 {cmd:bayesgraph trace} 和 {cmd:bayesgraph} {cmd:cusum} 强制 x 轴相同。使用 {cmd:noyrescale} 在 {cmd:byparm()} 中指定一个公共 y 轴，并使用 {cmd:xrescale} 或 {cmd:noxrescale} 更改 x 轴的默认行为。

{pmore}
与 {cmd:bayesgraph trace} 和 {cmd:bayesgraph cusum} 结合使用的 {cmd:byparm()} 默认显示多个图形在一列，以适应多个迭代的 x 轴。使用 {cmd:norowcoldefault} 在 {cmd:byparm()} 中切换回 {manlinki G-3 by_option} 中的默认行为。

{phang}
{cmd:combine}[{cmd:(}{it:grcombineopts}{cmd:)}] 指定绘制所有参数的图形作为子图在一张图上，是在参数数量庞大的情况下代替 {cmd:byparm()} 的一个选项。默认情况下，当指定多个参数时，每个图形将会生成一个单独的图。此选项不允许与 {cmd:bayesgraph diagnostics} 或 {cmd:bayesgraph} {cmd:matrix} 结合使用，也不允许与选项 {cmd:byparm()} 结合使用。在指定许多参数或表达式时，如果 {cmd:byparm()} 选项因内存限制导致错误，您也可以使用此选项。

{pmore}
{it:grcombineopts} 是在 {manhelp graph_combine G-2:graph combine} 中记录的任何选项。

{phang}
{opt sleep(#)} 指定在生成下一个图形前暂停 {it:#} 秒。该选项仅在指定多个参数时允许使用。此选项不允许与 {cmd:wait}、{cmd:combine()} 或 {cmd:byparm()} 结合使用。

{phang}
{cmd:wait} 使得 {cmd:bayesgraph} 在显示 {hline 2}{cmd:more}{hline 2} 后暂停，直到按下任意键才产生下一个图形。该选项在指定多个参数时允许使用，不允许与 {cmd:sleep()}、{cmd:combine()}、或 {cmd:byparm()} 一起使用。{cmd:wait} 暂时忽略使用 {cmd:set more off} 指定的全局设置。

{phang}
[{cmd:no}]{cmd:close} 指定在显示多个图形时，当下一个图形显示时关闭图形窗口。默认是 {cmd:noclose} 或不关闭任何图形窗口。

包含 help bayespost_skipoptsdes

{marker namespec}{...}
{phang}
{cmd:name(}{it:namespec}[{cmd:, replace}]{cmd:)} 指定图形或多个图形的名称。有关单个图形，请参阅 {manlinki G-3 name_option}。如果生成多个图形，则 {cmd:name()} 的参数是名称列表或 {it:stub}，在这种情况下，图形名称为 {it:stub}{cmd:1}、{it:stub}{cmd:2} 等。如果未指定 {cmd:name()} 而且未指定 {cmd:sleep()} 或 {cmd:wait}，则假定 {cmd:name(Graph__{it:#}, replace)}，因此生成的图形将被后续的 {cmd:bayesgraph} 命令所替代。

{pmore}
{cmd:replace} 子选项使得具有指定名称或名称的现有图形被替代。

{marker filespec}{...}
{phang}
{cmd:saving(}{it:filespec}[{cmd:, replace}{cmd:)} 指定用于将图形或多个图形保存到磁盘的文件名或文件名。有关单个图形，请参见 {manhelpi saving_option G-3}。如果生成多个图形，则 {cmd:saving()} 的参数是文件名列表或 {it:stub}，在这种情况下，图形将保存为文件名 {it:stub}{cmd:1}、{it:stub}{cmd:2} 等。

{pmore}
{cmd:replace} 子选项指定如果文件（或文件）已存在，则可以替代文件（或多个文件）。

包含 help bayespost_showreoptdes

{phang}
{cmd:graphopts(}{it:{help bayesgraph##graphopts:图形选项}}{cmd:)}和 {cmd:graph}{it:#}{cmd:opts(}{it:{help bayesgraph##graphopts:图形选项}}{cmd:)} 影响图形的表现。{cmd:graphopts()} 影响所有图形的表现，但可以为特定图形使用 {cmd:graph}{it:#}{cmd:opts()} 选项进行覆盖。指定在 {cmd:graph}{it:#}{cmd:opts()} 中的选项是特定于每种图形类型的。

{pmore}
两种规格

{p 12 15 2}
{cmd:bayesgraph} ...{cmd:, graphopts(}{it:图形选项}{cmd:)}

{pmore}
和

{p 12 15 2}
{cmd:bayesgraph} ...{cmd:,} {it:图形选项}

{pmore}
是等效的，但您可以选择指定其中一个。

{phang2}
这些选项不允许与 {cmd:byparm()} 结合使用，并且仅在指定一个参数时可用。

{phang}
{it:图形选项} 指定特定于每个图形类型的选项。

{phang2}
{it:{help bayesgraph##diagopts:诊断选项}} 指定与 {cmd:bayesgraph} {cmd:diagnostics} 一起使用的选项。有关选项的列表，请参见语法图中的相应表。

{marker tslineopts}{...}
{phang2}
{it:{help tsline##options:tslineopts}} 指定与 {cmd:bayesgraph trace} 和 {cmd:bayesgraph cusum} 一起使用的选项。有关选项，请参见 {manhelp tsline TS}，但不包括 {cmd:by()}。

{phang2}
{it:acopts} 指定与 {cmd:bayesgraph ac} 一起使用的选项。

{phang3}
{cmd:ci} 请求绘制带有置信区间的自相关图。默认情况下，不绘制置信区间。此选项与 {cmd:byparm()} 不允许一起使用。

{phang3}
{it:{help corrgram##options_ac:acoptsts}} 指定除 {cmd:generate()} 之外在 {manhelp corrgram TS} 中的 {cmd:ac} 命令的任何选项。

{marker histopts}{...}
{phang2}
{it:{help histogram##options_continuous:histopts}} 指定与 {cmd:bayesgraph histogram} 一起使用的选项。有关选项，请参见 {manhelp histogram R} ，但不包括 {cmd:by()}。

{phang2}
{it:kdensityopts} 指定与 {cmd:bayesgraph kdensity} 一起使用的选项。

{phang3}
{it:{help kdensity##options:kdensopts}} 指定整体核密度图的选项。有关选项，请参见 {manhelp kdensity R} ，但不包括 {cmd:generate()} 和 {cmd:at()}。

{marker showspec}{...}
{phang3}
{opt show(showspec)} 指定绘制哪些核密度曲线。{it:showspec} 是 {cmd:first}、 {cmd:second}、 {cmd:both} 或 {cmd:none} 之一。如果指定 {cmd:show(first)}，仅绘制从 MCMC 样本的前半部分获得的第一半密度曲线。而如果指定 {cmd:show(second)}，仅绘制从 MCMC 样本的后半部分获得的第二半密度曲线。{cmd:show(both)}，{cmd:diagnostics} 图形的默认值，叠加第一半密度曲线和第二半密度曲线以及整体核密度曲线。{cmd:show(none)}，{cmd:kdensity} 图形的默认值，仅显示整体核密度曲线。

{phang3}
{opt kdensfirst(kdens1opts)} 指定 {manhelp twoway_kdensity G-2:graph twoway kdensity} 的选项，不包括 {cmd:by()}，以影响第一半核密度图的生成。

{phang3}
{opt kdenssecond(kdens2opts)} 指定 {manhelp twoway_kdensity G-2:graph twoway kdensity} 的选项，不包括 {cmd:by()}，以影响第二半核密度图的生成。

{phang2}
{it:{help graph matrix##options:grmatrixopts}} 指定与 {cmd:bayesgraph matrix} 一起使用的选项。有关选项，请参见 {manhelp graph_matrix G-2:graph matrix}，但不包括 {cmd:by()}。


{marker remarks}{...}
{title:备注}

{pstd}
{cmd:bayesgraph} 在所有图形类型中要求至少指定一个参数，{cmd:matrix} 至少需要两个参数。要请求所有参数的图形，请使用 {cmd:_all}。

{pstd}
当生成多个图形时，它们将自动存储在内存中，名称为 {cmd:Graph__}{it:#}，将全部显示在屏幕上。完成图形的复审后，您可以输入 
{help graph_drop_zh:{cmd:graph drop Graph__*}} 关闭这些图形并将它们从内存中删除。

{pstd}
如果您希望一次仅查看一个图形，可以指定选项 {opt close}，在显示下一个图形时关闭图形窗口。您还可以使用选项 {opt sleep()} 或选项 {opt wait} 在后续图形之间暂停。{opt sleep(#)} 选项使得每个图形暂停 {it:#} 秒。{opt wait} 选项使得 {opt bayesgraph} 等待直到按下一个键后再生成下一个图形。

{pstd}
您还可以通过指定 {cmd:byparm()} 或 {cmd:combine()} 将单独图形合并为一个图形。这些选项不允许与诊断或矩阵图形一起使用。{opt byparm()} 选项生成更紧凑的图形，但在许多参数或表达式以及 MCMC 样本较大时可能无法实施。

{pstd}
拥有多个图形时，您可以使用 {cmd:graph}{it:#}{cmd:opts()} 控制每个单独图形的外观。适用于所有图形的选项可以在 {cmd:graphopts()} 中指定，或者直接传递给命令，就像单个图形那样。

{pstd}
对于多个链，默认情况下 {opt bayesgraph} 仅绘制前 10 条链。如果您有超过 10 条链，尽管实际上通常只使用四条链，可以使用 {cmd:chains(_all)} 选项绘制所有链。您还可以使用 {cmd:chains()} 选项手动选择要绘制的链。例如，{cmd:chains(1/3 5)} 将会绘制链 1、2、3 和 5。如果需要，您可以使用 {cmd:chainslegend} 选项查看哪个图对应哪个链。

{pstd}
默认情况下，链会在一张图上覆盖绘制。您可以指定 {cmd:sepchains} 选项，按链绘制每个单独图形，在这种情况下，图形将自动存储在内存中，名为 {cmd:Graph__}{it:#}，并全部出现在屏幕上。或者，您可以使用 {cmd:bychain} 选项将每条链单独绘制在一张图上。

{pstd}
要控制单个链的外观，您可以使用 {cmd:chain}{it:#}{cmd:opts()} 选项。例如，要将链 2 的线条颜色更改为红色，您可以指定 {cmd:chain2opts(lcolor(red))} 选项。要控制所有链的外观，您可以使用 {cmd:chainopts()} 选项。

{pstd}
您可以使用 {cmd:bayesgraph} 绘制预测量，当您在 {cmd:using} 指定中提供由 {help bayespredict_zh} 生成的预测数据集时。另外参见
{mansection BAYES BayesianpostestimationRemarksandexamplesDifferentwaysofspecifyingpredictionsandtheirfunctions:{it:指定预测及其函数的不同方法}}
在 {bf:[BAYES] Bayesian后验估计} 中。


{marker examples}{...}
{title:示例}

{pstd}设置{p_end}
{phang2}{cmd:. webuse oxygen}{p_end}
{phang2}{cmd:. set seed 14}{p_end}
{phang2}{cmd:. bayesmh change age group, likelihood(normal({c -(}var{c )-}))}
        {cmd:prior({change:}, flat) prior({c -(}var{c )-}, jeffreys)}

{pstd}对模型中所有参数的诊断图形{p_end}
{phang2}{cmd:. bayesgraph diagnostics _all}
	
{pstd}针对参数 {cmd:{change:age}} 和 {cmd:{change:_cons}} 的自相关图{p_end}
{phang2}{cmd:. bayesgraph ac {change:age} {change:_cons}}
	
{pstd}在单一图上绘制参数 {cmd:{c -(}var{c )-}} 和 {cmd:{change:age}} 的轨迹图{p_end}
{phang2}{cmd:. bayesgraph trace {c -(}var{c )-} {change:age}, byparm}

{pstd}带有正态分布覆盖的参数 {cmd:{change:age}} 的边际后验分布的直方图{p_end}
{phang2}{cmd:. bayesgraph histogram {change:age}, normal}
	
{pstd}参数 {cmd:{c -(}var{c )-}} 的核密度图{p_end}
{phang2}{cmd:. bayesgraph kdensity {c -(}var{c )-}}
		
{pstd}参数 {cmd:{change:age}} 的累积分布图{p_end}
{phang2}{cmd:. bayesgraph cusum {change:age}}
	
{pstd}参数 {cmd:{change:age}} 和 {cmd:{change:_cons}} 的双变量散点图{p_end}
{phang2}{cmd:. bayesgraph matrix {change:age} {change:_cons}}{p_end}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <bayesgraph.sthlp>}