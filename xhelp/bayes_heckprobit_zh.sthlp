{smcl}
{* *! version 1.0.9  12dec2018}{...}
{viewerdialog "bayes: heckprobit" "dialog bayes_heckprobit"}{...}
{vieweralsosee "[BAYES] bayes: heckprobit" "mansection BAYES bayesheckprobit"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[BAYES] bayes" "help bayes_zh"}{...}
{vieweralsosee "[R] heckprobit" "help heckprobit_zh"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[BAYES] Bayesian commands" "help bayesian_commands_zh"}{...}
{vieweralsosee "[BAYES] Bayesian estimation" "help bayesian_estimation_zh"}{...}
{vieweralsosee "[BAYES] Bayesian postestimation" "help bayesian_postestimation_zh"}{...}
{vieweralsosee "[BAYES] Glossary" "help bayes_glossary_zh"}{...}
{viewerjumpto "Syntax" "bayes_heckprobit_zh##syntax"}{...}
{viewerjumpto "Menu" "bayes_heckprobit_zh##menu"}{...}
{viewerjumpto "Description" "bayes_heckprobit_zh##description"}{...}
{viewerjumpto "Links to PDF documentation" "bayes_heckprobit_zh##linkspdf"}{...}
{viewerjumpto "Examples" "bayes_heckprobit_zh##examples"}{...}
{viewerjumpto "Stored results" "bayes_heckprobit_zh##results"}
{help bayes_heckprobit:English Version}
{hline}{...}
{p2colset 1 30 32 2}{...}
{p2col:{bf:[BAYES] bayes: heckprobit} {hline 2}}贝叶斯选择模型的 probit 模型{p_end}
{p2col:}({mansection BAYES bayesheckprobit:查看完整的PDF手册条目}){p_end}
{p2colreset}{...}


{marker syntax}{...}
{title:语法}

{p 8 15 2}
{cmd:bayes} [{cmd:,} {it:bayesopts}] {cmd::} {opt heckprobit}
{depvar} {indepvars}
{ifin}
[{it:{help bayes_heckprobit##weight:weight}}]{cmd:,}
{opt sel:ect}{cmd:(}[{it:{help depvar:depvar_s}} {cmd:=}]
                     {it:{help varlist_zh:varlist_s}}
[{cmd:,} {opt nocons:tant} {opth off:set(varname:varname_o)}]{cmd:)}
[{it:options}]

{synoptset 20 tabbed}{...}
{synopthdr}
{synoptline}
{syntab:模型}
{p2coldent :* {opt sel:ect()}}指定选择方程：因变量和自变量，是否具有常数项和偏移变量{p_end}
{synopt :{opt nocons:tant}}抑制常数项{p_end}
{synopt :{opth off:set(varname)}}在模型中包括 {it:varname}，其系数被约束为 1{p_end}

{syntab:报告}
{synopt :{it:{help heckprobit##display_options:display_options}}}控制
包括帮助短描述显示选项

{synopt :{opt l:evel(#)}}设置可信水平；默认值为 {cmd:level(95)}{p_end}
{synoptline}
{p 4 6 2}
* {opt select()} 是必需的。完整的规范是{break}
{opt sel:ect}{cmd:(}[{it:depvar_s} {cmd:=}] {it:varlist_s}
[{cmd:,} {opt nocons:tant} {opt off:set(varname_o)}]{cmd:)}.
{p_end}
{p 4 6 2}{it:indepvars} 和 {it:varlist_s} 可以包含因子变量；参见 {help fvvarlist_zh}.{p_end}
{p 4 6 2}{it:depvar}，{it:indepvars}，{it:varlist_s} 和 {it:depvar_s} 可以
包含时间序列运算符；参见 {help tsvarlist_zh}.{p_end}
{marker weight}{...}
{p 4 6 2}
{cmd:fweight} 被允许；参见 {help weight_zh}.{p_end}
{p 4 6 2}
{cmd:bayes:} {cmd:heckprobit,} {cmd:level()} 等价于 
{cmd:bayes,} {cmd:clevel():} {cmd:heckprobit}.{p_end}
{p 4 6 2}有关 {it:options} 的详细说明，参见
{help heckprobit##options:{it:选项}} 在 {manhelp heckprobit R}.{p_end}

{marker bayesopts}{...}
{synoptset 30 tabbed}{...}
{synopthdr:bayesopts}
{synoptline}
{marker options_priors}{...}
{syntab:{help bayes##priors_options:先验}}
{p2coldent:* {opt normalpr:ior(#)}}指定回归系数和反双曲正切变换相关性的默认正态
先验的标准差；默认值为 {cmd:normalprior(100)}{p_end}
包括帮助 bayesecmd_opts
{p2colreset}{...}
{p 4 6 2}模型参数是回归系数
{cmd:{c -(}}{it:depvar}{cmd::}{it:indepvars}{cmd:{c )-}}
对于主要回归和
{cmd:{c -(}select:}{it:varlist_s}{cmd:{c )-}}
对于选择方程，以及反双曲正切变换相关
{cmd:{c -(}athrho{c )-}}.
使用 {cmd:dryrun} 选项查看模型参数的定义
在估计之前。{p_end}
{p 4 6 2}有关 {it:bayesopts} 的详细说明，参见
{help bayes##options:{it:选项}} 在 {manhelp bayes BAYES}.{p_end}


{marker menu}{...}
{title:菜单}

{phang}
{bf:统计 > 二元结果 > 贝叶斯回归 > 带有样本选择的 Probit 模型}


{marker description}{...}
{title:描述}

{pstd}
{cmd:bayes: heckprobit} 拟合贝叶斯样本选择 probit 回归
至部分观察的二元结果；
有关详细信息，请参见 {manhelp bayes BAYES} 和 {manhelp heckprobit R:heckprobit}。


{marker linkspdf}{...}
{title:PDF文档链接}

        {mansection BAYES bayesheckprobitQuickstart:快速入门}

        {mansection BAYES bayesheckprobitRemarksandexamples:备注和示例}

        {mansection BAYES bayesheckprobitMethodsandformulas:方法和公式}

{pstd}
上述部分未包含在此帮助文件中。


{marker examples}{...}
{title:示例}

{pstd}
设置{p_end}
{phang2}{cmd:. webuse school}

{pstd}
使用默认的先验拟合带样本选择的贝叶斯 probit 模型{p_end}
{phang2}{cmd:. bayes: heckprobit private years logptax, sel(vote=years loginc logptax)}

{pstd}
检查 {cmd:{athrho}} 的 MCMC 收敛性{p_end}
{phang2}{cmd:. bayesgraph diagnostics {athrho}}

{pstd}
将烧入期从默认的 2,500 增加到 5,000，并为 {cmd:athrho} 指定 
具有均值为零和方差为 10 的更具信息量的正态先验{p_end}
{phang2}{cmd:. bayes, burnin(5000) prior({athrho}, normal(0,10)): heckprobit private years logptax, sel(vote=years loginc logptax)}

{pstd}
对于 {cmd:{athrho}} 的 MCMC 诊断看起来更好{p_end}
{phang2}{cmd:. bayesgraph diagnostics {athrho}}

{pstd}
通过反转模型参数 {cmd:{athrho}} 计算 rho 的后验摘要{p_end}
{phang2}{cmd:. bayesstats summary (rho:1-2/(exp(2*{athrho})+1))}

{pstd}
为所有模型参数使用默认正态先验的标准差为 10，指定随机数种子以保证可重复性，并在仿真期间显示点{p_end}
{phang2}{cmd:. bayes, normalprior(10) rseed(12345) dots: heckprobit private years logptax, sel(vote=years loginc logptax)}

{pstd}
使用对所有回归系数和 {cmd:{athrho}} 具有均匀先验的贝叶斯 probit 选择模型{p_end}
{phang2}{cmd:. bayes, prior({private:years logptax _cons} {athrho}, uniform(-5,5)): heckprobit private years logptax, sel(vote=years loginc logptax)}

{pstd}
与上述相同，但使用快捷标记引用主要方程中的所有回归系数{p_end}
{phang2}{cmd:. bayes, prior({private:} {athrho}, uniform(-5,5)): heckprobit private years logptax, sel(vote=years loginc logptax)}

{pstd}
与上述相同，但对选择方程中所有回归系数使用另一个均匀先验{p_end}
{phang2}{cmd:. bayes, prior({private:} {athrho}, uniform(-5,5))}{p_end}
            {cmd:prior({vote:}, uniform(-10,10)):}
            {cmd:heckprobit private years logptax, sel(vote=years loginc logptax)}

{pstd}
在重放时保存 MCMC 结果{p_end}
{phang2}{cmd:. bayes, saving(mymcmc)}


{marker results}{...}
{title:存储结果}

{pstd}
有关 {help bayes##results:{it:存储结果}} 的信息，请参阅 {manhelp bayes BAYES}。
{p_end}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <bayes_heckprobit.sthlp>}