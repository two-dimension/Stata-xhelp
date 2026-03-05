{smcl}
{* *! version 1.0.10  15jan2019}{...}
{viewerdialog "bayes: hetprobit" "dialog bayes_hetprobit"}{...}
{vieweralsosee "[BAYES] bayes: hetprobit" "mansection BAYES bayeshetprobit"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[BAYES] bayes" "help bayes_zh"}{...}
{vieweralsosee "[R] hetprobit" "help hetprobit_zh"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[BAYES] Bayesian commands" "help bayesian_commands_zh"}{...}
{vieweralsosee "[BAYES] Bayesian estimation" "help bayesian_estimation_zh"}{...}
{vieweralsosee "[BAYES] Bayesian postestimation" "help bayesian_postestimation_zh"}{...}
{vieweralsosee "[BAYES] Glossary" "help bayes_glossary_zh"}{...}
{viewerjumpto "Syntax" "bayes_hetprobit_zh##syntax"}{...}
{viewerjumpto "Menu" "bayes_hetprobit_zh##menu"}{...}
{viewerjumpto "Description" "bayes_hetprobit_zh##description"}{...}
{viewerjumpto "Links to PDF documentation" "bayes_hetprobit_zh##linkspdf"}{...}
{viewerjumpto "Examples" "bayes_hetprobit_zh##examples"}{...}
{viewerjumpto "Stored results" "bayes_hetprobit_zh##results"}
{help bayes_hetprobit:English Version}
{hline}{...}
{p2colset 1 29 31 2}{...}
{p2col:{bf:[BAYES] bayes: hetprobit} {hline 2}}贝叶斯异方差概率回归{p_end}
{p2col:}({mansection BAYES bayeshetprobit:查看完整的PDF手册条目}){p_end}
{p2colreset}{...}


{marker syntax}{...}
{title:语法}

{p 8 15 2}
{cmd:bayes} [{cmd:,} {it:bayesopts}] {cmd::} {opt hetprobit}
{depvar} [{indepvars}]
{ifin}
[{it:{help bayes_hetprobit##weight:权重}}]{cmd:,}
{cmd:het(}{varlist} [{cmd:,} {opth off:set(varname:varname_o)}]{cmd:)}
[{it:选项}]

{synoptset 20 tabbed}{...}
{synopthdr}
{synoptline}
{syntab:模型}
{p2coldent :* {cmd:het(}{varlist}[...]{cmd:)}}用于建模方差的自变量和可能的偏移变量{p_end}
{synopt :{opt nocons:常数项}}抑制常数项{p_end}
{synopt :{opth off:set(varname)}}在模型中包含 {it:varname}，其系数被约束为1{p_end}
{synopt :{opt asis}}保留完美的预测变量{p_end}

{syntab:报告}
{synopt :{it:{help hetprobit##display_options:显示选项}}}控制
INCLUDE help shortdes-displayoptbayes

{synopt :{opt l:evel(#)}}设定可信区间；默认值为 {cmd:level(95)}{p_end}
{synoptline}
{p 4 6 2}
* {opt het()} 是必需的。完整的规范为{break}
     {cmd:het(}{it:varlist} [{cmd:,} {opt off:set(varname_o)}]{cmd:)}。
{p_end}
INCLUDE help fvvarlist2
{p 4 6 2}
{it:depvar}、{it:indepvars} 和 {it:varlist} 可以包含时间序列操作符；请参见 {help tsvarlist_zh}。{p_end}
{marker weight}{...}
{p 4 6 2}
允许使用 {cmd:fweight}；请参见 {help weight_zh}。{p_end}
{p 4 6 2}
{cmd:bayes:} {cmd:hetprobit,} {cmd:level()} 等同于 
{cmd:bayes,} {cmd:clevel():} {cmd:hetprobit}。{p_end}
{p 4 6 2}有关 {it:options} 的详细描述，请参阅
{help hetprobit##options:{it:选项}} 在 {manhelp hetprobit R}中。{p_end}

{marker bayesopts}{...}
{synoptset 30 tabbed}{...}
{synopthdr:bayesopts}
{synoptline}
{marker options_priors}{...}
{syntab:{help bayes##priors_options:先验}}
{p2coldent:* {opt normalpr:ior(#)}}指定默认正态先验的标准差
用于回归系数和对数方差系数；默认值为 {cmd:normalprior(100)}{p_end}
INCLUDE help bayesecmd_opts
{p2colreset}{...}
{p 4 6 2}模型参数是回归系数
{cmd:{c -(}}{it:depvar}{cmd::}{it:indepvars}{cmd:{c )-}}
用于主要回归和
{cmd:{c -(}lnsigma:}{it:varlist}{cmd:{c )-}}
用于对数方差方程。
使用 {cmd:dryrun} 选项可以在估计之前查看模型参数的定义。{p_end}
{p 4 6 2}有关 {it:bayesopts} 的详细描述，请参阅
{help bayes##options:{it:选项}} 在 {manhelp bayes BAYES}中。{p_end}


{marker menu}{...}
{title:菜单}

{phang}
{bf:统计 > 二元结果 > 贝叶斯回归 > 异方差概率回归}


{marker description}{...}
{title:描述}

{pstd}
{cmd:bayes: hetprobit} 适合于二元结果的贝叶斯异方差概率回归；
有关详细信息，请参见 {manhelp bayes BAYES} 和 {manhelp hetprobit R:hetprobit}。


{marker linkspdf}{...}
{title:PDF文档链接}

        {mansection BAYES bayeshetprobitQuickstart:快速入门}

        {mansection BAYES bayeshetprobitRemarksandexamples:说明和示例}

        {mansection BAYES bayeshetprobitMethodsandformulas:方法和公式}

{pstd}
上述部分未包含在此帮助文件中。


{marker examples}{...}
{title:示例}

{pstd}
设置{p_end}
{phang2}{cmd:. webuse hetprobxmpl}

{pstd}
使用默认先验拟合贝叶斯异方差概率模型，并使用
{cmd:xhet} 来建模方差{p_end}
{phang2}{cmd:. bayes: hetprobit y x, het(xhet)}

{pstd}
与上述相同，但将烧入期从默认的
2,500 增加到 5,000，并在模拟过程中显示点{p_end}
{phang2}{cmd:. bayes, burnin(5000) dots: hetprobit y x, het(xhet)}

{pstd}
与上述相同，但使用默认正态先验的标准差 10
用于回归系数，并指定随机数种子以确保可重现性{p_end}
{phang2}{cmd:. bayes, normalprior(10) burnin(5000) rseed(12345) dots: hetprobit y x, het(xhet)}

{pstd}
为主方程中的所有回归系数指定均匀先验{p_end}
{phang2}{cmd:. bayes, prior({y:x _cons}, uniform(-10,10)): hetprobit y x, het(xhet)}

{pstd}
与上述相同，但使用快捷符号引用主方程中的所有回归系数{p_end}
{phang2}{cmd:. bayes, prior({y:}, uniform(-10,10)): hetprobit y x, het(xhet)}

{pstd}
保存 MCMC 结果以便重播{p_end}
{phang2}{cmd:. bayes, saving(mymcmc)}


{marker results}{...}
{title:存储结果}

{pstd}
请参见 {help bayes##results:{it:存储结果}} 在 {manhelp bayes BAYES}中。
{p_end}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <bayes_hetprobit.sthlp>}