{smcl}
{* *! version 1.0.9  25apr2019}{...}
{viewerdialog "bayes: mestreg" "dialog bayes_mestreg"}{...}
{vieweralsosee "[BAYES] bayes: mestreg" "mansection BAYES bayesmestreg"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[BAYES] bayes" "help bayes_zh"}{...}
{vieweralsosee "[ME] mestreg" "help mestreg_zh"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[BAYES] Bayesian commands" "help bayesian_commands_zh"}{...}
{vieweralsosee "[BAYES] Bayesian estimation" "help bayesian_estimation_zh"}{...}
{vieweralsosee "[BAYES] Bayesian postestimation" "help bayesian_postestimation_zh"}{...}
{vieweralsosee "[BAYES] Glossary" "help bayes_glossary_zh"}{...}
{viewerjumpto "语法" "bayes_mestreg_zh##syntax"}{...}
{viewerjumpto "菜单" "bayes_mestreg_zh##menu"}{...}
{viewerjumpto "描述" "bayes_mestreg_zh##description"}{...}
{viewerjumpto "PDF 文档链接" "bayes_mestreg_zh##linkspdf"}{...}
{viewerjumpto "示例" "bayes_mestreg_zh##examples"}{...}
{viewerjumpto "存储结果" "bayes_mestreg_zh##results"}
{help bayes_mestreg:English Version}
{hline}{...}
{p2colset 1 27 29 2}{...}
{p2col:{bf:[BAYES] bayes: mestreg} {hline 2}}贝叶斯多层参数生存模型{p_end}
{p2col:}({mansection BAYES bayesmestreg:查看完整的 PDF 手册条目}){p_end}
{p2colreset}{...}


{marker syntax}{...}
{title:语法}

{p 8 15 2}
{cmd:bayes} [{cmd:,} {it:bayesopts}] {cmd::} {opt mestreg}
         {it:fe_equation} [{cmd:||} {it:re_equation}] 
	[{cmd:||} {it:re_equation} ...] 
	{cmd:,} {opth dist:ribution(mestreg##distname:distname)}
	[{it:{help bayes_mestreg##options_table:选项}}]

{p 4 4 2}
    其中 {it:fe_equation} 的语法为

{p 12 24 2}
	[{indepvars}] {ifin}
        [{it:{help bayes_mestreg##weight:权重}}]
	[{cmd:,} {it:{help bayes_mestreg##fe_options:固定效应选项}}]

{p 4 4 2}
    而 {it:re_equation} 的语法为以下之一：

{p 8 18 2}
	用于随机系数和截距

{p 12 24 2}
	{it:levelvar}{cmd::} [{varlist}]
		[{cmd:,} {it:{help bayes_mestreg##re_options:随机效应选项}}]

{p 8 18 2}
	用于因子变量值之间的随机效应

{p 12 24 2}
	{it:levelvar}{cmd::} {cmd:R.}{varname}

{p 4 4 2}
    {it:levelvar} 要么是识别该级别随机效应组结构的变量，要么为 {cmd:_all}，表示一个包括所有观察值的组。{p_end}

{synoptset 23 tabbed}{...}
{marker fe_options}{...}
{synopthdr :固定效应选项}
{synoptline}
{syntab:模型}
{synopt :{opt nocons:tant}}从 {help bayes_glossary##fixed_effects_parameters:固定效应} 方程中抑制常数项{p_end}
{synopt :{opth off:set(varname:varname)}}将 {it:varname} 包含在模型中，并将其系数限制为 1{p_end}
{synoptline}

{synoptset 23 tabbed}{...}
{marker re_options}{...}
{synopthdr :随机效应选项}
{synoptline}
{syntab:模型}
{synopt :{opth cov:ariance(mestreg##vartype:vartype)}}随机效应的方差-协方差结构；仅支持 {cmd:independent}、{cmd:identity} 和 {cmd:unstructured} 结构{p_end}
{synopt :{opt nocons:tant}}从随机效应方程中抑制常数项{p_end}
{synoptline}

{synoptset 23 tabbed}{...}
{marker options_table}{...}
{synopthdr :选项}
{synoptline}
{syntab:模型}
{p2coldent :* {opth dist:ribution(mestreg##distname:distname)}}指定生存分布{p_end}
{synopt :{opt time}}使用加速失效时间指标{p_end}

{syntab :报告}
{synopt :{opt nohr}}不报告风险比{p_end}
{synopt :{opt tr:atio}}报告时间比{p_end}
{synopt :{opt nosh:ow}}不显示设置信息{p_end}
{synopt :{opt notab:le}}抑制系数表{p_end}
{synopt :{opt nohead:er}}抑制输出头{p_end}
{synopt :{opt nogr:oup}}抑制总结组的表格{p_end}
{* INCLUDE help bayesme_display}

{synopt :{opt l:evel(#)}}设置可信水平；默认值为 {cmd:level(95)}{p_end}
{synoptline}
{p 4 6 2}
* {opt distribution(distname)} 是必需的。{p_end}
{p 4 6 2}
在使用 {cmd:bayes: mestreg} 之前，您必须 {cmd:stset} 您的数据；请参见 {manhelp stset ST}。{p_end}
{p 4 6 2}
{it:indepvars} 可以包含因子变量；请参见 {help fvvarlist_zh}。{p_end}
{marker weight}{...}
{p 4 6 2}
{opt fweight} 是允许的；请参见 {help weight_zh}。{p_end}
{p 4 6 2}
{cmd:bayes:} {cmd:mestreg,} {cmd:level()} 相当于 
{cmd:bayes,} {cmd:clevel():} {cmd:mestreg}。{p_end}
{p 4 6 2}有关 {it:options} 的详细说明，请参见
{help mestreg##options:{it:选项}} 在 {manhelp mestreg ME}。{p_end}

{marker bayesopts}{...}
{synoptset 30 tabbed}{...}
{synopthdr:bayesopts}
{synoptline}
{marker options_priors}{...}
{syntab:{help bayes##priors_options:先验}}
{p2coldent:* {opt normalpr:ior(#)}}指定回归系数和对数附加参数的默认正态先验的标准差；默认值为 {cmd:normalprior(100)}{p_end}
{p2coldent:* {opt igammapr:ior(# #)}}指定方差成分的默认逆伽玛先验的形状和比例；默认值为 {cmd:igammaprior(0.01 0.01)}{p_end}
{p2coldent:* {cmdab:iwishartpr:ior(}{help bayes##iwishartpriorspec:{it:#} [...]}{cmd:)}}指定自由度和可选的默认逆Wishart先验的比例矩阵{p_end}
{* INCLUDE help bayesecmd_opts*}
INCLUDE help bayesmh_prioropts

{marker options_simulation}{...}
{syntab:{help bayes##simulation_options:模拟}}
INCLUDE help bayesmh_simopts
{synopt :{opt restubs(restub1 restub2 ...)}}指定所有级别的随机效应参数的存根{p_end}

{marker options_blocking}{...}
{syntab:{help bayes##blocking_options:阻止}}
{p2coldent:* {opt blocksize(#)}}最大块大小；默认值为 {cmd:blocksize(50)}{p_end}
INCLUDE help bayesmh_blockopts
  {p2coldent:* {opt noblock:ing}}默认情况下不阻止参数{p_end}

{marker options_initialization}{...}
{syntab:{help bayes##initialization_options:初始化}}
INCLUDE help bayesmh_initopts
{p2coldent:* {opt noi:sily}}在初始化期间显示来自估计命令的输出{p_end}

{marker options_adaptation}{...}
{syntab:{help bayes##adaptation_options:适应}}
INCLUDE help bayesmh_adaptopts

{marker options_reporting}{...}
{syntab:{help bayes##reporting_options:报告}}
{* INCLUDE help bayesme_reportopts*}
INCLUDE help bayes_clevel_hpd_short
{p2coldent:* {opt nohr}}不报告风险比{p_end}
{p2coldent:* {opt tr:atio}}报告时间比；要求使用 {cmd:time} 的 {cmd:mestreg} 选项{p_end}
INCLUDE help bayesmh_eform
{synopt :{opt remargl}}计算对数边际似然{p_end}
{synopt :{opt batch(#)}}指定批量均值计算的块长度；默认值为 {cmd:batch(0)}{p_end}
{synopt :{cmdab:sav:ing(}{help filename_zh:{it:filename}}[{cmd:, replace}]{cmd:)}}将模拟结果保存到 {it:filename}{cmd:.dta}{p_end}
{synopt :{opt nomodelsumm:ary}}抑制模型摘要{p_end}
{synopt :{opt nomesumm:ary}}抑制多层结构摘要{p_end}
{synopt :[{cmd:no}]{opt dots}}抑制点或每 100 次迭代显示点和每 1,000 次迭代显示迭代号；默认值为 {cmd:dots}{p_end}
{synopt :{cmd:dots(}{it:#}[{cmd:,} {opt every(#)}]{cmd:)}}在进行模拟时显示点 {p_end}
{synopt :[{cmd:no}]{opth show:(bayesmh##paramref:paramref)}}指定要从输出中排除或包括的模型参数{p_end}
{synopt :{opt showre:ffects}[{cmd:(}{it:{help bayesian postestimation##bayesian_post_reref:reref}}{cmd:)}]}指定是否包括所有或部分随机效应参数的输出{p_end}
{synopt :{opt melabel}}使用与 {cmd:mestreg} 相同的行标签显示估计表{p_end}
{synopt :{opt nogr:oup}}抑制总结组的表格{p_end}
{synopt :{opt notab:le}}抑制估计表{p_end}
{synopt :{opt nohead:er}}抑制输出头{p_end}
{synopt :{opt title(string)}}在参数估计表上方显示 {it:string} 作为标题{p_end}
{synopt :{help bayesmh##display_options:{it:显示选项}}}控制空间、行宽和基数及空单元{p_end}

{marker options_advanced}{...}
{syntab:{help bayes##advanced_options:高级}}
INCLUDE help bayesmh_advancedopts
{synoptline}
{p 4 6 2}* 带星号的选项特定于 {cmd:bayes} 前缀；其他选项在 {cmd:bayes} 和 {help bayesmh_zh} 之间是共同的。{p_end}
{p 4 6 2}选项 {cmd:prior()} 和 {cmd:block()} 可以重复。{p_end}
{p 4 6 2}{helpb bayesmh##priorspec:{it:priorspec}} 和
{helpb bayesmh##paramref:{it:paramref}} 在 {manhelp bayesmh BAYES} 中定义。
{p_end}
{p 4 6 2}{it:paramref} 可以包含因子变量；请参见 {help fvvarlist_zh}。
{p_end}
{p 4 6 2}有关估计后可用的功能，请参见 {manhelp bayesian_postestimation BAYES:贝叶斯后估计}。{p_end}
{p2colreset}{...}
{p 4 6 2}模型参数是回归系数
{cmd:{c -(}}{it:depvar}{cmd::}{it:indepvars}{cmd:{c )-}},
附加参数如在
{mansection BAYES bayesmeglmRemarksandexamplesAdditionalmodelparameters:{it:附加模型参数}}中所述，
随机效应
{cmd:{c -(}}{it:rename}{cmd:{c )-}}，以及方差成分
{cmd:{c -(}}{it:rename}{cmd::sigma2{c )-}}；或者，如果指定选项
{cmd:covariance(unstructured)}，则为矩阵参数
{cmd:{c -(}}{it:restub}{cmd::Sigma,matrix{c )-}}；详见
{mansection BAYES bayesRemarksandexamplesLikelihoodmodel:{it:似然模型}}
在 {bf:[BAYES] bayes} 中定义 {it:rename}s 和 {it:restub}。
使用 {cmd:dryrun} 选项可以在估计之前查看模型参数的定义。{p_end}
{p 4 6 2}有关 {it:bayesopts} 的详细描述，请参见
{help bayes##options:{it:选项}} 在 {manhelp bayes BAYES}。{p_end}


{marker menu}{...}
{title:菜单}

{phang}
{bf:统计 > 多层混合效应模型 > 贝叶斯回归 > 参数生存回归}


{marker description}{...}
{title:描述}

{pstd}
{cmd:bayes: mestreg} 适合贝叶斯多层参数生存模型以用于生存时间结果；
有关详细信息，请参见 {manhelp bayes BAYES} 和 {manhelp mestreg ME}。


{marker linkspdf}{...}
{title:PDF 文档链接}

        {mansection BAYES bayesmestregQuickstart:快速入门}

        {mansection BAYES bayesmestregRemarksandexamples:备注和示例}

        {mansection BAYES bayesmestregMethodsandformulas:方法和公式}

{pstd}
上述部分未包含在此帮助文件中。


{marker examples}{...}
{title:示例：设置}

{pstd}
设置{p_end}
{phang2}{cmd:. webuse catheter}{p_end}
{phang2}{cmd:. stset}{p_end}


{title:示例：指数回归}

{pstd}
使用默认先验通过 {cmd:patient} 适合贝叶斯二层指数回归并指定随机数种子以实现可重复性{p_end}
{phang2}{cmd:. bayes, rseed(123): mestreg age female || patient:, distribution(exponential)}

{pstd}
显示系数而不是风险比{p_end}
{phang2}{cmd:. bayes, nohr}

{pstd}
除了主要模型参数外，显示前 5 个随机效应的结果{p_end}
{phang2}{cmd:. bayes, showreffects({U0[1/5]})}

{pstd}
检查主要模型参数的 MCMC 收敛性{p_end}
{phang2}{cmd:. bayesgraph diagnostics _all}

{pstd}
检查患者 1、10 和 20 的 MCMC 收敛性{p_end}
{phang2}{cmd:. bayesgraph diagnostics {U0[(1 10 20).patient]}}

{pstd}
在一张图上绘制前 12 个随机效应的后验分布的直方图{p_end}
{phang2}{cmd:. bayesgraph histogram {U0[1/12]}, byparm}

{pstd}
使用 {cmd:mestreg} 的参数标签显示估计结果，并在重放时计算对数边际似然{p_end}
{phang2}{cmd:. bayes, melabel remargl}

{pstd}
在重放中保存 MCMC 结果并存储估计结果以待后续比较{p_end}
{phang2}{cmd:. bayes, saving(mymcmc_exp)}{p_end}
{phang2}{cmd:. estimates store exp}{p_end}

{pstd}
对所有回归系数使用相同的均匀先验，而不是默认的正态先验{p_end}
{phang2}{cmd:. bayes, prior({_t:age female _cons}, uniform(-10,10)): mestreg age female || patient:, distribution(exponential)}

{pstd}
与上述相同，但使用快捷方式表示所有回归系数{p_end}
{phang2}{cmd:. bayes, prior({_t:}, uniform(-10,10)): mestreg age female || patient:, distribution(exponential)}


{title:示例：伽玛回归}

{pstd}
使用默认先验通过 {cmd:patient} 适合贝叶斯二层伽玛回归；指定随机数种子并在估计过程中计算对数边际似然{p_end}
{phang2}{cmd:. bayes, rseed(123) remargl: mestreg age female || patient:, distribution(gamma)}

{pstd}
检查主要模型参数的 MCMC 收敛性{p_end}
{phang2}{cmd:. bayesgraph diagnostics _all}

{pstd}
在重放中保存 MCMC 结果并存储估计结果以待后续比较{p_end}
{phang2}{cmd:. bayes, saving(mymcmc_gamma)}{p_end}
{phang2}{cmd:. estimates store gamma}{p_end}


{title:示例：韦布尔回归}

{pstd}
使用默认先验通过 {cmd:patient} 适合贝叶斯二层韦布尔回归，并指定随机数种子以实现可重复性{p_end}
{phang2}{cmd:. bayes, rseed(123): mestreg age female || patient:, distribution(weibull)}

{pstd}
检查主要模型参数的 MCMC 收敛性{p_end}
{phang2}{cmd:. bayesgraph diagnostics _all}

{pstd}
将烧入期从默认的 2500 增加到 5000 以改善收敛性，并使用 4 的稀疏间隔以减少自相关{p_end}
{phang2}{cmd:. bayes, burnin(5000) thinning(4) rseed(123): mestreg age female || patient:, distribution(weibull)}

{pstd}
再次检查主要模型参数的 MCMC 收敛性{p_end}
{phang2}{cmd:. bayesgraph diagnostics _all}

{pstd}
保存 MCMC 结果并在重放中计算对数边际似然；存储估计结果以待后续比较{p_end}
{phang2}{cmd:. bayes, saving(mymcmc_weibull) remargl}{p_end}
{phang2}{cmd:. estimates store weibull}{p_end}


{title:示例：模型比较}

{pstd}
使用指数回归作为基本模型比较模型：根据贝叶斯因子，指数回归是首选模型{p_end}
{phang2}{cmd:. bayesstats ic exp gamma weibull}{p_end}


{marker results}{...}
{title:存储结果}

{pstd}
请参见 {help bayes##results:{it:存储结果}} 在 {manhelp bayes BAYES} 中。
{p_end}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <bayes_mestreg.sthlp>}