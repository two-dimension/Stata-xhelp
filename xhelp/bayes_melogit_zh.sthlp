{smcl}
{* *! version 1.0.7  25apr2019}{...}
{viewerdialog "bayes: melogit" "dialog bayes_melogit"}{...}
{vieweralsosee "[BAYES] bayes: melogit" "mansection BAYES bayesmelogit"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[BAYES] bayes" "help bayes_zh"}{...}
{vieweralsosee "[ME] melogit" "help melogit_zh"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[BAYES] Bayesian commands" "help bayesian_commands_zh"}{...}
{vieweralsosee "[BAYES] Bayesian estimation" "help bayesian_estimation_zh"}{...}
{vieweralsosee "[BAYES] Bayesian postestimation" "help bayesian_postestimation_zh"}{...}
{vieweralsosee "[BAYES] Glossary" "help bayes_glossary_zh"}{...}
{viewerjumpto "Syntax" "bayes_melogit_zh##syntax"}{...}
{viewerjumpto "Menu" "bayes_melogit_zh##menu"}{...}
{viewerjumpto "Description" "bayes_melogit_zh##description"}{...}
{viewerjumpto "Links to PDF documentation" "bayes_melogit_zh##linkspdf"}{...}
{viewerjumpto "Examples" "bayes_melogit_zh##examples"}{...}
{viewerjumpto "Stored results" "bayes_melogit_zh##results"}
{help bayes_melogit:English Version}
{hline}{...}
{p2colset 1 27 29 2}{...}
{p2col:{bf:[BAYES] bayes: melogit} {hline 2}}贝叶斯多级逻辑回归{p_end}
{p2col:}({mansection BAYES bayesmelogit:查看完整的PDF手册条目}){p_end}
{p2colreset}{...}


{marker syntax}{...}
{title:语法}

{p 8 15 2}
{cmd:bayes} [{cmd:,} {it:bayesopts}] {cmd::} {opt melogit}
{depvar} {it:fe_equation} [{cmd:||} {it:re_equation}] 
	[{cmd:||} {it:re_equation} ...] 
	[{cmd:,} {it:{help bayes_melogit##options_table:选项}}]

{p 4 4 2}
    其中 {it:fe_equation} 的语法为

{p 12 24 2}
	[{indepvars}] {ifin}
        [{it:{help bayes_melogit##weight:权重}}]
	[{cmd:,} {it:{help bayes_melogit##fe_options:固定效应选项}}]

{p 4 4 2}
    而 {it:re_equation} 的语法为以下之一：

{p 8 18 2}
	用于随机系数和截距

{p 12 24 2}
	{it:levelvar}{cmd::} [{varlist}]
		[{cmd:,} {it:{help bayes_melogit##re_options:随机效应选项}}]

{p 8 18 2}
	用于因素变量的随机效应

{p 12 24 2}
	{it:levelvar}{cmd::} {cmd:R.}{varname}

{p 4 4 2}
    {it:levelvar} 可以是识别随机效应的组结构的变量，或是 {cmd:_all}，代表一个包括所有观察值的组。{p_end}

{synoptset 23 tabbed}{...}
{marker fe_options}{...}
{synopthdr :固定效应选项}
{synoptline}
{syntab:模型}
{synopt :{opt nocons:不常数}}从 {help bayes_glossary##fixed_effects_parameters:固定效应} 方程中抑制常数项{p_end}
{synopt :{opth off:set(varname)}}在模型中包含 {it:varname} 且系数约束为1{p_end}
{synopt :{opt asis}}保留完美预测变量{p_end}
{synoptline}

{synoptset 23 tabbed}{...}
{marker re_options}{...}
{synopthdr :随机效应选项}
{synoptline}
{syntab:模型}
{synopt :{opth cov:ariance(melogit##vartype:vartype)}} {help bayes_glossary##random_effects_parameters:随机效应} 的方差-协方差结构；仅支持 {cmd:independent}、{cmd:identity} 和 {cmd:unstructured} 结构{p_end}
{synopt :{opt nocons:不常数}}从随机效应方程中抑制常数项{p_end}
{synoptline}

{synoptset 23 tabbed}{...}
{marker options_table}{...}
{synopthdr :选项}
{synoptline}
{syntab:模型}
{synopt :{opt bin:omial}{cmd:(}{it:{help varname_zh:变量名}}|{it:#}{cmd:)}}如果数据以二项形式存在，则设定二项试验{p_end}

{syntab :报告}
{synopt :{opt or}}报告比值比{p_end}
{synopt :{opt notab:le}}抑制系数表{p_end}
{synopt :{opt nohead:er}}抑制输出头部{p_end}
{synopt :{opt nogr:oup}}抑制汇总组的表{p_end}
包含 help bayesme_display

{synopt :{opt l:evel(#)}}设定可信水平；默认是 {cmd:level(95)}{p_end}
{synoptline}
{p 4 6 2}
{it:indepvars} 可以包含因素变量；见 {help fvvarlist_zh}。{p_end}
{p 4 6 2}
{it:depvar}、{it:indepvars} 和 {it:varlist} 可以包含时间序列操作符；见 {help tsvarlist_zh}。{p_end}
{marker weight}{...}
{p 4 6 2}
{opt fweight} 是允许的；见 {help weight_zh}。{p_end}
{p 4 6 2}
{cmd:bayes:} {cmd:melogit,} {cmd:level()} 相当于 {cmd:bayes,} {cmd:clevel():} {cmd:melogit}。{p_end}
{p 4 6 2}详细描述 {it:options}，请参见 {help melogit##options:{it:选项}} 在 {manhelp melogit ME}。{p_end}

{marker bayesopts}{...}
{synoptset 30 tabbed}{...}
{synopthdr:bayesopts}
{synoptline}
{marker options_priors}{...}
{syntab:{help bayes##priors_options:先验}}
{p2coldent:* {opt normalpr:ior(#)}}指定回归系数的默认正态先验的标准差；默认是 {cmd:normalprior(100)}{p_end}
{p2coldent:* {opt igammapr:ior(# #)}}指定方差分量的默认逆伽马先验的形状和尺度；默认是 {cmd:igammaprior(0.01 0.01)}{p_end}
{p2coldent:* {cmdab:iwishartpr:ior(}{help bayes##iwishartpriorspec:{it:#} [...]}{cmd:)}}指定自由度，并可选地，默认逆威沙特先验的尺度矩阵，用于非结构化随机效应的方差-协方差{p_end}
{* INCLUDE help bayesecmd_opts*}
包含 help bayesmh_prioropts

{marker options_simulation}{...}
{syntab:{help bayes##simulation_options:模拟}}
包含 help bayesmh_simopts
{synopt :{opt restubs(restub1 restub2 ...)}}为所有级别的随机效应参数指定存根{p_end}

{marker options_blocking}{...}
{syntab:{help bayes##blocking_options:阻塞}}
{p2coldent:* {opt blocksize(#)}}最大块大小；默认是 {cmd:blocksize(50)}{p_end}
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
包含 help bayes_clevel_hpd_short
{p2coldent:* {opt or}}报告比值比{p_end}
包含 help bayesmh_eform
{synopt :{opt remargl}}计算对数边际似然{p_end}
{synopt :{opt batch(#)}}指定批量均值计算的块长度；默认是 {cmd:batch(0)}{p_end}
{synopt :{cmdab:sav:ing(}{help filename_zh:{it:filename}}[{cmd:, replace}]{cmd:)}}将模拟结果保存到 {it:filename}{cmd:.dta}{p_end}
{synopt :{opt nomodelsumm:ary}}抑制模型摘要{p_end}
{synopt :{opt nomesumm:ary}}抑制多级结构摘要{p_end}
{synopt :[{cmd:no}]{opt dots}}抑制点或每100次迭代显示点，每1,000次迭代显示迭代次数；默认是 {cmd:dots}{p_end}
{synopt :{cmd:dots(}{it:#}[{cmd:,} {opt every(#)}]{cmd:)}}在执行模拟时显示点 {p_end}
{synopt :[{cmd:no}]{opth show:(bayesmh##paramref:paramref)}}指定要从输出中排除或包含的模型参数{p_end}
{synopt :{opt showre:ffects}[{cmd:(}{it:{help bayesian postestimation##bayesian_post_reref:reref}}{cmd:)}]}指定所有或部分随机效应参数包含在输出中{p_end}
{synopt :{opt melabel}}使用与 {cmd:melogit} 相同的行标签显示估计表{p_end}
包含 help bayesme_reportopts2

{marker options_advanced}{...}
{syntab:{help bayes##advanced_options:高级}}
包含 help bayesmh_advancedopts
{synoptline}
{p 4 6 2}* 星号选项特定于 {cmd:bayes} 前缀；其他选项在 {cmd:bayes} 和 {help bayesmh_zh} 之间是共有的。{p_end}
{p 4 6 2}选项 {cmd:prior()} 和 {cmd:block()} 可能会重复。{p_end}
{p 4 6 2}{helpb bayesmh##priorspec:{it:priorspec}} 和 {helpb bayesmh##paramref:{it:paramref}} 在 {manhelp bayesmh BAYES} 中定义。{p_end}
{p 4 6 2}{it:paramref} 可以包含因素变量；见 {help fvvarlist_zh}。{p_end}
{p 4 6 2}有关估计后可用功能，请参见 {manhelp bayesian_postestimation BAYES:贝叶斯后评估}。{p_end}
{p 4 6 2}模型参数是回归系数 {cmd:{c -(}}{it:depvar}{cmd::}{it:indepvars}{cmd:{c )-}}、随机效应 {cmd:{c -(}}{it:rename}{cmd:{c )-}}，以及方差分量 {cmd:{c -(}}{it:rename}{cmd::sigma2{c )-}} 或如果选项 {cmd:covariance(unstructured)} 被指定，矩阵参数 {cmd:{c -(}}{it:restub}{cmd::Sigma,matrix{c )-}}; 参见 {mansection BAYES bayesRemarksandexamplesLikelihoodmodel:{it:似然模型}} 在 {bf:[BAYES] bayes} 中，了解 {it:rename}s 和 {it:restub} 的定义。
    在估计之前使用 {cmd:dryrun} 选项查看模型参数的定义。{p_end}
{p 4 6 2}有关 {it:bayesopts} 的详细描述，请参见 {help bayes##options:{it:选项}} 在 {manhelp bayes BAYES}。{p_end}


{marker menu}{...}
{title:菜单}

{phang}
{bf:统计 > 多级混合效应模型 > 贝叶斯回归 > 逻辑回归}


{marker description}{...}
{title:描述}

{pstd}
{cmd:bayes: melogit} 为二元结果拟合贝叶斯多级逻辑回归；
有关详细信息，请参见 {manhelp bayes BAYES} 和 {manhelp melogit ME}。


{marker linkspdf}{...}
{title:PDF文档链接}

        {mansection BAYES bayesmelogitQuickstart:快速入门}

        {mansection BAYES bayesmelogitRemarksandexamples:备注和示例}

        {mansection BAYES bayesmelogitMethodsandformulas:方法和公式}

{pstd}
上述部分未包含在此帮助文件中。


{marker examples}{...}
{title:示例}

{pstd}
设置{p_end}
{phang2}{cmd:. webuse bangladesh}{p_end}
{phang2}{cmd:. keep if district<=20}{p_end}

{pstd}
使用默认先验拟合按 {cmd:district} 的随机截距的贝叶斯二级逻辑回归{p_end}
{phang2}{cmd:. bayes: melogit c_use urban age child* || district:}

{pstd}
显示比值比而不是系数{p_end}
{phang2}{cmd:. bayes, or}

{pstd}
除了主要模型参数外，显示随机效应结果，区间为1到5的地区{p_end}
{phang2}{cmd:. bayes, showreffects({U0[(1/5).district]})}

{pstd}
检查主要模型参数的MCMC收敛{p_end}
{phang2}{cmd:. bayesgraph diagnostics _all}

{pstd}
检查第1、10和20个随机效应的MCMC收敛{p_end}
{phang2}{cmd:. bayesgraph diagnostics {U0[1 10 20]}}

{pstd}
在一张图上绘制前12个随机效应的后验分布直方图{p_end}
{phang2}{cmd:. bayesgraph histogram {U0[1/12]}, byparm}

{pstd}
使用 {cmd:melogit} 的参数标签显示估计结果， 并在重播时计算对数边际似然{p_end}
{phang2}{cmd:. bayes, melabel remargl}

{pstd}
为所有回归系数指定相同的均匀先验。将MCMC样本大小从默认的10,000减少到1,000，并指定随机数种子以保证可重复性{p_end}
{phang2}{cmd:. bayes, prior({c_use:urban age child1 child2 child3 _cons}, uniform(-10,10)) mcmcsize(1000) rseed(12345): melogit c_use urban age child* || district:}

{pstd}
与上述相同，但使用快捷符号引用所有回归系数{p_end}
{phang2}{cmd:. bayes, prior({c_use:}, uniform(-10,10)) mcmcsize(1000) rseed(12345): melogit c_use urban age child* || district:}

{pstd}
在重播时保存MCMC结果{p_end}
{phang2}{cmd:. bayes, saving(mymcmc)}


{marker results}{...}
{title:存储结果}

{pstd}
请参见 {help bayes##results:{it:存储结果}} 在 {manhelp bayes BAYES}。
{p_end}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <bayes_melogit.sthlp>}