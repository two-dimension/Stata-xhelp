{smcl}
{* *! version 1.0.9  12dec2018}{...}
{viewerdialog "bayes: gnbreg" "dialog bayes_gnbreg"}{...}
{vieweralsosee "[BAYES] bayes: gnbreg" "mansection BAYES bayesgnbreg"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[BAYES] bayes" "help bayes_zh"}{...}
{vieweralsosee "[R] nbreg" "help nbreg_zh"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[BAYES] Bayesian commands" "help bayesian_commands_zh"}{...}
{vieweralsosee "[BAYES] Bayesian estimation" "help bayesian_estimation_zh"}{...}
{vieweralsosee "[BAYES] Bayesian postestimation" "help bayesian_postestimation_zh"}{...}
{vieweralsosee "[BAYES] Glossary" "help bayes_glossary_zh"}{...}
{viewerjumpto "语法" "bayes_gnbreg_zh##syntax"}{...}
{viewerjumpto "菜单" "bayes_gnbreg_zh##menu"}{...}
{viewerjumpto "描述" "bayes_gnbreg_zh##description"}{...}
{viewerjumpto "PDF文档链接" "bayes_gnbreg_zh##linkspdf"}{...}
{viewerjumpto "示例" "bayes_gnbreg_zh##examples"}{...}
{viewerjumpto "存储结果" "bayes_gnbreg_zh##results"}
{help bayes_gnbreg:English Version}
{hline}{...}
{p2colset 1 26 28 2}{...}
{p2col:{bf:[BAYES] bayes: gnbreg} {hline 2}}贝叶斯广义负二项回归{p_end}
{p2col:}({mansection BAYES bayesgnbreg:查看完整的PDF手册条目}){p_end}
{p2colreset}{...}


{marker syntax}{...}
{title:语法}

{p 8 15 2}
{cmd:bayes} [{cmd:,} {it:bayesopts}] {cmd::} {opt gnbreg}
{depvar} [{indepvars}]
{ifin}
[{it:{help bayes_gnbreg##weight:权重}}]
[{cmd:,} {it:选项}]

{synoptset 20 tabbed}{...}
{synopthdr}
{synoptline}
{syntab:模型}
{synopt :{opt nocons:tant}}抑制常数项{p_end}
{synopt :{opth lna:lpha(varlist)}}分散模型变量{p_end}
{synopt :{opth exp:osure(varname:varname_e)}}将 ln({it:varname_e}) 包含在模型中，并将系数约束为 1{p_end}
{synopt :{opth off:set(varname:varname_o)}}将 {it:varname_o} 包含在模型中，并将系数约束为 1{p_end}

{syntab:报告}
{synopt :{opt ir:r}}报告发生率比{p_end}
{synopt :{it:{help gnbreg##display_options:显示选项}}}控制
INCLUDE help shortdes-displayoptbayes

{synopt :{opt l:evel(#)}}设置可信度水平；默认值为 {cmd:level(95)}{p_end}
{synoptline}
INCLUDE help fvvarlist2
{marker weight}{...}
{p 4 6 2}
{cmd:fweight}被允许；见 {help weight_zh}.{p_end}
{p 4 6 2}
{cmd:bayes:} {cmd:gnbreg,} {cmd:level()} 等同于 
{cmd:bayes,} {cmd:clevel():} {cmd:gnbreg}.{p_end}
{p 4 6 2}有关 {it:选项} 的详细描述，请参见
{help gnbreg##options_gnbreg:{it:选项}} 在 {manhelp nbreg R}.{p_end}

{marker bayesopts}{...}
{synoptset 30 tabbed}{...}
{synopthdr:bayesopts}
{synoptline}
{marker options_priors}{...}
{syntab:{help bayes##priors_options:先验}}
{p2coldent:* {opt normalpr:ior(#)}}指定回归系数和对数超分散参数的默认正态先验的标准差；默认值为 {cmd:normalprior(100)}{p_end}
{* INCLUDE help bayesecmd_opts*}
INCLUDE help bayesmh_prioropts

{marker options_simulation}{...}
  {syntab:{help bayes##simulation_options:模拟}}
INCLUDE help bayesmh_simopts

{marker options_blocking}{...}
  {syntab:{help bayes##blocking_options:分块}}
{p2coldent:* {opt blocksize(#)}}最大块大小；默认值为 {cmd:blocksize(50)}{p_end}
INCLUDE help bayesmh_blockopts
  {p2coldent:* {opt noblock:ing}}默认情况下不对参数进行分块{p_end}

{marker options_initialization}{...}
  {syntab:{help bayes##initialization_options:初始化}}
INCLUDE help bayesmh_initopts
  {p2coldent:* {opt noi:sily}}在初始化期间显示估计命令的输出{p_end}

{marker options_adaptation}{...}
  {syntab:{help bayes##adaptation_options:适应性}}
INCLUDE help bayesmh_adaptopts

{marker options_reporting}{...}
  {syntab:{help bayes##reporting_options:报告}}
INCLUDE help bayes_clevel_hpd_short
{p2coldent:* {opt ir:r}}报告发生率比{p_end}
INCLUDE help bayesecmd_reportopts_special

{marker options_advanced}{...}
  {syntab:{help bayes##advanced_options:高级}}
INCLUDE help bayesmh_advancedopts
{synoptline}
{p 4 6 2}* 带星标的选项是特定于 {cmd:bayes} 前缀的；其他选项在 {cmd:bayes} 和 {help bayesmh_zh}之间是共享的.{p_end}
{p 4 6 2}选项 {cmd:prior()} 和 {cmd:block()} 可以重复使用.{p_end}
{p 4 6 2}{helpb bayesmh##priorspec:{it:priorspec}} 和
{helpb bayesmh##paramref:{it:paramref}} 在 {manhelp bayesmh BAYES} 中定义。
{p_end}
{p 4 6 2}{it:paramref} 可以包含因子变量；见 {help fvvarlist_zh}。
{p_end}
{p 4 6 2}见 {manhelp bayesian_postestimation BAYES:贝叶斯后估计} 以获取估计后可用的功能.{p_end}
{p2colreset}{...}
{p 4 6 2}模型参数为回归系数
{cmd:{c -(}}{it:depvar}{cmd::}{it:indepvars}{cmd:{c )-}}
针对主要回归和
{cmd:{c -(}lnalpha:}{it:varlist}{cmd:{c )-}}
对于对数分散方程。
使用 {cmd:dryrun} 选项以查看估计前模型参数的定义.{p_end}
{p 4 6 2}有关 {it:bayesopts} 的详细描述，请参见
{help bayes##options:{it:选项}} 在 {manhelp bayes BAYES}.{p_end}


{marker menu}{...}
{title:菜单}

{phang}
{bf:统计 > 计数结果 > 贝叶斯回归 > 广义负二项回归}


{marker description}{...}
{title:描述}

{pstd}
{cmd:bayes: gnbreg} 适配贝叶斯广义负二项回归
到非负计数结果；
有关详细信息，请参见 {manhelp bayes BAYES} 和 {manhelp nbreg R}。


{marker linkspdf}{...}
{title:PDF文档链接}

        {mansection BAYES bayesgnbregQuickstart:快速开始}

        {mansection BAYES bayesgnbregRemarksandexamples:备注和示例}

        {mansection BAYES bayesgnbregMethodsandformulas:方法和公式}

{pstd}
上述部分未包含在此帮助文件中。


{marker examples}{...}
{title:示例}

{pstd}
设置{p_end}
{phang2}{cmd:. webuse rod93}

{pstd}
使用默认的先验对每个队列的不同超分散参数拟合贝叶斯广义负二项回归{p_end}
{phang2}{cmd:. bayes: gnbreg deaths age_mos, exposure(exp) lnalpha(i.cohort)}

{pstd}
将烧入期从默认值 2,500 增加到 5,000，并显示点以监控模拟进度{p_end}
{phang2}{cmd:. bayes, burnin(5000) dots: gnbreg deaths age_mos, exposure(exp) lnalpha(i.cohort)}

{pstd}
与上述相同，但使用默认正态先验的标准差为 10{p_end}
{phang2}{cmd:. bayes, normalprior(10) burnin(5000) dots:}
          {cmd:gnbreg deaths age_mos, exposure(exp) lnalpha(i.cohort)}

{pstd}
与上述相同，但还指定随机数种子以提高可重复性{p_end}
{phang2}{cmd:. bayes, normalprior(10) burnin(5000) dots rseed(12345):}
          {cmd:gnbreg deaths age_mos, exposure(exp) lnalpha(i.cohort)}

{pstd}
使用主方程中的均匀先验拟合贝叶斯广义负二项回归{p_end}
{phang2}{cmd:. bayes, prior({deaths:age_mos _cons}, uniform(-10,10)): gnbreg deaths age_mos, exposure(exp) lnalpha(i.cohort)}

{pstd}
与上述相同，但使用快捷符号引用主方程中所有回归系数{p_end}
{phang2}{cmd:. bayes, prior({deaths:}, uniform(-10,10)): gnbreg deaths age_mos, exposure(exp) lnalpha(i.cohort)}

{pstd}
在两个方程中对回归系数使用均匀先验{p_end}
{phang2}{cmd:. bayes, prior({deaths:} {lnalpha:}, uniform(-10,10)): gnbreg deaths age_mos, exposure(exp) lnalpha(i.cohort)}

{pstd}
在重放时显示 90% 最高后验密度 (HPD) 可信区间{p_end}
{phang2}{cmd:. bayes, clevel(90) hpd}

{pstd}
在重放时保存 MCMC 结果{p_end}
{phang2}{cmd:. bayes, saving(mymcmc)}


{marker results}{...}
{title:存储结果}

{pstd}
见 {help bayes##results:{it:存储结果}} 在 {manhelp bayes BAYES}。
{p_end}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <bayes_gnbreg.sthlp>}