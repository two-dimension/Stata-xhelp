{smcl}
{* *! version 1.0.8  12dec2018}{...}
{viewerdialog "bayes: poisson" "dialog bayes_poisson"}{...}
{vieweralsosee "[BAYES] bayes: poisson" "mansection BAYES bayespoisson"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[BAYES] bayes" "help bayes_zh"}{...}
{vieweralsosee "[R] poisson" "help poisson_zh"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[BAYES] Bayesian commands" "help bayesian_commands_zh"}{...}
{vieweralsosee "[BAYES] Bayesian estimation" "help bayesian_estimation_zh"}{...}
{vieweralsosee "[BAYES] Bayesian postestimation" "help bayesian_postestimation_zh"}{...}
{vieweralsosee "[BAYES] Glossary" "help bayes_glossary_zh"}{...}
{viewerjumpto "Syntax" "bayes_poisson_zh##syntax"}{...}
{viewerjumpto "Menu" "bayes_poisson_zh##menu"}{...}
{viewerjumpto "Description" "bayes_poisson_zh##description"}{...}
{viewerjumpto "Links to PDF documentation" "bayes_poisson_zh##linkspdf"}{...}
{viewerjumpto "Examples" "bayes_poisson_zh##examples"}{...}
{viewerjumpto "Stored results" "bayes_poisson_zh##results"}
{help bayes_poisson:English Version}
{hline}{...}
{p2colset 1 27 29 2}{...}
{p2col:{bf:[BAYES] bayes: poisson} {hline 2}}贝叶斯泊松回归{p_end}
{p2col:}({mansection BAYES bayespoisson:查看完整的 PDF 手册条目}){p_end}
{p2colreset}{...}


{marker syntax}{...}
{title:语法}

{p 8 15 2}
{cmd:bayes} [{cmd:,} {it:bayesopts}] {cmd::} {opt poisson}
{depvar} [{indepvars}]
{ifin}
[{it:{help bayes_poisson##weight:权重}}]
[{cmd:,} {it:选项}]

{synoptset 20 tabbed}{...}
{synopthdr}
{synoptline}
{syntab:模型}
{synopt :{opt nocons:不截距}}不包含常数项{p_end}
{synopt :{opth exp:osure(varname:varname_e)}}在模型中包含 ln({it:varname_e})，系数约束为 1{p_end}
{synopt :{opth off:set(varname:varname_o)}}在模型中包含 {it:varname_o}，系数约束为 1{p_end}

{syntab:报告}
{synopt :{opt ir:r}}报告发生率比{p_end}
{synopt :{it:{help poisson##display_options:显示选项}}}控制
包括帮助短描述显示选项

{synopt :{opt l:evel(#)}}设置可信区间水平；默认值为 {cmd:level(95)}{p_end}
{synoptline}
包括帮助 fvvarlist
{p 4 6 2}
{it:depvar}、{it:indepvars}、{it:varname_e} 和 {it:varname_o} 可以包含时间序列运算符；详见 {help tsvarlist_zh}.{p_end}
{marker weight}{...}
{p 4 6 2}
{cmd:fweight} 被允许；详见 {help weight_zh}.{p_end}
{p 4 6 2}
{cmd:bayes:} {cmd:poisson,} {cmd:level()} 等同于 
{cmd:bayes,} {cmd:clevel():} {cmd:poisson}.{p_end}
{p 4 6 2}有关 {it:选项} 的详细描述，请参见
{help poisson##options:{it:选项}} 在 {manhelp poisson R} 中.{p_end}

{marker bayesopts}{...}
{synoptset 30 tabbed}{...}
{synopthdr:bayesopts}
{synoptline}
{marker options_priors}{...}
{syntab:{help bayes##priors_options:先验}}
{p2coldent:* {opt normalpr:ior(#)}}指定回归系数默认正态先验的标准差；默认值为 {cmd:normalprior(100)}{p_end}
{* INCLUDE help bayesecmd_opts*}
包括帮助 bayesmh_prioropts

{marker options_simulation}{...}
  {syntab:{help bayes##simulation_options:模拟}}
包括帮助 bayesmh_simopts

{marker options_blocking}{...}
  {syntab:{help bayes##blocking_options:阻塞}}
{p2coldent:* {opt blocksize(#)}}最大区块大小；默认值为 {cmd:blocksize(50)}{p_end}
包括帮助 bayesmh_blockopts
  {p2coldent:* {opt noblock:ing}}默认情况下不阻塞参数{p_end}

{marker options_initialization}{...}
  {syntab:{help bayes##initialization_options:初始化}}
包括帮助 bayesmh_initopts
  {p2coldent:* {opt noi:sily}}在初始化期间显示估计命令的输出{p_end}

{marker options_adaptation}{...}
  {syntab:{help bayes##adaptation_options:适应}}
包括帮助 bayesmh_adaptopts

{marker options_reporting}{...}
  {syntab:{help bayes##reporting_options:报告}}
包括帮助 bayes_clevel_hpd_short
{p2coldent:* {opt ir:r}}报告发生率比{p_end}
包括帮助 bayesecmd_reportopts_special

{marker options_advanced}{...}
  {syntab:{help bayes##advanced_options:高级}}
包括帮助 bayesmh_advancedopts
{synoptline}
{p 4 6 2}* 星号选项特定于 {cmd:bayes} 前缀；其他选项在 {cmd:bayes} 和 {help bayesmh_zh} 之间共享.{p_end}
{p 4 6 2}选项 {cmd:prior()} 和 {cmd:block()} 可以重复使用.{p_end}
{p 4 6 2}{helpb bayesmh##priorspec:{it:priorspec}} 和
{helpb bayesmh##paramref:{it:paramref}} 在 {manhelp bayesmh BAYES} 中定义。
{p_end}
{p 4 6 2}{it:paramref} 可以包含因子变量；详见 {help fvvarlist_zh}。
{p_end}
{p 4 6 2}有关估计后可用特性的说明，请参见 {manhelp bayesian_postestimation BAYES:贝叶斯后估计}。{p_end}
{p2colreset}{...}
{p 4 6 2}模型参数是回归系数
{cmd:{c -(}}{it:depvar}{cmd::}{it:indepvars}{cmd:{c )-}}。
使用 {cmd:dryrun} 选项查看模型参数的定义
以便在估计之前查看。{p_end}
{p 4 6 2}有关 {it:bayesopts} 的详细描述，请参见
{help bayes##options:{it:选项}} 在 {manhelp bayes BAYES} 中.{p_end}


{marker menu}{...}
{title:菜单}

{phang}
{bf:统计 > 计数结果 > 贝叶斯回归 > 泊松回归}


{marker description}{...}
{title:描述}

{pstd}
{cmd:bayes: poisson} 为非负计数结果拟合贝叶斯泊松回归；
有关详细信息，请参阅 {manhelp bayes BAYES} 和 {manhelp poisson R:poisson}。


{marker linkspdf}{...}
{title:PDF 文档链接}

        {mansection BAYES bayespoissonQuickstart:快速入门}

        {mansection BAYES bayespoissonRemarksandexamples:备注和示例}

        {mansection BAYES bayespoissonMethodsandformulas:方法和公式}

{pstd}
上述部分未包含在此帮助文件中。


{marker examples}{...}
{title:示例}

{pstd}
设置{p_end}
{phang2}{cmd:. webuse dollhill3}

{pstd}
使用默认先验拟合贝叶斯泊松回归{p_end}
{phang2}{cmd:. bayes: poisson deaths smokes i.agecat, exposure(pyears)}

{pstd}
重放结果并报告发生率比{p_end}
{phang2}{cmd:. bayes, irr}

{pstd}
将烧入期从默认的 2,500 增加到 5,000{p_end}
{phang2}{cmd:. bayes, burnin(5000): poisson deaths smokes i.agecat, exposure(pyears)}

{pstd}
与上面相同，但使用默认正态先验的标准差为 10 
用于回归系数{p_end}
{phang2}{cmd:. bayes, normalprior(10) burnin(5000):}
          {cmd:poisson deaths smokes i.agecat, exposure(pyears)}

{pstd}
与上面相同，但还指定随机数种子以保证可重复性{p_end}
{phang2}{cmd:. bayes, normalprior(10) burnin(5000) rseed(12345):}
          {cmd:poisson deaths smokes i.agecat, exposure(pyears)}

{pstd}
使用所有回归系数的均匀先验拟合贝叶斯泊松回归{p_end}
{phang2}{cmd:. bayes, prior({deaths:smokes i.agecat _cons}, uniform(-10,10)): poisson deaths smokes i.agecat, exposure(pyears)}

{pstd}
与上面相同，但使用快捷符号表示所有回归系数{p_end}
{phang2}{cmd:. bayes, prior({deaths:}, uniform(-10,10)): poisson deaths smokes i.agecat, exposure(pyears)}

{pstd}
重放时保存 MCMC 结果{p_end}
{phang2}{cmd:. bayes, saving(mymcmc)}


{marker results}{...}
{title:存储结果}

{pstd}
有关存储结果的详细信息，请参见 {help bayes##results:{it:存储结果}} 在 {manhelp bayes BAYES} 中。
{p_end}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <bayes_poisson.sthlp>}