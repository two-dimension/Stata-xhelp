{smcl}
{* *! version 1.0.8  25apr2019}{...}
{viewerdialog "bayes: menbreg" "dialog bayes_menbreg"}{...}
{vieweralsosee "[BAYES] bayes: menbreg" "mansection BAYES bayesmenbreg"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[BAYES] bayes" "help bayes_zh"}{...}
{vieweralsosee "[ME] menbreg" "help menbreg_zh"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[BAYES] Bayesian commands" "help bayesian_commands_zh"}{...}
{vieweralsosee "[BAYES] Bayesian estimation" "help bayesian_estimation_zh"}{...}
{vieweralsosee "[BAYES] Bayesian postestimation" "help bayesian_postestimation_zh"}{...}
{vieweralsosee "[BAYES] Glossary" "help bayes_glossary_zh"}{...}
{viewerjumpto "Syntax" "bayes_menbreg_zh##syntax"}{...}
{viewerjumpto "Menu" "bayes_menbreg_zh##menu"}{...}
{viewerjumpto "Description" "bayes_menbreg_zh##description"}{...}
{viewerjumpto "Links to PDF documentation" "bayes_menbreg_zh##linkspdf"}{...}
{viewerjumpto "Examples" "bayes_menbreg_zh##examples"}{...}
{viewerjumpto "Stored results" "bayes_menbreg_zh##results"}
{help bayes_menbreg:English Version}
{hline}{...}
{p2colset 1 27 29 2}{...}
{p2col:{bf:[BAYES] bayes: menbreg} {hline 2}}贝叶斯多级负二项回归{p_end}
{p2col:}({mansection BAYES bayesmenbreg:查看完整的 PDF 手册条目}){p_end}
{p2colreset}{...}


{marker syntax}{...}
{title:语法}

{p 8 15 2}
{cmd:bayes} [{cmd:,} {it:bayesopts}] {cmd::} {opt menbreg}
{depvar} {it:fe_equation} [{cmd:||} {it:re_equation}] 
	[{cmd:||} {it:re_equation} ...] 
	[{cmd:,} {it:{help bayes_menbreg##options_table:选项}}]

{p 4 4 2}
    其中 {it:fe_equation} 的语法为

{p 12 24 2}
	[{indepvars}] {ifin}
        [{it:{help bayes_menbreg##weight:权重}}]
	[{cmd:,} {it:{help bayes_menbreg##fe_options:固定效应选项}}]

{p 4 4 2}
    以及 {it:re_equation} 的语法为以下之一：

{p 8 18 2}
	对于随机系数和截距

{p 12 24 2}
	{it:levelvar}{cmd::} [{varlist}]
		[{cmd:,} {it:{help bayes_menbreg##re_options:随机效应选项}}]

{p 8 18 2}
	对于因子变量的随机效应值

{p 12 24 2}
	{it:levelvar}{cmd::} {cmd:R.}{varname}

{p 4 4 2}
    {it:levelvar} 既可以是标识该层级随机效应组结构的变量，也可以是 {cmd:_all}，表示一个包含所有观察值的组。{p_end}

{synoptset 23 tabbed}{...}
{marker fe_options}{...}
{synopthdr :fe_options}
{synoptline}
{syntab:Model}
{synopt :{opt nocons:tant}}从固定效应方程中去掉常数项{p_end}
{synopt :{opth exp:osure(varname:varname_e)}}将 ln({it:varname_e}) 包含在模型中，系数约束为 1{p_end}
{synopt :{opth off:set(varname:varname_o)}}将 {it:varname_o} 包含在模型中，系数约束为 1{p_end}
{synoptline}

{synoptset 23 tabbed}{...}
{marker re_options}{...}
{synopthdr :re_options}
{synoptline}
{syntab:Model}
{synopt :{opth cov:ariance(menbreg##vartype:vartype)}}{help bayes_glossary##随机效应参数:随机效应}的方差-协方差结构；仅支持 {cmd:independent}、{cmd:identity} 和 {cmd:unstructured} 结构{p_end}
{synopt :{opt nocons:tant}}从随机效应方程中去掉常数项{p_end}
{synoptline}

{synoptset 23 tabbed}{...}
{marker options_table}{...}
{synopthdr :options}
{synoptline}
{syntab:Model}
{synopt :{opt d:ispersion(dispersion)}}条件过度分散的参数化； {it:dispersion} 可以是 {cmd:mean}（默认）或 {cmd:constant}{p_end}

{syntab :Reporting}
{synopt :{opt irr}}报告发生率比{p_end}
{synopt :{opt notab:le}}抑制系数表{p_end}
{synopt :{opt nohead:er}}抑制输出头部{p_end}
{synopt :{opt nogr:oup}}抑制总结组的表{p_end}
INCLUDE help bayesme_display

{synopt :{opt l:evel(#)}}设定可信水平；默认值为 {cmd:level(95)}{p_end}
{synoptline}
{p 4 6 2}
{it:indepvars} 可以包含因子变量；参见 {help fvvarlist_zh}.{p_end}
{p 4 6 2}
{it:depvar}、{it:indepvars} 和 {it:varlist} 可以包含时间序列操作符；参见 {help tsvarlist_zh}.{p_end}
{marker weight}{...}
{p 4 6 2}
允许使用 {opt fweight}；请参阅 {help weight_zh}.{p_end}
{p 4 6 2}
{cmd:bayes:} {cmd:menbreg,} {cmd:level()} 等同于 {cmd:bayes,} {cmd:clevel():} {cmd:menbreg}.{p_end}
{p 4 6 2}有关 {it:options} 的详细描述，请参见 {help menbreg##options:{it:选项}} 在 {manhelp menbreg ME} 中。{p_end}

{marker bayesopts}{...}
{synoptset 30 tabbed}{...}
{synopthdr:bayesopts}
{synoptline}
{marker options_priors}{...}
{syntab:{help bayes##priors_options:先验}}
{p2coldent:* {opt normalpr:ior(#)}}指定回归系数和对数过度分散参数的默认正态先验的标准差；默认为 {cmd:normalprior(100)}{p_end}
{p2coldent:* {opt igammapr:ior(# #)}}指定方差分量的默认逆伽马先验的形状和尺度；默认为 {cmd:igammaprior(0.01 0.01)}{p_end}
{p2coldent:* {cmdab:iwishartpr:ior(}{help bayes##iwishartpriorspec:{it:#} [...]}{cmd:)}}指定自由度，并可选择性地指定默认逆维萨特先验的尺度矩阵{p_end}
{* INCLUDE help bayesecmd_opts*}
INCLUDE help bayesmh_prioropts

{marker options_simulation}{...}
{syntab:{help bayes##simulation_options:模拟}}
INCLUDE help bayesmh_simopts
{synopt :{opt restubs(restub1 restub2 ...)}}指定所有级别的随机效应参数的存根{p_end}

{marker options_blocking}{...}
{syntab:{help bayes##blocking_options:阻塞}}
{p2coldent:* {opt blocksize(#)}}最大块大小；默认为 {cmd:blocksize(50)}{p_end}
INCLUDE help bayesmh_blockopts
  {p2coldent:* {opt noblock:ing}}默认情况下不对参数进行阻塞{p_end}

{marker options_initialization}{...}
{syntab:{help bayes##initialization_options:初始化}}
INCLUDE help bayesmh_initopts
{p2coldent:* {opt noi:sily}}在初始化时显示估计命令的输出{p_end}

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
{synopt :{opt batch(#)}}指定批量均值计算的块长度；默认为 {cmd:batch(0)}{p_end}
{synopt :{cmdab:sav:ing(}{help filename_zh:{it:filename}}[{cmd:, replace}]{cmd:)}}将模拟结果保存至 {it:filename}{cmd:.dta}{p_end}
{synopt :{opt nomodelsumm:ary}}抑制模型摘要{p_end}
{synopt :{opt nomesumm:ary}}抑制多级结构摘要{p_end}
{synopt :[{cmd:no}]{opt dots}}抑制点或每 100 次迭代显示点和每 1,000 次迭代显示迭代数字；默认为 {cmd:dots}{p_end}
{synopt :{cmd:dots(}{it:#}[{cmd:,} {opt every(#)}]{cmd:)}}在执行模拟时显示点{p_end}
{synopt :[{cmd:no}]{opth show:(bayesmh##paramref:paramref)}}指定要排除或包含在输出中的模型参数{p_end}
{synopt :{opt showre:ffects}[{cmd:(}{it:{help bayesian postestimation##bayesian_post_reref:reref}}{cmd:)}]}指定输出中包括所有或部分随机效应参数{p_end}
{synopt :{opt melabel}}使用与 {cmd:menbreg} 相同的行标签显示估计表{p_end}
{synopt :{opt nogr:oup}}抑制总结组的表{p_end}
{synopt :{opt notab:le}}抑制估计表{p_end}
{synopt :{opt nohead:er}}抑制输出头部{p_end}
{synopt :{opt title(string)}}在参数估计表上方显示 {it:string} 作为标题{p_end}
{synopt :{help bayesmh##display_options:{it:显示选项}}}控制间距、行宽，以及基数和空单元{p_end}

{marker options_advanced}{...}
{syntab:{help bayes##advanced_options:高级}}
INCLUDE help bayesmh_advancedopts
{synoptline}
{p 4 6 2}* 星号选项为 {cmd:bayes} 前缀特有，其他选项在 {cmd:bayes} 和 {help bayesmh_zh} 之间是共通的。{p_end}
{p 4 6 2}选项 {cmd:prior()} 和 {cmd:block()} 可以重复使用。{p_end}
{p 4 6 2}{helpb bayesmh##priorspec:{it:priorspec}} 和 {helpb bayesmh##paramref:{it:paramref}} 在 {manhelp bayesmh BAYES} 中定义。{p_end}
{p 4 6 2}{it:paramref} 可以包含因子变量；参见 {help fvvarlist_zh}。{p_end}
{p 4 6 2}请参见 {manhelp bayesian_postestimation BAYES:贝叶斯后期估计} 以获取估计后可用的功能。{p_end}
{p2colreset}{...}
{p 4 6 2}模型参数为回归系数
{cmd:{c -(}}{it:depvar}{cmd::}{it:indepvars}{cmd:{c )-}},
对数过度分散参数
{cmd:{c -(}lnalpha{c )-}} 采用均匀分散或
{cmd:{c -(}lndelta{c )-}} 采用常数分散，
随机效应
{cmd:{c -(}}{it:rename}{cmd:{c )-}}，以及方差分量
{cmd:{c -(}}{it:rename}{cmd::sigma2{c )-}} 当选项
{cmd:covariance(unstructured)} 被指定时，即矩阵参数
{cmd:{c -(}}{it:restub}{cmd::Sigma,matrix{c )-}}；详见
{mansection BAYES bayesRemarksandexamplesLikelihoodmodel:{it:似然模型}}
在 {bf:[BAYES] bayes} 中获取 {it:rename}s 和 {it:restub} 的定义。
使用 {cmd:dryrun} 选项在估计之前查看模型参数的定义。{p_end}
{p 4 6 2}有关 {it:bayesopts} 的详细描述，请参见 
{help bayes##options:{it:选项}} 在 {manhelp bayes BAYES} 中。{p_end}


{marker menu}{...}
{title:菜单}

{phang}
{bf:统计 > 多级混合效应模型 > 贝叶斯回归 > 负二项回归}


{marker description}{...}
{title:描述}

{pstd}
{cmd:bayes: menbreg} 为非负计数结果拟合贝叶斯多级负二项回归；
详见 {manhelp bayes BAYES} 和 {manhelp menbreg ME}。

{marker linkspdf}{...}
{title:PDF 文档链接}

        {mansection BAYES bayesmenbregQuickstart:快速入门}

        {mansection BAYES bayesmenbregRemarksandexamples:备注和示例}

        {mansection BAYES bayesmenbregMethodsandformulas:方法与公式}

{pstd}
上述部分未包含在此帮助文件中。


{marker examples}{...}
{title:示例}

{pstd}设置{p_end}
{phang2}{cmd:. webuse melanoma}{p_end}

{pstd}使用默认先验拟合按 {cmd:region} 的随机截距的贝叶斯双层负二项回归{p_end}
{phang2}{cmd:. bayes: menbreg deaths uv, exposure(expected) || region:}{p_end}

{pstd}
显示发生率比而不是系数{p_end}
{phang2}{cmd:. bayes, irr}

{pstd}
除了主要模型参数外，显示前 5 个随机效应的结果{p_end}
{phang2}{cmd:. bayes, showreffects({U0[1/5]})}

{pstd}
检查主要模型参数和第 1、10 和 15 区域的随机效应的 MCMC 收敛性{p_end}
{phang2}{cmd:. bayesgraph diagnostics _all, showreffects({U0[(1 10 15).region]})}

{pstd}
在一张图上绘制前 12 个随机效应的后验分布的直方图{p_end}
{phang2}{cmd:. bayesgraph histogram {U0[1/12]}, byparm}

{pstd}
使用 {cmd:menbreg} 的参数标签显示估计结果，并在重放时计算对数边际似然{p_end}
{phang2}{cmd:. bayes, melabel remargl}

{pstd}
将烧入期从默认的 2500 增加到 5000；使用标准差为 10 的默认正态先验的回归系数；并指定随机数种子以确保可重现性{p_end}
{phang2}{cmd:. bayes, burnin(5000) normalprior(10) rseed(123): menbreg deaths uv, exposure(expected) || region:}{p_end}

{pstd}
重放时保存 MCMC 结果{p_end}
{phang2}{cmd:. bayes, saving(mymcmc)}


{marker results}{...}
{title:存储结果}

{pstd}
请参阅 {help bayes##results:{it:存储结果}} 在 {manhelp bayes BAYES} 中。{p_end}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <bayes_menbreg.sthlp>}