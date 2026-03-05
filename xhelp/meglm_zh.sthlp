{smcl}
{* *! version 1.2.8  12dec2018}{...}
{viewerdialog meglm "dialog meglm"}{...}
{viewerdialog "svy: meglm" "dialog meglm, message(-svy-) name(svy_meglm)"}{...}
{vieweralsosee "[ME] meglm" "mansection ME meglm"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[ME] meglm postestimation" "help meglm postestimation"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[BAYES] bayes: meglm" "help bayes meglm"}{...}
{vieweralsosee "[R] glm" "help glm_zh"}{...}
{vieweralsosee "[ME] me" "help me_zh"}{...}
{vieweralsosee "[ME] menl" "help menl_zh"}{...}
{vieweralsosee "[ME] mixed" "help mixed_zh"}{...}
{vieweralsosee "[SVY] svy estimation" "help svy_estimation_zh"}{...}
{viewerjumpto "Syntax" "meglm_zh##syntax"}{...}
{viewerjumpto "Menu" "meglm_zh##menu"}{...}
{viewerjumpto "Description" "meglm_zh##description"}{...}
{viewerjumpto "Links to PDF documentation" "meglm_zh##linkspdf"}{...}
{viewerjumpto "Options" "meglm_zh##options"}{...}
{viewerjumpto "Remarks" "meglm_zh##remarks"}{...}
{viewerjumpto "Examples" "meglm_zh##examples"}{...}
{viewerjumpto "Video example" "meglm_zh##video"}{...}
{viewerjumpto "Stored results" "meglm_zh##results"}
{help meglm:English Version}
{hline}{...}
{p2colset 1 15 17 2}{...}
{p2col:{bf:[ME] meglm} {hline 2}}多级混合效应广义线性模型{p_end}
{p2col:}({mansection ME meglm:查看完整的 PDF 手动条目}){p_end}
{p2colreset}{...}


{marker syntax}{...}
{title:语法}

{p 8 18 2}
{cmd:meglm} {depvar} {it:fe_equation} [{cmd:||} {it:re_equation}]
	[{cmd:||} {it:re_equation} ...] 
	[{cmd:,} {it:{help meglm##options_table:选项}}]

{p 4 4 2}
    其中 {it:fe_equation} 的语法是

{p 12 24 2}
	[{indepvars}] {ifin} [{it:{help meglm##weight:权重}}]
	[{cmd:,} {it:{help meglm##fe_options:固定效应选项}}]

{p 4 4 2}
    而 {it:re_equation} 的语法如下：

{p 8 18 2}
	用于随机系数和截距

{p 12 24 2}
	{it:{help varname_zh:levelvar}}{cmd::} [{varlist}]
		[{cmd:,} {it:{help meglm##re_options:随机效应选项}}]

{p 8 18 2}
	用于因子变量值之间的随机效应

{p 12 24 2}
	{it:{help varname_zh:levelvar}}{cmd::} {cmd:R.}{varname}

{p 4 4 2}
    {it:levelvar} 是一个变量，用于识别该级别的随机效应的组结构，或是 {cmd:_all}，表示一个包含所有观察的组。{p_end}

{synoptset 25 tabbed}{...}
{marker fe_options}{...}
{synopthdr :固定效应选项}
{synoptline}
{syntab:模型}
{synopt :{opt nocons:tant}}从固定效应方程中抑制常数项{p_end}
{synopt :{opth exp:osure(varname:varname_e)}}在模型中包含 ln({it:varname_e})，系数约束为 1{p_end}
{synopt :{opth off:set(varname:varname_o)}}在模型中包含 {it:varname_o}，系数约束为 1{p_end}
{synopt :{opt asis}}保留完美预测变量{p_end}
{synoptline}

{marker re_options}{...}
{synopthdr :随机效应选项}
{synoptline}
{syntab:模型}
{synopt :{opth cov:ariance(meglm##vartype:vartype)}}随机效应的方差-协方差结构{p_end}
{synopt :{opt nocons:tant}}从随机效应方程中抑制常数项{p_end}
{synopt :{opth fw:eight(varname)}}在更高水平处的频率权重{p_end}
{synopt :{opth iw:eight(varname)}}在更高水平处的重要性权重{p_end}
{synopt :{opth pw:eight(varname)}}在更高水平处的抽样权重{p_end}
{synoptline}

{marker options_table}{...}
{synopthdr :选项}
{synoptline}
{syntab:模型}
{synopt :{cmdab:f:amily(}{it:{help meglm##family:family}}{cmd:)}}{depvar} 的分布；默认是 {cmd:family(gaussian)}{p_end}
{synopt :{opth l:ink(meglm##link:link)}}链接函数；默认根据每个家庭而异{p_end}
{synopt :{cmdab:const:raints(}{it:{help estimation options##constraints():constraints}}{cmd:)}}应用指定的线性约束{p_end}

{syntab:标准误/稳健性}
{synopt:{opth vce(vcetype)}}{it:vcetype} 可以是 {cmd:oim}、{cmdab:r:obust} 或 {cmdab:cl:uster} {it:clustvar}{p_end}

{syntab :报告}
{synopt :{opt le:vel(#)}}设置置信水平；默认是 {cmd:level(95)}{p_end}
{synopt :{opt eform}}按指数报告固定效应系数{p_end}
{synopt :{opt irr}}按发生率比报告固定效应系数{p_end}
{synopt :{opt or}}按比值比报告固定效应系数{p_end}
{synopt :{opt nocnsr:eport}}不显示约束{p_end}
{synopt :{opt notab:le}}抑制系数表{p_end}
{synopt :{opt nohead:er}}抑制输出头部{p_end}
{synopt :{opt nogr:oup}}抑制汇总组的表{p_end}
{synopt :{it:{help meglm##display_options:display_options}}}控制
包含帮助短描述-显示选项

{syntab:积分}
{synopt :{opth intm:ethod(meglm##intmethod:intmethod)}}积分方法{p_end}
{synopt :{opt intp:oints(#)}}设置所有级别的积分（求积）点数；默认是 {cmd:intpoints(7)}{p_end}

{syntab :最大化}
{synopt :{it:{help meglm##maximize_options:maximize_options}}}控制
最大化过程；很少使用{p_end}

包含帮助开始值表
{synopt :{opt dnumerical}}使用数值导数技术{p_end}
{synopt :{opt col:linear}}保留共线性变量{p_end}
包含帮助短描述-系数图例
{synoptline}
{p2colreset}{...}

包含帮助随机效应变量类型表

{marker family}{...}
{synoptset 25}{...}
{synopthdr :家庭}
{synoptline}
{synopt :{opt gau:ssian}}高斯（正态）；默认{p_end}
{synopt :{opt be:rnoulli}}伯努利{p_end}
{synopt :{opt bi:nomial} [{it:#}|{varname}]}二项式；默认的二项式试验数为 1{p_end}
{synopt :{opt gam:ma}}伽马{p_end}
{synopt :{opt nb:inomial} [{cmd:mean}|{cmdab:cons:tant}]}负二项式；默认离散度为 {cmd:mean}{p_end}
{synopt :{opt o:rdinal}}排序{p_end}
{synopt :{opt p:oisson}}泊松{p_end}
{synoptline}

{marker link}{...}
{synoptset 25}{...}
{synopthdr :链接}
{synoptline}
{synopt :{opt iden:tity}}恒等{p_end}
{synopt :{opt log}}对数{p_end}
{synopt :{opt logit}}逻辑回归{p_end}
{synopt :{opt prob:it}}概率回归{p_end}
{synopt :{opt clog:log}}互补对数-对数{p_end}
{synoptline}
{p2colreset}{...}

包含帮助积分方法表

包含帮助因子变量列表
{p 4 6 2}{it:depvar}、{it:indepvars} 和 {it:varlist} 可以包含时间序列运算符；请参见 {help tsvarlist_zh}.{p_end}
{p 4 6 2}{cmd:bayes}、{cmd:by} 和 {cmd:svy} 被允许；请参见 {help prefix_zh}。
有关更多详细信息，请参见 {manhelp bayes_meglm BAYES:bayes: meglm}.{p_end}
{p 4 6 2}
{opt vce()} 和权重不允许与 {help svy_zh} 前缀一起使用。
{p_end}
{marker weight}{...}
{p 4 6 2}
{cmd:fweight}s、{cmd:iweight}s 和 {cmd:pweight}s 被允许； 
请参见 {help weight_zh}。只能指定一种类型的权重。
在拉普拉斯近似或交叉模型下不支持权重。{p_end}
{p 4 6 2}
{opt startvalues()}、{opt startgrid}、{opt noestimate}、{opt dnumerical}、
{opt collinear} 和 {opt coeflegend} 不会出现在对话框中。{p_end}
{p 4 6 2}有关估计后可用特性的更多信息，请参见 {manhelp meglm_postestimation ME:meglm postestimation}。{p_end}


{marker menu}{...}
{title:菜单}

{phang}
{bf:统计 > 多级混合效应模型 >}
      {bf:广义线性模型 (GLM)}


{marker description}{...}
{title:描述}

{pstd}
{cmd:meglm} 拟合多级混合效应广义线性模型。{cmd:meglm} 允许对响应变量进行多种分布，其中条件于正态分布的随机效应。

{marker linkspdf}{...}
{title:PDF 文档链接}

        {mansection ME meglmQuickstart:快速开始}

        {mansection ME meglmRemarksandexamples:备注和示例}

        {mansection ME meglmMethodsandformulas:方法和公式}

{pstd}
上述部分不包含在此帮助文件中。


{marker options}{...}
{title:选项}

{dlgtab:模型}

{phang}{opt noconstant} 抑制常数（截距）项，并可针对固定效应方程和任何或所有随机效应方程进行指定。

{phang}
{opth exposure:(varname:varname_e)} 指定一个变量，反映每个观察事件发生的暴露量；ln({it:varname_e}) 将在模型的固定效应部分中包含，系数被约束为 1。 

{phang}
{opth offset:(varname:varname_o)} 指定将 {it:varname_o} 包含在模型的固定效应部分中，系数被约束为 1。

{phang}
{opt asis} 强制保留完美预测变量及其相关的完美预测观察，这可能会在最大化过程中产生不稳定；见 {manhelp probit R}。

包含帮助随机效应变量类型选项

包含帮助权重选项

{phang}
{cmd:family(}{cmd:{it:{help meglm##family:family}}}{cmd:)} 指定 {depvar} 的分布；{cmd:family(gaussian)} 是默认。

{phang}
{opth link:(meglm##link:link)} 指定链接函数；默认是指定的 {cmd:family()} 的典型链接，除非是伽马和负二项式家庭。

{pmore}
如果您同时指定了 {cmd:family()} 和 {cmd:link()}，并非所有组合都是合理的。您可以从以下组合中选择：

                          identity  log  logit  probit  cloglog
        {hline 60}
        Gaussian              D      x
        Bernoulli                          D       x       x
        binomial                           D       x       x
        gamma                         D
        negative binomial             D
        ordinal                            D       x       x
        Poisson                       D
        {hline 60}
	D 表示默认。

{phang}
{opt constraints(constraints)}; 
见 {helpb estimation options:[R] 估计选项}。

{dlgtab:标准误/稳健性}

{phang}
{opt vce(vcetype)} 指定报告的标准误类型，包括从渐近理论派生的类型（{cmd:oim}），对某些类型的误指定具有鲁棒性（{cmd:robust}），以及允许组内相关性（{cmd:cluster} {it:clustvar}）；见 {help vce_option_zh:[R] {it:vce_option}}。如果指定了 {cmd:vce(robust)}，则鲁棒方差将在多级模型的最高级别上聚类。

{dlgtab:报告}

{phang}
{opt level(#)}; 见 {helpb estimation options:[R] 估计选项}。

{phang}
{opt eform} 报告指数固定效应系数及对应的标准误和置信区间。此选项可以在估计时或重放时指定。

{phang}
{opt irr} 报告估计的固定效应系数转换为发生率比，即 exp(b) 而不是 b。标准误和置信区间也会类似转换。此选项影响结果的显示方式，而不是估计或存储的方式。{cmd:irr} 可以在估计时或重放时指定。此选项仅适用于计数模型。

{phang}
{opt or} 报告估计的固定效应系数转换为比值比，即 exp(b) 而不是 b。标准误和置信区间也会类似转换。此选项影响结果的显示方式，而不是估计的方式。{opt or} 可以在估计时或重放时指定。此选项仅适用于逻辑回归模型。

{phang}
{opt nocnsreport}; 见 {helpb estimation options:[R] 估计选项}。

{phang}
{opt notable} 抑制估计表，无论是在估计时还是重放时。

{phang}
{opt noheader} 抑制输出头部，无论是在估计时或重放时。

{phang}
{opt nogroup} 抑制输出头部中汇总组信息（组数、平均组大小、最小值和最大值）的显示。

包含帮助显示选项列表

{dlgtab:积分}

包含帮助随机效应积分选项

{marker maximize_options}{...}
{dlgtab:最大化}

{phang}
{it:maximize_options}:
{opt dif:ficult},
{opth tech:nique(maximize##algorithm_spec:algorithm_spec)},
{opt iter:ate(#)},
[{cmd:no}]{opt log},
{opt tr:ace},
{opt grad:ient},
{opt showstep},
{opt hess:ian},
{opt showtol:erance},
{opt tol:erance(#)},
{opt ltol:erance(#)},
{opt nrtol:erance(#)},
{opt nonrtol:erance} 和
{opt from(init_specs)}; 
见 {help maximize_zh:[R] 最大化}。
需要特别提到的与 {cmd:meglm} 相关的选项列于下面。

{pmore}
{opt from()} 接受一个正确标记的初始值向量或一个带值的系数名称列表。值列表不被允许。

{pstd}
以下选项适用于 {opt meglm}，但不会显示在对话框中：

{marker startval}{...}
{marker startvalues()}{...}
{phang}
{opt startvalues(svmethod)} 指定如何计算起始值。用 {cmd:from()} 指定的起始值会覆盖计算的起始值。 

{pmore}
	{cmd:startvalues(zero)} 指定起始值设置为 0。 

{pmore}
	{cmd:startvalues(constantonly)} 在 {cmd:startvalues(zero)} 的基础上，通过拟合只包含常数的模型以获得截距和辅助参数的估计，并用 1 代替随机效应的方差。 

{pmore}
	{cmd:startvalues(fixedonly}[{cmd:,} {opt iter:ate(#)}]{cmd:)} 基于 {cmd:startvalues(constantonly)} 拟合完整的固定效应模型以获取系数和截距的估计，并继续使用 1 作为随机效应的方差。这是默认行为。 
	{opt iterate(#)} 限制拟合固定效应模型的迭代次数。

{pmore}
	{cmd:startvalues(iv}[{cmd:,} {opt iter:ate(#)}]{cmd:)} 在 {cmd:startvalues(fixedonly)} 的基础上，利用工具变量方法和广义残差获取随机效应的方差。 
	{opt iterate(#)} 限制拟合工具变量模型的迭代次数。

{pmore}
	{cmd:startvalues(}{opt iter:ate(#)}{cmd:)} 限制拟合默认模型（固定效应）的迭代次数。

{marker startgrid()}{...}
{phang}
{cmd:startgrid}[{cmd:(}{it:gridspec}{cmd:)}] 在随机效应的方差成分上执行网格搜索以改善起始值。默认情况下不执行网格搜索，除非发现起始值不可行，此时 {cmd:meglm} 将运行 {cmd:startgrid()} 进行“最小”搜索，涉及 q^3 次似然评估，其中 q 是随机效应的数量。有时这可以解决问题。然而，通常没有问题，因此默认情况下不会运行 {cmd:startgrid()}。即使起始值可行，运行 {cmd:startgrid()} 也能获得更好的起始值。

{pmore}
	{cmd:startgrid()} 是一种暴力方法，尝试各种方差和协方差值，并选择最佳效果的值。
	您可能在不知情的情况下使用了 {cmd:startgrid()} 的默认形式。如果您看到 {cmd:meglm} 在迭代日志中显示网格节点 1、网格节点 2 等跟在网格节点 0 之后，这就是 {cmd:meglm} 由于原始起始值不可行而执行的默认搜索。默认形式尝试 0.1、1 和 10 作为所有随机效应的所有方差。 

{pmore}
	{opth startgrid(numlist)} 指定随机效应方差的尝试值。

{pmore}
	{opt startgrid(covspec)} 指定要进行网格搜索的特定方差和协方差。
	{it:covspec} 是 {it:name}{cmd:[}{it:level}{cmd:]} 表示方差，{it:name1}{cmd:[}{it:level}{cmd:]*}{it:name2}{cmd:[}{it:level}{cmd:]} 表示协方差。
	例如，随机截距在 {cmd:id} 级别的方差指定为 {cmd:_cons[id]}，而同一级别的变量 {cmd:week} 的随机斜率方差指定为 {cmd:week[id]}。
	线性混合效应模型的残差方差指定为 {cmd:e.}{it:depvar}，其中 {it:depvar} 是因变量的名称。
	上述随机斜率与随机截距之间的协方差指定为 {cmd:_cons[id]*week[id]}。
	
{pmore}
	{opt startgrid(numlist covspec)} 结合这两种语法。您还可以多次指定 {cmd:startgrid()}，以便为不同的方差和协方差搜索不同的范围。

{phang} 
{cmd:noestimate} 指定不拟合模型。相反，应显示起始值（根据上述选项进行修改的情况下），并使用 {cmd:coeflegend} 风格的输出进行显示。

{phang}
{opt dnumerical} 指定在优化过程中使用数值技术计算梯度向量和海森矩阵，而不是使用解析公式。默认情况下，对于所有不使用 {cmd:intmethod(laplace)} 的积分方法，使用解析公式计算梯度和海森矩阵。

{phang}
{opt collinear}、{opt coeflegend}；见
     {helpb estimation options:[R] 估计选项}。


{marker remarks}{...}
{title:备注}

{pstd}
备注以以下标题呈现：

{phang2}{help meglm##remarks1:关于分布族的备注}{p_end}
{phang2}{help meglm##sampling:关于使用抽样权重的备注}{p_end}


{marker remarks1}{...}
{title:关于分布族的备注}

{pstd}
某些家庭和链接的组合非常常见，因此我们以 {cmd:meglm} 实现了这些组合作为独立命令。

        命令           {cmd:meglm} 等效
        {hline 60}
        {cmd:melogit}      {cmd:family(bernoulli) link(logit)}
        {cmd:meprobit}     {cmd:family(bernoulli) link(probit)}
        {cmd:mecloglog}    {cmd:family(bernoulli) link(cloglog)}
        {cmd:meologit}     {cmd:family(ordinal) link(logit)}
        {cmd:meoprobit}    {cmd:family(ordinal) link(probit)}
        {cmd:mepoisson}    {cmd:family(poisson) link(log)}
        {cmd:menbreg}      {cmd:family(nbinomial) link(log)}
        {hline 60}

{pstd}
当未指定家庭-链接组合时，{cmd:meglm} 默认使用高斯家庭和恒等链接。因此，{cmd:meglm} 可用于拟合线性混合效应模型；但是，对于这些模型，我们建议使用更专业的 {cmd:mixed}，该命令除了 {cmd:meglm} 的功能外，还允许针对残差误差结构建模；有关详细信息，见 {help mixed_zh:[ME] mixed}。


{marker sampling}{...}
包含帮助随机效应权重的备注


{marker examples}{...}
{title:示例}

    {hline}
{pstd}设置{p_end}
{phang2}{cmd:. webuse pig}{p_end}

{pstd}使用默认的高斯家庭和恒等链接的混合效应 GLM{p_end}
{phang2}{cmd:. meglm weight week || id:}{p_end}

    {hline}
{pstd}设置{p_end}
{phang2}{cmd:. webuse towerlondon}{p_end}

{pstd}带有伯努利家庭和默认逻辑链接的三层模型{p_end}
{phang2}{cmd:. meglm dtlm difficulty i.group || family: || subject:, family(bernoulli)}{p_end}

{pstd}与上面相同，但使用 probit 链接{p_end}
{phang2}{cmd:. meglm dtlm difficulty i.group || family: || subject:, family(bernoulli) link(probit)}{p_end}

    {hline}
{pstd}设置{p_end}
{phang2}{cmd:. use https://www.stata-press.com/data/mlmus3/schiz}{p_end}
{phang2}{cmd:. generate impso = imps}{p_end}
{phang2}{cmd:. recode impso -9=. 1/2.4=1 2.5/4.4=2 4.5/5.4=3 5.5/7=4}{p_end}

{pstd}带有排序家庭和默认逻辑链接的二层 GLM{p_end}
{phang2}{cmd:. meglm impso week treatment || id:, family(ordinal)}{p_end}

{pstd}与上面相同，但使用 probit 链接{p_end}
{phang2}{cmd:. meglm impso week treatment || id:, family(ordinal) link(probit)}{p_end}

{pstd}与上面相同，但使用 cloglog 链接{p_end}
{phang2}{cmd:. meglm impso week treatment || id:, family(ordinal) link(cloglog)}{p_end}

    {hline}
{pstd}设置{p_end}
{phang2}{cmd:. webuse melanoma, clear}{p_end}

{pstd}三层随机截距泊松模型{p_end}
{phang2}{cmd:. meglm deaths uv, exposure(expected) || nation: || region:, family(poisson)}{p_end}

{pstd}与上面相同，但为负二项式模型{p_end}
{phang2}{cmd:. meglm deaths uv, exposure(expected) || nation: || region:, family(nbinomial)}{p_end}

    {hline}
{pstd}设置{p_end}
{phang2}{cmd:. use https://www.stata-press.com/data/mlmus3/drvisits}{p_end}
{phang2}{cmd:. keep if numvisit > 0}{p_end}

{pstd}带有随机截距和随机系数的双层伽马模型{p_end}
{phang2}{cmd:. meglm numvisit reform age married loginc || id: reform, family(gamma)}{p_end}

    {hline}


{marker video}{...}
{title:视频示例}

{phang}
{browse "https://www.youtube.com/watch?v=SbwApki_BnI&feature=youtu.be":多级 GLM 的导览}


{marker results}{...}
{title:存储结果}

{pstd}
{cmd:meglm} 会将以下内容存储在 {cmd:e()} 中：

{synoptset 24 tabbed}{...}
{p2col 5 15 19 2: 标量}{p_end}
{synopt:{cmd:e(N)}}观察数{p_end}
{synopt:{cmd:e(k)}}参数数{p_end}
{synopt:{cmd:e(k_dv)}}因变量数{p_end}
{synopt:{cmd:e(k_eq)}}在 {cmd:e(b)} 中的方程数{p_end}
{synopt:{cmd:e(k_eq_model)}}整体模型测试中的方程数{p_end}
{synopt:{cmd:e(k_cat)}}类别数（具有排序结果）{p_end}
{synopt:{cmd:e(k_f)}}固定效应参数数{p_end}
{synopt:{cmd:e(k_r)}}随机效应参数数{p_end}
{synopt:{cmd:e(k_rs)}}方差数{p_end}
{synopt:{cmd:e(k_rc)}}协方差数{p_end}
{synopt:{cmd:e(df_m)}}模型自由度{p_end}
{synopt:{cmd:e(ll)}}对数似然{p_end}
{synopt:{cmd:e(chi2)}}卡方{p_end}
{synopt:{cmd:e(p)}}模型测试的 p 值{p_end}
{synopt:{cmd:e(ll_c)}}对数似然，比较模型{p_end}
{synopt:{cmd:e(chi2_c)}}卡方，比较测试{p_end}
{synopt:{cmd:e(df_c)}}比较测试的自由度{p_end}
{synopt:{cmd:e(p_c)}}比较测试的 p 值{p_end}
{synopt:{cmd:e(N_clust)}}聚类数{p_end}
{synopt:{cmd:e(rank)}}{cmd:e(V)} 的秩{p_end}
{synopt:{cmd:e(ic)}}迭代次数{p_end}
{synopt:{cmd:e(rc)}}返回码{p_end}
{synopt:{cmd:e(converged)}}{cmd:1} 如果收敛，{cmd:0} 否则{p_end}

{synoptset 24 tabbed}{...}
{p2col 5 15 19 2: 宏}{p_end}
{synopt:{cmd:e(cmd)}}{cmd:gsem}{p_end}
{synopt:{cmd:e(cmd2)}}{cmd:meglm}{p_end}
{synopt:{cmd:e(cmdline)}}输入的命令{p_end}
{synopt:{cmd:e(depvar)}}因变量的名称{p_end}
{synopt:{cmd:e(wtype)}}权重类型{p_end}
{synopt:{cmd:e(wexp)}}权重表达式（第一层权重）{p_end}
{synopt:{cmd:e(fweight}{it:k}{cmd:)}}{cmd:fweight} 变量在第 {it:k} 高级别，如果指定{p_end}
{synopt:{cmd:e(iweight}{it:k}{cmd:)}}{cmd:iweight} 变量在第 {it:k} 高级别，如果指定{p_end}
{synopt:{cmd:e(pweight}{it:k}{cmd:)}}{cmd:pweight} 变量在第 {it:k} 高级别，如果指定{p_end}
{synopt:{cmd:e(covariates)}}协变量列表{p_end}
{synopt:{cmd:e(ivars)}}分组变量{p_end}
{synopt:{cmd:e(model)}}边际模型的名称{p_end}
{synopt:{cmd:e(title)}}估计输出中的标题{p_end}
{synopt:{cmd:e(link)}}链接{p_end}
{synopt:{cmd:e(family)}}家庭{p_end}
{synopt:{cmd:e(clustvar)}}聚类变量的名称{p_end}
{synopt:{cmd:e(offset)}}偏移量{p_end}
{synopt:{cmd:e(binomial)}}二项式试验数（适用于二项式模型）{p_end}
{synopt:{cmd:e(dispersion)}}{cmd:mean} 或 {cmd:constant}（适用于负二项式模型）{p_end}
{synopt:{cmd:e(intmethod)}}积分方法{p_end}
{synopt:{cmd:e(n_quad)}}积分点数{p_end}
{synopt:{cmd:e(chi2type)}}{cmd:Wald}；模型卡方类型{p_end}
{synopt:{cmd:e(vce)}}{it:vcetype} 在 {cmd:vce()} 中指定{p_end}
{synopt:{cmd:e(vcetype)}}用于标记标准误的标题{p_end}
{synopt:{cmd:e(opt)}}优化类型{p_end}
{synopt:{cmd:e(which)}}{cmd:max} 或 {cmd:min}；优化器是进行最大化还是最小化{p_end}
{synopt:{cmd:e(ml_method)}}{cmd:ml} 方法的类型{p_end}
{synopt:{cmd:e(user)}}似然评估程序的名称{p_end}
{synopt:{cmd:e(technique)}}最大化技术{p_end}
{synopt:{cmd:e(datasignature)}}校验和{p_end}
{synopt:{cmd:e(datasignaturevars)}}用于计算校验和的变量{p_end}
{synopt:{cmd:e(properties)}}{cmd:b V}{p_end}
{synopt:{cmd:e(estat_cmd)}}用于实现 {cmd:estat} 的程序{p_end}
{synopt:{cmd:e(predict)}}用于实现 {cmd:predict} 的程序{p_end}
{synopt:{cmd:e(marginsnotok)}}不允许 {cmd:margins} 的预测{p_end}
{synopt:{cmd:e(marginswtype)}}{cmd:margins} 的权重类型{p_end}
{synopt:{cmd:e(marginswexp)}}{cmd:margins} 的权重表达式{p_end}
{synopt:{cmd:e(asbalanced)}}因子变量 {cmd:fvset} 为 {cmd:asbalanced}{p_end}
{synopt:{cmd:e(asobserved)}}因子变量 {cmd:fvset} 为 {cmd:asobserved}{p_end}

{synoptset 24 tabbed}{...}
{p2col 5 15 19 2: 矩阵}{p_end}
{synopt:{cmd:e(b)}}系数向量{p_end}
{synopt:{cmd:e(Cns)}}约束矩阵{p_end}
{synopt:{cmd:e(cat)}}类别值（具有排序结果）{p_end}
{synopt:{cmd:e(ilog)}}迭代日志（最多 20 次迭代）{p_end}
{synopt:{cmd:e(gradient)}}梯度向量{p_end}
{synopt:{cmd:e(N_g)}}组计数{p_end}
{synopt:{cmd:e(g_min)}}组大小最小值{p_end}
{synopt:{cmd:e(g_avg)}}组大小平均值{p_end}
{synopt:{cmd:e(g_max)}}组大小最大值{p_end}
{synopt:{cmd:e(V)}}估计值的方差-协方差矩阵{p_end}
{synopt:{cmd:e(V_modelbased)}}基于模型的方差{p_end}

{synoptset 24 tabbed}{...}
{p2col 5 15 19 2: 函数}{p_end}
{synopt:{cmd:e(sample)}}标记估计样本{p_end}
{p2colreset}{...}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <meglm.sthlp>}