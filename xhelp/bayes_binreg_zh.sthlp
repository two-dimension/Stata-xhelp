{smcl}
{* *! version 1.0.9  12dec2018}{...}
{viewerdialog "bayes: binreg" "dialog bayes_binreg"}{...}
{vieweralsosee "[BAYES] bayes: binreg" "mansection BAYES bayesbinreg"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[BAYES] bayes" "help bayes_zh"}{...}
{vieweralsosee "[R] binreg" "help binreg_zh"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[BAYES] Bayesian commands" "help bayesian_commands_zh"}{...}
{vieweralsosee "[BAYES] Bayesian estimation" "help bayesian_estimation_zh"}{...}
{vieweralsosee "[BAYES] Bayesian postestimation" "help bayesian_postestimation_zh"}{...}
{vieweralsosee "[BAYES] Glossary" "help bayes_glossary_zh"}{...}
{viewerjumpto "Syntax" "bayes_binreg_zh##syntax"}{...}
{viewerjumpto "Menu" "bayes_binreg_zh##menu"}{...}
{viewerjumpto "Description" "bayes_binreg_zh##description"}{...}
{viewerjumpto "Links to PDF documentation" "bayes_binreg_zh##linkspdf"}{...}
{viewerjumpto "Examples" "bayes_binreg_zh##examples"}{...}
{viewerjumpto "Stored results" "bayes_binreg_zh##results"}
{help bayes_binreg:English Version}
{hline}{...}
{p2colset 1 26 28 2}{...}
{p2col:{bf:[BAYES] bayes: binreg} {hline 2}}贝叶斯广义线性模型：对二项家族的扩展{p_end}
{p2col:}({mansection BAYES bayesbinreg:查看完整的 PDF 手册条目}){p_end}
{p2colreset}{...}


{marker syntax}{...}
{title:语法}

{p 8 15 2}
{cmd:bayes} [{cmd:,} {it:bayesopts}] {cmd::} {opt binreg}
{depvar} [{indepvars}]
{ifin}
[{it:{help bayes_binreg##weight:权重}}]
[{cmd:,} {it:选项}]

{synoptset 20 tabbed}{...}
{synopthdr}
{synoptline}
{syntab:模型}
{synopt :{opt nocons:不含常数项}}抑制常数项{p_end}
{synopt :{opt or}}使用对数几率链接并报告几率比{p_end}
{synopt :{opt rr}}使用对数链接并报告风险比{p_end}
{synopt :{opt hr}}使用对数补链接并报告健康比{p_end}
{synopt :{opt rd}}使用恒等链接并报告风险差{p_end}
{synopt :{cmd:n(}{it:#}|{it:{help varname_zh}}{cmd:)}}使用 {it:#} 或 {it:varname} 作为试验次数{p_end}
{synopt :{opth exp:osure(varname)}}在模型中包括 ln({it:varname})，
系数被约束为 1{p_end}
{synopt :{opth off:set(varname)}}在模型中包含 {it:varname}， 系数被约束为 1{p_end}
{synopt :{opth mu(varname)}}使用 {it:varname} 作为 {depvar} 均值的初始估计{p_end}
{synopt :{opth ini:t(varname)}} {opt mu(varname)} 的同义词{p_end}

{syntab:报告}
{synopt :{cmdab:系数:报告非指数化系数}{p_end}
{synopt :{it:{help binreg##display_options:显示选项}}}控制
INCLUDE help shortdes-displayoptbayes

{synopt :{opt l:evel(#)}} 设置可信水平；默认值为 {cmd:level(95)}{p_end}
{synoptline}
INCLUDE help fvvarlist
{p 4 6 2}
{it:depvar} 和 {it:indepvars} 可以包含
时间序列操作符；详见 {help tsvarlist_zh}.{p_end}
{marker weight}{...}
{p 4 6 2}
{cmd:fweight} 是允许的；见 {help weight_zh}.{p_end}
{p 4 6 2}
{cmd:bayes:} {cmd:binreg,} {cmd:level()} 相当于 
{cmd:bayes,} {cmd:clevel():} {cmd:binreg}.{p_end}
{p 4 6 2}有关 {it:选项} 的详细描述，请参见
{help binreg##options:{it:选项}} 在 {manhelp binreg R} 中。
{cmd:binreg} 的选项 {cmd:ml} 在使用 {cmd:bayes: binreg} 时是隐含的。{p_end}

{marker bayesopts}{...}
{synoptset 30 tabbed}{...}
{synopthdr:bayesopts}
{synoptline}
{marker options_priors}{...}
{syntab:{help bayes##priors_options:先验}}
{p2coldent:* {opt normalpr:ior(#)}}指定回归系数的默认正态先验的标准差；默认值为 {cmd:normalprior(100)}{p_end}
{* INCLUDE help bayesecmd_opts*}
INCLUDE help bayesmh_prioropts

{marker options_simulation}{...}
  {syntab:{help bayes##simulation_options:仿真}}
INCLUDE help bayesmh_simopts

{marker options_blocking}{...}
  {syntab:{help bayes##blocking_options:阻塞}}
{p2coldent:* {opt blocksize(#)}}最大块大小；默认值为 {cmd:blocksize(50)}{p_end}
INCLUDE help bayesmh_blockopts
  {p2coldent:* {opt noblock:ing}}默认情况下不阻塞参数{p_end}

{marker options_initialization}{...}
  {syntab:{help bayes##initialization_options:初始化}}
INCLUDE help bayesmh_initopts
  {p2coldent:* {opt noi:sily}}在初始化期间显示估计命令的输出{p_end}

{marker options_adaptation}{...}
  {syntab:{help bayes##adaptation_options:适应}}
INCLUDE help bayesmh_adaptopts

{marker options_reporting}{...}
  {syntab:{help bayes##reporting_options:报告}}
INCLUDE help bayes_clevel_hpd_short
{synopt:{cmdab:系数:报告非指数化系数}{p_end}
INCLUDE help bayesecmd_reportopts_special

{marker options_advanced}{...}
  {syntab:{help bayes##advanced_options:高级}}
INCLUDE help bayesmh_advancedopts
{synoptline}
{p 4 6 2}* 带星号的选项是特定于 {cmd:bayes} 前缀的；其他
选项在 {cmd:bayes} 和 {help bayesmh_zh} 之间是通用的。{p_end}
{p 4 6 2}选项 {cmd:prior()} 和 {cmd:block()} 可以重复。{p_end}
{p 4 6 2}{helpb bayesmh##priorspec:{it:priorspec}} 和
{helpb bayesmh##paramref:{it:paramref}} 在 {manhelp bayesmh BAYES} 中定义。
{p_end}
{p 4 6 2}{it:paramref} 可以包含因子变量；见 {help fvvarlist_zh}。
{p_end}
{p 4 6 2}参见 {manhelp bayesian_postestimation BAYES:贝叶斯后估计} 获取估计后可用的功能。{p_end}
{p2colreset}{...}
{p 4 6 2}模型参数是回归系数
{cmd:{c -(}}{it:depvar}{cmd::}{it:indepvars}{cmd:{c )-}}。
使用 {cmd:dryrun} 选项查看模型参数的定义
在估计之前。{p_end}
{p 4 6 2}有关 {it:bayesopts} 的详细描述，请参阅
{help bayes##options:{it:选项}} 在 {manhelp bayes BAYES} 中。{p_end}


{marker menu}{...}
{title:菜单}

{phang}
{bf:统计 > 广义线性模型 > 二项族的贝叶斯 GLM}


{marker description}{...}
{title:描述}

{pstd}
{cmd:bayes: binreg} 适合一个贝叶斯二项回归模型于二元
结果，假设不同的链接函数；
有关详细信息，请参见 {manhelp bayes BAYES} 和 {manhelp binreg R:binreg}。


{marker linkspdf}{...}
{title:PDF 文档链接}

        {mansection BAYES bayesbinregQuickstart:快速开始}

        {mansection BAYES bayesbinregRemarksandexamples:备注和示例}

        {mansection BAYES bayesbinregMethodsandformulas:方法和公式}

{pstd}
上述部分不包含在此帮助文件中。


{marker examples}{...}
{title:示例}

{pstd}
设置{p_end}
{phang2}{cmd:. webuse binreg}

{pstd}
使用默认先验的对数补链接拟合贝叶斯二项回归{p_end}
{phang2}{cmd:. bayes: binreg n_lbw_babies i.soc i.alc i.smo, n(n_women) hr}

{pstd}
显示系数而不是健康比{p_end}
{phang2}{cmd:. bayes, coef}

{pstd}
将烧入时间从默认的 2,500 增加到 3,000{p_end}
{phang2}{cmd:. bayes, burnin(3000): binreg n_lbw_babies i.soc i.alc i.smo, n(n_women) hr}

{pstd}
与上述相同，但对于回归系数的默认正态先验使用标准差为 10{p_end}
{phang2}{cmd:. bayes, normalprior(10) burnin(3000): binreg n_lbw_babies i.soc i.alc i.smo, n(n_women) hr}

{pstd}
与上述相同，但还指定随机数种子以确保可重复性{p_end}
{phang2}{cmd:. bayes, normalprior(10) burnin(3000) rseed(12345): binreg n_lbw_babies i.soc i.alc i.smo, n(n_women) hr}

{pstd}
对所有回归系数使用均匀的先验{p_end}
{phang2}{cmd:. bayes, prior({n_lbw_babies:i.soc i.alc i.smo _cons}, uniform(-10,10)): binreg n_lbw_babies i.soc i.alc i.smo, n(n_women) hr}

{pstd}
与上述相同，但使用简写方式引用所有回归系数{p_end}
{phang2}{cmd:. bayes, prior({n_lbw_babies:}, uniform(-10,10)): binreg n_lbw_babies i.soc i.alc i.smo, n(n_women) hr}

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
{center:翻译自Stata官方帮助文档 <bayes_binreg.sthlp>}