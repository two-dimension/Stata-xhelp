{smcl}
{* *! version 1.0.7  25apr2019}{...}
{viewerdialog "bayes: meoprobit" "dialog bayes_meoprobit"}{...}
{vieweralsosee "[BAYES] bayes: meoprobit" "mansection BAYES bayesmeoprobit"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[BAYES] bayes" "help bayes_zh"}{...}
{vieweralsosee "[ME] meoprobit" "help meoprobit_zh"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[BAYES] Bayesian commands" "help bayesian_commands_zh"}{...}
{vieweralsosee "[BAYES] Bayesian estimation" "help bayesian_estimation_zh"}{...}
{vieweralsosee "[BAYES] Bayesian postestimation" "help bayesian_postestimation_zh"}{...}
{vieweralsosee "[BAYES] Glossary" "help bayes_glossary_zh"}{...}
{viewerjumpto "Syntax" "bayes_meoprobit_zh##syntax"}{...}
{viewerjumpto "Menu" "bayes_meoprobit_zh##menu"}{...}
{viewerjumpto "Description" "bayes_meoprobit_zh##description"}{...}
{viewerjumpto "Links to PDF documentation" "bayes_meoprobit_zh##linkspdf"}{...}
{viewerjumpto "Examples" "bayes_meoprobit_zh##examples"}{...}
{viewerjumpto "Stored results" "bayes_meoprobit_zh##results"}
{help bayes_meoprobit:English Version}
{hline}{...}
{p2colset 1 29 31 2}{...}
{p2col:{bf:[BAYES] bayes: meoprobit} {hline 2}}贝叶斯多水平有序Probit回归{p_end}
{p2col:}({mansection BAYES bayesmeoprobit:查看完整的PDF手册条目}){p_end}
{p2colreset}{...}


{marker syntax}{...}
{title:语法}

{p 8 15 2}
{cmd:bayes} [{cmd:,} {it:bayesopts}] {cmd::} {opt meoprobit}
{depvar} {it:fe_equation} [{cmd:||} {it:re_equation}] 
	[{cmd:||} {it:re_equation} ...] 
	[{cmd:,} {it:{help bayes_meoprobit##options_table:选项}}]

{p 4 4 2}
    其中 {it:fe_equation} 的语法为

{p 12 24 2}
	[{indepvars}] {ifin}
        [{it:{help bayes_meoprobit##weight:权重}}]
	[{cmd:,} {it:{help bayes_meoprobit##fe_options:固定效应选项}}]

{p 4 4 2}
    而 {it:re_equation} 的语法为以下之一：

{p 8 18 2}
	对于随机系数和截距

{p 12 24 2}
	{it:levelvar}{cmd::} [{varlist}]
		[{cmd:,} {it:{help bayes_meoprobit##re_options:随机效应选项}}]

{p 8 18 2}
	用于因子变量值之间的随机效应

{p 12 24 2}
	{it:levelvar}{cmd::} {cmd:R.}{varname}

{p 4 4 2}
    {it:levelvar} 可以是识别该层级随机效应的组结构的变量，或为 {cmd:_all}，表示一个包含所有观察值的组。{p_end}

{synoptset 23 tabbed}{...}
{marker fe_options}{...}
{synopthdr :固定效应选项}
{synoptline}
{syntab:模型}
{synopt :{opth off:set(varname)}}在模型中包含 {it:varname}，并将系数约束为 1{p_end}
{synoptline}

{synoptset 23 tabbed}{...}
{marker re_options}{...}
{synopthdr :随机效应选项}
{synoptline}
{syntab:模型}
{synopt :{opth cov:ariance(meoprobit##vartype:vartype)}}{help bayes_glossary##random_effects_parameters:随机效应}的方差-协方差结构；仅支持 {cmd:independent}、{cmd:identity} 和 {cmd:unstructured} 结构{p_end}
{synopt :{opt nocons:tant}}从随机效应方程中抑制常数项{p_end}
{synoptline}

{synoptset 23 tabbed}{...}
{marker options_table}{...}
{synopthdr :选项}
{synoptline}
{syntab :报告}
{synopt :{opt notab:le}}抑制系数表{p_end}
{synopt :{opt nohead:er}}抑制输出头{p_end}
{synopt :{opt nogr:oup}}抑制总结组的表格{p_end}
包含 help bayesme_display

{synopt :{opt l:evel(#)}}设置可信水平；默认为 {cmd:level(95)}{p_end}
{synoptline}
{p 4 6 2}
{it:indepvars} 可以包含因子变量；见 {help fvvarlist_zh}.{p_end}
{p 4 6 2}
{it:depvar}、{it:indepvars} 和 {it:varlist} 可以包含时间序列运算符；见 {help tsvarlist_zh}.{p_end}
{marker weight}{...}
{p 4 6 2}
允许使用 {opt fweight}；见 {help weight_zh}.{p_end}
{p 4 6 2}
{cmd:bayes:} {cmd:meoprobit,} {cmd:level()} 等同于 
{cmd:bayes,} {cmd:clevel():} {cmd:meoprobit}.{p_end}
{p 4 6 2}有关 {it:options} 的详细描述，请参见
{help meoprobit##options:{it:选项}} 在 {manhelp meoprobit ME}。{p_end}

{marker bayesopts}{...}
{synoptset 30 tabbed}{...}
{synopthdr:bayesopts}
{synoptline}
{marker options_priors}{...}
{syntab:{help bayes##priors_options:先验}}
{p2coldent:* {opt normalpr:ior(#)}}指定回归系数默认正态先验的标准差；默认为 {cmd:normalprior(100)}{p_end}
{p2coldent:* {opt igammapr:ior(# #)}}指定方差分量的默认逆伽马先验的形状和尺度；默认为 {cmd:igammaprior(0.01 0.01)}{p_end}
{p2coldent:* {cmdab:iwishartpr:ior(}{help bayes##iwishartpriorspec:{it:#} [...]}{cmd:)}}指定默认逆Wishart先验的自由度和可选缩放矩阵，用于未结构化的随机效应方差{p_end}
{* 包含 help bayesecmd_opts*}
包含 help bayesmh_prioropts

{marker options_simulation}{...}
{syntab:{help bayes##simulation_options:模拟}}
包含 help bayesmh_simopts
{synopt :{opt restubs(restub1 restub2 ...)}}为所有层级的随机效应参数指定存根{p_end}

{marker options_blocking}{...}
{syntab:{help bayes##blocking_options:阻塞}}
{p2coldent:* {opt blocksize(#)}}最大阻塞大小；默认为 {cmd:blocksize(50)}{p_end}
包含 help bayesmh_blockopts
  {p2coldent:* {opt noblock:ing}}默认不阻塞参数{p_end}

{marker options_initialization}{...}
{syntab:{help bayes##initialization_options:初始化}}
包含 help bayesmh_initopts
{p2coldent:* {opt noi:sily}}在初始化期间显示估计命令的输出{p_end}

{marker options_adaptation}{...}
{syntab:{help bayes##adaptation_options:适应}}
包含 help bayesmh_adaptopts

{marker options_reporting}{...}
{syntab:{help bayes##reporting_options:报告}}
包含 help bayesme_reportopts
{synopt :{opt melabel}}使用与 {cmd:meoprobit} 相同的行标签显示估计表{p_end}
包含 help bayesme_reportopts2

{marker options_advanced}{...}
{syntab:{help bayes##advanced_options:高级}}
包含 help bayesmh_advancedopts
{synoptline}
{p 4 6 2}* 带星选项是特定于 {cmd:bayes} 前缀的；其他选项在 {cmd:bayes} 和 {help bayesmh_zh} 之间是共通的。{p_end}
{p 4 6 2}选项 {cmd:prior()} 和 {cmd:block()} 可以重复。{p_end}
{p 4 6 2}{helpb bayesmh##priorspec:{it:priorspec}} 和
{helpb bayesmh##paramref:{it:paramref}} 在 {manhelp bayesmh BAYES} 中定义。
{p_end}
{p 4 6 2}{it:paramref} 可以包含因子变量；见 {help fvvarlist_zh}。
{p_end}
{p 4 6 2}有关估计后可用功能，请参见 {manhelp bayesian_postestimation BAYES:贝叶斯后验估计}。{p_end}
{p2colreset}{...}
{p 4 6 2}模型参数为回归系数
{cmd:{c -(}}{it:depvar}{cmd::}{it:indepvars}{cmd:{c )-}},
截距 {cmd:{c -(}cut1{c )-}}, {cmd:{c -(}cut2{c )-}}, 等等，
随机效应
{cmd:{c -(}}{it:rename}{cmd:{c )-}}, 和方差分量
{cmd:{c -(}}{it:rename}{cmd::sigma2{c )-}} 或如果指定了选项
{cmd:covariance(unstructured)}，则是矩阵参数
{cmd:{c -(}}{it:restub}{cmd::Sigma,matrix{c )-}}；请参见
{mansection BAYES bayesRemarksandexamplesLikelihoodmodel:{it:似然模型}}
在 {bf:[BAYES] bayes} 中，了解 {it:rename}s 和 {it:restub} 的定义。
使用 {cmd:dryrun} 选项在估计之前查看模型参数的定义。{p_end}
{p 4 6 2}默认使用平坦先验 {cmd:flat} 用于截距。{p_end}
{p 4 6 2}有关 {it:bayesopts} 的详细描述，请参见
{help bayes##options:{it:选项}} 在 {manhelp bayes BAYES}。{p_end}


{marker menu}{...}
{title:菜单}

{phang}
{bf:统计 > 多水平混合效应模型 > 贝叶斯回归 > 有序Probit回归}


{marker description}{...}
{title:描述}

{pstd}
{cmd:bayes: meoprobit} 拟合贝叶斯多水平有序Probit回归以处理有序结果；
详细信息请见 {manhelp bayes BAYES} 和 {manhelp meoprobit ME}。


{marker linkspdf}{...}
{title:PDF文档链接}

        {mansection BAYES bayesmeoprobitQuickstart:快速开始}

        {mansection BAYES bayesmeoprobitRemarksandexamples:备注和示例}

        {mansection BAYES bayesmeoprobitMethodsandformulas:方法和公式}

{pstd}
以上部分不包含在该帮助文件中。


{marker examples}{...}
{title:示例}

{pstd}设置{p_end}
{phang2}{cmd:. webuse tvsfpors}{p_end}
{phang2}{cmd:. keep if school < 500}{p_end}

{pstd}使用默认先验拟合贝叶斯二级有序Probit回归{p_end}
{phang2}{cmd:. bayes: meoprobit thk prethk cc##tv || school:}{p_end}

{pstd}
除了主要模型参数，还显示与学校代码193到199相关的随机效应结果{p_end}
{phang2}{cmd:. bayes, showreffects({U0[(193/199).school]})}

{pstd}
检查主要模型参数的MCMC收敛性{p_end}
{phang2}{cmd:. bayesgraph diagnostics _all}

{pstd}
检查第一个，第十和第十五随机效应的MCMC收敛性{p_end}
{phang2}{cmd:. bayesgraph diagnostics {U0[1 10 15]}}

{pstd}
在一张图上绘制前12个随机效应的后验分布直方图{p_end}
{phang2}{cmd:. bayesgraph histogram {U0[1/12]}, byparm}

{pstd}
使用 {cmd:meoprobit} 的参数标签显示估计结果，并在重放时计算对数边际似然{p_end}
{phang2}{cmd:. bayes, melabel remargl}

{pstd}
在重放时保存MCMC结果{p_end}
{phang2}{cmd:. bayes, saving(mymcmc)}

{pstd}拟合贝叶斯三级有序Probit回归，指定回归系数默认正态先验的标准差为10而不是100，并使用较小的MCMC大小1,000而不是默认的10,000{p_end}
{phang2}{cmd:. bayes, normalprior(10) mcmcsize(1000): meoprobit thk prethk cc##tv || school: || class:}{p_end}


{marker results}{...}
{title:存储结果}

{pstd}
请参见 {help bayes##results:{it:存储结果}} 在 {manhelp bayes BAYES}。
{p_end}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <bayes_meoprobit.sthlp>}