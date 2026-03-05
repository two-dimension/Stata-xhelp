{smcl}
{* *! version 1.0.7  25apr2019}{...}
{viewerdialog "bayes: mixed" "dialog bayes_mixed"}{...}
{vieweralsosee "[BAYES] bayes: mixed" "mansection BAYES bayesmixed"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[BAYES] bayes" "help bayes_zh"}{...}
{vieweralsosee "[ME] mixed" "help mixed_zh"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[BAYES] Bayesian commands" "help bayesian_commands_zh"}{...}
{vieweralsosee "[BAYES] Bayesian estimation" "help bayesian_estimation_zh"}{...}
{vieweralsosee "[BAYES] Bayesian postestimation" "help bayesian_postestimation_zh"}{...}
{vieweralsosee "[BAYES] Glossary" "help bayes_glossary_zh"}{...}
{viewerjumpto "Syntax" "bayes_mixed_zh##syntax"}{...}
{viewerjumpto "Menu" "bayes_mixed_zh##menu"}{...}
{viewerjumpto "Description" "bayes_mixed_zh##description"}{...}
{viewerjumpto "Links to PDF documentation" "bayes_mixed_zh##linkspdf"}{...}
{viewerjumpto "Examples" "bayes_mixed_zh##examples"}{...}
{viewerjumpto "Stored results" "bayes_mixed_zh##results"}
{help bayes_mixed:English Version}
{hline}{...}
{p2colset 1 25 27 2}{...}
{p2col:{bf:[BAYES] bayes: mixed} {hline 2}}贝叶斯多层线性回归{p_end}
{p2col:}({mansection BAYES bayesmixed:查看完整的PDF手册条目}){p_end}
{p2colreset}{...}


{marker syntax}{...}
{title:语法}

{p 8 15 2}
{cmd:bayes} [{cmd:,} {it:bayesopts}] {cmd::} {opt mixed}
{depvar} {it:fe_equation} [{cmd:||} {it:re_equation}] 
	[{cmd:||} {it:re_equation} ...] 
	[{cmd:,} {it:{help bayes_mixed##options_table:选项}}]

{p 4 4 2}
    其中 {it:fe_equation} 的语法为

{p 12 24 2}
    [{indepvars}] {ifin}
        [{it:{help bayes_mixed##weight:权重}}]
    [{cmd:,} {it:{help bayes_mixed##fe_options:固定效应选项}}]

{p 4 4 2}
    而 {it:re_equation} 的语法为以下之一：

{p 8 18 2}
    对于随机系数和截距

{p 12 24 2}
	{it:levelvar}{cmd::} [{varlist}]
		[{cmd:,} {it:{help bayes_mixed##re_options:随机效应选项}}]

{p 8 18 2}
    对于在因子变量的值之间的随机效应

{p 12 24 2}
	{it:levelvar}{cmd::} {cmd:R.}{varname}

{p 4 4 2}
    {it:levelvar} 要么是识别该层随机效应的组结构的变量，或者是 {cmd:_all}，表示一个包含所有观测值的组。{p_end}

{synoptset 23 tabbed}{...}
{marker fe_options}{...}
{synopthdr :固定效应选项}
{synoptline}
{syntab:模型}
{synopt :{opt nocons:tant}}在 {help bayes_glossary##fixed_effects_parameters:固定效应} 方程中抑制常数项{p_end}
{synoptline}

{synoptset 23 tabbed}{...}
{marker re_options}{...}
{synopthdr :随机效应选项}
{synoptline}
{syntab:模型}
{synopt :{opt cov:ariance(mixed##vartype:vartype)}}随机效应的方差-协方差结构；仅支持 {cmd:independent}、{cmd:identity} 和 {cmd:unstructured} 结构{p_end}
{synopt :{opt nocons:tant}}在随机效应方程中抑制常数项{p_end}
{synoptline}

{synoptset 23 tabbed}{...}
{marker options_table}{...}
{synopthdr :选项}
{synoptline}
{syntab :报告}
{synopt :{opt nohead:er}}抑制输出头{p_end}
{synopt :{opt nogr:oup}}抑制总结组的表{p_end}
{p 4 6 2}
{it:indepvars} 可以包含因子变量；见 {help fvvarlist_zh}.{p_end}
{p 4 6 2}
{it:depvar}、{it:indepvars} 和 {it:varlist} 可以包含时间序列运算符；见 {help tsvarlist_zh}.{p_end}
{marker weight}{...}
{p 4 6 2}
{opt fweight} 是允许的；见 {help weight_zh}.{p_end}
{p 4 6 2}
{cmd:bayes:} {cmd:mixed,} {cmd:level()} 等价于 
{cmd:bayes,} {cmd:clevel():} {cmd:mixed}.{p_end}
{p 4 6 2}有关 {it:options} 的详细描述，请见
{help mixed##options:{it:选项}} 在 {manhelp mixed ME}.{p_end}

{marker bayesopts}{...}
{synoptset 30 tabbed}{...}
{synopthdr:bayesopts}
{synoptline}
{marker options_priors}{...}
{syntab:{help bayes##priors_options:先验}}
{p2coldent:* {opt normalpr:ior(#)}}指定回归系数默认正态先验的标准差；默认值为 {cmd:normalprior(100)}{p_end}
{p2coldent:* {opt igammapr:ior(# #)}}指定方差分量默认反 gamma 先验的形状和尺度；默认值为 {cmd:igammaprior(0.01 0.01)}{p_end}
{p2coldent:* {cmdab:iwishartpr:ior(}{help bayes##iwishartpriorspec:{it:#} [...]}{cmd:)}}指定默认反 Wishart 先验的自由度，并可选择性地指定尺度矩阵{p_end}
{* INCLUDE help bayesecmd_opts*}
INCLUDE help bayesmh_prioropts

{marker options_simulation}{...}
{syntab:{help bayes##simulation_options:模拟}}
INCLUDE help bayesmh_simopts
{synopt :{opt restubs(restub1 restub2 ...)}}为所有层的随机效应参数指定存根{p_end}

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
INCLUDE help bayesme_reportopts
{synopt :{opt melabel}}使用与 {cmd:mixed} 相同的行标签显示估计表{p_end}
INCLUDE help bayesme_reportopts2

{marker options_advanced}{...}
{syntab:{help bayes##advanced_options:高级}}
INCLUDE help bayesmh_advancedopts
{synoptline}
{p 4 6 2}* 带星号的选项是特定于 {cmd:bayes} 前缀的；其他选项在 {cmd:bayes} 和 {help bayesmh_zh} 之间是共享的。{p_end}
{p 4 6 2}选项 {cmd:prior()} 和 {cmd:block()} 可以重复使用。{p_end}
{p 4 6 2}{helpb bayesmh##priorspec:{it:priorspec}} 和 
{helpb bayesmh##paramref:{it:paramref}} 在 {manhelp bayesmh BAYES} 中定义。
{p_end}
{p 4 6 2}{it:paramref} 可以包含因子变量；见 {help fvvarlist_zh}。
{p_end}
{p 4 6 2}有关估计后可用功能，请见 {manhelp bayesian_postestimation BAYES:贝叶斯估计后分析}。{p_end}
{p2colreset}{...}
{p 4 6 2}模型参数是回归系数 
{cmd:{c -(}}{it:depvar}{cmd::}{it:indepvars}{cmd:{c )-}}，
误差方差 {cmd:{c -(}e.}{it:depvar}{cmd::sigma2{c )-}}，随机效应 
{cmd:{c -(}}{it:rename}{cmd:{c )-}}，以及方差分量 
{cmd:{c -(}}{it:rename}{cmd::sigma2{c )-}} 或者，如果指定了选项 
{cmd:covariance(unstructured)}，则是矩阵参数 
{cmd:{c -(}}{it:restub}{cmd::Sigma,matrix{c )-}}；见 
{mansection BAYES bayesRemarksandexamplesLikelihoodmodel:{it:似然模型}} 
在 {bf:[BAYES] bayes} 中了解 {it:rename} 和 {it:restub} 的定义。 
使用 {cmd:dryrun} 选项查看模型参数在估计之前的定义。{p_end}
{p 4 6 2}有关 {it:bayesopts} 的详细描述，请见 
{help bayes##options:{it:选项}} 在 {manhelp bayes BAYES}。{p_end}

{marker menu}{...}
{title:菜单}

{phang}
{bf:统计 > 多层混合效应模型 > 贝叶斯回归 > 线性回归}


{marker description}{...}
{title:描述}

{pstd}
{cmd:bayes: mixed} 为连续结果拟合贝叶斯多层线性回归；
有关详细信息，请参见 {manhelp bayes BAYES} 和 {manhelp mixed ME}。


{marker linkspdf}{...}
{title:PDF文档链接}

        {mansection BAYES bayesmixedQuickstart:快速开始}

        {mansection BAYES bayesmixedRemarksandexamples:备注和示例}

        {mansection BAYES bayesmixedMethodsandformulas:方法和公式}

{pstd}
上述部分未包含在此帮助文件中。


{marker examples}{...}
{title:示例}

    {hline}
{pstd}
设置{p_end}
{phang2}{cmd:. webuse mathscores}

{pstd}
使用默认先验拟合带有随机截距的贝叶斯两级回归，通过 {cmd:school} {p_end}
{phang2}{cmd:. bayes: mixed math5 math3 || school:}

{pstd}
除了主要模型参数外，显示前 5 个随机效应的结果{p_end}
{phang2}{cmd:. bayes, showreffects({U0[1/5]})}

{pstd}
检查主要模型参数的 MCMC 收敛性{p_end}
{phang2}{cmd:. bayesgraph diagnostics _all}

{pstd}
检查学校 10 和 40 的随机效应的 MCMC 收敛性{p_end}
{phang2}{cmd:. bayesgraph diagnostics {U0[(10 40).id]}}

{pstd}
在一张图上绘制前 12 个随机效应的后验分布直方图{p_end}
{phang2}{cmd:. bayesgraph histogram {U0[1/12]}, byparm}

{pstd}
使用 {cmd:mixed} 的参数标签显示估计结果，并计算重新播放的对数边际似然{p_end}
{phang2}{cmd:. bayes, melabel remargl}

{pstd}
为所有回归系数指定相同的均匀先验，并将 MCMC 样本大小从默认的 10,000 降低到 1,000{p_end}
{phang2}{cmd:. bayes, prior({math5:math3 _cons}, uniform(-100,100)) mcmcsize(1000): mixed math5 math3 || school:}

{pstd}
与上面相同，但使用略语表示所有回归系数{p_end}
{phang2}{cmd:. bayes, prior({math5:}, uniform(-100,100)) mcmcsize(1000): mixed math5 math3 || school:}

{pstd}
拟合带有随机截距和 {cmd:math3} 的随机系数的贝叶斯两层回归，通过 {cmd:school}。使用 10 的标准差代替 100 的默认正态先验；
将预热期从默认的 2,500 增加到 3,000；将 MCMC 样本大小从默认的 10,000 降低到 1,000；并指定随机数种子以确保可重复性{p_end}
{phang2}{cmd:. bayes, normalprior(10) burnin(3000) mcmcsize(1000) rseed(12345): mixed math5 math3 || school: math3}

{pstd}
为随机截距和随机系数指定一个非结构化的协方差矩阵，并使用自由度为 10 的逆 Wishart 先验和尺度矩阵 {cmd:S}，而不是默认的 3 自由度和身份尺度矩阵。{p_end}
{phang2}{cmd:. matrix S = (5,-0.4\-0.4,0.05)}{p_end}
{phang2}{cmd:. bayes, iwishartprior(10 S) mcmcsize(1000): mixed math5 math3 || school: math3, covariance(unstructured)}

{pstd}
存储 MCMC 结果以便后续回放{p_end}
{phang2}{cmd:. bayes, saving(mymcmc)}

    {hline}
{pstd}设置{p_end}
{phang2}{cmd:. webuse mathscores}

{pstd}使用两个链拟合贝叶斯两层回归{p_end}
{phang2}{cmd:. bayes, nchains(2) rseed(16): mixed math5 math3 || school:}

    {hline}

{marker results}{...}
{title:存储结果}

{pstd}
请参见 {help bayes##results:{it:存储结果}} 在 {manhelp bayes BAYES}。
{p_end}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <bayes_mixed.sthlp>}