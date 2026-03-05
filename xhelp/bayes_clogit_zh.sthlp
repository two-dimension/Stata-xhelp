{smcl}
{* *! version 1.0.9  26apr2019}{...}
{viewerdialog "bayes: clogit" "dialog bayes_clogit"}{...}
{vieweralsosee "[BAYES] bayes: clogit" "mansection BAYES bayesclogit"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[BAYES] bayes" "help bayes_zh"}{...}
{vieweralsosee "[R] clogit" "help clogit_zh"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[BAYES] Bayesian commands" "help bayesian_commands_zh"}{...}
{vieweralsosee "[BAYES] Bayesian estimation" "help bayesian_estimation_zh"}{...}
{vieweralsosee "[BAYES] Bayesian postestimation" "help bayesian_postestimation_zh"}{...}
{vieweralsosee "[BAYES] Glossary" "help bayes_glossary_zh"}{...}
{viewerjumpto "Syntax" "bayes_clogit_zh##syntax"}{...}
{viewerjumpto "Menu" "bayes_clogit_zh##menu"}{...}
{viewerjumpto "Description" "bayes_clogit_zh##description"}{...}
{viewerjumpto "Links to PDF documentation" "bayes_clogit_zh##linkspdf"}{...}
{viewerjumpto "Examples" "bayes_clogit_zh##examples"}{...}
{viewerjumpto "Stored results" "bayes_clogit_zh##results"}
{help bayes_clogit:English Version}
{hline}{...}
{p2colset 1 26 28 2}{...}
{p2col:{bf:[BAYES] bayes: clogit} {hline 2}}贝叶斯条件逻辑回归{p_end}
{p2col:}({mansection BAYES bayesclogit:查看完整PDF手册条目}){p_end}
{p2colreset}{...}


{marker syntax}{...}
{title:语法}

{p 8 15 2}
{cmd:bayes} [{cmd:,} {it:bayesopts}] {cmd::} {opt clog:it}
{depvar} [{indepvars}]
{ifin}
[{it:{help bayes_clogit##weight:权重}}]{cmd:,}
{opth gr:oup(varname)}
[{it:选项}]

{synoptset 20 tabbed}{...}
{synopthdr}
{synoptline}
{syntab:模型}
{p2coldent :* {opth gr:oup(varname)}}匹配组变量{p_end}
{synopt :{opth off:set(varname)}}在模型中包括 {it:varname}，其系数被约束为1{p_end}

{syntab:报告}
{synopt :{opt or}}报告赔率比{p_end}
{synopt :{it:{help clogit##display_options:显示选项}}}控制
包括帮助短描述-displayoptbayes

{synopt :{opt l:evel(#)}}设置可信水平；默认为 {cmd:level(95)}{p_end}
{synoptline}
{p 4 6 2}
* {opt group(varname)} 是必需的。{p_end}
包括帮助 fvvarlist
{marker weight}{...}
{p 4 6 2}
允许使用 {cmd:fweight}s；请参见 {help weight_zh}。 {cmd:fweight}s 的解释适用于整个组，而不是个别观察。
请参见 {mansection R clogitRemarksandexamples使用权重:{it:使用权重}}在 {bf:[R] clogit} 中。{p_end}
{p 4 6 2}
{cmd:bayes:} {cmd:clogit,} {cmd:level()} 等价于 
{cmd:bayes,} {cmd:clevel():} {cmd:clogit}.{p_end}
{p 4 6 2}有关 {it:选项} 的详细说明，请参见
{help clogit##options:{it:选项}} 在 {manhelp clogit R} 中。{p_end}

{marker bayesopts}{...}
{synoptset 30 tabbed}{...}
{synopthdr:bayesopts}
{synoptline}
{marker options_priors}{...}
{syntab:{help bayes##priors_options:先验}}
{p2coldent:* {opt normalpr:ior(#)}}指定回归系数默认正态先验的标准差；默认为 {cmd:normalprior(100)}{p_end}
{* INCLUDE help bayesecmd_opts*}
包括帮助 bayesmh_prioropts

{marker options_simulation}{...}
  {syntab:{help bayes##simulation_options:模拟}}
包括帮助 bayesmh_simopts

{marker options_blocking}{...}
  {syntab:{help bayes##blocking_options:阻塞}}
{p2coldent:* {opt blocksize(#)}}最大块大小；默认为 {cmd:blocksize(50)}{p_end}
包括帮助 bayesmh_blockopts
  {p2coldent:* {opt noblock:ing}}默认不阻塞参数{p_end}

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
{p2coldent:* {cmd:or}}报告赔率比{p_end}
包括帮助 bayesecmd_reportopts_special

{marker options_advanced}{...}
  {syntab:{help bayes##advanced_options:高级}}
包括帮助 bayesmh_advancedopts
{synoptline}
{p 4 6 2}* 带星号的选项是特定于 {cmd:bayes} 前缀的；其他选项在 {cmd:bayes} 和 {help bayesmh_zh} 之间是通用的。{p_end}
{p 4 6 2}选项 {cmd:prior()} 和 {cmd:block()} 可以重复。{p_end}
{p 4 6 2}{helpb bayesmh##priorspec:{it:priorspec}} 和
{helpb bayesmh##paramref:{it:paramref}} 在 {manhelp bayesmh BAYES} 中定义。
{p_end}
{p 4 6 2}{it:paramref} 可以包含因子变量；请参见 {help fvvarlist_zh}。
{p_end}
{p 4 6 2}有关估计后可用功能的信息，请参见 {manhelp bayesian_postestimation BAYES:贝叶斯后估计}。{p_end}
{p2colreset}{...}
{p 4 6 2}模型参数是回归系数
{cmd:{c -(}}{it:depvar}{cmd::}{it:indepvars}{cmd:{c )-}}。
使用 {cmd:dryrun} 选项查看模型参数的定义
在估计之前。{p_end}
{p 4 6 2}有关 {it:bayesopts} 的详细说明，请参见
{help bayes##options:{it:选项}} 在 {manhelp bayes BAYES} 中。{p_end}


{marker menu}{...}
{title:菜单}

{phang}
{bf:统计 > 二元结果 > 贝叶斯回归 > 条件逻辑回归}


{marker description}{...}
{title:描述}

{pstd}
{cmd:bayes: clogit} 为匹配病例对照数据拟合贝叶斯条件逻辑回归；
有关详细信息，请参见 {manhelp bayes BAYES} 和 {manhelp clogit R:clogit}。


{marker linkspdf}{...}
{title:PDF文档链接}

        {mansection BAYES bayesclogitQuickstart:快速入门}

        {mansection BAYES bayesclogitRemarksandexamples:备注和示例}

        {mansection BAYES bayesclogitMethodsandformulas:方法和公式}

{pstd}
上述部分未包含在此帮助文件中。


{marker examples}{...}
{title:示例}

{pstd}
设置{p_end}
{phang2}{cmd:. webuse lowbirth2}

{pstd}
使用默认先验拟合贝叶斯条件逻辑回归{p_end}
{phang2}{cmd:. bayes: clogit low lwt smoke ptd ht ui, group(pairid)}

{pstd}
重播结果并报告赔率比{p_end}
{phang2}{cmd:. bayes, or}

{pstd}
将滞后期从默认的 2,500 增加到 5,000，并在模拟期间显示点{p_end}
{phang2}{cmd:. bayes, burnin(5000) dots: clogit low lwt smoke ptd ht ui, group(pairid)}

{pstd}
同上，但使用默认正态先验的标准差为 10 的回归系数{p_end}
{phang2}{cmd:. bayes, normalprior(10) burnin(5000) dots: clogit low lwt smoke ptd ht ui, group(pairid)}

{pstd}
同上，但还指定随机数种子以确保可重现性{p_end}
{phang2}{cmd:. bayes, normalprior(10) burnin(5000) rseed(12345): clogit low lwt smoke ptd ht ui, group(pairid)}

{pstd}
使用均匀先验拟合贝叶斯逻辑回归，适用于所有回归系数{p_end}
{phang2}{cmd:. bayes, prior({low:lwt smoke ptd ht ui _cons}, uniform(-10,10)): clogit low lwt smoke ptd ht ui, group(pairid)}

{pstd}
同上，但使用简化符号来引用所有回归系数{p_end}
{phang2}{cmd:. bayes, prior({low:}, uniform(-10,10)): clogit low lwt smoke ptd ht ui, group(pairid)}

{pstd}
在重播时保存 MCMC 结果{p_end}
{phang2}{cmd:. bayes, saving(mymcmc)}


{marker results}{...}
{title:储存结果}

{pstd}
有关 {help bayes##results:{it:储存结果}} 的详细信息，请参见 {manhelp bayes BAYES}。
{p_end}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <bayes_clogit.sthlp>}