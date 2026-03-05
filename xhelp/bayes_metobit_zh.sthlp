{smcl}
{* *! version 1.0.7  25apr2019}{...}
{viewerdialog "bayes: metobit" "dialog bayes_metobit"}{...}
{vieweralsosee "[BAYES] bayes: metobit" "mansection BAYES bayesmetobit"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[BAYES] bayes" "help bayes_zh"}{...}
{vieweralsosee "[ME] metobit" "help metobit_zh"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[BAYES] Bayesian commands" "help bayesian_commands_zh"}{...}
{vieweralsosee "[BAYES] Bayesian estimation" "help bayesian_estimation_zh"}{...}
{vieweralsosee "[BAYES] Bayesian postestimation" "help bayesian_postestimation_zh"}{...}
{vieweralsosee "[BAYES] Glossary" "help bayes_glossary_zh"}{...}
{viewerjumpto "Syntax" "bayes_metobit_zh##syntax"}{...}
{viewerjumpto "Menu" "bayes_metobit_zh##menu"}{...}
{viewerjumpto "Description" "bayes_metobit_zh##description"}{...}
{viewerjumpto "Links to PDF documentation" "bayes_metobit_zh##linkspdf"}{...}
{viewerjumpto "Examples" "bayes_metobit_zh##examples"}{...}
{viewerjumpto "Stored results" "bayes_metobit_zh##results"}
{help bayes_metobit:English Version}
{hline}{...}
{p2colset 1 27 29 2}{...}
{p2col:{bf:[BAYES] bayes: metobit} {hline 2}}贝叶斯多层次Tobit回归{p_end}
{p2col:}({mansection BAYES bayesmetobit:查看完整的PDF手册条目}){p_end}
{p2colreset}{...}


{marker syntax}{...}
{title:语法}

{p 8 15 2}
{cmd:bayes} [{cmd:,} {it:bayesopts}] {cmd::} {opt metobit}
{depvar} {it:fe_equation} [{cmd:||} {it:re_equation}] 
	[{cmd:||} {it:re_equation} ...] 
	[{cmd:,} {it:{help bayes_metobit##options_table:选项}}]

{p 4 4 2}
    其中 {it:fe_equation} 的语法为

{p 12 24 2}
	[{indepvars}] {ifin}
        [{it:{help bayes_metobit##weight:权重}}]
	[{cmd:,} {it:{help bayes_metobit##fe_options:固定效应选项}}]

{p 4 4 2}
    而 {it:re_equation} 的语法为以下之一：

{p 8 18 2}
	对于随机系数和截距

{p 12 24 2}
	{it:levelvar}{cmd::} [{varlist}]
		[{cmd:,} {it:{help bayes_metobit##re_options:随机效应选项}}]

{p 8 18 2}
	对于因子变量的值之间的随机效应

{p 12 24 2}
	{it:levelvar}{cmd::} {cmd:R.}{varname}

{p 4 4 2}
    {it:levelvar} 要么是识别该层随机效应的组结构的变量，要么是 {cmd:_all}，表示一个包含所有观测值的组。{p_end}

{synoptset 23 tabbed}{...}
{marker fe_options}{...}
{synopthdr :固定效应选项}
{synoptline}
{syntab:模型}
{synopt :{opt nocons:tant}}从 {help bayes_glossary##fixed_effects_parameters:固定效应} 方程中 suppress 常数项{p_end}
{synopt :{opth off:set(varname)}}在模型中包含 {it:varname}，其系数约束为1{p_end}
{synoptline}

{synoptset 23 tabbed}{...}
{marker re_options}{...}
{synopthdr :随机效应选项}
{synoptline}
{syntab:模型}
{synopt :{opth cov:ariance(metobit##vartype:vartype)}}{help bayes_glossary##random_effects_parameters:随机效应}的方差-协方差结构；仅支持结构 {cmd:independent}、{cmd:identity} 和 {cmd:unstructured}{p_end}
{synopt :{opt nocons:tant}}从随机效应方程中 suppress 常数项{p_end}
{synoptline}

{synoptset 23 tabbed}{...}
{marker options_table}{...}
{synopthdr :选项}
{synoptline}
{syntab:模型}
{synopt :{cmd:ll(}{varname}|{it:#}{cmd:)}}左侧截断变量或限制{p_end}
{synopt :{cmd:ul(}{varname}|{it:#}{cmd:)}}右侧截断变量或限制{p_end}

{syntab :报告}
{synopt :{cmd:notab:le}} suppress 系数表{p_end}
{synopt :{cmd:nohead:er}} suppress 输出头{p_end}
{synopt :{cmd:nogr:oup}} suppress 汇总组的表{p_end}
INCLUDE help bayesme_display

{synopt :{opt l:evel(#)}}设置可信水平；默认值为 {cmd:level(95)}{p_end}
{p 4 6 2}
{it:indepvars} 可以包含因子变量；请参阅 {help fvvarlist_zh}.{p_end}
{p 4 6 2}
{it:depvar}、{it:indepvars} 和 {it:varlist} 可以包含时间序列运算符；请参阅 {help tsvarlist_zh}.{p_end}
{marker weight}{...}
{p 4 6 2}
{opt fweight} 是允许的；见 {help weight_zh}.{p_end}
{p 4 6 2}
{cmd:bayes:} {cmd:metobit,} {cmd:level()} 等同于 
{cmd:bayes,} {cmd:clevel():} {cmd:metobit}.{p_end}
{p 4 6 2}有关 {it:options} 的详细描述，请参阅 {help metobit##options:{it:选项}} 在 {manhelp metobit ME} 中。{p_end}

{marker bayesopts}{...}
{synoptset 30 tabbed}{...}
{synopthdr:bayesopts}
{synoptline}
{marker options_priors}{...}
{syntab:{help bayes##priors_options:先验}}
{p2coldent:* {opt normalpr:ior(#)}}指定回归系数的默认正态先验的标准差；默认值为 {cmd:normalprior(100)}{p_end}
{p2coldent:* {opt igammapr:ior(# #)}}指定方差分量的默认逆伽马先验的形状和规模；默认值为 {cmd:igammaprior(0.01 0.01)}{p_end}
{p2coldent:* {cmdab:iwishartpr:ior(}{help bayes##iwishartpriorspec:{it:#} [...]}{cmd:)}}指定默认逆Wishart先验的自由度和（可选）规模矩阵，适用于结构随机效应方差{p_end}
{* INCLUDE help bayesecmd_opts*}
INCLUDE help bayesmh_prioropts

{marker options_simulation}{...}
{syntab:{help bayes##simulation_options:模拟}}
INCLUDE help bayesmh_simopts
{synopt :{opt restubs(restub1 restub2 ...)}}为所有级别的随机效应参数指定存根{p_end}

{marker options_blocking}{...}
{syntab:{help bayes##blocking_options:区块}}
{p2coldent:* {opt blocksize(#)}}最大区块大小；默认值为 {cmd:blocksize(50)}{p_end}
INCLUDE help bayesmh_blockopts
  {p2coldent:* {opt noblock:ing}}默认不按区块处理参数{p_end}

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
{synopt :{opt melabel}}使用与 {cmd:metobit} 相同的行标签显示估计结果{p_end}
INCLUDE help bayesme_reportopts2

{marker options_advanced}{...}
{syntab:{help bayes##advanced_options:高级}}
INCLUDE help bayesmh_advancedopts
{synoptline}
{p 4 6 2}* 带星号的选项特定于 {cmd:bayes} 前缀；其他选项在 {cmd:bayes} 和 {help bayesmh_zh} 之间是共同的。{p_end}
{p 4 6 2}选项 {cmd:prior()} 和 {cmd:block()} 可以重复使用。{p_end}
{p 4 6 2}{helpb bayesmh##priorspec:{it:priorspec}} 和
{helpb bayesmh##paramref:{it:paramref}} 在 {manhelp bayesmh BAYES} 中定义。
{p_end}
{p 4 6 2}{it:paramref} 可以包含因子变量；请参阅 {help fvvarlist_zh}。
{p_end}
{p 4 6 2}有关估计后可用功能，请参阅 {manhelp bayesian_postestimation BAYES:贝叶斯后验估计}。{p_end}
{p2colreset}{...}
{p 4 6 2}模型参数是回归系数
{cmd:{c -(}}{it:depvar}{cmd::}{it:indepvars}{cmd:{c )-}},
误差方差 {cmd:{c -(}e.}{it:depvar}{cmd::sigma2{c )-}}, 随机效应
{cmd:{c -(}}{it:rename}{cmd:{c )-}}, 以及方差分量
{cmd:{c -(}}{it:rename}{cmd::sigma2{c )-}} 或，如果指定了选项
{cmd:covariance(unstructured)}，矩阵参数
{cmd:{c -(}}{it:restub}{cmd::Sigma,matrix{c )-}}；请参阅
{mansection BAYES bayesRemarksandexamplesLikelihoodmodel:{it:似然模型}}
在 {bf:[BAYES] bayes} 中了解如何定义 {it:rename} 和 {it:restub}。
使用 {cmd:dryrun} 选项以查看模型参数的定义，
在估计之前。{p_end}
{p 4 6 2}有关 {it:bayesopts} 的详细描述，请参阅
{help bayes##options:{it:选项}} 在 {manhelp bayes BAYES} 中。{p_end}


{marker menu}{...}
{title:菜单}

{phang}
{bf:统计 > 多层次混合效应模型 > 贝叶斯回归 > Tobit回归}


{marker description}{...}
{title:描述}

{pstd}
{cmd:bayes: metobit} 对被截断的连续结果拟合贝叶斯多层次Tobit回归；
请参阅 {manhelp bayes BAYES} 和 {manhelp metobit ME} 获取详细信息。


{marker linkspdf}{...}
{title:PDF文档链接}

        {mansection BAYES bayesmetobitQuickstart:快速入门}

        {mansection BAYES bayesmetobitRemarksandexamples:备注和示例}

        {mansection BAYES bayesmetobitMethodsandformulas:方法和公式}

{pstd}
以上部分未包含在本帮助文件中。


{marker examples}{...}
{title:示例}

{pstd}
设置{p_end}
{phang2}{cmd:. webuse mathscores}

{pstd}
使用默认先验以30为人工上限拟合具有 {cmd:school} 的贝叶斯二级Tobit回归，包含随机截距{p_end}
{phang2}{cmd:. bayes: metobit math5 math3 || school:, ul(30)}

{pstd}
除了主要模型参数外，显示前5个随机效应的结果{p_end}
{phang2}{cmd:. bayes, showreffects({U0[1/5]})}

{pstd}
检查主模型参数的MCMC收敛性{p_end}
{phang2}{cmd:. bayesgraph diagnostics _all}

{pstd}
检查学校10和40的随机效应的MCMC收敛性{p_end}
{phang2}{cmd:. bayesgraph diagnostics {U0[(10 40).id]}}

{pstd}
在一个图中绘制前12个随机效应的后验分布直方图{p_end}
{phang2}{cmd:. bayesgraph histogram {U0[1/12]}, byparm}

{pstd}
使用 {cmd:metobit} 的参数标签显示估计结果，并在回放时计算对数边际似然{p_end}
{phang2}{cmd:. bayes, melabel remargl}

{pstd}
为所有回归系数指定相同的均匀先验，并将MCMC样本大小从默认值10000减少到1000{p_end}
{phang2}{cmd:. bayes, prior({math5:math3 _cons}, uniform(-100,100)) mcmcsize(1000): metobit math5 math3 || school:, ul(30)}

{pstd}
如上，但使用快捷符号引用所有回归系数并指定随机数种子以实现可重现性{p_end}
{phang2}{cmd:. bayes, prior({math5:}, uniform(-100,100)) mcmcsize(1000) rseed(12345): metobit math5 math3 || school:, ul(30)}

{pstd}
保存MCMC结果以供回放{p_end}
{phang2}{cmd:. bayes, saving(mymcmc)}


{marker results}{...}
{title:存储结果}

{pstd}
请参阅 {help bayes##results:{it:存储结果}} 在 {manhelp bayes BAYES} 中。{p_end}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <bayes_metobit.sthlp>}