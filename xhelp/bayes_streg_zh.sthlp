{smcl}
{* *! version 1.0.9  12dec2018}{...}
{viewerdialog "bayes: streg" "dialog bayes_streg"}{...}
{vieweralsosee "[BAYES] bayes: streg" "mansection BAYES bayesstreg"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[BAYES] bayes" "help bayes_zh"}{...}
{vieweralsosee "[ST] streg" "help streg_zh"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[BAYES] Bayesian commands" "help bayesian_commands_zh"}{...}
{vieweralsosee "[BAYES] Bayesian estimation" "help bayesian_estimation_zh"}{...}
{vieweralsosee "[BAYES] Bayesian postestimation" "help bayesian_postestimation_zh"}{...}
{vieweralsosee "[BAYES] Glossary" "help bayes_glossary_zh"}{...}
{viewerjumpto "Syntax" "bayes_streg_zh##syntax"}{...}
{viewerjumpto "Menu" "bayes_streg_zh##menu"}{...}
{viewerjumpto "Description" "bayes_streg_zh##description"}{...}
{viewerjumpto "Links to PDF documentation" "bayes_streg_zh##linkspdf"}{...}
{viewerjumpto "Examples" "bayes_streg_zh##examples"}{...}
{viewerjumpto "Stored results" "bayes_streg_zh##results"}
{help bayes_streg:English Version}
{hline}{...}
{p2colset 1 25 27 2}{...}
{p2col:{bf:[BAYES] bayes: streg} {hline 2}}贝叶斯参数生存模型{p_end}
{p2col:}({mansection BAYES bayesstreg:查看完整的 PDF 手册条目}){p_end}
{p2colreset}{...}


{marker syntax}{...}
{title:语法}

{p 8 15 2}
{cmd:bayes} [{cmd:,} {it:bayesopts}] {cmd::} {opt streg}
[{varlist}]
{ifin}
[{cmd:,} {it:options}]

{synoptset 30 tabbed}{...}
{synopthdr}
{synoptline}
{syntab:模型}
{synopt :{opt nocons:tant}}抑制常数项{p_end}
{synopt :{cmdab:dist:ribution(}{cmdab:e:xponential)}}指数生存分布{p_end}
{synopt :{cmdab:dist:ribution(}{cmdab:gom:pertz)}}Gompertz生存分布{p_end}
{synopt :{cmdab:dist:ribution(}{cmdab:logl:ogistic)}}对数逻辑生存分布{p_end}
{synopt :{cmdab:dist:ribution(}{cmdab:ll:ogistic)}}对{cmd:distribution(loglogistic)}的同义词{p_end}
{synopt :{cmdab:dist:ribution(}{cmdab:w:eibull)}}威布尔生存分布{p_end}
{synopt :{cmdab:dist:ribution(}{cmdab:logn:ormal)}}对数正态生存分布{p_end}
{synopt :{cmdab:dist:ribution(}{cmdab:ln:ormal)}}对{cmd:distribution(lognormal)}的同义词{p_end}
{synopt :{cmdab:dist:ribution(}{cmdab:ggam:ma)}}广义伽马生存分布{p_end}
{synopt :{cmdab:fr:ailty(}{cmdab:g:amma)}}伽马脆弱分布{p_end}
{synopt :{cmdab:fr:ailty(}{cmdab:i:nvgaussian)}}反高斯分布{p_end}
{synopt :{opt time}}使用加速故障时间度量{p_end}

{syntab:模型 2}
{synopt :{opth st:rata(varname)}}分层 ID 变量{p_end}
{synopt :{opth off:set(varname)}}在模型中包含 {it:varname} 且系数约束为 1{p_end}
{synopt :{opth sh:ared(varname)}}共享脆弱性 ID 变量{p_end}
{synopt :{opth anc:illary(varlist)}}使用 {it:varlist} 建模第一个附属参数{p_end}
{synopt :{opth anc2(varlist)}}使用 {it:varlist} 建模第二个附属参数{p_end}

{syntab:报告}
{synopt :{opt nohr}}不报告危险比{p_end}
{synopt :{opt tr:atio}}报告时间比{p_end}
{synopt :{opt nos:how}}不显示 st 设置信息{p_end}
{synopt :{it:{help streg##display_options:display_options}}}控制
包括帮助短描述-displayoptbayes

{synopt :{opt l:evel(#)}}设置可信度水平；默认值为 {cmd:level(95)}{p_end}
{synoptline}
{p 4 6 2}
使用 {cmd:bayes: streg} 前必须 {cmd:stset} 数据；参见
{manhelp stset ST}.{p_end}
{p 4 6 2}
{it:varlist} 可以包含因子变量；参见 {help fvvarlist_zh}.{p_end}
{p 4 6 2}
{cmd:bayes:} {cmd:streg,} {cmd:level()} 等同于 
{cmd:bayes,} {cmd:clevel():} {cmd:streg}.{p_end}
{p 4 6 2}有关 {it:options} 的详细描述，请参见
{help streg##options:{it:选项}} 在 {manhelp streg ST}.{p_end}

{marker bayesopts}{...}
{synoptset 30 tabbed}{...}
{synopthdr:bayesopts}
{synoptline}
{marker options_priors}{...}
{syntab:{help bayes##priors_options:先验}}
{p2coldent:* {opt normalpr:ior(#)}}指定回归系数和对数附属参数的默认正态先验的标准差；默认值为
{cmd:normalprior(100)}{p_end}
{* INCLUDE help bayesecmd_opts*}
包含帮助 bayesmh_prioropts

{marker options_simulation}{...}
  {syntab:{help bayes##simulation_options:模拟}}
包含帮助 bayesmh_simopts

{marker options_blocking}{...}
  {syntab:{help bayes##blocking_options:阻止}}
{p2coldent:* {opt blocksize(#)}}最大块大小；默认值为 {cmd:blocksize(50)}{p_end}
包含帮助 bayesmh_blockopts
  {p2coldent:* {opt noblock:ing}}默认情况下不阻止参数{p_end}

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
{p2coldent:* {opt nohr}}不报告危险比{p_end}
{p2coldent:* {opt tr:atio}}报告时间比；要求 {cmd:time} 选项与
{cmd:streg}{p_end}
包含帮助 bayesecmd_reportopts_special

{marker options_advanced}{...}
  {syntab:{help bayes##advanced_options:高级}}
包含帮助 bayesmh_advancedopts
{synoptline}
{p 4 6 2}* 星号选项特定于 {cmd:bayes} 前缀；其他选项在 {cmd:bayes} 和 {help bayesmh_zh} 之间是共通的。{p_end}
{p 4 6 2}选项 {cmd:prior()} 和 {cmd:block()} 可以重复.{p_end}
{p 4 6 2}{helpb bayesmh##priorspec:{it:priorspec}} 和
{helpb bayesmh##paramref:{it:paramref}} 在 {manhelp bayesmh BAYES} 中定义。
{p_end}
{p 4 6 2}{it:paramref} 可以包含因子变量；参见 {help fvvarlist_zh}。
{p_end}
{p 4 6 2}有关估计后可用功能，请参见 {manhelp bayesian_postestimation BAYES:贝叶斯后估计}。{p_end}
{p2colreset}{...}
{p 4 6 2}模型参数是回归系数
{cmd:{c -(}}{it:depvar}{cmd::}{it:indepvars}{cmd:{c )-}} 和
附属参数，如在
{mansection BAYES bayesstregRemarksandexamplesAncillarymodelparameters:{it:附属模型参数}} 中描述
{bf:[BAYES] bayes: streg}。
使用 {cmd:dryrun} 选项查看模型参数在估计前的定义。{p_end}
{p 4 6 2}有关 {it:bayesopts} 的详细描述，请参见
{help bayes##options:{it:选项}} 在 {manhelp bayes BAYES}.{p_end}


{marker menu}{...}
{title:菜单}

{phang}
{bf:统计 > 生存分析 > 回归模型 > 贝叶斯参数生存模型}


{marker description}{...}
{title:描述}

{pstd}
{cmd:bayes: streg} 拟合贝叶斯参数生存模型以预测生存时间结果；
有关详细信息，请参见 {manhelp bayes BAYES} 和 {manhelp streg ST}。


{marker linkspdf}{...}
{title:PDF 文档链接}

        {mansection BAYES bayesstregQuickstart:快速入门}

        {mansection BAYES bayesstregRemarksandexamples:备注和示例}

        {mansection BAYES bayesstregMethodsandformulas:方法和公式}

{pstd}
以上部分不包含在此帮助文件中。


{marker examples}{...}
{title:示例}

{pstd}
设置{p_end}
{phang2}{cmd:. webuse hip3}{p_end}
{phang2}{cmd:. stset}{p_end}

{pstd}
拟合贝叶斯威布尔生存模型{p_end}
{phang2}{cmd:. bayes: streg protect age, distribution(weibull)}

{pstd}
显示系数而不是危险比{p_end}
{phang2}{cmd:. bayes, nohr}

{pstd}
显示形状参数及其倒数的估计值{p_end}
{phang2}{cmd:. bayesstats summary (p: exp({ln_p})) (sigma: 1/exp({ln_p}))}

{pstd}
使用所有回归系数的均匀先验拟合贝叶斯威布尔回归{p_end}
{phang2}{cmd:. bayes, prior({_t:protect age _cons}, uniform(-20,20)): streg protect age, distribution(weibull)}

{pstd}
与上面相同，但使用快捷符号引用所有回归系数{p_end}
{phang2}{cmd:. bayes, prior({_t:}, uniform(-20,20)): streg protect age, distribution(weibull)}

{pstd}
为每个回归系数使用不同的均匀先验{p_end}
{phang2}{cmd:. bayes, prior({_t:protect}, uniform(-5,5)) prior({_t:age}, uniform(0,1)) prior({_t:_cons}, uniform(-20,20)): streg protect age, distribution(weibull)}

{pstd}
拟合贝叶斯威布尔生存模型，附属变量为 {cmd:male}；
使用默认正态先验的标准差为 10 的回归系数，并在执行迭代时显示点{p_end}
{phang2}{cmd:. bayes, normalprior(10) dots: streg protect age, distribution(weibull) ancillary(male)}

{pstd}
与上面相同，但还将烧入期从默认的 2,500 增加到 3,000，并指定随机数种子以保证可重复性{p_end}
{phang2}{cmd:. bayes, normalprior(10) dots burnin(3000) rseed(12345): streg protect age, distribution(weibull) ancillary(male)}

{pstd}
检查 {cmd:{ln_p:male}} 的诊断图{p_end}
{phang2}{cmd:. bayesgraph diagnostic {ln_p:male}}

{pstd}
保存 MCMC 结果以供重放{p_end}
{phang2}{cmd:. bayes, saving(mymcmc)}


{marker results}{...}
{title:存储结果}

{pstd}
请参见 {help bayes##results:{it:存储结果}} 在 {manhelp bayes BAYES}。
{p_end}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <bayes_streg.sthlp>}