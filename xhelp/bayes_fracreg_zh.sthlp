{smcl}
{* *! version 1.0.9  12dec2018}{...}
{viewerdialog "bayes: fracreg" "dialog bayes_fracreg"}{...}
{vieweralsosee "[BAYES] bayes: fracreg" "mansection BAYES bayesfracreg"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[BAYES] bayes" "help bayes_zh"}{...}
{vieweralsosee "[R] fracreg" "help fracreg_zh"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[BAYES] Bayesian commands" "help bayesian_commands_zh"}{...}
{vieweralsosee "[BAYES] Bayesian estimation" "help bayesian_estimation_zh"}{...}
{vieweralsosee "[BAYES] Bayesian postestimation" "help bayesian_postestimation_zh"}{...}
{vieweralsosee "[BAYES] Glossary" "help bayes_glossary_zh"}{...}
{viewerjumpto "Syntax" "bayes_fracreg_zh##syntax"}{...}
{viewerjumpto "Menu" "bayes_fracreg_zh##menu"}{...}
{viewerjumpto "Description" "bayes_fracreg_zh##description"}{...}
{viewerjumpto "Links to PDF documentation" "bayes_fracreg_zh##linkspdf"}{...}
{viewerjumpto "Examples" "bayes_fracreg_zh##examples"}{...}
{viewerjumpto "Stored results" "bayes_fracreg_zh##results"}
{help bayes_fracreg:English Version}
{hline}{...}
{p2colset 1 27 29 2}{...}
{p2col:{bf:[BAYES] bayes: fracreg} {hline 2}}贝叶斯分数响应回归{p_end}
{p2col:}({mansection BAYES bayesfracreg:查看完整PDF手册条目}){p_end}
{p2colreset}{...}


{marker syntax}{...}
{title:语法}

{pstd}
分数概率回归的语法

{p 8 15 2}
{cmd:bayes} [{cmd:,} {it:bayesopts}] {cmd::} {opt fracreg} {opt pr:obit}
{depvar} [{indepvars}]
{ifin}
[{it:{help bayes_fracreg##weight:权重}}]
[{cmd:,} {it:选项}]


{pstd}
分数逻辑回归的语法

{p 8 15 2}
{cmd:bayes} [{cmd:,} {it:bayesopts}] {cmd::} {opt fracreg} {opt log:it}
{depvar} [{indepvars}]
{ifin}
[{it:{help fracreg##weight:权重}}]
[{cmd:,} {it:选项}]


{pstd}
分数异方差概率回归的语法

{p 8 15 2}
{cmd:bayes} [{cmd:,} {it:bayesopts}] {cmd::} {opt fracreg} {opt pr:obit}
{depvar} [{indepvars}]
{ifin}
[{it:{help fracreg##weight:权重}}]{cmd:,}
{cmd:het(}{varlist}[{cmd:,}
{opth off:set(varname:varname_o)}]{cmd:)}
[{it:选项}]


{synoptset 35 tabbed}{...}
{synopthdr}
{synoptline}
{syntab:模型}
{synopt :{opt nocons:tant}}抑制常数项{p_end}
{synopt :{opt off:set(varname)}}将 {it:varname} 包含在模型中，系数约束为1{p_end}
{p2coldent:* {cmd:het(}{varlist}[{cmd:,} {opth off:set(varname:varname_o)}]}独立变量建模方差和可能的偏移变量，使用 {cmd:fracreg probit}{p_end}

{syntab:报告}
{synopt :{opt or}}报告比值比；仅适用于 {cmd:fracreg logit}{p_end}
{synopt :{it:{help fracreg##display_options:显示选项}}}控制
包含帮助短描述-displayoptbayes

{synopt :{opt l:evel(#)}}设置可信水平；默认值为 {cmd:level(95)}{p_end}
{synoptline}
{p 4 6 2}* {cmd:het()} 仅可与 {cmd:fracreg probit} 一起使用以计算分数异方差概率回归。{p_end}
包含帮助 fvvarlist
{p 4 6 2}
{it:depvar} 和 {it:indepvars} 可以包含
时间序列运算符；请参见 {help tsvarlist_zh}.{p_end}
{marker weight}{...}
{p 4 6 2}
{cmd:fweight} 是允许的；请参见 {help weight_zh}.{p_end}
{p 4 6 2}
{cmd:bayes:} {cmd:fracreg,} {cmd:level()} 等价于 
{cmd:bayes,} {cmd:clevel():} {cmd:fracreg}.{p_end}
{p 4 6 2}有关 {it:选项} 的详细描述，请参见
{help fracreg##options:{it:选项}} 在 {manhelp fracreg R}.{p_end}

{marker bayesopts}{...}
{synoptset 30 tabbed}{...}
{synopthdr:bayesopts}
{synoptline}
{marker options_priors}{...}
{syntab:{help bayes##priors_options:先验}}
{p2coldent:* {opt normalpr:ior(#)}}指定回归系数默认正态先验的标准差；默认值为 {cmd:normalprior(100)}{p_end}
{* INCLUDE help bayesecmd_opts*}
包含帮助 bayesmh_prioropts

{marker options_simulation}{...}
  {syntab:{help bayes##simulation_options:仿真}}
包含帮助 bayesmh_simopts

{marker options_blocking}{...}
  {syntab:{help bayes##blocking_options:阻塞}}
{p2coldent:* {opt blocksize(#)}}最大块大小；默认值为 {cmd:blocksize(50)}{p_end}
包含帮助 bayesmh_blockopts
  {p2coldent:* {opt noblock:ing}}默认情况下不阻塞参数{p_end}

{marker options_initialization}{...}
  {syntab:{help bayes##initialization_options:初始化}}
包含帮助 bayesmh_initopts
  {p2coldent:* {opt noi:sily}}在初始化期间显示估计命令的输出{p_end}

{marker options_adaptation}{...}
  {syntab:{help bayes##adaptation_options:适应性}}
包含帮助 bayesmh_adaptopts

{marker options_reporting}{...}
  {syntab:{help bayes##reporting_options:报告}}
包含帮助 bayes_clevel_hpd_short
{p2coldent:* {cmd:or}}报告比值比{p_end}
包含帮助 bayesecmd_reportopts_special

{marker options_advanced}{...}
  {syntab:{help bayes##advanced_options:高级}}
包含帮助 bayesmh_advancedopts
{synoptline}
{p 4 6 2}* 星号选项特定于 {cmd:bayes} 前缀；其他选项在 {cmd:bayes} 和 {help bayesmh_zh} 之间是通用的。{p_end}
{p 4 6 2}选项 {cmd:prior()} 和 {cmd:block()} 可重复使用。{p_end}
{p 4 6 2}{helpb bayesmh##priorspec:{it:priorspec}} 和
{helpb bayesmh##paramref:{it:paramref}} 在 {manhelp bayesmh BAYES}中定义。
{p_end}
{p 4 6 2}{it:paramref} 可以包含因子变量；请参见 {help fvvarlist_zh}。
{p_end}
{p 4 6 2}请参阅 {manhelp bayesian_postestimation BAYES:贝叶斯后验估计} 以获取估计后可用的功能。{p_end}
{p2colreset}{...}
{p 4 6 2}模型参数是回归系数
{cmd:{c -(}}{it:depvar}{cmd::}{it:indepvars}{cmd:{c )-}} 和，如果
指定了选项 {opt het()}，回归系数
{cmd:{c -(}lnsigma:}{it:varlist}{cmd:{c )-}} 用于对数标准差方程。
使用 {cmd:dryrun} 选项查看模型参数的定义
在估计之前。{p_end}
{p 4 6 2}有关 {it:bayesopts} 的详细描述，请参见
{help bayes##options:{it:选项}} 在 {manhelp bayes BAYES}.{p_end}


{marker menu}{...}
{title:菜单}

{phang}
{bf:统计 > 分数结果 > 贝叶斯分数回归}


{marker description}{...}
{title:描述}

{pstd}
{cmd:bayes: fracreg} 为一个分数结果拟合贝叶斯分数响应回归，其值大于或等于0且小于或等于1；
请参阅 {manhelp bayes BAYES} 和 {manhelp fracreg R:fracreg} 获取详细信息。


{marker linkspdf}{...}
{title:链接到PDF文档}

        {mansection BAYES bayesfracregQuickstart:快速入门}

        {mansection BAYES bayesfracregRemarksandexamples:备注和示例}

        {mansection BAYES bayesfracregMethodsandformulas:方法和公式}

{pstd}
以上部分不包括在此帮助文件中。


{marker examples}{...}
{title:示例}

{pstd}
设置{p_end}
{phang2}{cmd:. webuse 401k}

{pstd}
使用默认先验拟合贝叶斯分数概率回归{p_end}
{phang2}{cmd:. bayes: fracreg probit prate mrate ltotemp age i.sole}

{pstd}
与上述相同，但将烧入期从默认的2500增加到5000，并在仿真期间显示点{p_end}
{phang2}{cmd:. bayes, burnin(5000) dots: fracreg probit prate mrate ltotemp age i.sole}

{pstd}
与上述相同，但使用默认正态先验的标准差为10，并指定随机数种子以确保可再现性{p_end}
{phang2}{cmd:. bayes, normalprior(10) burnin(5000) rseed(12345) dots: fracreg probit prate mrate ltotemp age i.sole}

{pstd}
为所有回归系数指定均匀先验；使用选项 {cmd:dryrun} 
检查模型规范{p_end}
{phang2}{cmd:. bayes, prior({prate:mrate ltotemp age i.sole _cons}, uniform(-5,5)) dryrun: fracreg probit prate mrate ltotemp age i.sole}

{pstd}
拟合上述模型，但不显示模型摘要{p_end}
{phang2}{cmd:. bayes, prior({prate:mrate ltotemp age i.sole _cons}, uniform(-5,5)) nomodelsummary: fracreg probit prate mrate ltotemp age i.sole}

{pstd}
与上述相同，但使用捷径符号引用所有回归
系数{p_end}
{phang2}{cmd:. bayes, prior({prate:}, uniform(-5,5)) nomodelsummary: fracreg probit prate mrate ltotemp age i.sole}

{pstd}
保存MCMC结果以供重放{p_end}
{phang2}{cmd:. bayes, saving(mymcmc)}


{marker results}{...}
{title:存储的结果}

{pstd}
请参见 {help bayes##results:{it:存储的结果}} 在 {manhelp bayes BAYES}。
{p_end}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <bayes_fracreg.sthlp>}