{smcl}
{* *! version 1.0.7  25apr2019}{...}
{viewerdialog "bayes: mepoisson" "dialog bayes_mepoisson"}{...}
{vieweralsosee "[BAYES] bayes: mepoisson" "mansection BAYES bayesmepoisson"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[BAYES] bayes" "help bayes_zh"}{...}
{vieweralsosee "[ME] mepoisson" "help mepoisson_zh"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[BAYES] Bayesian commands" "help bayesian_commands_zh"}{...}
{vieweralsosee "[BAYES] Bayesian estimation" "help bayesian_estimation_zh"}{...}
{vieweralsosee "[BAYES] Bayesian postestimation" "help bayesian_postestimation_zh"}{...}
{vieweralsosee "[BAYES] Glossary" "help bayes_glossary_zh"}{...}
{viewerjumpto "Syntax" "bayes_mepoisson_zh##syntax"}{...}
{viewerjumpto "Menu" "bayes_mepoisson_zh##menu"}{...}
{viewerjumpto "Description" "bayes_mepoisson_zh##description"}{...}
{viewerjumpto "Links to PDF documentation" "bayes_mepoisson_zh##linkspdf"}{...}
{viewerjumpto "Examples" "bayes_mepoisson_zh##examples"}{...}
{viewerjumpto "Stored results" "bayes_mepoisson_zh##results"}
{help bayes_mepoisson:English Version}
{hline}{...}
{p2colset 1 29 31 2}{...}
{p2col:{bf:[BAYES] bayes: mepoisson} {hline 2}}贝叶斯多级泊松回归{p_end}
{p2col:}({mansection BAYES bayesmepoisson:查看完整的PDF手册条目}){p_end}
{p2colreset}{...}


{marker syntax}{...}
{title:语法}

{p 8 15 2}
{cmd:bayes} [{cmd:,} {it:bayesopts}] {cmd::} {opt mepoisson}
{depvar} {it:fe_equation} [{cmd:||} {it:re_equation}] 
	[{cmd:||} {it:re_equation} ...] 
	[{cmd:,} {it:{help bayes_mepoisson##options_table:选项}}]

{p 4 4 2}
    其中 {it:fe_equation} 的语法为

{p 12 24 2}
	[{indepvars}] {ifin}
        [{it:{help bayes_mepoisson##weight:权重}}]
	[{cmd:,} {it:{help bayes_mepoisson##fe_options:固定效果选项}}]

{p 4 4 2}
    {it:re_equation} 的语法为以下之一：

{p 8 18 2}
	对于随机系数和截距

{p 12 24 2}
	{it:levelvar}{cmd::} [{varlist}]
		[{cmd:,} {it:{help bayes_mepoisson##re_options:随机效果选项}}]

{p 8 18 2}
	对于因子变量值中的随机效应

{p 12 24 2}
	{it:levelvar}{cmd::} {cmd:R.}{varname}

{p 4 4 2}
    {it:levelvar} 可以是识别该层随机效应的组结构的变量，
    或者是 {cmd:_all}，代表包括所有观察值的一个组。{p_end}

{synoptset 23 tabbed}{...}
{marker fe_options}{...}
{synopthdr :固定效果选项}
{synoptline}
{syntab:模型}
{synopt :{opt nocons:tant}}从固定效应方程中抑制常数项{p_end}
{synopt :{opth exp:osure(varname:varname_e)}}将 ln({it:varname_e}) 包含在模型中，系数约束为 1{p_end}
{synopt :{opth off:set(varname:varname_o)}}将 {it:varname_o} 包含在模型中，系数约束为 1{p_end}
{synoptline}

{synoptset 23 tabbed}{...}
{marker re_options}{...}
{synopthdr :随机效果选项}
{synoptline}
{syntab:模型}
{synopt :{opth cov:ariance(mepoisson##vartype:vartype)}}随机效应的方差-协方差结构；
仅支持 {cmd:independent}、{cmd:identity} 和 {cmd:unstructured}结构{p_end}
{synopt :{opt nocons:tant}}从随机效应方程中抑制常数项{p_end}
{synoptline}

{synoptset 23 tabbed}{...}
{marker options_table}{...}
{synopthdr :选项}
{synoptline}
{syntab :报告}
{synopt :{opt irr}}报告发生率比{p_end}
{synopt :{opt notab:le}}抑制系数表{p_end}
{synopt :{opt nohead:er}}抑制输出头{p_end}
{synopt :{opt nogr:oup}}抑制总结组的表{p_end}
INCLUDE help bayesme_display

{synopt :{opt l:evel(#)}}设置可信度水平；默认值为 {cmd:level(95)}{p_end}
{synoptline}
{p 4 6 2}
{it:indepvars} 可以包含因子变量；请参见 {help fvvarlist_zh}。{p_end}
{p 4 6 2}
{it:depvar}、{it:indepvars} 和 {it:varlist} 可以包含时间序列运算符；请参见 {help tsvarlist_zh}。{p_end}
{marker weight}{...}
{p 4 6 2}
{opt fweight} 是允许的；请参见 {help weight_zh}。{p_end}
{p 4 6 2}
{cmd:bayes:} {cmd:mepoisson,} {cmd:level()} 等价于 
{cmd:bayes,} {cmd:clevel():} {cmd:mepoisson}.{p_end}
{p 4 6 2}有关 {it:options} 的详细描述，请查阅
{help mepoisson##options:{it:选项}} 在 {manhelp mepoisson ME} 中。{p_end}

{marker bayesopts}{...}
{synoptset 30 tabbed}{...}
{synopthdr:bayesopts}
{synoptline}
{marker options_priors}{...}
{syntab:{help bayes##priors_options:先验}}
{p2coldent:* {opt normalpr:ior(#)}}指定回归系数的默认正态先验的标准差；默认值为 {cmd:normalprior(100)}{p_end}
{p2coldent:* {opt igammapr:ior(# #)}}指定方差分量的默认逆伽马先验的形状和尺度；默认值为 {cmd:igammaprior(0.01 0.01)}{p_end}
{p2coldent:* {cmdab:iwishartpr:ior(}{help bayes##iwishartpriorspec:{it:#} [...]}{cmd:)}}指定默认逆Wishart先验的自由度和可选的尺度矩阵，适用于非结构化随机效应协方差{p_end}
{* INCLUDE help bayesecmd_opts*}
INCLUDE help bayesmh_prioropts

{marker options_simulation}{...}
{syntab:{help bayes##simulation_options:模拟}}
INCLUDE help bayesmh_simopts
{synopt :{opt restubs(restub1 restub2 ...)}}指定所有层次随机效应参数的前缀{p_end}

{marker options_blocking}{...}
{syntab:{help bayes##blocking_options:分块}}
{p2coldent:* {opt blocksize(#)}}最大块大小；默认值为 {cmd:blocksize(50)}{p_end}
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
{* INCLUDE help bayesme_reportopts*}
INCLUDE help bayes_clevel_hpd_short
{p2coldent:* {opt irr}}报告发生率比{p_end}
INCLUDE help bayesmh_eform
{synopt :{opt remargl}}计算对数边际似然{p_end}
{synopt :{opt batch(#)}}指定批量均值计算的块长度；默认值为 {cmd:batch(0)}{p_end}
{synopt :{cmdab:sav:ing(}{help filename_zh:{it:filename}}[{cmd:, replace}]{cmd:)}}将模拟结果保存到 {it:filename}{cmd:.dta}{p_end}
{synopt :{opt nomodelsumm:ary}}抑制模型摘要{p_end}
{synopt :{opt nomesumm:ary}}抑制多级结构摘要{p_end}
{synopt :[{cmd:no}]{opt dots}}抑制点图或每 100 次迭代显示点以及每 1,000 次迭代的迭代数字；默认值为 {cmd:dots}{p_end}
{synopt :{cmd:dots(}{it:#}[{cmd:,} {opt every(#)}]{cmd:)}}在进行模拟时显示点{p_end}
{synopt :[{cmd:no}]{opth show:(bayesmh##paramref:paramref)}}指定包含或排除在输出中的模型参数{p_end}
{synopt :{opt showre:ffects}[{cmd:(}{it:{help bayesian postestimation##bayesian_post_reref:reref}}{cmd:)}]}指定要包含到输出中的所有或部分随机效应参数{p_end}
{synopt :{opt melabel}}使用与 {cmd:mepoisson} 相同的行标签显示估计表{p_end}
{synopt :{opt nogr:oup}}抑制总结组的表{p_end}
{synopt :{opt notab:le}}抑制估计表{p_end}
{synopt :{opt nohead:er}}抑制输出头{p_end}
{synopt :{opt title(string)}}在参数估计表上方显示 {it:string} 作为标题{p_end}
{synopt :{help bayesmh##display_options:{it:显示选项}}}控制间距、线宽以及基础和空单元{p_end}

{marker options_advanced}{...}
{syntab:{help bayes##advanced_options:高级}}
INCLUDE help bayesmh_advancedopts
{synoptline}
{p 4 6 2}* 星号选项是特定于 {cmd:bayes} 前缀的；其他选项在 {cmd:bayes} 和 {help bayesmh_zh} 之间是共用的。{p_end}
{p 4 6 2}选项 {cmd:prior()} 和 {cmd:block()} 可以重复。{p_end}
{p 4 6 2}{helpb bayesmh##priorspec:{it:priorspec}} 和
{helpb bayesmh##paramref:{it:paramref}} 在 {manhelp bayesmh BAYES} 中定义。
{p_end}
{p 4 6 2}{it:paramref} 可以包含因子变量；请参见 {help fvvarlist_zh}。
{p_end}
{p 4 6 2}有关估计后可用的功能，请参见 {manhelp bayesian_postestimation BAYES:贝叶斯后评估}。{p_end}
{p2colreset}{...}
{p 4 6 2}模型参数是回归系数
{cmd:{c -(}}{it:depvar}{cmd::}{it:indepvars}{cmd:{c )-}},
随机效应
{cmd:{c -(}}{it:rename}{cmd:{c )-}}, 以及方差分量
{cmd:{c -(}}{it:rename}{cmd::sigma2{c )-}}，或如果指定了
{cmd:covariance(unstructured)} 选项，则为矩阵参数
{cmd:{c -(}}{it:restub}{cmd::Sigma,matrix{c )-}}；请参阅
{mansection BAYES bayesRemarksandexamplesLikelihoodmodel:{it:似然模型}}
在 {bf:[BAYES] bayes} 中获得有关如何定义 {it:rename} 和 {it:restub} 的信息。
使用 {cmd:dryrun} 选项以查看估计前模型参数的定义。{p_end}
{p 4 6 2}有关 {it:bayesopts} 的详细描述，请查阅
{help bayes##options:{it:选项}} 在 {manhelp bayes BAYES} 中。{p_end}


{marker menu}{...}
{title:菜单}

{phang}
{bf:统计 > 多级混合效应模型 > 贝叶斯回归 > 泊松回归}


{marker description}{...}
{title:描述}

{pstd}
{cmd:bayes: mepoisson} 适用于非负计数结果拟合贝叶斯多级泊松回归；
有关详细信息，请参见 {manhelp bayes BAYES} 和 {manhelp mepoisson ME}。


{marker linkspdf}{...}
{title:PDF文档链接}

        {mansection BAYES bayesmepoissonQuickstart:快速入门}

        {mansection BAYES bayesmepoissonRemarksandexamples:备注和示例}

        {mansection BAYES bayesmepoissonMethodsandformulas:方法和公式}

{pstd}
以上部分未包含在此帮助文件中。


{marker examples}{...}
{title:示例}

{pstd}准备{p_end}
{phang2}{cmd:. webuse melanoma}{p_end}

{pstd}使用默认先验拟合按 {cmd:region} 分类的贝叶斯二级泊松回归，并使用随机截距{p_end}
{phang2}{cmd:. bayes: mepoisson deaths uv, exposure(expected) || region:}{p_end}

{pstd}将燃烧期从默认的 2,500 增加到 5,000；使用默认正态先验的标准差为 10；
并指定随机数种子以确保可重复性{p_end}
{phang2}{cmd:. bayes, burnin(5000) normalprior(10) rseed(123): mepoisson deaths uv, exposure(expected) || region:}{p_end}

{pstd}
显示发生率比而不是系数{p_end}
{phang2}{cmd:. bayes, irr}

{pstd}
除了主要模型参数外，显示区域 1 到 5 的结果{p_end}
{phang2}{cmd:. bayes, showreffects({U0[(1/5).region]})}

{pstd}
检查主要模型参数以及第 1、10 和 15 个随机效应的 MCMC 收敛性{p_end}
{phang2}{cmd:. bayesgraph diagnostics _all, showreffects({U0[1 10 15]})}

{pstd}
在同一图上绘制前 12 个随机效应的后验分布直方图{p_end}
{phang2}{cmd:. bayesgraph histogram {U0[1/12]}, byparm}

{pstd}
使用 {cmd:mepoisson} 的参数标签显示估计结果，并在重播时计算对数边际似然{p_end}
{phang2}{cmd:. bayes, melabel remargl}

{pstd}拟合按 {cmd:nation} 和在 {cmd:nation} 内包含的 {cmd:region} 分类的贝叶斯三级泊松回归{p_end}
{phang2}{cmd:. bayes: mepoisson deaths uv, exposure(expected) || nation: || region:}{p_end}

{pstd}
在重播时保存 MCMC 结果{p_end}
{phang2}{cmd:. bayes, saving(mymcmc)}


{marker results}{...}
{title:存储结果}

{pstd}
请参见 {help bayes##results:{it:存储结果}} 在 {manhelp bayes BAYES} 中。
{p_end}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <bayes_mepoisson.sthlp>}