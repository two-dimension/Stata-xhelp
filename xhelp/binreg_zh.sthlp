{smcl}
{* *! version 1.2.2  09apr2019}{...}
{viewerdialog binreg "dialog binreg"}{...}
{vieweralsosee "[R] binreg" "mansection R binreg"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[R] binreg postestimation" "help binreg postestimation"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[BAYES] bayes: binreg" "help bayes binreg"}{...}
{vieweralsosee "[MI] 估计" "help mi estimation"}{...}
{vieweralsosee "[R] glm" "help glm_zh"}{...}
{vieweralsosee "[ME] mecloglog" "help mecloglog_zh"}{...}
{vieweralsosee "[ME] meglm" "help meglm_zh"}{...}
{vieweralsosee "[ME] melogit" "help melogit_zh"}{...}
{vieweralsosee "[ME] meprobit" "help meprobit_zh"}{...}
{viewerjumpto "语法" "binreg_zh##syntax"}{...}
{viewerjumpto "菜单" "binreg_zh##menu"}{...}
{viewerjumpto "描述" "binreg_zh##description"}{...}
{viewerjumpto "PDF 文档链接" "binreg_zh##linkspdf"}{...}
{viewerjumpto "选项" "binreg_zh##options"}{...}
{viewerjumpto "示例" "binreg_zh##examples"}{...}
{viewerjumpto "存储结果" "binreg_zh##results"}{...}
{viewerjumpto "参考" "binreg_zh##reference"}
{help binreg:English Version}
{hline}{...}
{p2colset 1 15 17 2}{...}
{p2col:{bf:[R] binreg} {hline 2}}广义线性模型：对二项式家族的扩展{p_end}
{p2col:}({mansection R binreg:查看完整 PDF 手册条目}){p_end}
{p2colreset}{...}


{marker syntax}{...}
{title:语法}

{p 8 15 2}
{cmd:binreg}
{depvar}
[{indepvars}]
{ifin}
[{it:{help binreg##weight:权重}}]
[{cmd:,} {it:选项}]

{synoptset 26 tabbed}{...}
{synopthdr}
{synoptline}
{syntab:模型}
{synopt :{opt nocons:不截距}}抑制常数项{p_end}
{synopt :{opt or}}使用 logit 链接并报告优势比{p_end}
{synopt :{opt rr}}使用 log 链接并报告风险比{p_end}
{synopt :{opt hr}}使用 log-complement 链接并报告健康比{p_end}
{synopt :{opt rd}}使用恒等链接并报告风险差{p_end}
{synopt :{cmd:n(}{it:#}|{it:{help varname_zh}}{cmd:)}}使用 {it:#} 或 {it:varname} 作为试验次数{p_end}
{synopt :{opth exp:osure(varname)}}在模型中包含 ln({it:varname})，系数限制为 1{p_end}
{synopt :{opth off:set(varname)}}在模型中包含 {it:varname}，系数限制为 1{p_end}
{synopt:{cmdab:const:raints(}{it:{help estimation options##constraints():约束}}{cmd:)}}应用指定的线性约束{p_end}
{synopt :{opth mu(varname)}}使用 {it:varname} 作为 {depvar} 均值的初始估计{p_end}
{synopt :{opth ini:t(varname)}} {opt mu(varname)} 的同义词{p_end}

{syntab:标准误/稳健性}
{synopt :{cmd:vce(}{it:{help binreg##vcetype:方差类型}}{cmd:)}}{it:vcetype} 可以是 {opt eim}、{opt r:obust}、{opt cl:uster} {it:clustvar}、{opt oim}、{opt opg}、{opt boot:strap}、{opt jack:knife}、{opt hac} {help binreg##kernel:{it:kernel}}、{opt jackknife1}，或 {opt unb:iased}{p_end}
{synopt :{opth t(varname)}}与时间相对应的变量名称{p_end}
{synopt :{opt vf:actor(#)}}将方差矩阵乘以标量 {it:#}{p_end}
{synopt :{opt disp(#)}}准似然乘数{p_end}
{p2col :{cmdab:sca:le:(x2}|{cmd:dev}|{it:#}{cmd:)}}设置尺度参数；默认值为 {cmd:scale(1)}{p_end}

{syntab:报告}
{synopt :{opt l:evel(#)}}设置置信水平；默认值为 {cmd:level(95)}{p_end}
{synopt :{cmdab:coef:ficients}}报告未指数化的系数{p_end}
{synopt :{opt nocnsr:eport}}不显示约束{p_end}
{synopt :{it:{help binreg##display_options:显示选项}}}控制
包含帮助短描述 - 显示选项全部

{syntab:最大化}
{synopt :{opt irls}}使用迭代加权最小二乘法优化；默认值{p_end}
{synopt :{opt ml}}使用最大似然优化{p_end}
{synopt :{it:{help binreg##maximize_options:maximize_options}}}控制最大化过程；很少使用{p_end}
{synopt :{opt fisher(#)}}Fisher 评分步骤{p_end}
{synopt :{opt search}}搜索良好的起始值{p_end}

{synopt:{opt col:linear}}保留共线性变量{p_end}
包含帮助短描述 - 系数图例
{synoptline}
{p2colreset}{...}
包含帮助 fvvarlist
{p 4 6 2}
{it:depvar} 和 {it:indepvars} 可以包含时间序列运算符；
请参见 {help tsvarlist_zh}.{p_end}
{p 4 6 2}
{opt bayes}、{opt bootstrap}、{opt by}、{opt fp}、{opt jackknife}、
{opt mi estimate}、{opt rolling}，
和 {opt statsby} 被允许；见 {help prefix_zh}。
有关更多详细信息，请参见 {manhelp bayes_binreg BAYES:bayes: binreg}.{p_end}
{p 4 6 2}
{cmd:vce(bootstrap)}、{cmd:vce(jackknife)} 和 {cmd:vce(jackknife1)} 与 {helpb mi estimate} 前缀不允许使用。{p_end}
{p 4 6 2}权重与 {help bootstrap_zh} 前缀不允许使用。{p_end}
{p 4 6 2}{cmd:aweight} 不允许与 {help jackknife_zh} 前缀搭配使用。
{p_end}
{marker weight}{...}
{p 4 6 2}
{opt fweight}、{opt aweight}、{opt iweight} 和 {opt pweight} 是允许的；见 {help weight_zh}.{p_end}
{p 4 6 2}
{opt collinear} 和 {opt coeflegend} 不会出现在对话框中。{p_end}
{p 4 6 2}
请参见 {manhelp binreg_postestimation R:binreg postestimation} 以获取估计后可用的特性。{p_end}


{marker menu}{...}
{title:菜单}

{phang}
{bf:统计 > 广义线性模型 > 对二项式家族的 GLM}


{marker description}{...}
{title:描述}

{pstd}
{opt binreg} 为二项式家族拟合广义线性模型。它估计优势比、风险比、健康比和风险差。可用的链接有

{center:选项    隐含链接                参数}
{center:{hline 47}}
{center:{opt or}               logit     优势比 = exp(b)}
{center:{opt rr}                 log     风险比 = exp(b)}
{center:{opt hr}      log complement   健康比 = exp(b)}
{center:{opt rd}            identity     风险差 = b}

{pstd}
优势、风险和健康比的估计通过对相应系数进行指数化获得。选项 {opt or} 产生与 Stata 的 {cmd:logistic} 命令相同的结果，而 {opt or coefficients} 产生与 {cmd:logit} 命令相同的结果。
当未指定链接时，默认假定为 {opt or}。


{marker linkspdf}{...}
{title:PDF 文档链接}

        {mansection R binregQuickstart:快速入门}

        {mansection R binregRemarksandexamples:备注和示例}

        {mansection R binregMethodsandformulas:方法和公式}

{pstd}
上述部分不包含在此帮助文件中。


{marker options}{...}
{title:选项}

{dlgtab:模型}

{phang}
{opt noconstant}；见
{helpb estimation options##noconstant:[R] 估计选项}。

{phang}
{opt or} 如果未指定 {opt coefficients}，则请求 logit 链接并以优势比结果。

{phang}
{opt rr} 如果未指定 {opt coefficients}，则请求 log 链接并以风险比结果。

{phang}
{opt hr} 如果未指定 {opt coefficients}，则请求 log-complement 链接并以健康比结果。

{phang}
{opt rd} 请求恒等链接并返回风险差。

{phang}
{cmd:n(}{it:#}|{it:{help varname_zh}}{cmd:)} 指定作为二项式家族的分母的常数整数，或为每个观察值持有分母的变量。

{phang}
{opth exposure(varname)}、{opt offset(varname)}、
{opt constraints(constraints)}；参见
{helpb estimation options:[R] 估计选项}。
{opt constraints(constraints)} 不允许与 {opt irls} 一起使用。

{phang}
{opth mu(varname)} 指定 {it:varname}，包含 {depvar} 均值的初始估计。如果您遇到收敛困难，此选项可能很有用。{opt init(varname)} 是同义词。

{marker vcetype}{...}
{dlgtab:标准误/稳健性}

包含帮助 vce_all

{pmore}
{cmd:vce(eim)}，默认情况下，使用期望信息矩阵作为方差估计器。

{pmore}
{opt binreg} 还允许以下选项：

{marker kernel}{...}
{phang2}
{cmd:vce(hac} {it:kernel} [{it:#}]{cmd:)} 指定使用异方差性和自相关一致的 (HAC) 方差估计。HAC 是将加权矩阵组合以形成方差估计的一般形式。有三种内置的核函数 {opt binreg}。{it:kernel} 是用户编写的程序或以下之一

{center:{opt nw:est} | {opt ga:llant} | {opt an:derson}}

{pmore2}
如果未指定 {it:#}，则假定 N - 2。

{phang2}
{cmd:vce(jackknife1)} 指定使用一步法的 jackknife 方差估计。

{phang2}
{cmd:vce(unbiased)} 指定使用无偏的三明治方差估计。

{phang}
{opth t(varname)} 指定与时间相关的变量名称；请参见 {manhelp tsset TS}。{cmd:binreg} 不总是需要知道 {opt t()}，但是如果指定了 {cmd:vce(hac} ... {cmd:)}，就需要。然后，您可以使用 {opt t()} 指定时间变量，或者在调用 {cmd:binreg} 之前可以对数据执行 {cmd:tsset}。当时间变量必需时，{cmd:binreg} 假定观察值均匀分布在时间上。

{phang}
{opt vfactor(#)} 指定一个标量，以乘以所得的方差矩阵。此选项允许用户将输出与其他软件包匹配，这些软件包可能将自由度或其他小样本修正应用于方差估计。

{phang}
{opt disp(#)} 将 {depvar} 的方差乘以 {it:#} 并将偏差除以 {it:#}。结果分布是准似然家族的成员。此选项不允许与选项 {cmd:ml} 一起使用。

{phang}
{cmd:scale(x2}|{cmd:dev}|{it:#}{cmd:)} 覆盖默认尺度参数。此选项仅与 Hessian (信息) 方差估计一起使用。

{pmore}
默认情况下，离散分布（对二项式、泊松和负二项式）假定 {cmd:scale(1)}，而连续分布（高斯、伽马和逆高斯）则假定 {cmd:scale(x2)}。

{pmore}
{cmd:scale(x2)} 指定尺度参数设定为 Pearson 卡方（或广义卡方）统计量除以残差自由度，这被 {help binreg##MN1989:McCullagh and Nelder (1989)} 推荐，作为连续分布的良好一般选择。

{pmore}
{cmd:scale(dev)} 将尺度参数设定为偏差除以残差自由度。此选项为连续分布和过度离散或不及离散的离散分布提供了一个替代方案。此选项不允许与选项 {cmd:ml} 一起使用。

{pmore}
{opt scale(#)} 将尺度参数设定为 {it:#}。

{dlgtab:报告}

{phang}
{opt level(#)}、{opt noconstant}；见
{helpb estimation options:[R] 估计选项}。

{phang}
{opt coefficients} 显示未指数化的系数及相应的标准误和置信区间。当指定 {opt rd} 选项时，此选项无效，因为它始终呈现未指数化的系数。

{phang}
{opt nocnsreport}；见
     {helpb estimation options##nocnsreport:[R] 估计选项}。

包含帮助 displayopts_list

{marker maximize_options}{...}
{dlgtab:最大化}

{phang}
{opt irls} 请求对偏差执行迭代加权最小二乘法 (IRLS) 优化，而不是对对数似然的牛顿-拉夫森优化。此选项为默认值。

{phang}
{opt ml} 请求使用 Stata 的 {help ml_zh} 命令进行优化。

{phang}
{it:maximize_options}：
{opt dif:ficult}、
{opth tech:nique(maximize##algorithm_spec:算法规格)}、
{opt iter:ate(#)}、
[{cmd:no}]{opt log}、
{opt tr:ace}、
{opt grad:ient}、
{opt showstep}、
{opt hess:ian}、
{opt showtol:erance}、
{opt tol:erance(#)}、
{opt ltol:erance(#)}、
{opt nrtol:erance(#)}、
{opt nonrtol:erance}，和
{opt from(init_specs)}；见 {help maximize_zh:[R] 最大化}。
这些选项很少使用。

{pmore}
将优化方法设置为 {cmd:ml}，并将 {cmd:technique()} 设置为其他内容时，将 {it:vcetype} 更改为 {cmd:vce(oim)}。指定 {cmd:technique(bhhh)} 将 {it:vcetype} 更改为 {cmd:vce(opg)}。

{pmore}
除非指定选项 {cmd:ml}，否则仅允许 {it:maximize_options}
{cmd:iterate()}、{cmd:nolog}、{cmd:trace} 和 {cmd:ltolerance()}。
使用 IRLS 优化时，当相邻两次迭代的偏差的绝对变化小于或等于 {cmd:ltolerance()} 时，收敛标准就满足，其中 {cmd:ltolerance(1e-6)} 为默认值。

{phang}
{opt fisher(#)} 指定应使用 Fisher 评分的牛顿-拉夫森步骤数，或使用期望信息矩阵 (EIM)，然后切换到观察信息矩阵 (OIM)。此选项仅在指定了 {opt ml} 时可用，并且仅对于牛顿-拉夫森优化是有用的。

{phang}
{opt search} 指定命令查找良好的起始值。此选项仅在指定了 {opt ml} 时可用，且仅对牛顿-拉夫森优化有用。

{pstd}
以下选项可与 {opt binreg} 一起使用，但在对话框中未显示：

{phang}
{opt collinear}、{opt coeflegend}；见
     {helpb estimation options:[R] 估计选项}。
{opt collinear} 不允许与 {opt irls} 一起使用。


{marker examples}{...}
{title:示例}

    {hline}
{pstd}设置{p_end}
{phang2}{cmd:. webuse lbw}{p_end}

{pstd}报告优势比{p_end}
{phang2}{cmd:. binreg low age lwt i.race smoke ptl ht ui, or}{p_end}

    {hline}
{pstd}设置{p_end}
{phang2}{cmd:. webuse binreg}{p_end}

{pstd}报告风险比{p_end}
{phang2}{cmd:. binreg n_lbw_babies i.soc i.alc i.smo, n(n_women) rr}{p_end}

{pstd}获取未指数化的系数{p_end}
{phang2}{cmd:. binreg n_lbw_babies i.soc i.alc i.smo, n(n_women) rr coeff}{p_end}

{pstd}报告风险差{p_end}
{phang2}{cmd:. binreg n_lbw_babies i.soc i.alc i.smo, n(n_women) rd}{p_end}

{pstd}报告健康比{p_end}
{phang2}{cmd:. binreg n_lbw_babies i.soc i.alc i.smo, n(n_women) hr}{p_end}
    {hline}


{marker results}{...}
{title:存储结果}

{pstd}
{cmd:binreg, irls} 在 {cmd:e()} 中存储以下信息：

{synoptset 20 tabbed}{...}
{p2col 5 20 24 2 : 标量}{p_end}
{synopt:{cmd:e(N)}}观察值数量{p_end}
{synopt:{cmd:e(k)}}参数数量{p_end}
{synopt:{cmd:e(k_eq_model)}}整体模型测试中的方程数量{p_end}
{synopt:{cmd:e(df_m)}}模型自由度{p_end}
{synopt:{cmd:e(df)}}残差自由度{p_end}
{synopt:{cmd:e(phi)}}模型尺度参数{p_end}
{synopt:{cmd:e(disp)}}离散参数{p_end}
{synopt:{cmd:e(bic)}}模型 BIC{p_end}
{synopt:{cmd:e(N_clust)}}聚类数量{p_end}
{synopt:{cmd:e(deviance)}}偏差{p_end}
{synopt:{cmd:e(deviance_s)}}缩放偏差{p_end}
{synopt:{cmd:e(deviance_p)}}Pearson 偏差{p_end}
{synopt:{cmd:e(deviance_ps)}}缩放 Pearson 偏差{p_end}
{synopt:{cmd:e(dispers)}}离散度{p_end}
{synopt:{cmd:e(dispers_s)}}缩放离散度{p_end}
{synopt:{cmd:e(dispers_p)}}Pearson 离散度{p_end}
{synopt:{cmd:e(dispers_ps)}}缩放 Pearson 离散度{p_end}
{synopt:{cmd:e(vf)}}由 {cmd:vfactor()} 设置的因子，若未设置则为 {cmd:1}{p_end}
{synopt:{cmd:e(rank)}}{cmd:e(V)} 的秩{p_end}
{synopt:{cmd:e(rc)}}返回码{p_end}

{p2col 5 20 24 2 : 宏}{p_end}
{synopt:{cmd:e(cmd)}}{cmd:binreg}{p_end}
{synopt:{cmd:e(cmdline)}}输入的命令{p_end}
{synopt:{cmd:e(depvar)}}因变量名称{p_end}
{synopt:{cmd:e(eform)}}由 {cmd:or}、{cmd:rr}、{cmd:hr} 或 {cmd:rd} 隐含的 {cmd:eform()} 选项{p_end}
{synopt:{cmd:e(varfunc)}}计算方差函数的程序{p_end}
{synopt:{cmd:e(varfunct)}}方差标题{p_end}
{synopt:{cmd:e(varfuncf)}}方差函数{p_end}
{synopt:{cmd:e(link)}}计算链接函数的程序{p_end}
{synopt:{cmd:e(linkt)}}链接标题{p_end}
{synopt:{cmd:e(linkf)}}链接函数{p_end}
{synopt:{cmd:e(m)}}二项式试验数量{p_end}
{synopt:{cmd:e(wtype)}}权重类型{p_end}
{synopt:{cmd:e(wexp)}}权重表达式{p_end}
{synopt:{cmd:e(title)}}估计输出中的标题{p_end}
{synopt:{cmd:e(title_fl)}}家族-链接标题{p_end}
{synopt:{cmd:e(clustvar)}}聚类变量名称{p_end}
{synopt:{cmd:e(offset)}}线性偏移变量{p_end}
{synopt:{cmd:e(cons)}}是否为 {cmd:noconstant} 或未设置{p_end}
{synopt:{cmd:e(hac_kernel)}}HAC 核心{p_end}
{synopt:{cmd:e(hac_lag)}}HAC 滞后{p_end}
{synopt:{cmd:e(vce)}}在 {cmd:vce()} 中指定的 {it:vcetype}{p_end}
{synopt:{cmd:e(vcetype)}}用于标记标准误的标题{p_end}
{synopt:{cmd:e(opt)}}优化类型{p_end}
{synopt:{cmd:e(opt1)}}优化标题，第一行{p_end}
{synopt:{cmd:e(opt2)}}优化标题，第二行{p_end}
{synopt:{cmd:e(properties)}}{cmd:b V}{p_end}
{synopt:{cmd:e(predict)}}用于实现 {cmd:predict} 的程序{p_end}
{synopt:{cmd:e(marginsok)}}{cmd:margins} 允许的预测{p_end}
{synopt:{cmd:e(marginsnotok)}}{cmd:margins} 不允许的预测{p_end}
{synopt:{cmd:e(asbalanced)}}因子变量 {cmd:fvset} 被视为 {cmd:asbalanced}{p_end}
{synopt:{cmd:e(asobserved)}}因子变量 {cmd:fvset} 被视为 {cmd:asobserved}{p_end}

{p2col 5 20 24 2 : 矩阵}{p_end}
{synopt:{cmd:e(b)}}系数向量{p_end}
{synopt:{cmd:e(V)}}估计量的方差-协方差矩阵{p_end}
{synopt:{cmd:e(V_modelbased)}}模型基础方差{p_end}

{p2col 5 20 24 2 : 函数}{p_end}
{synopt:{cmd:e(sample)}}标记估计样本{p_end}
{p2colreset}{...}


{pstd}
{cmd:binreg, ml} 在 {cmd:e()} 中存储以下信息：

{synoptset 20 tabbed}{...}
{p2col 5 20 24 2 : 标量}{p_end}
{synopt:{cmd:e(N)}}观察值数量{p_end}
{synopt:{cmd:e(k)}}参数数量{p_end}
{synopt:{cmd:e(k_eq)}}在 {cmd:e(b)} 中的方程数量{p_end}
{synopt:{cmd:e(k_eq_model)}}整体模型测试中的方程数量{p_end}
{synopt:{cmd:e(k_dv)}}因变量数量{p_end}
{synopt:{cmd:e(df_m)}}模型自由度{p_end}
{synopt:{cmd:e(df)}}残差自由度{p_end}
{synopt:{cmd:e(phi)}}模型尺度参数{p_end}
{synopt:{cmd:e(aic)}}模型 AIC，若 {cmd:ml}{p_end}
{synopt:{cmd:e(bic)}}模型 BIC{p_end}
{synopt:{cmd:e(ll)}}对数似然，若 {cmd:ml}{p_end}
{synopt:{cmd:e(N_clust)}}聚类数量{p_end}
{synopt:{cmd:e(chi2)}}卡方{p_end}
{synopt:{cmd:e(p)}}模型测试的 p 值{p_end}
{synopt:{cmd:e(deviance)}}偏差{p_end}
{synopt:{cmd:e(deviance_s)}}缩放偏差{p_end}
{synopt:{cmd:e(deviance_p)}}Pearson 偏差{p_end}
{synopt:{cmd:e(deviance_ps)}}缩放 Pearson 偏差{p_end}
{synopt:{cmd:e(dispers)}}离散度{p_end}
{synopt:{cmd:e(dispers_s)}}缩放离散度{p_end}
{synopt:{cmd:e(dispers_p)}}Pearson 离散度{p_end}
{synopt:{cmd:e(dispers_ps)}}缩放 Pearson 离散度{p_end}
{synopt:{cmd:e(vf)}}由 {cmd:vfactor()} 设置的因子，若未设置则为 {cmd:1}{p_end}
{synopt:{cmd:e(rank)}}{cmd:e(V)} 的秩{p_end}
{synopt:{cmd:e(ic)}}迭代次数{p_end}
{synopt:{cmd:e(rc)}}返回码{p_end}
{synopt:{cmd:e(converged)}}若收敛则为 {cmd:1}，否则为 {cmd:0}{p_end}

{p2col 5 20 24 2 : 宏}{p_end}
{synopt:{cmd:e(cmd)}}{cmd:binreg}{p_end}
{synopt:{cmd:e(cmdline)}}输入的命令{p_end}
{synopt:{cmd:e(depvar)}}因变量名称{p_end}
{synopt:{cmd:e(eform)}}由 {cmd:or}、{cmd:rr}、{cmd:hr} 或 {cmd:rd} 隐含的 {cmd:eform()} 选项{p_end}
{synopt:{cmd:e(varfunc)}}计算方差函数的程序{p_end}
{synopt:{cmd:e(varfunct)}}方差标题{p_end}
{synopt:{cmd:e(varfuncf)}}方差函数{p_end}
{synopt:{cmd:e(link)}}计算链接函数的程序{p_end}
{synopt:{cmd:e(linkt)}}链接标题{p_end}
{synopt:{cmd:e(linkf)}}链接函数{p_end}
{synopt:{cmd:e(m)}}二项式试验数量{p_end}
{synopt:{cmd:e(wtype)}}权重类型{p_end}
{synopt:{cmd:e(wexp)}}权重表达式{p_end}
{synopt:{cmd:e(title)}}估计输出中的标题{p_end}
{synopt:{cmd:e(title_fl)}}家族-链接标题{p_end}
{synopt:{cmd:e(clustvar)}}聚类变量名称{p_end}
{synopt:{cmd:e(offset)}}线性偏移变量{p_end}
{synopt:{cmd:e(cons)}}是否为 {cmd:noconstant} 或未设置{p_end}
{synopt:{cmd:e(hac_kernel)}}HAC 核心{p_end}
{synopt:{cmd:e(hac_lag)}}HAC 滞后{p_end}
{synopt:{cmd:e(chi2type)}}{cmd:Wald}；模型卡方检验类型{p_end}
{synopt:{cmd:e(vce)}}在 {cmd:vce()} 中指定的 {it:vcetype}{p_end}
{synopt:{cmd:e(vcetype)}}用于标记标准误的标题{p_end}
{synopt:{cmd:e(opt)}}优化类型{p_end}
{synopt:{cmd:e(opt1)}}优化标题，第一行{p_end}
{synopt:{cmd:e(which)}}{cmd:max} 或 {cmd:min}；优化器是执行最大化还是最小化{p_end}
{synopt:{cmd:e(ml_method)}}{cmd:ml} 方法的类型{p_end}
{synopt:{cmd:e(user)}}似然评估程序的名称{p_end}
{synopt:{cmd:e(technique)}}最大化技术{p_end}
{synopt:{cmd:e(properties)}}{cmd:b V}{p_end}
{synopt:{cmd:e(predict)}}用于实现 {cmd:predict} 的程序{p_end}
{synopt:{cmd:e(marginsok)}}{cmd:margins} 允许的预测{p_end}
{synopt:{cmd:e(marginsnotok)}}{cmd:margins} 不允许的预测{p_end}
{synopt:{cmd:e(asbalanced)}}因子变量 {cmd:fvset} 被视为 {cmd:asbalanced}{p_end}
{synopt:{cmd:e(asobserved)}}因子变量 {cmd:fvset} 被视为 {cmd:asobserved}{p_end}

{p2col 5 20 24 2 : 矩阵}{p_end}
{synopt:{cmd:e(b)}}系数向量{p_end}
{synopt:{cmd:e(Cns)}}约束矩阵{p_end}
{synopt:{cmd:e(ilog)}}迭代日志（最多 20 次迭代）{p_end}
{synopt:{cmd:e(gradient)}}梯度向量{p_end}
{synopt:{cmd:e(V)}}估计量的方差-协方差矩阵{p_end}
{synopt:{cmd:e(V_modelbased)}}模型基础方差{p_end}

{p2col 5 20 24 2 : 函数}{p_end}
{synopt:{cmd:e(sample)}}标记估计样本{p_end}
{p2colreset}{...}


{marker reference}{...}
{title:参考}

{marker MN1989}{...}
{phang}
McCullagh, P., 和 J. A. Nelder. 1989.
{browse "http://www.stata.com/bookstore/glm.html":{it:广义线性模型. 第二版}}
伦敦：Chapman & Hall/CRC。
{p_end}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <binreg.sthlp>}