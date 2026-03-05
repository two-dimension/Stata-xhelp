{smcl}
{* *! version 1.0.7  25apr2019}{...}
{viewerdialog "bayes: mecloglog" "dialog bayes_mecloglog"}{...}
{vieweralsosee "[BAYES] bayes: mecloglog" "mansection BAYES bayesmecloglog"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[BAYES] bayes" "help bayes_zh"}{...}
{vieweralsosee "[ME] mecloglog" "help mecloglog_zh"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[BAYES] Bayesian commands" "help bayesian_commands_zh"}{...}
{vieweralsosee "[BAYES] Bayesian estimation" "help bayesian_estimation_zh"}{...}
{vieweralsosee "[BAYES] Bayesian postestimation" "help bayesian_postestimation_zh"}{...}
{vieweralsosee "[BAYES] Glossary" "help bayes_glossary_zh"}{...}
{viewerjumpto "Syntax" "bayes_mecloglog_zh##syntax"}{...}
{viewerjumpto "Menu" "bayes_mecloglog_zh##menu"}{...}
{viewerjumpto "Description" "bayes_mecloglog_zh##description"}{...}
{viewerjumpto "Links to PDF documentation" "bayes_mecloglog_zh##linkspdf"}{...}
{viewerjumpto "Examples" "bayes_mecloglog_zh##examples"}{...}
{viewerjumpto "Stored results" "bayes_mecloglog_zh##results"}
{help bayes_mecloglog:English Version}
{hline}{...}
{p2colset 1 29 31 2}{...}
{p2col:{bf:[BAYES] bayes: mecloglog} {hline 2}}贝叶斯多级互补对数-对数回归{p_end}
{p2col:}({mansection BAYES bayesmecloglog:查看完整的 PDF 手册条目}){p_end}
{p2colreset}{...}


{marker syntax}{...}
{title:语法}

{p 8 15 2}
{cmd:bayes} [{cmd:,} {it:bayesopts}] {cmd::} {opt mecloglog}
{depvar} {it:fe_equation} [{cmd:||} {it:re_equation}] 
	[{cmd:||} {it:re_equation} ...] 
	[{cmd:,} {it:{help bayes_mecloglog##options_table:选项}}]

{p 4 4 2}
    其中 {it:fe_equation} 的语法为

{p 12 24 2}
	[{indepvars}] {ifin}
        [{it:{help bayes_mecloglog##weight:权重}}]
	[{cmd:,} {it:{help bayes_mecloglog##fe_options:固定效应选项}}]

{p 4 4 2}
    而 {it:re_equation} 的语法如下之一：

{p 8 18 2}
	对于随机系数和截距

{p 12 24 2}
	{it:levelvar}{cmd::} [{varlist}]
		[{cmd:,} {it:{help bayes_mecloglog##re_options:随机效应选项}}]

{p 8 18 2}
	对于因子变量中的随机效应

{p 12 24 2}
	{it:levelvar}{cmd::} {cmd:R.}{varname}

{p 4 4 2}
    {it:levelvar} 要么是识别随机效应组结构的变量，要么是 {cmd:_all}，表示由所有观测值组成的一个组。{p_end}

{synoptset 23 tabbed}{...}
{marker fe_options}{...}
{synopthdr :fe_options}
{synoptline}
{syntab:模型}
{synopt :{opt nocons:tant}}在 {help bayes_glossary##fixed_effects_parameters:固定效应} 方程中抑制常数项{p_end}
{synopt :{opth off:set(varname)}}在模型中包括 {it:varname}，其系数被约束为 1{p_end}
{synopt :{opt asis}}保留完美预测变量{p_end}
{synoptline}

{synoptset 23 tabbed}{...}
{marker re_options}{...}
{synopthdr :re_options}
{synoptline}
{syntab:模型}
{synopt :{opth cov:ariance(mecloglog##vartype:vartype)}}{help bayes_glossary##random_effects_parameters:随机效应} 的方差-协方差结构；仅支持 {cmd:independent}、{cmd:identity} 和 {cmd:unstructured} 结构{p_end}
{synopt :{opt nocons:tant}}在随机效应方程中抑制常数项{p_end}
{synoptline}

{synoptset 23 tabbed}{...}
{marker options_table}{...}
{synopthdr :选项}
{synoptline}
{syntab:模型}
{synopt :{opt bin:omial}{cmd:(}{it:{help varname_zh:变量名}}|{it:#}{cmd:)}}如果数据为二项形式，则设置二项试验{p_end}

{syntab :报告}
{synopt :{opt eform}}报告指数化的系数{p_end}
{synopt :{opt notab:le}}抑制系数表{p_end}
{synopt :{opt nohead:er}}抑制输出标题{p_end}
{synopt :{opt nogr:oup}}抑制总结组的表格{p_end}
INCLUDE help bayesme_display

{synopt :{opt l:evel(#)}}设置可信水平；默认值为 {cmd:level(95)}{p_end}
{p 4 6 2}
{it:indepvars} 可以包含因子变量；请参见 {help fvvarlist_zh}.{p_end}
{p 4 6 2}
{it:depvar}、{it:indepvars} 和 {it:varlist} 可以包含时间序列运算符；请参见 {help tsvarlist_zh}.{p_end}
{marker weight}{...}
{p 4 6 2}
{opt fweight} 被允许；请参见 {help weight_zh}.{p_end}
{p 4 6 2}
{cmd:bayes:} {cmd:mecloglog,} {cmd:level()} 等价于 
{cmd:bayes,} {cmd:clevel():} {cmd:mecloglog}.{p_end}
{p 4 6 2}有关 {it:options} 的详细描述，请参见
{help mecloglog##options:{it:选项}}中的 {manhelp mecloglog ME}.{p_end}

{marker bayesopts}{...}
{synoptset 30 tabbed}{...}
{synopthdr:bayesopts}
{synoptline}
{marker options_priors}{...}
{syntab:{help bayes##priors_options:先验}}
{p2coldent:* {opt normalpr:ior(#)}}指定回归系数的默认正态先验的标准差；默认值为 {cmd:normalprior(100)}{p_end}
{p2coldent:* {opt igammapr:ior(# #)}}指定方差分量的默认反伽马先验的形状和尺度；默认值为 {cmd:igammaprior(0.01 0.01)}{p_end}
{p2coldent:* {cmdab:iwishartpr:ior(}{help bayes##iwishartpriorspec:{it:#} [...]}{cmd:)}}指定默认无结构随机效应协方差的自由度以及可选的尺度矩阵的反威沙特先验{p_end}
{* INCLUDE help bayesecmd_opts*}
INCLUDE help bayesmh_prioropts

{marker options_simulation}{...}
{syntab:{help bayes##simulation_options:模拟}}
INCLUDE help bayesmh_simopts
{synopt :{opt restubs(restub1 restub2 ...)}}指定各级随机效应参数的后缀{p_end}

{marker options_blocking}{...}
{syntab:{help bayes##blocking_options:分块}}
{p2coldent:* {opt blocksize(#)}}最大块大小；默认为 {cmd:blocksize(50)}{p_end}
INCLUDE help bayesmh_blockopts
  {p2coldent:* {opt noblock:ing}}默认情况下不对参数进行分块{p_end}

{marker options_initialization}{...}
{syntab:{help bayes##initialization_options:初始化}}
INCLUDE help bayesmh_initopts
{p2coldent:* {opt noi:sily}}在初始化期间显示估计命令的输出{p_end}

{marker options_adaptation}{...}
{syntab:{help bayes##adaptation_options:适应}}
INCLUDE help bayesmh_adaptopts

{marker options_reporting}{...}
{syntab:{help bayes##reporting_options:报告}}
INCLUDE help bayesme_reportopts
{synopt :{opt melabel}}使用与 {cmd:mecloglog} 相同的行标签显示估计表{p_end}
INCLUDE help bayesme_reportopts2

{marker options_advanced}{...}
{syntab:{help bayes##advanced_options:高级}}
INCLUDE help bayesmh_advancedopts
{synoptline}
{p 4 6 2}* 星标选项是特定于 {cmd:bayes} 前缀的；其他选项在 {cmd:bayes} 和 {help bayesmh_zh} 之间是共享的。{p_end}
{p 4 6 2}选项 {cmd:prior()} 和 {cmd:block()} 可以重复使用。{p_end}
{p 4 6 2}{helpb bayesmh##priorspec:{it:priorspec}} 和
{helpb bayesmh##paramref:{it:paramref}} 在 {manhelp bayesmh BAYES} 中定义。
{p_end}
{p 4 6 2}{it:paramref} 可以包含因子变量；请参见 {help fvvarlist_zh}。
{p_end}
{p 4 6 2}请参见 {manhelp bayesian_postestimation BAYES:贝叶斯后估计} 了解估计后可用的特性。{p_end}
{p2colreset}{...}
{p 4 6 2}模型参数为回归系数
{cmd:{c -(}}{it:depvar}{cmd::}{it:indepvars}{cmd:{c )-}},
随机效应
{cmd:{c -(}}{it:rename}{cmd:{c )-}}, 以及方差分量
{cmd:{c -(}}{it:rename}{cmd::sigma2{c )-}}，或者如果指定了选项
{cmd:covariance(unstructured)}，为矩阵参数
{cmd:{c -(}}{it:restub}{cmd::Sigma,matrix{c )-}}；请参见
{mansection BAYES bayesRemarksandexamplesLikelihoodmodel:{it:似然模型}}
在 {bf:[BAYES] bayes} 中了解 {it:rename} 和 {it:restub} 的定义。
使用 {cmd:dryrun} 选项在估计前查看模型参数的定义。{p_end}
{p 4 6 2}有关 {it:bayesopts} 的详细描述，请参见
{help bayes##options:{it:选项}}中的 {manhelp bayes BAYES}.{p_end}


{marker menu}{...}
{title:菜单}

{phang}
{bf:统计 > 多级混合效应模型 > 贝叶斯回归 > 互补对数-对数回归}


{marker description}{...}
{title:描述}

{pstd}
{cmd:bayes: mecloglog} 拟合一个贝叶斯多级互补对数-对数回归模型，适用于一个二元结果；
有关详细信息，请参见 {manhelp bayes BAYES} 和 {manhelp mecloglog ME}.


{marker linkspdf}{...}
{title:PDF文档链接}

        {mansection BAYES bayesmecloglogQuickstart:快速入门}

        {mansection BAYES bayesmecloglogRemarksandexamples:备注和示例}

        {mansection BAYES bayesmecloglogMethodsandformulas:方法和公式}

{pstd}
上述部分未包含在此帮助文件中。


{marker examples}{...}
{title:示例}

{pstd}
设置{p_end}
{phang2}{cmd:. webuse bangladesh}{p_end}
{phang2}{cmd:. keep if district<=20}{p_end}

{pstd}
使用默认先验拟合按 {cmd:district} 的贝叶斯两级互补对数-对数回归，随机截距{p_end}
{phang2}{cmd:. bayes: mecloglog c_use urban age child* || district:}

{pstd}
显示指数化系数{p_end}
{phang2}{cmd:. bayes, eform}

{pstd}
除了主要模型参数，显示前 10 个随机效应的结果{p_end}
{phang2}{cmd:. bayes, showreffects({U0[1/10]})}

{pstd}
检查主模型参数的 MCMC 收敛性{p_end}
{phang2}{cmd:. bayesgraph diagnostics _all}

{pstd}
检查 1、10 和 20 区域的随机效应的 MCMC 收敛性{p_end}
{phang2}{cmd:. bayesgraph diagnostics {U0[(1 10 20).district]}}

{pstd}
在一张图上绘制前 12 个随机效应的后验分布直方图{p_end}
{phang2}{cmd:. bayesgraph histogram {U0[1/12]}, byparm}

{pstd}
使用 {cmd:mecloglog} 的参数标签显示估计结果，并在重放时计算对数边际似然{p_end}
{phang2}{cmd:. bayes, melabel remargl}

{pstd}
为所有回归系数指定相同的均匀先验。将 MCMC 样本大小从默认的 10,000 减少到 1,000，并指定随机数种子以实现可重现性{p_end}
{phang2}{cmd:. bayes, prior({c_use:urban age child1 child2 child3 _cons}, uniform(-10,10)) mcmcsize(1000) rseed(12345): mecloglog c_use urban age child* || district:}

{pstd}
与上述相同，但使用快捷符号引用所有回归系数{p_end}
{phang2}{cmd:. bayes, prior({c_use:}, uniform(-10,10)) mcmcsize(1000) rseed(12345): mecloglog c_use urban age child* || district:}

{pstd}
保存 MCMC 结果以供重播{p_end}
{phang2}{cmd:. bayes, saving(mymcmc)}


{marker results}{...}
{title:存储结果}

{pstd}
请参见 {help bayes##results:{it:存储结果}} 中的 {manhelp bayes BAYES}。
{p_end}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <bayes_mecloglog.sthlp>}