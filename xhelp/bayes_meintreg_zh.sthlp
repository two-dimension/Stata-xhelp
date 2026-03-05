{smcl}
{* *! version 1.0.6  25apr2019}{...}
{viewerdialog "bayes: meintreg" "dialog bayes_meintreg"}{...}
{vieweralsosee "[BAYES] bayes: meintreg" "mansection BAYES bayesmeintreg"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[BAYES] bayes" "help bayes_zh"}{...}
{vieweralsosee "[ME] meintreg" "help meintreg_zh"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[BAYES] Bayesian commands" "help bayesian_commands_zh"}{...}
{vieweralsosee "[BAYES] Bayesian estimation" "help bayesian_estimation_zh"}{...}
{vieweralsosee "[BAYES] Bayesian postestimation" "help bayesian_postestimation_zh"}{...}
{vieweralsosee "[BAYES] Glossary" "help bayes_glossary_zh"}{...}
{viewerjumpto "Syntax" "bayes_meintreg_zh##syntax"}{...}
{viewerjumpto "Menu" "bayes_meintreg_zh##menu"}{...}
{viewerjumpto "Description" "bayes_meintreg_zh##description"}{...}
{viewerjumpto "Links to PDF documentation" "bayes_meintreg_zh##linkspdf"}{...}
{viewerjumpto "Examples" "bayes_meintreg_zh##examples"}{...}
{viewerjumpto "Stored results" "bayes_meintreg_zh##results"}
{help bayes_meintreg:English Version}
{hline}{...}
{p2colset 1 28 30 2}{...}
{p2col:{bf:[BAYES] bayes: meintreg} {hline 2}}贝叶斯多层次区间回归{p_end}
{p2col:}({mansection BAYES bayesmeintreg:查看完整的PDF手册条目}){p_end}
{p2colreset}{...}


{marker syntax}{...}
{title:语法}

{p 8 15 2}
{cmd:bayes} [{cmd:,} {it:bayesopts}] {cmd::} {opt meintreg}
{depvar}_lower {depvar}_upper
        {it:fe_equation} [{cmd:||} {it:re_equation}] 
	[{cmd:||} {it:re_equation} ...] 
	[{cmd:,} {it:{help bayes_meintreg##options_table:选项}}]

{p 4 4 2}
    其中 {it:fe_equation} 的语法为

{p 12 24 2}
	[{indepvars}] {ifin}
        [{it:{help bayes_meintreg##weight:权重}}]
	[{cmd:,} {it:{help bayes_meintreg##fe_options:固定效应选项}}]

{p 4 4 2}
    而 {it:re_equation} 的语法为以下之一：

{p 8 18 2}
	用于随机系数和截距的情况

{p 12 24 2}
	{it:levelvar}{cmd::} [{varlist}]
		[{cmd:,} {it:{help bayes_meintreg##re_options:随机效应选项}}]

{p 8 18 2}
	用于因子变量值之间的随机效应

{p 12 24 2}
	{it:levelvar}{cmd::} {cmd:R.}{varname}

{p 4 4 2}
    {it:levelvar}是一个标识该级别随机效应组结构的变量，或者是 {cmd:_all}，表示一个包括所有观察值的组。{p_end}

{synoptset 23 tabbed}{...}
{marker fe_options}{...}
{synopthdr :fe_options}
{synoptline}
{syntab:模型}
{synopt :{opt nocons:tant}}从 {help bayes_glossary##固定效应参数:固定效应} 方程中省略常数项{p_end}
{synopt :{opth off:set(varname)}}在模型中包含 {it:varname} ，并将系数约束为1{p_end}
{synoptline}

{synoptset 23 tabbed}{...}
{marker re_options}{...}
{synopthdr :re_options}
{synoptline}
{syntab:模型}
{synopt :{opth cov:ariance(meintreg##vartype:vartype)}}{help bayes_glossary##随机效应参数:随机效应}的方差-协方差结构；仅支持 {cmd:independent}，{cmd:identity} 和 {cmd:unstructured} 结构{p_end}
{synopt :{opt nocons:tant}}从随机效应方程中省略常数项{p_end}
{synoptline}

{synoptset 23 tabbed}{...}
{marker options_table}{...}
{synopthdr :选项}
{synoptline}
{syntab :报告}
{synopt :{opt notab:le}}省略系数表{p_end}
{synopt :{opt nohead:er}}省略输出头部{p_end}
{synopt :{opt nogr:oup}}省略总结组的表格{p_end}
包含 help bayesme_display

{synopt :{opt l:evel(#)}}设置可信水平；默认值为 {cmd:level(95)}{p_end}
{synoptline}
{p 4 6 2}
{it:indepvars} 可以包含因子变量；见 {help fvvarlist_zh}.{p_end}
{p 4 6 2}
{it:depvar}_lower, {it:depvar}_upper, {it:indepvars}, 和 {it:varlist} 可以包含时间序列运算符；见 {help tsvarlist_zh}.{p_end}
{marker weight}{...}
{p 4 6 2}
{opt fweight} 被允许；见 {help weight_zh}.{p_end}
{p 4 6 2}
{cmd:bayes:} {cmd:meintreg,} {cmd:level()} 相当于 
{cmd:bayes,} {cmd:clevel():} {cmd:meintreg}.{p_end}
{p 4 6 2}有关 {it:options} 的详细描述，请见
{help meintreg##options:{it:选项}} 在 {manhelp meintreg ME}.{p_end}

{marker bayesopts}{...}
{synoptset 30 tabbed}{...}
{synopthdr:bayesopts}
{synoptline}
{marker options_priors}{...}
{syntab:{help bayes##priors_options:先验}}
{p2coldent:* {opt normalpr:ior(#)}}指定回归系数的默认正态先验的标准差；默认值为 {cmd:normalprior(100)}{p_end}
{p2coldent:* {opt igammapr:ior(# #)}}指定方差分量的默认反向伽玛先验的形状和比例；默认值为 {cmd:igammaprior(0.01 0.01)}{p_end}
{p2coldent:* {cmdab:iwishartpr:ior(}{help bayes##iwishartpriorspec:{it:#} [...]}{cmd:)}}指定默认的无结构随机效应协方差的自由度和可选的比例矩阵{p_end}
{* INCLUDE help bayesecmd_opts*}
包含 help bayesmh_prioropts

{marker options_simulation}{...}
{syntab:{help bayes##simulation_options:模拟}}
包含 help bayesmh_simopts
{synopt :{opt restubs(restub1 restub2 ...)}}为所有级别的随机效应参数指定桩{p_end}

{marker options_blocking}{...}
{syntab:{help bayes##blocking_options:分块}}
{p2coldent:* {opt blocksize(#)}}最大块大小；默认值为 {cmd:blocksize(50)}{p_end}
包含 help bayesmh_blockopts
  {p2coldent:* {opt noblock:ing}}默认情况下不对参数进行分块{p_end}

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
{synopt :{opt melabel}}使用与 {cmd:meintreg} 相同的行标签显示估计表{p_end}
包含 help bayesme_reportopts2

{marker options_advanced}{...}
{syntab:{help bayes##advanced_options:高级}}
包含 help bayesmh_advancedopts
{synoptline}
{p 4 6 2}* 带星的选项是特定于 {cmd:bayes} 前缀的；其他选项在 {cmd:bayes} 和 {help bayesmh_zh} 之间是共通的。{p_end}
{p 4 6 2}选项 {cmd:prior()} 和 {cmd:block()} 可以重复使用。{p_end}
{p 4 6 2}{helpb bayesmh##priorspec:{it:priorspec}} 和
{helpb bayesmh##paramref:{it:paramref}} 在 {manhelp bayesmh BAYES} 中定义。
{p_end}
{p 4 6 2}{it:paramref} 可以包含因子变量；见 {help fvvarlist_zh}。
{p_end}
{p 4 6 2}有关估计后可用功能，请参见 {manhelp bayesian_postestimation BAYES:贝叶斯后估计}。{p_end}
{p2colreset}{...}
{p 4 6 2}模型参数为回归系数
{cmd:{c -(}}{it:depvar}_lower{cmd::}{it:indepvars}{cmd:{c )-}},
误差方差 {cmd:{c -(}e.}{it:depvar}_lower{cmd::sigma2{c )-}},
随机效应
{cmd:{c -(}}{it:rename}{cmd:{c )-}}, 和方差分量
{cmd:{c -(}}{it:rename}{cmd::sigma2{c )-}} 或者，如果指定 {cmd:covariance(unstructured)} 选项，则为矩阵参数
{cmd:{c -(}}{it:restub}{cmd::Sigma,matrix{c )-}}；请参见
{mansection BAYES bayesRemarksandexamplesLikelihoodmodel:{it:似然模型}}在 {bf:[BAYES] bayes} 中了解 {it:rename} 和 {it:restub} 是如何定义的。
使用 {cmd:dryrun} 选项以在估计之前查看模型参数的定义。{p_end}
{p 4 6 2}有关 {it:bayesopts} 的详细描述，请参见
{help bayes##options:{it:选项}} 在 {manhelp bayes BAYES} 中。{p_end}


{marker menu}{...}
{title:菜单}

{phang}
{bf:统计 > 多层混合效应模型 > 贝叶斯回归 > 区间回归}


{marker description}{...}
{title:描述}

{pstd}
{cmd:bayes: meintreg} 适用于一个持续的、区间测量的结果，拟合贝叶斯多层次区间回归；
有关详细信息，请参见 {manhelp bayes BAYES} 和 {manhelp meintreg ME}。


{marker linkspdf}{...}
{title:PDF文档链接}

        {mansection BAYES bayesmeintregQuickstart:快速启动}

        {mansection BAYES bayesmeintregRemarksandexamples:备注和示例}

        {mansection BAYES bayesmeintregMethodsandformulas:方法和公式}

{pstd}
上述部分不包含在此帮助文件中。


{marker examples}{...}
{title:示例}

{pstd}
设置{p_end}
{phang2}{cmd:. webuse mastitis}{p_end}
{phang2}{cmd:. generate lnleft = ln(left)}{p_end}
{phang2}{cmd:. generate lnright = ln(right)}{p_end}

{pstd}
使用默认先验，拟合以 {cmd:cow} 为随机截距的贝叶斯两级区间截断回归{p_end}
{phang2}{cmd:. bayes: meintreg lnleft lnright i.multiparous || cow:}

{pstd}
除了主要模型参数外，显示前10个随机效应的结果{p_end}
{phang2}{cmd:. bayes, showreffects({U0[1/10]})}

{pstd}
检查主要模型参数的MCMC收敛性{p_end}
{phang2}{cmd:. bayesgraph diagnostics _all}

{pstd}
检查第50、第75和第100头牛的随机效应的MCMC收敛性{p_end}
{phang2}{cmd:. bayesgraph diagnostics {U0[(50 75 100).cow]}}

{pstd}
在一个图中绘制前12个随机效应的后验分布直方图{p_end}
{phang2}{cmd:. bayesgraph histogram {U0[1/12]}, byparm}

{pstd}
使用 {cmd:meintreg} 的参数标签显示估计结果，并在重放时计算对数边际似然{p_end}
{phang2}{cmd:. bayes, melabel remargl}

{pstd}
为所有回归系数指定相同的均匀先验，并将MCMC样本大小从默认的10,000减少到1,000{p_end}
{phang2}{cmd:. bayes, prior({lnleft:i.multiparous _cons}, uniform(-100,100)) mcmcsize(1000): meintreg lnleft lnright i.multiparous || cow:}

{pstd}
与上述相同，但使用简短的符号方式引用所有回归系数{p_end}
{phang2}{cmd:. bayes, prior({lnleft:}, uniform(-100,100)) mcmcsize(1000): meintreg lnleft lnright i.multiparous || cow:}

{pstd}
拟合贝叶斯三层区间截断回归，随机截距包括农场及在农场内嵌套的牛。使用标准差为10，而非默认的100的正态先验；
将烧入期从默认的2,500增加到3,000；将MCMC样本大小从默认的10,000减少到1,000；并指定随机数种子以确保可重现性{p_end}
{phang2}{cmd:. bayes, normalprior(10) burnin(3000) mcmcsize(1000) rseed(12345): meintreg lnleft lnright i.multiparous || farm: || cow:}

{pstd}
在重放时保存MCMC结果{p_end}
{phang2}{cmd:. bayes, saving(mymcmc)}


{marker results}{...}
{title:存储的结果}

{pstd}
请参见 {help bayes##results:{it:存储的结果}} 在 {manhelp bayes BAYES} 中。
{p_end}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <bayes_meintreg.sthlp>}