{smcl}
{* *! version 1.0.8  12dec2018}{...}
{viewerdialog "bayes: oprobit" "dialog bayes_oprobit"}{...}
{vieweralsosee "[BAYES] bayes: oprobit" "mansection BAYES bayesoprobit"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[BAYES] bayes" "help bayes_zh"}{...}
{vieweralsosee "[R] oprobit" "help oprobit_zh"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[BAYES] Bayesian commands" "help bayesian_commands_zh"}{...}
{vieweralsosee "[BAYES] Bayesian estimation" "help bayesian_estimation_zh"}{...}
{vieweralsosee "[BAYES] Bayesian postestimation" "help bayesian_postestimation_zh"}{...}
{vieweralsosee "[BAYES] Glossary" "help bayes_glossary_zh"}{...}
{viewerjumpto "Syntax" "bayes_oprobit_zh##syntax"}{...}
{viewerjumpto "Menu" "bayes_oprobit_zh##menu"}{...}
{viewerjumpto "Description" "bayes_oprobit_zh##description"}{...}
{viewerjumpto "Links to PDF documentation" "bayes_oprobit_zh##linkspdf"}{...}
{viewerjumpto "Examples" "bayes_oprobit_zh##examples"}{...}
{viewerjumpto "Stored results" "bayes_oprobit_zh##results"}
{help bayes_oprobit:English Version}
{hline}{...}
{p2colset 1 27 29 2}{...}
{p2col:{bf:[BAYES] bayes: oprobit} {hline 2}}贝叶斯有序 Probit 回归{p_end}
{p2col:}({mansection BAYES bayesoprobit:查看完整的 PDF 手册条目}){p_end}
{p2colreset}{...}


{marker syntax}{...}
{title:语法}

{p 8 15 2}
{cmd:bayes} [{cmd:,} {it:bayesopts}] {cmd::} {opt oprob:it}
{depvar} [{indepvars}]
{ifin}
[{it:{help bayes_oprobit##weight:权重}}]
[{cmd:,} {it:选项}]

{synoptset 20 tabbed}{...}
{synopthdr}
{synoptline}
{syntab:模型}
{synopt :{opth off:set(varname)}}将 {it:varname} 包含在模型中，系数约束为 1{p_end}

{syntab:报告}
{synopt :{it:{help oprobit##display_options:显示选项}}}控制
INCLUDE help shortdes-displayoptbayes

{synopt :{opt l:evel(#)}}设置置信水平；默认值为 {cmd:level(95)}{p_end}
{synoptline}
INCLUDE help fvvarlist
{p 4 6 2}
{it:depvar} 和 {it:indepvars} 可以包含
时间序列运算符；请参见 {help tsvarlist_zh}.{p_end}
{marker weight}{...}
{p 4 6 2}
{cmd:fweight} 被允许；请参见 {help weight_zh}.{p_end}
{p 4 6 2}
{cmd:bayes:} {cmd:oprobit,} {cmd:level()} 等同于 
{cmd:bayes,} {cmd:clevel():} {cmd:oprobit}.{p_end}
{p 4 6 2}有关 {it:选项} 的详细描述，参见
{help oprobit##options:{it:选项}} 在 {manhelp oprobit R} 中.{p_end}

{marker bayesopts}{...}
{synoptset 30 tabbed}{...}
{synopthdr:bayesopts}
{synoptline}
{marker options_priors}{...}
{syntab:{help bayes##priors_options:先验}}
{p2coldent:* {opt normalpr:ior(#)}}指定回归系数的默认正态先验的标准差；默认值为 {cmd:normalprior(100)}{p_end}
INCLUDE help bayesecmd_opts
{p2colreset}{...}
{p 4 6 2}模型参数是回归系数
{cmd:{c -(}}{it:depvar}{cmd::}{it:indepvars}{cmd:{c )-}} 和切点
{cmd:{c -(}cut1{c )-}},
{cmd:{c -(}cut2{c )-}}, 依此类推。
使用 {cmd:dryrun} 选项以在估计之前查看模型参数的定义.{p_end}
{p 4 6 2}默认对切点使用平坦的先验 {cmd:flat}.{p_end}
{p 4 6 2}有关 {it:bayesopts} 的详细描述，参见
{help bayes##options:{it:选项}} 在 {manhelp bayes BAYES} 中.{p_end}


{marker menu}{...}
{title:菜单}

{phang}
{bf:统计 > 有序结果 > 贝叶斯回归 > 有序 Probit 回归}


{marker description}{...}
{title:描述}

{pstd}
{cmd:bayes: oprobit} 为一个有序结果拟合贝叶斯有序 Probit 回归；
有关详细信息，请参见 {manhelp bayes BAYES} 和 {manhelp oprobit R:oprobit}。


{marker linkspdf}{...}
{title:PDF 文档链接}

        {mansection BAYES bayesoprobitQuickstart:快速入门}

        {mansection BAYES bayesoprobitRemarksandexamples:备注和示例}

        {mansection BAYES bayesoprobitMethodsandformulas:方法和公式}

{pstd}
上述部分不包括在此帮助文件中。


{marker examples}{...}
{title:示例}

{pstd}
设置{p_end}
{phang2}{cmd:. webuse fullauto}

{pstd}
使用默认先验拟合贝叶斯有序 Probit 回归{p_end}
{phang2}{cmd:. bayes: oprobit rep77 mpg foreign}

{pstd}
将烧入期从默认的 2,500 增加到 5,000{p_end}
{phang2}{cmd:. bayes, burnin(5000): oprobit rep77 mpg foreign}

{pstd}
与上面相同，但对于回归系数使用默认正态先验的标准差为 10{p_end}
{phang2}{cmd:. bayes, normalprior(10) burnin(5000):}
          {cmd:oprobit rep77 mpg foreign}

{pstd}
与上面相同，但还指定随机数种子以确保可重复性{p_end}
{phang2}{cmd:. bayes, normalprior(10) burnin(5000) rseed(12345):}
          {cmd:oprobit rep77 mpg foreign}

{pstd}
使用所有回归系数的均匀先验和切点的正态先验拟合贝叶斯有序 Probit 回归{p_end}
{phang2}{cmd:. bayes, prior({rep77:mpg foreign}, uniform(-5,5))}{p_end}
            {cmd:prior({cut1 cut2 cut3 cut4}, normal(0,10)):}
            {cmd:oprobit rep77 mpg foreign}

{pstd}
与上面相同，但使用快捷方式引用所有回归系数{p_end}
{phang2}{cmd:. bayes, prior({rep77:}, uniform(-5,5))}{p_end}
            {cmd:prior({cut1 cut2 cut3 cut4}, normal(0,10)):}
            {cmd:oprobit rep77 mpg foreign}

{pstd}
在重放时保存 MCMC 结果{p_end}
{phang2}{cmd:. bayes, saving(mymcmc)}


{marker results}{...}
{title:存储结果}

{pstd}
请参见 {help bayes##results:{it:存储结果}} 在 {manhelp bayes BAYES} 中。
{p_end}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <bayes_oprobit.sthlp>}