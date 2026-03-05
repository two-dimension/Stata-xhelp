{smcl}
{* *! version 1.0.0  13dec2018}{...}
{viewerdialog "bayes: hetoprobit" "dialog bayes_hetoprobit"}{...}
{vieweralsosee "[BAYES] bayes: hetoprobit" "mansection BAYES bayeshetoprobit"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[BAYES] bayes" "help bayes_zh"}{...}
{vieweralsosee "[R] hetoprobit" "help hetoprobit_zh"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[BAYES] Bayesian commands" "help bayesian_commands_zh"}{...}
{vieweralsosee "[BAYES] Bayesian estimation" "help bayesian_estimation_zh"}{...}
{vieweralsosee "[BAYES] Bayesian postestimation" "help bayesian_postestimation_zh"}{...}
{vieweralsosee "[BAYES] Glossary" "help bayes_glossary_zh"}{...}
{viewerjumpto "Syntax" "bayes_hetoprobit_zh##syntax"}{...}
{viewerjumpto "Menu" "bayes_hetoprobit_zh##menu"}{...}
{viewerjumpto "Description" "bayes_hetoprobit_zh##description"}{...}
{viewerjumpto "Links to PDF documentation" "bayes_hetoprobit_zh##linkspdf"}{...}
{viewerjumpto "Examples" "bayes_hetoprobit_zh##examples"}{...}
{viewerjumpto "Stored results" "bayes_hetoprobit_zh##results"}
{help bayes_hetoprobit:English Version}
{hline}{...}
{p2colset 1 30 32 2}{...}
{p2col:{bf:[BAYES] bayes: hetoprobit} {hline 2}}贝叶斯异方差有序Probit回归{p_end}
{p2col:}({mansection BAYES bayeshetoprobit:查看完整PDF手册条目}){p_end}
{p2colreset}{...}


{marker syntax}{...}
{title:语法}

{p 8 15 2}
{cmd:bayes} [{cmd:,} {it:bayesopts}] {cmd::} {opt hetoprobit}
{depvar} [{indepvars}]
{ifin}
[{it:{help bayes_hetoprobit##weight:权重}}]{cmd:,}
{cmd:het(}{varlist} [{cmd:,} {opth off:set(varname:varname_o)}]{cmd:)}
[{it:选项}]

{synoptset 20 tabbed}{...}
{synopthdr}
{synoptline}
{syntab:模型}
{p2coldent :* {cmd:het(}{varlist}[...]{cmd:)}}用于建模方差的自变量和可能的偏移变量{p_end}
{synopt :{opth off:set(varname)}}在模型中包含{it:varname}，并将系数约束为1{p_end}

{syntab:报告}
{synopt :{it:{help hetoprobit##display_options:显示选项}}}控制
包含 帮助 简短描述-显示选项

{synopt :{opt l:evel(#)}}设置可信水平；默认值为{cmd:level(95)}{p_end}
{synoptline}
{p 4 6 2}
* {opt het()} 是必需的。完整的规定是{break}
     {cmd:het(}{it:varlist} [{cmd:,} {opt off:set(varname_o)}]{cmd:)}。
{p_end}
包含帮助 fvvarlist2
{p 4 6 2}
{it:depvar}、{it:indepvars}和{it:varlist}可以包含时间序列运算符；详见 {help tsvarlist_zh}.{p_end}
{marker weight}{...}
{p 4 6 2}
{cmd:fweight}是允许的；见 {help weight_zh}.{p_end}
{p 4 6 2}
{cmd:bayes:} {cmd:hetoprobit,} {cmd:level()} 相当于 
{cmd:bayes,} {cmd:clevel():} {cmd:hetoprobit}.{p_end}
{p 4 6 2}有关{it:选项}的详细说明，请参见
{help hetoprobit##options:{it:选项}} 在 {manhelp hetoprobit R}.{p_end}

{marker bayesopts}{...}
{synoptset 30 tabbed}{...}
{synopthdr:bayesopts}
{synoptline}
{marker options_priors}{...}
{syntab:{help bayes##priors_options:先验}}
{p2coldent:* {opt normalpr:ior(#)}}指定回归系数和对数标准差系数的默认正态先验的标准差；默认值为{cmd:normalprior(100)}{p_end}
包含帮助 bayesecmd_opts
{p2colreset}{...}
{p 4 6 2}模型参数是回归系数
{cmd:{c -(}}{it:depvar}{cmd::}{it:indepvars}{cmd:{c )-}}
用于主回归，并且
{cmd:{c -(}lnsigma:}{it:varlist}{cmd:{c )-}}
用于对数标准差方程和截距
{cmd:{c -(}cut1{c )-}}, {cmd:{c -(}cut2{c )-}}, 等等。
使用{cmd:dryrun}选项查看模型参数的定义，估计之前的定义.{p_end}
{p 4 6 2}默认情况下，截距使用平坦的先验{cmd:flat}。{p_end}
{p 4 6 2}有关{it:bayesopts}的详细说明，请参见
{help bayes##options:{it:选项}} 在 {manhelp bayes BAYES}.{p_end}


{marker menu}{...}
{title:菜单}

{phang}
{bf:统计 > 有序结果 > 贝叶斯回归 > 异方差有序Probit回归}


{marker description}{...}
{title:描述}

{pstd}
{cmd:bayes: hetoprobit} 拟合贝叶斯异方差有序Probit回归以处理有序结果；
详细信息请参见 {manhelp bayes BAYES} 和 {manhelp hetoprobit R:hetoprobit}。


{marker linkspdf}{...}
{title:PDF文档链接}

        {mansection BAYES bayeshetoprobitQuickstart:快速开始}

        {mansection BAYES bayeshetoprobitRemarksandexamples:备注和示例}

        {mansection BAYES bayeshetoprobitMethodsandformulas:方法和公式}

{pstd}
以上部分未包含在此帮助文件中。


{marker examples}{...}
{title:示例}

{pstd}
设置{p_end}
{phang2}{cmd:. webuse fullauto}

{pstd}
使用默认先验拟合贝叶斯异方差有序Probit模型，使用{cmd:foreign}建模方差，并设置随机数种子以确保可重复性{p_end}
{phang2}{cmd:. bayes, rseed(12345): hetoprobit rep77 mpg foreign, het(foreign)}

{pstd}
与上述相同，但将烧入期从默认的2500增加到4000，并在模拟期间显示点{p_end}
{phang2}{cmd:. bayes, burnin(4000) dots rseed(12345): hetoprobit rep77 mpg foreign, het(foreign)}

{pstd}
与上述相同，但为回归系数使用默认正态先验的标准差为10{p_end}
{phang2}{cmd:. bayes, normalprior(10) burnin(4000) dots rseed(12345): hetoprobit rep77 mpg foreign, het(foreign)}

{pstd}
为主要方程中的所有回归系数指定均匀先验{p_end}
{phang2}{cmd:. bayes, prior({rep77:mpg foreign}, uniform(-10,10)) burnin(4000) rseed(12345): hetoprobit rep77 mpg foreign, het(foreign)}

{pstd}
与上述相同，但使用简化符号一次性引用主要方程中的所有回归系数{p_end}
{phang2}{cmd:. bayes, prior({rep77:}, uniform(-10,10)) burnin(4000) rseed(12345): hetoprobit rep77 mpg foreign, het(foreign)}

{pstd}
保存MCMC结果以供重播{p_end}
{phang2}{cmd:. bayes, saving(mymcmc)}


{marker results}{...}
{title:存储结果}

{pstd}
请参见 {help bayes##results:{it:存储结果}} 在 {manhelp bayes BAYES}。
{p_end}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <bayes_hetoprobit.sthlp>}