{smcl}
{* *! version 1.0.8  12doc2018}{...}
{viewerdialog "bayes: zioprobit" "dialog bayes_zioprobit"}{...}
{vieweralsosee "[BAYES] bayes: zioprobit" "mansection BAYES bayeszioprobit"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[BAYES] bayes" "help bayes_zh"}{...}
{vieweralsosee "[R] zioprobit" "help zioprobit_zh"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[BAYES] Bayesian commands" "help bayesian_commands_zh"}{...}
{vieweralsosee "[BAYES] Bayesian estimation" "help bayesian_estimation_zh"}{...}
{vieweralsosee "[BAYES] Bayesian postestimation" "help bayesian_postestimation_zh"}{...}
{vieweralsosee "[BAYES] Glossary" "help bayes_glossary_zh"}{...}
{viewerjumpto "Syntax" "bayes_zioprobit_zh##syntax"}{...}
{viewerjumpto "Menu" "bayes_zioprobit_zh##menu"}{...}
{viewerjumpto "Description" "bayes_zioprobit_zh##description"}{...}
{viewerjumpto "Links to PDF documentation" "bayes_zioprobit_zh##linkspdf"}{...}
{viewerjumpto "Examples" "bayes_zioprobit_zh##examples"}{...}
{viewerjumpto "Stored results" "bayes_zioprobit_zh##results"}
{help bayes_zioprobit:English Version}
{hline}{...}
{p2colset 1 29 31 2}{...}
{p2col:{bf:[BAYES] bayes: zioprobit} {hline 2}}贝叶斯零膨胀有序概率回归{p_end}
{p2col:}({mansection BAYES bayeszioprobit:查看完整的 PDF 手册条目}){p_end}
{p2colreset}{...}


{marker syntax}{...}
{title:语法}

{p 8 15 2}
{cmd:bayes} [{cmd:,} {it:bayesopts}] {cmd::} {opt zioprobit}
{depvar} [{indepvars}]
{ifin}
[{it:{help bayes_zioprobit##weight:权重}}]{cmd:,}
{opt inf:late}{cmd:(}{varlist}[{cmd:,} {opt nocons:不包含} {opth off:set(varname)}]|{cmd:_cons)}
[{it:选项}]

{synoptset 20 tabbed}{...}
{synopthdr}
{synoptline}
{syntab:模型}
{p2coldent :* {opt inf:late()}}决定过剩零值的方程{p_end}
{synopt :{opth off:set(varname)}}将 {it:varname} 包含在系数约束为 1 的模型中{p_end}

{syntab:报告}
{synopt :{it:{help zioprobit##display_options:显示选项}}}控制
包括帮助短描述-显示选项 bayes

{synopt :{opt l:evel(#)}}设置可信水平；默认值为 {cmd:level(95)}{p_end}
{synoptline}
{p 4 6 2}
* {opt inf:late}{cmd:(}{it:varlist}[{cmd:,} {opt nocons:不包含} {opt off:set(varname)}]|{cmd:_cons)}
是必需的.{p_end}
包括帮助 fvvarlist2
{marker weight}{...}
{p 4 6 2}
{cmd:fweight} 被允许；见 {help weight_zh}.{p_end}
{p 4 6 2}
{cmd:bayes:} {cmd:zioprobit,} {cmd:level()} 等同于 
{cmd:bayes,} {cmd:clevel():} {cmd:zioprobit}.{p_end}
{p 4 6 2}有关 {it:选项} 的详细描述，见
{help zioprobit##options:{it:选项}} 在 {manhelp zioprobit R}.{p_end}

{marker bayesopts}{...}
{synoptset 30 tabbed}{...}
{synopthdr:bayesopts}
{synoptline}
{marker options_priors}{...}
{syntab:{help bayes##priors_options:先验}}
{p2coldent:* {opt normalpr:ior(#)}}指定回归系数默认正态先验的标准差；默认值为 {cmd:normalprior(100)}{p_end}
包括帮助 bayesecmd_opts
{p2colreset}{...}
{p 4 6 2}模型参数是回归系数
{cmd:{c -(}}{it:depvar}{cmd::}{it:indepvars}{cmd:{c )-}}
用于主回归和
{cmd:{c -(}inflate:}{it:varlist}{cmd:{c )-}}
用于膨胀方程和截断点
{cmd:{c -(}cut1{c )-}},
{cmd:{c -(}cut2{c )-}}，等等。
使用 {cmd:dryrun} 选项查看模型参数的定义以便于估计.{p_end}
{p 4 6 2}默认情况下，截断点使用平坦先验 {cmd:flat}.{p_end}
{p 4 6 2}有关 {it:bayesopts} 的详细描述，见
{help bayes##options:{it:选项}} 在 {manhelp bayes BAYES}.{p_end}


{marker menu}{...}
{title:菜单}

{phang}
{bf:统计 > 有序结果 > 贝叶斯回归 > 零膨胀有序概率回归}


{marker description}{...}
{title:描述}

{pstd}
{cmd:bayes: zioprobit} 拟合贝叶斯零膨胀有序概率回归于具有高零值比例的有序结果；
详情请参见 {manhelp bayes BAYES} 和 {manhelp zioprobit R:zioprobit}。


{marker linkspdf}{...}
{title:PDF 文档链接}

        {mansection BAYES bayeszioprobitQuickstart:快速入门}

        {mansection BAYES bayeszioprobitRemarksandexamples:备注和示例}

        {mansection BAYES bayeszioprobitMethodsandformulas:方法和公式}

{pstd}
以上部分未包含在此帮助文件中。


{marker examples}{...}
{title:示例}

{pstd}
设置{p_end}
{phang2}{cmd:. webuse tobacco}{p_end}
{phang2}{cmd:. set seed 12345}{p_end}
{phang2}{cmd:. sample 1}{p_end}

{pstd}
使用默认先验拟合贝叶斯零膨胀有序概率回归{p_end}
{phang2}{cmd:. bayes: zioprobit tobacco educ, inflate(educ parent)}

{pstd}
检查所有模型参数的有效性{p_end}
{phang2}{cmd:. bayesstats ess}

{pstd}
将烧入期从默认的 2,500 增加到 5,000，并使用
均值为零、方差为 10 的信息性正态先验作为 
截断点{p_end}
{phang2}{cmd:. bayes, burnin(5000) prior({cut1 cut2 cut3}, normal(0,10)): zioprobit tobacco educ, inflate(educ parent)}

{pstd}
与上面相同，但还指定随机数种子以便重复性{p_end}
{phang2}{cmd:. bayes, burnin(5000) prior({cut1 cut2 cut3}, normal(0,10)) rseed(123): zioprobit tobacco educ, inflate(educ parent)}

{pstd}
使用均匀先验拟合贝叶斯有序概率回归，针对
膨胀方程中的回归系数使用均匀先验，
而对截断点使用正态先验{p_end}
{phang2}{cmd:. bayes, prior({inflate:educ parent  _cons}, uniform(-5,5))}{p_end}
            {cmd:prior({cut1 cut2 cut3}, normal(0,10)):}
            {cmd:zioprobit tobacco educ, inflate(educ parent)}

{pstd}
与上面相同，但使用快捷符号来引用
膨胀方程中的回归系数{p_end}
{phang2}{cmd:. bayes, prior({inflate:}, uniform(-5,5))}{p_end}
            {cmd:prior({cut1 cut2 cut3}, normal(0,10)):}
            {cmd:zioprobit tobacco educ, inflate(educ parent)}

{pstd}
与上面相同，但还使用相同的均匀先验
用于主方程中的回归系数{p_end}
{phang2}{cmd:. bayes, prior({inflate:}, uniform(-5,5))}{p_end}
            {cmd:prior({tobacco:}, uniform(-5,5))}
            {cmd:prior({cut1 cut2 cut3}, normal(0,10)):}
            {cmd:zioprobit tobacco educ, inflate(educ parent)}

{pstd}
在重放时保存 MCMC 结果{p_end}
{phang2}{cmd:. bayes, saving(mymcmc)}


{marker results}{...}
{title:存储结果}

{pstd}
请参见 {help bayes##results:{it:存储结果}} 在 {manhelp bayes BAYES}。
{p_end}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <bayes_zioprobit.sthlp>}