{smcl}
{* *! version 1.0.9  12dec2018}{...}
{viewerdialog "bayes: nbreg" "dialog bayes_nbreg"}{...}
{vieweralsosee "[BAYES] bayes: nbreg" "mansection BAYES bayesnbreg"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[BAYES] bayes" "help bayes_zh"}{...}
{vieweralsosee "[R] nbreg" "help nbreg_zh"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[BAYES] Bayesian commands" "help bayesian_commands_zh"}{...}
{vieweralsosee "[BAYES] Bayesian estimation" "help bayesian_estimation_zh"}{...}
{vieweralsosee "[BAYES] Bayesian postestimation" "help bayesian_postestimation_zh"}{...}
{vieweralsosee "[BAYES] Glossary" "help bayes_glossary_zh"}{...}
{viewerjumpto "Syntax" "bayes_nbreg_zh##syntax"}{...}
{viewerjumpto "Menu" "bayes_nbreg_zh##menu"}{...}
{viewerjumpto "Description" "bayes_nbreg_zh##description"}{...}
{viewerjumpto "Links to PDF documentation" "bayes_nbreg_zh##linkspdf"}{...}
{viewerjumpto "Examples" "bayes_nbreg_zh##examples"}{...}
{viewerjumpto "Stored results" "bayes_nbreg_zh##results"}
{help bayes_nbreg:English Version}
{hline}{...}
{p2colset 1 25 27 2}{...}
{p2col:{bf:[BAYES] bayes: nbreg} {hline 2}}贝叶斯负二项回归{p_end}
{p2col:}({mansection BAYES bayesnbreg:查看完整的 PDF 手册条目}){p_end}
{p2colreset}{...}


{marker syntax}{...}
{title:语法}

{p 8 15 2}
{cmd:bayes} [{cmd:,} {it:bayesopts}] {cmd::} {opt nbreg}
{depvar} [{indepvars}]
{ifin}
[{it:{help bayes_nbreg##weight:权重}}]
[{cmd:,} {it:选项}]

{synoptset 24 tabbed}{...}
{synopthdr}
{synoptline}
{syntab:模型}
{synopt :{opt nocons:tant}}抑制常数项{p_end}
{synopt :{cmdab:d:ispersion(}{opt m:ean}{cmd:)}}离散参数化；默认值{p_end}
{synopt :{cmdab:d:ispersion(}{opt c:onstant}{cmd:)}}所有观察值的常数离散{p_end}
{synopt :{opth exp:osure(varname:varname_e)}}在模型中包含 ln({it:varname_e})，系数约束为1{p_end}
{synopt :{opth off:set(varname:varname_o)}}在模型中包含 {it:varname_o}，系数约束为1{p_end}

{syntab:报告}
{synopt :{opt ir:r}}报告发生率比{p_end}
{synopt :{it:{help nbreg##display_options:显示选项}}}控制
包含帮助短描述显示选项

{synopt :{opt l:evel(#)}}设置可信水平；默认是 {cmd:level(95)}{p_end}
{synoptline}
包含帮助通用变量列表
{p 4 6 2}
{it:depvar}, {it:indepvars}, {it:varname_e} 和 {it:varname_o} 可能包含时间序列操作符；参见 {help tsvarlist_zh}.{p_end}
{marker weight}{...}
{p 4 6 2}
{cmd:fweight} 是允许的；参见 {help weight_zh}.{p_end}
{p 4 6 2}
{cmd:bayes:} {cmd:nbreg,} {cmd:level()} 等同于 
{cmd:bayes,} {cmd:clevel():} {cmd:nbreg}.{p_end}
{p 4 6 2}有关 {it:选项} 的详细描述，请参见
{help nbreg##options_nbreg:{it:nbreg 的选项}} 在 {manhelp nbreg R}.{p_end}

{marker bayesopts}{...}
{synoptset 30 tabbed}{...}
{synopthdr:bayesopts}
{synoptline}
{marker options_priors}{...}
{syntab:{help bayes##priors_options:先验}}
{p2coldent:* {opt normalpr:ior(#)}}指定回归系数和对数超离散参数的默认正态先验的标准差；默认是 {cmd:normalprior(100)}{p_end}
{* 包含帮助 bayesecmd_opts*}
包含帮助 bayesmh_prioropts

{marker options_simulation}{...}
  {syntab:{help bayes##simulation_options:模拟}}
包含帮助 bayesmh_simopts

{marker options_blocking}{...}
  {syntab:{help bayes##blocking_options:阻塞}}
{p2coldent:* {opt blocksize(#)}}最大块大小；默认是 {cmd:blocksize(50)}{p_end}
包含帮助 bayesmh_blockopts
  {p2coldent:* {opt noblock:ing}}默认情况下不阻塞参数{p_end}

{marker options_initialization}{...}
  {syntab:{help bayes##initialization_options:初始化}}
包含帮助 bayesmh_initopts
  {p2coldent:* {opt noi:sily}}在初始化期间显示估计命令的输出{p_end}

{marker options_adaptation}{...}
  {syntab:{help bayes##adaptation_options:适应}}
包含帮助 bayesmh_adaptopts

{marker options_reporting}{...}
  {syntab:{help bayes##reporting_options:报告}}
包含帮助 bayes_clevel_hpd_short
{p2coldent:* {opt ir:r}}报告发生率比{p_end}
包含帮助 bayesecmd_reportopts_special

{marker options_advanced}{...}
  {syntab:{help bayes##advanced_options:高级}}
包含帮助 bayesmh_advancedopts
{synoptline}
{p 4 6 2}* 星号选项特定于 {cmd:bayes} 前缀；其他选项在 {cmd:bayes} 和 {help bayesmh_zh} 之间是共同的。{p_end}
{p 4 6 2}选项 {cmd:prior()} 和 {cmd:block()} 可以重复使用。{p_end}
{p 4 6 2}{helpb bayesmh##priorspec:{it:priorspec}} 和
{helpb bayesmh##paramref:{it:paramref}} 在 {manhelp bayesmh BAYES} 中定义。
{p_end}
{p 4 6 2}{it:paramref} 可以包含因子变量；参见 {help fvvarlist_zh}。
{p_end}
{p 4 6 2}请参见 {manhelp bayesian_postestimation BAYES:贝叶斯后估计} 了解估计后可用的功能。{p_end}
{p2colreset}{...}
{p 4 6 2}模型参数是回归系数
{cmd:{c -(}}{it:depvar}{cmd::}{it:indepvars}{cmd:{c )-}} 和
对数超离散参数
{cmd:{c -(}lnalpha{c )-}}，与均值离散或
{cmd:{c -(}lndelta{c )-}}，与常数离散。
使用 {cmd:dryrun} 选项查看
估计前模型参数的定义。{p_end}
{p 4 6 2}有关 {it:bayesopts} 的详细描述，请参见
{help bayes##options:{it:选项}} 在 {manhelp bayes BAYES}.{p_end}


{marker menu}{...}
{title:菜单}

{phang}
{bf:统计 > 计数结果 > 贝叶斯回归 > 负二项回归}


{marker description}{...}
{title:描述}

{pstd}
{cmd:bayes: nbreg} 拟合贝叶斯负二项回归到非负计数结果；
有关详细信息，请参见 {manhelp bayes BAYES} 和 {manhelp nbreg R:nbreg}。


{marker linkspdf}{...}
{title:链接到 PDF 文档}

        {mansection BAYES bayesnbregQuickstart:快速开始}

        {mansection BAYES bayesnbregRemarksandexamples:备注和示例}

        {mansection BAYES bayesnbregMethodsandformulas:方法和公式}

{pstd}
上述部分未包含在此帮助文件中。


{marker examples}{...}
{title:示例}

{pstd}
设置{p_end}
{phang2}{cmd:. webuse rod93}

{pstd}
使用默认先验拟合贝叶斯负二项回归{p_end}
{phang2}{cmd:. bayes: nbreg deaths i.cohort, exposure(exp)}

{pstd}
重放结果并报告发生率比{p_end}
{phang2}{cmd:. bayes, irr}

{pstd}
将烧入期从默认的 2500 增加到 5000{p_end}
{phang2}{cmd:. bayes, burnin(5000): nbreg deaths i.cohort, exposure(exp)}

{pstd}
与上述相同，但使用默认正态先验的标准差为 10{p_end}
{phang2}{cmd:. bayes, normalprior(10) burnin(5000):}
          {cmd:nbreg deaths i.cohort, exposure(exp)}

{pstd}
与上述相同，但还指定随机数种子以实现可复现性{p_end}
{phang2}{cmd:. bayes, normalprior(10) burnin(5000) rseed(12345):}
          {cmd:nbreg deaths i.cohort, exposure(exp)}

{pstd}
使用所有回归系数的均匀先验拟合贝叶斯负二项回归{p_end}
{phang2}{cmd:. bayes, prior({deaths:i.cohort _cons}, uniform(-10,10)): nbreg deaths i.cohort, exposure(exp)}

{pstd}
与上述相同，但使用快捷符号引用所有回归系数{p_end}
{phang2}{cmd:. bayes, prior({deaths:}, uniform(-10,10)): nbreg deaths i.cohort, exposure(exp)}

{pstd}
在重放时显示 90% 的最高后验密度（HPD）可信区间{p_end}
{phang2}{cmd:. bayes, clevel(90) hpd}

{pstd}
在重放时保存 MCMC 结果{p_end}
{phang2}{cmd:. bayes, saving(mymcmc)}


{marker results}{...}
{title:储存的结果}

{pstd}
请参见 {help bayes##results:{it:储存的结果}} 在 {manhelp bayes BAYES}。
{p_end}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <bayes_nbreg.sthlp>}