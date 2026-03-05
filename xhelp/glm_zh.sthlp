{smcl}
{* *! version 1.3.2  09apr2019}{...}
{viewerdialog glm "dialog glm"}{...}
{viewerdialog "svy: glm" "dialog glm, message(-svy-) name(svy_glm)"}{...}
{vieweralsosee "[R] glm" "mansection R glm"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[R] glm postestimation" "help glm postestimation"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[BAYES] bayes: glm" "help bayes glm"}{...}
{vieweralsosee "[R] cloglog" "help cloglog_zh"}{...}
{vieweralsosee "[MI] Estimation" "help mi estimation"}{...}
{vieweralsosee "[FMM] fmm: glm" "help fmm glm"}{...}
{vieweralsosee "[R] logistic" "help logistic_zh"}{...}
{vieweralsosee "[ME] meglm" "help meglm_zh"}{...}
{vieweralsosee "[R] nbreg" "help nbreg_zh"}{...}
{vieweralsosee "[R] poisson" "help poisson_zh"}{...}
{vieweralsosee "[R] regress" "help regress_zh"}{...}
{vieweralsosee "[SVY] svy estimation" "help svy_estimation_zh"}{...}
{vieweralsosee "[XT] xtgee" "help xtgee_zh"}{...}
{viewerjumpto "Syntax" "glm_zh##syntax"}{...}
{viewerjumpto "Menu" "glm_zh##menu"}{...}
{viewerjumpto "Description" "glm_zh##description"}{...}
{viewerjumpto "Links to PDF documentation" "glm_zh##linkspdf"}{...}
{viewerjumpto "Options" "glm_zh##options"}{...}
{viewerjumpto "Remarks" "glm_zh##remarks"}{...}
{viewerjumpto "Examples" "glm_zh##examples"}{...}
{viewerjumpto "Stored results" "glm_zh##results"}{...}
{viewerjumpto "Reference" "glm_zh##reference"}
{help glm:English Version}
{hline}{...}
{p2colset 1 12 14 2}{...}
{p2col:{bf:[R] glm} {hline 2}}广义线性模型{p_end}
{p2col:}({mansection R glm:查看完整的 PDF 手册条目}){p_end}
{p2colreset}{...}


{marker syntax}{...}
{title:语法}

{p 8 12 2}
{cmd:glm}
{depvar}
[{indepvars}]
{ifin}
[{it:{help glm##weight:权重}}]
[{cmd:,} {it:选项}]

{synoptset 26 tabbed}{...}
{synopthdr}
{synoptline}
{syntab :模型}
{synopt :{opth f:amily(glm##familyname:分布名称)}}{depvar} 的分布；默认是 {cmd:family(gaussian)}{p_end}
{synopt :{opth l:ink(glm##linkname:链接名称)}}链接函数；默认是所指定 {opt family()} 的典型链接{p_end}

{syntab :模型 2}
{synopt :{opt nocons:tant}}抑制常数项{p_end}
{synopt :{opth exp:osure(varname)}}包含 ln({it:varname}) 在模型中，系数约束为1{p_end}
{synopt :{opth off:set(varname)}}在模型中包含 {it:varname}，系数约束为1{p_end}
{synopt:{cmdab:const:raints(}{it:{help estimation options##constraints():约束}}{cmd:)}}应用指定的线性约束{p_end}
{synopt :{opt asis}}保留完美预测变量{p_end}
{synopt :{opth mu(varname)}}使用 {it:varname} 作为 {depvar} 的均值初始估计{p_end}
{synopt :{opth ini:t(varname)}} {opt mu(varname)} 的同义词{p_end}

{syntab :SE/稳健性}
{synopt :{cmd:vce(}{it:{help glm##vcetype:方差类型}}{cmd:)}}{it:vcetype} 可以是 {opt oim}、{opt r:obust}、{opt cl:uster} {it:clustvar}、{opt eim}、{opt opg}、{opt boot:strap}、{opt jack:knife}、{opt hac} {help glm##kernel:{it:kernel}}、{opt jackknife1} 或 {opt unb:iased}{p_end}
{synopt :{opt vf:actor(#)}}将方差矩阵乘以标量 {it:#}{p_end}
{synopt :{opt disp(#)}}准似然乘数{p_end}
{synopt :{cmdab:sca:le(x2}|{cmd:dev}|{it:#}{cmd:)}}设定尺度参数{p_end}

{syntab :报告}
{synopt :{opt le:vel(#)}}设定置信水平；默认是 {cmd:level(95)}{p_end}
{synopt :{opt ef:orm}}报告指数化的系数{p_end}
{synopt :{opt nocnsr:eport}}不显示约束{p_end}
{synopt :{it:{help glm##display_options:显示选项}}}控制
包含帮助简要说明显示所有选项

{syntab :最大化}
{synopt :{opt ml}}使用最大似然优化；默认选择{p_end}
{synopt :{opt irls}}使用迭代加权最小二乘优化偏差{p_end}
{synopt :{it:{help glm##maximize_options:最大化选项}}}控制最大化过程；很少使用{p_end}
{synopt :{opt fisher(#)}}使用 Fisher 评分 Hessian 或预期信息矩阵 (EIM){p_end}
{synopt :{opt search}}搜索良好的起始值{p_end}

{synopt :{opt nohead:er}}抑制上述系数表的标题{p_end}
{synopt :{opt notable}}抑制系数表{p_end}
{synopt :{opt nodisplay}}抑制输出；迭代日志仍会显示{p_end}
{synopt:{opt col:linear}}保留共线变量{p_end}
包含帮助简要说明系数图例
{synoptline}
{p2colreset}{...}

{marker familyname}{...}
{synoptset 23}{...}
{synopthdr :分布名称}
{synoptline}
{synopt :{opt gau:ssian}}高斯分布（正态分布）{p_end}
{synopt :{opt ig:aussian}}反高斯分布{p_end}
{synopt :{opt b:inomial}[{it:{help varname_zh:var名N}}|{it:#N}]}伯努利/二项分布{p_end}
{synopt :{opt p:oisson}}泊松分布{p_end}
{synopt :{opt nb:inomial}[{it:#k}|{cmd:ml}]}负二项分布{p_end}
{synopt :{opt gam:ma}}伽马分布{p_end}
{synoptline}
{p2colreset}{...}

{marker linkname}{...}
{synoptset 23}{...}
{synopthdr :链接名称}
{synoptline}
{synopt :{opt i:dentity}}恒等函数{p_end}
{synopt :{opt log}}对数函数{p_end}
{synopt :{opt l:ogit}}logit函数{p_end}
{synopt :{opt p:robit}}probit函数{p_end}
{synopt :{opt c:loglog}}clog-log函数{p_end}
{synopt :{opt pow:er} {it:#}}幂函数{p_end}
{synopt :{opt opo:wer} {it:#}}赔率幂{p_end}
{synopt :{opt nb:inomial}}负二项函数{p_end}
{synopt :{opt logl:og}}log-log函数{p_end}
{synopt :{opt logc}}对数补偿{p_end}
{synoptline}
{p2colreset}{...}

包含帮助 fvvarlist
{p 4 6 2}
{it:depvar} 和 {it:indepvars} 可以包含时间序列运算符；详见 {help tsvarlist_zh}.{p_end}
{p 4 6 2}
{opt bayes}、{opt bootstrap}、{opt by}、{opt fmm}、{opt fp}、{opt jackknife}、{opt mfp}、{opt mi estimate}、{opt nestreg}、{opt rolling}、{opt statsby}、{opt stepwise} 和 {opt svy} 是允许的；详见 {help prefix_zh}。
更多细节，请参见 {manhelp bayes_glm BAYES:bayes: glm} 和 {manhelp fmm_glm FMM:fmm: glm}.{p_end}
{p 4 6 2}
{cmd:vce(bootstrap)}、{cmd:vce(jackknife)} 和 {cmd:vce(jackknife1)} 与 {helpb mi estimate} 前缀不允许使用。{p_end}
{p 4 6 2} 加权在 {help bootstrap_zh} 前缀下是不允许的。{p_end}
{marker weight}{...}
{p 4 6 2}{cmd:aweight} 在 {help jackknife_zh} 前缀下不被允许。{p_end}
{p 4 6 2}
{opt vce()}、{opt vfactor()}、{opt disp()}、{opt scale()}、{opt irls}、{opt fisher()}、{opt noheader}、{opt notable}、{opt nodisplay} 和加权在 {help svy_zh} 前缀下不被允许。{p_end}
{p 4 6 2}
{opt fweight}、{opt aweight}、{opt iweight} 和 {opt pweight} 是允许的；详见 {help weight_zh}.{p_end}
{p 4 6 2}
{opt noheader}、{opt notable}、{opt nodisplay}、{opt collinear} 和 {opt coeflegend} 不会出现在对话框中。{p_end}
{p 4 6 2}
详见 {manhelp glm_postestimation R:glm 后估计} 以了解估计后可用的功能。{p_end}


{marker menu}{...}
{title:菜单}

{phang}
{bf:统计 > 广义线性模型 > 广义线性模型 (GLM)}


{marker description}{...}
{title:描述}

{pstd}
{opt glm} 拟合广义线性模型。 它可以通过 IRLS（最大准似然）或 Newton-Raphson（最大似然）优化来拟合模型，后者为默认选择。

{pstd}
请参考 {findalias frestadv} 以获取 Stata 所有估计命令的描述，其中有几个符合也可以使用 {cmd:glm} 拟合的模型。


{marker linkspdf}{...}
{title:PDF 文档链接}

        {mansection R glmQuickstart:快速开始}

        {mansection R glmRemarksandexamples:备注和示例}

        {mansection R glmMethodsandformulas:方法和公式}

{pstd}
上述部分不包括在此帮助文件中。


{marker options}{...}
{title:选项}

{dlgtab:模型}

{phang}
{opth family:(glm##familyname:分布名称)} 指定 {depvar} 的分布；默认值是 {cmd:family(gaussian)}。

{phang}
{opth link:(glm##linkname:链接名称)} 指定链接函数；默认是为所指定 {cmd:family()} 的典型链接
（但 {cmd:family(nbinomial)} 除外）。

{dlgtab:模型 2}

{phang}
{opt noconstant}、{opth exposure(varname)}、{opt offset(varname)}、{opt constraints(constraints)}；详见 
{helpb estimation options:[R] 估计选项}。
{opt constraints(constraints)} 不允许与 {opt irls} 一起使用。

{phang}
{opt asis} 强制保留完美预测变量及其相关的完美预测观测，可能导致最大化过程的不稳定；详见 {manhelp probit R}。
该选项仅在 {cmd:family(binomial)} 下的分母为1 时允许。

{phang}
{opth mu(varname)} 指定 {it:varname} 作为 {depvar} 的均值初始估计。该选项对于遇到收敛困难的模型非常有用，例如， {cmd:family(binomial)} 模型与幂或赔率-幂链接。 {opt init(varname)} 是其同义词。

{marker vcetype}{...}
{dlgtab:SE/稳健性}

包含帮助 vce_asymptall

{pmore}
除了标准的 {it:vcetype}， {opt glm} 还允许以下替代：

{phang2}
{cmd:vce(eim)} 指定使用方差的 EIM 估计。

{phang2}
{cmd:vce(jackknife1)} 指定使用一次性切除法的方差估计。

{marker kernel}{...}
{phang2}
{cmd:vce(hac} {it:kernel} [{it:#}]{cmd:)} 指定使用异方差和自相关一致的 (HAC) 方差估计。 HAC 指的是将加权矩阵组合以形成方差估计的一般形式。 {opt glm} 内部包含三种核。 {it:kernel} 是用户编写的程序或以下之一：

{center:{opt nw:est} | {opt ga:llant} | {opt an:derson}}

{pmore2}
{it:#} 指定滞后数。如果未指定 {it:#}，则假定为 N - 2。如果希望指定 {cmd:vce(hac} ... {cmd:)}, 您必须在调用 {cmd:glm} 之前 {cmd:tsset} 您的数据。

{phang2}
{cmd:vce(unbiased)} 指定使用无偏的三明治方差估计。

{phang}
{opt vfactor(#)} 指定一个标量以乘以得到的方差矩阵。 此选项允许您与可能对方差估计应用自由度或其他小样本校正的其他程序匹配输出。

{phang}
{opt disp(#)} 将 {depvar} 的方差乘以 {it:#} 并将偏差除以 {it:#}。 结果分布为准似然族的成员。
该选项仅在 {cmd:irls} 选项下允许。

{phang}
{cmd:scale(x2}|{cmd:dev}|{it:#}{cmd:)} 覆盖默认的尺度参数。 该选项仅在 Hessian（信息矩阵）方差估计下允许。

{pmore}
默认情况下，对于离散分布（binomial、泊松和负二项），假设 {cmd:scale(1)}，对于连续分布（高斯、伽马和反高斯），假设 {cmd:scale(x2)}。

{pmore}
{cmd:scale(x2)} 指定尺度参数设置为 Pearson 卡方（或广义卡方）统计值除以残差自由度，McCullagh 和 Nelder（1989）建议这对于连续分布是一个不错的选择。

{pmore}
{cmd:scale(dev)} 将尺度参数设置为偏差除以残差自由度。 该选项为连续分布和过度离散或欠离散的离散分布提供了 {cmd:scale(x2)} 的替代选项。 该选项仅在 {cmd:irls} 选项下允许。

{pmore}
{opt scale(#)} 将尺度参数设置为 {it:#}。例如，使用 {cmd:scale(1)} 在 {cmd:family(gamma)} 模型中得到指数误差回归。 额外使用 {cmd:link(log)} 而不是默认的 {cmd:link(power -1)} 对于 {cmd:family(gamma)} 基本上再现了 Stata 的 {opt streg}， {cmd:dist(exp) nohr} 命令（如所有观测值都未被截断）。

{dlgtab:报告}

{phang}
{opt level(#)}；见 {helpb estimation options##level():[R] 估计选项}。

{phang}
{opt eform} 显示指数化的系数及对应的标准误和置信区间。对于 {cmd:family(binomial) link(logit)}（即逻辑回归），指数化结果为赔率比；对于 {cmd:family(nbinomial) link(log)}（即负二项回归）和 {cmd:family(poisson) link(log)}（即泊松回归），指数化系数为发生率比。

{phang}
{opt nocnsreport}；见 {helpb estimation options##nocnsreport:[R] 估计选项}。

包含帮助 displayopts_list

{marker maximize_options}{...}
{dlgtab:最大化}

{phang}
{opt ml} 请求使用 Stata 的 {opt ml} 命令进行优化，且为默认选项。

{phang}
{opt irls} 请求使用迭代加权最小二乘（IRLS）优化偏差，而不是牛顿-拉夫森优化对数似然。如果未指定 {opt irls} 选项，则使用 Stata 的 {opt ml} 命令进行优化，此时也可以使用 {opt ml maximize} 的所有选项。

{phang}
{it:maximize_options}：
{opt dif:ficult}、{opth tech:nique(maximize##algorithm_spec:算法规格)}、{opt iter:ate(#)}、[{cmd:no}]{opt log}、{opt tr:ace}、{opt grad:ient}、{opt showstep}、{opt hess:ian}、{opt showtol:erance}、{opt tol:erance(#)}、{opt ltol:erance(#)}、{opt nrtol:erance(#)}、{opt nonrtol:erance}，以及 {opt from(init_specs)}；详见 {help maximize_zh:[R] 最大化}。
这些选项很少使用。

{pmore}
将优化方法设置为 {cmd:technique(bhhh)} 将重置默认 {it:vcetype} 为 {cmd:vce(opg)}。

{pmore}
如果指定 {cmd:irls} 选项，仅允许 {it:maximize_options} {cmd:iterate()}、{cmd:nolog}、{cmd:trace} 和 {cmd:ltolerance()}。就 {cmd:irls} 指定而言，当来自一个迭代到下一个的偏差的绝对变化小于或等于 {cmd:ltolerance()} 时收敛准则得到满足，其中 {cmd:ltolerance(1e-6)} 为默认值。

{phang}
{opt fisher(#)} 指定应使用 Fisher 评分 Hessian 或 EIM 的牛顿-拉夫森步骤的数量，在转换为观察信息矩阵（OIM）之前。此选项仅适用于牛顿-拉夫森优化（而不适用于 {cmd:irls}）。

{phang}
{opt search} 指定该命令搜索良好的起始值。此选项仅适用于牛顿-拉夫森优化（而不适用于 {opt irls}）。

{pstd}
以下选项适用于 {opt glm}，但未在对话框中显示：

{phang}
{opt noheader} 抑制输出中的标题信息。系数表仍会显示。

{phang}
{opt notable} 抑制输出中的系数表。标题信息仍会显示。

{phang}
{opt nodisplay} 抑制输出。迭代日志仍会显示。

{phang}
{opt collinear}、{opt coeflegend}；详见 {helpb estimation options:[R] 估计选项}。
{opt collinear} 不允许与 {opt irls} 一起使用。

{marker remarks}{...}
{title:备注}

{pstd}
虽然 {opt glm} 可以用于拟合线性回归（实际上，它默认执行该操作），但这应被视为一种教学功能； {cmd:regress} 更快地产生这样的估计，并且可以使用许多后估计命令来探索适合的充分性；请参见 {manhelp regress R} 和 {manhelp regress_postestimation R:regress 后估计}。

{pstd}
在任何情况下，您应使用 {opt link()} 选项指定链接函数，并使用 {opt family()} 指定分布族。
可以使用的链接函数为：

{center:链接函数                 {cmd:glm} 选项      }
{center:{hline 40}}
{center:恒等                     {cmd:link(identity)} }
{center:对数                     {cmd:link(log)}      }
{center:logit                     {cmd:link(logit)}    }
{center:probit                    {cmd:link(probit)}   }
{center:补充对数补充              {cmd:link(cloglog)}  }
{center:赔率幂                   {cmd:link(opower} {it:#}{cmd:)} }
{center:幂                       {cmd:link(power} {it:#}{cmd:)}  }
{center:负二项                   {cmd:link(nbinomial)}}
{center:log-log                   {cmd:link(loglog)}   }
{center:对数补偿                 {cmd:link(logc)}     }

{pstd}
可用的分布族为：

{center:分布                   {cmd:glm} 选项         }
{center:{hline 40}}
{center:高斯（正态）           {cmd:family(gaussian)} }
{center:反高斯                 {cmd:family(igaussian)}}
{center:伯努利/二项             {cmd:family(binomial)} }
{center:泊松                    {cmd:family(poisson)}  }
{center:负二项                  {cmd:family(nbinomial)}}
{center:伽马                    {cmd:family(gamma)}    }

{pstd}
您无需同时指定 {opt family()} 和 {opt link()}；默认 {opt link()} 为所指定 {opt family()} 的典型链接
（负二项除外）：

{center:分布                    默认链接{space 2}}
{center:{hline 38}}
{center:{cmd:family(gaussian)}              {cmd:link(identity)}}
{center:{cmd:family(igaussian)}             {cmd:link(power -2)}}
{center:{cmd:family(binomial)}              {cmd:link(logit)}   }
{center:{cmd:family(poisson)}               {cmd:link(log)}     }
{center:{cmd:family(nbinomial)}             {cmd:link(log)}     }
{center:{cmd:family(gamma)}                 {cmd:link(power -1)}}

{pstd}
如果您同时指定 {opt family()} 和 {opt link()}，并非所有组合都有意义。 您可以从以下组合中进行选择：

	  {c |} id  log  logit  probit  clog  pow  opower  nbinomial  loglog  logc
{hline 10}{c +}{hline 67}
高斯      {c |}  x   x                         x
反高斯    {c |}  x   x                         x
二项      {c |}  x   x     x      x       x    x     x                  x      x
泊松      {c |}  x   x                         x
负二项    {c |}  x   x                         x              x
伽马      {c |}  x   x                         x


{marker examples}{...}
{title:示例}

    {hline}
{pstd}设置{p_end}
{phang2}{cmd:. webuse lbw}{p_end}

{pstd}使用伯努利分布和默认 logit 链接的广义线性模型{p_end}
{phang2}{cmd:. glm low age lwt i.race smoke ptl ht ui, family(binomial)}
{p_end}

{pstd}重放结果并报告指数化的系数{p_end}
{phang2}{cmd:. glm, eform}

    {hline}
{pstd}设置{p_end}
{phang2}{cmd:. webuse ldose}{p_end}

{pstd}使用二项分布和默认 logit 链接的广义线性模型{p_end}
{phang2}{cmd:. glm r ldose, family(binomial n)}{p_end}

{pstd}使用二项分布和 clog-log 链接的广义线性模型{p_end}
{phang2}{cmd:. glm r ldose, family(binomial n) link(cloglog)}{p_end}

    {hline}
{pstd}设置{p_end}
{phang2}{cmd:. webuse beetle}{p_end}

{pstd}使用二项分布和 clog-log 链接的广义线性模型{p_end}
{phang2}{cmd:. glm r i.beetle ldose, family(binomial n) link(cloglog)}
{p_end}

{pstd}用 99% 置信区间重放结果{p_end}
{phang2}{cmd:. glm, level(99)}{p_end}
    {hline}


{marker results}{...}
{title:存储结果}

{pstd}
{cmd:glm, ml} 将以下内容存储在 {cmd:e()} 中：

{synoptset 20 tabbed}{...}
{p2col 5 20 24 2: 标量}{p_end}
{synopt:{cmd:e(N)}}观察值数量{p_end}
{synopt:{cmd:e(k)}}参数数量{p_end}
{synopt:{cmd:e(k_eq)}}在 {cmd:e(b)} 中的方程数量{p_end}
{synopt:{cmd:e(k_eq_model)}}整体模型测试中的方程数量{p_end}
{synopt:{cmd:e(k_dv)}}因变量数量{p_end}
{synopt:{cmd:e(df_m)}}模型自由度{p_end}
{synopt:{cmd:e(df)}}残差自由度{p_end}
{synopt:{cmd:e(phi)}}尺度参数{p_end}
{synopt:{cmd:e(aic)}}模型 AIC{p_end}
{synopt:{cmd:e(bic)}}模型 BIC{p_end}
{synopt:{cmd:e(ll)}}对数似然（如果 NR）{p_end}
{synopt:{cmd:e(N_clust)}}集群数量{p_end}
{synopt:{cmd:e(chi2)}}卡方{p_end}
{synopt:{cmd:e(p)}}模型测试的 p 值{p_end}
{synopt:{cmd:e(deviance)}}偏差{p_end}
{synopt:{cmd:e(deviance_s)}}缩放的偏差{p_end}
{synopt:{cmd:e(deviance_p)}} Pearson 偏差{p_end}
{synopt:{cmd:e(deviance_ps)}}缩放的 Pearson 偏差{p_end}
{synopt:{cmd:e(dispers)}}离散度{p_end}
{synopt:{cmd:e(dispers_s)}}缩放的离散度{p_end}
{synopt:{cmd:e(dispers_p)}} Pearson 离散度{p_end}
{synopt:{cmd:e(dispers_ps)}}缩放的 Pearson 离散度{p_end}
{synopt:{cmd:e(nbml)}}如果通过 ML 估计的负二项参数则为 {cmd:1}，否则为 {cmd:0}{p_end}
{synopt:{cmd:e(vf)}}由 {cmd:vfactor()} 设置的因子，如果未设置则为 {cmd:1}{p_end}
{synopt:{cmd:e(power)}}由 {cmd:link(power} {it:#}{cmd:)} 或 {cmd:link(opower} {it:#}{cmd:)} 设置的幂{p_end}
{synopt:{cmd:e(rank)}} {cmd:e(V)} 的秩{p_end}
{synopt:{cmd:e(ic)}}迭代次数{p_end}
{synopt:{cmd:e(rc)}}返回码{p_end}
{synopt:{cmd:e(converged)}}如果收敛则为 {cmd:1}，否则为 {cmd:0}{p_end}

{synoptset 20 tabbed}{...}
{p2col 5 20 24 2: 宏}{p_end}
{synopt:{cmd:e(cmd)}}{cmd:glm}{p_end}
{synopt:{cmd:e(cmdline)}}输入的命令{p_end}
{synopt:{cmd:e(depvar)}}因变量名称{p_end}
{synopt:{cmd:e(varfunc)}}计算方差函数的程序{p_end}
{synopt:{cmd:e(varfunct)}}方差标题{p_end}
{synopt:{cmd:e(varfuncf)}}方差函数{p_end}
{synopt:{cmd:e(link)}}计算链接函数的程序{p_end}
{synopt:{cmd:e(linkt)}}链接标题{p_end}
{synopt:{cmd:e(linkf)}}链接函数{p_end}
{synopt:{cmd:e(m)}}二项试验次数{p_end}
{synopt:{cmd:e(wtype)}}权重类型{p_end}
{synopt:{cmd:e(wexp)}}权重表达式{p_end}
{synopt:{cmd:e(title)}}估计输出中的标题{p_end}
{synopt:{cmd:e(clustvar)}}集群变量名称{p_end}
{synopt:{cmd:e(offset)}}线性偏移变量{p_end}
{synopt:{cmd:e(chi2type)}}{cmd:Wald}; 模型卡方测试的类型{p_end}
{synopt:{cmd:e(cons)}}如果指定则为 {cmd:noconstant}{p_end}
{synopt:{cmd:e(hac_kernel)}}HAC 核{p_end}
{synopt:{cmd:e(hac_lag)}}HAC 滞后{p_end}
{synopt:{cmd:e(vce)}}在 {cmd:vce()} 中指定的 {it:vcetype}{p_end}
{synopt:{cmd:e(vcetype)}}用于标记标准误的标题{p_end}
{synopt:{cmd:e(opt)}}{cmd:ml} 或 {cmd:irls}{p_end}
{synopt:{cmd:e(opt1)}}优化标题，第 1 行{p_end}
{synopt:{cmd:e(opt2)}}优化标题，第 2 行{p_end}
{synopt:{cmd:e(which)}}{cmd:max} 或 {cmd:min}；优化器是否进行最大化或最小化{p_end}
{synopt:{cmd:e(ml_method)}} {cmd:ml} 方法的类型{p_end}
{synopt:{cmd:e(user)}}似然评估程序的名称{p_end}
{synopt:{cmd:e(technique)}}最大化技术{p_end}
{synopt:{cmd:e(properties)}}{cmd:b V}{p_end}
{synopt:{cmd:e(predict)}}用于实现 {cmd:predict} 的程序{p_end}
{synopt:{cmd:e(marginsok)}} {cmd:margins} 允许的预测{p_end}
{synopt:{cmd:e(marginsnotok)}} {cmd:margins} 不允许的预测{p_end}
{synopt:{cmd:e(asbalanced)}}因变量 {cmd:fvset} 为 {cmd:asbalanced}{p_end}
{synopt:{cmd:e(asobserved)}}因变量 {cmd:fvset} 为 {cmd:asobserved}{p_end}

{synoptset 20 tabbed}{...}
{p2col 5 20 24 2: 矩阵}{p_end}
{synopt:{cmd:e(b)}}系数向量{p_end}
{synopt:{cmd:e(Cns)}}约束矩阵{p_end}
{synopt:{cmd:e(ilog)}}迭代日志（最多 20 次迭代）{p_end}
{synopt:{cmd:e(gradient)}}梯度向量{p_end}
{synopt:{cmd:e(V)}}估计量的方差-协方差矩阵{p_end}
{synopt:{cmd:e(V_modelbased)}}基于模型的方差{p_end}

{synoptset 20 tabbed}{...}
{p2col 5 20 24 2: 函数}{p_end}
{synopt:{cmd:e(sample)}}标记估计样本{p_end}
{p2colreset}{...}


{pstd}
{cmd:glm, irls} 将以下内容存储在 {cmd:e()} 中：

{synoptset 20 tabbed}{...}
{p2col 5 20 24 2: 标量}{p_end}
{synopt:{cmd:e(N)}}观察值数量{p_end}
{synopt:{cmd:e(k)}}参数数量{p_end}
{synopt:{cmd:e(k_eq_model)}}整体模型测试中的方程数量{p_end}
{synopt:{cmd:e(df_m)}}模型自由度{p_end}
{synopt:{cmd:e(df)}}残差自由度{p_end}
{synopt:{cmd:e(phi)}}尺度参数{p_end}
{synopt:{cmd:e(disp)}}离散度参数{p_end}
{synopt:{cmd:e(bic)}}模型 BIC{p_end}
{synopt:{cmd:e(N_clust)}}集群数量{p_end}
{synopt:{cmd:e(deviance)}}偏差{p_end}
{synopt:{cmd:e(deviance_s)}}缩放的偏差{p_end}
{synopt:{cmd:e(deviance_p)}} Pearson 偏差{p_end}
{synopt:{cmd:e(deviance_ps)}}缩放的 Pearson 偏差{p_end}
{synopt:{cmd:e(dispers)}}离散度{p_end}
{synopt:{cmd:e(dispers_s)}}缩放的离散度{p_end}
{synopt:{cmd:e(dispers_p)}} Pearson 离散度{p_end}
{synopt:{cmd:e(dispers_ps)}}缩放的 Pearson 离散度{p_end}
{synopt:{cmd:e(nbml)}}如果通过 ML 估计的负二项参数则为 {cmd:1}，否则为 {cmd:0}{p_end}
{synopt:{cmd:e(vf)}}由 {cmd:vfactor()} 设置的因子，如果未设置则为 {cmd:1}{p_end}
{synopt:{cmd:e(power)}}由 {cmd:link(power} {it:#}{cmd:)} 或 {cmd:link(opower} {it:#}{cmd:)} 设置的幂{p_end}
{synopt:{cmd:e(rank)}} {cmd:e(V)} 的秩{p_end}
{synopt:{cmd:e(rc)}}返回码{p_end}

{synoptset 20 tabbed}{...}
{p2col 5 20 24 2: 宏}{p_end}
{synopt:{cmd:e(cmd)}}{cmd:glm}{p_end}
{synopt:{cmd:e(cmdline)}}输入的命令{p_end}
{synopt:{cmd:e(depvar)}}因变量名称{p_end}
{synopt:{cmd:e(varfunc)}}计算方差函数的程序{p_end}
{synopt:{cmd:e(varfunct)}}方差标题{p_end}
{synopt:{cmd:e(varfuncf)}}方差函数{p_end}
{synopt:{cmd:e(link)}}计算链接函数的程序{p_end}
{synopt:{cmd:e(linkt)}}链接标题{p_end}
{synopt:{cmd:e(linkf)}}链接函数{p_end}
{synopt:{cmd:e(m)}}二项试验次数{p_end}
{synopt:{cmd:e(wtype)}}权重类型{p_end}
{synopt:{cmd:e(wexp)}}权重表达式{p_end}
{synopt:{cmd:e(clustvar)}}集群变量名称{p_end}
{synopt:{cmd:e(offset)}}线性偏移变量{p_end}
{synopt:{cmd:e(cons)}}如果指定则为 {cmd:noconstant}{p_end}
{synopt:{cmd:e(hac_kernel)}}HAC 核{p_end}
{synopt:{cmd:e(hac_lag)}}HAC 滞后{p_end}
{synopt:{cmd:e(vce)}}在 {cmd:vce()} 中指定的 {it:vcetype}{p_end}
{synopt:{cmd:e(vcetype)}}用于标记标准误的标题{p_end}
{synopt:{cmd:e(opt)}}{cmd:ml} 或 {cmd:irls}{p_end}
{synopt:{cmd:e(opt1)}}优化标题，第 1 行{p_end}
{synopt:{cmd:e(opt2)}}优化标题，第 2 行{p_end}
{synopt:{cmd:e(properties)}}{cmd:b V}{p_end}
{synopt:{cmd:e(predict)}}用于实现 {cmd:predict} 的程序{p_end}
{synopt:{cmd:e(marginsok)}} {cmd:margins} 允许的预测{p_end}
{synopt:{cmd:e(marginsnotok)}} {cmd:margins} 不允许的预测{p_end}
{synopt:{cmd:e(asbalanced)}}因变量 {cmd:fvset} 为 {cmd:asbalanced}{p_end}
{synopt:{cmd:e(asobserved)}}因变量 {cmd:fvset} 为 {cmd:asobserved}{p_end}

{synoptset 20 tabbed}{...}
{p2col 5 20 24 2: 矩阵}{p_end}
{synopt:{cmd:e(b)}}系数向量{p_end}
{synopt:{cmd:e(V)}}估计量的方差-协方差矩阵{p_end}
{synopt:{cmd:e(V_modelbased)}}基于模型的方差{p_end}

{synoptset 20 tabbed}{...}
{p2col 5 20 24 2: 函数}{p_end}
{synopt:{cmd:e(sample)}}标记估计样本{p_end}
{p2colreset}{...}


{marker reference}{...}
{title:参考}

{marker MN1989}{...}
{phang}
McCullagh, P., 和 J. A. Nelder. 1989.
{browse "http://www.stata.com/bookstore/glm.html":{it:广义线性模型}. 第 2 版.}
伦敦：查普曼和霍尔/CRC.
{p_end}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <glm.sthlp>}