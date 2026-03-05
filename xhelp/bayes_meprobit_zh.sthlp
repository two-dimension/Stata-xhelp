{smcl}
{* *! version 1.0.6  25apr2019}{...}
{viewerdialog "bayes: meprobit" "dialog bayes_meprobit"}{...}
{vieweralsosee "[BAYES] bayes: meprobit" "mansection BAYES bayesmeprobit"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[BAYES] bayes" "help bayes_zh"}{...}
{vieweralsosee "[ME] meprobit" "help meprobit_zh"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[BAYES] Bayesian commands" "help bayesian_commands_zh"}{...}
{vieweralsosee "[BAYES] Bayesian estimation" "help bayesian_estimation_zh"}{...}
{vieweralsosee "[BAYES] Bayesian postestimation" "help bayesian_postestimation_zh"}{...}
{vieweralsosee "[BAYES] Glossary" "help bayes_glossary_zh"}{...}
{viewerjumpto "Syntax" "bayes_meprobit_zh##syntax"}{...}
{viewerjumpto "Menu" "bayes_meprobit_zh##menu"}{...}
{viewerjumpto "Description" "bayes_meprobit_zh##description"}{...}
{viewerjumpto "Links to PDF documentation" "bayes_meprobit_zh##linkspdf"}{...}
{viewerjumpto "Examples" "bayes_meprobit_zh##examples"}{...}
{viewerjumpto "Stored results" "bayes_meprobit_zh##results"}
{help bayes_meprobit:English Version}
{hline}{...}
{p2colset 1 28 30 2}{...}
{p2col:{bf:[BAYES] bayes: meprobit} {hline 2}}贝叶斯多层次 Probit 回归{p_end}
{p2col:}({mansection BAYES bayesmeprobit:查看完整的 PDF 手册条目}){p_end}
{p2colreset}{...}


{marker syntax}{...}
{title:语法}

{p 8 15 2}
{cmd:bayes} [{cmd:,} {it:bayesopts}] {cmd::} {opt meprobit}
{depvar} {it:fe_equation} [{cmd:||} {it:re_equation}] 
	[{cmd:||} {it:re_equation} ...] 
	[{cmd:,} {it:{help bayes_meprobit##options_table:选项}}]

{p 4 4 2}
    其中 {it:fe_equation} 的语法是

{p 12 24 2}
	[{indepvars}] {ifin}
        [{it:{help bayes_meprobit##weight:权重}}]
	[{cmd:,} {it:{help bayes_meprobit##fe_options:固定效应选项}}]

{p 4 4 2}
    而 {it:re_equation} 的语法是以下之一：

{p 8 18 2}
	对于随机系数和截距

{p 12 24 2}
	{it:levelvar}{cmd::} [{varlist}]
		[{cmd:,} {it:{help bayes_meprobit##re_options:随机效应选项}}]

{p 8 18 2}
	对于因子变量值中的随机效应

{p 12 24 2}
	{it:levelvar}{cmd::} {cmd:R.}{varname}

{p 4 4 2}
    {it:levelvar} 可以是识别随机效应组结构的变量，或是 {cmd:_all}，表示一个包含所有观测值的组。{p_end}

{synoptset 23 tabbed}{...}
{marker fe_options}{...}
{synopthdr :固定效应选项}
{synoptline}
{syntab:模型}
{synopt :{opt nocons:tant}}从 {help bayes_glossary##fixed_effects_parameters:固定效应} 方程中抑制常数项{p_end}
{synopt :{opth off:set(varname)}}将 {it:varname} 包含在模型中，系数约束为 1{p_end}
{synopt :{opt asis}}保留完美的预测变量{p_end}
{synoptline}

{synoptset 23 tabbed}{...}
{marker re_options}{...}
{synopthdr :随机效应选项}
{synoptline}
{syntab:模型}
{synopt :{opth cov:ariance(meprobit##vartype:vartype)}}随即效应的方差-协方差结构；仅支持 {cmd:independent}、{cmd:identity} 和 {cmd:unstructured} 结构{p_end}
{synopt :{opt nocons:tant}}抑制随机效应方程中的常数项{p_end}
{synoptline}

{synoptset 23 tabbed}{...}
{marker options_table}{...}
{synopthdr :选项}
{synoptline}
{syntab:模型}
{synopt :{opt bin:omial}{cmd:(}{it:{help varname_zh:变量名}}|{it:#}{cmd:)}}如果数据为二项形式，则设置二项试验{p_end}

{syntab :报告}
{synopt :{opt notab:le}}抑制系数表{p_end}
{synopt :{opt nohead:er}}抑制输出头{p_end}
{synopt :{opt nogr:oup}}抑制总结组的表格{p_end}
INCLUDE help bayesme_display

{synopt :{opt l:evel(#)}}设置可信水平；默认为 {cmd:level(95)}{p_end}
{p 4 6 2}
{it:indepvars} 可以包含因子变量；见 {help fvvarlist_zh}.{p_end}
{p 4 6 2}
{it:depvar}、{it:indepvars} 和 {it:varlist} 可以包含时间序列操作符；见 {help tsvarlist_zh}.{p_end}
{marker weight}{...}
{p 4 6 2}
允许使用 {opt fweight}；见 {help weight_zh}.{p_end}
{p 4 6 2}
{cmd:bayes:} {cmd:meprobit,} {cmd:level()} 等同于 
{cmd:bayes,} {cmd:clevel():} {cmd:meprobit}.{p_end}
{p 4 6 2}有关 {it:选项} 的详细说明，请参见 
{help meprobit##options:{it:选项}} 在 {manhelp meprobit ME} 中。{p_end}

{marker bayesopts}{...}
{synoptset 30 tabbed}{...}
{synopthdr:bayes选项}
{synoptline}
{marker options_priors}{...}
{syntab:{help bayes##priors_options:先验}}
{p2coldent:* {opt normalpr:ior(#)}}指定回归系数的默认正态先验的标准差；默认为 {cmd:normalprior(100)}{p_end}
{p2coldent:* {opt igammapr:ior(# #)}}指定方差分量的默认逆伽马先验的形状和尺度；默认为 {cmd:igammaprior(0.01 0.01)}{p_end}
{p2coldent:* {cmdab:iwishartpr:ior(}{help bayes##iwishartpriorspec:{it:#} [...]}{cmd:)}}指定默认逆 Wishart 先验的自由度和（可选）尺度矩阵，用于非结构化随机效应协方差{p_end}
{* INCLUDE help bayesecmd_opts*}
INCLUDE help bayesmh_prioropts

{marker options_simulation}{...}
{syntab:{help bayes##simulation_options:模拟}}
INCLUDE help bayesmh_simopts
{synopt :{opt restubs(restub1 restub2 ...)}}指定所有层次的随机效应参数的别名{p_end}

{marker options_blocking}{...}
{syntab:{help bayes##blocking_options:阻塞}}
{p2coldent:* {opt blocksize(#)}}最大块大小；默认为 {cmd:blocksize(50)}{p_end}
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
{synopt :{opt melabel}}使用与 {cmd:meprobit} 相同的行标签显示估计表{p_end}
INCLUDE help bayesme_reportopts2

{marker options_advanced}{...}
{syntab:{help bayes##advanced_options:高级选项}}
INCLUDE help bayesmh_advancedopts
{synoptline}
{p 4 6 2}* 带星选项专属于 {cmd:bayes} 前缀；其他选项在 {cmd:bayes} 和 {help bayesmh_zh} 之间共享。{p_end}
{p 4 6 2}选项 {cmd:prior()} 和 {cmd:block()} 可以重复。{p_end}
{p 4 6 2}{helpb bayesmh##priorspec:{it:priorspec}} 和 
{helpb bayesmh##paramref:{it:paramref}} 在 {manhelp bayesmh BAYES} 中定义。
{p_end}
{p 4 6 2}{it:paramref} 可以包含因子变量；见 {help fvvarlist_zh}。
{p_end}
{p 4 6 2}有关估计后可用功能，请参见 {manhelp bayesian_postestimation BAYES:贝叶斯后估计}。{p_end}
{p 4 6 2}模型参数是回归系数 
{cmd:{c -(}}{it:depvar}{cmd::}{it:indepvars}{cmd:{c )-}}、随机效应 
{cmd:{c -(}}{it:rename}{cmd:{c )-}}，以及方差分量 
{cmd:{c -(}}{it:rename}{cmd::sigma2{c )-}}，或者如果指定了选项 
{cmd:covariance(unstructured)}，则为矩阵参数 
{cmd:{c -(}}{it:restub}{cmd::Sigma,matrix{c )-}}；有关 {it:rename} 和 {it:restub} 的定义，请参见 
{mansection BAYES bayesRemarksandexamplesLikelihoodmodel:{it:似然模型}} 在 {bf:[BAYES] bayes} 中。
使用 {cmd:dryrun} 选项查看模型参数的定义，估计前查看。{p_end}
{p 4 6 2}有关 {it:bayesopts} 的详细说明，请参见 
{help bayes##options:{it:选项}} 在 {manhelp bayes BAYES} 中。{p_end}


{marker menu}{...}
{title:菜单}

{phang}
{bf:统计 > 多层次混合效应模型 > 贝叶斯回归 > Probit 回归}


{marker description}{...}
{title:描述}

{pstd}
{cmd:bayes: meprobit} 对二元结果进行贝叶斯多层次 Probit 回归拟合；
有关详细信息，请参见 {manhelp bayes BAYES} 和 {manhelp meprobit ME}。


{marker linkspdf}{...}
{title:PDF 文档链接}

        {mansection BAYES bayesmeprobitQuickstart:快速入门}

        {mansection BAYES bayesmeprobitRemarksandexamples:备注和示例}

        {mansection BAYES bayesmeprobitMethodsandformulas:方法与公式}

{pstd}
上述章节未包含在此帮助文件中。


{marker examples}{...}
{title:示例}

{pstd}
设置{p_end}
{phang2}{cmd:. webuse bangladesh}{p_end}
{phang2}{cmd:. keep if district<=20}{p_end}

{pstd}
使用默认先验，按 {cmd:district} 拟合具有随机截距的贝叶斯二级 Probit 回归{p_end}
{phang2}{cmd:. bayes: meprobit c_use urban age child* || district:}

{pstd}
除了主要模型参数，显示 1 到 5 区的随机效应结果{p_end}
{phang2}{cmd:. bayes, showreffects({U0[(1/5).district]})}

{pstd}
检查主要模型参数的 MCMC 收敛性{p_end}
{phang2}{cmd:. bayesgraph diagnostics _all}

{pstd}
检查第一个、第十个和第二十个随机效应的 MCMC 收敛性{p_end}
{phang2}{cmd:. bayesgraph diagnostics {U0[1 10 20]}}

{pstd}
绘制前 12 个随机效应的后验分布直方图在一张图上{p_end}
{phang2}{cmd:. bayesgraph histogram {U0[1/12]}, byparm}

{pstd}
使用 {cmd:meprobit} 的参数标签显示估计结果，并在重放时计算对数边际似然{p_end}
{phang2}{cmd:. bayes, melabel remargl}

{pstd}
为所有回归系数指定相同的均匀先验。将 MCMC 样本大小从默认的 10,000 减小到 1,000，并指定随机数种子以实现可重复性{p_end}
{phang2}{cmd:. bayes, prior({c_use:urban age child1 child2 child3 _cons}, uniform(-10,10)) mcmcsize(1000) rseed(12345): meprobit c_use urban age child* || district:}

{pstd}
与上述相同，但使用简写语法引用所有回归系数{p_end}
{phang2}{cmd:. bayes, prior({c_use:}, uniform(-10,10)) mcmcsize(1000) rseed(12345): meprobit c_use urban age child* || district:}

{pstd}
在重放时保存 MCMC 结果{p_end}
{phang2}{cmd:. bayes, saving(mymcmc)}


{marker results}{...}
{title:存储结果}

{pstd}
有关 {help bayes##results:{it:存储结果}} 的信息，请参见 {manhelp bayes BAYES}。
{p_end}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <bayes_meprobit.sthlp>}