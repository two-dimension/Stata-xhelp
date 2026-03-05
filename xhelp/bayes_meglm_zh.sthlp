{smcl}
{* *! version 1.0.9  25apr2019}{...}
{viewerdialog "bayes: meglm" "dialog bayes_meglm"}{...}
{vieweralsosee "[BAYES] bayes: meglm" "mansection BAYES bayesmeglm"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[BAYES] bayes" "help bayes_zh"}{...}
{vieweralsosee "[ME] meglm" "help meglm_zh"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[BAYES] Bayesian commands" "help bayesian_commands_zh"}{...}
{vieweralsosee "[BAYES] Bayesian estimation" "help bayesian_estimation_zh"}{...}
{vieweralsosee "[BAYES] Bayesian postestimation" "help bayesian_postestimation_zh"}{...}
{vieweralsosee "[BAYES] Glossary" "help bayes_glossary_zh"}{...}
{viewerjumpto "Syntax" "bayes_meglm_zh##syntax"}{...}
{viewerjumpto "Menu" "bayes_meglm_zh##menu"}{...}
{viewerjumpto "Description" "bayes_meglm_zh##description"}{...}
{viewerjumpto "Links to PDF documentation" "bayes_meglm_zh##linkspdf"}{...}
{viewerjumpto "Examples" "bayes_meglm_zh##examples"}{...}
{viewerjumpto "Stored results" "bayes_meglm_zh##results"}
{help bayes_meglm:English Version}
{hline}{...}
{p2colset 1 25 27 2}{...}
{p2col:{bf:[BAYES] bayes: meglm} {hline 2}}贝叶斯多级广义线性模型{p_end}
{p2col:}({mansection BAYES bayesmeglm:查看完整的 PDF 手册条目}){p_end}
{p2colreset}{...}


{marker syntax}{...}
{title:语法}

{p 8 15 2}
{cmd:bayes} [{cmd:,} {it:bayesopts}] {cmd::} {opt meglm}
{depvar} {it:fe_equation} [{cmd:||} {it:re_equation}] 
	[{cmd:||} {it:re_equation} ...] 
	[{cmd:,} {it:{help bayes_meglm##options_table:选项}}]

{p 4 4 2}
    其中 {it:fe_equation} 的语法为

{p 12 24 2}
	[{indepvars}] {ifin}
        [{it:{help bayes_meglm##weight:权重}}]
	[{cmd:,} {it:{help bayes_meglm##fe_options:固定效应选项}}]

{p 4 4 2}
    而 {it:re_equation} 的语法为以下之一：

{p 8 18 2}
	对于随机系数和截距

{p 12 24 2}
	{it:levelvar}{cmd::} [{varlist}]
		[{cmd:,} {it:{help bayes_meglm##re_options:随机效应选项}}]

{p 8 18 2}
	对于因子变量值中的随机效应

{p 12 24 2}
	{it:levelvar}{cmd::} {cmd:R.}{varname}

{p 4 4 2}
    {it:levelvar} 可以是一个识别随机效应所处组结构的变量，或者是 {cmd:_all}，表示一个包括所有观察值的组。{p_end}

{synoptset 23 tabbed}{...}
{marker fe_options}{...}
{synopthdr :固定效应选项}
{synoptline}
{syntab:模型}
{synopt :{opt nocons:tant}}从固定效应方程中删除常数项{p_end}
{synopt :{opth exp:osure(varname:varname_e)}}在模型中包括 ln({it:varname_e})，系数约束为 1{p_end}
{synopt :{opth off:set(varname:varname_o)}}在模型中包括 {it:varname_o}，系数约束为 1{p_end}
{synopt :{opt asis}}保留完美预测变量{p_end}
{synoptline}

{synoptset 23 tabbed}{...}
{marker re_options}{...}
{synopthdr :随机效应选项}
{synoptline}
{syntab:模型}
{synopt :{opth cov:ariance(meglm##vartype:vartype)}}随机效应的方差-协方差结构；仅支持 {cmd:independent}、{cmd:identity} 和 {cmd:unstructured} 结构{p_end}
{synopt :{opt nocons:tant}}从随机效应方程中删除常数项{p_end}
{synoptline}

{synoptset 23 tabbed}{...}
{marker options_table}{...}
{synopthdr :选项}
{synoptline}
{syntab:模型}
{synopt :{cmdab:f:amily(}{it:{help meglm##family:家庭}}{cmd:)}}{depvar} 的分布；默认值为 {cmd:family(gaussian)}{p_end}
{synopt :{opth l:ink(meglm##link:链函数)}}链接函数；默认值根据家庭而异{p_end}

{syntab :报告}
{synopt :{opt eform}}报告指数化的系数{p_end}
{synopt :{opt irr}}报告发生率比{p_end}
{synopt :{opt or}}报告比值比{p_end}
{synopt :{opt notab:le}}抑制系数表{p_end}
{synopt :{opt nohead:er}}抑制输出头部{p_end}
{synopt :{opt nogr:oup}}抑制摘要组的表{p_end}
包括 help bayesme_display

{synopt :{opt l:evel(#)}}设置信赖水平；默认值为 {cmd:level(95)}{p_end}
{synoptline}
{p 4 6 2}
{it:indepvars} 可以包含因子变量；见 {help fvvarlist_zh}.{p_end}
{p 4 6 2}
{it:depvar}、{it:indepvars} 和 {it:varlist} 可以包含时间序列操作符；见 {help tsvarlist_zh}.{p_end}
{marker weight}{...}
{p 4 6 2}
{opt fweight}被允许；见 {help weight_zh}.{p_end}
{p 4 6 2}
{cmd:bayes:} {cmd:meglm,} {cmd:level()} 相当于 
{cmd:bayes,} {cmd:clevel():} {cmd:meglm}.{p_end}
{p 4 6 2}有关 {it:选项} 的详细说明，见
{help meglm##options:{it:选项}} 在 {manhelp meglm ME}.{p_end}

{marker bayesopts}{...}
{synoptset 30 tabbed}{...}
{synopthdr:bayesopts}
{synoptline}
{marker options_priors}{...}
{syntab:{help bayes##priors_options:先验}}
{p2coldent:* {opt normalpr:ior(#)}}指定回归系数的默认正态先验的标准差；默认值为 {cmd:normalprior(100)}{p_end}
{p2coldent:* {opt igammapr:ior(# #)}}指定方差分量默认逆伽马先验的形状和比例；默认值为 {cmd:igammaprior(0.01 0.01)}{p_end}
{p2coldent:* {cmdab:iwishartpr:ior(}{help bayes##iwishartpriorspec:{it:#} [...]}{cmd:)}}指定未结构化随机效应协方差的默认逆威沙特先验的自由度，并可选地，比例矩阵{p_end}
{* INCLUDE help bayesecmd_opts*}
包括 help bayesmh_prioropts

{marker options_simulation}{...}
{syntab:{help bayes##simulation_options:模拟}}
包括 help bayesmh_simopts
{synopt :{opt restubs(restub1 restub2 ...)}}为所有层的随机效应参数指定存根{p_end}

{marker options_blocking}{...}
{syntab:{help bayes##blocking_options:阻塞}}
{p2coldent:* {opt blocksize(#)}}最大块大小；默认值为 {cmd:blocksize(50)}{p_end}
包括 help bayesmh_blockopts
  {p2coldent:* {opt noblock:ing}}默认情况下不阻塞参数{p_end}

{marker options_initialization}{...}
{syntab:{help bayes##initialization_options:初始化}}
包括 help bayesmh_initopts
{p2coldent:* {opt noi:sily}}在初始化期间显示来自估计命令的输出{p_end}

{marker options_adaptation}{...}
{syntab:{help bayes##adaptation_options:适应}}
包括 help bayesmh_adaptopts

{marker options_reporting}{...}
{syntab:{help bayes##reporting_options:报告}}
{* INCLUDE help bayesme_reportopts*}
包括 help bayes_clevel_hpd_short
{p2coldent:* {opt irr}}报告发生率比{p_end}
{p2coldent:* {opt or}}报告比值比{p_end}
包括 help bayesmh_eform
{synopt :{opt remargl}}计算对数边际似然{p_end}
{synopt :{opt batch(#)}}指定批均值计算的块长度；默认值为 {cmd:batch(0)}{p_end}
{synopt :{cmdab:sav:ing(}{help filename_zh:{it:filename}}[{cmd:, replace}]{cmd:)}}将模拟结果保存到 {it:filename}{cmd:.dta}{p_end}
{synopt :{opt nomodelsumm:ary}}抑制模型摘要{p_end}
{synopt :{opt nomesumm:ary}}抑制多级结构摘要{p_end}
{synopt :[{cmd:no}]{opt dots}}抑制点或每 100 次迭代显示点，每 1,000 次迭代显示迭代次数；默认值为 {cmd:dots}{p_end}
{synopt :{cmd:dots(}{it:#}[{cmd:,} {opt every(#)}]{cmd:)}}在进行模拟时显示点{p_end}
{synopt :[{cmd:no}]{opth show:(bayesmh##paramref:paramref)}}指定要排除或包含在输出中的模型参数{p_end}
{synopt :{opt showre:ffects}[{cmd:(}{it:{help bayesian postestimation##bayesian_post_reref:reref}}{cmd:)}]}指定所有或部分随机效应参数包含在输出中{p_end}
{synopt :{opt melabel}}使用与 {cmd:meglm} 相同的行标签显示估计表{p_end}
{synopt :{opt nogr:oup}}抑制摘要组的表{p_end}
{synopt :{opt notab:le}}抑制估计表{p_end}
{synopt :{opt nohead:er}}抑制输出头部{p_end}
{synopt :{opt title(string)}}在参数估计表上方显示 {it:string} 作为标题{p_end}
{synopt :{help bayesmh##display_options:{it:display_options}}}控制间距、线宽和基数与空单元{p_end}

{marker options_advanced}{...}
{syntab:{help bayes##advanced_options:高级}}
包括 help bayesmh_advancedopts
{synoptline}
{p 4 6 2}* 带星选项特定于 {cmd:bayes} 前缀；其他选项在 {cmd:bayes} 和 {help bayesmh_zh} 之间是通用的。{p_end}
{p 4 6 2}选项 {cmd:prior()} 和 {cmd:block()} 可以重复使用。{p_end}
{p 4 6 2}{helpb bayesmh##priorspec:{it:priorspec}} 和
{helpb bayesmh##paramref:{it:paramref}} 在 {manhelp bayesmh BAYES} 中定义。
{p_end}
{p 4 6 2}{it:paramref} 可以包含因子变量；见 {help fvvarlist_zh}。
{p_end}
{p 4 6 2}参见 {manhelp bayesian_postestimation BAYES:贝叶斯后验估计} 以了解估计后可用的功能。{p_end}
{p2colreset}{...}
{p 4 6 2}模型参数是回归系数
{cmd:{c -(}}{it:depvar}{cmd::}{it:indepvars}{cmd:{c )-}},
如在
{mansection BAYES bayesmeglmRemarksandexamplesAdditionalmodelparameters:{it:附加模型参数}}中描述，
随机效应
{cmd:{c -(}}{it:rename}{cmd:{c )-}}, 并且是方差分量
{cmd:{c -(}}{it:rename}{cmd::sigma2{c )-}} 或者，如果指定了选项
{cmd:covariance(unstructured)}，则为矩阵参数
{cmd:{c -(}}{it:restub}{cmd::Sigma,matrix{c )-}}；见
{mansection BAYES bayesRemarksandexamplesLikelihoodmodel:{it:似然模型}}
在 {bf:[BAYES] bayes} 中如何定义 {it:rename} 和 {it:restub}。
使用 {cmd:dryrun} 选项在估计之前查看模型参数的定义。{p_end}
{p 4 6 2}有关 {it:bayesopts} 的详细说明，见
{help bayes##options:{it:选项}} 在 {manhelp bayes BAYES}.{p_end}


{marker menu}{...}
{title:菜单}

{phang}
{bf:统计 > 多级混合效应模型 > 贝叶斯回归 > 广义线性模型 (GLM)}


{marker description}{...}
{title:描述}

{pstd}
{cmd:bayes: meglm} 拟合一个贝叶斯多级广义线性模型，以适应不同类型的结果，例如连续型、二元型、计数型等；详情见 {manhelp bayes BAYES} 和 {manhelp meglm ME}。


{marker linkspdf}{...}
{title:PDF 文档链接}

        {mansection BAYES bayesmeglmQuickstart:快速入门}

        {mansection BAYES bayesmeglmRemarksandexamples:备注和示例}

        {mansection BAYES bayesmeglmMethodsandformulas:方法和公式}

{pstd}
上述部分不包含在此帮助文件中。


{marker examples}{...}
{title:示例}

{pstd}
设置{p_end}
{phang2}{cmd:. use https://www.stata-press.com/data/mlmus3/drvisits}{p_end}
{phang2}{cmd:. keep if numvisit > 0}{p_end}
{phang2}{cmd:. keep if id < 1000}{p_end}

{pstd}
拟合具有伽马分布和默认对数链接的贝叶斯二级 GLM 模型，并使用默认先验通过 {cmd:id} 拟合随机截距{p_end}
{phang2}{cmd:. bayes: meglm numvisit reform age loginc || id:, family(gamma)}

{pstd}
除了主要模型参数之外，显示前 5 个随机效应的结果{p_end}
{phang2}{cmd:. bayes, showreffects({U0[1/5]})}

{pstd}
检查主要模型参数的 MCMC 收敛性{p_end}
{phang2}{cmd:. bayesgraph diagnostics _all}

{pstd}
检查标识符 3、4、7、22 和 28 的 MCMC 收敛性{p_end}
{phang2}{cmd:. bayesgraph diagnostics {U0[(3 4 7 22 28).id]}}

{pstd}
在一张图上绘制前 12 个随机效应的后验分布直方图{p_end}
{phang2}{cmd:. bayesgraph histogram {U0[1/12]}, byparm}

{pstd}
使用 {cmd:meglm} 的参数标签显示估计结果，并在重放时计算对数边际似然{p_end}
{phang2}{cmd:. bayes, melabel remargl}

{pstd}
为所有回归系数指定相同的统一先验。将预热期增加到 3,000，而默认值为 2,500，并指定随机数种子以实现可重复性{p_end}
{phang2}{cmd:. bayes, prior({numvisit:reform age loginc _cons}, uniform(-10,10)) burnin(3000) rseed(12345): meglm numvisit reform age loginc || id:, family(gamma)}

{pstd}
与上面相同，但用快捷方式表示所有回归系数{p_end}
{phang2}{cmd:. bayes, prior({numvisit:}, uniform(-10,10)) burnin(3000) rseed(12345): meglm numvisit reform age loginc || id:, family(gamma)}

{pstd}
在重放时保存 MCMC 结果{p_end}
{phang2}{cmd:. bayes, saving(mymcmc)}


{marker results}{...}
{title:存储的结果}

{pstd}
有关 {help bayes##results:{it:存储的结果}} 的信息，请参见 {manhelp bayes BAYES}。
{p_end}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <bayes_meglm.sthlp>}