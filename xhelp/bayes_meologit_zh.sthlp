{smcl}
{* *! version 1.0.6  25apr2019}{...}
{viewerdialog "bayes: meologit" "dialog bayes_meologit"}{...}
{vieweralsosee "[BAYES] bayes: meologit" "mansection BAYES bayesmeologit"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[BAYES] bayes" "help bayes_zh"}{...}
{vieweralsosee "[ME] meologit" "help meologit_zh"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[BAYES] Bayesian commands" "help bayesian_commands_zh"}{...}
{vieweralsosee "[BAYES] Bayesian estimation" "help bayesian_estimation_zh"}{...}
{vieweralsosee "[BAYES] Bayesian postestimation" "help bayesian_postestimation_zh"}{...}
{vieweralsosee "[BAYES] Glossary" "help bayes_glossary_zh"}{...}
{viewerjumpto "Syntax" "bayes_meologit_zh##syntax"}{...}
{viewerjumpto "Menu" "bayes_meologit_zh##menu"}{...}
{viewerjumpto "Description" "bayes_meologit_zh##description"}{...}
{viewerjumpto "Links to PDF documentation" "bayes_meologit_zh##linkspdf"}{...}
{viewerjumpto "Examples" "bayes_meologit_zh##examples"}{...}
{viewerjumpto "Stored results" "bayes_meologit_zh##results"}
{help bayes_meologit:English Version}
{hline}{...}
{p2colset 1 28 30 2}{...}
{p2col:{bf:[BAYES] bayes: meologit} {hline 2}}贝叶斯多水平有序逻辑回归{p_end}
{p2col:}({mansection BAYES bayesmeologit:查看完整PDF手册条目}){p_end}
{p2colreset}{...}


{marker syntax}{...}
{title:语法}

{p 8 15 2}
{cmd:bayes} [{cmd:,} {it:bayesopts}] {cmd::} {opt meologit}
{depvar} {it:fe_equation} [{cmd:||} {it:re_equation}] 
	[{cmd:||} {it:re_equation} ...] 
	[{cmd:,} {it:{help bayes_meologit##options_table:选项}}]

{p 4 4 2}
    其中 {it:fe_equation} 的语法为

{p 12 24 2}
	[{indepvars}] {ifin}
        [{it:{help bayes_meologit##weight:权重}}]
	[{cmd:,} {it:{help bayes_meologit##fe_options:面固定效应选项}}]

{p 4 4 2}
    而 {it:re_equation} 的语法为以下之一：

{p 8 18 2}
	用于随机系数和截距

{p 12 24 2}
	{it:levelvar}{cmd::} [{varlist}]
		[{cmd:,} {it:{help bayes_meologit##re_options:随机效应选项}}]

{p 8 18 2}
	用于因子变量的值之间的随机效应

{p 12 24 2}
	{it:levelvar}{cmd::} {cmd:R.}{varname}

{p 4 4 2}
    {it:levelvar} 是识别随机效应组结构的变量，或者是 {cmd:_all}，表示一个包含所有观察值的组。{p_end}

{synoptset 23 tabbed}{...}
{marker fe_options}{...}
{synopthdr :面固定效应选项}
{synoptline}
{syntab:模型}
{synopt :{opth off:set(varname)}}在模型中包含 {it:varname}，其系数约束为1{p_end}
{synoptline}

{synoptset 23 tabbed}{...}
{marker re_options}{...}
{synopthdr :随机效应选项}
{synoptline}
{syntab:模型}
{synopt :{opth cov:ariance(meologit##vartype:vartype)}}指定 {help bayes_glossary##random_effects_parameters:随机效应} 的方差-协方差结构；仅支持 {cmd:independent}、{cmd:identity} 和 {cmd:unstructured} 结构{p_end}
{synopt :{opt nocons:tant}}在随机效应方程中抑制常数项{p_end}
{synoptline}

{synoptset 23 tabbed}{...}
{marker options_table}{...}
{synopthdr :选项}
{synoptline}
{syntab :报告}
{synopt :{opt or}}报告赔率比{p_end}
{synopt :{opt notab:le}}抑制系数表{p_end}
{synopt :{opt nohead:er}}抑制输出头部{p_end}
{synopt :{opt nogr:oup}}抑制汇总组的表格{p_end}
INCLUDE help bayesme_display

{synopt :{opt l:evel(#)}}设定可信水平；默认为 {cmd:level(95)}{p_end}
{synoptline}
{p 4 6 2}
{it:indepvars} 可以包含因子变量；请参见 {help fvvarlist_zh}。{p_end}
{p 4 6 2}
{it:depvar}、{it:indepvars} 和 {it:varlist} 可以包含时间序列操作符；请参见 {help tsvarlist_zh}。{p_end}
{marker weight}{...}
{p 4 6 2}
允许使用 {opt fweight}；请参见 {help weight_zh}。{p_end}
{p 4 6 2}
{cmd:bayes:} {cmd:meologit,} {cmd:level()} 等同于 
{cmd:bayes,} {cmd:clevel():} {cmd:meologit}。{p_end}
{p 4 6 2}有关 {it:options} 的详细描述，请参见
{help meologit##options:{it:选项}} 在 {manhelp meologit ME}。{p_end}

{marker bayesopts}{...}
{synoptset 30 tabbed}{...}
{synopthdr:bayesopts}
{synoptline}
{marker options_priors}{...}
{syntab:{help bayes##priors_options:先验}}
{p2coldent:* {opt normalpr:ior(#)}}指定回归系数默认正态先验的标准差；默认为 {cmd:normalprior(100)}{p_end}
{p2coldent:* {opt igammapr:ior(# #)}}指定方差成分默认逆伽马先验的形状和规模；默认为 {cmd:igammaprior(0.01 0.01)}{p_end}
{p2coldent:* {cmdab:iwishartpr:ior(}{help bayes##iwishartpriorspec:{it:#} [...]}{cmd:)}}指定自由度并可选地指定矩阵的规模，用于未构造的随机效应协方差的默认逆Wishart先验{p_end}
{* INCLUDE help bayesecmd_opts*}
INCLUDE help bayesmh_prioropts

{marker options_simulation}{...}
{syntab:{help bayes##simulation_options:模拟}}
INCLUDE help bayesmh_simopts
{synopt :{opt restubs(restub1 restub2 ...)}}为所有级别的随机效应参数指定存根{p_end}

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
{* INCLUDE help bayesme_reportopts*}
INCLUDE help bayes_clevel_hpd_short
{p2coldent:* {opt or}}将系数报告为赔率比{p_end}
INCLUDE help bayesmh_eform
{synopt :{opt remargl}}计算对数边际似然{p_end}
{synopt :{opt batch(#)}}指定批均值计算的块长度；默认为 {cmd:batch(0)}{p_end}
{synopt :{cmdab:sav:ing(}{help filename_zh:{it:filename}}[{cmd:, replace}]{cmd:)}}将模拟结果保存到 {it:filename}{cmd:.dta}{p_end}
{synopt :{opt nomodelsumm:ary}}抑制模型摘要{p_end}
{synopt :{opt nomesumm:ary}}抑制多层结构摘要{p_end}
{synopt :[{cmd:no}]{opt dots}}抑制点或每100个迭代显示点，每1,000个迭代显示迭代数字；默认为 {cmd:dots}{p_end}
{synopt :{cmd:dots(}{it:#}[{cmd:,} {opt every(#)}]{cmd:)}}在执行模拟时显示点 {p_end}
{synopt :[{cmd:no}]{opth show:(bayesmh##paramref:paramref)}}指定要从输出中排除或包含的模型参数{p_end}
{synopt :{opt showre:ffects}[{cmd:(}{it:{help bayesian postestimation##bayesian_post_reref:reref}}{cmd:)}]}指定所有或部分随机效应参数包含在输出中{p_end}
{synopt :{opt melabel}}使用与 {cmd:meologit} 相同的行标签显示估计表{p_end}
{synopt :{opt nogr:oup}}抑制汇总组的表{p_end}
{synopt :{opt notab:le}}抑制估计表{p_end}
{synopt :{opt nohead:er}}抑制输出头部{p_end}
{synopt :{opt title(string)}}在参数估计表上方显示 {it:string} 作为标题{p_end}
{synopt :{help bayesmh##display_options:{it:显示选项}}}控制间距、线宽以及基本和空单元{p_end}

{marker options_advanced}{...}
{syntab:{help bayes##advanced_options:高级}}
INCLUDE help bayesmh_advancedopts
{synoptline}
{p 4 6 2}* 带星号的选项是特定于 {cmd:bayes} 前缀的；其他选项在 {cmd:bayes} 和 {help bayesmh_zh} 之间是共同的。{p_end}
{p 4 6 2}选项 {cmd:prior()} 和 {cmd:block()} 可以重复。{p_end}
{p 4 6 2}{helpb bayesmh##priorspec:{it:priorspec}} 和
{helpb bayesmh##paramref:{it:paramref}} 在 {manhelp bayesmh BAYES} 中定义。
{p_end}
{p 4 6 2}{it:paramref} 可以包含因子变量；请参见 {help fvvarlist_zh}。
{p_end}
{p 4 6 2}请参见 {manhelp bayesian_postestimation BAYES:贝叶斯后估计} 以获取估计后可用的功能。{p_end}
{p2colreset}{...}
{p 4 6 2}模型参数是回归系数
{cmd:{c -(}}{it:depvar}{cmd::}{it:indepvars}{cmd:{c )-}},
截距 {cmd:{c -(}cut1{c )-}}、 {cmd:{c -(}cut2{c )-}}，等等，
随机效应
{cmd:{c -(}}{it:rename}{cmd:{c )-}}，以及方差成分
{cmd:{c -(}}{it:rename}{cmd::sigma2{c )-}} 或者，如果指定了
选项 {cmd:covariance(unstructured)}，矩阵参数
{cmd:{c -(}}{it:restub}{cmd::Sigma,matrix{c )-}}；请参见
{mansection BAYES bayesRemarksandexamplesLikelihoodmodel:{it:似然模型}}
在 {bf:[BAYES] bayes} 中了解 {it:rename} 和 {it:restub} 的定义。
使用 {cmd:dryrun} 选项在估计之前查看模型参数的定义。{p_end}
{p 4 6 2}默认为截距使用平坦先验 {cmd:flat}。{p_end}
{p 4 6 2}有关 {it:bayesopts} 的详细描述，请参见
{help bayes##options:{it:选项}} 在 {manhelp bayes BAYES}。{p_end}


{marker menu}{...}
{title:菜单}

{phang}
{bf:统计 > 多层混合效应模型 > 贝叶斯回归 > 有序逻辑回归}


{marker description}{...}
{title:描述}

{pstd}
{cmd:bayes: meologit} 为有序结果拟合贝叶斯多层有序逻辑回归；
有关详细信息，请参见 {manhelp bayes BAYES} 和 {manhelp meologit ME}。


{marker linkspdf}{...}
{title:PDF文档链接}

        {mansection BAYES bayesmeologitQuickstart:快速入门}

        {mansection BAYES bayesmeologitRemarksandexamples:备注和示例}

        {mansection BAYES bayesmeologitMethodsandformulas:方法和公式}

{pstd}
上述部分不包括在此帮助文件中。


{marker examples}{...}
{title:示例}

{pstd}准备{p_end}
{phang2}{cmd:. webuse tvsfpors}{p_end}
{phang2}{cmd:. keep if school < 500}{p_end}

{pstd}按默认先验拟合贝叶斯两层有序逻辑回归{p_end}
{phang2}{cmd:. bayes: meologit thk prethk cc##tv || school:}{p_end}

{pstd}
显示赔率比而不是系数{p_end}
{phang2}{cmd:. bayes, or}

{pstd}
除了主要模型参数外，显示与学校代码193到199对应的随机效应结果{p_end}
{phang2}{cmd:. bayes, showreffects({U0[(193/199).school]})}

{pstd}
检查主要模型参数的MCMC收敛性{p_end}
{phang2}{cmd:. bayesgraph diagnostics _all}

{pstd}
检查第一个、第十和第十五个随机效应的MCMC收敛性{p_end}
{phang2}{cmd:. bayesgraph diagnostics {U0[1 10 15]}}

{pstd}
在一张图上绘制前12个随机效应的后验分布的直方图{p_end}
{phang2}{cmd:. bayesgraph histogram {U0[1/12]}, byparm}

{pstd}
使用 {cmd:meologit} 的参数标签显示估计结果，并在回放中计算对数边际似然{p_end}
{phang2}{cmd:. bayes, melabel remargl}

{pstd}
在回放中保存MCMC结果{p_end}
{phang2}{cmd:. bayes, saving(mymcmc)}

{pstd}拟合贝叶斯三层有序逻辑回归，指定回归系数默认正态先验的标准差为10而不是100，并使用大小为1,000的较小MCMC尺寸而不是默认的10,000{p_end}
{phang2}{cmd:. bayes, normalprior(10) mcmcsize(1000): meologit thk prethk cc##tv || school: || class:}{p_end}


{marker results}{...}
{title:存储结果}

{pstd}
请参见 {help bayes##results:{it:存储结果}} 在 {manhelp bayes BAYES}。
{p_end}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <bayes_meologit.sthlp>}