{smcl}
{* *! version 1.0.10  12dec2018}{...}
{viewerdialog "bayes: hetregress" "dialog bayes_hetregress"}{...}
{vieweralsosee "[BAYES] bayes: hetregress" "mansection BAYES bayeshetregress"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[BAYES] bayes" "help bayes_zh"}{...}
{vieweralsosee "[R] hetregress" "help hetregress_zh"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[BAYES] Bayesian commands" "help bayesian_commands_zh"}{...}
{vieweralsosee "[BAYES] Bayesian estimation" "help bayesian_estimation_zh"}{...}
{vieweralsosee "[BAYES] Bayesian postestimation" "help bayesian_postestimation_zh"}{...}
{vieweralsosee "[BAYES] Glossary" "help bayes_glossary_zh"}{...}
{viewerjumpto "Syntax" "bayes_hetregress_zh##syntax"}{...}
{viewerjumpto "Menu" "bayes_hetregress_zh##menu"}{...}
{viewerjumpto "Description" "bayes_hetregress_zh##description"}{...}
{viewerjumpto "Links to PDF documentation" "bayes_hetregress_zh##linkspdf"}{...}
{viewerjumpto "Examples" "bayes_hetregress_zh##examples"}{...}
{viewerjumpto "Stored results" "bayes_hetregress_zh##results"}
{help bayes_hetregress:English Version}
{hline}{...}
{p2colset 1 30 32 2}{...}
{p2col:{bf:[BAYES] bayes: hetregress} {hline 2}}贝叶斯异方差线性回归{p_end}
{p2col:}({mansection BAYES bayeshetregress:查看完整PDF手册条目}){p_end}
{p2colreset}{...}


{marker syntax}{...}
{title:语法}

{p 8 15 2}
{cmd:bayes} [{cmd:,} {it:bayesopts}] {cmd::} {opt hetregress}
{depvar} [{indepvars}]
{ifin}
[{it:{help bayes_hetregress##weight:权重}}]
[{cmd:,} {it:选项}]

{synoptset 20 tabbed}{...}
{synopthdr}
{synoptline}
{syntab:模型}
{synopt :{cmd:het(}{varlist}{cmd:)}}用于建模方差的自变量{p_end}
{synopt :{opt nocons:常数}}抑制常数项{p_end}

{syntab:报告}
{synopt :{it:{help hetregress##display_options:显示选项}}}控制
包括帮助短描述显示选项

{synopt :{opt l:evel(#)}}设定可信水平；默认值为{cmd:level(95)}{p_end}
{synoptline}
包括帮助 fvvarlist2
{p 4 6 2}
{it:depvar}、{it:indepvars} 和 {it:varlist} 可以包含
时间序列运算符；参见 {help tsvarlist_zh}.{p_end}
{marker weight}{...}
{p 4 6 2}
允许使用 {cmd:fweight}；参见 {help weight_zh}.{p_end}
{p 4 6 2}
{cmd:bayes:} {cmd:hetregress,} {cmd:level()} 等同于 
{cmd:bayes,} {cmd:clevel():} {cmd:hetregress}.{p_end}
{p 4 6 2}有关 {it:选项} 的详细描述，请参见
{help hetregress##options_ml:{it:最大似然估计的选项}}
和 
{help hetregress##options_twostep:{it:两步广义最小二乘估计的选项}}
在 {manhelp hetregress R}.{p_end}

{marker bayesopts}{...}
{synoptset 30 tabbed}{...}
{synopthdr:bayesopts}
{synoptline}
{marker options_priors}{...}
{syntab:{help bayes##priors_options:先验}}
{p2coldent:* {opt normalpr:ior(#)}}指定回归系数和对数方差系数的默认正态先验的标准差；默认值为 {cmd:normalprior(100)}{p_end}
包括帮助 bayesecmd_opts
{p2colreset}{...}
{p 4 6 2}模型参数为回归系数
{cmd:{c -(}}{it:depvar}{cmd::}{it:indepvars}{cmd:{c )-}} 及
{cmd:{c -(}lnsigma2:}{it:varlist}{cmd:{c )-}} 用于
对数方差方程。 使用 {cmd:dryrun} 选项查看估计之前模型参数的定义.{p_end}
{p 4 6 2}有关 {it:bayesopts} 的详细描述，请参见
{help bayes##options:{it:选项}} 在 {manhelp bayes BAYES}.{p_end}


{marker menu}{...}
{title:菜单}

{phang}
{bf:统计 > 线性模型及相关 > 贝叶斯回归 > 异方差线性回归}


{marker description}{...}
{title:描述}

{pstd}
{cmd:bayes: hetregress} 拟合贝叶斯异方差线性回归
到连续结果；详见 {manhelp bayes BAYES} 和 {manhelp hetregress R}.


{marker linkspdf}{...}
{title:PDF文档链接}

        {mansection BAYES bayeshetregressQuickstart:快速入门}

        {mansection BAYES bayeshetregressRemarksandexamples:备注和示例}

        {mansection BAYES bayeshetregressMethodsandformulas:方法与公式}

{pstd}
上述章节不包括在本帮助文件中。


{marker examples}{...}
{title:示例}

{pstd}
设置{p_end}
{phang2}{cmd:. sysuse auto}

{pstd}
使用默认先验拟合贝叶斯乘法异方差回归模型，并使用 {cmd:length} 来建模方差{p_end}
{phang2}{cmd:. bayes: hetregress mpg length i.foreign, het(length)}

{pstd}
与上述相同，但将烧入期增加到 5000，而默认值为 2500{p_end}
{phang2}{cmd:. bayes, burnin(5000): hetregress mpg length i.foreign, het(length)}

{pstd}
与上述相同，但为回归系数使用默认正态先验的标准差为10{p_end}
{phang2}{cmd:. bayes, normalprior(10) burnin(5000): hetregress mpg length i.foreign, het(length)}

{pstd}
与上述相同，但还指定随机数种子以确保可重复性{p_end}
{phang2}{cmd:. bayes, normalprior(10) burnin(5000) rseed(12345): hetregress mpg length i.foreign, het(length)}

{pstd}
为主方程中的所有回归系数指定均匀先验{p_end}
{phang2}{cmd:. bayes, prior({mpg:length i.foreign _cons}, uniform(-100,100)): hetregress mpg length i.foreign, het(length)}

{pstd}
与上述相同，但使用快捷符号参考主方程中的所有回归系数{p_end}
{phang2}{cmd:. bayes, prior({mpg:}, uniform(-100,100)): hetregress mpg length i.foreign, het(length)}

{pstd}
与上述相同，但在方差方程中为回归系数使用另一均匀先验{p_end}
{phang2}{cmd:. bayes, prior({mpg:}, uniform(-100,100)) prior({lnsigma2:}, uniform(-10,10)): hetregress mpg length i.foreign, het(length)}

{pstd}
保存 MCMC 的结果以供重放{p_end}
{phang2}{cmd:. bayes, saving(mymcmc)}


{marker results}{...}
{title:存储的结果}

{pstd}
请参见 {help bayes##results:{it:存储的结果}} 在 {manhelp bayes BAYES}。
{p_end}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <bayes_hetregress.sthlp>}