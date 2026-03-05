{smcl}
{* *! version 1.0.9  12dec2018}{...}
{viewerdialog "bayes: intreg" "dialog bayes_intreg"}{...}
{vieweralsosee "[BAYES] bayes: intreg" "mansection BAYES bayesintreg"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[BAYES] bayes" "help bayes_zh"}{...}
{vieweralsosee "[R] intreg" "help intreg_zh"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[BAYES] Bayesian commands" "help bayesian_commands_zh"}{...}
{vieweralsosee "[BAYES] Bayesian estimation" "help bayesian_estimation_zh"}{...}
{vieweralsosee "[BAYES] Bayesian postestimation" "help bayesian_postestimation_zh"}{...}
{vieweralsosee "[BAYES] Glossary" "help bayes_glossary_zh"}{...}
{viewerjumpto "Syntax" "bayes_intreg_zh##syntax"}{...}
{viewerjumpto "Menu" "bayes_intreg_zh##menu"}{...}
{viewerjumpto "Description" "bayes_intreg_zh##description"}{...}
{viewerjumpto "Links to PDF documentation" "bayes_intreg_zh##linkspdf"}{...}
{viewerjumpto "Examples" "bayes_intreg_zh##examples"}{...}
{viewerjumpto "Stored results" "bayes_intreg_zh##results"}
{help bayes_intreg:English Version}
{hline}{...}
{p2colset 1 26 28 2}{...}
{p2col:{bf:[BAYES] bayes: intreg} {hline 2}}贝叶斯区间回归{p_end}
{p2col:}({mansection BAYES bayesintreg:查看完整的 PDF 手册条目}){p_end}
{p2colreset}{...}


{marker syntax}{...}
{title:语法}

{p 8 15 2}
{cmd:bayes} [{cmd:,} {it:bayesopts}] {cmd::} {opt intreg}
{it:{help depvar:depvar1}}
{it:{help depvar:depvar2}}
[{indepvars}]
{ifin}
[{it:{help bayes_intreg##weight:weight}}]
[{cmd:,} {it:options}]

{synoptset 30 tabbed}{...}
{synopthdr}
{synoptline}
{syntab:模型}
{synopt :{opt nocons:tant}}抑制常数项{p_end}
{synopt :{cmdab:h:et(}{varlist} [{cmd:,} {opt nocons:tant}]{cmd:)}}独立变量用于建模方差；使用 {opt noconstant} 抑制常数项{p_end}
{synopt :{opth off:set(varname)}}在模型中包含 {it:varname}，其系数被约束为 1{p_end}

{syntab:报告}
{synopt :{it:{help intreg##display_options:display_options}}}控制
包含帮助短描述显示选项

{synopt :{opt l:evel(#)}}设置可信水平；默认为 {cmd:level(95)}{p_end}
{synoptline}
包含帮助 fvvarlist2
{p 4 6 2}
{it:depvar1}、{it:depvar2}、{it:indepvars} 和 {it:varlist} 可能包含时间序列运算符；请参见 {help tsvarlist_zh}.{p_end}
{marker weight}{...}
{p 4 6 2}
{cmd:fweight} 被允许；请参见 {help weight_zh}.{p_end}
{p 4 6 2}
{cmd:bayes:} {cmd:intreg,} {cmd:level()} 等价于 
{cmd:bayes,} {cmd:clevel():} {cmd:intreg}.{p_end}
{p 4 6 2}有关 {it:options} 的详细描述，请参见
{help intreg##options:{it:选项}} 在 {manhelp intreg R}.{p_end}

{marker bayesopts}{...}
{synoptset 30 tabbed}{...}
{synopthdr:bayesopts}
{synoptline}
{marker options_priors}{...}
{syntab:{help bayes##priors_options:先验}} 
{p2coldent:* {opt normalpr:ior(#)}}指定回归系数和对数方差的默认正态先验的标准差；默认为 {cmd:normalprior(100)}{p_end}
包含帮助 bayesecmd_opts
{p2colreset}{...}
{p 4 6 2}模型参数是回归系数
{cmd:{c -(}}{it:depvar1}{cmd::}{it:indepvars}{cmd:{c )-}} 和
对数标准偏差 {cmd:{c -(}lnsigma{c )-}}，或者如果指定了选项
{opth het(varlist)}，则为对数标准偏差方程的系数
{cmd:{c -(}lnsigma:}{it:varlist}{cmd:{c )-}}。使用 {cmd:dryrun} 选项查看模型参数的定义，估计之前的结果.{p_end}
{p 4 6 2}有关 {it:bayesopts} 的详细描述，请参见
{help bayes##options:{it:选项}} 在 {manhelp bayes BAYES}.{p_end}


{marker menu}{...}
{title:菜单}

{phang}
{bf:统计 > 线性模型及相关 > 贝叶斯回归 > 区间回归}


{marker description}{...}
{title:描述}

{pstd}
{cmd:bayes: intreg} 拟合贝叶斯区间回归，适用于连续的、区间测量的结果；
有关详细信息，请参见 {manhelp bayes BAYES} 和 {manhelp intreg R:intreg}。


{marker linkspdf}{...}
{title:PDF 文档链接}

        {mansection BAYES bayesintregQuickstart:快速入门}

        {mansection BAYES bayesintregRemarksandexamples:备注和示例}

        {mansection BAYES bayesintregMethodsandformulas:方法和公式}

{pstd}
上述部分未包含在此帮助文件中。


{marker examples}{...}
{title:示例}

{pstd}
我们有一个包含工资的数据集，工资是截断的，并且分为几个类别。部分工资观察值为

        {cmd:wage1}    {cmd:wage2}
{p 8 27 2}20{space 7}25{space 6} 表示 20,000 <= 工资 <= 25,000{p_end}
{p 8 27 2}50{space 8}.{space 6} 表示 工资 >= 50,000

{pstd}
设置{p_end}
{phang2}{cmd:. webuse intregxmpl}{p_end}

{pstd}
拟合贝叶斯区间回归，在仿真过程中指定点{p_end}
{phang2}{cmd:. bayes, dots: intreg wage1 wage2 age rural school tenure}

{pstd}
与上面相同，但将预热（burn-in）期从默认的 2,500 增加到 5,000，并指定随机数种子以便可重现{p_end}
{phang2}{cmd:. bayes, burnin(5000) rseed(12345) dots: intreg wage1 wage2 age rural school tenure}

{pstd}
使用 10 的标准偏差，而不是默认正态先验的 100 作为回归系数的标准差{p_end}
{phang2}{cmd:. bayes, normalprior(10): intreg wage1 wage2 age rural school tenure}

{pstd}
使用所有回归系数的均匀先验拟合贝叶斯区间回归{p_end}
{phang2}{cmd:. bayes, prior({wage1:age rural school tenure _cons}, uniform(-100,100)): intreg wage1 wage2 age rural school tenure}

{pstd}
与上面相同，但使用简写符号来引用所有回归系数{p_end}
{phang2}{cmd:. bayes, prior({wage1:}, uniform(-100,100)): intreg wage1 wage2 age rural school tenure}

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
{center:翻译自Stata官方帮助文档 <bayes_intreg.sthlp>}