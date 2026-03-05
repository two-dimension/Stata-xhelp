{smcl}
{* *! version 1.1.16  17may2019}{...}
{viewerdialog bayesmh "dialog bayesmh"}{...}
{vieweralsosee "[BAYES] bayesmh" "mansection BAYES bayesmh"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[BAYES] Bayesian postestimation" "help bayesian postestimation"}{...}
{vieweralsosee "[BAYES] bayesmh evaluators" "help bayesmh evaluators"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[BAYES] bayes" "help bayes_zh"}{...}
{vieweralsosee "[BAYES] Bayesian commands" "help bayesian commands"}{...}
{vieweralsosee "[BAYES] Bayesian estimation" "help bayesian estimation"}{...}
{vieweralsosee "[BAYES] Glossary" "help bayes_glossary_zh"}{...}
{viewerjumpto "Syntax" "bayesmh_zh##syntax"}{...}
{viewerjumpto "Menu" "bayesmh_zh##menu"}{...}
{viewerjumpto "Description" "bayesmh_zh##description"}{...}
{viewerjumpto "Links to PDF documentation" "bayesmh_zh##linkspdf"}{...}
{viewerjumpto "Options" "bayesmh_zh##options"}{...}
{viewerjumpto "Remarks" "bayesmh_zh##remarks"}{...}
{viewerjumpto "Examples" "bayesmh_zh##examples"}{...}
{viewerjumpto "Video examples" "bayesmh_zh##video"}{...}
{viewerjumpto "Stored results" "bayesmh_zh##results"}
{help bayesmh:English Version}
{hline}{...}
{p2colset 1 20 22 2}{...}
{p2col:{bf:[BAYES] bayesmh} {hline 2}}使用 Metropolis-Hastings 算法的贝叶斯回归{p_end}
{p2col:}({mansection BAYES bayesmh:查看完整 PDF 手册条目}){p_end}
{p2colreset}{...}


{marker syntax}{...}
{title:语法}

{phang}
{bf:单变量线性模型}
    
{p 8 16 2}
{opt bayesmh} {it:{help depvar:depvar}} [{indepvars}] 
   {ifin}
   [{it:{help bayesmh##weight:weight}}]{cmd:,} 
   {opt likel:ihood}{cmd:(}{it:{help bayesmh##modelspec:modelspec}}{cmd:)}
   {opt prior}{cmd:(}{it:{help bayesmh##priorspec:priorspec}}{cmd:)}
   [{opth re:ffects(varname)} {it:{help bayesmh##options_table:options}}]


{phang}
{bf:多变量线性模型}

{p 6 11 2}
具有共同自变量的多变量正态线性回归
    
{p 8 16 2}
{opt bayesmh} 
   {it:{help depvar:depvars}} {cmd:=} [{indepvars}]
   {ifin}
   [{it:{help bayesmh##weight:weight}}]{cmd:,} 
   {opt likel:ihood}{cmd:(mvnormal(}...{cmd:))}
   {opt prior}{cmd:(}{it:{help bayesmh##priorspec:priorspec}}{cmd:)}
   [{it:{help bayesmh##options_table:options}}]

{p 6 11 2}
具有特定结果自变量的多变量正态回归 
    
{p 8 11 2}
{opt bayesmh} 
   {cmd:(}[{it:eqname1}{cmd::}]{it:{help depvar:depvar1}} [{it:{help indepvars:indepvars1}}]{cmd:)} 
{p_end}
{p 16 16 0}
   {cmd:(}[{it:eqname2}{cmd::}]{it:{help depvar:depvar2}} [{it:{help indepvars:indepvars2}}]{cmd:)}
   [...]
   {ifin}
   [{it:{help bayesmh##weight:weight}}]{cmd:,} 
{p_end}
{p 16 16 0}
   {opt likel:ihood}{cmd:(mvnormal(}...{cmd:))}
   {opt prior}{cmd:(}{it:{help bayesmh##priorspec:priorspec}}{cmd:)}
   [{it:{help bayesmh##options_table:options}}]


{phang}
{bf:多方程线性模型}

{p 8 11 2}
{opt bayesmh} 
   {cmd:(}{it:{help bayesmh##eqspec:eqspec}}{cmd:)}
   [{cmd:(}{it:{help bayesmh##eqspec:eqspec}}{cmd:)}] 
   [...]
   {ifin} 
   [{it:{help bayesmh##weight:weight}}]{cmd:,}
{p_end}
{p 16 16 0}
   {opt prior}{cmd:(}{it:{help bayesmh##priorspec:priorspec}}{cmd:)}
   [{it:{help bayesmh##options_table:options}}]


{phang}
{bf:非线性模型}

{p 6 11 2}
单变量非线性回归

{p 8 11 2}
{opt bayesmh} 
{it:{help depvar:depvar}} {cmd:=} {cmd:(}{it:{help bayesmh##subexpr:subexpr}}{cmd:)}
   {ifin}
   [{it:{help bayesmh##weight:weight}}]{cmd:,} 
{p_end}
{p 16 11 0}
   {opt likel:ihood}{cmd:(}{it:{help bayesmh##modelspec:modelspec}}{cmd:)}
   {opt prior}{cmd:(}{it:{help bayesmh##priorspec:priorspec}} 
   [{it:{help bayesmh##options_table:options}}]
{p_end}

{p 6 11 2}
多变量正态非线性回归

{p 8 11 2}
{opt bayesmh} 
   {cmd:(}{it:{help depvar:depvar1}} {cmd:=} {cmd:(}{it:{help bayesmh##subexpr:subexpr1}}{cmd:)}
{p_end}
{p 16 11 0}
   {cmd:(}{it:{help depvar:depvar2}} {cmd:=} {cmd:(}{it:{help bayesmh##subexpr:subexpr2}}{cmd:)}
   [...]
   {ifin}
   [{it:{help bayesmh##weight:weight}}]{cmd:,} 
{p_end}
{p 16 11 0}
   {opt likel:ihood}{cmd:(mvnormal(}...{cmd:))}
   {opt prior}{cmd:(}{it:{help bayesmh##priorspec:priorspec}} 
   [{it:{help bayesmh##options_table:options}}]
{p_end}


{phang}
{bf:概率分布}

{p 6 11 2}
单变量分布
    
{p 8 16 2}
{opt bayesmh} {it:{help depvar:depvar}} 
   {ifin}
   [{it:{help bayesmh##weight:weight}}]{cmd:,} 
   {opt likel:ihood}{cmd:(}{it:{help bayesmh##distribution:distribution}}{cmd:)}
   {opt prior}{cmd:(}{it:{help bayesmh##priorspec:priorspec}}{cmd:)}
   [{it:{help bayesmh##options_table:options}}]

{p 6 11 2}
多方程分布规格

{p 8 11 2}
{opt bayesmh} 
   {cmd:(}{it:{help bayesmh##deqspec:deqspec}}{cmd:)}
   [{cmd:(}{it:{help bayesmh##deqspec:deqspec}}{cmd:)}] 
   [...]
   {ifin} 
   [{it:{help bayesmh##weight:weight}}]{cmd:,}
{p_end}
{p 16 16 0}
   {opt prior}{cmd:(}{it:{help bayesmh##priorspec:priorspec}}{cmd:)}
   [{it:{help bayesmh##options_table:options}}]


{marker eqspec}{...}
{pstd}
{it:eqspec} 的语法是 

{phang2}
   {it:{help bayesmh##varspec:varspec}}   
   {ifin} [{it:{help bayesmh##weight:weight}}]{cmd:,}
   {opt likel:ihood}{cmd:(}{it:{help bayesmh##modelspec:modelspec}}{cmd:)}
   [{opt nocons:tant}] 
{p_end}

{marker varspec}{...}
{phang2}
{it:varspec} 的语法是以下之一：

            对于单一结果

{p 16 18 2}
[{it:eqname}{cmd::}]{it:{help depvar:depvar}} [{indepvars}]
{p_end}

            对于具有共同自变量的多重结果

{p 16 18 2}
{it:{help depvar:depvars}} {cmd:=} [{indepvars}]
{p_end}

            对于具有特定结果自变量的多重结果

{p 16 18 2}
{cmd:(}[{it:eqname1}{cmd::}]{it:{help depvar:depvar1}} [{it:{help indepvars:indepvars1}}]{cmd:)} 
{cmd:(}[{it:eqname2}{cmd::}]{it:{help depvar:depvar2}} [{it:{help indepvars:indepvars2}}]{cmd:)} [...] 
{p_end}

{marker deqspec}{...}
{pstd}
{it:deqspec} 的语法是 

{phang2}
   [{it:eqname}{cmd::}] {it:{help depvar:depvar}}   
   {ifin} [{it:{help bayesmh##weight:weight}}]{cmd:,}
   {opt likel:ihood}{cmd:(}{it:{help bayesmh##distribution:distribution}}{cmd:)}
{p_end}

{marker subexpr}{...}
{pstd}
{it:subexpr}、{it:subexpr1}、{it:subexpr2}，等等是可替换表达式；见
{help bayesmh##subexp:{it:可替换表达式}} 获取详细信息。

{marker modelspec}{...}
{phang}
{it:modelspec} 的语法是

{p 16 18 2}
{it:{help bayesmh##model:model}}
[{cmd:,} {it:{help bayesmh##modelopts:modelopts}}]


{synoptset 22 tabbed}{...}
{marker model}{...}
{synopthdr:model}
{synoptline}
{syntab:模型}
{synopt :{opt norm:al(var)}}正态回归，方差 {it:var}{p_end}
{synopt :{opt t(sigma2, df)}}t回归，平方规模 {it:sigma2} 和自由度 {it:df}{p_end}
{synopt :{opt lognorm:al(var)}}对数正态回归，方差 {it:var}{p_end}
{synopt :{opt lnorm:al(var)}}{cmd:lognormal()} 的同义词{p_end}
{synopt :{opt exp:onential}}指数回归{p_end}
{synopt :{opt mvn:ormal(Sigma)}}具有协方差矩阵 {it:Sigma} 的多元正态回归{p_end}

{synopt :{opt probit}}probit 回归{p_end}
{synopt :{opt logit}}logistic 回归{p_end}
{synopt :{opt logis:tic}}logistic 回归；{cmd:logit} 的同义词{p_end}
{synopt :{opt binom:ial(n)}}具有 logit 链接和试验次数 {it:n} 的二项回归{p_end}
{synopt :{opt binlogit(n)}}{cmd:binomial()} 的同义词{p_end}
{synopt :{opt oprobit}}有序 probit 回归{p_end}
{synopt :{opt ologit}}有序 logistic 回归{p_end}
{synopt :{opt pois:son}}泊松回归{p_end}

{synopt :{opt llf(subexpr)}}可替换表达式的观察级对数似然函数{p_end}
{synoptline}
{p2colreset}{...}
{p 4 6 2}
分布参数是一个数值，用于标量参数如 {it:var}；
一个变量名 {varname}（矩阵参数除外）；一个矩阵，用于矩阵参数如 {it:Sigma}；一个模型参数，
{it:{help bayesmh##paramspec:paramspec}}；一个表达式，{it:{help exp_zh:expr}}；
或一个可替换表达式，{it:{help bayesmh##subexpr:subexpr}}。
见 {mansection BAYES bayesmhRemarksandexamplesSpecifyingargumentsoflikelihoodmodelsandpriordistributions:{it:指定似然模型和先验分布的参数}}。{p_end}

{synoptset 22 tabbed}{...}
{marker modelopts}{...}
{synopthdr:modelopts}
{synoptline}
{syntab:模型}
{synopt :{opth off:set(varname:varname_o)}}将 {it:varname_o} 包括在模型中，系数被限制为 1；在 {cmd:normal()} 和
{cmd:mvnormal()} 中不允许{p_end}
{synopt :{opth exp:osure(varname:varname_e)}}在模型中包含 ln({it:varname_e})，系数被限制为 1；仅在 {cmd:poisson} 中允许{p_end}
{synoptline}
{p2colreset}{...}

{synoptset 22 tabbed}{...}
{marker distribution}{...}
{synopthdr:distribution}
{synoptline}
{syntab:模型}
{synopt :{opt dexp:onential(beta)}}带有尺度参数 {it:beta} 的指数分布{p_end}
{synopt :{opt dbern:oulli(p)}}带有成功概率 {it:p} 的伯努利分布{p_end}
{synopt :{opt dbinom:ial(p,n)}}带有成功概率 {it:p} 和试验次数 {it:n} 的二项分布{p_end}
{synopt :{opt dpois:son(mu)}}带有均值 {it:mu} 的泊松分布{p_end}
{synoptline}
{p2colreset}{...}
{p 4 6 2}
分布参数是模型参数，
{it:{help bayesmh##paramspec:paramspec}}，或可替换表达式，
{it:{help bayesmh##subexpr:subexpr}}，包含模型参数。一个 {it:n} 参数可以是一个数值；一个表达式，{it:{help exp_zh:expr}}；或者一个
变量名，{varname}。
见 {mansection BAYES bayesmhRemarksandexamplesSpecifyingargumentsoflikelihoodmodelsandpriordistributions:{it:指定似然模型和先验分布的参数}}。{p_end}

{marker priorspec}{...}
{phang}
{it:priorspec} 的语法是 

{p 8 11 2}
{it:{help bayesmh##paramref:paramref}}{cmd:,}
{it:{help bayesmh##priordist:priordist}}

{marker paramref}{...}
{phang}
其中最简单的 {it:paramref} 指定为 

{p 8 11 2}
{it:{help bayesmh##paramspec:paramspec}} [{it:paramspec}] [...]]

{phang}
另请见 {help bayesmh##refer:{it:参考模型参数}}获取其他规格。

{marker paramspec}{...}
{phang}
{it:paramspec} 的语法是 

{p 8 11 2}
{cmd:{c -(}}[{it:eqname}{cmd::}]{it:param}[, {opt m:atrix}]{cmd:{c )-}}

{phang}
其中参数标签 {it:eqname} 和参数名 {it:param} 是有效的 Stata 名称。  
模型参数可以是标量，如 {cmd:{c -(}}{cmd:var}{cmd:{c )-}}、 {cmd:{c -(}}{cmd:mean}{cmd:{c )-}}、 {cmd:{c -(}}{cmd:scale:beta}{cmd:{c )-}}， 
或矩阵，如 {cmd:{c -(}}{cmd:Sigma, matrix}{cmd:{c )-}} 和 
{cmd:{c -(}}{cmd:Scale:V, matrix}{cmd:{c )-}}。  对于标量参数，您可以使用 {cmd:{c -(}}{it:param}{cmd:=}{it:#}{cmd:{c )-}} 指定初始
值。 例如，您可以指定 {cmd:{c -(}}{cmd:var=1}{cmd:{c )-}}、{cmd:{c -(}mean=1.267{c )-}} 或 {cmd: {c -(}shape:alpha=3{c )-}}。

{synoptset 28 tabbed}{...}
{marker priordist}{...}
{synopthdr:priordist}
{synoptline}
{syntab:模型}
{synopt :{opt norm:al(mu,var)}}均值为 {it:mu} 和方差为 {it:var} 的正态分布{p_end}
{synopt :{opt t(mu,sigma2,df)}}位置-尺度 {it:t}，均值为 {it:mu}，平方尺度 {it:sigma2} 和自由度 {it:df}{p_end}
{synopt :{opt lognorm:al(mu,var)}}均值为 {it:mu} 和方差为 {it:var} 的对数正态分布{p_end}
{synopt :{opt lnorm:al(mu,var)}}{cmd:lognormal()} 的同义词{p_end}
{synopt :{opt unif:orm(a,b)}}在 (a,b) 上均匀分布{p_end}
{synopt :{opt gamma(alpha,beta)}}形状为 {it:alpha} 和尺度为 {it:beta} 的伽马分布{p_end}
{synopt :{opt igamma(alpha,beta)}}形状为 {it:alpha} 和尺度 {it:beta} 的反伽马分布{p_end}
{synopt :{opt exp:onential(beta)}}均值为 {it:beta} 的指数分布{p_end}
{synopt :{opt beta(a,b)}}形状参数为 {it:a} 和 {it:b} 的贝塔分布{p_end}
{synopt :{opt laplace(mu,beta)}}均值为 {it:mu} 和尺度 {it:beta} 的拉普拉斯分布{p_end}
{synopt :{opt cauchy(loc,beta)}}位置为 {it:loc} 和尺度 {it:beta} 的柯西分布{p_end}
{synopt :{opt chi2(df)}}自由度为 {it:df} 的中心卡方分布{p_end}
{synopt :{opt pareto(alpha,beta)}}形状为 {it:alpha} 和尺度为 {it:beta} 的帕累托分布{p_end}
{synopt :{opt jeff:reys}}正态分布方差的 Jeffreys 先验{p_end}

{synopt :{opt mvn:ormal(d,mean,Sigma)}}维度为 {it:d} 的多元正态分布，均值向量为 {it:mean}，协方差矩阵为 {it:Sigma}； {it:mean} 可以是
矩阵名或以逗号分隔的 {it:d} 个均值的列表： {it:mu1}{cmd:,}
{it:mu2}{cmd:,} ...{cmd:,} {it:mud}{p_end}
{synopt :{opt mvnormal0(d,Sigma)}}维度为 {it:d} 的多元正态分布，均值向量为零，协方差矩阵为 {it:Sigma}{p_end}
{synopt :{opt mvn0(d,Sigma)}}{cmd:mvnormal0()} 的同义词{p_end}
{synopt :{cmd:zellnersg(}{it:d}{cmd:,}{it:g}{cmd:,}{it:mean}{cmd:,{c -(}}{it:var}{cmd:{c )-})}}维度为 {it:d} 的 Zellner 的 g 先验，具有 {it:g} 自由度、均值向量 {it:mean} 和方差参数 {cmd:{c -(}}{it:var}{cmd:{c )-}}； {it:mean} 可以是
矩阵名或以逗号分隔的 {it:d} 个均值的列表： {it:mu1}{cmd:,}
{it:mu2}{cmd:,} ...{cmd:,} {it:mud}{p_end}
{synopt :{cmd:zellnersg0(}{it:d}{cmd:,}{it:g}{cmd:,{c -(}}{it:var}{cmd:{c )-})}}维度为 {it:d} 的 Zellner 的 g 先验，具有 {it:g} 自由度、均值向量为零，方差参数 {cmd:{c -(}}{it:var}{cmd:{c )-}}{p_end}
{synopt :{opt dirichlet(a_1,a_2,...,a_d)}}维度为 {it:d} 的 Dirichlet
（多元贝塔）分布，具有形状参数 {it:a_1}、{it:a_2}，...，{it:a_d}{p_end}
{synopt :{opt wish:art(d,df,V)}}维度为 {it:d} 的 Wishart 分布，自由度 {it:df} 和规模矩阵 {it:V}{p_end}
{synopt :{opt iwish:art(d,df,V)}}维度为 {it:d} 的反 Wishart 分布，自由度 {it:df} 和规模矩阵 {it:V}{p_end}
{synopt :{opt jeff:reys(d)}}维度为 {it:d} 的多元正态分布的协方差的 Jeffreys 先验{p_end}

{synopt :{opt bern:oulli(p)}}伯努利分布，成功概率为 {it:p}{p_end}
{synopt :{opt geometric(p)}}几何分布，表示在第一次成功之前的失败次数，成功概率为 {it:p}{p_end}
{synopt :{opt index(p1,...,pk)}}离散指数 1, 2, ..., {it:k} 的概率 {it:p1}, {it:p2}, ..., {it:pk}{p_end}
{synopt :{opt pois:son(mu)}}泊松分布，均值为 {it:mu}{p_end}

{marker modelspec_table}{...}
{synopt :{opt flat}}平坦先验；等于 {cmd:density(1)} 或
{cmd:logdensity(0)}{p_end}
{synopt :{opt dens:ity}{cmd:(}{it:{help bayesmh##generic_f:f}}{cmd:)}}通用密度 {it:f}{p_end}
{synopt :{opt logdens:ity}{cmd:(}{it:{help bayesmh##generic_logf:logf}}{cmd:)}}通用对数密度 {it:logf}{p_end}
{synoptset 27 tabbed}{...}
{synoptline}
{phang}
维度 {it:d} 是一个正 {it:#}.{p_end}
{phang}
分布参数是一个数值，用于标量参数如 {it:var}、{it:alpha}、{it:beta}；一个 Stata 矩阵，用于矩阵参数如 {it:Sigma}
和 {it:V}；一个模型参数，{it:{help bayesmh##paramspec:paramspec}}；一个表达式，{it:{help exp_zh:expr}}；或一个可替换表达式
{it:{help bayesmh##subexpr:subexpr}}。
见 {mansection BAYES bayesmhRemarksandexamplesSpecifyingargumentsoflikelihoodmodelsandpriordistributions:{it:指定似然模型和先验分布的参数}}。{p_end}
{phang}
{marker generic_f}
{it:f} 是非负数 {it:#}；一个表达式
{it:{help exp_zh:expr}}；或可替换表达式，
{it:{help bayesmh##subexpr:subexpr}}。{p_end}
{phang}
{marker generic_logf}
{it:logf} 是一个数值 {it:#}；一个表达式 {it:{help exp_zh:expr}}；或一个
可替换表达式， {it:{help bayesmh##subexpr:subexpr}}。{p_end}
{phang}
当 {cmd:mvnormal()} 或 {cmd:mvnormal0()} 应用于 
{it:{help bayesmh##paramref:paramref}} 和 {it:n} 参数时（{it:n}!={it:d}）， 
{it:paramref} 被重塑为一个具有 {it:d} 列的矩阵，其 
行被视为来自指定的 {cmd:mvnormal()} 
分布的独立样本。如果这种重塑不可能，则会发出错误。
有关此功能的应用，请参见 {mansection BAYES bayesmhRemarksandexamplesex25:example 25}。{p_end}

{synoptset 30 tabbed}{...}
{marker options_table}{...}
{synopthdr}
{synoptline}
{syntab :模型}
{synopt :{opt nocons:tant}}抑制常数项；在有序模型、非线性模型和概率分布中不允许{p_end}
{p2coldent:* {opt likel:ihood}{cmd:(}{it:{help bayesmh##lspec:lspec}}{cmd:)}}似然模型的分布{p_end}
{p2coldent:* {opt prior}{cmd:(}{it:{help bayesmh##priorspec:priorspec}}{cmd:)}}模型参数的先验；该选项可以重复{p_end}
{synopt :{opt dryrun}}显示模型概要而不进行估计{p_end}

{syntab :模型 2}
{synopt :{opt redef:ine}{cmd:(}{it:label}{cmd::i.}{it:{help varname_zh:varname}}{cmd:)}}指定随机效应线性形式；该选项可以重复{p_end}
{synopt :{opt xbdef:ine}{cmd:(}{it:label}{cmd::}{it:{help varlist_zh:varlist}}{cmd:)}}指定线性形式{p_end}

{marker options_simulation}{...}
{syntab:模拟}
包括帮助 bayesmh_simopts

{marker options_blocking}{...}
{syntab:阻塞}
包括帮助 bayesmh_blockopts

{marker options_initialization}{...}
{syntab:初始化}
包括帮助 bayesmh_initopts

{marker options_adaptation}{...}
{syntab:适应}
包括帮助 bayesmh_adaptopts

{marker options_reporting}{...}
{syntab:报告}
包括帮助 bayesmh_reportopts

{marker options_advanced}{...}
{syntab:高级}
包括帮助 bayesmh_advancedopts
{synoptline}
{p2colreset}{...}
{p 4 6 2}* 选项 {cmd:likelihood()} 和 {cmd:prior()} 是必需的。
{cmd:prior()} 在所有模型参数中必须指定。{p_end}
{p 4 6 2}选项 {cmd:prior()}、 {cmd:redefine()} 和 {cmd:block()} 可以重复。{p_end}
{p 4 6 2}{it:indepvars} 和 {it:{help bayesmh##paramref:paramref}} 可包含因子变量；见 {help fvvarlist_zh}.{p_end}
{p 4 6 2}对于多方程规格，局部 {it:{help if_zh}} 在方程中指定时将与命令中指定的全局 {it:if} 一起应用。{p_end}
{marker weight}{...}
{p 4 6 2}只允许 {cmd:fweight}；见 {help weight_zh}.{p_end}
{p 4 6 2}在多方程规格中，局部权重或（在方程中指定的权重）将覆盖全局权重（随着命令指定的权重）。{p_end}
{p 4 6 2}见 {manhelp bayesian_postestimation BAYES:贝叶斯后验估计} 获取估计后可用的功能。
{p_end}

{synoptset 30}{...}
{marker blockopts}{...}
{synopthdr: blockopts}
{synoptline}
{synopt :{opt gibbs}}请求 Gibbs 采样；仅适用于某些选定模型，并且不允许与 {cmd:scale()}、 {cmd:covariance()} 或 {cmd:adaptation()}一起使用{p_end}
{synopt :{opt split}}请求将块中的所有参数视为单独的块{p_end}
{synopt :{opt re:ffects}}请求将块中的所有参数视为随机效应参数{p_end}
{synopt :{opt sc:ale(#)}}当前块的规模因子的初始乘数；默认值为 {cmd:scale(2.38)}；不允许与 {cmd:gibbs} 一起使用{p_end}
{synopt :{opt cov:ariance(cov)}}当前块的初始提议协方差；默认值为单位矩阵；不允许与 {cmd:gibbs} 一起使用{p_end}
{synopt :{opth adapt:ation(bayesmh##adaptopts:adaptopts)}}控制当前块的自适应 MCMC 程序；不允许与 {cmd:gibbs} 一起使用{p_end}
{synoptline}
{p2colreset}{...}
{p 4 6 2}只有 {cmd:tarate()} 和 {cmd:tolerance()} 可以在 {cmd:adaptation()} 选项中指定。{p_end}

{synoptset 30 tabbed}{...}
{marker adaptopts}{...}
{synopthdr: adaptopts}
{synoptline}
{synopt :{opt every(#)}}适应间隔；默认值为 {cmd:every(100)}{p_end}
{synopt :{opt maxiter(#)}}最大适应循环次数；默认值为 {cmd:maxiter(25)} 或 max{c -(}25,{cmd:floor(burnin()/every())}{c )-} 当这些选项的默认值被修改时{p_end}
{synopt :{opt miniter(#)}}最少的适应循环次数；默认值为 {cmd:miniter(5)}{p_end}
{synopt :{opt alpha(#)}}控制接受率 (AR) 的参数；默认值为 {cmd:alpha(0.75)}{p_end}
{synopt :{opt beta(#)}}控制建议协方差的参数；默认值为 {cmd:beta(0.8)}{p_end}
{synopt :{opt gamma(#)}}控制适应率的参数；默认值为 {cmd:gamma(0)}{p_end}
{p2coldent :* {opt tarate(#)}}目标接受率 (TAR)；默认值为特定参数{p_end}
{p2coldent :* {opt tol:erance(#)}}AR 的容忍度；默认值为 {cmd:tolerance(0.01)}{p_end}
{synoptset 27 tabbed}{...}
{synoptline}
{p2colreset}{...}
{p 4 6 2}
* 仅允许使用加号选项在 {cmd:block()} 中指定的 {cmd:adaptation()} 选项
{p_end}


{marker menu}{...}
{title:菜单}

{phang}
{bf:统计 > 贝叶斯分析 > 一般估计和回归}


{marker description}{...}
{title:描述}

{pstd}
{cmd:bayesmh} 使用自适应 Metropolis-Hastings (MH) 算法拟合多种贝叶斯模型。它提供各种似然模型和
先验分布供您选择。似然模型包括单变量正态线性和非线性回归、多变量正态线性
和非线性回归、广义线性模型如 logit 和泊松回归，以及多方程线性模型。先验分布
包括均匀、Jeffreys、正态、伽马、多元正态和 Wishart 等连续分布，以及伯努利和泊松等离散分布。您也可以自己编程
贝叶斯模型；见 {manhelp bayesmh_evaluators BAYES:bayesmh 评估器}。

{pstd}
另请参见 {manhelp bayesian_estimation BAYES:贝叶斯估计} 获取更便捷的贝叶斯回归模型列表
而使用 {opt bayes} 前缀（{manhelp bayes BAYES}）。


{marker linkspdf}{...}
{title:PDF 文档链接}

        {mansection BAYES bayesmhQuickstart:快速开始}

        {mansection BAYES bayesmhRemarksandexamples:备注和示例}

        {mansection BAYES bayesmhMethodsandformulas:方法和公式}

{pstd}
以上部分不包含在此帮助文件中。


{marker options}{...}
{title:选项}

{dlgtab:模型}

{phang}
{opt noconstant} 抑制回归模型中的常数项（截距）。默认情况下， {cmd:bayesmh} 会自动在所有回归模型中包含一个模型参数
{cmd:{c -(}}{it:depname}{cmd::_cons{c )-}}，除非是有序模型和非线性模型。排除常数项在存在因子变量时可能会很有用，因为基准水平会吸收线性组合中的常数项。

{phang}
{marker dist_spec}
{marker lspec}
{opt likelihood(lspec)} 指定数据的分布。此选项指定贝叶斯模型的似然部分。该选项是必需的。 {it:lspec} 是以下之一 {it:{help bayesmh##modelspec:modelspec}} 或
{it:{help bayesmh##distribution:distribution}}。

{pmore}
{it:{help bayesmh##modelspec:modelspec}} 指定回归模型的支持的似然分布之一。 这些分布的一个位置参数会自动参数化为指定自变量的线性组合，因此不需要单独指定。其他参数可以作为用逗号分隔的参数传递。 每个参数可以是实数 ({it:#})、变量名（除矩阵参数外）、预定义矩阵、模型参数（{cmd:{c -(} {c )-}} 中指定）、Stata 表达式或包含模型参数的可替换表达式；见
{mansection BAYES bayesmhRemarksandexamplesDeclaringmodelparameters:{it:声明模型参数}} 和
{mansection BAYES bayesmhRemarksandexamplesSpecifyingargumentsoflikelihoodmodelsandpriordistributions:{it:指定似然模型和先验分布的参数}}
在 {bf:[BAYES] bayesmh} 中。

{pmore}
{it:{help bayesmh##distribution:distribution}} 指定支持的分布之一，以建模因变量。 分布参数
必须在 {cmd:{c -(} {c )-}} 中指定的模型参数或包含模型参数的可替换表达式；见
{mansection BAYES bayesmhRemarksandexamplesDeclaringmodelparameters:{it:声明模型参数}} 和
{mansection BAYES bayesmhRemarksandexamplesSpecifyingargumentsoflikelihoodmodelsandpriordistributions:{it:指定似然模型和先验分布的参数}}
在 {bf:[BAYES] bayesmh} 中。
二项分布中的试验次数 {it:n} 可以是实数 ({it:#})、Stata 表达式或变量名。有关直接建模结果分布的示例，请参见
{mansection BAYES bayesmhRemarksandexamplesBeta-binomialmodel:{it:Beta-二项模型}}
在 {bf:[BAYES] bayesmh} 中。

{pmore}
对于某些回归 {help bayesmh##model:models}，选项 {cmd:likelihood()} 提供子选项 {it:subopts} 在 {opt likelihood(..., subopts)}。
{it:subopts} 是 {cmd:offset()} 和 {cmd:exposure()}。

{marker offset}{...}
{phang2}
{opth offset:(varname:varname_o)} 指定在回归模型中包含 {it:varname_o}，系数被限制为 1。
此选项适用于 {cmd:probit}、{cmd:logit}、{cmd:binomial()}、
{cmd:binlogit()}、{cmd:oprobit}、{cmd:ologit} 和 {cmd:poisson}。

{marker exposure}{...}
{phang2}
{opth exposure:(varname:varname_e)} 指定一个变量，反映在每个观察中观察到的 {depvar} 事件的暴露量； 
在对数链接函数中引入 ln({it:varname_e})，系数被限制为 1。此选项适用于 {cmd:poisson}。

{* 类似于 bayesmh_prioroptsdes.ihlp}{...}
{phang}
{opt prior(priorspec)} 指定模型参数的先验分布。此选项是必需的且可以重复。必须为每个模型参数指定一个先验。模型参数可以是标量或矩阵，但两者类型不能在一个先验声明中组合。如果多个标量参数分配给单个单变量先验，则它们被视为独立，并且指定的先验用于每个参数。您可以将维度为 {it:d} 的多元先验分配给 {it:d} 个标量参数。
另见
{help bayesmh##refer:{it:参考模型参数}} 以及
{mansection BAYES bayesmhRemarksandexamplesSpecifyingargumentsoflikelihoodmodelsandpriordistributions:{it:指定似然模型和先验分布的参数}}
在 {bf:[BAYES] bayesmh} 中。

{pstd}
所有 {cmd:likelihood()} 和 {cmd:prior()} 组合是允许的，但不保证对应于适当的后验分布。 您需要仔细考虑所构建的模型，并彻底评估其收敛性；见
{mansection BAYES bayesmhRemarksandexamplesConvergenceofMCMC:{it:MCMC 的收敛性}} 在 {bf:[BAYES] bayesmh} 中。

{phang}
{opt dryrun} 指定显示模型的总结而不实际拟合模型。 建议在拟合模型之前检查模型的规格时使用此选项。模型概要报告有关似然模型和所有模型参数的先验的信息。

{dlgtab:模型 2}

{phang}
{opth reffects(varname)} 指定随机效应变量，即识别随机效应的组结构的变量，用于单变量线性模型。此选项对于拟合二级随机截距模型非常有用。
随机效应变量被视为没有基级的因子变量。因此，您可以使用常规的因子变量符号引用与 {it:varname} 相关的随机效应或随机效应参数。
例如，您可以使用
{cmd:{c -(}}{it:depvar}{cmd::i.}{it:varname}{cmd:{c )-}} 来引用所有与 {it:varname} 相关的随机效应参数。 这些参数必须包含在单个先验声明中，通常是方差通过附加参数指定的正态分布。
随机效应参数在给定所有其他模型参数的情况下假定在 {it:varname} 的水平之间是条件独立的。
随机效应参数会自动分组到一个块中，因此在 {cmd:block()} 选项中不允许使用它们。
参见 {mansection BAYES bayesmhRemarksandexamplesex23:example 23}。

{phang}
{cmd:redefine(}{it:label}{cmd::i.}{it:{help varname_zh:varname}}{cmd:)}
指定可以在可替换表达式中使用的随机效应线性形式。您可以使用 {cmd:{c -(}}{it:label}{cmd::{c )-}} 在可替换表达式中引用线性形式。 您可以将
{cmd:{c -(}}{it:label}{cmd::i.}{it:varname}{cmd:{c )-}} 用于所有与 {it:varname} 相关的随机效应参数。 随机效应参数会自动分组到一个块中，因此在 {cmd:block()} 选项中不允许使用。 该选项对拟合多层模型非常有用，并且可以重复。查看 {mansection BAYES bayesmhRemarksandexamplesex29:example 29}。

{phang}
{cmd:xbdefine(}{it:label}{cmd::}{it:{help varlist_zh:varlist}}{cmd:)}
指定一组变量的线性形式，这些变量可以在可替换表达式中使用。 您可以使用规范的 {cmd:{c -(}}{it:label}{cmd::{c )-}} 在可替换表达式中引用线性形式。 对于 {it:varlist} 中的任何 {it:varname}，您可以使用
{cmd:{c -(}}{it:label}{cmd::}{it:varname}{cmd:{c )-}} 引用相应的参数。 该选项在非线性规格中很有用，当线性形式中包含许多变量时，并提供更高效的计算。

{dlgtab:模拟}

包括帮助 bayesmh_nchainsoptdes

{phang}
{opt mcmcsize(#)} 指定目标 MCMC 样本量。默认的 MCMC 样本量为 {cmd:mcmcsize(10000)}。MH 算法的总迭代次数等于暖身迭代次数和 MCMC 样本量的总和，而不考虑稀疏。如果存在稀疏，MCMC 的总迭代次数计算为
{cmd:burnin()} + ({cmd:mcmcsize()} - 1) x {cmd:thinning()} + 1。MH 算法的计算时间与迭代次数成正比。MCMC 样本量的确定决定了后验摘要的精度，这可能针对不同模型参数不同，并依赖于马尔可夫链的效率。对于多个链，
{cmd:mcmcsize()} 适用于每个链。另见
{mansection BAYES bayesmhRemarksandexamplesBurn-inperiodandMCMCsamplesize:{it:暖身阶段和 MCMC 样本量}}
在 {bf:[BAYES] bayesmh} 中。

{phang}
{opt burnin(#)} 指定 MCMC 的预热阶段迭代次数。在预热阶段模拟的参数值仅用于适应目的，而不用于估计。默认值为 {cmd:burnin(2500)}。通常，选择的预热时间应与适应阶段的时间相同或更长。
对于多个链，{cmd:burnin()} 适用于每个链。
另见 {mansection BAYES bayesmhRemarksandexamplesBurn-inperiodandMCMCsamplesize:{it:暖身阶段和 MCMC 样本量}}
以及
{mansection BAYES bayesmhRemarksandexamplesConvergenceofMCMC:{it:MCMC 的收敛性}}
在 {bf:[BAYES] bayesmh} 中。

{phang}
{opt thinning(#)} 指定稀疏间隔。仅保存每 (1+k x {it:#}) 次迭代的模拟值
k = 0, 1, 2, ...，而所有其他模拟值都会被丢弃。默认值为 {cmd:thinning(1)}；即保存所有模拟值。通常，稀疏大于一是为了减少模拟的 MCMC 样本的自相关性。对于多个链，{cmd:thinning()} 适用于每个链。

{phang}
{opt rseed(#)} 设置随机数种子。此选项可用于复现结果。对于单个链，{opt rseed(#)} 等同于在调用 {cmd:bayesmh} 之前键入
{cmd:set} {cmd:seed} {it:#}；见 {manhelp set_seed R:set seed}。对于多个链，您应该使用 {cmd:rseed()} 以确保可复现性；见
{mansection BAYES bayesmhRemarksandexamplesReproducingresults:{it:复现结果}} 在 {bf:[BAYES] bayesmh} 中。

{phang}
{opth exclude:(bayesmh##paramref:paramref)} 指定应从最终 MCMC 样本中排除哪些模型参数。这些模型参数将不会出现在估计表中，且不适用这些参数的后验估计功能和对数边际似然。这一选项对于抑制令人厌烦的模型参数非常有用。例如，如果您有一个具有多个级别的因子预测变量，但只对与其级别相关的系数变化感兴趣，而不是它们的实际值，那么您可能希望从模拟结果中排除此因子变量。如果仅希望从输出中省略某些模型参数，请参见 {helpb bayesmh##noshow():noshow()} 选项。
{it:paramref} 可以包括单个随机效应参数。

{dlgtab:阻塞}

包括帮助 bayesmh_blockoptsdes

{dlgtab:初始化}

{marker initspec}{...}
包括帮助 bayesmh_initoptsdes

{dlgtab:适应}

{phang}
{opt adaptation(adaptopts)} 控制 MCMC 程序的适应。
适应会在每个预先指定的 MCMC 迭代次数中进行，并包括调整提议的规模因子和每个模型参数块的提议协方差。适应用于提高采样效率。
提供的默认值是基于理论结果的，可能并不足以适应所有应用。见 {mansection BAYES bayesmhRemarksandexamplesAdaptationoftheMHalgorithm:{it:MH 算法的适应}}
在 {bf:[BAYES] bayesmh} 中获取有关适应及其参数的详细信息。

{pmore}
{it:adaptopts} 是以下任何选项：  

{phang2}
{opt every(#)} 指定每 {it:#} 次迭代进行适应。 默认值为 {cmd:every(100)}。为了确定适应间隔，您需要考虑模型中指定的最大块大小。 更新具有 k 个模型参数的块需要估计一个 k x k 的协方差矩阵。 如果适应间隔不足以估计该矩阵的 k(k+1)/2 元素，适应可能不足。

{phang2}
{opt maxiter(#)} 指定最大适应迭代次数。适应包括对每个模型参数块的提议协方差的调整以及对规模因子的调整。 一旦在指定容差之内达到了 TAR，适应就停止了。 但是不会超过 {it:#} 次适应步骤。 默认值是可变的，计算为 max{25,{cmd:floor(burnin()/adaptation(every()))}}。

{pmore2}
{cmd:maxiter()} 通常应该选择不超过
({cmd:mcmcsize()}+{cmd:burnin()})/{cmd:adaptation(every())}。

{phang2}
{opt miniter(#)} 指定即使未达到 TAR 仍需执行的最少适应迭代次数。 默认值为 {cmd:miniter(5)}。 如果指定的 {opt miniter()} 大于 {opt maxiter()}，则 {opt miniter()} 被重置为 {opt maxiter()}。因此，如果您指定 {cmd:maxiter(0)}，则不执行任何适应。

{phang2}
{opt alpha(#)} 指定一个控制 AR 适应的参数。 {opt alpha()} 应在 [0,1] 之内。 默认值为 {cmd:alpha(0.75)}。

{phang2}
{opt beta(#)} 指定控制提议协方差适应的参数。 {opt beta()} 必须在 [0,1] 之内。 {opt beta()} 越接近于零，提议协方差的适应性越低。当 {opt beta()} 为零时，在所有的 MCMC 迭代中将使用相同的提议协方差。 默认值为 {cmd:beta(0.8)}。

{phang2}
{opt gamma(#)} 指定控制提议协方差矩阵的适应率的参数。 {opt gamma()} 必须在 [0,1] 之内。 {opt gamma()} 的值越大，提议协方差的适应性越低。 默认值为 {cmd:gamma(0)}。

{phang2}
{opt tarate(#)} 指定所有模型参数块的 TAR；这很少使用。 {opt tarate()} 必须在 (0,1) 之内。 默认的 AR 针对包含连续多个参数的块为 0.234，针对包含一个连续参数的块为 0.44，以及针对离散参数的块为 1/{it:n_maxlev}，其中 {it:n_maxlev} 是块中的离散参数的最大级别数量。

{phang2}
{opt tolerance(#)} 指定基于 TAR 的适应容差标准。 {opt tolerance()} 应在 (0,1) 之内。
当当前 AR 与 TAR 之间的绝对差异小于 {opt tolerance()} 时，适应停止。 默认值为 {cmd:tolerance(0.01)}。

{phang}
{opt scale(#)} 指定所有块的初始规模因子的乘数。对于连续参数，初始规模因子计算为 {it:#}/sqrt{n_p}，对于离散参数计算为 {it:#}/n_p，其中 n_p 为块中参数的数量。默认值为 {cmd:scale(2.38)}。

{phang}
{opt covariance(cov)} 指定用于计算初始提议协方差矩阵的规模矩阵 {it:cov}。初始提议协方差的计算为 rho x Sigma，其中 rho 是规模因子，Sigma = {it:matname}。默认为单位矩阵。部分指定 Sigma 也是允许的。 {it:cov} 的行和列应命名为某些或所有模型参数。 根据某些理论结果，最佳提议协方差是模型参数的后验协方差矩阵，而这通常是未知的。此选项不适用于包含随机效应参数的块。

{dlgtab:报告}

包括帮助 bayesmh_credintoptsdes

{phang}
  {cmd:eform} 和 {opt eform(string)} 指定以指数形式显示系数表，并且分别使用 {cmd:exp(b)} 和 {it:string} 
  来标记表中指数系数的标签。

包括帮助 bayesmh_batchoptdes

{phang}
{cmd:saving(}{it:{help filename_zh}}[{cmd:, replace}]{cmd:)} 将模拟结果保存到 {it:filename}{cmd:.dta} 中。 
{cmd:replace} 选项指定如果 {it:filename}{cmd:.dta} 已存在，则覆盖它。如果没有指定 {opt saving()} 选项，{cmd:bayesmh} 将在临时文件中保存模拟结果，供后续访问后验估计命令。每次运行 {cmd:bayesmh} 时，此临时文件将被覆盖，并且如果当前的估计结果被清除，也将被删除。可以在估计或重放期间指定 {cmd:saving()}。

{pmore}
保存的数据集具有以下结构。变量 {cmd:_chain} 记录链标识符。变量 {cmd:_index} 记录
迭代次数。 {cmd:bayesmh} 仅保存与相邻迭代不同的状态（参数值集），并在变量 {cmd:_frequency} 中记录每个状态的频率。 （某些状态可能会在离散参数中重复。）因此，{cmd:_index} 可能不包含连续整数。请记得在需要对该数据集进行任何汇总时使用 {cmd:_frequency} 作为频率权重。
每个参数的值保存在数据集中的一个单独变量中。
不包含方程名称的参数值的变量名为 {cmd:eq0_p}{it:#}，遵循在 {cmd:bayesmh} 中声明参数的顺序。
包含方程名称的参数值的变量名为 {cmd:eq}{it:#}{cmd:_p}{it:#}，同样遵循参数定义的顺序。具有相同方程名的参数将具有相同的变量前缀 {cmd:eq}{it:#}。例如，

{phang3}
  {cmd:. bayesmh y x1, likelihood(normal({c -(}var{c )-})) saving(mcmc)} ...

{pmore}
将创建一个数据集 {cmd:mcmc.dta}，其变量名为 {cmd:eq1_p1}，用于 {cmd:{c -(}y:x1{c )-}}， {cmd:eq1_p2} 用于 {cmd:{c -(}y:_cons{c )-}}， 
以及 {cmd:eq0_p1} 用于 {cmd:{c -(}var{c )-}}。
另请参见宏 {cmd:e(parnames)} 和 {cmd:e(varnames)}，以获取参数名称和变量名称之间的对应关系。

{pmore}
此外，{cmd:bayesmh} 会保存变量 {cmd:_loglikelihood}，以包含每次迭代的对数似然值，以及变量 
{cmd:_logposterior}，以包含每次迭代的对数后验值。

{phang}
{opt nomodelsummary} 抑制所指定模型的详细摘要。 模型摘要是默认报告的。

{phang}
{opt noexpression} 抑制来自模型汇总的表达式输出。 默认情况下，如果指定，表达式将报告。

包括帮助 bayesmh_chainsdetailoptsdes

{phang}
{opt nodots}、 {opt dots} 和 {opt dots(#)} 指定在模拟过程中抑制或显示点。对于多个链，这些选项会影响所有链。 {opt dots(#)} 每 {it:#} 次迭代显示一个点。在适应阶段，符号 {cmd:a} 会显示，而不是点。如果指定了 {cmd:dots(}...{cmd:,} {opt every(#)}{cmd:)}，则会在每 {it:#} 次迭代显示迭代次数，而不是点或 {cmd:a}。 
{cmd:dots(, every(}{it:#}{cmd:))} 等效于 {cmd:dots(1, every(}{it:#}{cmd:))}。 {cmd:dots} 每 100 次迭代显示点，且每 1,000 次迭代显示迭代次数；它是 {cmd:dots(100, every(1000))} 的同义词。 默认情况下，未显示任何点
({cmd:nodots} 或 {cmd:dots(0)}).

{marker noshow()}{...}
{phang}
{opth show:(bayesmh##paramref:paramref)} 或
{opth noshow:(bayesmh##paramref:paramref)}
指定要包括在输出中的模型参数列表或要排除的列表。 默认情况下，将显示所有模型参数（在使用 {cmd:reffects()} 指定时，随机效应参数除外）。 不要将 {cmd:noshow()} 与 {cmd:exclude()} 混淆，后者将指定参数排除在 MCMC 样本之外。当指定 {cmd:noshow()} 选项时，为了计算效率，不计算或存储指定参数的 MCMC 摘要。 {it:paramref} 可以包括单个随机效应参数。

{phang}
{opt showreffects} 和
{opth showreffects:(bayesian_postestimation##bayesian_post_reref:reref)}
与选项 {cmd:reffects()} 一起使用，并指定输出中包括所有或列出的 {it:reref} 随机效应参数，除了其他模型参数。 默认情况下，由 {cmd:reffects()} 引入的所有随机效应参数在输出中被排除，就好像您指定了 {opt noshow()} 选项一样。 该选项计算、显示并存储随机效应参数的 MCMC 摘要。

{phang}
{opt notable} 从输出中抑制估计表。 默认情况下，显示一个摘要表，包含所有模型参数，除了通过 {opt exclude()} 和 {opt noshow()} 选项列出。回归模型参数按方程名称分组。 表包括六列，报告使用 MCMC 模拟结果的以下统计数据：后验均值、后验标准差、MCMC 标准误差或 MCSE、后验中位数和可信区间。

{phang}
{opt noheader} 抑制在估计或重放时的输出头。

{phang}
{opt title(string)} 指定命令的可选标题，该标题显示在参数估计表上方。 默认标题特定于指定的似然模型。

包括帮助 bayesmh_displayoptsdes

{dlgtab:高级}

包括帮助 bayesmh_advancedoptsdes


{marker remarks}{...}
{title:备注}

{pstd}
备注以以下标题展示：

	{help bayesmh##usingbayesmh:使用 bayesmh}
        {help bayesmh##declare:声明模型参数}
        {help bayesmh##refer:引用模型参数}
        {help bayesmh##subexp:可替代表达式}


{marker usingbayesmh}{...}
{title:使用 bayesmh}

{pstd}
{cmd:bayesmh} 命令用于贝叶斯分析，包括三个功能组件：建立后验模型、执行 MCMC 模拟，以及总结和报告结果。 第一个组件，模型构建步骤，需要一些贝叶斯统计实践的经验，并且与任何建模任务一样，可能是最具挑战性的。 您应指定一个统计上正确的后验模型，并且该模型能代表观察到的数据。 另一个重要方面是模型在 {cmd:bayesmh} 中实施的 MH MCMC 程序的计算可行性。
提供的 MH 算法是自适应的，并且在一定程度上可以适应各种统计模型和数据结构。 但是，仔细的模型参数化和良好指定的初始值及 MCMC 采样方案对于实现快速收敛的马尔可夫链和良好的结果至关重要。 必须在模拟 MCMC 后彻底检查 MCMC 算法的收敛性。 一旦您对模拟链的收敛性感到满意，就可以进行结果的后验摘要及其解释。 下面我们讨论使用 {cmd:bayesmh} 的三个主要步骤，并提供建议。

{marker declare}{...}
{title:声明模型参数}

{pstd}
模型参数通常在 {cmd:likelihood()} 和 {cmd:prior()} 选项中指定的分布参数中声明，即首次引入。 我们将引用在先验分布中声明的模型参数（而不是似然分布）为超参数。
模型参数也可以在 {cmd:prior()} 选项的参数规范中声明，但这种情况比较少见。

{pstd}
{cmd:bayesmh} 区分两种类型的模型参数：标量和矩阵。 所有参数必须用花括号 {cmd:{c -(} {c )-}} 指定。 
声明标量参数有两种方式：{cmd:{it:param}} 和 {cmd:{c -(}}{it:eqname}{cmd::}{it:param}{cmd:{c )-}}，其中 {it:param} 和 {it:eqname} 是有效的 Stata 名称。 

{pstd}
矩阵参数的规格是相似的，但必须使用 {cmd:matrix} 子选项： {cmd:{c -(}}{it:param}{cmd:,}
{opt m:atrix}{cmd:{c )-}} 和 {cmd:{c -(}}{it:eqname}{cmd::}{it:param}{cmd:,}
{opt m:atrix}{cmd:{c )-}}。 矩阵模型参数的最常见应用是指定多元正态分布的方差-协方差矩阵。

{pstd}
所有矩阵都假定为对称，并且仅在输出中报告下三角元素。 仅提供一些多元先验分布可用于矩阵参数： {cmd:wishart()}、{cmd:iwishart()} 和 {cmd:jeffreys()}。 除了对称性外，这些分布还要求矩阵是正定的。

{pstd}
声明模型的所有参数是您的责任，线性模型中的回归系数除外。 在线性模型中，{cmd:bayesmh} 会自动为模型中每个自变量 {it:indepvar} 创建一个名为 {cmd:{c -(}}{it:depvar}{cmd::}{it:indepvar}{cmd:{c )-}} 的回归系数，并且如果没有指定 {cmd:noconstant}，则会生成一个截距参数 {cmd:{c -(}}{it:depvar}{cmd:{c )-}}。 在存在因子变量的情况下，{cmd:bayesmh} 将为每个级别指示符 {it:level} 创建一个参数 {cmd:{c -(}}{it:depvar}{cmd::}{it:level}{cmd:{c )-}}，并且为每个交互指示符 {it:inter} 创建一个参数 {cmd:{c -(}}{it:depvar}{cmd::}{it:inter}{cmd:{c )-}}；请参见 {help fvvarlists}。 （然而，您仍有责任为回归参数指定先验分布。）

{pstd}
例如， 

{phang3}{cmd:. bayesmh y x,} ...

{pstd}
将自动生成两个回归参数：{cmd:{y:x}} 和 {cmd:{y}}，而

{phang3}{cmd:. bayesmh y x, noconstant} ...

{pstd}
将仅生成一个： {cmd:{y:x}}。

{pstd}
对于单变量正态线性回归，我们可能希望额外声明标量方差参数：

{phang3}{cmd:. bayesmh y x, likelihood(normal({sig2}))} ...

{pstd}
我们可以将方差参数标记如下：

{phang3}{cmd:. bayesmh y x, likelihood(normal({c -(}var:sig2{c )-}))} ...

{pstd}
我们可以使用以下命令为 {cmd:{sig2}} 声明一个超参数：

{phang3}
{cmd:. bayesmh y x, likelihood(normal({sig2})) prior({sig2}, igamma({df},2))}
...

{pstd}
其中，超参数 {cmd:{df}} 在 {cmd:{sig2}} 的逆伽马先验分布中声明。

{pstd}
对于多元正态线性回归，除了通过 {cmd:bayesmh} 自动声明的四个回归参数： {cmd:{y1:x}}、{cmd:{y1}}、{cmd:{y2:x}} 和 {cmd:{y2}}，我们还可以声明方差-协方差矩阵的参数：

{phang3}
{cmd:. bayesmh y1 y2 = x, likelihood(mvnormal({Sigma, matrix}))} ...

{pstd}
或者缩写 {cmd:matrix} 为 {cmd:m}：

{phang3}
{cmd:. bayesmh y1 y2 = x, likelihood(mvnormal({Sigma, m}))} ...


{marker refer}{...}
{title:引用模型参数}

{pstd}
在声明模型参数后，我们可能需要在进一步的模型规格中引用它。 我们肯定需要在指定其先验分布时引用它。 我们还可能需要将其作为其他参数的先验分布的参数，或者需要在 {cmd:block()} 选项中指定它以对模型参数进行分组；见
{mansection BAYES bayesmhRemarksandexamplesImprovingefficiencyoftheMHalgorithm---blockingofparameters:{it:提高 MH 算法效率---参数阻塞}}
在 {bf:[BAYES] bayesmh} 中。

{pstd}
引用一个参数，我们只需使用其定义：
{cmd:{c -(}}{it:param}{cmd:{c )-}},
{cmd:{c -(}}{it:eqname}{cmd::}{it:param}{cmd:{c )-}},
{cmd:{c -(}}{it:param}{cmd:,} {opt m:atrix}{cmd:{c )-}}，或
{cmd:{c -(}}{it:eqname}{cmd::}{it:param}{cmd:,} {opt m:atrix}{cmd:{c )-}}。
引用多个参数有几种方法。您可以在 {opt prior(paramref, ...)} 选项、{opt block(paramref, ...)} 选项或
{opt initial(paramref #)} 选项的参数规范 {it:paramref} 中引用多个模型参数。

{pstd}
引用多个标量模型参数的最直接方式是简单地逐一列出它们，如下所示：

{phang3}{cmd:{param1} {param2}} ...

{pstd}
但也有简化方式。

{pstd}
例如，上述替代方案为

{phang3}{cmd:{param1 param2}} ...

{pstd}
其中我们只需在一组花括号中列出所有参数的名称。

{pstd}
如果参数具有相同的方程名称，则可以用以下方式引用与该方程名称相同的所有参数。 假设我们有三个具有相同方程名称 {cmd:eqname} 的参数，则规范

{phang3}{cmd:{eqname:param1} {eqname:param2} {eqname:param3}}

{pstd}
与以下规范相同：

{phang3}{cmd:{eqname:}}

{pstd}
或以下规范：

{phang3}{cmd:{eqname:param1 param2 param3}}

{pstd}
上述规范在我们希望引用具有相同方程名称的一组参数时非常有用。例如，上述情况下，如果我们只想引用 {cmd:param1} 和 {cmd:param2}，可以输入

{phang3}{cmd:{eqname:param1 param2}}

{pstd}
如果在定义回归函数时使用了因子变量，可以在 {it:paramref} 中使用相同的因子变量规范来引用与该因子变量的级别相关的系数；见 {help fvvarlists}。

{pstd}
例如，因子变量对构建多层贝叶斯模型非常有用。 假设变量 {cmd:id} 定义了二级随机效应模型中的第二层结构。 我们可以如下拟合贝叶斯随机截距模型。

{phang3}
{cmd:. bayesmh y x i.id, likelihood(normal({c -(}var{c )-}))}
       {cmd:prior({y:i.id}, normal(0,{tau}))} ...

{pstd}
在此我们使用 {cmd:{y:i.id}} 在先验规格中引用 {cmd:id} 的所有级别。

{pstd}
类似地，我们可以通过输入

{phang3}
{cmd:. bayesmh y c.x##i.id, likelihood(normal({c -(}var{c )-}))}
          {cmd:prior({y:i.id}, normal(0,{tau1}))}
	  {cmd:prior({y:c.x#i.id}, normal(0,{tau2}))} ...

{pstd}
为连续协变量 {cmd:x} 添加随机系数。

{pstd}
您可以在一个参数规范 {it:paramref} 中混合和匹配上述所有规格。

{pstd}
如果要在后验估计命令中引用模型参数，参见
{mansection BAYES BayesianpostestimationRemarksandexamplesDifferentwaysofspecifyingmodelparameters:{it:指定模型参数不同方式}}
在 {bf:[BAYES] 贝叶斯后验估计} 中。


{marker subexp}{...}
{title:可替换表达式}

{pstd}
您可以在 {cmd:bayesmh} 中使用可替换表达式定义非线性表达式 {it:subexpr}、{cmd:likelihood()} 中的结果分布参数、{cmd:llf()} 中的观察级对数似然、{cmd:prior()} 中的先验分布参数，以及在 {cmd:prior()} 的子选项 {cmd:density()} 和 {cmd:logdensity()} 中的通用先验分布。可替换表达式与 Stata 中的任何其他数学表达式类似，只是它们可以包含模型参数。

{pstd}
要在您的 {cmd:bayesmh} 模型中指定替代表达式，您必须遵守以下规则：

{p 4 7 2}
1. 模型参数用花括号绑定： {cmd:{mu}}、
         {cmd:{c -(}var:sigma2{c )-}}、 {cmd:{Sigma, matrix}} 和
         {cmd:{Cov:Sigma, matrix}}。

{p 4 7 2}
2. 使用符号

{phang3}{cmd:{c -(}}{it:eqname}{cmd::}{it:varlist}[{cmd:,} {cmd:xb} {cmdab:nocons:tant}]{cmd:{c )-}}
指定线性组合。
	 
{p 7 7 2}例如， {cmd:{c -(}}{cmd:lc:mpg price weight{c )-}} 等同于 

{phang3}{cmd:{c -(}lc:mpg{c )-}*mpg} {cmd:+} {cmd:{c -(}lc:price{c )-}*price}
             {cmd:+} {cmd:{c -(}lc:weight{c )-}*weight} {cmd:+}
	     {cmd:{c -(}mpg:_cons{c )-}}

{p 7 7 2}
{opt xb} 选项用于区分包含一个变量的线性组合和一个与变量同名且同组名的自由参数。例如，
{cmd:{c -(}lc:weight, xb{c )-}} 等同于 {cmd:{c -(}lc:_cons{c )-}}
{cmd:+} {cmd:{c -(}lc:weight{c )-}}{cmd:*weight}，而 {cmd:{c -(}lc:weight{c )-}} 指的是一个自由参数 {cmd:weight}
”。如果 {cmd:{c -(}lc:{c )-}} 已在表达式中定义为涉及变量 {cmd:weight} 的线性组合，则引用自由参数时，标签不应重复。因此，{cmd:xb} 选项表示该规范是线性组合，而不是要估计的单个参数。

{p 7 7 2}
定义线性组合时，默认包含常数项。{cmd:noconstant} 选项会抑制常数项。

{p 7 7 2}
有关指定线性组合的详细信息，请参见 {mansection ME menlRemarksandexamplesLinearcombinations:{it:线性组合}}
在 {bf:[ME] menl} 中。

{p 4 7 2}
3. 初始值由包括一个等号和初始值放入花括号中而给出，例如，{cmd:{b1=1.267}}、{cmd:{gamma=3}}，等等。如果您没有指定初始值，该参数将默认初始化为1（正标量参数）
和零（其他标量参数），或如果可用则初始化为其 MLE。 {cmd:initial()} 选项会覆盖用可替代

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <bayesmh.sthlp>}