{smcl}
{* *! version 1.0.8  12dec2018}{...}
{viewerdialog "bayes: heckman" "dialog bayes_heckman"}{...}
{vieweralsosee "[BAYES] bayes: heckman" "mansection BAYES bayesheckman"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[BAYES] bayes" "help bayes_zh"}{...}
{vieweralsosee "[R] heckman" "help heckman_zh"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[BAYES] Bayesian commands" "help bayesian_commands_zh"}{...}
{vieweralsosee "[BAYES] Bayesian estimation" "help bayesian_estimation_zh"}{...}
{vieweralsosee "[BAYES] Bayesian postestimation" "help bayesian_postestimation_zh"}{...}
{vieweralsosee "[BAYES] Glossary" "help bayes_glossary_zh"}{...}
{viewerjumpto "Syntax" "bayes_heckman_zh##syntax"}{...}
{viewerjumpto "Menu" "bayes_heckman_zh##menu"}{...}
{viewerjumpto "Description" "bayes_heckman_zh##description"}{...}
{viewerjumpto "Links to PDF documentation" "bayes_heckman_zh##linkspdf"}{...}
{viewerjumpto "Examples" "bayes_heckman_zh##examples"}{...}
{viewerjumpto "Stored results" "bayes_heckman_zh##results"}
{help bayes_heckman:English Version}
{hline}{...}
{p2colset 1 27 29 2}{...}
{p2col:{bf:[BAYES] bayes: heckman} {hline 2}}贝叶斯 Heckman 选择模型{p_end}
{p2col:}({mansection BAYES bayesheckman:查看完整 PDF 手册条目}){p_end}
{p2colreset}{...}


{marker syntax}{...}
{title:语法}

{p 8 15 2}
{cmd:bayes} [{cmd:,} {it:bayesopts}] {cmd::} {opt heckman}
{depvar} [{indepvars}]
{ifin}
[{it:{help bayes_heckman##weight:权重}}]{cmd:,}
    {opt sel:ect}{cmd:(}[{it:{help depvar:因变量}} {cmd:=}]
    {it:{help varlist_zh:变量列表}} [{cmd:,} 
    {opt nocons:常数项} {opth off:set(varname:偏置变量名)}]{cmd:)} 
[{it:选项}]

{synoptset 20 tabbed}{...}
{synopthdr}
{synoptline}
{syntab:模型}
{p2coldent :* {opt sel:ect()}}指定选择方程：因变量和自变量；是否包含常数项和偏置变量{p_end}
{synopt :{opt nocons:常数项}}抑制常数项{p_end}
{synopt :{opth off:set(varname)}}在模型中包含 {it:varname}，其系数固定为 1{p_end}

{syntab:报告}
{synopt :{it:{help heckman##display_options:显示选项}}}控制
包括帮助简短描述-显示选项

{synopt :{opt l:evel(#)}}设置可信水平；默认为 {cmd:level(95)}{p_end}
{synoptline}
{p 4 6 2}
* {opt select()} 为必填项。完整的规格为{break}
{opt sel:ect}{cmd:(}[{it:depvar_s} {cmd:=}] {it:varlist_s}
[{cmd:,} {opt nocons:常数项} {opt off:set(varname_o)}]{cmd:)}。
{p_end}
{p 4 6 2}{it:indepvars} 和 {it:varlist_s} 可以包含因子变量；见
{help fvvarlist_zh}.{p_end}
{p 4 6 2}
{it:depvar}、{it:indepvars}、{it:varlist_s} 和 {it:depvar_s} 可以包含
时间序列运算符；见 {help tsvarlist_zh}.{p_end}
{marker weight}{...}
{p 4 6 2}
{cmd:fweight} 被允许；见 {help weight_zh}.{p_end}
{p 4 6 2}
{cmd:bayes:} {cmd:heckman,} {cmd:level()} 等同于 
{cmd:bayes,} {cmd:clevel():} {cmd:heckman}.{p_end}
{p 4 6 2}有关 {it:选项} 的详细描述，请见
{help heckman##options_ml:{it:Heckman 选择模型（最大似然法）选项}}和
{help heckman##options_twostep:{it:Heckman 选择模型（两步法）选项}} 在 {manhelp heckman R}.{p_end}

{marker bayesopts}{...}
{synoptset 30 tabbed}{...}
{synopthdr:bayesopts}
{synoptline}
{marker options_priors}{...}
{syntab:{help bayes##priors_options:先验}}
{p2coldent:* {opt normalpr:ior(#)}}指定回归系数默认正态先验的标准差；默认为 {cmd:normalprior(100)}{p_end}
INCLUDE help bayesecmd_opts
{p2colreset}{...}
{p 4 6 2}模型参数为回归系数
{cmd:{c -(}}{it:depvar}{cmd::}{it:indepvars}{cmd:{c )-}}
用于主回归和
{cmd:{c -(}select:}{it:varlist_2}{cmd:{c )-}}
用于选择方程，反正切转化相关性
{cmd:{c -(}athrho{c )-}}，以及对数标准差
{cmd:{c -(}lnsigma{c )-}}。
使用 {cmd:dryrun} 选项查看
模型参数的定义，然后进行估计。{p_end}
{p 4 6 2}有关 {it:bayesopts} 的详细描述，请见
{help bayes##options:{it:选项}} 在 {manhelp bayes BAYES}.{p_end}


{marker menu}{...}
{title:菜单}

{phang}
{bf:统计 > 线性模型和相关 > 贝叶斯回归 > Heckman 选择模型}


{marker description}{...}
{title:描述}

{pstd}
{cmd:bayes: heckman} 拟合一个贝叶斯样本选择线性回归
用于部分观察的连续结果；
详情见 {manhelp bayes BAYES} 和 {manhelp heckman R:heckman}。


{marker linkspdf}{...}
{title:PDF 文档链接}

        {mansection BAYES bayesheckmanQuickstart:快速入门}

        {mansection BAYES bayesheckmanRemarksandexamples:备注和示例}

        {mansection BAYES bayesheckmanMethodsandformulas:方法与公式}

{pstd}
上述部分未包含在此帮助文件中。


{marker examples}{...}
{title:示例}

{pstd}
设置{p_end}
{phang2}{cmd:. webuse womenwk}

{pstd}
拟合贝叶斯 Heckman 选择模型，指定在模拟过程中显示点{p_end}
{phang2}{cmd:. bayes, dots: heckman wage educ age, select(married children educ age)}

{pstd}
计算 rho、sigma 和 lambda 的后验摘要，逆变换
模型参数 {cmd:{athrho}} 和 {cmd:{lnsigma}}{p_end}
{phang2}{cmd:. bayesstats summary (rho:1-2/(exp(2*{athrho})+1)) (sigma:exp({lnsigma})) (lambda:exp({lnsigma})*(1-2/(exp(2*{athrho})+1)))}

{pstd}
使用默认正态先验的标准差 10 的回归系数，并指定随机数种子以确保可重复性{p_end}
{phang2}{cmd:. bayes, normalprior(10) rseed(12345) dots:}
          {cmd:heckman wage educ age, select(married children educ age)}

{pstd}
拟合贝叶斯 Heckman 选择模型，对主方程中的所有回归系数使用均匀先验{p_end}
{phang2}{cmd:. bayes, prior({wage:educ age _cons}, uniform(-5,5)) dots:}
          {cmd:heckman wage educ age, select(married children educ age)}

{pstd}
与上面相同，但使用简写表示法引用主方程中的所有回归系数{p_end}
{phang2}{cmd:. bayes, prior({wage:}, uniform(-5,5)) dots:}
          {cmd:heckman wage educ age, select(married children educ age)}

{pstd}
如上，但对选择方程中的所有回归系数使用另一均匀先验{p_end}
{phang2}{cmd:. bayes, prior({wage:}, uniform(-5,5))} 
          {cmd:prior({select:}, uniform(-10,10)) dots:}
          {cmd:heckman wage educ age, select(married children educ age)}

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
{center:翻译自Stata官方帮助文档 <bayes_heckman.sthlp>}