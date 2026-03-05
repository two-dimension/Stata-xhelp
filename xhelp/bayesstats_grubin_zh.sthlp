{smcl}
{* *! version 1.0.2  24apr2019}{...}
{viewerdialog "bayesstats grubin" "dialog bayesstats_grubin"}{...}
{vieweralsosee "[BAYES] bayesstats grubin" "mansection BAYES bayesstatsgrubin"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[BAYES] bayes" "help bayes_zh"}{...}
{vieweralsosee "[BAYES] bayesmh" "help bayesmh_zh"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[BAYES] Bayesian estimation" "help bayesian estimation"}{...}
{vieweralsosee "[BAYES] Bayesian postestimation" "help bayesian postestimation"}{...}
{vieweralsosee "[BAYES] bayesstats summary" "help bayesstats summary"}{...}
{viewerjumpto "Syntax" "bayesstats_grubin_zh##syntax"}{...}
{viewerjumpto "Menu" "bayesstats_grubin_zh##menu"}{...}
{viewerjumpto "Description" "bayesstats_grubin_zh##description"}{...}
{viewerjumpto "Links to PDF documentation" "bayesstats_grubin_zh##linkspdf"}{...}
{viewerjumpto "Options" "bayesstats_grubin_zh##options"}{...}
{viewerjumpto "Examples" "bayesstats_grubin_zh##examples"}{...}
{viewerjumpto "Stored results" "bayesstats_grubin_zh##results"}
{help bayesstats_grubin:English Version}
{hline}{...}
{p2colset 1 30 32 2}{...}
{p2col:{bf:[BAYES] bayesstats grubin} {hline 2}}Gelman-Rubin 收敛诊断{p_end}
{p2col:}({mansection BAYES bayesstatsgrubin:查看完整的 PDF 手册条目}){p_end}
{p2colreset}{...}


{marker syntax}{...}
{title:语法}

{phang}
所有模型参数的收敛统计

{p 8 11 2}
{opt bayesstats} {opt gr:ubin}
[{cmd:,} {it:{help bayesstats_grubin##options_table:选项}}
{opt showreffects}[{cmd:(}{it:{help bayesian postestimation##bayesian_post_reref:reref}}{cmd:)}]]

{p 8 11 2}
{opt bayesstats} {opt gr:ubin}
{cmd:_all} [{cmd:,} {it:{help bayesstats_grubin##options_table:选项}}
{opt showreffects}[{cmd:(}{it:{help bayesian postestimation##bayesian_post_reref:reref}}{cmd:)}]]


{phang}
选定模型参数的收敛统计

{p 8 11 2}
{opt bayesstats} {opt gr:ubin}
{it:{help bayesstats_grubin##paramspec:参数规范}}
[{cmd:,} {it:{help bayesstats_grubin##options_table:选项}}]


{phang}
模型参数函数的收敛统计

{p 8 11 2}
{opt bayesstats} {opt gr:ubin} {it:{help bayesstats_grubin##exprspec:表达式规范}}
[{cmd:,} {it:{help bayesstats_grubin##options_table:选项}}]


{phang}
完整语法

{p 8 11 2}
{opt bayesstats} {opt gr:ubin} {it:{help bayesstats_grubin##spec:规范}}
[{it:规范} ...] [{cmd:,} {it:{help bayesstats_grubin##options_table:选项}}]


{marker paramspec}{...}
包括 help bayes_paramspec

{marker exprspec}{...}
包括 help bayes_exprspec

{marker spec}{...}
{phang}
{it:规范} 是 {it:{help bayesstats_grubin##paramspec:参数规范}}
或 {it:{help bayesstats_grubin##exprspec:表达式规范}} 之一。

{synoptset 24}{...}
{marker options_table}{...}
{synopthdr}
{synoptline}
{synopt :{opt sort}}按收敛统计降序列出参数{p_end}
{synopt :{opt skip(#)}}从 MCMC 样本中跳过每 {it:#} 个观察值；默认值为 {cmd:skip(0)}{p_end}
{synopt :{opt noleg:end}}抑制表格图例{p_end}
{synopt :{it:{help bayesstats grubin##display_options:显示选项}}}控制
间距、行宽，以及基本和空单元{p_end}
{synoptline}
{p2colreset}{...}


{marker menu}{...}
{title:菜单}

{phang}
{bf:统计 > 贝叶斯分析 > Gelman-Rubin 收敛诊断}


{marker description}{...}
{title:描述}

{pstd}
{cmd:bayesstats grubin} 计算模型参数和模型参数函数的 Gelman-Rubin 收敛诊断，使用包含至少两个马尔可夫链的当前贝叶斯估计结果。


{marker linkspdf}{...}
{title:PDF 文档链接}

        {mansection BAYES bayesstatsgrubinQuickstart:快速入门}

        {mansection BAYES bayesstatsgrubinRemarksandexamples:备注和示例}

        {mansection BAYES bayesstatsgrubinMethodsandformulas:方法和公式}

{pstd}
上述部分未包含在此帮助文件中。


{marker options}{...}
{title:选项}

{phang}
{cmd:sort} 指定模型参数按其 Gelman-Rubin 收敛统计降序列出。此选项在具有许多参数的模型（如多层模型）中非常有用，可以更容易地识别收敛统计值大的参数集合。

包括 help bayespost_showreoptdes
{p 8 8 2}
如果研究中对随机效应参数感兴趣，应使用选项 {cmd:showreffects} 检查其收敛诊断。

包括 help bayespost_skipoptsdes

{phang}
{opt nolegend} 抑制表格图例的显示，该图例标识了表格行与其代表的表达式。

{marker display_options}{...}
{phang}
{it:显示选项}：
{opt vsquish},
{opt noempty:cells},
{opt base:levels},
{opt allbase:levels},
{opt nofvlab:el},
{opt fvwrap(#)},
{opt fvwrapon(style)}, 和
{opt nolstretch}；
   参见 {helpb estimation options##display_options:[R] 估计选项}。


{marker examples}{...}
{title:示例}

    {hline}
{pstd}设置{p_end}
{phang2}{cmd:. webuse oxygen}{p_end}

{pstd}使用三个链的贝叶斯正态线性回归{p_end}
{phang2}{cmd:. bayesmh change age group, likelihood(normal({c -(}var{c )-}))} 
        {cmd:prior({change:}, normal(0, 100))}
        {cmd:prior({c -(}var{c )-}, igamma(1, 100))} 
        {cmd:block({change:}, gibbs) nchains(3) rseed(16)}

{pstd}Gelman-Rubin 收敛诊断{p_end}
{phang2}{cmd:. bayesstats grubin}

    {hline}
{pstd}设置{p_end}
{phang2}{cmd:. webuse lbw}{p_end}

{pstd}使用两个链的贝叶斯逻辑回归{p_end}
{phang2}{cmd:. bayes, nchains(2) rseed(16): logit low age lwt i.race}

    {hline}


{marker results}{...}
{title:存储结果}

{pstd}
{cmd:bayesstats grubin} 将以下内容存储在 {cmd:r()} 中：

{synoptset 15 tabbed}{...}
{p2col 5 15 17 2: 数量}{p_end}
{synopt:{cmd:r(mcmcsize)}}每个链的 MCMC 样本大小{p_end}
{synopt:{cmd:r(nchains)}}MCMC 链的数量{p_end}
{synopt:{cmd:r(Rc_max)}}最大收敛诊断{p_end}

{p2col 5 15 17 2: 矩阵}{p_end}
{synopt:{cmd:r(Rc)}}收敛诊断 {cmd:Rc}{p_end}
{synopt:{cmd:r(t_df)}}t 分布的自由度{p_end}
{synopt:{cmd:r(B)}}链间方差{p_end}
{synopt:{cmd:r(W)}}链内方差{p_end}
{synopt:{cmd:r(V)}}总方差{p_end}
{p2colreset}{...}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <bayesstats_grubin.sthlp>}