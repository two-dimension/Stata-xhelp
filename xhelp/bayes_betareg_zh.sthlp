{smcl}
{* *! version 1.0.7  31oct2018}{...}
{viewerdialog "bayes: betareg" "dialog bayes_betareg"}{...}
{vieweralsosee "[BAYES] bayes: betareg" "mansection BAYES bayesbetareg"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[BAYES] bayes" "help bayes_zh"}{...}
{vieweralsosee "[R] betareg" "help betareg_zh"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[BAYES] Bayesian commands" "help bayesian_commands_zh"}{...}
{vieweralsosee "[BAYES] Bayesian estimation" "help bayesian_estimation_zh"}{...}
{vieweralsosee "[BAYES] Bayesian postestimation" "help bayesian_postestimation_zh"}{...}
{vieweralsosee "[BAYES] Glossary" "help bayes_glossary_zh"}{...}
{viewerjumpto "Syntax" "bayes_betareg_zh##syntax"}{...}
{viewerjumpto "Menu" "bayes_betareg_zh##menu"}{...}
{viewerjumpto "Description" "bayes_betareg_zh##description"}{...}
{viewerjumpto "Links to PDF documentation" "bayes_betareg_zh##linkspdf"}{...}
{viewerjumpto "Examples" "bayes_betareg_zh##examples"}{...}
{viewerjumpto "Stored results" "bayes_betareg_zh##results"}
{help bayes_betareg:English Version}
{hline}{...}
{p2colset 1 27 29 2}{...}
{p2col:{bf:[BAYES] bayes: betareg} {hline 2}}贝叶斯beta回归{p_end}
{p2col:}({mansection BAYES bayesbetareg:查看完整的PDF手册条目}){p_end}
{p2colreset}{...}


{marker syntax}{...}
{title:语法}

{p 8 15 2}
{cmd:bayes} [{cmd:,} {it:bayesopts}] {cmd::} {opt betareg}
{depvar} {indepvars}
{ifin}
[{it:{help bayes_betareg##weight:权重}}]
[{cmd:,} {it:选项}]

{synoptset 30 tabbed}{...}
{synopthdr}
{synoptline}
{syntab:模型}
{synopt :{opt nocons:tant}}抑制常数项{p_end}
{synopt :{cmdab:sca:le(}{varlist} [{cmd:,} {cmdab:nocons:tant}{cmd:)}}指定
缩放的自变量{p_end}
{synopt :{opth li:nk(betareg##linkname:linkname)}}指定条件均值的连接函数；
默认为 {cmd:link(logit)}{p_end}
{synopt :{opth sli:nk(betareg##slinkname:slinkname)}}指定条件
缩放的连接函数；默认为 {cmd:slink(log)} {p_end}

{syntab:报告}
{synopt :{it:{help betareg##display_options:显示选项}}}控制
包含帮助短描述显示选项

{synopt :{opt l:evel(#)}}设置可信度水平；默认为 {cmd:level(95)}{p_end}
{synoptline}
包含帮助 fvvarlist2
{marker weight}{...}
{p 4 6 2}
{cmd:fweight}是允许的；见 {help weight_zh}.{p_end}
{p 4 6 2}
{cmd:bayes:} {cmd:betareg,} {cmd:level()} 相当于 
{cmd:bayes,} {cmd:clevel():} {cmd:betareg}.{p_end}
{p 4 6 2}有关 {it:选项} 的详细描述，请参见
{help betareg##options:{it:选项}} 在 {manhelp betareg R}.{p_end}

{marker bayesopts}{...}
{synoptset 30 tabbed}{...}
{synopthdr:bayesopts}
{synoptline}
{marker options_priors}{...}
{syntab:{help bayes##priors_options:先验}}
{p2coldent:* {opt normalpr:ior(#)}}指定回归系数默认正态
先验的标准差；默认为 {cmd:normalprior(100)}{p_end}
包含帮助 bayesecmd_opts
{p2colreset}{...}
{p 4 6 2}模型参数是回归系数
{cmd:{c -(}}{it:depvar}{cmd::}{it:indepvars}{cmd:{c )-}}
用于主回归
和
{cmd:{c -(}scale:}{it:varlist}{cmd:{c )-}} 用于缩放方程。
使用 {cmd:dryrun} 选项可以在估计之前查看模型参数的定义.{p_end}
{p 4 6 2}有关 {it:bayesopts} 的详细描述，请参见
{help bayes##options:{it:选项}} 在 {manhelp bayes BAYES}.{p_end}


{marker menu}{...}
{title:菜单}

{phang}
{bf:统计 > 分数结果 > 贝叶斯beta回归}


{marker description}{...}
{title:描述}

{pstd}
{cmd:bayes: betareg} 拟合一个贝叶斯 beta 回归模型，用于大于 0 
且小于 1 的分数结果；详情请参见 {manhelp bayes BAYES} 和 {manhelp betareg R:betareg} 。


{marker linkspdf}{...}
{title:PDF文档链接}

        {mansection BAYES bayesbetaregQuickstart:快速入门}

        {mansection BAYES bayesbetaregRemarksandexamples:备注和示例}

        {mansection BAYES bayesbetaregMethodsandformulas:方法和公式}

{pstd}
上述部分未包含在此帮助文件中。


{marker examples}{...}
{title:示例}

{pstd}
设置{p_end}
{phang2}{cmd:. webuse sprogram}

{pstd}
拟合具有默认对条件均值的logit连接和条件缩放的log连接的贝叶斯beta回归；使用默认的先验{p_end}
{phang2}{cmd:. bayes: betareg prate i.summer freemeals pdonations}

{pstd}
与上述相同，但将烧入期从默认的2500增加到5000，并在模拟期间显示点{p_end}
{phang2}{cmd:. bayes, burnin(5000) dots: betareg prate i.summer freemeals pdonations}

{pstd}
与上述相同，但使用10的默认正态先验的标准差，并指定随机数种子以便可重复性{p_end}
{phang2}{cmd:. bayes, normalprior(10) burnin(5000) rseed(12345) dots: betareg prate i.summer freemeals pdonations}

{pstd}
为建模条件均值的所有回归系数指定均匀先验{p_end}
{phang2}{cmd:. bayes, prior({prate:i.summer freemeals pdonations _cons}, uniform(-10,10)): betareg prate i.summer freemeals pdonations}

{pstd}
与上述相同，但使用简写符号引用来自方程 {cmd:prate} 的所有回归系数{p_end}
{phang2}{cmd:. bayes, prior({prate:}, uniform(-10,10)): betareg prate i.summer freemeals pdonations}

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
{center:翻译自Stata官方帮助文档 <bayes_betareg.sthlp>}