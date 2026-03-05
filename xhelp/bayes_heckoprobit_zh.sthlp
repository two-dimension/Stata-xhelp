{smcl}
{* *! version 1.0.8  12dec2018}{...}
{viewerdialog "bayes: heckoprobit" "dialog bayes_heckoprobit"}{...}
{vieweralsosee "[BAYES] bayes: heckoprobit" "mansection BAYES bayesheckoprobit"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[BAYES] bayes" "help bayes_zh"}{...}
{vieweralsosee "[R] heckoprobit" "help heckoprobit_zh"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[BAYES] Bayesian commands" "help bayesian_commands_zh"}{...}
{vieweralsosee "[BAYES] Bayesian estimation" "help bayesian_estimation_zh"}{...}
{vieweralsosee "[BAYES] Bayesian postestimation" "help bayesian_postestimation_zh"}{...}
{vieweralsosee "[BAYES] Glossary" "help bayes_glossary_zh"}{...}
{viewerjumpto "Syntax" "bayes_heckoprobit_zh##syntax"}{...}
{viewerjumpto "Menu" "bayes_heckoprobit_zh##menu"}{...}
{viewerjumpto "Description" "bayes_heckoprobit_zh##description"}{...}
{viewerjumpto "Links to PDF documentation" "bayes_heckoprobit_zh##linkspdf"}{...}
{viewerjumpto "Examples" "bayes_heckoprobit_zh##examples"}{...}
{viewerjumpto "Stored results" "bayes_heckoprobit_zh##results"}
{help bayes_heckoprobit:English Version}
{hline}{...}
{p2colset 1 31 33 2}{...}
{p2col:{bf:[BAYES] bayes: heckoprobit} {hline 2}}贝叶斯Ordered Probit模型与样本选择{p_end}
{p2col:}({mansection BAYES bayesheckoprobit:查看完整PDF手册条目}){p_end}
{p2colreset}{...}


{marker syntax}{...}
{title:语法}

{p 8 15 2}
{cmd:bayes} [{cmd:,} {it:bayesopts}] {cmd::} {opt heckoprobit}
{depvar} {indepvars}
{ifin}
[{it:{help bayes_heckoprobit##weight:weight}}]{cmd:,}
{opt sel:ect}{cmd:(}[{it:{help depvar:depvar_s}} {cmd:=}]
                     {it:{help varlist_zh:varlist_s}}
[{cmd:,} {opt nocons:tant} {opth off:set(varname:varname_o)}]{cmd:)}
[{it:options}]

{synoptset 20 tabbed}{...}
{synopthdr}
{synoptline}
{syntab:模型}
{p2coldent :* {opt sel:ect()}}指定选择方程：因变量和自变量；是否有常数项和偏移变量{p_end}
{synopt :{opth off:set(varname)}}在模型中包含 {it:varname}，其系数约束为1{p_end}

{syntab:报告}
{synopt :{it:{help heckoprobit##display_options:display_options}}}控制 
INCLUDE help shortdes-displayoptbayes

{synopt :{opt l:evel(#)}}设置置信水平；默认值为 {cmd:level(95)}{p_end}
{synoptline}
{p 4 6 2}
* {opt select()} 是必需的。完整的规格为{p_end}
{p 10 10 2}
{opt sel:ect}{cmd:(}[{it:depvar_s} {cmd:=}] {it:varlist_s}
[{cmd:,} {opt nocons:tant} {opt off:set(varname_o)}]{cmd:)}
{p_end}
{p 4 6 2}{it:indepvars} 和 {it:varlist_s} 可以包含因子变量；参见 {help fvvarlist_zh}.{p_end}
{p 4 6 2}{it:depvar}、{it:indepvars}、{it:varlist_s}和 {it:depvar_s} 可以
包含时间序列运算符；参见 {help tsvarlist_zh}.{p_end}
{marker weight}{...}
{p 4 6 2}
{cmd:fweight}s 允许使用；参见 {help weight_zh}.{p_end}
{p 4 6 2}
{cmd:bayes:} {cmd:heckoprobit,} {cmd:level()} 等价于 
{cmd:bayes,} {cmd:clevel():} {cmd:heckoprobit}.{p_end}
{p 4 6 2}有关 {it:options} 的详细描述，请参见
{help heckoprobit##options:{it:选项}} 在 {manhelp heckoprobit R}.{p_end}

{marker bayesopts}{...}
{synoptset 30 tabbed}{...}
{synopthdr:bayesopts}
{synoptline}
{marker options_priors}{...}
{syntab:{help bayes##priors_options:先验}}
{p2coldent:* {opt normalpr:ior(#)}}指定回归系数默认正态先验的标准差；默认值为 {cmd:normalprior(100)}{p_end}
INCLUDE help bayesecmd_opts
{p2colreset}{...}
{p 4 6 2}模型参数为回归系数
{cmd:{c -(}}{it:depvar}{cmd::}{it:indepvars}{cmd:{c )-}}
用于主要回归和
{cmd:{c -(}select:}{it:varlist_s}{cmd:{c )-}}
用于选择方程，atanh变换的相关性
{cmd:{c -(}athrho{c )-}}，以及临界点
{cmd:{c -(}cut1{c )-}}、{cmd:{c -(}cut2{c )-}}等。
使用 {cmd:dryrun} 选项查看模型参数在估计前的定义。{p_end}
{p 4 6 2}默认情况下对切点使用平坦的先验 {cmd:flat}。{p_end}
{p 4 6 2}有关 {it:bayesopts} 的详细描述，请参见
{help bayes##options:{it:选项}} 在 {manhelp bayes BAYES}.{p_end}


{marker menu}{...}
{title:菜单}

{phang}
{bf:统计 > 有序结果 > 贝叶斯回归 > 带样本选择的有序Probit回归}


{marker description}{...}
{title:描述}

{pstd}
{cmd:bayes: heckoprobit} 拟合一个贝叶斯样本选择有序Probit回归
到部分观察到的有序结果；
详细信息请参见 {manhelp bayes BAYES} 和 {manhelp heckoprobit R:heckoprobit}。


{marker linkspdf}{...}
{title:PDF文档链接}

        {mansection BAYES bayesheckoprobitQuickstart:快速入门}

        {mansection BAYES bayesheckoprobitRemarksandexamples:备注和示例}

        {mansection BAYES bayesheckoprobitMethodsandformulas:方法和公式}

{pstd}
上述部分不包括在此帮助文件中。


{marker examples}{...}
{title:示例}

{pstd}
设置{p_end}
{phang2}{cmd:. webuse womensat}{p_end}
{phang2}{cmd:. set seed 5678}{p_end}
{phang2}{cmd:. sample 5, by(work)}{p_end}

{pstd}
使用默认先验拟合贝叶斯Ordered Probit模型，并进行样本选择； 
在仿真期间显示点{p_end}
{phang2}{cmd:. bayes, dots: heckoprobit satisfaction educ age, select(work=educ age i.married children)}

{pstd}
检查模型参数的效率{p_end}
{phang2}{cmd:. bayesstats ess}

{pstd}
将烧入期从默认的2,500增加到5,000；为切点指定
均值为零、方差为5的更有信息量的正态先验；并使用随机数种子以保证可重复性{p_end}
{phang2}{cmd:. bayes, burnin(5000) prior({cut1 cut2 cut3}, normal(0,5)) rseed(123) dots: heckoprobit satisfaction educ age, select(work=educ age i.married children)}

{pstd}
通过对模型参数 {cmd:{athrho}} 进行反向变换计算后验摘要{p_end}
{phang2}{cmd:. bayesstats summary (rho:1-2/(exp(2*{athrho})+1))}

{pstd}
使用均匀先验为主方程中的所有回归系数拟合贝叶斯Ordered Probit选择模型，并为切点使用
{cmd:normal(0,5)} 先验；使用5,000的较小MCMC样本量而不是默认的10,000{p_end}
{phang2}{cmd:. bayes, prior({satisfaction:educ age _cons}, uniform(-1,1)) prior({cut1 cut2 cut3}, normal(0,5)) mcmcsize(5000) dots: heckoprobit satisfaction educ age, select(work=educ age i.married children)}

{pstd}
与上面相同，但使用快捷方式表示所有主方程中的回归系数{p_end}
{phang2}{cmd:. bayes, prior({satisfaction:}, uniform(-1,1)) prior({cut1 cut2 cut3}, normal(0,5)) mcmcsize(5000) dots: heckoprobit satisfaction educ age, select(work=educ age i.married children)}

{pstd}
保存MCMC结果以便重放{p_end}
{phang2}{cmd:. bayes, saving(mymcmc)}


{marker results}{...}
{title:存储结果}

{pstd}
请参见 {help bayes##results:{it:存储结果}} 在 {manhelp bayes BAYES}。
{p_end}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <bayes_heckoprobit.sthlp>}